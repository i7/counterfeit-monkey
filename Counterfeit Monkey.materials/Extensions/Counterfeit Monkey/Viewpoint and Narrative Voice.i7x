Viewpoint and Narrative Voice by Counterfeit Monkey begins here.

Use authorial modesty.


Book 3 - Viewpoint and Narrative Voice

Include Locksmith by Emily Short. Use sequential action. Use full-length room descriptions.

Understand the command "latch" as "lock".

The passkey description rule is not listed in any rulebook.

After examining an identified passkey (this is the new passkey description rule):
	say "[The noun] unlocks [the list of things unbolted by the noun].";
	continue the action.

Table of Ultratests (continued)
topic	stuff
"keybug"	{ key, monocle }

Test keybug with "tutorial off / x key / wear monocle / x key". [holding the key and the monocle.]

Section 1 - Overriding to First Plural

Include Tailored Room Description by Emily Short.

[This sets us up so that we can print object descriptions when taking items if the command was of the form TAKE FISH, but not if it was TAKE ALL and the result would be a screendump of different descriptions. See its use in the "report player taking" response below.]

To decide whether the action is singular:
	let L be the multiple object list;
	if the number of entries in L is less than 2:
		yes;
	no.

A thing can be examined or unexamined.

To say (item - a thing) description:
	say "[description of the item]";
	now the item is examined.

Carry out examining something:
	now the noun is examined.

[Modified tutorial messages to remove paragraph break before prompt, so that they behave the same as the custom ones.]
The react to expected actions rule response (A) is "[first custom style][followup entry][roman type][paragraph break]".
The teach looking rule response (A) is "[first custom style]To get a look around, type LOOK and press return. If you do not want help getting started, type TUTORIAL OFF.[roman type][run paragraph on]".
The teach examining rule response (A) is "[first custom style]You can find out more if you LOOK AT [N in upper case] (or shorten it to L [M in upper case]).[roman type][run paragraph on]".
The teach more examining rule response (A) is ”[first custom style]There are other things around here that you can look at too, if you like. You can check out other things in your surroundings, or LOOK AT ME to see yourself.[roman type][run paragraph on]".
The teach compass directions rule response (A) is "[first custom style][one of]Feel free to look around some more. When you're ready to move on from here, try[or]No rush, but just a reminder that when you want to move to a new location, you can go[stopping] [N in upper case].[roman type][run paragraph on]".
The teach dropping rule response (A) is "[first custom style]If you want to get rid of something that you're holding you can always drop it, like this: DROP [N in upper case].[roman type][run paragraph on]".
the teach taking rule response (A) is "[first custom style]You can pick things up when you see them, like this: TAKE [N in upper case].[roman type][run paragraph on]".
The teach inventory rule response (A) is "[first custom style]There's more we can do than just looking around. To check what you're holding at the moment, try typing INVENTORY, or I for short.[roman type][run paragraph on]".
The teach meta-features rule response (A) is "[first custom style]To save your current position, type SAVE. RESTORE allows you to bring back a game you have previously saved.[roman type][run paragraph on]".

The standard report taking rule response (A) is "[We] [one of]take[or]get[or]pick up[or]acquire[as decreasingly likely outcomes] [the noun][if the noun is unexamined and the action is singular]. [run paragraph on][noun description][no line break][otherwise].[end if]".
The standard report wearing rule response (A) is "[We] [put] on [the noun][if the noun is unexamined]. [run paragraph on][noun description][no line break][otherwise].[end if]".
The standard report dropping rule response (A) is "[We] put down [the noun]."
The room description heading rule response (C) is " ([unless the intermediate level is a car or the intermediate level is the spinner-gate][in-on the intermediate level][end if][if the intermediate level is a car]jammed into the [intermediate level][end if][if the intermediate level is the spinner-gate]on the [spinner][end if])".
The parser error internal rule response (E) is "[if location is Customs House]The line is moving enough that even things that were just here move out of sight quickly[otherwise][one of]I don't know what you think you're talking about, because we can't see any such thing here[or]Maybe that means something different to you, but I can't see any such thing[or]I can't see what you're talking about[stopping][end if]."
The parser error internal rule response (R) is "[if location is Customs House]The line is moving enough that even things that were just here move out of sight quickly[otherwise][one of]I don't know what you think you're talking about, because we can't see any such thing here[or]Maybe that means something different to you, but I can't see any such thing[or]I can't see what you're talking about[stopping][end if]."
[LibMsg <block swearing obscenely>		"Hey, calm down."
LibMsg <block swearing mildly>			"No kidding."]
The block kissing rule response (A) is "[one of]Is that how you solve all problems?[or]Could you refrain while I'm trapped in the same body here?[at random]".
The block thinking rule response (A) is "[one of]I'm pulling my weight here! How about [i]you[/i] think us up a way out of this, hm?[or]Sorry, no bright ideas at the moment.[at random]".
The block attacking rule response (A) is "[one of]I don't like destructive behavi[our].[or]I just don't think attacking things or people is going to help.[or]Jeez, wait until you're sole proprietor of your own body to [if the noun is a person]pick fights[otherwise]commit pointless acts of vandalism[end if].[cycling]".
The block cutting rule response (A) is "But [i]why?[/i] [--] no, don't answer that. I'm sure you have some crazy explanation."
The report jumping rule response (A) is "I don't think that would help."
The report waving hands rule response (A) is "[We] wave our hand regally."
The can't push unpushable things rule response (A) is "[We] seriously doubt that will help."
The standard report opening rule response (A) is "[We] [open] [the noun][if the noun is a container and the noun is empty], which turns out to be empty[end if]."
[LibMsg <block singing>	"I prefer not to exercise my singing voice in company. (That includes you.)"]
The block waking up rule response (A) is "[if atlantida-woman is seen]Although it seems like a nightmare,[otherwise]At some point we'll split into our two proper selves, but[end if] our unnatural synthesis is no dream."
The print obituary headline rule response (B) is " We have won ".
The can't push people rule response (A) is "[We][']d rather not try it."
The can't pull people rule response (A) is "[We][']d rather not try it."
The can't turn people rule response (A) is "[We][']d rather not try it."
The block buying rule response (A) is "[if the current interlocutor is a marked-visible person][The current interlocutor] [aren't] in a position to sell us [the noun][otherwise]There's no one about to sell us [the noun][end if]."
The report rubbing rule response (A) is "[nerve-damage]."
The report squeezing rule response (A) is "[nerve-damage]."
The block burning rule response (A) is "[We] don't have a flame source, and if [we] did I wouldn't want to set things on fire with it."

To say nerve-damage:
	say "[one of]I don't see that being a big help[or]I'd rather not, thanks[or]You're a strikingly tactile person, you know? But I don't see any purpose in it[or]Hm. Don't take this the wrong way, but do you think your need for haptic feedback is a sign of nerve damage during our synthesis? No? Okay, just checking[cycling]".

Understand "bother" or "curses" or "drat" or "darn" as a mistake ("No kidding.").

Understand "shit" or "fuck" or "fucking hell" or "hell" or "damn" or "god damn" or "goddamn" as a mistake ("Hey, calm down.").

Section 2 - Making TRD first plural

[ Tailored Room Description assumes a second-person narrator. We use TRD's abilities heavily throughout the game to control the order and manner in which items are described, but we need to do a couple of tweaks to get the output to conform properly to requirements here.]

When play begins (this is the customise tailored room description rule):
	now the current-topic-sentences-table is the Table of NBS;
	now the current-room-content-table is the Table of NRCD.

Rule for writing a topic sentence about an introduceable as-yet-unknown thing (called special-target):
	if the special-target is in the location, make no decision;
	if the special-target is initially-described, make no decision;
	if the special-target is flexibly-described, make no decision;
	now the current-subject is special-target;
	let special-exterior be the holder of the special-target;
	if the special-exterior is a chair and the special-target is a person:
		make no decision; [this we want to describe explicitly as sitting]
	say "[We] can see [a special-target] [in-on special-exterior as a possibly-known item]. [run paragraph on]".

Table of NBS
disclosure
"[if the current-subject is a person][The current-subject] [are] here. [otherwise][We] can see [a current-subject] here. [end if]".

Table of NRCD
disclosure
"[We] can [optional also]see [a list of mentionable things *in the current-subject] [if current-subject is the location]here[otherwise]in [the current-subject][end if]. ".

A ranking rule for a person (called special-target):
	increase the description-rank of the special-target by 10.



Section 3 - Making Locksmith first plural

[Locksmith doesn't have a great deal of its own text, but we can add some.]

To say key-refusal for (key-object - the small door):
	say "It looks as though [we] need a keycard to unlock [the small door], and [we] don't have one."

Section 4 - Making Threaded Conversation first plural

[Threaded Conversation also refers to 'you' only in one place, which can be overridden by redefining a variable text: ]

When play begins (this is the make threaded conversations viewpoint sensitive rule):
	now quip-suggestion-phrase is "[one of][We] could [or]I'd like to [or][We] want to [or]I'm inclined to [or]My response would be to [as decreasingly likely outcomes]".

The new no-quip rule is listed instead of the no quip worth saying default rule in the for expressing ignorance by rulebook.

Rule for expressing ignorance by the player (this is the new no-quip rule):
	say "[one of][We] can't think of anything appropriate to say[or]I'm not sure what you're trying to express, there[at random]. "

Section 5 - Introductions

[Introductions are special text printed when we see a room or object for the first time, and are part of the dynamic description system which helps ground us in Alex's thoughts especially. ]

A thing has some text called the introduction. The introduction of a thing is usually "".
A room has some text called the introduction. The introduction of a room is usually "".

Rule for writing a paragraph about an as-yet-unknown introduceable thing (called special-target):
	carry out the writing a topic sentence about activity with the special-target;
	introduce the special-target;
	say paragraph break.

After examining an as-yet-unknown introduceable thing (called special-target):
	introduce the special-target;
	say paragraph break.

To introduce (special-target - an object):
	now the special-target is introduced;
	say "[introduction of the special-target]".

Definition: a thing is introduceable if the introduction of it is not "".

Definition: a room is introduceable if the introduction of it is not "".

A thing can be as-yet-unknown or introduced. A thing is usually as-yet-unknown.
A room can be as-yet-unknown or introduced. A room is usually as-yet-unknown.

The first time looking rule is listed after new object description rule in the carry out looking rules.

This is the first time looking rule:
	if location is introduceable and the location is as-yet-unknown:
		introduce the location;
		say paragraph break.

[A description-concealing rule:
	now every thing which is held by an as-yet-unknown introduceable person is not marked for listing. [This is so that preliminary descriptions of characters will not be followed by 'so and so is holding such and such and wearing so-and-that.']]

Section 6 - The THINK verb

Understand "think about [any introduceable introduced thing]" or "remember [any introduceable introduced thing]" as thinking about. Understand the commands "recall" or "consider" or "recollect" or "ponder" or "contemplate" as "remember".

Thinking about is an action applying to one visible thing.

Carry out thinking about:
	introduce the noun;
	say paragraph break.


Viewpoint and Narrative Voice ends here.
