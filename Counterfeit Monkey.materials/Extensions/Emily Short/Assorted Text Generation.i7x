Version 5 of Assorted Text Generation by Emily Short begins here.
 
Section 1 - Selections of a Group

To say selection of (superset - a description of objects) conforming to the description (subset - a description of objects) is-are:
	let subset count be the number of members of subset;
	let superset count be the number of members of superset;
	if the subset count is greater than superset count:
		say "BUG: author has misdefined sets"; 
		rule succeeds;
	if the subset count is the superset count:
		if subset count is 0:
			say "nothing is";
			rule succeeds;
		otherwise:
			say "[subset is-are all]";
	otherwise:
		if subset count is 0:
			if superset count is 1:
				let target object be a random member of the subset;
				say "[regarding the target object][They] [are] not";
			else:
				say "[none of superset is-are]";
		otherwise:
			say "[the list of the members of subset] [are]".


To say (subset - a list of objects) out of (superset - a list of objects) is-are:
	let subset count be the number of entries in subset;
	let superset count be the number of entries in superset;
	if the subset count is greater than superset count:
		say "BUG: author has misdefined sets"; 
		rule succeeds;
	if the subset count is the superset count:
		if subset count is 0:
			say "nothing is";
			rule succeeds;
		otherwise:
			say "[subset with definite articles] [are] all";
	otherwise:
		if subset count is 0:
			if superset count is 1:
				let target object be entry 1 in subset;
				say "[regarding the target object][They] [are] not";
			else:
				say "None [are]";
		otherwise:
			say "[subset with definite articles] [are]".


To say (subset - a list of objects) out of (superset - a list of objects):
	let subset count be the number of entries in subset;
	let superset count be the number of entries in superset;
	if the subset count is greater than superset count:
		say "BUG: author has misdefined sets"; 
		rule succeeds;
	if the subset count is the superset count:
		if subset count is 0:
			say "nothing";
			rule succeeds;
		otherwise:
			say "[subset with definite articles]";
	otherwise:
		if subset count is 0:
			if superset count is 1:
				let target object be entry 1 in subset;
				say "[regarding the target object][They] not";
			else:
				say "None ";
		otherwise:
			say "[subset with definite articles]".
			
To describe which (superset - a description of objects) are (subset - a description of objects) with members being (member text - some text), when necessary:
	if when necessary:
		let subset count be the number of members of subset;
		if subset count is 0:
			rule succeeds;
	let N be "[selection of the superset conforming to the description subset is-are]";
	say "[N in sentence case] [member text]. ".
			
To describe which (superset - a description of objects) are (subset - a description of objects) rather than (difference set - a description of objects) with members being (member text - some text) and nonmembers being (nonmember text - some text):
	let subset count be the number of members of subset;
	let superset count be the number of members of superset; 
	let difference count be the superset count minus subset count; 
	if (difference count is greater than 0 and the difference count is less than subset count) or the subset count is 0:
		let N be "[selection of the superset conforming to the description difference set is-are]";
		say "[N in sentence case] [nonmember text]. ";
	else:		
		let N be "[selection of the superset conforming to the description subset is-are]";
		say "[N in sentence case] [member text]. ".


To say none of (superset - a description of objects) is-are:
	if the number of members of superset is 2:
		say "[regarding the superset]neither [are]";
	otherwise:
		say "[regarding the superset]none [are]".

To say (superset - a description of objects) is-are both/all:
	let superset count be the number of members of superset;
	if the superset count is 1:
		say "[regarding the superset][they] [are]";
	if the superset count is 2:
		say "[regarding the superset][one of]both of them [are][or]both [are][or]they [are] both[purely at random]";
	if the superset count is greater than 2:
		say "[regarding the superset][one of]they [are] all[or]all [superset count in words] [are][purely at random]".   

To say explicit none of (superset - a description of objects) is-are: 
	let first be a random member of the superset;
	let second be the first;
	while the first is the second:
		let second be a random member of the superset;
	if the number of members of superset is 2:
		say "[regarding the superset]neither [the first] nor [the second] [are]";
	otherwise:
		say "[regarding the superset]none of [the list of members of the superset] [are]".

To say explicit both (superset - a description of objects) is-are:
	say explicit both superset;
	let superset count be the number of members of superset;
	if the superset count is less than 3:
		say "[regarding the superset] [are]";
	if the superset count is greater than 2:
		say "[regarding the superset] [are] all".

To say explicit both (superset - a description of objects):
	let superset count be the number of members of superset;
	if the superset count is 1:
		say "[the list of the members of superset]";
	if the superset count is 2:
		say "both [the list of the members of superset]";
	if the superset count is greater than 2:
		say "[the list of the members of superset]".

To say explicit (superset - a description of objects) is-are both/all:
	let superset count be the number of members of superset;
	if the superset count is 1:
		say "[the list of the members of superset] [are]";
	if the superset count is 2:
		say "[the list of the members of superset] [are] both";
	if the superset count is greater than 2:
		say "[the list of the members of superset] [are] all". 
		
Section 2 - Temporal relations

To say next:
	say "[one of]after a moment[or]then[or]shortly[or]just then[or]next[or]moments later[at random]";

Section 3 - Numbers
	
To say numerical ordinal of (N - a number):
	say "[N]";
	if N is greater than 10 and N is less than 20
	begin;
		say "th";
	otherwise;
		let Y be the remainder after dividing N by 10;
		if Y is 1
		begin;
			say "st";
		otherwise if Y is 2;
			say "nd";
		otherwise if Y is 3;
			say "rd";
		otherwise;
			say "th";
		end if;
	end if;

To say ordinal of (N - a number):
	if N is a number listed in the Table of Ordinals:
		choose row with a number of N in the Table of Ordinals;
		say ordinal entry;
	otherwise:
		if N is greater than 20:
			let X be N divided by 10;
			now X is X times 10;
			let Y be the remainder after dividing N by 10;
			if Y is zero:
				let enumeration be "[X in words]";
				replace the regular expression "(.*)y" in enumeration with "\1ie";
				say "[enumeration]th";
			otherwise:
				say "[X in words]-[ordinal of Y]"; 
		otherwise:
			say "[N in words]th";  

Table of Ordinals
number	ordinal
1	"first"
2	"second"
3	"third"
4	"fourth"
5	"fifth"
6	"sixth"
7	"seventh"
8	"eighth"
9	"ninth"
10	"tenth"
11	"eleventh"
12	"twelfth" 
20	"twentieth" 

[To decide what number is (N - a number) to the nearest (A - a number):
	now N is N divided by A;
	now N is N times A;
	decide on N. ]

To say (count - a number) in round numbers:
	repeat through the Table of Numerical Approximation
	begin;
		if count is less than threshold entry
		begin;
			let N be indexed text;
			let N be "[approximation entry]";
			replace the regular expression " of" in N with "";
			replace the text "no" in N with "zero";
			say "[N]";
			rule succeeds;
		end if;
	end repeat.

To say adjectival (count - a number) in round numbers:
	repeat through the Table of Numerical Approximation:
		if count is less than threshold entry:
			say "[approximation entry]";
			rule succeeds.

Table of Numerical Approximation
threshold	approximation
1	"no"
2	"one"
3	"a couple of"
4	"several"
6	"a few"
11	"some"
21	"many"
100	"lots of"
500	"lots and lots of"
2000	"hundreds of"	
30000	"thousands of"

Section 4 - Proportional Phrases

To say proportion of (superset - a description of objects) conforming to the description (subset - a description of objects) is-are:
	let subset count be the number of members of subset;
	let superset count be the number of members of superset;
	say subset count as a proportion of superset count;
	say " [are]";

To say (N - a number) as a/-- proportion:
	if N is greater than 100:
		say "*** BUG: [N] being printed as a percentage ***";
	repeat through the Table of Proportions:
		if N is less than threshold entry:
			say "[approximation entry]";
			rule succeeds.

Table of Proportions
threshold	approximation
1	" none"
15	" almost none"
30	" [about] a quarter"
40	" [about] a third"
60	" [about] half"
70	" [about] two thirds"
85	" [about] three quarters"
100	" almost all"
101	" all"

To say about:
	say "[one of]about[or]around[or]approximately[or]roughly[at random]".
	
To say (N - a number) as a/-- proportion of (denominator - a number):
	let fraction be N * 100;
	let fraction be fraction / denominator; 
	say fraction as a proportion.

Section 5 - Locational Phrases

To say in-on (item - a thing):
	if the item is a container, say "in [item]";
	otherwise say "on [item]".

To say in-on a/an (item - a thing):
	if the item is a container, say "in [an item]";
	otherwise say "on [an item]".

To say in-on the (item - a thing):
	if the item is a container, say "in [the item]";
	otherwise say "on [the item]".

To say placement of (item - a thing):
	if the item is in a room:
		say "on the ground";
	otherwise if someone (called owner) carries the item:
		say "carried by [you or the owner]";
	otherwise if someone (called owner) wears the item:
		say "worn by [you or the owner]";
	otherwise:
		say "[in-on the holder of the item]".

Section 6 - Phrases about You

To say you or (culprit - a person):
	if the culprit is the player, say "you";
	otherwise say "[culprit]".

To say you or the (culprit - a person):
	if the culprit is the player, say "you";
	otherwise say "[the culprit]".

To say you or a/an (culprit - a person):
	if the culprit is the player, say "you";
	otherwise say "[a culprit]".

To say me or (culprit - a person):
	if the culprit is the player, say "me";
	otherwise say "[culprit]".

To say me or the (culprit - a person):
	if the culprit is the player, say "me";
	otherwise say "[the culprit]".

To say me or a/an (culprit - a person):
	if the culprit is the player, say "me";
	otherwise say "[a culprit]".

To say (culprit - a person) or I:
	if the culprit is the player, say "I";
	otherwise say "[culprit]".

To say the (culprit - a person) or I:
	if the culprit is the player, say "I";
	otherwise say "[the culprit]".

To say a/an (culprit - a person) or I:
	if the culprit is the player, say "I";
	otherwise say "[a culprit]".


Assorted Text Generation ends here.

---- Documentation ----

Assorted Text Generation supplies routines for producing prose in various common situations.

Section: Overview

Phrases defined by Assorted Text Generation Include:

	selection of (superset - a description) conforming to the description (subset - a description) is-are 
	
	none of (superset - a description) is-are
	explicit none of (superset - a description) is-are
	explicit both (superset - a description)
	explicit both (superset - a description) is-are
	explicit (superset - a description) is-are both/all
	(superset - a description) is-are both/all

	ordinal of (N - a number)
	numerical ordinal of (N - a number)
 	(N - a number) to the nearest (A - a number)
	(N - a number) in ballpark terms

	in-on (item - a thing) [and variations with "a" and "the"]
	placement of (item - a thing)

	you or (culprit - a person) [and variations with "a" and "the"]
	me or (culprit - a person) [and variations with "a" and "the"]
	(culprit - a person) or I [and variations with "a" and "the"]

By default, all phrases produce output in lower case. If we want to change to another casing (sentence case will probably be most common), we can always write, e.g.:

	let N be indexed text;
	let N be "[selection of the visible doors conforming to the description open visible doors is-are]";
	say "[N in sentence case]".

This removes the need for numerous variant phrases for capitalized output.

Section: Selection

	After looking: 
		let N be "[selection of the visible doors conforming to the description open visible doors is-are]";
		say "[N in sentence case] open.". 

to produce such phrases as "Neither of them is open.", "All three of them are open.", "The black door is open.", and so on. It is necessary to give both descriptions in full and not to take a shortcut such as "selection of the visible doors which are open". It is the author's responsibility to ensure that the subset description is really a subset of the superset description. (It would be possible to check for this within Inform, but at some runtime performance cost if the sets are complicated; so we preferred the speedier option.)

Along the same lines, we can write

	describe which visible doors are open visible doors with members being "open";

which will produce the entire sentence as given above, followed by a full stop and a space but no line break. Sometimes we may want to suppress this sentence if no members belong to the relevant set, in which case we may write

	describe which visible doors are open visible doors with members being "open", when necessary;

which will print no sentence in the case that no open visible doors exist. 

Note that this isn't a say phrase, and the reason is that we need to be able to pass those bits of text such as "open" that could not be embedded within a larger phrase.

A slighly more sophisticated option is:

	describe which visible doors are open visible doors rather than closed visible doors with members being "open" and nonmembers being "closed";

to generate text such as "The green door is closed." or "The green door and the blue door are open." This phrase produces a sentence that ends with a full stop and a space but does not conclude the paragraph, so it is suitable for including in longer paragraphs. 

This phrase will always choose to write the sentence that requires the least enumeration, so if there are five doors in a room and all but the red one are open, it will say "The red door is closed." rather than "The green door, the blue door, the yellow door, and the pink door are open." 

Section: Numbers

	say "[ordinal of N]"

will produce output such as "first," "second," "tenth," "twenty-first," and so on. It should be reliable up through quite high numbers, and has been tested up to a thousand. "numerical ordinal of N" produces 1st, 2nd, 3rd, and so on.

	 (N - a number) to the nearest (A - a number) 

allows us to write, e.g.
	
	say "[N to the nearest 5 in words]"

in a way that is uniform with Inform's built in

	say "[the time of day to the nearest five minutes in words]"

and may be useful for approximations.

	say "[N in round numbers]"
	say "[adjectival N in round numbers]"

produces textual output in a way similar to that shown in the manual example Ballpark; the adjectival form is to print text like "no" or "a couple of", while the bare form would print "zero" or "a couple" for the same numbers. Thus

	When play begins:
		repeat with N running from 0 to 4
		begin;
			say "You see [adjectival N in round numbers] [if N is 1]person[otherwise]people[end if] here; that's right, [N in round numbers].";
		end repeat.
	
would produce the output

	You see no people here; that's right, zero.	
	You see one person here; that's right, one.
	You see a couple of people here; that's right, a couple.
	You see several people here; that's right, several.
	You see a few people here; that's right, a few.


Section: Locational phrases

	say "[in-on the item]"

produces "in the item" or "on the item" depending on whether or not the item is a container; in-on item and in-on an item work in the expected way.

	say "[placement of item]"

produces "on the ground", "carried by the vicar", "worn by the vicar", "in the box", or "on the shelf", depending on the nature of the containment involved. If the person in question is the player, the result will be "carried by you" or "worn by you".

Section: Referring to someone who might be the player

Quite often we need to refer to a person who might be the player, in contexts where the default "yourself" would look awkward. For these purposes we have

	you or vicar
	you or a/an vicar
	you or the vicar

And (for use in first-person contexts) there is also
	
	me or vicar
	me or a/an vicar
	me or the vicar
	vicar or I
	a/an vicar or I
	the vicar or I

As usual, these should be explicitly sentence-cased if necessary, with the exception that "I" is always printed in the upper case by default.

Example: * Door Count - A dynamic description of doors

Here we use the selection feature to describe which doors are open out of a group. Different rooms have different numbers of doors that could be open or closed, and we want our description to be as succinct as possible.

	*: "Door Count" by Emily Short
	
	Include Assorted Text Generation by Emily Short.
	
	The Reading Room is a room. 
	
	The arched door is a door. It is west of the Reading Room and east of the Rare Book Room.
	
	The solid door is a door. It is south of the Reading Room and north of the Circulation Desk.
	
	The flimsy door is a door. It is north of the Reading Room and south of the Supply Closet. The flimsy door is locked.
	
	The green door is a door. It is east of the Reading Room and west of the Library Garden.
	
	The felt covered door is a door. It is north of the Rare Book Room and south of the Restoration Room.
	
	The flimsy key unlocks the flimsy door. The player carries the flimsy key.
	
	To lead is a verb.
	
	Rule for writing a paragraph about a door:
		say "[A list of visible doors] [lead] out of this room. ";
		describe which visible doors are open visible doors rather than closed visible doors with members being "[one of]standing open[or]ajar[or]open[at random]" and nonmembers being "[one of]shut[or]closed[or]firmly shut[at random]";
		describe which visible doors are locked visible doors with members being "locked", when necessary;
		say paragraph break.
		
	Test me with "open arched door / look / open green door / look / open solid door / look / unlock flimsy door with flimsy key / look / close green door / look / open flimsy door / look / open green door / look / go through the arched door / open the felt door / look / close felt door / close arched door / look / open felt / go through felt / look / close felt / look".
	
 

