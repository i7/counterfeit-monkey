Version 6 of Smarter Parser (for Glulx only) by Aaron Reed begins here.

"Understands a broader range of input than the standard parser, and can direct new players towards proper syntax."

[
CHANGES:
 -- Version 6: Major revision. Altered visual style to be more refined and more flexible; named rulebook outcomes; renamed and clarified several variables; rewrote documentation; added a few new cases from newbie Sand-dancer transcripts; stopped trying to strip single quotes from input (this was a bug that led to problems with recognizing possessives like "grandma's"; Poor Man's Mistype would catch attempts to say "grandmas" anyway.) Marked as glulx only due to issues with z-machine compilation. Cleaned up some formatting issues, including an occasional erroneous first space.
 -- Version 5: Removed deprecated features; added option to ignore all rules; adjusted responses to not have fantasy RPG elements & use more examples taken from the player's current environment.
 -- Version 4: Updated for build 6E59
 -- Version 3: added ? for help, more punctuation removal; corrected a typo; minor bug fixes.
 -- Version 2: bug fixes.
]

[
Room for improvement:
>who, really, are you?
You seem to want to talk to someone, but I can't see whom.

]

Chapter - Definitions

Use MAX_EXPRESSION_NODES of 300.

The reborn command is an indexed text that varies. The rejected command is an indexed text that varies. 

Suppress parser error is a truth state that varies. sp reparse flag is a truth state that varies.

Smarter Parser is a rulebook. The Smarter Parser rules have outcomes reparse the command (success), reject the command (failure), and no match (no outcome).

Chapter - Empty Smarter Parser Rulebook

Use empty Smarter Parser rulebook translates as (- Constant NO_SMARTER_PARSER_RULES; -).

To decide whether sp_normal: if the empty Smarter Parser rulebook option is active, no; yes.

Section - Cleaning Up Punctuation

After reading a command (this is the Smarter Parser simplify punctuation rule):
	let tmpcmd be indexed text;
	now tmpcmd is the player's command;
	if tmpcmd exactly matches the text "?", now tmpcmd is "help";
	replace the regular expression "<;:!?>" in tmpcmd with ". "; [new players have sometimes tried to seperate commands using these punctuation marks.]
	replace the regular expression "<\\\/()\{\}[quotation mark][bracket][close bracket]>" in tmpcmd with " ";
	if the number of characters in tmpcmd is 0, now tmpcmd is "."; [To fix a bug where in certain cases an empty command causes the word/character counts to break]
	change the text of the player's command to tmpcmd.


Section - Try Harder to Understand


Before printing a parser error (this is the Smarter Parser trying harder to understand rule):
	now the rejected command is the player's command;
	now the reborn command is the player's command; 
	follow the Smarter Parser rules;
	if the outcome of the rulebook is the reparse the command outcome:
		if reborn command is not rejected command:
			clean up the reparsed command;
			announce the reparsed command;
			now sp reparse flag is true;
	otherwise if the outcome of the rulebook is the reject the command outcome:
		now suppress parser error is true;
		explain the reborn command.

Rule for printing a parser error when suppress parser error is true or sp reparse flag is true (this is the Smarter Parser suppress parser messages on matches rule):
	now suppress parser error is false.

Rule for reading a command when sp reparse flag is true (this is the Smarter Parser retrying input rule):
	now sp reparse flag is false;
	change the text of the player's command to "[reborn command]".

Section - Explaining Results

To announce the reparsed command:
	say "[unless saved Smarter Parser error is empty]([italic type][saved Smarter Parser error][roman type])[command clarification break][end unless]>[reborn command in upper case]".

To explain the reborn command:
	say "[italic type][saved Smarter Parser error][roman type][line break]". 

To clean up the reparsed command:
	while character number 1 in reborn command is " ":
		replace character number 1 in reborn command with "";
	replace the regular expression " {2,}" in reborn command with " ".


Section - Macros for defining rules

To decide whether stripping (regex - an indexed text) is fruitful, even within words:
	let original be the reborn command;
	if even within words:
		replace the regular expression "[regex]" in reborn command with "";
	otherwise:
		replace the regular expression "\b[regex]\b" in reborn command with "";
	if original is not reborn command:
		decide yes;
	now reborn command is original;
	decide no.

To decide whether input starts with (regex - an indexed text), even within words:
	if even within words:
		if reborn command exactly matches the regular expression "^[regex].*":
			decide yes;
	otherwise:
		if reborn command exactly matches the regular expression "^[regex]\b.*":
			decide yes;
	decide no.

To decide whether input ends with (regex - an indexed text), even within words:
	if even within words:
		if reborn command exactly matches the regular expression ".*[regex]$":
			decide yes;
	otherwise:
		if reborn command exactly matches the regular expression ".*\b[regex]$":
			decide yes;
	decide no.

To decide whether input contains (regex - an indexed text), even within words:
	if even within words:
		if reborn command matches the regular expression "[regex]":
			decide yes;
	otherwise: 
		if reborn command matches the regular expression "\b[regex]\b":
			decide yes;
	decide no.

Chapter - Printing Results

Section - The Print Rule

The saved Smarter Parser error is an indexed text variable.

To identify error as (why - a rule):
	if sp-debug is true, say "(smart parser debug: printing message for [why])[command clarification break]";
	if there is a SP rule of why in Table of Smarter Parser Messages:
		choose row with a SP rule of why in Table of Smarter Parser Messages;
		now saved Smarter Parser error is "[message entry]";
	otherwise:
		now saved Smarter Parser error is "".

Section - Applicable Examples

[These two say statements are currently neutered because of a bug in nested indexed text handling under Glulx in 6E72.]

To say get noun example: say "FLOWER, for example".
	[let noun_example be indexed text;
	if the number of visible things > 0:
		now noun_example is "[random visible thing]";
	otherwise:
		now noun_example is "flower";
	say "[noun_example in upper case]".]

To say get direction example: say "NORTH, for example".
	[let randdir be a random sp_viable direction;
	let dir_example be indexed text;
	if randdir is a direction:
		now dir_example is "[randdir]";
		say "[dir_example in upper case], for example";
	otherwise:
		say "NORTH, for example".]
		
Definition: a direction is sp_viable if the room it from location is a room.

Section - Tables

Table of Smarter Parser Messages
SP rule		message 
a rule	a text
with 1 blank row.



Chapter - Rules

Section - Standardize


A smarter parser rule when sp_normal (this is the standardize apostrophes rule):
	replace the regular expression "[apostrophe](m|re)" in reborn command with " am"; 
	replace the regular expression "[apostrophe]ll" in reborn command with " will"; 
	replace the regular expression "[apostrophe]ve" in reborn command with " have".

A smarter parser rule when sp_normal (this is the scandalous standardize swears rule):
	replace the regular expression "\b(goddamn|god damn|damn|fuck|hell|shit|piss|ass|dick)(ing|ed|er)?\b" in reborn command with "_swear".

Section - Signs of Confusion


A smarter parser rule when sp_normal (this is the signs of confusion rule):
	if input contains "(confused|lost|huh|understand|dont know|going on|no idea|wtf|help|hint|instructions|directions)" or input contains "(how|what) (do|should|can)":
		identify error as signs of confusion rule;
		reject the command.

Table of Smarter Parser Messages (continued)
SP rule			message
signs of confusion rule		"Try typing LOOK for a description of your surroundings. You might try get more details about something you see by trying a command like EXAMINE [get noun example] to get more details. Any compass directions indicate exits which you can use by typing [get direction example]. Type INVENTORY to see a list of what you're carrying. You can also TAKE or DROP some things, OPEN or CLOSE others, and so on."


Section - Stripping Niceties


A smarter parser rule when sp_normal (this is the stripping niceties rule):
	if stripping "please" is fruitful:
		identify error as stripping niceties rule;
		reparse the command.


Section - Stripping Interjections

A smarter parser rule when sp_normal (this is the stripping interjections rule):
	if stripping "\b(in )?(the )?_swear( you| this)?" is fruitful:
		if the number of words in the reborn command > 0:
			identify error as stripping interjections rule;
			reparse the command;
		otherwise:
			identify error as signs of frustration rule;
			reject the command.

Section - Signs of Frustration


A smarter parser rule when sp_normal (this is the signs of frustration rule):
	if input contains "(dumb|moron|idiot|lame|duh|retard|suck|blow|screw)(ic|ed|s)?" or input contains "(_swear|stupid|bored|boring|die|suicide|death|hate)":
		identify error as signs of frustration rule;
		reject the command.

Table of Smarter Parser Messages (continued)
SP rule			message
signs of frustration rule		"I'm sorry if you're feeling frustrated. If you like, you can type SAVE to store your progress to a file (in most interpreters), then RESTORE to come back to it later. In the meantime, you might try searching the web to see if there are hints available."


Section - Too Many Words


A smarter parser rule when sp_normal (this is the too many words rule):
	if the number of characters in the reborn command > 1 and the number of words in the reborn command > 6:
		identify error as too many words rule;
		reject the command.

Table of Smarter Parser Messages (continued)
SP rule			message
too many words rule		"You typed a rather long command and I didn't understand it. It's better to stick to simpler things like TAKE [get noun example]."






Section - Standardize be verbs


A smarter parser rule when sp_normal (this is the standardize be verbs rule):
	replace the regular expression "\b(had |has |have )?(is|am|are|be|being|been|was|were)\b" in the reborn command with "_be".



Section - Who are you

["Who said that," "Who am I talking to," "Who are you," etc]

A smarter parser rule when sp_normal (this is the asking who are you rule):
	if input contains "who([apostrophe])?(s)? (_be )?(i )?(talk|speak|there|this|said|you|that)", even within words:
		identify error as asking who are you rule;
		reject the command.

Table of Smarter Parser Messages (continued)
SP rule			message
asking who are you rule	"I'm the parser-- I translate what you type into the story world. You have to use specific commands to talk to me though. Try typing HELP or ABOUT for more information."


Section - Who am I


A smarter parser rule when sp_normal (this is the asking who am i rule):
	if input contains "who _be i":
		identify error as asking who am i rule;
		now the reborn command is "examine me";
		reparse the command.

Table of Smarter Parser Messages (continued)
SP rule			message
asking who am i rule	"You are a character in this story. Normally, you'll want to phrase your input as commands, not questions. I've taken the liberty of demonstrating below."


Section - Where am I

A smarter parser rule when sp_normal (this is the asking where am i rule):
	if input contains "where _be i" or input contains "(examine|x|look) (the )?(here|this place|place|room|area|around)":
		identify error as asking where am i rule;
		now reborn command is "look";
		reparse the command.

Table of Smarter Parser Messages (continued)
SP rule			message
asking where am i rule	"To get a description of your surroundings, try typing LOOK."


Section - Asking Random Questions

A smarter parser rule when sp_normal (this is the asking unparseable questions rule):
	if input contains "(who|what|where|why|which|how|do)s?":
		identify error as asking unparseable questions rule;
		reject the command.

Table of Smarter Parser Messages (continued)
SP rule			message
asking unparseable questions rule	"You can't ask direct questions to the game. Type a verb - noun command like EXAMINE [get noun example] to interact with the story world."


Section - Stripping Verbose Intro

[Things like "I want to go north" or "can you take the ball" ]

A smarter parser rule when sp_normal (this is the stripping verbose intro rule):
	if stripping "i (_be )?(want|will|going)( to)?" is fruitful or stripping "(can|would|will|should|may|try) (i|you|we|to)" is fruitful or stripping "let([apostrophe])?s?" is fruitful:
		identify error as stripping verbose intro rule;
		reparse the command.

Table of Smarter Parser Messages (continued)
SP rule			message
stripping verbose intro rule	"You can just begin your command with the verb."


Section - Making assertions

["I am strong," "You're weird," etc. ]

A smarter parser rule when sp_normal (this is the making assertions rule):
	if input contains "(i|he|she|it|this|you|your) (_be|don|doesn|can)":
		identify error as making assertions rule;
		reject the command.

Table of Smarter Parser Messages (continued)
SP rule			message
making assertions rule	"Please rephrase your command to start with an imperative verb, like LOOK."





Section - Starting command with I

[Normally something like "i don't know what to do" results in the unfortunate message "I only understood you as far as wanting to take inventory."]

A smarter parser rule when sp_normal (this is the starting command with i rule):
	if input starts with "i":
		identify error as starting command with i rule;
		reject the command.

Table of Smarter Parser Messages (continued)
SP rule			message
starting command with i rule		"Please rephrase your command to start with an imperative verb, like LOOK."




Section - Stripping Adverbs

[There are a few English words that end in "ly" and aren't adverbs, like family and apply. I leave it to a future "Brilliant Parser" extension to deal with these.]

A smarter parser rule when sp_normal (this is the stripping adverbs rule):
	if stripping "\w*ly" is fruitful and the number of words in the reborn command > 1:
		identify error as stripping adverbs rule;
		reparse the command.

Table of Smarter Parser Messages (continued)
SP rule			message
stripping adverbs rule	"Adverbs are almost never necessary."



Section - Unnecessary Movement

["get closer to ball," "move away from ball, "stand next to ball," etc. ]

A smarter parser rule when sp_normal (this is the unnecessary movement rule):
	if stripping "(walk|move|go|stand|get) (to|close|away|by|over|near|next)" is fruitful or stripping "(under|over|behind|around|near|nearer|far|farther|inside)" is fruitful:
		identify error as unnecessary movement rule;
		reject the command.

Table of Smarter Parser Messages (continued)
SP rule			message
unnecessary movement rule		"Usually, you don't need to worry about the exact positioning of things. You can get more detail about something with the EXAMINE command, or use compass directions like [get direction example] to change your location."


Section - Stripping Vague Words


A smarter parser rule when sp_normal (this is the stripping vague words rule):
	if input contains "(some|any|every|no|here|there)(one|thing|body|where|place)?":
		identify error as stripping vague words rule;
		reject the command.

Table of Smarter Parser Messages (continued)
SP rule			message
stripping vague words rule	"You will need to be more specific. Try typing LOOK to get a description of your surroundings."


Section - Stripping Pointless Words


A smarter parser rule when sp_normal (this is the stripping pointless words rule):
	if stripping "(anyway|instead|very|almost|this|so|just)" is fruitful or stripping "(now|next|around|more|near|nearer|far|farther)" is fruitful:
		identify error as stripping pointless words rule;
		if the number of words in the reborn command > 0, reparse the command;
		else reject the command. [If there are no more words to deal with.]

Table of Smarter Parser Messages (continued)
SP rule			message
stripping pointless words rule	"Most connecting and comparative words are not necessary."






Section - Stripping Failed With

[">take ball with my hand," for instance]

A smarter parser rule when sp_normal (this is the stripping failed with rule):
	if stripping "(with|using|by) (the|a|some|my)? ?\w*" is fruitful:
		identify error as stripping failed with rule;
		reparse the command.

Table of Smarter Parser Messages (continued)
SP rule			message
stripping failed with rule	"You don't always need to specify what you're doing something with."


Section - Generic surroundings


A smarter parser rule when sp_normal (this is the generic surroundings rule):
	if input contains "(ground|floor|left|right|above|below|wall|ceiling|forward|backward|onward|sky)":
		identify error as generic surroundings rule;
		reject the command.

Table of Smarter Parser Messages (continued)
SP rule			message
generic surroundings rule		"Look for specific nouns or directions; usually, concepts like the floor and ceiling, or relative directions like left and right, are not relevant."



Section - Stripping Body Parts

[can successfully parse things like "take Phil's arm" or "hit Phil with my hand," and at least prints a recognition of the body part word otherwise. ]


A smarter parser rule when sp_normal (this is the stripping body parts rule):
	replace the regular expression "\b(eye|head|skull|hair|nose|mouth|ear|cheek|forehead)s?\b" in reborn command with "_body";
	replace the regular expression "\b(face|neck|chest|gut|breast|body|nipple|shoulder|collar|arm|wrist)s?\b" in reborn command with "_body";
	replace the regular expression "\b(hand|finger|knuckle|fingernail|waist|thigh|leg|knee)s?\b" in reborn command with "_body";
	replace the regular expression "\b(shin|ankle|foot|feet|toe|elbow|fist|thumb|tongue|lip|heart)s?\b" in reborn command with "_body";
	if stripping "(on|in) ?(the|his|her|a|their|my)? _body" is fruitful or stripping "[apostrophe]?s _body" is fruitful, even within words:
		identify error as stripping body parts rule;
		reparse the command;
	if input contains "_body":
		identify error as stripping body parts rule;
		reject the command.

Table of Smarter Parser Messages (continued)
SP rule			message
stripping body parts rule	"You do not normally need to refer to specific parts of the body."




Section - Understood as far as

[Will parse things like "take ball I suppose," "look about the room", or "kill the troll in terror"]

A smarter parser rule when sp_normal (this is the stripping unnecessary addendum rule):
	if the latest parser error is the only understood as far as error or latest parser error is the can't see any such thing error:
		if stripping "\b(the|a|some|my|this|that)\b" is fruitful, do nothing;
		if input starts with "(get off|look under|switch on|switch off|turn on|turn off|take off|listen to|wake up|put on)" and the number of words in reborn command is at least 3:
			now reborn command is "[word number 1 in reborn command] [word number 2 in reborn command] [word number 3 in reborn command]";
			identify error as stripping unnecessary addendum rule;
			reparse the command;
		if input starts with "(take|get|drop|eat|go|enter|get|x|examine|search|open)" or input starts with "(close|wear|wake|attack|kiss|touch|pull|push|turn)" or input starts with "(squeeze|burn|taste|cut|drink|rub|buy|climb|kill)" and the number of words in reborn command is at least 2:
			now reborn command is "[word number 1 in reborn command] [word number 2 in reborn command]";
			identify error as stripping unnecessary addendum rule;
			reparse the command;
		if input starts with "(l|look|inventory|exit|z|wait)" or input starts with "(yes|no|jump|sorry|sleep)": ["i" is intentionally left out, so this doesn't think something like "I don't think so" is an attempt to take inventory.]
			now reborn command is "[word number 1 in reborn command]";
			identify error as stripping unnecessary addendum rule;
			reparse the command.

[(get|look|switch|turn|take|listen|wake|put) (off|under|on|to|up)]


Table of Smarter Parser Messages (continued)
SP rule			message
stripping unnecessary addendum rule		"I only understood the first part of that-- trying anyway."



Chapter - Testing - For Testing Only

Understand "parser" as parser-debugging. Parser-debugging is an action out of world applying to nothing.

SP-debug is a truth state that varies.

Carry out parser-debugging:
	if sp-debug is true:
		now sp-debug is false;
		say "Smart Parser debugging off.";
	otherwise:
		now sp-debug is true;
		say "Smart Parser debugging on."


Smarter Parser ends here.

---- DOCUMENTATION ----


Section: Introduction


Some newcomers to IF are put off by the traditional parser, which offers no default instruction, is fairly rigid about the type of input it will accept, and does not usually phrase error messages in an instructional manner. After one or two confusing error messages, many new players will just give up.

This extension responds to various common forms of misunderstood input tried by new players, offering more helpful responses or reparsing certain commands in a more standard form. It also is easy to extend with your own matched patterns.

The easiest way to use the extension is to just include it; nothing else is necessary. Further reading is only necessary if you wish to customize the behavior.

A few notes: This extension owes a lot conceptually to Emily Short's Inform 6 extension, NewbieGrammar.h, and is also to a large degree a response to its author's experience with new player transcripts (see http://aaronareed.net/wttc/transcripts.html). While the extension is marked for Glulx only, it's technically possible to compile a .z8 story using it, although you won't have a lot of headroom left for story.


Section: Existing Rules


A new rulebook, the smarter parser rules, is run just before printing a parser error message. Each rule looks for a specific type of input pattern, and if it finds one, can print a better error message, or even adjust or replace the command and try running it again.

Running the rulebook at the end of the turn cycle rather than the beginning means that nothing in this extension should conflict with game-specific code. If you define your own "what is" command, for instance, it will be parsed and dealt with before Smarter Parser has a chance to kick in.

Here is the default rule set, in order, along with an example of the type of malformed command each is designed to catch. Most of these rules can understand a wide range of similar input. 

	the standardize apostrophes rule
	the scandalous standardize swears rule
	the signs of confusion rule
		">I don't know what to do"
	the stripping niceties rule
		">please take the sword"
	the stripping interjections rule
		">take the damn sword"
	the signs of frustration rule
		">this game sucks"
	the too many words rule
	the standardize be verbs rule
	the asking who are you rule
		">who am I talking to "
	the asking who am i rule
		">who am i"
	the asking where am i rule
		">where am i"
	the asking unparseable questions rule
		">why is this sword here"
	the stripping verbose intro rule
		">I want to get the sword"
	the making assertions rule
		">I am strong"
	the starting command with i rule
		">I love this game"
	the stripping adverbs rule	
		">go north carefully"
	the unnecessary movement rule
		">go to sword"
	the stripping vague words rule
		">go somewhere"
	the stripping pointless words rule
		">anyway kill the troll"
	the stripping failed with rule	
		">kill goblin with a rock"
	the generic surroundings rule	
		">look at ground"
	the stripping body parts rule	
		">take woman's hand"
	the stripping unnecessary addendum rule
		">wait for a while"

(The standardize apostrophes rule converts contractions like "I'm" to "I am", then strips any remaining apostrophes; the "standardize be verbs" replaces am, was, were, and so on with "_be". Later rules can use this tag to simplify pattern matching.)

Section: Reparsing

The rules beginning with "stripping" attempt to remove the offending part of the command and try again: >PLEASE TAKE THE SWORD is tried as >TAKE THE SWORD. When this happens, the player is notified. A named phrase controls the style of notification. By default, it looks like this:

	To announce the reparsed command:
		say "[unless saved Smarter Parser error is empty]([italic type][saved Smarter Parser error][roman type])[command clarification break][end unless]>[reborn command in upper case]".

You can create your own custom style of notification by simply rewriting this named phrase in your own code, making use of the variables "saved Smarter Parser error" and "reborn command":

	To announce the reparsed command:
		say "(retrying that as '[reborn command]')[command clarification break]".

Section: Rejecting More Helpfully

All other Smarter Parser rules look for certain patterns in misunderstood input and display a message explaining why the command wasn't understood and offering suggestions for a better command to try. The named phrase that controls this is:

	To explain the reborn command:
		say "[italic type][saved Smarter Parser error][roman type][line break]".

Again, you can override this by re-declaring the phrase.

The error message for a smarter parser rule can be changed by amending the Table of Smarter Parser Messages, like so:

	Table of Smarter Parser Messages (amended)
	SP rule						message
	the stripping niceties rule		"Your fawning attitude sickens me."

These messages can make use of the phrases [get noun example], to print the name of a visible thing, or [get direction example] to print a direction that can be moved in. (*Note: these currently produce preset alternatives, due to a bug in Inform 6E72.)

Type "parser" in an unreleased game to see which rule is generating a particular message.

If you don't like a rule, you can get rid of it with standard rule ordering syntax:

	The stripping niceties rule is not listed in the smarter parser rulebook.

You can also remove all of the built-in rules by adding the use option:

	Use empty Smarter Parser rulebook.



Section: Making new Smarter Parser Rules


To create your own Smarter Parser rules, you'll need to understand regular expressions: see the "Advanced Text" chapter of the Inform docs for a basic introduction.

Here's an example of how to write a new Smarter Parser rule that removes a pattern and tries the command again:

	A smarter parser rule (this is the stripping formal address rule):
		if stripping "(sir|ma'am)" is fruitful:
			identify error as stripping formal address rule;
			reparse the command.

The condition "if stripping (some text) is fruitful" will be true if the text was found and successfully removed from the player's command. You must then "identify error as (the name of the rule)" and either "reparse the command" (to try it again) or "reject the command" (to give up). If you do neither, the next smarter parser rule will be checked. If no smarter parser rules match, Inform's default parser error printing system will kick in.

In addition to stripping text, you can also try matching:

	A smarter parser rule (this is the no leet speak allowed rule):
		if input contains "\w\d+\w":
			identify error as no leet speak allowed rule;
			reject the command.

"if input contains (a regular expression)" will be true if the given expression appears as its own word or set of words in the rejected command. You can also test the conditions "if input starts with" or "if input ends with." To any of these you can add the phrase option ", even within words" to match more broadly.

If we want to set the reparsed command by hand, we can directly adjust the variable "the reborn command."

You should define the text printed when a new smarter parser rule matches by continuing the Table of Smarter Parser Messages. (If there is no matching entry, nothing will be printed when this rule matches, which is sometimes what you want for very minor corrections.)

	Table of Smarter Parser Messages (continued)
	SP rule						message
	no leet speak allowed rule	"This story requires you to use proper spelling and grammar."

Note that rules are tried in the order listed. "asking who am i," which would match the command >WHO AM I, needs to come before "asking unparseable questions," which matches the pattern "who (any text)". If the order were reversed, "asking who am i" would never be run. In general, more specific rules involving the same words should come before more general rules.

A final note: checking regular expressions causes a certain performance hit, so the more rules you add, the slower things will be. The slowdown only happens when the player types misunderstood input, but keep in mind this might be rather frequent for new players, many of whom may be playing your story on a slow interpreter such as Quixe for the web.



Example: * Caverns and Kobolds - A tiny scenario to test misunderstood input with.

	*: "Caverns and Kobolds"

	Include Smarter Parser by Aaron Reed.

	Spooky Cave is a room. A glowing sword is in Spooky Cave. Dark Tunnel is north of Spooky Cave. A dusty skull is in Dark Tunnel.

	A smarter parser rule (this is the no leet speak allowed rule):
		if input contains "\w\d+\w":
			identify error as no leet speak allowed rule;
			reject the command.

	A smarter parser rule (this is the stripping formal address rule):
		if stripping "(sir|maam)" is fruitful:
			identify error as stripping formal address rule;
			reparse the command.

	The stripping formal address rule is listed first in the smarter parser rules.

	Table of Smarter Parser Messages (continued)
	SP rule			message
	no leet speak allowed rule		"This game requires you to use proper spelling and grammar."
	stripping formal address rule		"I appreciate your respect, but all you need to do is type your commands directly."
	
	Test me with "ub4r l33t / what do I do then?? / who am i? / who are you / where am I!? / go to sword / please take the sword sir / this is stupid / drop the damned sword / why is the sky blue / I want to take the sword / go somewhere / carefully go north / anyway look around / touch ceiling / touch skull with my foot / scratch head / wait for a while / I like this game after all".
