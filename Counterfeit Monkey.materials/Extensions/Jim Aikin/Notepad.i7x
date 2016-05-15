Version 3 of Notepad by Jim Aikin begins here.

"A system for creating an in-game notepad that the player can write on."

Section 1 - Definitions


A notepad is a kind of thing. A notepad has a text called memo. The memo of a notepad is usually "". A notepad has a list of objects called allowed-pens. The allowed-pens of a notepad is usually {}. A notepad has a truth state called pen-needed. The pen-needed of a notepad is usually true. A notepad can be edit-allowing or non-edit-allowing. A notepad is usually edit-allowing.

Termination type is a kind of value. The termination types are terminated and unterminated.

To decide which termination type is the terminor of (T - text):
	let N be the number of characters in T;
	let C be text;
	let C be character number N in T;
	if C is ".":
		decide on terminated;
	otherwise if C is "?":
		decide on terminated;
	otherwise if C is "!":
		decide on terminated;
	decide on unterminated.
	
Section 2 - Reading

To protest (he protests, they protest, he protested, it is protested, he is protesting) is a verb.
To report (he reports, they report, he reported, it is reported, he is reporting) is a verb.
To read (he reads, they read, he read, it is read, he is reading) is a verb.

Understand the command "read" as something new.

Reading is an action applying to one visible thing and requiring light. Understand "read [something]" as reading.

Check an actor reading (this is the ordinary check reading rule):
	if the actor is the player:
		if the noun is not a notepad:
			try examining the noun instead;
		otherwise if the memo of the noun is "":
			say "At [that] moment, [the noun] [are] blank." (A) instead;
	otherwise:
		if the noun is not a notepad:
			say "[The actor] [are] unable to do that." (B);
			rule succeeds;
		otherwise if the memo of the noun is "":
			say "'But [the noun] [are] blank,' [the actor] [protest]." (C);
			rule succeeds.

Carry out an actor reading (this is the ordinary carry out reading rule):
	if the actor is the player:
		if the memo of the noun is not "":
			let term be the terminor of the memo of the noun;
			say "On [the noun] [are] written [run paragraph on]" (A);
			if term is terminated:
				say "'[memo of the noun]'[paragraph break]" (B);
			otherwise:
				say "'[memo of the noun].'" (C);
		otherwise:
			say "Nothing [are] written on [the noun]." (D);
	otherwise:
		if the memo of the noun is not "":
			say "'On [the noun] [are] written ['][memo of the noun]['],' [the actor] [report]." (E);
		otherwise:
			say "'Nothing [regarding nothing][are] written on [the noun],' [the actor] [report]." (F).

After examining a notepad (called N) (this is the notepad output rule):
	if the memo of N is not "":
		let term be the terminor of the memo of N;
		say "On [the N] [are] written [run paragraph on]" (A);
		if term is terminated:
			say "'[memo of N]'[paragraph break]" (B);
		otherwise:
			say "'[memo of N].'" (C).

Section 3 - Writing It On

To write (he writes, they write, he wrote, it is written, he is writing) is a verb.

Writing it on is an action applying to one topic and one thing and requiring light. Understand "write [text] on [something]", "scribble [text] on [something]", "scribble [text] in [something]", "write [text] in [something]", "jot [text] in [something]", and "jot [text] on [something]" as writing it on.

Check an actor writing on something (this is the ordinary check writing it on rule):
	let carrying-pen be a truth state;
	let carrying-pen be false;
	if the actor is the player:
		if the second noun is not a notepad:
			say "[The actor] [can't write] anything on [the second noun]." (A) instead;
		otherwise if the second noun is non-edit-allowing:
			say "[The second noun] [are] [currently]write-protected, and [can't] be written on." (B) instead;
		if the pen-needed of the second noun is true:
			repeat with P running through the allowed-pens of the second noun:
				if the player carries P:
					now carrying-pen is true;
		otherwise:
			now carrying-pen is true;
		if carrying-pen is false:
			say "[The actor] [have] nothing to write with." (C) instead;
	otherwise:
		if the second noun is not a notepad:
			say "[The actor] [are] unable to write anything on [the second noun]." (D);
			rule succeeds;
		otherwise if the second noun is non-edit-allowing:
			say "[The second noun] [are] [currently]write-protected, and [can't] be written on." (E);
			rule succeeds;
		if the pen-needed of the second noun is true:
			repeat with P running through the allowed-pens of the second noun:
				if the actor carries P:
					now carrying-pen is true;
		otherwise:
			now carrying-pen is true;
		if carrying-pen is false:
			say "[The actor] [have] nothing to write with." (F);
			rule succeeds.	
	
Carry out an actor writing on something (this is the ordinary carry out writing it on rule):
	let T be text;
	let T be the topic understood;
	now the memo of the second noun is T;
	say "[The actor] [write] '[T]' on [the second noun]." (A).

Section 4 - Adding It To

Adding it to is an action applying to one topic and one thing and requiring light. Understand "add [text] to [something]" and "append [text] to [something]" as adding it to.

To add (he adds, they add, he added, it is added, he is adding) is a verb.

Check an actor adding to something (this is the ordinary check adding it to rule):
	let carrying-pen be a truth state;
	let carrying-pen be false;
	if the second noun is not a notepad:
		say "[The actor] [can't] write anything on [the second noun]." (A);
		rule succeeds;
	otherwise if the second noun is non-edit-allowing:
		say "[The second noun] [are] [currently]write-protected, and [can't] be written on." (B);
		rule succeeds;
	if the pen-needed of the second noun is true:
		now carrying-pen is false;
		repeat with P running through the allowed-pens of the second noun:
			if the actor carries P:
				now carrying-pen is true;
	otherwise:
		now carrying-pen is true;
	if carrying-pen is false:
		say "[The actor] [have] nothing to write with." (C);
		rule succeeds.
		
To say now:
	if the story tense is past tense:
		say "then";
	else:
		say "now".
		
To say that:
	if the story tense is present tense:
		say "the";
	else:
		say "that".

[Note: There is a trailing space in "currently ", and after [currently] in text output, there is NO space.]

To say currently:
	if the story tense is past tense:
		say "";
	else:
		say "currently ".

Carry out an actor adding to something (this is the ordinary carry out adding it to rule):
	let T be text;
	let T be the topic understood;
	let C be text;
	let C be the memo of the second noun;
	now the memo of the second noun is "[C] [T]";
	say "[The actor] [add] [run paragraph on]" (A);
	say "to the text on [the second noun]. The text [regarding nothing][are] [now] [run paragraph on]" (B);
	let term be the terminor of the memo of the second noun;
	if term is terminated:
		say "'[memo of the second noun]'[paragraph break]" (C);
	otherwise:
		say "'[memo of the second noun].'" (D).

Section 5 - Copying It To

To copy (he copies, they copy, he copied, it is copied, he is copying) is a verb.

Copying it to is an action applying to two things and requiring light. Understand "copy [something] on [something]", "copy [something] to [something]", "copy [something] onto [something]", and "duplicate [something] on [something]" as copying it to.

Check an actor copying something to something (this is the ordinary check copying it to rule):
	let carrying-pen be a truth state;
	let carrying-pen be false;
	if the noun is not a notepad:
		say "No text [can] be copied from [the noun]." (A) instead;
	otherwise if the second noun is not a notepad:
		say "[The actor] [run paragraph on]" (B);
		say "[can't] copy text onto [the second noun]!" (C);
		rule succeeds;
	otherwise if the noun is the second noun:
		say "[The actor] [run paragraph on]" (D);
		say "[can't] copy something to itself." (E);
		rule succeeds;
	otherwise if the second noun is non-edit-allowing:
		say "[The second noun] [are] [currently]write-protected, and [can't] be written on." (F);
		rule succeeds;
	otherwise if the memo of the noun is "":
		say "At [that] moment, nothing [are] written on [the noun]." (G) instead;
	if the pen-needed of the second noun is true:
		now carrying-pen is false;
		repeat with P running through the allowed-pens of the second noun:
			if the player carries P:
				now carrying-pen is true;
	otherwise:
		now carrying-pen is true;
	if carrying-pen is false:
		say "[The actor] [have] nothing to write on [the second noun] with." (H);
		rule succeeds.
		
Carry out an actor copying something to something (this is the ordinary carry out copying it to rule):
	let T be text;
	let T be the memo of the noun;
	now the memo of the second noun is T;
	say "[The actor] [copy] the contents of [the noun] to [the second noun], so that [the second noun] [now] [regarding nothing][read] [run paragraph on]" (A);
	let term be the terminor of the memo of the second noun;
	if term is terminated:
		say "'[memo of the second noun]'[paragraph break]" (B);
	otherwise:
		say "'[memo of the second noun].'" (C).

Section 6 - Erasing

To erase (he erases, they erase, he erased, it is erased, he is erasing) is a verb.

Erasing is an action applying to one thing and requiring light. Understand "erase [something]" as erasing.

Check an actor erasing (this is the ordinary check erasing rule):
	if the noun is not a notepad:
		say "There [regarding nothing][are] nothing on [the noun] to erase." (A);
		rule succeeds;
	otherwise if the memo of the noun is "":
		say "At [that] moment, nothing [regarding nothing][are] written on [the noun]." (B);
		rule succeeds;
	otherwise if the noun is non-edit-allowing:
		say "[The noun] [are] [currently]write-protected, and [can't] be written on." (C);
		rule succeeds.

Carry out an actor erasing (this is the ordinary carry out erasing rule):
	now the memo of the noun is "";
	say "[The actor] [erase] what was written on [the noun], leaving [them] blank." (A).

Section 7 - Erasing It From

To leave (he leaves, they leave, he left, it is left, he is leaving) is a verb.

To seem (he seems, they seem, he seemed, it is seemingly, he is seeming) is a verb.

Erasing it from is an action applying to one topic and one thing and requiring light. Understand "erase [text] from [something]" and "delete [text] from [something]" as erasing it from.

Check an actor erasing from something (this is the ordinary check erasing it from rule):
	if the second noun is not a notepad:
		say "[The actor] [can't] erase anything from [the second noun]." (A);
		rule succeeds;
	otherwise if the memo of the second noun is "":
		say "Nothing [regarding nothing][are] written on [the second noun], so nothing [can] be erased." (B);
		rule succeeds;
	otherwise if the second noun is non-edit-allowing:
		say "[The second noun] [are] [currently]write-protected, and [can't] be written on." (C);
		rule succeeds.

Carry out an actor erasing from something (this is the ordinary carry out erasing it from rule):
	let T be text;
	let T be the topic understood;
	let C be text;
	let C be the memo of the second noun;
	if C matches the text T, case insensitively:
		replace the text T in C with "", case insensitively;
		[this next line gets rid of extra spaces when words are deleted:]
		replace the text "\s{2,}" in C with " ";
		[we'll also get rid of a first or trailing space:]
		let char be text;
		let char be character number 1 in C;
		if char is " ":
			replace character number 1 in C with "";
		let N be the number of characters in C;
		let char be character number N in C;
		if char is " ":
			replace character number N in C with "";
		now the memo of the second noun is C;
		say "The erasure [leave] [the second noun] reading [run paragraph on]" (A);
		let term be the terminor of the memo of the second noun;
		if term is terminated:
			say "'[memo of the second noun]'[paragraph break]" (B);
		otherwise:
			say "'[memo of the second noun].'" (C);
	otherwise:
		if the actor is the player:
			say "The text '[T]' [seem] not to be written anywhere on [the second noun]." (D);
		otherwise:
			say "'The text ['][T]['] [seem] not to be written anywhere on [the second noun],' [the actor] [report]." (E).

Section 8 - Protecting and Unprotecting

Protecting is an action out of world applying to one thing. Understand "protect [something]" as protecting.

Check protecting (this is the standard check protecting rule):
	if the noun is not a notepad:
		say "That action can't be used with [the noun]." (A) instead;
	otherwise if the noun is non-edit-allowing:
		say "[The noun] is already write-protected." (B) instead.

Carry out protecting:
	now the noun is non-edit-allowing. 

Report protecting (this is the standard report protecting rule):
	say "You have write-protected the text on [the noun]." (A).

Unprotecting is an action out of world applying to one thing. Understand "unprotect [something]" as unprotecting.

Check unprotecting (this is the standard check unprotecting rule):
	if the noun is not a notepad:
		say "That action can't be used with [the noun]." (A) instead;
	otherwise if the noun is edit-allowing:
		say "[The noun] [are] not [currently]write-protected." (B) instead.

Carry out unprotecting:
	now the noun is edit-allowing.

Report unprotecting (this is the standard report unprotecting rule):
	say "[The noun] [are] no longer write-protected." (A).

Notepad ends here.

---- DOCUMENTATION ----

Section: What it does.

Notepad allows the author to create one or more things called notepads. The player can write text on a notepad, read the text, erase the text, add to the text, erase specific strings of characters from the text, and copy the text from one notepad to another. Text on a notepad can be write-protected. Other characters can also use notepads, if ordered to do so by the player.

By default, a writing implement is needed to write on a notepad (but not to erase what's on it -- if you want to implement an eraser object, you'lll need to customize the extension). The writer must be carrying the writing implement.

Version 3 is updated to work with Inform 6L38. The Check rules in Sections 4 and 5 have been edited to reflect Inform's more strict handling of the declaration of temporary variables, the now deprecated syntax "change X to Y" has been removed, and references to indexed text have been dropped. Adaptive text has been implemented so as to allow the use of third-person and past tense narrative.

Section: Using Notepad.

To use Notepad, first create a writing implement and a notepad. The writing implement is not a special kind of thing; anything can be a writing implement (for instance, a fountain pen, which might be implemented as a container that needs to be loaded with ink). Add the writing implement to the list of allowed-pens of the notepad:

	The player carries a piece of chalk. The player carries a slate. The slate is a notepad. The allowed-pens of the slate is {chalk}.

Any number of writing implements can be included in the allowed-pens list for a notepad. If you'd rather let the player write on the notepad without bothering with a writing implement (perhaps because the notepad object is a hand-held computer with a QWERTY keyboard), forget about the allowed-pens list. Instead, set the pen-needed property of the notepad to false:

	The foggy mirror is a notepad. The pen-needed of the foggy mirror is false.

 The text of a notepad is held in a property called memo. If you want the notepad to start the game with a message already written on it, put something in the memo property:

	The memo of the foggy mirror is "Beware! Ghouls!"

By default, when a notepad is examined, its memo is printed out in a separate paragraph after the description. If you don't want this effect, perhaps because you're handling it yourself in the description, you can override the default like this:

	The notepad output rule is not listed in any rulebook.

In practice, long texts may slow the interpreter noticeably. The erasing it from action can become quite sluggish with long texts. 

Section: New Commands

The player (or an NPC who has been ordered to do so -- all of these actions can also be carried out by an NPC) can "read <notepad>".

The player can "write <any text> on <notepad>". "scribble" and "jot" are understood as synonyms for "write", and either "in" or "on" can be used. The extension makes no distinction between notepads that one would expect to write on (such as a blackboard) and those that one would expect to write in (such as a notebook). All input arrives in the memo buffer in lower-case letters.

The player can "add <any text> to <notepad>". This appends the new text at the end of the existing text. ("append" is understood as a synonym.) If the notepad is blank, "add" works exactly like "write".

The player can "erase <notepad>". This deletes the entire contents of the notepad.

The player can "erase <any text> from <notepad>". ("delete" works as a synonym for "erase"). This command searches the entire text and removes all instances of <any text> from it. The erasing it from command is case-insensitive, so it will delete capital letters (if any have been included in a memo text by the author).

The player can "copy <notepad> to <another notepad>". Copying overwrites the current contents of the destination notepad.

A notepad can be write-protected using the command "protect <notepad>". When it is write-protected, the write, add to, erase, erase from, and copy to commands are disallowed. The commands can be re-enabled using "unprotect <notepad>". This feature is to allow the player to take notes on game-play and avoid accidentally overwriting or erasing the notes.

Section: Known Issues

The notepad doesn't handle space characters perfectly. It will delete extra spaces when the erasing it from action would create them, but spaces themselves can't be erased (except by erasing the words on both sides of a space, and including the space character in the command).

Due to the sheer number of outputs needed and their close linkages to text, no attempt has been made to extract the output text into a table for ease of customization or use in other languages. To change the output, you'll need to copy the action rules into your source, give your copies new names, and then use a command such as "the new check erasing rule is listed instead of the ordinary check erasing rule in the check erasing rulebook."

All text is converted to lower-case when being entered. (Actually, by the parser before the write command is executed.) For this reason, it's not possible to capitalize words that are written. However, text created by the game's author can contain capitals, and these will be preserved when the text is copied from one notepad to another.

It's not necessary that the user be holding the notepad in order to use it. This is meant to accommodate notepad objects such as a whiteboard, which can't be held.

Bugs should be reported to the author at midiguru23@sbcglobal.net or editor@musicwords.net.

Section: About the Examples

Memorabilia is a kind of catch-all example, with which we can try writing, adding, erasing, copying, dropping needed pen objects, and so on.

Beethoven uses the notepad object in an unconventional way (with a little coding help from Jesse McGrew). The NPC is deaf, and won't respond to normal commands. But he will respond to commands written in the conversation book if the book is then shown to him. Only one command, "play the piano", is implemented, but this device could form the basis of an entire, though admittedly cumbersome, conversation system. It works by storing the memo of the conversation book in the queued command and then retrieving it using the Rule for reading a command. The truth state Beethoven-willing will only be true immediately after the book has been shown to him.

Example: * Memorabilia - Some objects the player can write in.

	*: "Memorabilia"

	Include Notepad by Jim Aikin.

	The Lab is a room.

	The player carries a fish. The description of the fish is "The fish [are] remarkably scaly."

	The player carries a pencil and a piece of chalk.

	The player carries a slate. The slate is a notepad. The description of the slate is "Black." The allowed-pens of the slate is {chalk}.

	The player carries a notebook. The notebook is a notepad. The description of the notebook is "Dog-eared." The allowed-pens of the notebook is {pencil}.

	The foggy mirror is in the Lab. The description is "The mirror [are] thickly coated with condensed steam." The foggy mirror is a notepad. The pen-needed of the foggy mirror is false. The memo of the foggy mirror is "Beware! Ghouls!"

	Test writing with "write message on fish / write message on slate / read slate / drop chalk / add another message to slate / take chalk / add another message to slate".

	Test reading with "read slate / read fish / read mirror / x mirror".

	Test erasing with "erase me from slate / read slate / erase slate / read slate".

	Test copying with "copy mirror to mirror / copy mirror to notebook / drop chalk / copy notebook to slate".

	Test me with "test writing / test reading / test erasing /test copying".

Example: * Beethoven - A deaf NPC who responds only to commands written in the conversation book.

	*: "Beethoven"

	Include Notepad by Jim Aikin.

	Section 1 - The Room & Objects

	The Messy Front Parlor is a room. "A handsome Broadwood piano dominates this small, cluttered room. Stuff is scattered everywhere. There's even a half-eaten sandwich under the piano."

	A musical instrument is a kind of thing.

	The Broadwood piano is scenery in the Messy Front Parlor. The description is "The piano is handsomely inlaid with fleur-de-lis." Understand "handsome", "inlay", and "fleur-de-lis" as the Broadwood piano. The Broadwood piano is a musical instrument.

	The player carries a conversation book and a quill pen. The conversation book is a notepad. The allowed-pens of the conversation book is {quill pen}. The description of the conversation book is "The deaf composer often used a book of this sort to hold conversations with his friends. They would write whatever they wanted to say to him in the book and then show him the book."

	Section 2 - Beethoven

	Beethoven is a man in the Messy Front Parlor. "Beethoven is standing here, scowling at you." The description is "His hair hasn't been combed in days, and his waistcoat is mis-buttoned." Beethoven has some text called the non-response. The non-response of Beethoven is "Beethoven doesn't seem to have heard you."

	Beethoven-willing is a truth state that varies. Beethoven-willing is false.

	Instead of asking Beethoven to try playing the piano:
		if Beethoven-willing is false:
			say "[non-response of Beethoven][paragraph break]";
		otherwise:
			say "Beethoven says, 'Oh, perhaps.' He sits down at the piano and plays a rapid flurry of notes. Unfortunately, the piano hasn't been tuned in years, and some of the strings seem to be broken. Beethoven seems blissfully unaware of the awful racket."

	Instead of asking Beethoven to try doing something:
		if Beethoven-willing is true:
			say "Beethoven frowns and shakes his head. Perhaps he can't understand what '[memo of the conversation book]' means.";
		otherwise:
			say "[non-response of Beethoven][paragraph break]".

	Persuasion rule for asking Beethoven to try doing something:
		if Beethoven-willing is true:
			persuasion succeeds;
		otherwise:
			persuasion fails.

	Section 3 - Letting Beethoven Respond to Written Commands

	The queued command is a text that varies.

	Rule for reading a command:
		if the queued command is empty:
			now Beethoven-willing is false;
			make no decision;
		otherwise:
			now Beethoven-willing is true;
			change the text of the player's command to the queued command;
			now the queued command is "".

	Instead of showing the conversation book to Beethoven:
		if the memo of the conversation book is empty, say "Beethoven frowns at the empty page. 'You have an odd sense of humor,' he says gruffly.";
		otherwise now the queued command is "beethoven, [memo of the conversation book]".
	
	Section 4 - The Playing Action

	Playing is an action applying to one thing. Understand "play [something]" as playing.

	Check playing:
		if the noun is not a musical instrument:
			say "You can't make music on [the noun]!" instead.

	Carry out playing:
		say "You try a few tentative notes on [the noun], but it's in such poor condition that you desist almost before you start."

	Test me with "show book to beethoven / write play the piano in the book / show book to beethoven / beethoven, play the piano / write go north in conversation book / show book to beethoven".
	
		
