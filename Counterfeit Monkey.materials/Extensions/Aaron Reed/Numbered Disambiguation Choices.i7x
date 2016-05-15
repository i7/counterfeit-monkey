Version 7/140501 of Numbered Disambiguation Choices by Aaron Reed begins here.

"Numbers the options in disambiguation questions, to help new players and solve the 'disambiguation loop' problem caused by indistinguishable objects."

[
Updates:
Version 7: Updated for latest build.
Version 6: Fixed an infelicity with indistinguishable objects reported by Victor Gijsbers. Started to fix a bug to do with animate people reported by Simon; this turns out to be a bug in Inform (http://inform7.com/mantis/view.php?id=700) which is not easy to work around, so leaving unfixed for now.
Version 5: updated for Player Experience Upgrade.
Version 4: fixed the misleading error message "I didn't understand that number" from appearing; thanks to Wade for reporting.
Version 3: fixed an obscure bug reported by Matt W.; thanks!
Version 2: fixed a bug reported by Rob Jenkins; gracias!
]

Chapter - Setup

Section - Disambiguation ID

Every thing has a number called disambiguation id. The disambiguation id of something is usually 0.  
 
Understand the disambiguation id property as describing a thing. 

Section - List of disambiguables

The list of disambiguables is a list of objects that varies.

Section - disambiguation-busy

disambiguation-busy is a truth state that varies. disambiguation-busy is false. [In certain cases numbers could be printed twice. Thanks to Robert Jenkins for pointing this out.]

Chapter - Number Choices

Before printing the name of something (called macguffin) while asking which do you mean (this is the Numbered Disambiguation Choices preface disambiguation objects with numbers rule):
	if disambiguation-busy is false:
		now disambiguation-busy is true;
		add macguffin to the list of disambiguables, if absent;
		now the disambiguation id of macguffin is the number of entries in list of disambiguables;
		say "" (A);
		say "[the number of entries in list of disambiguables]";
		say ") " (B).

After printing the name of something while asking which do you mean (this is the Numbered Disambiguation Choices cleanup disambiguation-busy flag rule):
	now disambiguation-busy is false.

Before asking which do you mean (this is the Numbered Disambiguation Choices reset disambiguables rule):
	repeat with item running through list of disambiguables:
		now disambiguation id of item is 0;
	truncate list of disambiguables to 0 entries.

Chapter - Understand preface

[In testing, some players would try to respond with something like "1) dog collar". If we replace closing parentheses from the input with a space, this can still be understood, rather than producing an unhelpful error.]

After reading a command (this is the Numbered Disambiguation Choices strip closing parenthesis rule):
	let disam-cmd be indexed text;
	let disam-cmd be the player's command;
	replace the regular expression "\)" in disam-cmd with " ";
	change the text of the player's command to disam-cmd.
	
Chapter - When to reset numbers

[How long should the disambiguation ID number still be understood as referring to the assigned item? Some players will try to use the numbers on subsequent turns as shortcuts. However, keeping them indefinitely can create a problem with duplicate objects: the disambiguation ID property makes them distinguishable, so "two apples" will start being identified as "an apple" and "an apple." To address this, we reset the numbers as soon as the player enters a command which does not include a number.]

After reading a command when the number of entries in list of disambiguables > 0 (this is the Numbered Disambiguation Choices reset disambiguation id when no numbers in command rule):
	let disam-cmd be indexed text;
	let disam-cmd be the player's command;
	unless disam-cmd matches the regular expression ".*\d.*":
		follow the Numbered Disambiguation Choices reset disambiguables rule.

Numbered Disambiguation Choices ends here.

---- DOCUMENTATION ----

This extension is designed to solve two problems with disambiguation questions. First: many newcomers to IF do not realize that they can just type an identifying word to answer the question, causing frustration as they retype their whole command all over again each time this occurs. Second, it's all too easy for a disambiguation question to be triggered that does not provide enough information to differentiate between the two items-- either the author did not supply enough adjectives, or the adjectives are not part of the way the object names are printed. In either case this leads to the dreaded "disambiguation loop," where the question keeps repeating and one or more of the objects cannot be referred to at all.

Numbered Disambiguation Choices addresses both issues by printing (and then understanding) numbers before each object in a disambiguation question. Players can type just the number (or an identifying word or new command, as normal) to continue.

By default, the extension will reset the numbers as soon as the player types a command which does not contain a number. This is because in testing players would often try to refer to other objects in the disambiguation list by their number in subsequent turns. If you want to change this so numbers can only be used immediately after a disambiguation question is asked, add the following to your code:

	Every turn: follow the Numbered Disambiguation Choices reset disambiguables rule.

A final note: if your code involves parsing the closing parenthesis character -- ) -- you'll need to remove or overrule the "Numbered Disambiguation Choices strip closing parenthesis rule". By default, the extension removes this character from input, since some players try to be too literal when answering the disambiguation question.

Example: * Curio Shop - A setting littered with opportunities for confused input.

	*: "Curio Shop".

	Include Numbered Disambiguation Choices by Aaron Reed.

	The Curio Shop is a room.    

	A dog is an animal in Curio Shop. A cast iron hot dog, a hot plate, a hot iron, a dog collar, a copy of Dog Fancier magazine, and a 16mm film are in Curio Shop. A 16mm film canister is in Curio Shop.

	Test me with "x dog / 1 / x hot / x dog / 2 / x 3 / take film / 1) 16mm film".

Normally, players would never be able to refer to the dog or the 16mm film, since no adjectives are defined that could distinguish them from the dog collar or the 16mm film canister. Though a somewhat contrived example here, this situation is all too easy for authors to accidentally create.