Version 16/140501 of Smarter Parser by Aaron Reed begins here.

"Understands a broader range of input than the standard parser, and can direct new players towards proper syntax."


[
CHANGES:
 -- Version 16: Updated for latest build.
 -- Version 15: changes suggested post-IF Comp 11. Point players to the NOVICE OFF command the first time something is printed. Add an option/notification to turn auto-reparsing off with CORRECT OFF. Added support for a cross-story config file to remember these two settings. Removed "scandalous standardize swears" and "signs of frustration"; retooled "stripping interjections" to be simpler and less likely to conflict with existing code; simplified adverbs to only look for a commonly-used set; fixed bug in "noun alone examines" interpretation to do with typing "examine" without a noun; simplified some scope checks to improve speed; tweaked applicable examples for easier customization; made suggestion for ABOUT command customizable; removed clothing and body parts to a standalone extension, "Commonly Unimplemented"; rewrote punctuation replacement and "starts with" to do direct I6 string manipulation, for speed gain; rewrote displaying results to isolate text for easier replacement; rewrote documentation for clarity; rewrote error message selected to allow for table continuations rather than amendments (which don't work on rules); removed starting command with i as redundant with making assertions rule; rewrote unnecessary possessive's rule to only match if the "'s" word is not in the dictionary, which should cut down on false positives.
 -- Version 14: Added more enthusiastic blank line replacement code that allows for any command to run with time passing as normal. Tweaks to make the unnecessary movement rule more clear and specific; added code so item examples can choose the player's noun even without parsing; removed most references to "compass directions" in deference to down, out etc; clarified text of generic surroundings rule.
 -- Version 13: Added a new final rule to restore the command to its original state, to prevent later rules from looking at modified command text; fixed bug in Stripping Niceties; adjusted stripping interjections.
 -- Version 12: Updated for compatibility with Player Experience Upgrade.
 -- Version 11: Significant update based on statistical analysis of several hundred newbie transcripts. Now supports converting a blank line to look, and understanding a noun alone as examining. Also added sections for "Where can I go?", "Failed communication attempts", "Unnecessary possessives", "Gerunds". Added and refined patterns and message text throughout. 
 -- Version 10: Added beta support for two meta-smart parsing activities: converting a blank line to LOOK, and parsing commas more helpfully. (Note: the latter removed in version 11, this proved a lot more problematic than first thought.)
 -- Version 9: Updated for build 6F95
 -- Version 8: Some minor tweaks to vocabulary
 -- Version 7: Added some new punctuation marks to be stripped.
 -- Version 6: Major revision. Altered visual style to be more refined and more flexible; named rulebook outcomes; renamed and clarified several variables; rewrote documentation; added a few new cases from newbie Sand-dancer transcripts; stopped trying to strip single quotes from input (this was a bug that led to problems with recognizing possessives like "grandma's"; Poor Man's Mistype would catch attempts to say "grandmas" anyway.) Marked as glulx only due to issues with z-machine compilation. Cleaned up some formatting issues, including an occasional erroneous first space.
 -- Version 5: Removed deprecated features; added option to ignore all rules; adjusted responses to not have fantasy RPG elements & use more examples taken from the player's current environment.
 -- Version 4: Updated for build 6E59
 -- Version 3: added ? for help, more punctuation removal; corrected a typo; minor bug fixes.
 -- Version 2: bug fixes.
]


[
Some Notes:

It might be tempting to just strip all unrecognized words from the player's command and try reparsing, but that has much more of a risk of completely misinterpreting the player's command. Here, at least, we usually know the content of what we're stripping and can react accordingly. Some good examples of the failings of this technique here: http://groups.google.com/group/rec.arts.int-fiction/browse_frm/thread/5c4eca496b34abc6
]


Chapter - Compatibility

Section - Parser Speak (for use without Keyword Interface by Aaron Reed)

To say as the parser: do nothing.
To say as normal: do nothing.
To parser say (txt - an indexed text): say "[as the parser][txt][run paragraph on][as normal][line break]".

Section - Utilities 
					
To decide which number is the position of first bad word: (- GetFirstNonDictWord() -).

[From DM4: NextWordStopped()
Finds the next dictionary word in the player’s input, that is, the word at position wn in the input, moving the word number wn on by one. (The first word is at position 1.) Routine returns The dictionary value, or 0 if the word is not in the dictionary, or the constant THEN1__WD if the ‘‘word’’ was a full stop, or the constant COMMA_WORD if it was a comma, or −1 if the word stream has run out.]

Include (-

[ GetFirstNonDictWord myword   twn;
	twn=wn;
	wn = 1;
	myword = 0;
	while (myword ~= -1) {
		myword = NextWordStopped();
		if (myword == 0) {
			myword=wn-1;
			wn=twn;
			return myword;
		}
	}
	myword=wn-1;
	wn=twn;
	return -1;	
];

-).
 
Chapter - Definitions

Use MAX_EXPRESSION_NODES of 300.

The rejected command is an indexed text that varies. The reborn command is an indexed text that varies. 

Suppress parser error is a truth state that varies. sp reparse flag is a truth state that varies.

Smarter Parser is a rulebook. The Smarter Parser rules have outcomes reparse the command (success), reparse the command without an explanation (success), reject the command (failure), and no match (no outcome). [And the default, no outcome.]

Chapter - Empty Smarter Parser Rulebook

Use empty Smarter Parser rulebook translates as (- Constant NO_SMARTER_PARSER_RULES; -).

[The verb related thing is to make certain rules only run if the parser error identifies the problem as being with the beginning of the command; i.e. what it thinks should be the verb.]

To decide whether sp_normal: if the empty Smarter Parser rulebook option is active, no; if novice mode enabled is false, no; yes.
To decide whether sp_normal_and_verb_related: if sp_normal and the latest parser error is verb-related, yes; no. [We must do this awkwardly since we want the rules to be in the order we declare them, but if they have an unequal number of when conditions, they are sorted in that order instead.]

Definition: a command parser error is verb-related if it is the only understood as far as error or it is the didn't understand error or it is the not a verb I recognise error.

Chapter - Config File (for Glulx only)

[Support for reading and writing a simple config file. This consists of two characters, both of which should be either 0 (false) or 1 (true). The first denotes whether "novice mode enabled" is true. The second denotes whether "corrections enabled" is true. Both are true by default, corresponding to a file of "11". An author, if desired, could override these preferences in a "When play begins" rule (or by removing this section).

This will either silently succeed or silently fail-- we don't want to bother players with failure notifications if they're on a platform that doesn't support file i/o, for example.]

The File of Smarter Parser Config (owned by another project) is called "SmarterParserConfig".

To reset smarter parser config file:
	if ready to read the file of smarter parser config:
		write "11" to file of smarter parser config.

First when play begins (this is the Smarter Parser load config file rule):
	if ready to read the file of smarter parser config:
		let file text be indexed text;
		now file text is "[text of file of smarter parser config]";
		if number of characters in file text is not 2:
			reset smarter parser config file;
			stop;
		let novice bit be indexed text;
		now novice bit is "[character number 1 in file text]";
		let corrections bit be indexed text;
		now corrections bit is "[character number 2 in file text]";
		let valid file be whether or not ( novice bit is "0" or novice bit is "1" ) and ( corrections bit is "0" or corrections bit is "1" ) ;
		if valid file is false:
			reset smarter parser config file;
			stop;
		if novice bit is "0":
			now novice Mode enabled is false;
		if corrections bit is "0":
			now corrections enabled is false;

Last carry out novice mode toggling (this is the Smarter Parser save novice mode preference to file rule):
	let outputText be an indexed text;
	now outputText is "11";
	if ready to read file of smarter parser config:
		now outputText is "[text of file of smarter parser config]";
	else if file of smarter parser config exists:
		[another program has this file open (maybe another interpreter window); do nothing]
		continue the action;
	let noviceBit be "1";
	if novice mode enabled is false, now noviceBit is "0";
	now outputText is "[noviceBit][character number 2 in outputText]";
	write "[outputText]" to file of smarter parser config.
	
Last carry out corrections toggling (this is the Smarter Parser save corrections preference to file rule):
	let outputText be an indexed text;
	now outputText is "11";
	if ready to read file of smarter parser config:
		now outputText is "[text of file of smarter parser config]";
	else if file of smarter parser config exists:
		continue the action;
	let correctionsBit be "1";
	if corrections enabled is false, now correctionsBit is "0";
	now outputText is "[character number 1 in outputText][correctionsBit]";
	write "[outputText]" to file of smarter parser config.	

Chapter - Let Experts Disable

Section - Novice Mode

Novice mode enabled is a truth state variable. Novice mode enabled is true.

Understand "novice" as novice mode toggling. Novice mode toggling is an action out of world applying to nothing. Understand "novice on" as novice mode toggling when novice mode enabled is false. Understand "novice off" as novice mode toggling when novice mode enabled is true.

Carry out novice mode toggling (this is the carry out novice mode toggling rule):
	if novice mode enabled is true:
		now novice mode enabled is false;
		say "Novice mode disabled." (A);
	otherwise:
		now novice mode enabled is true;
		say "Novice mode enabled." (B)

Notified about novice mode is a truth state variable. Notified about novice mode is false. 

Section - Turn off auto-correct

[Note that having corrections on but novice mode off is an invalid state; corrections are a subset of novice mode.]

Corrections enabled is a truth state variable. Corrections enabled is usually true.

Corrections toggling is an action out of world applying to nothing. Understand "correct" as corrections toggling. Understand "correct on" as corrections toggling when corrections enabled is false. Understand "correct off" as corrections toggling when corrections enabled is true. 

Carry out corrections toggling (this is the carry out corrections toggling rule):
	if corrections enabled is true:
		now corrections enabled is false;
		say "Auto-correction disabled." (A);
	otherwise:
		if novice mode enabled is false:
			try novice mode toggling;
		now corrections enabled is true;
		say "Auto-correction enabled." (B)
		
Notified about corrections is a truth state variable. Notified about corrections is false. 
		

Chapter - Smarter Parser Core Routines

Section - Try Harder to Understand

Before printing a parser error (this is the Smarter Parser trying harder to understand rule):
	[Set some things up and consult the rulebook.]
	now the rejected command is the player's command;
	now the reborn command is the player's command;
	now suppress parser error is false;
	follow the Smarter Parser rules;
	[If no rules matched or the command is unchanged, continue on with the standard parser error behavior.]
	unless rule succeeded or rule failed, continue the activity;
	clean up the reparsed command;
	if the outcome of the rulebook is not the reject the command outcome and reborn command is rejected command, continue the activity;
	[Otherwise, we'll need to print something.]
	now suppress parser error is true;
	[If we're just printing a rejection, do that and stop.]
	if the outcome of the rulebook is the reject the command outcome:
		explain Smarter Parser results, with no new command;
		continue the activity;
	[If the command ended up empty, reject and stop.]
	if reborn command is empty:
		explain Smarter Parser results, with no new command;
		continue the activity;
	[Otherwise we're re-parsing. First, explain to the player what's happening.]
	if the outcome of the rulebook is the reparse the command without an explanation outcome: 
		explain Smarter Parser results, omitting the explanation;
	else:
		explain Smarter Parser results;
	[And finally, set things up to parse the new command.]
	if corrections enabled is true:
		now sp reparse flag is true.

Rule for printing a parser error when suppress parser error is true (this is the Smarter Parser suppress parser messages on matches rule):
	[Don't print anything; Smarter Parser has definitely already offered an error.]
	now suppress parser error is false.

Rule for reading a command when sp reparse flag is true (this is the Smarter Parser retrying input rule):
	now sp reparse flag is false;
	change the text of the player's command to "[reborn command]".

Section - Utility functions for explaining

To decide which text is the explanation for (sp_rule - a rule):
	repeat through the Table of Smarter Parser Messages in reverse order:
		if rule name entry is sp_rule:
			decide on message entry;
	decide on "".

To clean up the reparsed command:
	while character number 1 in reborn command is " ":
		replace character number 1 in reborn command with "";
	replace the regular expression " {2,}" in reborn command with " ";
	if reborn command matches the regular expression "(_can|_be)", now reborn command is "". [If any of our simplifications appear, we never want to try reparsing the command, since we don't want these exposed to the player and they wouldn't parse correctly anyway.]

Section - Explaining Results

To explain Smarter Parser results, omitting the explanation, with no new command:
	let msg be "";
	if not omitting the explanation, now msg is the explanation for saved Smarter Parser error;
	if msg is not empty, display the rule explanation msg;
	unless with no new command:
		if corrections enabled is true:
			if msg is empty:
				display the reborn command;
			else:
				display the active corrections introduction;
				display the reborn command;
				if notified about corrections is false:
					display the corrections instructions;
					now notified about corrections is true;	
		else:
			display the inactive corrections introduction;
			display the reborn command;
			say line break;
	if notified about novice mode is false:
		unless msg is empty:
			display the novice instructions;
			now notified about novice mode is true.	
	
	
Section - Display of Results

To display the rule explanation (explanation - a text):
	say "[explanation][command clarification break]".
	
To display the active corrections introduction:
	say "[line break][as the parser]Retrying as:[as normal][line break]";
	
To display the inactive corrections introduction:
	say "[as the parser]You might try:[as normal] ".
	
To display the corrections instructions:
	say "[paragraph break][as the parser]Type UNDO if this isn't what you wanted to do, or CORRECT OFF to stop automatically correcting commands.[as normal]";

To display the novice instructions:
	say "[line break][as the parser]To stop these messages entirely, type NOVICE OFF.[as normal]".
	
To display the reborn command:
	say ">[reborn command in upper case]".


Section - Identifying the rule

The saved Smarter Parser error is a rule variable. 
	
To identify error as (why - a rule):
	if sp-debug is true, parser say "***Smarter Parser: matched on [why].[line break]command at this point is '[the reborn command]'.";
	now saved Smarter Parser error is why.

Section - The Table

Table of Smarter Parser Messages
rule name	message
--	--

Chapter - Macros for defining rules

To decide whether stripping (regex - an indexed text) is fruitful, even within words, only in the middle, only from the beginning:
	if even within words:
		if replacing regex with "" is fruitful, even within words:
			decide yes;
	if only in the middle:
		if replacing regex with "" is fruitful, only in the middle:
			decide yes;
	if only from the beginning:
		if replacing regex with "" is fruitful, only from the beginning:
			decide yes;
	otherwise:
		if replacing regex with "" is fruitful, decide yes;
	decide no.

To decide whether replacing (regex - an indexed text) with (newstr - an indexed text) is fruitful, even within words, only in the middle, only from the beginning:
	let original be the reborn command;
	if even within words:
		replace the regular expression "[regex]" in reborn command with "[newstr]";
	otherwise if only in the middle:
		replace the regular expression "(?=(^\s)+)\b[regex]\b(?=(^\s)+)" in reborn command with "[newstr]";
	otherwise if only from the beginning:
		replace the regular expression "^[regex]" in reborn command with "[newstr]";
	otherwise:
		replace the regular expression "\b[regex]\b" in reborn command with "[newstr]";
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
	
[NOTE: Simple starts with cannot be combined as part of the same check with a "stripping" or used when the command is going to be reparsed, since it doesn't alter anything.]
	
To decide whether input simple starts with (regex - an indexed text): if sp_regex reborn command starts with regex, decide yes; decide no.

To decide whether sp_regex (words - an indexed text) starts with (regex - an indexed text): (- SP_Starts_With_Regex({words}, {regex}) -).

[Can match patterns of the form "string", "(list|of|strings)", or "(apple|orange|pear)~" where the final tilde character indicates an optional s at the end of the word, but nothing more complicated. This does not match partial words.]
Include (-
[ SP_Starts_With_Regex wd regex lenW lenR i c wordCtr thisWordMatch lastChar;
	!if ((wd == 0) || (BlkType(wd) ~= INDEXED_TEXT_TY)) rfalse;
	!if ((regex == 0) || (BlkType(regex) ~= INDEXED_TEXT_TY)) rfalse;
	TEXT_TY_Transmute(regex); ! Convert text to indexed text
	lenW = TEXT_TY_CharacterLength(wd);
	lenR = TEXT_TY_CharacterLength(regex);
	wordCtr = 0;
	thisWordMatch = true;
	lastChar = BlkValueRead(regex, lenR-1);
	for (i=0: i<lenR: i++) {
		c = BlkValueRead(regex, i);
		if (c == '(') continue;
		if (c == '|' or ')') {
			if (thisWordMatch == true) {
				! If a list ends with special ~ character, we should recognize plurals too.
				if (wordCtr == lenW-1 && lastChar == '~' && BlkValueRead(wd, wordCtr) == 's') rtrue;
				if (wordCtr == lenW || BlkValueRead(wd, wordCtr) == ' ') rtrue;
			}
			if (i >= lenR-1) rfalse; 
			wordCtr = 0;
			thisWordMatch = true;
		} else {
			if (thisWordMatch == false) continue;
			if (wordCtr >= lenW) {
				thisWordMatch = false;
			} else if (BlkValueRead(wd, wordCtr) ~= c) {
				thisWordMatch = false;
			}
			wordCtr++;
		}
	}
	if (thisWordMatch) rtrue;
	rfalse;
]; 
-).


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

Chapter - Applicable Examples

Section - Definitions

Definition: a thing is sp_alive: if it is yourself, yes; if it is a person, yes; if it is the player, yes; no.

Definition: a thing is probably_visible rather than probably_not_visible: if it is enclosed by the location and it is not in a closed opaque container and it is not the player, yes; no. [Checking whether things are visible is slower than a "probably right" solution like this.]

Definition: a thing is appropriate for taking: if it is probably_not_visible, no; if it is sp_alive, no; if it is part of something, no; if it is scenery, no; if it is fixed in place, no; yes.

Definition: a thing is bestial if it is an animal.

Section - Defaults

default noun example is a text variable. default noun example is usually "flower".
default person example is a text variable. default person example is usually "John".
default direction example is a direction variable. default direction example is usually north.
default help command is a text variable. default help command is usually "about".

Section - Get Noun Example

To say get noun example:
	let fake_example be false;
	let noun_example be indexed text;
	[Check to see if the player tried to reference something nearby, maybe in a command like WALK TO CABINET.]
	let candidate be indexed text;
	let last word be indexed text;
	now last word is word number ( the number of words in the rejected command ) in the rejected command;
	repeat with item running through probably_visible things:
		now candidate is printed name of item in lower case;
		repeat with wordcounter running from 1 to the number of words in candidate:
			if word number wordcounter in candidate matches the regular expression "\b[last word]":
				now noun_example is the printed name of item;
	if noun_example is empty:
		[Otherwise, choose the most sensible example possible.]
		if the number of appropriate for taking things which are not enclosed by the player > 0:
			now noun_example is "[random appropriate for taking thing which is not enclosed by the player]";
		otherwise if the number of probably_visible things which are not sp_alive > 0:
			now noun_example is "[random probably_visible thing which is not sp_alive]";
		otherwise:
			now noun_example is "[default noun example]";
			now fake_example is true;
	say "[noun_example in upper case][if fake_example is true] (if one were here)".

Section - Get Person Example

To get person example, in normal case:
	let person_example be indexed text;
	let subj be a random probably_visible not bestial person;
	if subj is not a person, now subj is a random probably_visible person;
	if subj is a person:
		now person_example is "[subj]";
		let name_length be the number of words in person_example;
		now person_example is "[word number name_length in person_example]";
	otherwise:
		now person_example is "John";
	if in normal case:
		say "[person_example]";
	otherwise:
		say "[person_example in upper case]".

To say get person example: get person example. To say get person example in normal case: get person example, in normal case.

Section - Get Direction Example

The standard directions list is a list of directions variable. The standard directions list is {north, northeast, east, southeast, south, southwest, west, northwest, up, down}.

Definition: a direction is sp_standard if it is listed in the standard directions list.
Definition: a direction is sp_viable if the room it from location is a room.

To get direction example, omitting superfluous details: 
	let fake_example be false;
	let randdir be a random sp_standard sp_viable direction;
	if randdir is not a direction:
		now randdir is a random sp_viable direction;
	if randdir is not a direction:
		now randdir is default direction example; 
		now fake_example is true;
	let dir_example be indexed text;
	now dir_example is "[randdir]";
	now dir_example is "[dir_example in upper case]";
	if omitting superfluous details:
		say "[dir_example]";
	otherwise:
		if fake_example is true, say "(for example) ";
		if randdir is sp_standard:
			let dir_shorthand be indexed text;
			now dir_shorthand is "[character number 1 in dir_example]";
			if randdir is northeast, now dir_shorthand is "NE";
			if randdir is northwest, now dir_shorthand is "NW";
			if randdir is southeast, now dir_shorthand is "SE";
			if randdir is southwest, now dir_shorthand is "SW";
			say "[dir_example] (or [dir_shorthand])";
		otherwise:
			say "[dir_example]".

To say get direction example: get direction example.
To say get direction example omitting superfluous details: get direction example, omitting superfluous details.




Chapter - Testing - For Testing Only

SP-debug is a truth state variable. SP-debug is false.

Understand "parser" as parser-debugging. Parser-debugging is an action out of world applying to nothing. Understand "parser on" as parser-debugging when sp-debug is false. Understand "parser off" as parser-debugging when sp-debug is true.

Carry out parser-debugging:
	if sp-debug is true:
		now sp-debug is false;
		say "Smart Parser debugging off.";
	otherwise:
		now sp-debug is true;
		say "Smart Parser debugging on."


Chapter - The Rules

[Because blank lines are handled differently than all other kinds of parser errors (see the "Keyboard" routine in Parser.i6t), it's impossible to intervene other than through intercepting the library message, which creates problems because the parser is in an unusual state at this point, or replace the whole Keyboard routine, which might create compatibility issues with other extensions. Both solutions are offered here.]

[This is the same as the original Keyboard, except we've commented out the section that checks for a blank line.]

Use normal blank lines translates as (- Constant USE_NORMAL_BLANK_LINES; -).
		
Section - Nothing Entered Advanced Version

Include (- [ Keyboard  a_buffer a_table  nw i w w2 x1 x2;
	sline1 = score; sline2 = turns;

	while (true) {
		! Save the start of the buffer, in case "oops" needs to restore it
		for (i=0 : i<64 : i++) oops_workspace->i = a_buffer->i;
	
		! In case of an array entry corruption that shouldn't happen, but would be
		! disastrous if it did:
		#Ifdef TARGET_ZCODE;
		a_buffer->0 = INPUT_BUFFER_LEN;
		a_table->0 = 15;  ! Allow to split input into this many words
		#Endif; ! TARGET_
	
		! Print the prompt, and read in the words and dictionary addresses
		PrintPrompt();
		DrawStatusLine();
		KeyboardPrimitive(a_buffer, a_table);
	
		! Set nw to the number of words
		#Ifdef TARGET_ZCODE; nw = a_table->1; #Ifnot; nw = a_table-->0; #Endif;
	
		! If the line was blank, get a fresh line
		! BEGIN SMARTER PARSER CHANGE: The lines below are commented out so that a blank line continues through the normal parsing process, instead of being intercepted here.
		!if (nw == 0) {
		!	@push etype; etype = BLANKLINE_PE;
		!	players_command = 100;
		!	BeginActivity(PRINTING_A_PARSER_ERROR_ACT);
		!	if (ForActivity(PRINTING_A_PARSER_ERROR_ACT) == false) L__M(##Miscellany,10);
		!	EndActivity(PRINTING_A_PARSER_ERROR_ACT);
		!	@pull etype;
		!	continue;
		!}
		! END SMARTER PARSER CHANGE
			
		! Unless the opening word was OOPS, return
		! Conveniently, a_table-->1 is the first word on both the Z-machine and Glulx
	
		w = a_table-->1;
		if (w == OOPS1__WD or OOPS2__WD or OOPS3__WD) {
			if (oops_from == 0) { PARSER_COMMAND_INTERNAL_RM('A'); new_line; continue; }
			if (nw == 1) { PARSER_COMMAND_INTERNAL_RM('B'); new_line; continue; }
			if (nw > 2) { PARSER_COMMAND_INTERNAL_RM('C'); new_line; continue; }
		
			! So now we know: there was a previous mistake, and the player has
			! attempted to correct a single word of it.
		
			for (i=0 : i<INPUT_BUFFER_LEN : i++) buffer2->i = a_buffer->i;
			#Ifdef TARGET_ZCODE;
			x1 = a_table->9;  ! Start of word following "oops"
			x2 = a_table->8;  ! Length of word following "oops"
			#Ifnot; ! TARGET_GLULX
			x1 = a_table-->6; ! Start of word following "oops"
			x2 = a_table-->5; ! Length of word following "oops"
			#Endif; ! TARGET_
		
			! Repair the buffer to the text that was in it before the "oops"
			! was typed:
			for (i=0 : i<64 : i++) a_buffer->i = oops_workspace->i;
			VM_Tokenise(a_buffer,a_table);
		
			! Work out the position in the buffer of the word to be corrected:
			#Ifdef TARGET_ZCODE;
			w = a_table->(4*oops_from + 1); ! Start of word to go
			w2 = a_table->(4*oops_from);    ! Length of word to go
			#Ifnot; ! TARGET_GLULX
			w = a_table-->(3*oops_from);      ! Start of word to go
			w2 = a_table-->(3*oops_from - 1); ! Length of word to go
			#Endif; ! TARGET_
		
			! Write spaces over the word to be corrected:
			for (i=0 : i<w2 : i++) a_buffer->(i+w) = ' ';
		
			if (w2 < x2) {
				! If the replacement is longer than the original, move up...
				for (i=INPUT_BUFFER_LEN-1 : i>=w+x2 : i-- )
					a_buffer->i = a_buffer->(i-x2+w2);

				! ...increasing buffer size accordingly.
				#Ifdef TARGET_ZCODE;
				a_buffer->1 = (a_buffer->1) + (x2-w2);
				#Ifnot; ! TARGET_GLULX
				a_buffer-->0 = (a_buffer-->0) + (x2-w2);
				#Endif; ! TARGET_
			}
		
			! Write the correction in:
			for (i=0 : i<x2 : i++) a_buffer->(i+w) = buffer2->(i+x1);
		
			VM_Tokenise(a_buffer, a_table);
			#Ifdef TARGET_ZCODE; nw = a_table->1; #Ifnot; nw = a_table-->0; #Endif;
		
			return nw;
		}

		! Undo handling
	
		if ((w == UNDO1__WD or UNDO2__WD or UNDO3__WD) && (nw==1)) {
			Perform_Undo();
			continue;
		}
		i = VM_Save_Undo();
		#ifdef PREVENT_UNDO; undo_flag = 0; #endif;
		#ifndef PREVENT_UNDO; undo_flag = 2; #endif;
		if (i == -1) undo_flag = 0;
		if (i == 0) undo_flag = 1;
		if (i == 2) {
			VM_RestoreWindowColours();
			VM_Style(SUBHEADER_VMSTY);
			SL_Location(); print "^";
			! print (name) location, "^";
			VM_Style(NORMAL_VMSTY);
			IMMEDIATELY_UNDO_RM('E'); new_line;
			continue;
		}
		return nw;
	}
]; -) instead of "Reading the Command" in "Parser.i6t".

The blank line replacement is an indexed text variable.
The blank line replacement is usually "look".

After reading a command (this is the Smarter Parser advanced replace blank line rule):
	let T be indexed text;
	now T is the player's command;
	if T is "":
		if the normal blank lines option is inactive:
			say ">[blank line replacement in upper case][command clarification break]";
			change the text of the player's command to the blank line replacement;
		otherwise:
			say "[text of parser error internal rule response (X)]"; ["I beg your pardon?"]
			stop the action.

Section - Nothing Entered - Fallback Version

[Normally this will never be reached, but if the prior section is commented out, then things will fall through to this less intrusive implementation.]

Rule for printing a parser error when the latest parser error is the I beg your pardon error (this is the do something useful with blank lines fallback rule):
	[todo][identify error as do something useful with blank lines fallback rule;]
	if the normal blank lines option is active:
		continue the activity;
	otherwise:
		now the reborn command is "look";
		explain Smarter Parser results;
		try looking.

Section - Incorrect Use of commas

[Parsing commas also happens before normal rules can intervene. Commas can either be used to separate multiple items in a command (as in TAKE BELL, BOOK, CANDLE) or to give orders (THORIN, GET THE RUCKSACK). While the former is intuitive and sometimes spontaneously tried by IF novices, the latter is not, and responses for this error can be misleading in this context. (For instance, VERY WELL, GO NORTH leads to "You seem to want to talk to someone, but I can't see whom."

Unfortunately, due to an omission in the Inform template layer as of this writing (http://inform7.com/mantis/view.php?id=525) there is no way to interfere with the comma section of the parser through an activity. Our options are to either throw the baby out with the bathwater by stripping commas from input entirely (thus losing the list-making ability) or replace this section of the parser with a large block of Inform 6 code. Once the issue above is fixed, we could try setting a flag when a comma is detected in input, which could then trigger a rule name that does something more sophisticated: if the error reveals that the command began with a this processing via an activity. ]

[Use no comma-based orders translates as (- Constant USE_NO_COMMA_ORDERS; -). 

comma_flag is a truth state variable.

After reading a command (this is the Smarter Parser strip commas from commands rule):
	if the no comma-based orders option is active:
		let tmpcmd be indexed text;
		now tmpcmd is the player's command;
		if tmpcmd matches the text ",":
			now comma_flag is true.

Last before reading a command (this is the Smarter Parser cleanup comma checking rule):
	now comma_flag is false.

A Smarter Parser rule when sp_normal (this is the incorrect use of commas rule):
	if comma_flag is true:
		if the latest parser error is the can't see whom to talk to error or the latest parser error is the didn't understand addressee's last name error:
			try stripping everything before the comma and reparsing;
		otherwise:
			print an error about not using commas and reject the command.]


[		let new_cmd be indexed text;
		now new_cmd is the player's command;
		replace the regular expression ".*\p" in new_cmd with "";
		now the reborn command is new_cmd;
		explain Smarter Parser results;
		say command clarification break;
		change the text of the player's command to new_cmd.]


	[	identify error as the incorrect use of commas rule;
		let new_cmd be indexed text;
		now new_cmd is the player's command;
		now the reborn command is new_cmd;
		now the rejected command is "///"; [so it looks different than the old cmd.]
		reparse the command.]

[Table of Smarter Parser Messages (continued)
rule name	message
incorrect use of commas rule	"Avoid the use of commas or other unnecessary punctuation to make your commands better understood."]


[Section: Dealing with Commas

The archaic THORIN, TAKE THE RUCKSACK syntax is rarely used in modern IF, and many of the default parser messages relates to commas assume players understands this convention, leading do confusion if they don't.  whereas new players who include a comma in their input and be confused by the response. If any people are visible when a misunderstood command including a comma is tried, Smarter Parser tries to better explain the expected syntax. Otherwise, the extension strips everything up to and including the comma and reparses the command (so WELL THEN, GO NORTH can succeed).

If your story does not allow the player to order characters around (or uses an alternate syntax), you should trigger the second behavior in all cases by adding the following line:

	Use no comma-based orders.

You can stop Smarter Parser from interfering with commas like this:

	Use no Smarter Parser comma interference.]


Section - Stripping Punctuation

[Strips these characters: "()*/|\{}~ and square brackets. This implementation appears to be about 10-20 times faster than the old version.]
Include (-

Global ssc_reparsed = 0;
Global onlyP = 0;
[ StripSpecialCharacters str  len i c;
	onlyP = 1;
	len = TEXT_TY_CharacterLength(str);
	ssc_reparsed = 0;
	for (i=0: i<len: i++) {
		c = BlkValueRead(str, i);
		if (c == 34 or 47 or 40 or 41 or 42 or 91 or 92 or 93 or 123 or 124 or 125 or 126)
		{
			BlkValueWrite(str, i, ' ');
			ssc_reparsed = 1;
			onlyP = 0;
		} else if (c == '!' or '?') {
			BlkValueWrite(str, i, ' ');
			ssc_reparsed = 1;
		} else if (c == ';' or ':') {
			BlkValueWrite(str, i, '.');
			ssc_reparsed = 1;
		} else {
			onlyP = 0;
		}

	}
	return str;
];

[ IsOnlySpaces str      len i c;
	len = TEXT_TY_CharacterLength(str);
	for (i=0: i<len: i++) {
		c = BlkValueRead(str, i);
		if (c ~= 32) rfalse;
	}
	rtrue;
];

-) before "Definitions.i6t".


To decide whether ssc_reparsed: (- (ssc_reparsed == 1) -).
To decide whether only_p: (- (onlyP == 1) -).
To decide whether contents of (str - indexed text) are just spaces: (- IsOnlySpaces({str})  -).

To decide what indexed text is strip_special_characters for (cmd - indexed text): (- StripSpecialCharacters({cmd}) -).

This is the fast stripping punctuation rule:
	now reborn command is strip_special_characters for reborn command;
	if ssc_reparsed:
		identify error as stripping punctuation rule;
		if only_p or contents of reborn command are just spaces:
			now reborn command is "[default help command]";
		reparse the command without an explanation.	
		
[This is the slow stripping punctuation rule:
	if reborn command exactly matches the regular expression "<\?!>+":
		identify error as stripping punctuation rule;
		now reborn command is "[default help command]";
		reparse the command;	
	if replacing "<*~\\\/()\{\}[quotation mark][bracket][close bracket]>" with " " is fruitful, even within words or 
	replacing "<!?>+$" with "" is fruitful, even within words or
	replacing "<;:!?>+(?=(<^;:!?>|$))" with ". " is fruitful, even within words [regex here means any run of first set of characters that's followed by either something not one of those characters or the end of the line] or 
	replacing "&" with " and " is fruitful, even within words:
		identify error as stripping punctuation rule;
		reparse the command.]
		
A Smarter Parser rule when sp_normal (this is the stripping punctuation rule):
	abide by the fast stripping punctuation rule.

Section - Noun alone examines (for use without Keyword Interface by Aaron Reed)

Use normal lonely noun behavior translates as (- Constant USE_NORMAL_LONELY_NOUN_BEHAVIOR; -).

[We don't want to make a new action, since that might interfere with "doing anything except examining" style rules.]

Understand "[thing]" as examining when sp_normal and the normal lonely noun behavior option is inactive. 
Understand "examine" or "x" or "look at" as examining when sp_normal and the normal lonely noun behavior option is inactive. [Normally if exactly one object is in scope you can type the verb alone to act on it; the way the noun is determined in this case confuses Smarter Parser, so we disable this presumably minimally used functionality for the examining action.]

Carry out examining when sp_normal and the normal lonely noun behavior option is inactive and the number of words in the player's command is 1 and not ( the reborn command matches the text "EXAMINE" ) (this is the Smarter Parser noun alone examines rule):
	now the reborn command is "EXAMINE [the player's command]";
	identify error as Smarter Parser noun alone examines rule;
	explain Smarter Parser results.

Section - Simplify contractions

A smarter parser rule when sp_normal (this is the simplify contractions rule):
	[We can't do <'s> here because it might be a possessive or "is".]
	replace the regular expression "[apostrophe](m|re)" in reborn command with " am"; 
	replace the regular expression "[apostrophe]t" in reborn command with "t";
	replace the regular expression "[apostrophe](d|ll|ve)" in reborn command with " _can".

Section - Standardize can verbs

A smarter parser rule when sp_normal (this is the standardize can verbs rule):
	replace the regular expression "\b(can|would|will|should|may|do|like to)\b" in the reborn command with "_can".


Section - Where can I go

A smarter parser rule when sp_normal_and_verb_related (this is the where can I go rule):
	if input contains "(which|what|where|what) (way|direction|door|exit)s?" or input contains "_can i (go|walk|move|travel|explore|leave)":
		identify error as the where can I go rule;
		now reborn command is "look";
		reparse the command.

Table of Smarter Parser Messages (continued)
rule name	message
where can I go rule	"[as the parser]Movement is usually by compass direction. Typing LOOK is a good way to get oriented.[as normal]"


Section - Signs of Confusion


A smarter parser rule when sp_normal (this is the signs of confusion rule):
	if input contains "(confused|huh|understand|dont know|going on|wtf|help|hint|instructions|directions|info)" or input simple starts with "(about|commands|actions|verbs|how _can|what _can)":
		identify error as signs of confusion rule;
		reject the command.

Table of Smarter Parser Messages (continued)
rule name		message
signs of confusion rule		"[as the parser]Try typing LOOK for a description of your surroundings. Any directions indicate exits which you can use by typing [get direction example]. Some of the objects mentioned in the description might be worth a closer look with a command like EXAMINE [get noun example]. You can also TAKE or DROP some things, type INVENTORY to see a list of what you're carrying already, OPEN or CLOSE containers or doors, and so on.[as normal]"


Section - Stripping Niceties


A smarter parser rule when sp_normal (this is the stripping niceties rule):
	if stripping "(please|^_can i)" is fruitful:
		identify error as stripping niceties rule;
		if the number of words in reborn command > 0, reparse the command;
		otherwise reject the command.
		
Table of Smarter Parser Messages (continued)
rule name		message
stripping niceties rule		"[as the parser]You can just state your commands directly.[as normal]"		


Section - Stripping Interjections

[Can correctly parse colorful commands like >GET THE F*CKING JAR or leave other S.P. messages to deal with stuff like >WHERE IN THE HELL AM I?, but requires at least two words remaining after stripping to try a reparse. This is to prevent >ATTACK THE F*CK becomes >ATTACK becomes >ATTACK (something the parser arbitrarily chooses).]

A smarter parser rule when sp_normal (this is the stripping interjections rule):
	if stripping "\b(in )?the (hell|heck|fuck|freak|damn)(ing)?\b" is fruitful:
		identify error as stripping interjections rule;
		if the number of words in the reborn command > 1:
			reparse the command without an explanation;
		otherwise:
			reject the command.

Table of Smarter Parser Messages (continued)
rule name		message
stripping interjections rule		"[as the parser]I think your command included an interjection, but I couldn't understand it. Try stating your intention more directly.[as normal]"	


Section - Standardize be verbs


A smarter parser rule when sp_normal (this is the standardize be verbs rule):
	replace the regular expression "\b(had|has|have|having)\b " in the reborn command with "";
	replace the regular expression "\b(is|am|are|be|being|been|was|were)\b" in the reborn command with "_be".


Section - Who are you

["Who said that," "Who am I talking to," "Who are you," "Who've I been speaking with," etc]

A smarter parser rule when sp_normal_and_verb_related (this is the asking who are you rule):
	if input contains "who.*\b(talk|speak|there|this|said|you|that)", even within words:
		identify error as asking who are you rule;
		reject the command.

Table of Smarter Parser Messages (continued)
rule name	message
asking who are you rule	"[as the parser]I'm the parser-- I translate what you type into actions your character takes in the story world. Use imperative commands like LOOK, GET [get noun example], or GO [get direction example] to advance the story. Try typing [default help command in upper case] for more information.[as normal]"


Section - Who am I


A smarter parser rule when sp_normal_and_verb_related (this is the asking who am i rule):
	if input contains "who _be i":
		identify error as asking who am i rule;
		now the reborn command is "examine me";
		reparse the command.

Table of Smarter Parser Messages (continued)
rule name	message
asking who am i rule	"[as the parser]You are a character in this story. Normally, you'll want to phrase your input as commands, not questions.[if corrections enabled is true] I've taken the liberty of demonstrating below.[end if][as normal]"


Section - Where am I

A smarter parser rule when sp_normal (this is the asking where am i rule):
	if input contains "where _be i" or
			input contains "(examine|x|look)( at)?( the)? (here|this place|place|room|area|around)" or
			input contains "(search|what _be in) (the )?(room|area|location|scene)":
		identify error as asking where am i rule;
		now reborn command is "look";
		reparse the command.

Table of Smarter Parser Messages (continued)
rule name	message
asking where am i rule	"[as the parser]To get a description of your surroundings, try typing LOOK.[as normal]"


Section - Stripping Verbose Intro

[Things like "I want to go north" or "can you take the ball" ]

A smarter parser rule when sp_normal_and_verb_related (this is the stripping verbose intro rule):
	if stripping "i (_be |_can )?(want|_can|going|guess)( to)?" is fruitful, only from the beginning or stripping "(_can|try) (i|you|we|to)" is fruitful, only from the beginning or stripping "(lets|let's)" is fruitful, only from the beginning:
		identify error as stripping verbose intro rule;
		reparse the command.
		
Table of Smarter Parser Messages (continued)
rule name	message
stripping verbose intro rule	"[as the parser]You can just begin your command with the verb.[as normal]"

Section - Asking unparseable questions

A smarter parser rule when sp_normal_and_verb_related (this is the asking unparseable questions rule):
	if input simple starts with "(who|what|where|why|which|how|_can)":
		identify error as asking unparseable questions rule;
		reject the command.

Table of Smarter Parser Messages (continued)
rule name	message
asking unparseable questions rule	"[as the parser]You can't ask direct questions to the game. Type a verb - noun command like EXAMINE [get noun example] to interact with the story world, or LOOK to get a description of your surroundings.[as normal]"


Section - Stripping Adverbs

A smarter parser rule when sp_normal (this is the stripping adverbs rule):
	if stripping "(slowly|carefully|quickly|quietly|loudly)" is fruitful:
		identify error as stripping adverbs rule;
		reparse the command.

Table of Smarter Parser Messages (continued)
rule name	message
stripping adverbs rule	"[as the parser]Adverbs are not usually necessary in interactive fiction.[as normal]"


Section - Making assertions

["I am strong," "You're weird," etc. ]

A smarter parser rule when sp_normal_and_verb_related (this is the making assertions rule):
	if input simple starts with "(i|he|she|it|this|you|your)":
		identify error as making assertions rule;
		reject the command.

Table of Smarter Parser Messages (continued)
rule name	message
making assertions rule	"[as the parser]Please rephrase your command to start with an imperative verb, like LOOK.[as normal]"


Section - Unnecessary Movement

["get closer to ball," "move away from ball, "stand next to ball," "get in front of ball," etc. One of the most common mistaken impressions about the world model seen in novice players.]

A smarter parser rule when sp_normal (this is the unnecessary movement rule):
	if stripping "(walk|move|go|stand|get) (to|close|away|by|over|near|next)" is fruitful, even within words or stripping "(under|over|behind|around|near|nearer|far|farther|inside|front of|approach|up to|goto)" is fruitful or stripping "(left|right|above|below|forward|backward|onward)" is fruitful:
		identify error as unnecessary movement rule;
		reject the command.

Table of Smarter Parser Messages (continued)
rule name		message
unnecessary movement rule		"[as the parser]If you can see an object, you can usually just interact with it directly without worrying about your position[if player is enclosed by something] (although since you're in or on something, you may need to type EXIT first)[end if]. Try a command like EXAMINE [get noun example] for a closer look at something[if the number of sp_viable directions is at least 1], LOOK to get a new description of this location, or a direction like [get direction example] to move to a different location.[otherwise], or LOOK to show the description of this location again.[as normal]"


Section - Stripping Vague Words


A smarter parser rule when sp_normal (this is the stripping vague words rule):
	if input contains "(some|any|every|no|here|there)(one|thing|body|where|place)?":
		identify error as stripping vague words rule;
		reject the command.

Table of Smarter Parser Messages (continued)
rule name	message
stripping vague words rule	"[as the parser]You will need to be more specific. Try typing LOOK to get a description of your surroundings.[as normal]"


Section - Stripping Pointless Words


A smarter parser rule when sp_normal (this is the stripping pointless words rule):
	if stripping "(anyway|instead|very|almost|this|so|just|ye)" is fruitful or stripping "(now|try|next|around|more)" is fruitful:
		identify error as stripping pointless words rule;
		if the number of words in the reborn command > 0, reparse the command;
		else reject the command. [If there are no more words to deal with.]

Table of Smarter Parser Messages (continued)
rule name	message
stripping pointless words rule	"[as the parser]Most connecting and comparative words are not necessary.[as normal]"


Section - Stripping Failed With

[">take ball with my hand," for instance. If a game actually implements an action using "with [something]", and the player types an unknown second noun, this could produce a misleading message; so we make sure the parser error isn't one that would indicate such a thing.]

A smarter parser rule when sp_normal (this is the stripping failed with rule):
	if the latest parser error is not the can't see any such thing error:
		if stripping "(with|using|by) (the|a|some|my)?.?$" is fruitful:
			identify error as stripping failed with rule;
			reparse the command.

Table of Smarter Parser Messages (continued)
rule name	message
stripping failed with rule	"[as the parser]You don't always need to specify what you're doing something with.[as normal]"

Section - Gerunds

[Catch some of the most common regular verbs that might be tried as a gerund, like TRY LOOKING.]

A smarter parser rule when sp_normal (this is the no gerunds rule):
	if input contains "(go|look|wait|listen|enter|exit|open|wear|attack|touch|push)(ing\b)":
		replace the regular expression text matching subexpression 2 in the reborn command with "";
		identify error as no gerunds rule;
		reparse the command.

Table of Smarter Parser Messages (continued)
rule name	message
no gerunds rule	"[as the parser]Use verbs in present tense command form.[as normal]"


Section - Unnecessary possessives

[Convert a command like >GET BOB'S JACKET to >GET JACKET, but leave alone >BOB'S A WEIRDO or >GET APPLE'S. ]

A smarter parser rule when sp_normal (this is the unnecessary possessives rule):
	if input contains "\w*[apostrophe]s":
		[First, we want to make sure this is a non-dictionary word, otherwise stripping it is probably going to be misleading]
		let apos_pos be 0;
		repeat with wordcounter running from 1 to the number of words in reborn command:
			if word number wordcounter in the reborn command matches the regular expression "\w*[apostrophe]s":
				now apos_pos is wordcounter;
				break;
		if apos_pos is position of first bad word:
			replace the regular expression " \w*[apostrophe]s " in the reborn command with " ";
			identify error as unnecessary possessives rule;
			reparse the command.


Section - Understood as far as

[Will parse things like "take ball I suppose," "look about the room", or "kill the troll in terror"]
[NOTE fails in the case of something like >GO BOLDLY NORTH --> >GO BOLDLY]

A smarter parser rule when sp_normal (this is the stripping unnecessary addendum rule):
	if the latest parser error is the only understood as far as error or latest parser error is the can't see any such thing error:
		if stripping "\b(the|a|some|my|this|that)\b" is fruitful, do nothing;
		if input simple starts with "(get off|look under|switch on|switch off|turn on|turn off|take off|listen to|wake up|put on)" and the number of words in reborn command is at least 4:
			let seq be "[word number 1 in reborn command] [word number 2 in reborn command] [word number 3 in reborn command]";
			now reborn command is "[seq]";
			identify error as stripping unnecessary addendum rule;
			reparse the command;
		[if input simple starts with "(take|get|drop|eat|go|enter|get|x|examine|search|open|close|wear|wake|attack|kiss|touch|pull|push|turn|squeeze|burn|taste|cut|drink|rub|buy|climb|kill)" and the number of words in reborn command is at least 3:]
		if input simple starts with "(take|get|drop|eat|go|enter|get|x|examine)" and the number of words in reborn command is at least 3:
			let seq be "[word number 1 in reborn command] [word number 2 in reborn command]";
			now reborn command is "[seq]";
			identify error as stripping unnecessary addendum rule;
			reparse the command;
		if input simple starts with "(l|look|inventory|exit|z|wait|yes|no|jump|sorry|sleep)" and the number of words in reborn command is at least 2: ["i" is intentionally left out, so this doesn't think something like "I don't think so" is an attempt to take inventory.]
			let w1 be word number 1 in reborn command;
			now reborn command is w1;
			identify error as stripping unnecessary addendum rule;
			reparse the command.

[(get|look|switch|turn|take|listen|wake|put) (off|under|on|to|up)]


Table of Smarter Parser Messages (continued)
rule name		message
stripping unnecessary addendum rule		"[as the parser]I only understood the first part of that[if corrections enabled is true]-- trying anyway[end if].[as normal]"


Section - Failed Communication Attempts

A smarter parser rule when sp_normal_and_verb_related (this is the failed communication attempts rule):
	if input simple starts with "(hello|hi|talk|speak|greet|greetings|ask|tell|goodbye|bye)" and there is a  probably_visible not bestial person:
		identify error as failed communication attempts rule;
		reject the command.

Table of Smarter Parser Messages (continued)
rule name	message
failed communication attempts rule	"[as the parser]If you're trying to talk to someone, you might try ASK [get person example] ABOUT something, the traditional conversation syntax. Type [default help command in upper case] to see if this story offers more detailed instructions for conversation.[as normal]"


Section - Too Many Words


A smarter parser rule when sp_normal (this is the too many words rule):
	if the number of characters in the reborn command > 1 and the number of words in the reborn command > 6:
		identify error as too many words rule;
		reject the command.

Table of Smarter Parser Messages (continued)
rule name		message
too many words rule		"[as the parser]You typed a rather long command and I didn't understand it. It's better to stick to simpler things like TAKE [get noun example].[as normal]"

Section - Fix the command

[If we failed to find a match, go back to the original command so any template-replacing we did doesn't get accidentally shown to the player.]

The last smarter parser rule when sp_normal (this is the fix the command rule):
	now the reborn command is the rejected command.


Smarter Parser ends here.

---- DOCUMENTATION ----


Chapter: Introduction

Newcomers to IF can be frustrated by the standard parser, which offers little instruction and is fairly rigid about the type of input it will accept. After one or two confusing errors, many new players will just give up. This extension responds to various common forms of misunderstood input tried by new players, as seen in hundreds of example transcripts collected by many IF authors over the years, and both offers more helpful responses as well as retrying some commands in a more standard form, teaching the player correct syntax as it goes. 

Section: Installation and Use

Smarter Parser is triggered only when a parser error is about to be printed; that is, when the parser has given up trying to understand the player's command. After standardizing the misunderstood input to simplify pattern matching, it looks through all the rules in a new rulebook, the Smarter Parser rules. Depending on the result of a rule, a command can be rejected with a better error message, or changed into a better form and re-parsed.

Since Smarter Parser only interferes when parsing has failed, you shouldn't normally have to worry about it interfering with your own nouns or verbs. For instance, while Smarter Parser will respond helpfully to >HINT, if you create your own "hint" command, it will take precedence over Smarter Parser. However, since Smarter Parser will still fire if the player misuses your command in a way that causes it not to be parsed (by typing >HINT CASTLE, for instance, if your command expects only HINT) you should review the Smarter Parser rules below and modify the output or delist rules that could hinder rather than help your own implementation.

Section: Quick Tips

If your story includes any of the following, you'll probably want to take a look at the listed rules as a starting point:

	conversation	
		the failed communication attempts rule
	
	nonstandard movement or an "exits" command	
		the where can i go rule
		the where am i rule
		the unnecessary movement rule
		
	new verbs requiring you to do something "with" something else
		the stripping failed with rule
		
	a characterized narrator or parser
		the asking who are you rule (at a minimum)

	any questions-based commands (who, what, where, etc)
		the asking unparseable questions rule
		
	nouns involving possessives, like "Bob's nose"
		the unnecessary possessives rule

Section: Testing

In an unreleased story, you can type PARSER to start showing the names of  matched Smarter Parser rules. You can look up a rule in this documentation  to see how to change or remove it.

Section: Configuration

Experienced players can type NOVICE OFF to disable Smarter Parser completely, which will improve speed on slower platforms, or CORRECT OFF to turn off automatic reparsing of commands (instead, the extension recommends a correction but does not actually submit it). These commands (along with UNDO) are introduced the first time the extension kicks in. If the target platform supports file i/o, this configuration is saved to disk and will be honored across projects using version 15 of Smarter Parser or newer if they're run locally from the same directory.

Authors can also disable corrections or Smarter Parsing entirely, perhaps temporarily for a certain sequence or permanently after the player has advanced past an introductory sequence, with the following phrases:

	now corrections enabled is false
	now novice mode enabled is false
	
Section: Style

Smarter Parser messages can easily be styled differently than normal messages by adding before and after formatting instructions to the "as the parser" and "as normal" say phrases. For instance, to make Smarter Parser messages appear in italics:

	To say as the parser: say italic type.
	To say as normal: say roman type.

Chapter: The Rules

Section: Blank Lines

Novice players often press enter at a blank prompt, which normally shows the message "I beg your pardon?" Under the theory that players probably do this when they're not sure what to do next, Smarter Parser maps blank lines to LOOK, to get a fresh description of the surroundings. You can change the command to any string:

	The blank line replacement is "wait".

...or restore the default behavior:

	*: Use normal blank lines.
	
Section: Lonely Nouns

If a player types just a noun, as in >SWORD, we treat this like >EXAMINE SWORD.

To remove:

	*: Use normal lonely noun behavior.

Section: the stripping punctuation rule

This rule tries to remove extraneous punctuation marks from the player's input, successfully parsing commands like >WAIT? or >(LISTEN) . It prints no message.

To remove:

	*: The stripping punctuation rule is not listed in the Smarter Parser rulebook.
	
Section: the simplify contractions rule

To make pattern matching simpler in later rules, this changes things like I'LL to I WILL. It prints no message.

To remove (although note that this will cause some later rules to not recognize contractions):

	*: The simplify contractions rule is not listed in the Smarter Parser rulebook.
	
Section: the Standardize can verbs rule

Similarly, this replaces CAN, WOULD, WILL, SHOULD, MAY, DO, and LIKE TO with _CAN. This special word simplifies later pattern matching. It prints no message.

To remove (although note that this will break several later rules):

	*: The standardize can verbs rule is not listed in the Smarter Parser rulebook.

Section: the where can I go rule

Tries to help players who seem to be trying to find where the exits are, matching commands like >WHICH WAY IS OUT or >CAN I LEAVE. To change the message it prints, paste the code block below and adjust the quoted text accordingly. 

	*: Table of Smarter Parser Messages (continued)
	rule name	message
	where can I go rule	"[as the parser]Movement is usually by compass direction. Typing LOOK is a good way to get oriented.[as normal]"
	
To remove:

	*: The where can I go rule is not listed in the Smarter Parser rulebook.
	
Section: the signs of confusion rule

Looks for patterns indicating player confusion or frustration, including >I DON'T KNOW..., >WTF, >SO CONFUSED, >HUH??, >INFO, >HOW DO I..., >ACTIONS, and several others. To change the parser message:

	*: Table of Smarter Parser Messages (continued)
	rule name		message
	signs of confusion rule		"[as the parser]Try typing LOOK for a description of your surroundings. Any directions indicate exits which you can use by typing [get direction example]. Some of the objects mentioned in the description might be worth a closer look with a command like EXAMINE [get noun example]. You can also TAKE or DROP some things, type INVENTORY to see a list of what you're carrying already, OPEN or CLOSE containers or doors, and so on.[as normal]"
	
To remove:

	*: The signs of confusion rule is not listed in the Smarter Parser rulebook.

Section: The stripping niceties rule

Removes the phrases PLEASE or CAN I (and variants) and reparses the command. To change the parser message:

	*: Table of Smarter Parser Messages (continued)
	rule name		message
	stripping niceties rule		"[as the parser]You can just state your commands directly.[as normal]"
	
To remove:

	*: The stripping niceties rule is not listed in the Smarter Parser rulebook.

Section: The stripping interjections rule

Removes interjections to successfully parse colorful commands like >GET THE DAMN JAR or >WHERE IN THE HELL AM I and reparses without showing an error message. If this reduces the command to one or no words, don't reparse and show the message below. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name		message
	stripping interjections rule		"[as the parser]I think your command included an interjection, but I couldn't understand it. Try stating your intention more directly.[as normal]"	

To remove:

	*: The stripping interjections rule is not listed in the Smarter Parser rulebook.

Section: The standardize be verbs rule

Replaces words like AM, WAS, WERE, HAVE BEEN with _BE, to simplify later pattern matching.

To remove (although note that this will break several later rules):

	*: The standardize be verbs rule is not listed in the Smarter Parser rulebook.
	
Section: the asking who are you rule

Responds to players trying to address the parser or narrator with commands like >WHO ARE YOU, >WHO'S SPEAKING, >WHO AM I TALKING TO, and so on. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name	message
	asking who are you rule	"[as the parser]I'm the parser-- I translate what you type into actions your character takes in the story world. Use imperative commands like LOOK, GET [get noun example], or GO [get direction example] to advance the story. Try typing [default help command in upper case] for more information.[as normal]"
	
To remove:

	*: The asking who are you rule is not listed in the Smarter Parser rulebook.

Section: the asking who am I rule

Answers the question >WHO AM I? with an explanation and a reparsing as >EXAMINE ME. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name	message
	asking who am i rule	"[as the parser]You are a character in this story. Normally, you'll want to phrase your input as commands, not questions.[if corrections enabled is true] I've taken the liberty of demonstrating below.[end if][as normal]"
	
To remove:

	*: The asking who am I rule is not listed in the Smarter Parser rulebook.
	
Section: the asking where am I rule

Answers the question >WHERE AM I or attempts to examine the location (>LOOK AROUND, >EXAMINE ROOM, >SEARCH LOCATION, >WHAT'S IN THE AREA) with a pointer towards >LOOK. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name	message
	asking where am i rule	"[as the parser]To get a description of your surroundings, try typing LOOK.[as normal]"
	
To remove:

	*: The asking where am I rule is not listed in the Smarter Parser rulebook.

Section: the stripping verbose intro rule

Reparses commands that contain an unnecessary introduction, such as >I GO NORTH, >CAN WE TAKE THE BALL, >LET'S WAIT, >I WANT TO ATTACK, and so on. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name	message
	stripping verbose intro rule	"[as the parser]You can just begin your command with the verb.[as normal]"
	
To remove:

	*: The stripping verbose intro rule is not listed in the Smarter Parser rulebook.

Section: the asking unparseable questions rule

Rejects commands that look like questions: anything starting with WHO, WHAT, WHERE, WHY, WHICH, HOW, or variants on CAN I. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name	message
	asking unparseable questions rule	"[as the parser]You can't ask direct questions to the game. Type a verb - noun command like EXAMINE [get noun example] to interact with the story world, or LOOK to get a description of your surroundings.[as normal]"
	
To remove:

	*: The asking unparseable questions rule is not listed in the Smarter Parser rulebook.
	
Section: the stripping adverbs rule

Reparses the player's command after removing some of the most commonly tried adverbs, including SLOWLY, CAREFULLY, QUICKLY, QUIETLY, and LOUDLY. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name	message
	stripping adverbs rule	"[as the parser]Adverbs are not usually necessary in interactive fiction.[as normal]"

To remove:

	*: The stripping adverbs rule is not listed in the Smarter Parser rulebook.

Section: the making assertions rule

Rejects commands that look like assertion statements, such as anything starting with I, HE, SHE, IT, THIS, YOU, or YOUR. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name	message
	making assertions rule	"[as the parser]Please rephrase your command to start with an imperative verb, like LOOK.[as normal]"
	
To remove:

	*: The making assertions rule is not listed in the Smarter Parser rulebook.	

Section: the unnecessary movement rule

Rejects a wide variety of commands that look like attempts to move within a single room, one of the most common newbie moves in IF, with a mini-tutorial message. Commands matched include those starting with phrases like >GO OVER TO, >MOVE AWAY FROM, >STAND NEXT TO, >GET IN FRONT OF, >WALK UP TO, etcetera. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name		message
	unnecessary movement rule		"[as the parser]If you can see an object, you can usually just interact with it directly without worrying about your position[if player is enclosed by something] (although since you're in or on something, you may need to type EXIT first)[end if]. Try a command like EXAMINE [get noun example] for a closer look at something[if the number of sp_viable directions is at least 1], LOOK to get a new description of this location, or a direction like [get direction example] to move to a different location.[otherwise], or LOOK to show the description of this location again.[as normal]"

To remove:

	*: The unnecessary movement rule is not listed in the Smarter Parser rulebook.	

Section: the stripping vague words rule

Rejects commands containing vague words like SOMEONE, ANYWHERE, NOBODY, or EVERYTHING. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name	message
	stripping vague words rule	"[as the parser]You will need to be more specific. Try typing LOOK to get a description of your surroundings.[as normal]"

To remove:

	*: The stripping vague words rule is not listed in the Smarter Parser rulebook.

Section: the stripping pointless words rule

Rejects commands containing hedges like ANYWAY, ALMOST, SO, or JUST, as well as generally meaningless sequential or quantitative words like NOW, NEXT, or MORE, and reparses the command if any words remain, otherwise rejecting it. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name	message
	stripping pointless words rule	"[as the parser]Most connecting and comparative words are not necessary.[as normal]"

To remove:

	*: The stripping pointless words rule is not listed in the Smarter Parser rulebook.

Section: the stripping failed with rule

Reparses commands that contain unnecessary addenda like >ATTACK MONSTER WITH MY SWORD, >GO NORTH BY THE PATH, >TOUCH ROCK USING MY FINGERTIP, and so on. (Everything from the "with" word on is stripped.) If your story includes a command that legitimately uses "with," you may want to change the message to account for this, or remove this rule altogether. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name	message
	stripping failed with rule	"[as the parser]You don't always need to specify what you're doing something with.[as normal]"
	
To remove:

	*: The stripping failed with rule is not listed in the Smarter Parser rulebook.	
	
Section: the gerunds rule

If the input contains the gerund form of several common IF commands, such as LOOKING, GOING, PUSHING, etc., strips the "ing" and reparses. Most useful in conjunction with other rules; i.e. along with "stripping pointless words" allows a command like >TRY WAITING to be successfully understood. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name	message
	no gerunds rule	"[as the parser]Use verbs in present tense command form.[as normal]"
	
To remove:

	*: The gerunds rule is not listed in the Smarter Parser rulebook.	

Section: the unnecessary possessives rule

If the player's command includes an interior unrecognized word that ends with an apostrophe s, strip the word and reparse. This works because the interior word is most likely to be a possessive in a command like >GET BOB'S JACKET; if the story doesn't recognize the word BOB'S, we can assume this isn't going to be a helpful disambiguation word and try just >GET JACKET instead. We limit our search to interior words to exclude different contexts like >BOB'S A JERK or >GET APPLE'S. This rule prints no message.

To remove:

	*: The unnecessary possessives rule is not listed in the Smarter Parser rulebook.

Section: the understood as far as rule

If the parser understood the player's command up to a certain point, and the words before that point look like a standard IF command, try stripping the excess and reparsing. This lets commands like >TAKE BALL I SUPPOSE, >LOOK AROUND THE ROOM, or >KILL THE TROLL IN TERROR work. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name		message
	stripping unnecessary addendum rule		"[as the parser]I only understood the first part of that[if corrections enabled is true]-- trying anyway[end if].[as normal]"

To remove:

	*: The understood as far as rule is not listed in the Smarter Parser rulebook.
	
Section: the failed communication attempts rule

If a person is near the player and they typed one of several common greeting words, including HELLO, HI, GREET, SPEAK..., etc., reject the command and print a message pointing towards correct conversation commands. Note that if your story includes a conversation system, you will almost certainly want to replace this message with something customized for your game, or remove the rule entirely. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name	message
	failed communication attempts rule	"[as the parser]If you're trying to talk to someone, you might try ASK [get person example] ABOUT something, the traditional conversation syntax. Type [default help command in upper case] to see if this story offers more detailed instructions for conversation.[as normal]"
	
To remove:

	*: The failed communication attempts rule is not listed in the Smarter Parser rulebook.

Section: the too many words rule

If none of the previous rules have matched and the player's command has more than six words, reject it with a tip to try shorter commands. To change the message:

	*: Table of Smarter Parser Messages (continued)
	rule name		message
	too many words rule		"[as the parser]You typed a rather long command and I didn't understand it. It's better to stick to simpler things like TAKE [get noun example].[as normal]"
	
To remove:

	*: The too many words rule is not listed in the Smarter Parser rulebook.


Chapter: Advanced Features

Section: Changing how reparsing is presented to the player

To change the text used to frame reparsed commands, and the notifications the first time auto-corrections and a smarter parser message are seen, just redefine one of the following phrases in your own source (the text shown here is the default behavior):
	
	To display the active corrections introduction:
		say "[line break][as the parser]Retrying as:[as normal][line break]";
	
	To display the inactive corrections introduction:
		say "[as the parser]You might try:[as normal] ".
	
	To display the corrections instructions:
		say "[paragraph break][as the parser]Type UNDO if this isn't what you wanted to do, or CORRECT OFF to stop automatically correcting commands.[as normal]";

	To display the novice instructions:
		say "[line break][as the parser]To stop these messages entirely, type NOVICE OFF.[as normal]".
	
More utilitarian but also available to be replaced if necessary:	
	
	To display the rule explanation (explanation - a text):
		say "[explanation][command clarification break]".

	To display the reborn command:
		say ">[reborn command in upper case]".

Section: Default Examples

A number of the built-in messages need examples of things, people, or directions. Some effort is made to find sensible options from the nearby environment, but if nothing matches, the extension uses default fallbacks, which can be changed thusly (again, the defaults are below):

	The default noun example is "flower". 
	The default person example is "John".
	The default direction example is north. 
	
Several instructional messages encourage the player to type the standard ABOUT to get more help or information about the game. (If your game doesn't have an ABOUT command, Smarter Parser will print some generic instructional text if the player tries it.) You can change the referenced command if your game provides something different:

	The default help command is "hint".
	
Section: Making your own rules

You can add new Smarter Parser rules to match additional patterns of misunderstood input. Smarter Parser uses regular expressions on the indexed text variable "the rejected command" to match patterns. The "Advanced Text" chapter of the Inform docs has a good primer on how to use regular expressions if you're not familiar with them.

Smarter Parser rules can optionally modify a second indexed text, "the reborn command," and can have one of four outcomes:

	reparse the command (success)
	reparse the command without an explanation (success)
	reject the command (failure)
	no match (default)

If there is no match, the next rule in the rulebook will be checked, and so on. If no Smarter Parser rules match, responsibility for printing an error returns to the default parser, as if Smarter Parser hadn't run.

For any of the non-default outcomes, however, the rule must first call the phrase:

	identify error as (the name of the matching rule)

In all cases except "without an explanation," the extension looks up the identified rule in the Table of Smarter Parser Messages, which has two columns, "rule name" and "message," and display the associated text to explain the nature of the problem. Stylistically, Smarter Parser messages should not just explain what went wrong, but try to suggest a better command or explain something about the IF world model that will lead the player towards more helpful input in the future. It's legal to have no matching error message, in which case nothing is printed.

With the two "reparse the command" outcomes, and if "corrections enabled" is true, the extension next takes the value of "the reborn command" and starts parsing over again as if the player had typed that command. The "without an explanation" variant will do so without printing an explanation, which is useful for very straightforward or obvious corrections such as misplaced punctuation.

Here's an example of a Smarter Parser rule that rejects a command:

	A smarter parser rule (this is the signs of frustration rule):
		if the rejected command matches the regular expression "(stupid|hate|dumb|boring|wtf)":
			identify error as signs of frustration rule;
			reject the command.
			
	Table of Smarter Parser Messages (continued)
	rule name						message
	signs of frustration rule	"[as the parser]You know, there's a HINT command available...[as normal]"

And here's one that reparses:

	A smarter parser rule (this is the stripping formal address rule):
		if the rejected command matches the regular expression "(sir|ma'am)":
			replace the regular expression text matching subexpression 1 in the reborn command with "";
			identify error as stripping formal address rule;
			reparse the command.
			
	Table of Smarter Parser Messages (continued)
	rule name						message
	stripping formal address rule	"[as the parser]There's no need to be overly polite.[as normal]"
	
Section: Shortcuts for new rules

There are a few built-in phrases to streamline common patterns in making Smarter Parser rules. One of these is checking whether a pattern matches, and if so, removing it from the player's command. This can be done with the "stripping (regex) is fruitful" phrase. The "stripping formal address rule" example above could be rewritten like this:

	A smarter parser rule (this is the stripping formal address rule):
		if stripping "(sir|ma'am)" is fruitful:
			identify error as stripping formal address rule;
			reparse the command.
	
By default these phrases all stop at word boundaries, so the above would not match on the word "sirrah." We can override this, or restrict the search to only match the beginning of the rejected command, with these two phrase variants:

	if stripping "regex" is fruitful, even within words
	if stripping "regex" is fruitful, only from the beginning

Similarly, we can check if the rejected command contains a certain regular expression (without modifying the command) with this shortcut phrase and variants:

	if input contains "regex"
	if input starts with "regex"
	if input ends with "regex"
	
We can also add the ", even within words" suffix to any of these three phrases to search across word boundaries.

Finally, there's a much faster alternate version of the "input starts with" phrase that works if you're just looking to match individual words at the start of a command and don't need any complex regular expression handling. This is:
	
	if input simple starts with "word"
	if input simple starts with "(one|of|these|words)"

Smarter Parser rules are checked in the order defined in the source, meaning any new ones you define will come at the end of the built-in set. You can use the standard rule reordering syntax to adjust this:

	The stripping formal address rule is listed before the stripping pointless words rule in the Smarter Parser rules.

A final note: checking regular expressions is slow, so adding rules ad infinitum is not necessarily a good idea. The slowdown only happens when the player types misunderstood input, but keep in mind this might be rather frequent for new players, many of whom may be playing your story on a slow interpreter such as a Javascript-based web environment.

Chapter: Miscellany

Section: No default rules

You can remove all of the built-in rules by adding the use option:

	Use empty Smarter Parser rulebook.

Section: Overriding player preferences

If an author is doing something unique with Smarter Parser and wants to override player preferences saved in an external file, she can simply use a "when play begins" rule to set "corrections enabled" or "novice mode enabled" to the desired boolean value.
	
Section: Compatibility

Smarter Parser replaces the I6 Keyboard routine to allow for blank line replacement, which may create compatibility issues with other extensions that replace this routine (such as Undo Output Control by Erik Temple). If you don't want to replace Keyboard, you can fall back on a simpler implementation for dealing with blank lines by adding an empty section replacing the relevant code:

	Section - revert to simple blank lines (in place of Section - Nothing Entered Advanced Version in Smarter Parser by Aaron Reed)
	
The simpler version can't have a custom verb (it always LOOKs) and acts like an out-of-world command (time doesn't pass).

Section: Bugs

The author is constantly striving to improve this extension. If you have any problems with Smarter Parser or suggestions for future improvement, please contact me at my gmail account, aareed, or on the intfiction.org forum.

Example: * Caverns and Kobolds - A tiny scenario to test misunderstood input with.

	*: "Caverns and Kobolds"

	Include Smarter Parser by Aaron Reed.

	Spooky Cave is a room. A glowing sword is in Spooky Cave. Dark Tunnel is north of Spooky Cave. A dusty skull is in Dark Tunnel. The kobold is a man in Tunnel. The kobold holds a spear.

	A smarter parser rule (this is the no leet speak allowed rule):
		if input contains "\w\d+\w":
			identify error as no leet speak allowed rule;
			reject the command.

	A smarter parser rule (this is the stripping formal address rule):
		if stripping "(sir|maam)" is fruitful:
			identify error as stripping formal address rule;
			reparse the command.
			
	A smarter parser rule (this is the signs of frustration rule):
		if input contains "(stupid|damn|idiot|hate)":
			identify error as signs of frustration rule;
			reject the command.

	The stripping formal address rule is listed first in the smarter parser rules.

	Table of Smarter Parser Messages (continued)
	rule name			message
	no leet speak allowed rule		"This story requires you to use proper spelling and grammar."
	stripping formal address rule		"Oh please, we don't stand on titles here."
	signs of frustration rule		"If you're feeling frustrated, you can always SAVE and come back later."
	
	Test me with "ub4r l33t / novice off / who am i? / novice on / who am i??? / sword / i'll look at the sword / which way should I go / what do I do then?? / i'm so confused / walk over to the sword / try looking / please take the sword sir / drop the freaking sword / the hell / who are you / look around the area / I want to take the sword / why is the sky blue / go somewhere / carefully go north / anyway look around / you're very tall / hello / get kobold's spear / touch ceiling / touch skull with my foot / wait for a while / well it looks like i'm starting to figure it out".

Example: * Stress test - A large archive of edge cases and actual misunderstood newbie inputs. Not all of these are caught by Smarter Parser, but are included to help ensure the extension is not making things less clear (or for speed profiling thousands of regular expression calls).

	*: "Stress Test"

	Include Smarter Parser by Aaron Reed.

	Stage is a room. A sword is in Stage. A cat is a male animal in Stage. A cube is a fixed in place supporter in Stage. Understand "Molly" as cat. Bob is a man in Stage. An apple is in Stage.

	East of Stage is Isolation Ward. North of Isolation Ward is Cell. The prisoner is a person in cell. A dog is an animal in cell. North of Cell is Foyer. Suzan and a lady barrister are women in Foyer. Mister Aleric Chesterworth and the Prime Minister are men in Foyer. The platform is a fixed in place supporter in Foyer. The bolt is part of the platform. The glass bowl is a transparent closed unopenable container. It is part of the platform. In the glass bowl is a screwdriver. The crowd is a backdrop in Foyer. An orange is in Foyer.
            
	The alcove is inside from Foyer. Spleenwards is a direction. The opposite of spleenwards is liverwurst. Liverwurst is a direction. The opposite of liverwurst is spleenwards. The kidney room is spleenwards from  the Foyer. Stage is east from the kidney room.

	test punctuation with "? / get sword & cat / x cat; x sword: x cube? x me / ~wait / wait* / get (cat) / (get cat / * / ???look / !!?!! / look??go north / north???!".

	Test examples with "who are you / hello / e / who are you / hello / n / who are you / hello / hello / n / who are you / who are you / hello / hello / hello / in / who are you / out / spleenwards / who are you / who are you / who are you".  

	Test standardize with "who is there / who's there / who i'm speaking to / who're you / I'll go north / who I've been talking to" 

	test where with "which way / can I go / what direction should I move in" 

	test confusion with "I'm confused / how can I play / what should I do"

	test niceties with "please go north / can I jump / please go / please / please please / please please please look please wait please".

	test interjections with "what in the hell / who the hell are you / take the freaking sword / the shit / you're the shit / this is balls / in the name of god run"

	test frustration with "commit suicide / you're stupid / I hate this / screw you / go to hell / die in a fire / MORON / what in the hell is that?"
 
	test words with "one two three four five / one two three four five six / one two three four five six seven / wait. wait. wait. wait. wait. / wait & wait & wait & xyzzy".
 
	test who with "who are you? / who said that / who am i talking to / who've i been speaking with / who's there / whos talking / who is saying that". 
    
	test whome with "who am I? / who am i supposed to be?"
 
	test whereami with "where am i / look at the room / look around / search area / what is this place / look in room".  

	test questions with "what should i do / who is that man / where is the sword / why am I playing this / which sword should I choose / how do I solve this puzzle / do I have to go north?".
  
	test intro with "i want to go north / I'm going north / I'm going to take sword / I'll wait / I'll try to wait / I'd like to listen / can I get the sword / try to listen / try listening / try going north / should I stop / let's go west / I think we should go west".

	test assertions with "I am happy / I can do anything / I don't care about you / He's crazy / She is a bird / It is only natural / This is interesting / You have a problem / Your fly is unzipped".

	test adverbs with "go carefully north / find fly / find lyre / look at lysander / look at Pigglywiggles / pet molly / give molly some cream / where is molly / golly this is fun / really / Really I mean it / This is awefully dangerous / casually pet the cat / think locally, not globally / run really fast / run really quickly / run carefully north".   
 
	test movewithin with "get closer to cat / move away from cat / stand next to cat / get in front of cat / go to cat / go over to cat / walk near the cat / move underneath cat / go farther away / get inside cat / climb up to cat / walk around cat".
 
	test vague with "somebody listen / is anyone there / take everyone / nobody likes me / go anyplace / walk to somewhere / here".

	test pointless with "anyway get cat / go north instead / very carefully attack cat / walk almost north / so just listen now / next try waiting / walk a little farther".

	Understand "attack [something] with [something]" as targetting. Targetting is an action applying to two things. Carry out targetting: say "You target [the noun] with [the second noun]."

	test failedwith with "get cat with my hands / get cat with patience / get cat using my brain / get cat using legs / get cat by using my hands / kill cat with sword / kill cat with the blunderbuss / attack cat with / attack cat burgler / attack cat with fence / attack cat with sword".

	test surroundings with "look at ground / sit on floor / go left / climb above cat / touch ceiling / forward / look backward / examine sky"

	test body with "take bob's hand / hit bob with my fist / get on my knees / slit wrists / kiss tongue / touch bob on his chest / cut bob's fingernails" 
	
	test clothes with "take off shirt / remove underwear / untie shoes / tie tie / undo belt"

	test possessives with "x suzan's orange / suzan's a weirdo / get orange's / get aleric's goat / examine suzan's barrister"	

	test newbies with "talkto cat / talk cat / smack cat / damn cat / wait for cat / call cat / stay here with cat / hello cat / bye / get apple, cat / say hi / yo / tell cat to ask me about the apple / cat, what seems to be the problem? / hit me, cat / Where is cat / I am ready to fight! / what next? / why not / who is cat / who is there / the voice outside bother me / please help me / who is around / what is in the room / what is it / what do you want me to do? / i have to go home / what do you mean / what happened / talk to cat / hmm / what apple / what is apple / who / enter / stand / leave\ / back / lay down / walk outside / go Stage / go Outdoors / move / right / leave room / leave Stage / leave Outdoors / jump across apple / walk apple / go to apple / goto apple / put the apple on the ground / examine the apple on the floor / find apple / look room / exit right / sit apple / lie on stage / lie on floor / lie on apple / approach apple / run east / go through door / use door / open doors / exit door / look left / sleep on apple / look behind apple / jump down / return / move apple /  go back / climb apple / walk away / sit / look outside / exit door / walk into door / exit apple / follow cat / help' / get appl / lsk s / take golden ap / wati / \asdf / ;apple / looka ta apple / gt apple / dfsdf / waiyt / help0 / 0 / 'exit' / goodbuy / get apepl / loook / udno / zlook / ook / poop / smile / ok / don't hesitate / laugh / commit suicide / choke and die from poison / explore / kill myself / lol / die / suicide / scream / pick nose / l33t hax0r skillz / shrug / hear / cool / for goodness sake give me my apple / say maybe I can eat it later / get ye flask / lick self / take a nap / ... / close my eyes / search ground / damn / okay / hi / kill me with apple / kill me / kill self / look apple / get that apple / use apple / listen apple / drop apple / make to to apple / raise apple / put the apple back / drop apple / info look / grab apple / drop apple / more / bring apple / swallow apple /  view apple / grab apple / stare apple / inspect apple / see apple / lift apple / hold apple / lay on apple / feel apple / put hand on apple / think of apple / lie down in apple / walk on apple / don apple / carry apple / use apple on cat / throw apple against the wall / take and go /  please take / listen more / listen then / take a lot / watch /  detailed instructions / what actions are there / what commands are available / I don't get it"

	test all with "test punctuation / test standardize / test where / test confusion /test niceties / test interjections / test frustration / test words / test who / test whome / test whereami / test questions / test intro / test assertions / test adverbs / test movewithin / test vague / test pointless / test failedwith / test surroundings / test body / test newbies / test clothes / test possessives".
