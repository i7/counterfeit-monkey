Presentation Details by Counterfeit Monkey begins here.

Use authorial modesty.


Chapter 3 - Typographical Conveniences

Section 1 - Output Shorthand

[For changes of style and certain unicode elements that we might want to invoke in the middle of other output, we define a few say phrases to make them easier to type. ]

Use American dialect and the serial comma.

To say i -- beginning say_i -- running on: (- style underline; -).
To say /i -- ending say_i -- running on: (- style roman; -).
To say b -- beginning say_b -- running on: (- style bold; -).
To say /b -- ending say_b -- running on: (- style roman; -).

en dash translates into Unicode as 8211.
em dash translates into Unicode as 8212.
ballot x translates into Unicode as 10007.

To say --: say Unicode em dash.
To say -: say Unicode en dash.
To say -x-: say Unicode ballot x.

Rule for clarifying the parser's choice of something:
	do nothing instead.

To say set prior to (item - a thing):
	now prior named object is item.

Section 2 - Input Editing

[There are a number of situations -- when typing a question with a ? at the end, in a command like TYPE "BROWN" ON COMPUTER, etc. -- where we want to throw away any punctuation that the player has added to the input, and no situations in which we want to keep it (except for full stops, which might indicate the beginning of another command). So we edit those out.]

Include Punctuation Removal by Emily Short.

First after reading a command (this is the remove stray punctuation rule):
	remove stray punctuation.

Section 3 - Styles

[Borrowed from Alabaster's version of the same thing.]

Table of User Styles (continued)
style name (a glulx text style)	background color (a text)	color (a text)	first line indentation (a number)	fixed width (a truth state)	font weight (a font weight)	indentation (a number)	italic (a truth state)	justification (a text justification)	relative size (a number)	reversed (a truth state)
special-style-2	--	"#444444"	0	false	light-weight	0	true	left-justified
special-style-1	--	"#767676"

Before listing plausible quips [when dialogue tinting is true]:
	say "[second custom style][run paragraph on]".

After listing plausible quips [when dialogue tinting is true]:
	if a paragraph break is pending:
		say "[roman type]";
	otherwise:
		say "[roman type][run paragraph on]".

Before listing matched quips:
	say "[second custom style][run paragraph on]".

After listing matched quips:
	if a paragraph break is pending:
		say "[roman type]";
	otherwise:
		say "[roman type][run paragraph on]".

Section 4 - Bolding Help

[The names of manipulable objects are especially important in this game, and it's possible for the reader to miss clues through careless reading or misunderstanding. So, as with Bronze and several of Aaron Reed's games, we bracket objects in descriptions and provide a facility to mark the names of implemented items in bold.]

Boldening is a truth state that varies. Boldening is false.

Before printing the name of a direction when boldening is true:
	say "[bold type]"

After printing the name of a direction when boldening is true:
	say "[roman type]"


Before printing the name of something which is not a quip when boldening is true:
	say "[bold type]"

After printing the name of something which is not a quip when boldening is true:
	say "[roman type]"

[This is a hack to get around a bug that I find wholly inexplicable and may be happening at the interpreter level, whereby "HIGHLIGHT" is assigned to the score notification action though it should not be, and appears correctly in the phrasebook.]
After reading a command (this is the replace highlight with hilight rule):
	if the player's command includes "highlight":
		replace the matched text with "hilight".

Understand "highlighting on" or "hilighting on" or "hilight on" as turning on highlighting. Turning on highlighting is an action out of world.

Understand "highlighting off" or "hilighting off" or "hilight off" as turning off highlighting. Turning off highlighting is an action out of world.

Understand "highlighting" or "hilighting" or "hilight" or "highlight" as turning on highlighting when boldening is false.

Understand "highlighting" or "hilighting" or "hilight" or "highlight" as turning off highlighting when boldening is true.

Carry out turning on highlighting:
	now boldening is true.

Carry out turning off highlighting:
	now boldening is false.

Report turning on highlighting:
	say "Highlighting of object names is now on."

Report turning off highlighting:
	say "Highlighting of object names is now off."

[And suppose we want this to be functional for just a single turn and then turn off again:]

Understand "look carefully" or "look closely" as bold looking. Bold looking is an action applying to nothing.

Carry out bold looking:
	let already-bold-flag be false;
	if boldening is true:
		let already-bold-flag be true;
	now boldening is true;
	try looking;
	unless already-bold-flag is true:
		now boldening is false.



Part 3 - Status

Section 1 - The Status Line

To fill the/-- status bar/line with (selected table - Table of Fancy Status):
	repeat through selected table:
		move cursor to 1;
		say "[left entry]";
		right align cursor to 1;
		say "[right entry]";

When play begins (this is the set status line alignment depth rule):
	now right alignment depth is 20.

Table of Fancy Status
left	central	right
" [location], [current daytime]"	""	"Goals: [count of pending tasks]  Score: [score]"

Rule for constructing the status line:
	fill status bar with Table of Fancy Status;
	rule succeeds.

Section 2 - Score

[Score is pretty old-school here: it marks progress towards the end game and provides the player with a review of significant achievements so far, as well as encouraging the player that he did the right thing at certain junctures.

Optional accomplishments are not included -- those are reserved for the achievement system -- so there are no Last Lousy Points. A player who gets to the end of the game should have the full hundred.]

The new notify score changes rule is listed instead of the notify score changes rule in the turn sequence rulebook.

This is the new notify score changes rule:
	if the score is not the last notified score:
		say "[first custom style]";
		let diff be the score minus the last notified score;
		if diff is less than 0:
			let diff be 0 minus diff;
			say "[bracket]Your score has gone down by [diff in words] point[s][if score is greater than diff] and is now [score in words][end if].[close bracket]";
		otherwise:
			say "[bracket]Your score has gone up by [diff in words] point[s][if score is greater than diff] and is now [score in words][end if].[close bracket]";
		say "[roman type][paragraph break]";
		now the last notified score is the score;


Table of Tasks Achieved
Points (a number)	Citation (some text)	Time (a time)
1	"using the letter-remover"
1	"using the gel"
1	"using the spinner"
1	"using the Origin Paste"
1	"using the synthesizer"
1	"getting a product of the homonym paddle"
1	"using the T-inserter"
1	"using the anagramming gun"
1	"using the umlaut punch"
1	"using the vowel rotator"
2	"returning a library book to its proper home"
3	"passing through the temporary barrier"
3	"winning the gel"
3	"opening the locker"
3	"retrieving the backpack"
3	"fueling our car"
3	"repairing our car"
3	"winning a barroom bet"
3	"arranging contact with Slango through his lady friend"
3	"visiting the dead drop"
3	"reading a legend"
3	"lifting abstraction limits on the letter-remover"
3	"lifting animate limits on the letter-remover"
3	"gaining access to the synthesizer"
3	"acquiring a keycard"
3	"breaking the Spirit of Atlantis (in cardboard form)"
3	"profiling the T-inserter"
5	"traveling by car"
5	"meeting Slango"
5	"passing the secretarial test"
10	"acquiring a sought-after invitation"
15	"returning to the yacht"

To record (T - text) as achieved:
    choose row with a citation of T in the Table of Tasks Achieved;
    if there is no time entry begin;
        now time entry is the time of day;
		increase score by points entry;
	end if.

The announce the score rule is not listed in any rulebook.

Carry out requesting the score:
	if the score is 0:
		say "So far you are without points.";
	otherwise:
		say "You have earned [score] point[s]:";
		repeat through the Table of Tasks Achieved in time order:
			say "[line break]  [points entry] point[s] for [citation entry]";
		say paragraph break.


Report requesting the score:
	if the number of entries in the list of remaining letters is 26:
		say "You have not yet removed any letters from anything.";
	otherwise if the number of entries in the list of remaining letters is 0:
		say "You have at some time removed every letter from something.";
	otherwise:
		say "You have not yet removed [disjoint list of remaining letters] from anything.";
	follow the list achievements rule.

To say disjoint (L - a list of texts):
	let N be the number of entries in L;
	repeat with I running from 1 to N:
		say entry I in L;
		if I is N - 1:
			say ", or ";
		otherwise unless I is N:
			say ", ".

Table of Rankings
Score (a number)	Rank (a text)
0	"Graduate Student"
10	"Escapee"
20	"Petty Criminal"
30	"Smuggler"
40	"Industrial Spy"
50	"Corporate Espionage Expert"
60	"Subversive Element"
75	"Enemy of the State"
100	"Successful Revolutionary"


Section 3 - Assigning and completing tasks

Table of Tasks Pending
Citation (text)
"Get out of these back streets"
with 40 blank rows.

Table of Tasks Complete
Citation (text)
with 40 blank rows.

To assign (job - text):
	unless job is under way or job is completed:
		if the number of blank rows in the Table of Tasks Pending is greater than 0:
			choose a blank row in the Table of Tasks Pending;
			now (Citation entry) is job.

To decide whether (job - text) is under way:
	if there is a citation of job in the Table of Tasks Pending:
		yes.

To decide whether (job - text) is completed:
	if there is a citation of job in the Table of Tasks Complete:
		yes.

To complete (job - text):
	unless job is completed:
		if job is under way:
			choose row with Citation of job in the Table of Tasks Pending;
			blank out the whole row;
			mark job done;
		otherwise:
			assign job;
			complete job.

To mark (job - text) done:
	if the number of blank rows in the Table of Tasks Complete is greater than 0:
		choose a blank row in the Table of Tasks Complete;
		now (citation entry) is job.

Understand the command "think" as something new. Understand "think" or "plan" or "plans" or "journal" or "missions" or "goals" or "goal" as planning. Planning is an action out of world.

Check planning:
	if the Table of Tasks Pending is empty:
		say "[We] [are] out of goals." instead;

Carry out planning:
	say "Here's what [we] think [we] need to do: ";
	repeat through the Table of Tasks Pending:
		say "[line break]  [citation entry]";
	say "[line break]".

Report planning for the second time:
	if tutorial mode is true:
		say "[first custom style][bracket]Remember that you can move towards your goal locations with GO TO...[close bracket][roman type][paragraph break]";

To decide what number is the count of pending tasks:
	let N be the number of filled rows in the Table of Tasks Pending;
	decide on N.

Check going to Fair when the barrier is unlocked and "Get out of these back streets" is under way:
	complete "Get out of these back streets";
	assign "Get my backpack from the cinema";
	assign "Retrieve your remaining possessions from locker at hostel";
	assign "Meet your colleague Slango at Counterfeit Monkey".

After going to Fair when the barrier is unlocked and we have not planned:
	say "I'm glad to see you're feeling ready to face the wider world. [run paragraph on]";
	try planning;
	if tutorial mode is true:
		say "[first custom style][bracket]To go over our current goals, type GOALS at any time.[close bracket][roman type][paragraph break]";
	continue the action.

Section 4 - Achievements

[Achievement file handling is adapted from the Recorded Endings extension used in Alabaster.]

The File of Conclusions is called "monkeyac".

When play begins (this is the load conclusions when starting rule):
	read the achievements;
	if "Atlantida award for accomplishing every achievement in the game" is a used achievement:
		choose row with final response rule of list remaining achievements rule in Table of Final Question Options;
		blank out the whole row.

[The rule below will never run on a successful restore]

[Last carry out restoring the game rule (this is the load conclusions when restoring rule):
	read the achievements.]

To read the achievements:
	if the File of Conclusions exists:
		read File of Conclusions into the Table of Possible Achievements.

To record (slug - some text) as an achievement:
	record slug as an achievement with conditional break false.

To record (slug - some text) as an achievement with break before:
	record slug as an achievement with conditional break true.

To record (slug - some text) as an achievement with conditional break (breakflag - a truth state):
	read the achievements;
	unless slug is a used achievement:
		choose a blank row in the Table of Possible Achievements;
		now the achievement entry is slug;
		say "[if breakflag is true][line break][end if][first custom style]Achievement accomplished: [slug]![roman type][paragraph break]";
		write File of Conclusions from the Table of Possible Achievements;
		if the number of filled rows in Table of Possible Achievements is number-of-achievements:
			now slug is "Atlantida award for accomplishing every achievement in the game";
			unless slug is a used achievement:
				record slug as an achievement;
				if there is final response rule of list remaining achievements rule in Table of Final Question Options:
					choose row with final response rule of list remaining achievements rule in Table of Final Question Options;
					blank out the whole row.

Number-of-achievements is a number that varies. Number-of-achievements is 18.

Table of Possible Achievements
achievement (some text)
with 40 blank rows.

Table of All Achievements
achievement (some text)	done (a truth state)
"Admiral Thoureaux award for removing every letter of the alphabet in one playthrough"	true
"Alex Rosehip award for completing the game in easy mode"	true
"Amanda Waterstone award for discovering cultic passages"	true
"Andra award for completing the game in hard mode"	true
"Camilla Downdweller award for creating five types of fish in one playthrough"	true
"Finished tutorial mode”	true
”Finn Rosehip award for gnu-hunting"	true
"Horace Fingerstain award for jotting some notes"	true
"Igor Rosehip award for creating at least five body parts in one playthrough"	true
"Jocasta Higgate award for reconstructing pagan worship on the island"	true
"Lester Parsons award for discovering unspecified local rites"	true
"Lord Michael Rosehip award for showing the black spot to a pirate crew"	true
"Lucius Quagmire award for viewing unusual films"	true
"Mort Shaply award for showing Poe a raven-based foodstuff"	true
"Priscilla Parsons award for winning the game without ever entering the church"	true
"Propper Rosehip award for talespinning"	true
"Reverend Plaice award for placing the cross on the altar while liturgically dressed"	true
"Roman 'Sticky' Fingerstain award for impromptu art theft"	true

Table of Final Question Options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"review your final SCORE"	false	"review/score"	list score rule	--
"reveal what ACHIEVEMENTS you have yet to accomplish"	false	"reveal/achievements"	list remaining achievements rule	--
"learn about some of the SOURCES used in creating this game"	true	"sources/source/learn"	list sources rule	--

This is the list score rule:
	try requesting the score.

This is the list achievements rule:
	read the achievements;
	unless the number of filled rows in the Table of Possible Achievements is 0:
		let atlantida-achievement be "Atlantida award for accomplishing every achievement in the game";
		sort the table of Possible Achievements in achievement order;
		say "The achievements you have accomplished so far include: [paragraph break]";
		repeat through the Table of Possible Achievements:
			unless achievement entry is atlantida-achievement:
				say "  [achievement entry][line break]";
		if atlantida-achievement is a used achievement:
			say "  [atlantida-achievement][line break]".


To decide whether (chosen ending - text) is a used achievement:
	let N be chosen ending;
	repeat through the Table of Possible Achievements:
		if N is achievement entry:
			yes;
	no.

This is the list remaining achievements rule:
	read the achievements;
	if the number of filled rows in Table of Possible Achievements is number-of-achievements + 1:
		say "Congratulations! You have every achievement in the game!";
	otherwise:
		repeat through the Table of All Achievements:
			unless achievement entry is a used achievement:
				now done entry is false;
		say "These achievements you have yet to accomplish:[paragraph break]";
		repeat through the Table of All Achievements:
			if done entry is false:
				say "  [achievement entry][line break]".

This is the list sources rule:
	say "I started working in earnest on this game in 2008. Since that time, the US has undergone two presidential elections; for months, the Occupy Seattle protests filled a city block just a short stroll from my apartment; and the successes and failures of the Arab Spring were constantly in the news. These experiences introduced more serious themes into what was initially a purely silly game.

Gene Sharp's [i]From Dictatorship to Democracy[/i] and the documentary [i]How to Start a Revolution[/i] helped me think about peaceful revolutions and the communication of dissent within totalitarian regimes.

The history of Atlantis['] colon[ization] mirrors that of nearby Gibraltar, on the theory that the same powers would have been likely to take an interest. Wikipedia supplied most of the potted history I used for this.

Arika Okrent's [i]In the Land of Invented Languages[/i] and Mark Rosenfelder's [i]Language Construction Kit[/i] (first a website, subsequently a book) taught me a lot about existing constructed languages and helped me imagine what might interest Atlantean academics.

[i]Poor Economics[/i] (Abhijit Banerjee, Esther Duflo) provided some general background about different attempts to address global poverty, contributing to the Atlantean concept of utopian linguistics (and why it hadn't yet saved the world).

The Scrabble dictionary and the internet anagram server, among others, helped me map out the puzzle space systematically.

Hundreds of other small details came out of YouTube or Wikipedia, from the composition of classic cocktails to the mating behavior of pigs. Background for specific elements may be found in the game's source text."


Section 5 - Inventory Options

Inventory listing style is a kind of value. The inventory listing styles are tall, wide, and utilitarian. Current inventory listing style is an inventory listing style that varies. Current inventory listing style is utilitarian.

Understand "inventory [inventory listing style]" as requesting styled inventory. Requesting styled inventory is an action applying to an inventory listing style, out of world.

Carry out requesting styled inventory:
	now current inventory listing style is the inventory listing style understood.

Report requesting styled inventory:
	say "Inventory listing is now set to [current inventory listing style]."

[We begin by emulating the standard inventory listing style:]

Instead of taking inventory when current inventory listing style is tall:
	if the player is empty, say "[We] [are] empty-handed." instead;
	say "[We] [are] carrying: [line break]";
	list the contents of the player, with newlines, indented, giving inventory information, including contents, with extra indentation.

Instead of taking inventory when the current inventory listing style is wide:
	if the player is empty, say "[We] [are] empty-handed." instead;
	say "[We] [are] wearing ";
	rapidly set all contents of the player not marked for listing;
	now all things worn by the player are marked for listing;
	if no things worn by the player are marked for listing, say "nothing special";
	otherwise list the contents of the player, as a sentence, listing marked items only;
	say ".[paragraph break]";
	say "[We] [are] carrying ";
	now all things carried by the player are marked for listing;
	now all things worn by the player are unmarked for listing;
	if no things carried by the player are marked for listing, say "nothing";
	otherwise list the contents of the player, as a sentence, tersely, giving brief inventory information, including contents, listing marked items only;
	say ".[paragraph break]".


Include Utilitarian Inventory by Counterfeit Monkey.


Part 4 - Extras

Section 1 - Footnotes

[Once there were footnotes, using Stephen Granade's Footnotes extension. But I took them out. Most of what I wanted to explain seemed much better placed as comments in the source, where it wouldn't spoil anything that wasn't being spoiled anyway.]

Section 2 - Hard Mode

[ Counterfeit Monkey is designed to be fairly accessible -- this is a primary design concern for the puzzles and user interface. The implication of that, though, is that the game is likely to be easier than some hard-core puzzle aficionadoes are likely to prefer; and, of course, there are a lot of possible solutions that are substantially more obscure than others, which players are unlikely to find unless forced.

So we also provide a hard mode, to offer a more focused puzzle experience for the people, one that will hopefully still be fun if the player chooses to revisit it after having already finished easy mode. To that end, there are a few mild jokes that riff on easy-mode gameplay, and a few puzzles are swapped entirely for something new and harder.]

Understand "hard" or "hard mode" or "expert" or "harder" or "difficult" or "expert mode" or "harder mode" or "difficult mode" as selecting hard mode. Selecting hard mode is an action out of world.

Check selecting hard mode when the Fair is visited:
	say "It is now too late in the game to change modes. If you wish, you may restart the game and choose HARD any time before reaching the Fair." instead.

Hardness is a truth state that varies.

Check selecting hard mode when the Fair is not visited:
	if hardness is true:
		say "Hard mode is already on." instead;
	say "Once you've selected hard mode, you can't go back: certain puzzles with multiple solutions will be made more difficult and some puzzles will be altered entirely. Are you sure? >>";
	unless the player consents:
		say "Hard mode selection canceled." instead.

[Implementing hard mode is largely a matter of deleting a number of the most obviously useful items from the game, forcing the player to look for alternative options that may be more difficult to find. In a couple of cases, we replace the useful item with something else as a bit of a tease. The list of things we take out of play:

FUNNEL (FUEL)
STICKY (STICK)
BANANA (BANDANA)
WRAP (RAP)
SCREWDRIVER
PEAR (PEARL etc.)
WHEEL
TOMES
TWIG
FOSSIL (OIL)
GUM

CLOCK (still included, but it gains the adjective BROKEN after its first gelling, and is not useful for the Waterstone puzzle, forcing the player to work with ASS or MEMBER instead.)

Hard mode also changes the functionality of the vowel rotator in the late game, replacing it with a somewhat more challenging encryptor.]

Carry out selecting hard mode:
	now hardness is true;
	now the the gum is nowhere;
	now the funnel is nowhere;
	now the funnel is not buried;
	now the printed name of the twig is "bent twig";
	now the printed name of the fossil is "twisty fossil";
	now the printed name of the tomes is "dusty tomes";
	now the printed name of the LSR chair is "red chair";
	reset hash code of the twig;
	reset hash code of the fossil;
	reset hash code of the tomes;
	reset hash code of the LSR chair;
	now the the sticky is nowhere;
	now the the banana is nowhere;
	move the pineapple to the large carton;
	now the the wrap is nowhere;
	now the the screwdriver is nowhere;
	now the the screwdrivers are nowhere;
	move the prickly-pear to the holder of the pear;
	now the the pear is nowhere;
	now the the wheel is nowhere;
	now the description of the LSR chair is "It is an ordinary inexpensive variety of chair, made locally and found around the island in great numbers. This one has been painted red.";
	now the introduction of the clock is "It's stopped working sometime in the recent past, possibly thanks to its fall when we gelled it.";
	[follow the initialize hash codes rule;]
	now tutorial mode is false;

Report selecting hard mode:
	say "[story title] is now in 'hard' mode. Tutorials are off. The world is reconfigured against you. Good luck."

[TODO fix tests]
Table of Ultratests (continued)
topic	stuff
"hardnames"	{ twig, clock, tomes, members, army }

Test hardnames with "tutorial off / hard / y / drop all / look / look carefully / x bent twig / x broken clock / wave t-remover at twig / wave l-remover at clock / wave m-remover at tomes / wave s-remover at members / wave y-remover at army" [holding the twig and the clock and the tomes and the members and the army.]

Test hard2 with "tutorial off / hard / y / autoupgrade / wave p-remover at patron / wave m-remover at patron / z / wave m-remover at patron" in the drinks club.

Understand "model" as the members when hardness is true.
Understand "model" as the army when hardness is true.

Understand "bent" as the twig when hardness is true.
Understand "dusty" as the tomes when hardness is true.
Understand "twisty" as the fossil when hardness is true.
Understand "red" as the LSR chair when hardness is true.

Before printing the name of the clock when hardness is true and printed name of the clock is not "broken clock":
	if the clock is in the repository:
		make no decision;
	otherwise:
		now the printed name of the clock is "broken clock";
		reset hash code of the clock;

Understand "broken" as the clock when hardness is true.

[We can't actually go back to easy mode once we're in hard mode, but we should react to the player's attempts to do so.]

Understand "easy" or "easy mode" or "mode" as selecting easy mode. Selecting easy mode is an action out of world.

Check selecting easy mode:
	if hardness is false:
		say "Easy mode is the default mode for [story title], and is already active." instead;
	otherwise:
		say "Once hard mode is selected, it cannot be turned off. Please restart if you would prefer to play the game in easy mode." instead.

Section 3 - About Menu

Include Basic Help Menu by Emily Short.

When play begins (this is the adjust the basic help options rule):
	choose row 1 in Table of Basic Help Options;
	now description entry is "[story title] is a puzzle game about word manipulation, with moderate plot complexity. It will probably take a seasoned IF player at least eight hours to complete.

This game is fairly gentle: it should not be possible to get stuck or make the game unexpectedly unwinnable; if an object you thought was useful goes away, odds are that you can live without it or that you'll have an opportunity to get it back.

There are a handful of timed situations in the story. When these occur, you will probably be well aware of the fact. If you feel threatened, save the game."

	Table of Basic Help Options (continued)
	title	subtable	description
	"Commands specific to this game"	--	"[story title] mostly uses commands standard in interactive fiction, so someone familiar with these should be at ease. The chief exceptions have to do with navigation and communicating with other characters.

INVENTORY TALL, INVENTORY WIDE and INVENTORY UTILITARIAN change the way inventory listing is presented. By default, the inventory list is set to utilitarian, presenting your possessions in two groups (tools and other things), and alphabetizing the output.

In a location, LOOK CAREFULLY will print the room description with object names in bold. If you would like to experience the whole game this way, try HIGHLIGHTING ON.

If your interpreter supports graphics, MAP OFF will hide the map window and MAP ON will show it again. Just typing MAP will temporarily show a larger map.

GO TO a location will take us to the place named, even if that's some distance away.

EXITS will list the currently available exits as text. You should also be able to see these in the compass rose of the graphical window, assuming you are using one.

Sometimes you will recollect things. MEMORIES will list currently available memories, and REMEMBER will play the results.

TALK TO GIRL or GIRL, HELLO will start a conversation with a person who isn't already talking to us.

ASK ABOUT or TELL ABOUT let us talk about subjects that interest us, once the conversation has started. ASK GIRL ABOUT CHECKERS or TELL GIRL ABOUT ME will work, as will the more abbreviated forms ASK ABOUT CHECKERS, TELL ABOUT ME, or even just A CHECKERS and T ME.

There will sometimes be prompts, like 'You could ask about whether margarine is better than butter.', in which case ASK WHETHER MARGARINE IS BETTER THAN BUTTER will work, but so will a shorter subset like ASK ABOUT BUTTER, as long as it uniquely identifies the question you want to ask. The topics listed during a conversation are not the complete list of available things to say, just the list of things that seem most relevant at the moment.

The TOPICS command will repeat the current topics of conversation and suggest new ones.

If you'd like to play in hard mode, with some alternate puzzle solutions removed and other puzzles changed entirely, type HARD during the first few rooms of the game. After that point, it is too late to qualify for hard mode, and you'll need to restart if you wish to activate it."
	"Testing Credits"	--	"I had a great team of testers to work over the gameplay: Sam Kabo Ashwell, Richard Evans, John Ferguson, Admiral Jota, Jacqueline A. Lott, Kate McKee, Jim Munroe, Mark Musante, Chris Nelson, Graham Nelson, Peter Nelson, Toby Nelson, Zach Samuels, and David Welbourn. As well as catching many errors, the team suggested additional responses and easter eggs, provided valuable help with puzzle design and story development, and offered moral support.

I am indebted to the following players for suggestions and bug reports that affected subsequent releases: Draconis, dydt, Guy, Joe, Josh, Matthias, Malor, Weeble, Bruce Addison, Lea Albaugh, Sam Barlow, Sasha Beker, Josiah Boning, Taus Brock-Nannestad, Matthew Carson, Liza Daly, Justin de Vesine, Jason Dyer, Dan Fabulich, Jeremy Freese, Stephen Granade, Admiral Jota, Jacqueline A. Lott, Chris Martens, Jason McIntosh, Megazver, Adam Milecki, Carl Muckenhoupt, Jim Munroe, William O'Neill, Greg Pallis, Karl Parakenings, Q. Pheevr, Sam Piip, Dan Q, Matthew Rees, Sean M. Shore, David Simon, Lucian P. Smith, Michael Sokolov, David Steltzer, Adam Thornton, Matt Weiner, David Welbourn, Matthias Wenigweiser.

Any remaining flaws are my fault alone."
	"Other Credits"	--	"Counterfeit Monkey uses Inform extensions by Graham Nelson, David Fisher, Aaron Reed, Jim Aikin, Gavin Lambert, Jon Ingold, and Jeff Sheets. To read a complete list of these extensions and their version information, type VERSION at the command line.

A number of other IF community members helped me trouble-shoot specific issues. Jason Dyer worked over one specific easter egg for me. Andrew Hunter and Andrew Plotkin diagnosed a problem running the game under Git. Dannii Willis and Ben Cressey helped with figuring out why UNDO wasn't working on Gargoyle. Graham Nelson provided a hashing solution that made object name comparisons run a great deal faster as the number of objects in the game climbed over 1500. Their assistance is much appreciated.

The in-game maps use a variety of readily available fonts. Some of the more esoteric of these came from the HP Lovecraft Historical Society Font Pack.

My sister created the Atlantida poster.

There are three cameo appearances by IF community members (or their alter egos). These people bid for the opportunity to appear, as part of a fundraiser for a heart surgery patient who was without medical insurance. They are Mark Musante, John Ferguson, and Kate McKee, and I wish to thank them again for their generosity."
	"Contacting the author"	--	"Emily Short can be reached at emshortif@gmail.com. Her website, at http://emshort.wordpress.com, contains more information about this and other interactive fiction.

Please report bugs at https://github.com/i7/counterfeit-monkey/issues"

This is the link-free map drawing rule:
	redraw the map and compass.

Carry out asking for help (this is the new help request rule):
	now the current menu is the Table of Basic Help Options;
	[We disable the compass links while displaying the help menu.]
	now the current graphics drawing rule is the link-free map drawing rule;
	clear compass graphlinks;
	carry out the displaying activity;
	clear the screen;
	[We must explicitly update the status line after closing the help menu, otherwise the graphics window will think it still is two lines shorter than it is, resulting in a black area below the map on Glk spec compliant interpreters.]
	update the status line;
	now the current graphics drawing rule is the compass-drawing rule;
	follow the compass-drawing rule;
	try looking.

The new help request rule is listed instead of the help request rule in the carry out asking for help rulebook.

The constructing status line while displaying rule is not listed in any rulebook.

Rule for constructing the status line while displaying (this is the new constructing status line while displaying rule):
	if the endnode flag is 0,
		fill status bar with Table of Deep Menu Status;
	otherwise fill status bar with Table of Shallow Menu Status;
	[We must redraw the map every time the status bar changes height, otherwise the bottom will get cut off on Glk spec compliant interpreters.]
	adjust width of the graphics window;
	redraw the map and compass;
	rule succeeds.

Section 4 - Resurrection

[In versions 1-4 of the game, it was possible to die instantly in assorted ways. On an interpreter with working UNDO, it was possible to take this turn back, but a) some novice players may not realize this and b) some interpreters choked on trying to undo things given how very large the game state is.]

To undo a turn:
	(- Perform_Undo(); -).

When play ends when the story has not ended finally:
	custom-wait for any key;
	say "That is, that's what would have happened if [we] had done something so foolish. Shall we suppose [we] didn't? >> ";
	if the player consents:
		if the turn count is greater than 1:
			say "[line break]";
			cheat death;
		otherwise:
			resume the story;
		try looking.

To cheat death:
	if the location is Personal Apartment and Atlantida-woman is in location and the restoration-gel rifle is not in location and the restoration-gel rifle is not carried by the player:
		unless the File of Automated Tests exists or the File of Tests exists:
			follow the attempt to load Atlantida fight savefile rule;
	undo a turn;

The attempt to load Atlantida fight savefile rule translates into I6 as "Atlantida_Fight_Attempt_Load".

The attempt to create Atlantida fight savefile rule translates into I6 as "Atlantida_Fight_Attempt_Save".


Include (-

Array atlantida_autosave_checksum -> 50;
Array comparison_checksum -> 50;

-) after "Definitions.i6t".

Include (-

[ Atlantida_Fight_Attempt_Load fref res i match;
	match = true;
	fref = glk_fileref_create_by_name( fileusage_SavedGame, Glulx_ChangeAnyToCString("CM-Atlantida-fight-autosave"), GG_SAVESTR_ROCK );
	if ( fref )
	{
		if ( glk_fileref_does_file_exist( fref ) )
		{
			gg_savestr = glk_stream_open_file( fref, filemode_Read, GG_SAVESTR_ROCK );
		}
		glk_fileref_destroy( fref );
	}

	! Try to restore from Atlantida fight autosave file
	if ( gg_savestr )
	{
		! Check if this file is the same as the one we saved earlier this session
		glk_get_buffer_stream(gg_savestr, comparison_checksum, 50);

		for ( i = 0 : i < 50 : i++ )
		{
			if (atlantida_autosave_checksum->i ~= comparison_checksum->i)
			{
				match = false;
				break;
			}
		}
		if (match)
		{
			glk_stream_set_position(gg_savestr, 0, seekmode_Start);
			@restore gg_savestr res;
		}
		glk_stream_close( gg_savestr, 0 );
		gg_savestr = 0;
	}
	rfalse;
];

[ Atlantida_Fight_Attempt_Save fref res i;
	! Save to an external file
	fref = glk_fileref_create_by_name( fileusage_SavedGame, Glulx_ChangeAnyToCString("CM-Atlantida-fight-autosave"), GG_SAVESTR_ROCK );
	if ( fref )
	{
		gg_savestr = glk_stream_open_file( fref, filemode_ReadWrite, GG_SAVESTR_ROCK );
		glk_fileref_destroy( fref );
		if ( gg_savestr )
		{
			@save gg_savestr res;

			if ( res == -1 )
			{
				! We successfully loaded the atlantida fight autosave file
				GGRecoverObjects();
				print "[Restarted scene.]^^";
			}
			else
			{
				! Rewind stream and read first 50 bytes into a checksum array
				! which, if we save manually during this scene, will be
				! included in the save file. This will be compared against
				! the autosave file if we die and attempt to autorestore later.
				! In this way, we prevent loading an autosave from a different
				! playthrough.
				glk_stream_set_position(gg_savestr, 0, seekmode_Start);
				glk_get_buffer_stream(gg_savestr, atlantida_autosave_checksum, 50);
			}
			glk_stream_close( gg_savestr, 0 );
			gg_savestr = 0;
		}
	}
	rfalse;
];

-).

Section 5 - Post-restore routine

[Hack to make some code always run after restoring a game, to make adjustments in case the save file was made on an interpreter with different capabilities or by someone with different achievements.]

restore the game rule response (B) is "[post-restore routine]";

To say post-restore routine:
	say "Ok. ";
	read the achievements;
	if glulx line input echo suppression is supported:
		suppress line input echo in the main window;
	unless graphics is disabled:
		if glulx graphics is supported:
			now current graphics drawing rule is the compass-drawing rule;
			unless the measuring window is g-present:
				open the measuring window;
			unless the graphics window is g-present:
				open the graphics window;
			start looking for graphlinks;
	otherwise:
		if the graphics window is g-present:
			close the graphics window.

[The last line above will close the graphics window if we have switched off graphics but restore a game made with graphics on. Some interpreters, such as Spatterlight and Zoom, will still show the graphics window for a split-second on restore.]

Presentation Details ends here.
