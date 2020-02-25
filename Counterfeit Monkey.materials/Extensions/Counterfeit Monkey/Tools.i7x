Tools by Counterfeit Monkey begins here.

Use authorial modesty.


Book 3 - Tools

Chapter 1 - The Letter-Remover

Section 1 - Normal Behavior

Definition: a thing is irretrievable:
	if it is the letter-remover:
		yes;
	if it is the tub:
		yes;
	if it is the player:
		no;
	if it encloses the player:
		no; [because we've got a different disaster lined up to deal with this.]
	if it encloses an essential thing:
		yes;
	no.

Check waving the letter-remover at something irretrievable:
	unless the second noun is the letter-remover or the second noun is the locker:
		abide by the don't change irretrievable rules for the second noun.

The don't change irretrievable rules is an object-based rulebook.

[The irretrievable-ordinal stuff below is a lazy way to try and get some variation, avoiding repeated phrases such as "We try to retrieve everything important from the pit. We try to retrieve everything important from the crate." Instead we get "First, we try to retrieve everything important from the pit. Second, we try to retrieve everything important from the crate. Third, we try to retrieve everything important from the coffer."]

Last-irretrievable-turn is a number that varies.

Current-irretrievable-ordinal is a number that varies.

To say irretrievable-ordinal:
	if the turn count is last-irretrievable-turn:
		increment current-irretrievable-ordinal;
	otherwise:
		now current-irretrievable-ordinal is 1;
		now last-irretrievable-turn is the turn count;
	let N be "[ordinal of current-irretrievable-ordinal]";
	now N is N in sentence case;
	say N.

A don't change irretrievable rule for a thing (called the item):
	if the item is the tub or the item is the letter-remover or the item is the restoration gel:
		say "It would be a bad idea to change the form of [the item]. [We] might not be able to get it back.";
		the rule fails;
	if the item is a closed opaque container:
		say "It would be a bad idea to change the form of [the item]. [We] might not get the contents back.";
		the rule fails;
	if the item is a person:
		make no decision;
	say "[irretrievable-ordinal], [we] try to retrieve everything important from [the item]. [run paragraph on]";
	let essential-list be the list of essential things enclosed by item;
	let taken-list be a list of things;
	let holder-list be a list of things;
	repeat with the target running through essential-list:
		silently try taking the target;
		if the player carries the target:
			add target to taken-list;
			add holder of target to holder-list;
		otherwise:
			repeat with N running from 1 to the number of entries in taken-list:
				move entry N of taken-list to entry N of holder-list;
			the rule fails;
	if the number of entries in taken-list is at least 1:
		say "[We] take [taken-list with definite articles].[paragraph break]";
	if the item is irretrievable:
		say "Since [the item] [contain] [the essential-list with definite articles], it might be a bad idea to change [regarding the item][their] form. [We] may not be able to get the contents back.";
		the rule fails.

Instead of waving the letter-remover device:
	say "Whoa, whoa! Just waving that thing around without an exact aim could do a lot of damage. Wave it AT something, or don't wave it at all."

The letter-remover device is a thing. It is essential and illegal and examined. Understand "letter remover" or "plastic device" or "device" or "blunt-nosed" as letter-remover.
	The description of the letter-remover device is "It is a blunt-nosed plastic device, about the size of a laser pointer, that can be waved at things to remove excess [current setting of letter-remover in upper case]s. It is not very powerful, and often fails against large items. On the other hand, it has a wide range of action: it can be set to any letter [we] choose."
	The introduction is "These are, if not exactly cheap, hardly unknown in Atlantis."
	Understand "remover" as the letter-remover device.
	The printed name of the letter-remover device is "[current setting of letter-remover in upper case]-remover". The indefinite article of the letter-remover device is "your".

After printing the name of the letter-remover device while taking inventory:
	if the letter-remover device is upgraded:
		if the letter-remover device is creature-enabled:
			say "[roman type] (upgraded to handle animates and abstracts)";
		otherwise:
			say "[roman type] (upgraded to handle abstracts)";
	otherwise if the letter-remover device is creature-enabled:
		say "[roman type] (upgraded to handle animates)".

The letter-remover device has some text called current setting. The current setting of the letter-remover device is "r".

To say a-an (item - letter-remover device):
	if the current setting of the letter-remover device is listed in the vowel-starting list:
		say "an";
	otherwise:
		say "a";
	say " [letter-remover device]";

The vowel-starting list is a list of texts that vary. The vowel-starting list is { "a", "e", "f", "h", "i", "l", "m", "n", "o", "r", "s", "x" }.

A small knob is part of the letter-remover device. Understand "dial" as the small knob when the lock is marked invisible. The description is "It is very delicately made and stamped with letters around the circumference. The currently up-facing letter is [the current setting of the letter-remover device]."

After printing the name of the small knob:
	say " on your [letter-remover]".

Sanity-check doing something to the small knob:
	now the noun is the letter-remover device.

To expand X-remover-string:
	replace the text " [current setting of the letter-remover]-remover" in player-command-substitute with " letter-remover";
	replace the regular expression "^[current setting of the letter-remover]-remove " in player-command-substitute with "letter-remove ".

A first command-string altering rule (this is the implicitly change letter-remover setting rule):
	now the letter-remover is static;
	let N be player-command-substitute;
	if N matches the regular expression ".-remove":
		if N matches the regular expression "(.*) (.)-remover (.)*":
			replace the regular expression "(.*) (.)-remover (.)*" in N with "\2";
		otherwise if N matches the regular expression "(.*) (.)-remover":
			replace the regular expression "(.*) (.)-remover" in N with "\2";
		otherwise:
			replace the regular expression "(.)-remove.*" in N with "\1";
		if the current setting of the letter-remover exactly matches the text N:
			expand X-remover-string;
			make no decision;
		if the number of characters in N is greater than 1:
			make no decision;
		if the letter-remover is in a closed backpack:
			silently try opening the backpack;
			if the backpack is closed:
				stop the action;
		if the player can touch the letter-remover:
			unless N matches the regular expression "<a-z>":
				say "Only the 26 letters of the English alphabet are available to the letter-remover.";
				parsing fails;
			now the current setting of the letter-remover is N;
			now the letter-remover is changing;
			expand X-remover-string;
		otherwise:
			say "[run paragraph on]";

The letter-remover can be static or changing. The letter-remover is static.

Sanity-check doing something when the noun is the letter-remover and the letter-remover is changing:
	now the letter-remover is static;
	if the player does not carry the letter-remover:
		silently try taking the letter-remover;
		if the player does not carry the letter-remover:
			stop the action;
	say "[one of][We] smoothly, and almost without thinking about it, reset your device to be [a-an letter-remover][or][We] run our thumb over the dial, setting the device to [a-an letter-remover][or][We] reset the device to [current setting of letter-remover][stopping]. [run paragraph on]";
	if taking:
		say paragraph break;
		stop the action.

Understand "set [something]" as vaguely setting. Vaguely setting is an action applying to one thing.

Check vaguely setting:
	say "That is insufficiently exact [--] [we][']d have to set [the noun] to something." instead.

Instead of vaguely setting the letter-remover:
	say "You have to set it to a specific letter, as in SET [letter-remover] TO X."

Understand "set [letter-remover device] to [text]" or "tune [letter-remover device] to [text]" or  "turn [letter-remover device] to [text]" as tuning it to.  [Understand "set [something] to [text]" as tuning it to.] Tuning it to is an action applying to one carried thing and one topic.

Check tuning it to:
	if the noun is not the letter-remover device, say "[The noun] cannot be tuned." instead.

Check tuning it to:
	let N be "[the topic understood]";
	if the number of characters in N is greater than 1:
		say "[We] can only tune the letter-remover device to one letter at a time." instead;
	[now N is "[N in lower case]";]
	unless N matches the regular expression "<a-z>":
		say "Only the 26 letters of the English alphabet are available to the letter-remover." instead.

Carry out tuning it to:
	now the current setting of the letter-remover device is the topic understood.

Report tuning it to:
	say "You flick our thumb over the small knob: [we] now have [a-an letter-remover device]."

Report tuning the letter-remover to something for the third time:
	say "[first custom style][bracket]You can also tune the device just by using another name for it: referring to the device as, for instance, an N-remover will automatically set it to n.[close bracket][roman type][paragraph break]"

Understand "remove [thing] from [thing]" as removing it from.

Understand "remove [text] from [something]" or "letter-remove [text] from [something]" as letter-removing it from. Letter-removing it from is an action applying to one topic and one visible thing.

Carry out letter-removing the topic understood from something:
	let noun-text be "[topic understood]";
	if the number of characters in noun-text is greater than 1:
		if the player's command includes "remove":
			[The parser has likely misunderstood our attempt to remove objects from the second noun as letter-removing. Try to give a reasonable response to this.]
			if the second noun is a closed openable opaque container:
				say "[The second noun] [are] closed." instead;
			if the player's command includes "remove all/everything from":
				if the first thing held by second noun is nothing:
					try empty-removing the second noun instead;
				otherwise:
					try removing the first thing held by the second noun from the second noun instead;
			say "[We] can't see any such thing [in-on the second noun]." instead;
	unless the current setting of the letter-remover is noun-text:
		try tuning the letter-remover to the topic understood;
	try waving the letter-remover at the second noun.

Understand "letter-remove [something]" as vaguely letter-removing. Vaguely letter-removing is an action applying to one visible thing.

Carry out vaguely letter-removing something:
	try waving the letter-remover at the noun.

Understand "wave [something preferably held] at/toward/over/around/on/across [thing]" as waving it at. Waving it at is an action applying to one carried thing and one visible thing.

Understand "use [letter-remover] on [thing]" as waving it at. Understand "point [letter-remover] at [thing]" as waving it at.

Understand "wave [something preferably held] at/toward/over/around [any locally-present room]" as waving it at.

Understand "use [letter-remover] on [any locally-present room]" as waving it at. Understand "point [letter-remover] at [any locally-present room]" as waving it at.

Check waving something at something:
	if the noun is not a letter-remover device,
		say "Nothing interesting happens." instead.

Check waving something at a room:
	if the noun is not a letter-remover device,
		say "Nothing interesting happens." instead;
	say "If we were to succeed in transforming the entire room [--] mercifully, that's unlikely, given the power requirements [--] but if we did succeed, you and I would be rendered inanimate, along with any other hapless passers-by." instead.

Check waving the letter-remover device at the letter-remover device:
	say "This is physically impossible as well as pointless." instead.

Before waving the letter-remover device at the small knob:
	say "This is physically impossible as well as pointless." instead.

[Check waving the letter-remover device at something which encloses the player:
	say "A safety override prevents [the letter-remover] from working on objects which actually contain the operator at the time."]


The letter-remover device can be upgraded. The letter-remover device is not upgraded.
The letter-remover device can be creature-enabled. The letter-remover device is not creature-enabled.

The waving it at action has an object called the generated object (matched as "creating").
The waving it at action has a truth state called the letter absence.

Setting action variables for waving the letter-remover device at an object which is not the letter-remover device:
	if the second noun is a direction:
		make no decision;
	now the letter absence is false;
	let Y be the single-letter-hash of the current setting;
	if hash code of second noun is 0:
		reset hash code of second noun;
	let comparison number be the hash code of the second noun with Y removed;
	if comparison number is the hash code of the second noun:
		now letter absence is true;
	otherwise:
		let starting text be the printed name of second noun;
		now the second noun is seen;
		now starting text is starting text in lower case;
		if the second noun is yourself:
			now starting text is "alexandra";
		replace the text current setting in the starting text with "";
		now generated object is the letter-remover device;
		repeat with item running through things in repository:
			if comparison number is the hash code of the item:
				let goal text be printed name of the item;
				now goal text is goal text in lower case;
				if the goal text is the starting text:
					if second noun proffers item:
						now the generated object is item;
						make no decision;
					match-add item;
		now the generated object is the best of all matches;
		if the generated object is the letter-remover device:
			now the disappointment text is the starting text.

The disappointment text is some text that varies.

[When creating something new by letter-removing, the code could previously pick an object from the repository that was already part of another "creation chain", i.e. it was already proffered by another object. This would make the resulting item part of two different creation chains, which could make it disappear out of your hand when you gelled or letter-transformed something seemingly unrelated. (Though in practice I only saw this happen with the as.) The rule below avoids this by picking a preferred object from a list of matches.]

[The jury is still out on whether this could ever happen when using the other letter-transformation tools.]

Include Intelligent Substitution by Counterfeit Monkey.

[To decide what thing is the substitute from (matchlist - a list of things) (this is the intelligent substitution rule):
	if the number of entries in matchlist is greater than 1:
		let high-scorer be nothing;
		let high-score be 0;
		repeat with contender running through matchlist:
			let scr be 500;
			let part-of-other-chain be false;
			repeat with X running through things in repository that proffer contender:
				if X is not contender and X does not proffer the second noun:
					now part-of-other-chain is true;
			if part-of-other-chain is true:
				decrease scr by 150;
				[Something else proffers the contender. Don't choose this.]
			if the first thing held by contender is not nothing:
				increase scr by 100;
				[The contender contains something. Prefer this.]
			if contender is r-abstract and the letter-remover is not upgraded:
				decrease scr by 100;
			if contender is a person and the letter-remover is not creature-enabled:
				decrease scr by 100;
			if contender is seen:
				increase scr by 1;
			if contender is a car:
				if contender is fueled:
					increase scr by 101;
				if contender is operational:
					increase scr by 100;
			if scr is greater than high-score or high-scorer is nothing:
				now high-score is scr;
				now high-scorer is contender;
		decide on high-scorer;
	otherwise:
		decide on entry 1 in matchlist.]

[Check waving the letter-remover at a foreign-tongued thing:
	say "[The letter-remover] squeaks as though frightened[one of]. Apparently encountering objects that aren't in English generates its own alarm tone[or] by the foreign-language [second noun][stopping]." instead. ]

Check waving the letter-remover at a direction:
	say "'[The second noun]' is a concept, not a concrete thing, and it eludes letter-removers." instead.

Check waving the letter-remover at something:
	if the letter absence is true:
		say "The letter-remover finds no [current setting of the letter-remover] in [the second noun]." instead.

Check waving the letter-remover at the restoration gel:
	abide by the don't change irretrievable rules for the restoration gel.

Check waving the letter-remover at something which is enclosed by the player:
	if the player wears the second noun:
		try taking off the second noun;
		if the player does not carry the second noun:
			say "Altering one's clothes while they're on can have some unfortunate side effects." instead;
	if the player does not carry the second noun and the second noun is not an uncontained fluid:
		try taking the second noun;
		if the player does not carry the second noun:
			let enclosure be the holder of the second noun;
			say "It isn't a good idea to change objects while they're [in-on the enclosure]." instead.

Check waving the letter-remover at something creating the letter-remover:
	if the disappointment text matches the regular expression ".*\s.*":
		let presumed second noun be the printed name of the second noun;
		let C be the number of words in presumed second noun;
		let presumed second noun be word number C in presumed second noun;
		now the prior named object is the second noun;
		say "The device buzzes, puzzled. It has tried to create a '[disappointment text]': evidently '[presumed second noun]' [are] too tightly bound to [their] modifiers and can't be manipulated separately[one of]. This is a serious problem in my field of study, incidentally[or][stopping][if the second noun is fixed in place or the second noun is scenery]. Or perhaps it just doesn't have sufficient power to handle [the second noun][end if]." instead;
	otherwise:
		if disappointment text is "":
			say "The device emits a distinctive triple tone, which means that the requested action would have entirely destroyed the target object. There are safety overrides to prevent it doing such a thing." instead;
		otherwise:
			say "The device buzzes, puzzled. It is unable to create anything recognizable called '[disappointment text]'[if the second noun is fixed in place or the second noun is scenery], or perhaps it just doesn't have sufficient power to handle [the second noun][end if]." instead.

[Check waving the letter-remover at something creating a crude thing:
	say "A safety override mechanism kicks into play before the operation is complete; the device plays a short snickering noise. Evidently its one joy in life is detecting and foiling practical jokes." instead;]

Check waving the letter-remover at something creating a person when the letter-remover device is not creature-enabled:
	say "[The second noun] [flicker] and there is a brief image of [a generated object] in [regarding the second noun][their] place, but a legal override kicks in: [a-an letter-remover] is hardware-crippled to prevent generating any living creature." instead.

Check waving the letter-remover at something creating an r-abstract thing when the letter-remover device is not upgraded:
	say "[The second noun] [flicker] and there is a brief image of [a generated object] in [regarding the second noun][their] place [--] the concept strangely embodied in a physical form [--] before the power gives out[one of]. I guess your device there just isn't tuned to reify abstracts[stopping]." instead.

Check waving the letter-remover at something creating a car:
	if the second noun is enclosed by a container (called outer):
		unless the outer is the garage or the outer is the synthesizer:
			say "It is probably not a good idea to create a car inside [the outer]. Perhaps [we] should put [the second noun] somewhere safer first." instead.

Check putting gel on something which is proffered by a car:
	if the second noun is enclosed by a container (called outer):
		unless the outer is the garage or the outer is the synthesizer:
			say "It is probably not a good idea to create a car inside [the outer]. Perhaps [we] should put [the second noun] somewhere safer first." instead.

Check waving the letter-remover device at something (this is the checking for danger rule):
	abide by the dangerous destruction rules for the second noun;
	[abide by the dangerous construction rules for the generated object.]

Check waving the letter-remover at a room creating the letter-remover:
	say "[The letter-remover] is powerless to make [the second noun] into anything called '[disappointment text]', but perhaps this is to be expected considering the size of the target. The device is after all a mere portable device with limited resources."

Check waving the letter-remover at something (called target) creating an uncontained fluid thing (called the liquid):
	if the target is in a container (called target holder) and the number of things in target holder is greater than 1 and target holder is not the synthesizer:
		say the liquid would make a mess in the target holder instead.

To say (X - a thing) would make a mess in (Y - a container):
	say "[We] better not. [one of][if X is seen][The X][otherwise][A X][end if] would make a real mess in [the Y][or][We] don't want to get [X] on everything in [the Y][cycling].";

Check waving the letter-remover at a room creating something which is not the letter-remover:
	abide by the dangerous destruction rules for the second noun;
	[abide by the dangerous construction rules for the generated object.]

Carry out waving the letter-remover device at something:
	let destination be the holder of the second noun;
	move the generated object to destination;
	if the second noun is part of destination and the generated object is not stuck:
		now the generated object is in the location;
	if the generated object is stuck:
		now the generated object is part of destination;
	move the second noun to the repository;
	if the generated object proffers the second noun and the generated object is not original: [we've managed to create a loop in the generation, as in lee+ass, leases, lass, ass]
		now every thing which proffers the second noun proffers the generated object;
		now the generated object does not proffer the generated object;
	otherwise:
		now the generated object is not proffered by anything;
		now every thing which proffers the second noun proffers the generated object;
	if an essential thing (called source) proffers the generated object:
		now the generated object is essential;
		if the second noun is derivate of the secret-plans:
			now the derivate of the secret-plans is the generated object;
	[if something (called source) which encloses an essential thing proffers the generated object:
		now the generated object is essential; ]
	[so that 'take it' or whatever will work, after we've made something: ]
	set pronouns from the generated object;
	now the generated object is marked-visible;
	now the second noun is marked invisible;
	record "using the letter-remover" as achieved;
	let current be the current setting of the letter-remover;
	remove current from the list of remaining letters, if present.
	[add the current setting of the letter-remover to the list of removed letters, if absent. ]

The list of remaining letters is a list of text that varies. The list of remaining letters is { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}.


Report waving the letter-remover device at something:
	if the scent-description of the generated object is not "":
		say "With a distinct whiff of [the scent-description of the generated object], [the second noun] [turn] into [a generated object]. [run paragraph on]";
	otherwise:
		say "[random-letter-removal-text][the second noun] [turn] into [a generated object]. [run paragraph on]";
	if the number of entries in the list of remaining letters is 0:
		let N be "Admiral Thoureaux award for removing every letter of the alphabet in one playthrough";
		unless N is a used achievement:
			say paragraph break;
			record N as an achievement;
	try examining the generated object;
	abide by the dangerous construction rules for the generated object;
	stop the action.


Report waving the letter-remover device at something creating a seen thing:
	say "[The second noun] [give] way to the now-familiar [generated object].";
	abide by the dangerous construction rules for the generated object instead.




Chapter 2 - The Homonym Paddle

[The original homonym paddle is never wielded by the player; access to it is entirely controlled via requests to the bartender at the Fleur d'Or drinks club. This is only partly to limit the player's options. It's also, narratively, to establish the restricted nature of powerful letter tools, and to create occasions for more engagement with other characters (since a lot of this sequence involves essentially secret manipulations of the synthesizer in the seminar room).

We do write a few of the routines to be more general-purpose, however, because a homonym function also becomes available in the workshop during the very end of the game.]

The homonym paddle is carried by the bartender. It is long and strong. The description is "Who had the idea of hitting things to make them swap with their homonyms, I couldn't guess. Nonetheless the toy [--] shaped like a ping-pong paddle and formed of coral-col[our]ed rubber [--] enjoyed a brief vogue in the 80s.

To prevent theft, the paddle is attached to the bartender's wrist by a thin steel cable and bracelet."

A thing has a number called the homonym index. The homonym index of a thing is usually 0.

To homonym-paddle (N - a thing):
	move the N to the repository;
	let X be the player;
	if N is:
		-- a screwdriver:
			let X be the screwdriver-drink;
		-- a gimlet:
			let X be the gimlet-drink;
		-- a rusty nail:
			let X be the rusty-nail-drink;
	unless X is the player:
		record "getting a product of the homonym paddle" as achieved;
		move the X to the dor-bar-top;
		if N is essential:
			now X is essential;
			if N is the derivate of the secret-plans:
				now derivate of the secret-plans is X;
		set pronouns from X;
		now X does not proffer X;
		now N proffers X;
		now X is marked-visible;
		now N is marked invisible;
		say "[one of]The bartender fishes around in the toolkit for [a N] and sets it on the bar with a flourish. [The patron] is watching this transaction in an interested way.

'This is good,' says the bartender, winking at us both (all?). 'You'll like this.' She raises the homonym paddle unnecessarily high in the air and smashes it down hard on [the N].

There's a crackling discharge of purple-toned lightning, and in place of [the N], a cocktail of the same name now sits on the bar. A few of the customers applaud.[or]'Right,' she says. She reaches into the toolkit for [the N]. 'This will be even better than last time,' she says. Then she tosses [the N] in the air and hits it with the paddle as though serving underhand at ping-pong.

Incredibly, the resulting cocktail glass winds up perfectly balanced on the paddle rather than flying into the wall, which is what would happen if I tried the same thing.

She grins at us and sets the glass down neatly on the bar.[or]This time she lays the paddle down on the bar and drops [the N] onto its surface. The purple lightning-ball obscures [the N] for a moment, then recedes to reveal the cocktail.[stopping]";


To decide what thing is the homonym-match of (target - a thing):
	let old text be the printed name of target;
	now old text is old text in lower case;
	let target-hash be the hash code of target;
	let target-index be the homonym index of target;
	repeat with item running through things in the repository:
		if the hash code of the item is target-hash and the homonym index of the item is not target-index:
			let new text be the printed name of item;
			now new text is new text in lower case;
			if new text is old text:
				decide on item;
	decide on player.

Chapter 3 - The T-inserter

The T-inserter machine is a fixed in place enterable container in the Sensitive Equipment Testing Room. The initial appearance is "At the cen[ter] of the room is a gleaming new T-inserter Machine[if the machine is non-empty], currently containing [a random thing in the T-inserter machine][end if][one of]. This is a state of the art device: letter removal has been well understood for decades, but insertion is much more dangerous and difficult, fraught with ambiguity[or][stopping]." The description is "Made of brushed steel, it resembles an industrial espresso machine, with a space in which to insert items. A dozen small nozzles poke into this space, and the grate beneath is ready to drain off any superfluity of T-ness. There is a tiny brass plate near the base of the machine."

Understand "space" and "grate" and "inserter" as the machine. The carrying capacity of the T-inserter Machine is 1.

The brass plate is part of the machine. Understand "base" as the brass plate. The description is "DENTAL CONSONANTS LTD [--] ABSOLUTELY NO PALATALS OR LABIALS [--] GUARANTEED".

The small nozzles are part of the machine. Understand "jets" or "conical" or "sharp" or "tips" or "tip" or "business end" as the nozzles. The description is "They have sharp conical ends, like cake-decorating tips. If [we] look closely, [we] see that the business end of each is cut out in a t-shape, each in a different font." Instead of doing something other than examining to the nozzles: say "Better leave repairs to a qualified professional."

Sanity-check inserting something (called item) into the t-inserter when the t-inserter contains the item:
	try silently taking the item;
	if the player carries the item:
		say "[We] momentarily lift [the item] out of [the t-inserter] and then drop [them] back in.";
		move the item to the t-inserter;
		try teeing the item instead;
	otherwise:
		do nothing instead.

Sanity-check inserting something irretrievable into the T-inserter:
	abide by the don't change irretrievable rules for the noun.

After inserting something into the T-inserter:
	try teeing the noun.

Report entering the T-inserter:
	say "[one of]It is not really meant for people, but [we] manage to get into the T-inserter without breaking anything[or][We] climb into the T-inserter again[stopping]. It briefly whirs to life, then gives a disappointed sort of whuff when it finds no good place for T-insertion in 'alexandra.'";
	if Brock is in location:
		say "[line break]'Hey, what are you doing?' Brock asks.";
	stop the action.

teeing is an action applying to one thing. The teeing action has an object called the goal-object (matched as "to"). The teeing action has a number called the t-count. The teeing action has a list of objects called the possible-goals. The teeing action has a list of texts called the possible-goal-texts.

[We can't guess where to stick our ts in order to arrive at other objects. And because the starting object might already contain one or more instances of T, we can't just strip the Ts from our goal objects and see if they match. What we have to do instead is go through the name of all our target objects, subtract the name of the starting object, and see if all that is left is a string of ts. This gives us an opportunity to do some detailed work with individual characters:]

Setting action variables for teeing something:
	let starting text be printed name of the noun;
	let Y be the single-letter-hash of "t";
	let comparison number be the hash code of the noun with Y added;
	repeat with item running through things in repository:
		if the comparison number is the hash code of the item:
			let the goal text be the name of the item minus the name of the noun;
			let matching success be true;
			if the goal text is "0", let matching success be false;
			let X be the number of times the goal text matches the regular expression "<tT>";
			[say "[item]: [goal text] (success [matching success])[line break]";]
			if the matching success is true and goal text exactly matches the regular expression "<tT>+":
				let name text be printed name of item;
				unless name text is listed in possible-goal-texts:
					if the goal-object is multiply-made or the goal-object is nothing:
						now the goal-object is the item;
						now the t-count is X;
					add item to the possible-goals, if absent;
					add name text to possible-goal-texts.

To decide what text is the name of (Y - an object) minus the name of (X - an object):
	let starting text be printed name of X;
	now starting text is starting text in lower case;
	let goal text be the printed name of Y;
	now goal text is goal text in lower case;
	let character count be the number of characters in the goal text;
	let matching success be true;
	let next be 1;
	let max be the number of characters in the starting text plus one;
	repeat with i running from 1 to character count:
		if next is less than max:
			if character number i in the goal text is character number next in the starting text:
				replace character number i in the goal text with "-";
				increase next by 1;
	if next is less than max:
		now matching success is false;
	replace the regular expression "\p*" in the goal text with ""; [we strip out the replaced bits]
	if matching success is true, decide on the goal text;
	otherwise decide on "0".

Check teeing something:
	if the goal-object is nothing,
		say "The T-inserter machine whirs to life, then gives a disappointed sort of whuff when it finds no good place for t-insertion." instead.

Check teeing something:
	abide by the dangerous destruction rules for the noun.

Check teeing the ear:
	if the goal-object is a tear and an alterna-tear (called the goal) is in the repository:
		now the goal-object is the goal.

Carry out teeing something:
	now the goal-object is not proffered by anything;
	if the goal-object is r-abstract:
		complete "Test T-inserter on making abstracts";
	if the goal-object is a person:
		complete "Test T-inserter on making creatures";
	if the number of entries in the possible-goals is greater than 1:
		now the goal-object is multiply-made;
	if noun is essential:
		now goal-object is essential;
		if noun is the derivate of the secret-plans:
			now derivate of the secret-plans is goal-object;
	now every thing which proffers the noun proffers the goal-object;
	move the goal-object to the holder of the noun;
	now goal-object is marked-visible;
	now the noun is marked invisible;
	record "using the T-inserter" as achieved;
	move the noun to the repository.

A thing can be multiply-made. A thing is usually not multiply-made.

After teeing something:
	if the number of entries in the possible-goals is greater than 1:
		repeat with item running through possible-goals:
			if item is not the goal-object and item is not multiply-made:
				continue the action;
	otherwise:
		continue the action;
	let N be the number of entries in the possible-goals;
	say "[if t-count is 1]There is a loud and satisfying pop[otherwise]There are [t-count in words] small pops[end if] from the machine as it turns [the noun] into [a goal-object]. [run paragraph on]";
	if the goal-object is not examined:
		try examining the goal-object;
	say "There now: the T-inserter has constructed [if N is 2]both[otherwise]all of[end if] [possible-goals]. Not very stable, it seems. Slango will be interested to know that.";
	complete "Test T-inserter on situations where it could build more than one thing";
	set pronouns from the goal-object;
	abide by the dangerous construction rules for the goal-object instead.

Report teeing something:
	say "[if t-count is 1]There is a loud and satisfying pop[otherwise]There are [t-count in words] small pops[end if] from the machine as it turns [the noun] into [a goal-object].";
	let line break needed be true;
	if the goal-object is not examined:
		try examining the goal-object;
		now line break needed is false;
	if the number of entries in the possible-goals is greater than 1:
		let N be the number of entries in the possible-goals;
		say "[if line break needed is true][line break][end if]Of course, there were other options there: the T-inserter could have made [N in words] words. But it seems to be disambiguating to [the goal-object]. The question now is whether it would do so consistently or whether its behavi[our] is underdetermined; [we] don't have time for a really thorough trial set, but checking a couple more times may be indicative.";
	set pronouns from the goal-object;
	abide by the dangerous construction rules for the goal-object instead.

Test it-construction with "autoupgrade / wave a-remover at pita / wave p-remover at pit / wave t-remover at it / put i in t-inserter / get it / wave t-remover at it / put i in t-inserter" holding the pita in the Sensitive Equipment Testing Room.

Chapter 4 - The Synthesizer

The plexiglas case is an enterable container in the Language Studies Seminar Room. It is transparent, closed, openable, lockable, and locked. It is fixed in place. The initial appearance is "A massive plexiglas case takes up one corner of the room." The description is "The case is made of very thick protective plastic on a metal frame[if the screws are part of the plexiglas case and the plexiglas case is lockable]. It is thoroughly locked shut; I don't think [we][']ll have any luck with normal forms of approach. However, plexiglas is a cuttable substance with the right tools, and then there are the screws at the back[otherwise if the plexiglas case is not lockable]. The lid has been compromised by a saw, and the case is now permanenty open[end if]."

Test plexibug with "tutorial off / get plexiglas" in the Language Studies Seminar Room.

A description-concealing rule when the crossword is marked for listing:
	if the crossword is in the synthesizer and the plexiglas case is closed:
		now the crossword is not marked for listing.

Rule for printing the name of the synthesizer when writing a paragraph about something:
	say "compact but high-powered late model synthes[ize]r".

Some screws are part of the plexiglas case.

[We would also have to make a rule preventing the player from cutting the plexiglas with the sword, except that the sword only exists after the plexiglas is opened.]

Sanity-check opening or closing the plexiglas when the plexiglas is not openable:
	say "Thanks to our earlier efforts, the plexiglas is now open permanently." instead.

Table of Ultratests (continued)
topic	stuff	setting
"plexiglas"	{ jigsaw, sword }	Seminar Room

Test plexiglas with "tutorial off / cut plexiglas / cut plexiglas with jigsaw / g / cut plexiglas with sword / drop sword / cut plexiglas / close plexiglas" [in the Seminar Room holding the jigsaw and the sword.]

Sanity-check cutting the plexiglas with something:
	if the plexiglas is not lockable:
		say "I think [we] have done enough damage here." instead;
	else if the plexiglas is unlocked:
		say "No need: that would only make noise, and it's already open." instead.

Carry out cutting the plexiglas with the jigsaw:
	now the plexiglas is open;
	now the plexiglas is unlocked;
	now the plexiglas is not lockable;
	now the plexiglas is not locked;
	now the plexiglas is not openable;
	now the screwdriver does not unlock the plexiglas.

Report cutting the plexiglas with the jigsaw:
	say "It's not a silent process, but it's not as loud as I had feared, either. The jigsaw cuts straight through the plexiglas, freeing it from its attachment to the locking mechanism." instead.

The screwdriver unlocks the plexiglas case.

Some screws are a thing. The screws are plural-named. The description of the screws is "Heavy-duty flathead screws, each about an inch long[if the screws are part of the plexiglas case and the plexiglas case is lockable]. They aren't sealed over, so it would be possible to unscrew them, given a screwdriver[end if]."

Instead of taking or turning or taking off the screws when the screws are part of the plexiglas case:
	if the screwdriver is marked-visible:
		if the player is not carrying the screwdriver:
			try taking the screwdriver;
		if the player is not carrying the screwdriver:
			stop the action;
		try unlocking the plexiglas case with the screwdriver;
		if the plexiglas case is not locked:
			rule succeeds;
	otherwise:
		say "I don't think [we] can pry the screws out with our fingers."

Understand "turn [screws] with [screwdriver]" or "unscrew [screws] with [screwdriver]" as unlocking it with.
Understand "turn [screws] with [something]" or "unscrew [screws] with [something]" as unlocking it with.
Understand "unscrew [plexiglas case] with [screwdriver]" as unlocking it with.
Understand "unscrew [plexiglas case] with [something]" as unlocking it with.

Check unlocking the plexiglas case with something which is not the screwdriver:
	if the heft of the second noun is greater than 3:
		say "[The second noun] [are] hardly designed for unscrewing things, and won't fit into the necessary angle anyway." instead;
	else:
		if the second noun is floppy:
			say "[The second noun] [are] not at all suited to the purpose. There's a reason they make screwdrivers for this." instead;
		else:
			say "[We] try contriving to get an edge of [the second noun] into the slot of the screws, but [the second noun] just [slip] around unhelpfully. There's a reason they make screwdrivers for this." instead;

Test unscrewing-bug with "unscrew case with as / unscrew screws with as" holding the as-coin in the Seminar Room.

Setting action variables for unlocking the screws with something:
	if the screws are part of the plexiglas case:
		now the noun is the plexiglas case.

Carry out unlocking the plexiglas case with the screwdriver:
	move the screws to the location.

Instead of unlocking the plexiglas case with the screwdriver for the first time:
	say "[We] squeeze ourselves against the wall and angle to reach the screws with the screwdriver. I start on the first screw when[--]

'Is someone in the Seminar Room?' asks a male voice in the hall. 'I thought I heard something.'

'I don't think so.'

There's a listening silence from outside. [We] hold absolutely still.

Finally the footsteps move away again. It's probably safe to try again now, when I'm feeling a tiny bit calmer."

Report unlocking the plexiglas case with the screwdriver:
	say "[We] awkwardly and silently squeeze against the wall and angle ourself so that [we] can reach the screws with the screwdriver. It's annoying work, but eventually [we] do work all the screws free enough that the case could be opened." instead.

Sanity-check locking the plexiglas case with something:
	say "[We][']ll never get the screws back in. [We] just have to hope no one notices what [we] did until [we] [are] long gone." instead.
Sanity-check locking keylessly the plexiglas case:
	say "[We][']ll never get the screws back in. [We] just have to hope no one notices what [we] did until [we] [are] long gone." instead.
Sanity-check turning the screws when the screws are not part of the plexiglas case:
	say "There's no point now: they're not holding anything in place." instead.

Instead of inserting something into the plexiglas case:
	try inserting the noun into the synthesizer.

Instead of ushering someone onto the plexiglas case:
	try ushering the noun onto the synthesizer.

Sanity-check entering the plexiglas case:
	synth-entering-hack;
	stop the action.

Sanity-check entering the synthesizer:
	synth-entering-hack;
	stop the action.

To synth-entering-hack:
	if the player is enclosed by the plexiglas case:
		say "We are already in [the noun]." instead;
	if the plexiglas case is closed:
		say "The plexiglas case is closed." instead;
	if the player is not in location:
		say "We cannot reach it from [the holder of the player]." instead;
	say "[one of]It is not really made for people, but we somehow manage to get into the synthesizer without breaking it[or]We get back into the synthesizer[stopping].";
	move the player to the synthesizer, without printing a room description;
	stop the action.

After exiting when the container exited from is the synthesizer:
	move the player to the location, without printing a room description;
	continue the action.

The synthesizer is an enterable container in the plexiglas case. The heft of the synthesizer is 4. The synthesizer is fixed in place. Understand "synth" or "synthesiser" or "machine" as the synthesizer.
	The description is "It is designed to accept two items and then be turned on. It is shiny and white, and looks a little like a bathtub for very short people."
	The introduction is "It was a full-sized, human version of this that made us what [we] [are] now, so the object makes both of us feel a little skittish and self-conscious."

A crossword is in the synthesizer. The description of the crossword is "It looks like it's been snipped out of Chard-Farmer's Weekly, but it hasn't been filled in at all." Understand "puzzle" as the crossword.

Understand "solve [crossword]" or "fill in/out [crossword]" or "do [crossword]" or "finish [crossword]" as a mistake("My mother is good at these, but I've never had much luck with them myself.").

After inserting something into the synthesizer for the first time:
	say "Voices from the hallway. I freeze. For a moment [we] hear them all too sharply: 'You check downstairs, I'll ask the professors.' It's a conversation of security guards, or police, or Bureau Officers. Someone is being looked for.

Then it's over. [run paragraph on]";
	continue the action.

Understand "activate [something]" as switching on.
Understand "deactivate [something]" as switching off.

Does the player mean switching on the synthesizer:
	it is very likely.

Does the player mean switching on the massive switch:
	it is very likely.

Does the player mean switching on the reclamation computer:
	it is very likely.

Understand "synthesize" as synth-activating. Synth-activating is an action applying to nothing.

Carry out synth-activating:
	if synthesizer is marked-visible:
		try switching on the synthesizer instead;
	if programmable dais is marked-visible:
		if the switch-setting of the massive switch is swap homonym:
			try turning the massive switch;
		try switching on the programmable dais instead;
	otherwise:
		 say "There is no synthesizer here."

Sanity-check switching on the synthesizer:
	repeat with item running through things in the synthesizer:
		if item is irretrievable:
			abide by the don't change irretrievable rules for item.

Instead of switching on the synthesizer:
	synthesize contents of synthesizer.

To synthesize contents of (source - a thing):
	let contents-list be a list of things;
	if source is a container:
		add the list of things in source to contents-list;
	otherwise:
		add the list of things on source to contents-list;
	let count be the number of entries in contents-list;
	unless the count is two:
		say "An indicator message lights up: FAIL: TWO OBJECTS REQUIRED FOR SYNTHESIS.";
		stop;
	let X be entry 1 in contents-list;
	let Y be entry 2 in contents-list;
	now the-other-thing is Y;
	abide by the synthesis-override rules for X;
	now the-other-thing is X;
	abide by the synthesis-override rules for Y;
	let comparison number be the hash code of X with the hash code of Y added;
	repeat with item running through things in the repository:
		if the comparison number is the hash code of the item:
			let the goal text be the name of the item minus the name of X;
			replace the text " " in goal text with "";
			if the goal text is not "0":
				let Y-name be the printed name of Y;
				now Y-name is Y-name in lower case;
				if goal text exactly matches the text Y-name:
					unless the item is the passage-place:
						match-add item;
				otherwise:
					let the goal text be the name of item minus the name of Y;
					replace the text " " in goal text with "";
					let X-name be the printed name of X;
					now X-name is X-name in lower case;
					if goal text exactly matches the text X-name:
						unless the item is the passage-place:
							match-add item;
	let the chosen article be the best synthesis-match using X;
	if the chosen article is not the letter-remover device:
		if the heft of the chosen article is greater than 4 and source is synthesizer:
			let N be the printed name of chosen article;
			now N is N in upper case;
			say "An indicator message lights up: OVERRIDE: GENERATED OBJECT [N] EXCEEDS MAXIMUM SIZE LIMIT.";
			stop;
		abide by the dangerous destruction rules for X;
		abide by the dangerous destruction rules for Y;
		now the chosen article is not proffered by anything;
		now X proffers the chosen article;
		now Y proffers the chosen article;
		if an essential thing (called parent) proffers the chosen article:
			now the chosen article is essential;
			if X is derivate of the secret-plans or Y is derivate of the secret-plans :
				now the previous derivate of the secret-plans is the derivate of the secret-plans;
				now the derivate of the secret-plans is the chosen article;
		[if something which proffers the chosen article encloses an essential thing:
			now the chosen article is essential; ]
		now X is in the repository;
		now Y is in the repository;
		move the chosen article to the source;
		record "using the synthesizer" as achieved;
		say "[The source] [if the source is a container]hums like a microwave oven for 43 seconds, then pings. Inside there [is-are a list of things *in the source][otherwise]glows vibrant blue for five seconds, leaving behind [a list of things *in the source][end if].";
		if the chosen article is not examined:
			try examining the chosen article;
		set pronouns from the chosen article;
		now the chosen article is marked-visible;
		now X is marked invisible;
		now Y is marked invisible;
		abide by the dangerous construction rules for the chosen article;
	otherwise:
		say "[The source] whirs for a moment, then dies down again.";

Chapter 5 - The Spinner

Section 1 - Physical Description

[ The function of the spinner is to reverse a word and produce the result, assuming that anything does result: YAM / MAY, DOG / GOD, EEL / LEE, LEER / REEL, PANS / SNAP, PIT / TIP, SAP / PAS are all creatable using the spinner. Accordingly, the items it produces are a strict subset of the items that can be created using the anagramming gun; besides that, it's not portable and doesn't fire at a distance, so it has some other restrictions as well. This makes it more of a toy than most of the other letter devices to be found in the game.

The spinner belongs to a very early stage of the game's development. Originally the plan was to have the spinner as a decoration in the Fleur d'Or, and the player would need to distract the staff there in order to gain access to it and use it. (There was also a turntable that would move one letter from the front to the back or back to front, as in APE > PEA or ARC > CAR.)

In practice, however, the small number of possibilities associated with these tools didn't yield very many interesting puzzles, so the spinner was commented out for most of the game's development period.

It owes its reappearance in the game to the LEER/REEL easter egg. While it would have been possible to arrange this easter egg in the Bureau, using the anagramming gun to complete the change (and indeed it was initially implemented that way), it felt odd to have a projector in the Bureau but not one in the cinema. In particular, I was concerned that creating an achievement such as Projectionist would feel misleading and annoying to many players if the projector in question were concealed inside the Bureau rather than being in the obvious place for a projector to be.

So the projection booth was added to the cinema and the spinner reintroduced to make it possible to create the reel before the anagramming gun was rediscovered. (By the time the player gets the anagramming gun, it is impossible to reach the cinema again.)

That in turn necessitated other changes as follow:

-- placing another object in the projection booth to make it seem other than wholly pointless when the player first finds it; so the jotter is moved there from the crate in the crawlspace and the notes on the jotter are changed;
-- creating an initial object to sit on the spinner to demonstrate its functionality, which was going to be a figurine of a god/dog; this was a very oblique reference to Apollo Agyieus, a guardian of doorways traditionally worshipped in aniconic form as a conical pillar garlanded with flowers. Both the god and the dog are guardian figures.
-- removing some other distracting text from Roget Close so that the spinner is allowed to stand out more;
-- coming up with more immediate functionality for the spinner so that it won't seem such a red herring

...and at this point I decided to convert the spinner into a proper puzzle of its own, one in which the gate unlocks only if you give the spinner something that it can convert. So at that point the god/dog had to be removed to let the player solve this herself; so I buried the dog in Monument Green and associated a different achievement with finding it.

This is all a lot of bother just for the sake of adding an achievement/easter egg that most players probably won't notice. In each case, though, I felt as though the result of the design fix was a richer, more interesting setting with more playful manipulation available. Adding the yam to the game also provided another purpose for the farmer, who had been relatively useless (other than as the provider of the totally optional lime) ever since he stopped selling chard.  ]

The spinner is part of the spinner-gate. It is an enterable supporter. The posture of the spinner is standing. The spinner allows seated and standing. Understand "sculpture" or "mirror" or "statue" or "pedestal" or "cone" as the spinner.
	The description of the spinner is "The base of the sculpture is a cone about four feet tall. On top of that is a flat circular pedestal, and there is a mirror that rotates around the outer circumference. The mirrored surface faces inward, so that it is sometimes reflecting [if the spinner is non-empty][the random thing on the spinner] on the pedestal[otherwise]whatever might be on the pedestal (currently nothing)[end if] and sometimes concealing [if the spinner is non-empty][them][otherwise]it[end if] from view.".
	The printed name of the spinner is "pedestal".
	The carrying capacity is 1.

Instead of examining the spinner:
	say "[description of the spinner][line break]";
	if the player wears the monocle:
		try looking at the spinner through the monocle;
	if the spinner is non-empty:
		follow the spinner-turning rule;
		say line break.

Sanity-check switching on the spinner:
	say "The sculpture appears to be permanently on." instead.

Sanity-check switching off the spinner:
	say "If there is an off-switch, it's nowhere we can see it." instead.

Instead of climbing the spinner:
	try entering the spinner.

Sanity-check entering something which is enclosed by the spinner:
	say "It would be very difficult to get [in-on the noun] while [they] [are] spinning on the pedestal." instead.

Instead of climbing the spinner-gate:
	if the player is on the spinner:
		say "The gate is still too high, even now that we're on the sculpture.";
	otherwise:
		say "The iron bars of the gate are too close to climb through and too tall to climb over."

Section 2 - Spinning Functionality

Every turn rule when the location is Roget Close and the spinner is non-empty (this is the spin the spinner rule) :
	unless going or approaching: [Otherwise we might get a double spin when entering the room]
		follow the spinner-turning rule;
		say line break.

This is the spinner-turning rule:
	let the chosen article be the first thing held by the spinner;
	let X be the chosen article;
	let goal text be printed name of the X;
	now goal text is goal text in lower case;
	let max characters be the number of characters in the goal text;
	let substitute text be some text;
	repeat with Z running from 1 to max characters:
		now substitute text is "[character number Z in goal text][substitute text]";
	now goal text is substitute text;
[	say "[substitute text]";]
	[since the spinner's likely to be undoing its own work, allow it to get the original back.]
	if the chosen article is proffered by something (called the source) which is not the chosen article:
		if the hash code of the source is the hash code of X:
			let item text be the printed name of source;
			now item text is item text in lower case;
			if the goal text is item text:
				now the chosen article is the source;
	if the chosen article is X:
		let x-homonym be the homonym index of X;
		let x-hash be the hash code of X;
		repeat with item running through things in the repository:
			if the hash code of the item is x-hash:
				let item text be the printed name of item;
				now item text is item text in lower case;
				if the goal text is item text:
					unless item is the reel or item is the snap or the homonym index of item is x-homonym:
					[Make sure that we always get the fishing reel and the sound snap rather than the film reel or the clothes snap. Also make sure that a palindrome is not transformed into another instance of itself.]
						now the chosen article is the item;
						break;
	if the chosen article is not X:
		abide by the dangerous destruction rules for X;
		now the chosen article is not proffered by anything;
		now everything which proffers X proffers the chosen article;
		if an essential thing (called source) proffers the chosen article:
			now the chosen article is essential;
			if X is the derivate of the secret-plans:
				now derivate of the secret-plans is the chosen article;
		[ if something (called source) which proffers the chosen article encloses an essential thing:
			now the chosen article is essential; ]
		now X is in the repository;
		move the chosen article to the spinner;
		say "[if going or looking]After the mirror does its work,[otherwise]The mirror rotates in leisurely fashion, and when it is done[end if] there [regarding the first thing held by the spinner][are] [a first thing held by the spinner].[no line break]";
		[The lines below is a hack to get rid of an annoying triple paragraph break caused by "try examining the chosen article".]
		let N be the chosen article;
		if N is unexamined:
			say "[paragraph break][N description][no line break]";
		if the player wears the monocle:
			say paragraph break;
			if the chosen article is original:
				say "[The monocle] [ping] happily as [we] sight [the N] with the crosshairs.[no line break]";
			otherwise:
				say "There is a dismissive blatt from [the monocle], and transposed over [the N] is a faint, [if N is edible and N is proffered by something inedible]unappet[izing][otherwise]greenish[end if] image of [a list of things which proffer N].[no line break]"; [end of hack]
		record "using the spinner" as achieved;
		if the spinner-gate is closed:
			now the spinner-gate is open;
			now the spinner-gate is unlocked;
			say "[paragraph break]The gate clicks open. ";
		record "using the spinner" as achieved;
		abide by the dangerous construction rules for the chosen article;
		set pronouns from the chosen article;
		now the chosen article is marked-visible;
		now X is marked invisible;
		if the chosen article is a person and the chosen article is on the spinner:
			say "[The chosen article] [get] down from the sculpture. ";
			move the chosen article to location;
	otherwise:
		if looking:
			say "[Regarding the first thing held by the spinner][They] [do] not change, however. ";
		otherwise:
			say "The mirror revolves for a moment, [one of]without effect[or]without changing [the list of things *in the spinner][at random], though the word '[substitute text]' appears in startling green on the mirror's surface. "

Table of Ultratests (continued)
topic	stuff	setting
"yambug"	{ roll of bills, monocle }	Hesychius Street

Test yambug with "tutorial off / wear monocle / buy yam / n / w / put yam on pedestal / z / x yam" [holding the roll of bills and the monocle in Hesychius Street.]

Rule for writing a topic sentence about something (called special-target) which is on the spinner:
	say "[The special-target] [are] slowly revolving on [a spinner]. [run paragraph on]";
	if the special-target is as-yet-unknown:
		introduce the special-target;
		now the introduction of the special-target is "";
	follow the spinner-turning rule.

Rule for disclosing exterior of something (called special-target) which is on the spinner:
	say "[The special-target] [are] slowly revolving on [a spinner]. [run paragraph on]";
	follow the spinner-turning rule.

Rule for disclosing contents of the spinner (this is the spinner-content rule):
	say "On [the spinner], [the first thing held by the spinner] [revolve] idly. [run paragraph on]";
	follow the spinner-turning rule.

Test spin-plans with "tutorial off / wave l-remover at plans / put pans on spinner / get snap / i / wave s-remover at snap / i / put nap on spinner / get pan / i / n" holding the secret-plans in Roget Close.

Table of Ultratests (continued)
topic	stuff	setting
"spinner"	{ leer, dog }	Roget Close

Test spinner with "tutorial off / look / z / get all / put remover on spinner / z / get remover / put god on spinner / get dog / put leer on spinner / look / z / get reel / g / n / test projecting"[ holding the leer in Roget Close].

Test projecting with "put reel in projector / turn projector on" in the Projection Booth.

Chapter 6 - The Turntable

[The turntable is a supporter. It is scenery. The carrying capacity is 1. The description is "A swiftly rotating platform able to go clockwise or anticlockwise. It is currently set to [rotation-direction]." Understand "table" or "turn table" as the turntable.

Rotation-direction is a kind of value. The rotation-directions are clockwise and anticlockwise. Understand "counterclockwise" and "widdershins" as anticlockwise. The turntable has a rotation-direction.

Understand "set [turntable] to [rotation-direction]" as setting it to the direction. Setting it to the direction is an action applying to one thing and one rotation-direction.

Instead of vaguely setting the turntable:
	if the turntable is clockwise, try setting turntable to the direction anticlockwise; otherwise try setting the turntable to the direction clockwise.

Carry out setting it to the direction:
	now the rotation-direction of the turntable is the rotation-direction understood.

Report setting it to the direction:
	say "[The turntable] now goes [the rotation-direction of the turntable]."

Every turn when the turntable is visible and something is on the turntable:
	if not looking:
		follow the turntable-turning rule;
		say paragraph break.

This is the turntable-turning rule:
	let the chosen article be a random thing on the turntable;
	let X be the chosen article;
	let goal text be printed name of the X;
	if the turntable is clockwise
	begin;	[put first letter at the end, as in ape --> pea]
		if the goal text matches the regular expression "(.)(.*)", replace the regular expression "(.)(.*)" in goal text with "\2\1";
	otherwise;	[put last letter at the front, as in arc --> car]
		if the goal text matches the regular expression "(.*)(.)", replace the regular expression "(.*)(.)" in goal text with "\2\1";
	end if;
	repeat with item running through things in the repository
	begin;
		if the goal text exactly matches the text "[item]", now the chosen article is the item;
	end repeat;
	if the chosen article is not X
	begin;
		now the chosen article is not proffered by anything;
		now everything which proffers X proffers the chosen article;
		now everything which is on the turntable is in the repository;
		move the chosen article to the turntable;
		say "[if looking]After the turntable does its work,[otherwise]The turntable whirls faster than we can follow, and when it is done[end if] there [is-are a list of things on the turntable]. ";
	otherwise;
		if looking
		begin;
			if exactly one thing is on the turntable, say "It does";
			otherwise say "[The list of things on the turntable] do[es]";
			say " not change, however. ";
		otherwise;
			say "The turntable spins for a moment, [one of]then dies down again[or]without effect[or]without changing [the list of things on the turntable][at random]. ";
		end if;
	end if.

Rule for disclosing exterior of something (called special-target) which is on the turntable:
	say "[The special-target] [are] spinning rapidly [rotation-direction of the turntable] on [a turntable][if a thing is on the turntable], together with [a list of mentionable things which are on the turntable][end if]. [run paragraph on]";
	follow the turntable-turning rule.

Rule for disclosing contents of the turntable (this is the turntable-content rule):
	say "On [the turntable], [a list of things on the turntable] [spin] [rotation-direction of the turntable]. [run paragraph on]";
	follow the turntable-turning rule. ]

Chapter 7 - Authentication Scope

An authentication scope is a kind of thing.

The secretary carries an authentication scope called the Regulation Authentication Scope.

In the backpack is an authentication scope called a monocle. The description of the monocle is "This is no mere fashion accessory. It is the very top grade of authentication scope, designed for people who have to use them all day, and normally available only to employees of the Bureau of Orthography. If [we] look through the monocle at something, [we] can see its true nature, regardless of spelling changes." The monocle is wearable. The monocle is illegal.
	The introduction of the monocle is "You like that? I thought you might be impressed. My father got it for me. 'For research,' he said, but I think he knew I just coveted them. At any rate, you're not the only one with equipment."
	The monocle is essential.
	The monocle covers the face-area.

Last after examining something when the player wears the monocle (this is the use monocle after examine rule):
	if the noun is not the monocle:
		try looking at the noun through the monocle;
	continue the action.

After wearing the monocle:
	if the player is not in the kayak:
		say "Everything turns computer-monitor green when viewed through our right eye. And staring fixedly at anything will turn up its authenticity status."

Understand "stare at [something]" or "stare fixedly at [something]" as examining.

The description of an Authentication Scope is usually "It looks like a small hand-held telescope, or perhaps a very posh kaleidoscope: all brown leather and brass fittings, and a good heft indicating quality materials. The sophisticated electronics are all concealed within. If [we] look through the scope at something, [we] can see its true nature, regardless of spelling changes."

Instead of searching a scope:
	try looking at a random thing in the location through the noun.

Understand "look at [something] through/with/using [something preferably held]" as looking at it through.
Understand "examine [something] with/through [something preferably held]" as looking at it through.
Understand "look through/with/using [something preferably held] at [something]" as looking at it through (with nouns reversed).

Looking at it through is an action applying to one visible thing and one carried thing.

Check an actor looking at something through something:
	if the second noun is not an Authentication Scope
	begin;
		if the actor is the player, say "[The second noun] won't give [us] a clear view of [the noun]." instead;
		stop the action;
	end if.

Check an actor looking at something through something:
	if the noun is an authentication Scope and the second noun is the noun
	begin;
		if the actor is the player, say "[We] can't look through [the noun] at itself." instead;
		stop the action;
	end if.

Check an actor looking at something through something:
	if the noun is the actor
	begin;
		if the actor is the player, say "[We] can't turn the scope on ourselves [--] which might be just as well, really, because I think it would give me a headache to see the two of us conjoined at the hip. Or however the scope would show us, anyway." instead;
		stop the action;
	end if.

Carry out looking at a mirror through something:
	say "[The noun] [are] real enough, and [the second noun] pings approvingly.

But laid over the reflection we can see the two of us as we used to look: you a little shorter than our current body, me taller and male and needing a shave. I'm not sure whether it makes me feel better or worse to see us like that." instead.

Test reflecting-bug with "x reflection / wear monocle / x reflection / look at reflection through monocle" holding the monocle in sigil street.

Carry out looking at it through:
	if the noun is original or the noun is disguised:
		[play the sound of scope success;]
		say "[The second noun] [ping] happily as [we] sight [the noun] with the crosshairs.";
	otherwise:
		[play the sound of scope failure;]
		say "There is a dismissive blatt from [the second noun], and transposed over [the noun] is a faint, [if the noun is edible and the noun is proffered by something inedible]unappet[izing][otherwise]greenish[end if] image of [a list of things which proffer the noun]."

Report someone looking at something through something:
	if the noun is original, say "In response [the actor] [look] through [the second noun] at [the noun], then [nod] briskly. '[one of]The genuine article[or]Definitely not fake[or]Looks clean[or]Not a forgery[or]Real[or]Yup, authentic[at random].'";
	otherwise say "Thoughtfully [the actor] [peer] through [the second noun] at [the noun], then [regarding the actor][frown]. '[one of]Fake[or]An obvious forgery[or]Not at all the real thing[or]Bogus[or]I hope that came with a money-back guarantee[as decreasingly likely outcomes]!' [regarding the actor][they] [one of][say][or][remark][or][exclaim][as decreasingly likely outcomes]."

After the secretary looking at something illegal through a scope:
	stop the action.

After the secretary looking at the disguised pass through a scope:
	say "The secretary raises her Authentication Scope to look at the pass. There is a moment of silence. The scope does nothing.";
	now player-is-allowed is true.

After the secretary looking at the undisguised pass through a scope:
	say "The secretary raises the scope to look at the pass. Her eyes widen at the blatant forgery. 'Stay right there, buddy,' she says. From her tone of voice, this is obviously the most entertaining thing that has happened to her this fiscal year.

It is also a wholly unnecessary command, because she has pressed a button that puts the antechamber into lock-down mode.

There follows a long interrogation and a short trial.";
	end the story saying "[We] pass the rest of our days stamping lic[ense] plates together"

After someone looking at the player through an authentication Scope:
	say "[The actor] turns the Authentication Scope on us. You seem calm, but I'm nervous as hell.

But I have to say, you were right: the scope neither beeps nor blatts. [The actor] tries twisting the end as though bringing a telescope into focus, but nothing changes.

'Must be broken,' mutters [the actor]."

First carry out looking at the inscription through an authentication scope:
	say "[The second noun] begins to whirr and whirr, as though something inside has caught in an unresolvable loop. After a very long time, it whirrs down again without any noise of rejection or acceptance." instead.

Chapter 8 - The Origin Paste

A thing can be disguised or undisguised. A thing is usually undisguised.

After someone looking at a disguised thing through an authentication scope:
	say "[The person asked] frowns, but the scope makes no sound."

Instead of looking at a disguised thing through an an authentication scope (called the scope):
	say "[The scope] fails to make any sound or response at all, but no green image forms revealing the true nature of [the noun]."

The player is disguised.

The Origin Paste is a disguised illegal thing on the bar-top. The origin paste is essential. The indefinite article is "some".

The origin paste can be won or unwon. The origin paste is unwon.

Instead of taking the origin paste when the origin paste is unwon:
	say "Without even glancing away from what he's doing, Parker the barman says, 'That's reserved.'"


The description of the origin paste is "A cake of pale purple: it is able to disguise letter-reformed objects so that they don't look like obvious frauds, or even show up under authentication.

The only problem with it is the distinctive smell."
	The introduction is "The Origin Paste is powerful stuff, and worth a good bit of money."
	The scent-description is "overpowering French lavender".

Instead of eating or tasting the paste:
	say "[one of]I once tried some lavender sorbet at a swank little Milanese gelato shop. This is like that, only less icy and more chalky.[or]Sorry, it's not an experience I care to repeat.[stopping]".

Instead of smelling the player:
	say "[We] smell of lavender. It's not as bad a reek as it was earlier, though. No one would think it was anything but soap."

Sanity-check putting the origin paste on something when the origin paste is in a closed backpack:
	try opening the backpack.

Sanity-check putting the origin paste on the restoration gel:
	try putting the restoration gel on the origin paste instead.

Sanity-check inserting the origin paste into the restoration gel:
	try putting the restoration gel on the origin paste instead.

Sanity-check inserting the origin paste into the tub:
	try putting the restoration gel on the origin paste instead.

Sanity-check putting the origin paste on the tub:
	try putting the restoration gel on the origin paste instead.

Instead of putting the paste on something:
	record "using the Origin Paste" as achieved;
	say "[We] [if a person who is not the player is marked-visible]surreptitiously [end if]smear some of [the paste] onto [the second noun]. Nothing obvious happens, of course, but that is the whole point.";
	now the second noun is disguised.

Instead of smelling a disguised thing:
	say "Lavender wafts back at us."

The ash is disguised.

Table of Ultratests (continued)
topic	stuff
"originpaste"	{origin paste, tub}

Test originpaste with "tutorial off / x paste / eat paste / smell paste / smell me / touch paste / lick paste / put paste on me / put paste on gel / open tub / put paste on gel / gel paste / rub paste on me / rub paste onto me / rub paste onto remover / smell remover / drop paste / get paste". [holding the origin paste and the tub.]

Chapter 9 - The Restoration Gel

Section 1 - Gel and the Rest of the World

Understand "gel" or "restoration gel" as the tub when the tub is closed. The scent-description of the restoration gel is "spearmint".

Instead of tasting or eating the restoration gel:
	say "While it may look like toothpaste and smell like toothpaste, it actually is not toothpaste."

Test gel-behavior with "open tub / open backpack / put gel in backpack" holding the tub and the backpack.

The carrying requirements rule does nothing when tasting or eating the restoration gel.

[TODO:][Test this]
[Procedural rule when tasting or eating the restoration gel:
	ignore the carrying requirements rule.]

A description-concealing rule when the location is Open Sea:
	now the restoration gel is not marked for listing. [Otherwise, even though the tub is mentioned elsewhere in the description, the restoration gel shows up in a disruptive line of text in the middle of the room description.]

After printing the name of the tub while looking:
	say " of [restoration gel]";
	omit contents in listing.

Test tube-bug with "tutorial off / wear monocle / x tub" holding the monocle and the tub.

First carry out looking at the tub through an authentication scope:
	say "[The second noun] shows the residual form of the tube." instead.

Section 2 - Converting nouns

Definition: a thing is gel-related:
	if it is the gel:
		yes;
	if it is the tube:
		yes;
	if it is the tub:
		yes;
	if it is the origin paste:
		yes;
	no.

Understand "rub [something gel-related] on/onto/over/into [something]" as putting it on. Understand the command "smear" as "rub". Understand the command "place" as "put".

Understand "apply [something gel-related] on/onto/to [something]" as putting it on.

Understand "use [something gel-related] on/with [something]" as putting it on.

Understand "gel [something]" as gelling. Gelling is an action applying to one thing.

Carry out gelling something:
	if the tube is marked-visible:
		if the noun is the tube:
			try putting the tube on tube instead;
		otherwise:
			say "[one of]Unfortunately, there's hardly any gel remaining in the tube.[or]There isn't enough gel remaining in the little tube for use.[at random]" instead;
	if the tub is marked-visible:
		try putting the restoration gel on the noun instead;
	otherwise:
		say "[one of][We] can't gel [the noun] without any gel[or][We] have no gel to gel [the noun] with[cycling]."

Understand "paste [something]" or "origin paste [something]" as pasting. Pasting is an action applying to one thing.

Carry out pasting something:
	if the origin paste is marked-visible:
		try putting the origin paste on the noun instead;
	otherwise:
		say "[one of][We] can't paste [the noun] without any paste[or][We] have no paste to paste [the noun] with[cycling]."

Sanity-check waving the restoration gel:
	try waving the holder of the restoration gel instead.

Sanity-check taking the restoration gel:
	try taking the holder of the restoration gel instead.

Sanity-check dropping the restoration gel:
	try dropping the holder of the restoration gel instead.

Sanity-check inserting the restoration gel into something:
	try inserting the holder of the restoration gel into the second noun instead.

Sanity-check closing the restoration gel:
	try closing the holder of the restoration gel instead.

Sanity-check opening the restoration gel:
	try opening the holder of the restoration gel instead.

Sanity-check putting the tube on the tube:
	unless the barker has the tube:
		if the subcommand of tube includes "tube" and the player's command includes "gel":
			say "The gel doesn't restore the contents of things: it changes back items that have been linguistically manipulated." instead;
		if the subcommand of the tube includes "gel" and the player's command includes "tube":
			say "Well, I guess the tube is on (and under, and all around) whatever little restoration gel remains already." instead.

Before putting the tub on something:
	if the subcommand of the tub matches "gel" or the subcommand of the tub matches "restoration gel":
		if the tub is in the backpack and the backpack is closed:
			try opening the backpack;
			if the backpack is closed:
				stop the action;
		if the tub is closed and the tub is touchable:
			silently try opening the tub;
		if the tub is open:
			try putting the restoration gel on the second noun instead;
	otherwise:
		if the player's command includes "rub":
			try rubbing the tub instead.

Before putting the gel on something when the tub is closed:
	if the tub is in the backpack and the backpack is closed:
		try opening the backpack;
		if the backpack is closed:
			stop the action;
	silently try opening the tub.

Sanity-check removing something from the tub when tub is closed and tub is touchable:
		silently try opening the tub.

Sanity-check inserting something gel-related (called the target) into the target (this is the no putting gel into tube rule):
	[kludge to fix a very minor glitch]
	if the target is the tub or the target is the tube:
		if the player's command includes "gel in/into":
			say "The restoration gel is in [the target] already." instead;
	otherwise:
		continue the action.

Sanity-check putting the tub on the tub:
	if the subcommand of the tub includes "gel":
		if the player's command includes "tub":
			try putting the tub on the restoration gel instead;
		otherwise:
			try putting the restoration gel on the restoration gel instead;
	otherwise:
		if the subcommand of the tub includes "tub" and the player's command includes "gel":
			try putting the restoration gel on the tub instead.

Sanity-check putting the restoration gel on the tub:
	say "There is restoration gel all over the inside of the tub already, so I guess it must have some kind of restoration-gel resistant coating." instead.

Sanity-check putting the tub on the restoration gel:
	say "Well, I guess the tub is on (and under, and all around) the restoration gel already." instead.

Sanity-check putting the restoration gel on the restoration gel:
	say "Well, I suppose the restoration gel is smeared all over itself already." instead.

Sanity-check putting the origin paste on the origin paste:
	say "The Origin Paste is smeared all over itself already, I guess." instead.

Sanity-check taking the tub when the player carries the tub:
	if the subcommand of the tub matches "gel" or the subcommand of the tub matches "restoration gel":
		say "[don't remove gel from tub]" instead.

Sanity-check removing the tub from the tub:
	if the player's command includes "gel" and the player's command does not include "gel tub" and the player's command does not include "tub of":
		say "[don't remove gel from tub]" instead.

Instead of removing the gel from the tub:
	say "[don't remove gel from tub]".

To say don't remove gel from tub:
	say "[We] better leave [the gel] in there until [we] have decided what to put it on."

Instead of empty-removing the tube:
	try squeezing the tube;

Instead of removing the tube from the tube:
	try taking the tube.

Before doing something when the noun is the tube or the second noun is the tube:
	if the subcommand of the tube matches "gel" or the subcommand of the tube matches "restoration gel":
		if the barker carries the tube:
			if not taking and the tube must be touched:
				say "We don't have the gel at the moment." instead;
		otherwise:
			if shooting:
				continue the action;
			otherwise:
				say "[one of]Unfortunately, there's hardly any gel remaining in the tube.[or]There isn't enough gel remaining in the little tube for use.[at random]" instead.

Sanity-check putting the restoration gel on something when the tub is in a closed backpack:
	try opening the backpack.

Before inserting something (called the source) into something gel-related (called the target):
	unless the source is gel-related: [Things like "put gel in tub" are dealt with elsewhere]
		if the target is the tube:
			if the barker carries the tube:
				say "We don't have the gel at the moment." instead;
			otherwise:
				say "The tube's opening is too small." instead;
		otherwise:
			say "That would only make a mess. Try rubbing some [if the target is the paste]paste[otherwise]gel[end if] on [the source] instead." instead.

Sanity-check putting the restoration gel on something irretrievable:
	unless the second noun is the tub or the second noun is original:
		abide by the don't change irretrievable rules for the second noun.


[Because it's possible to change something into an object that becomes fixed in place in the backpack, or too heavy to move...]

Before putting the restoration gel on something which is in a container (called the box):
	if the second noun is proffered by an uncontained fluid thing (called the liquid):
		if the number of things in the box is greater than 1 or the number of things proffered by the second noun is greater than 1 and the box is not the synthesizer:
			say the liquid would make a  mess in the box instead.

Before putting the restoration gel on something which is enclosed by the backpack:
	if the backpack is closed:
		try opening the backpack;
	if the backpack is open:
		try taking the second noun;
	if the player does not carry the second noun:
		say "It seems best not to word-change things that are in the backpack." instead.

[And now special cases of description: ]

Instead of putting the restoration gel on the origin paste:
	say "[We] dip out some of the gel and touch it to the Origin Paste. There is a violent, fizzy reaction; lavender and mint fumes; and then the two substances appear to have worked out their mutual antipathy. The dollop of gel is gone, the cake of paste slightly smaller than it used to be."

Instead of putting the restoration gel on something:
	say "[We] dip out a [if the heft of the second noun is 1]fingertip-coating[otherwise]pea-sized[end if] quantity of gel and rub it gently onto [the second noun]. [run paragraph on]";
	gel-convert second noun;
	if the second noun is in the repository:
		express gel-admiration.

Instead of putting the restoration gel on something fluid:
	say "[We] just touch a coated fingertip of gel to [the second noun]. [run paragraph on]";
	gel-convert second noun;
	if the second noun is in the repository:
		express gel-admiration.

To express gel-admiration:
	say "[one of]I'm starting to understand how you got into all the places you got into. Not that I judge you or your line of work, of course.[or][run paragraph on][stopping]";
	record "using the gel" as achieved.

Instead of putting the restoration gel on yourself:
	if atlantida-woman is seen:
		say "[We] optimistically rub in a little gel, but it doesn't make any difference. We're stuck this way, for good.";
	else:
		say "A fingertip-dab of restoration gel isn't enough to undo the doubling-up [we] experienced, but if [we] applied more, there's a real chance [we][']d come apart into a you and a me. And [we] can't afford that right now."

Yourself can be gelled or ungelled. Yourself is ungelled.

Instead of wearing the restoration gel:
	try putting the restoration gel on yourself.

Instead of touching the restoration gel:
	say "It is sticky to the touch. [run paragraph on]";
	try putting the restoration gel on yourself.

Instead of touching the tub when the subcommand of the tub matches "gel" or the subcommand of the tub matches "restoration gel":
	say "It is sticky to the touch. [run paragraph on]";
	try putting the restoration gel on yourself.

[Instead of putting the restoration gel on yourself during Nightfalling:
	if the location encloses someone who is not the player:
		say "[We][']d rather do this where we have some privacy, just in case the splitting is embarrassing or leaves us both nude or something." instead;
	if Brock is in the repository:
		say "Let's gel Brock first and make sure he's all right; then [we] can use the rest of the gel with impunity, however much [we] need." instead;
	if the player is ungelled:
		now the player is gelled;
		say "At last, time to get out of this double existence. You scoop out a big handful of the restoration gel and start applying it to both arms like you're putting on mosquito repellant for a swamp raid.

It tingles and burns, fizzing against the existing Origin Paste that held us together this long and protected us from authentication scopes.

[We] dip again and slather on more: over our face, neck, hair even. [We] just about empty the whole tub.

It's cool now, not reacting against anything.

It also isn't working.

[We] [are] stuck. For some reason, for now, you and I are stuck together like this.";
	otherwise:
		say "There's not much gel left." ]

Instead of putting the restoration gel on an original person:
	if the second noun is an animal:
		continue the action;
	otherwise:
		say "[one of][We] dip out a [if the heft of the second noun is 1]fingertip-coating[otherwise]pea-sized[end if] quantity of gel and approach [the second noun] with it. 'Hey!' says [the second noun]. 'That was really cold! What do you think you're doing?'

But no exciting conversions occur.[or][We] get some gel and try to be subtle about touching it to [the second noun], but [regarding the second noun][they] [adapt the verb shy] away, startled. Well, it likely wouldn't have had an effect anyway.[stopping]".

[Before putting the restoration gel on something which encloses the player:
	say "Are you insane? If [the second noun] go[es] away, we'll go too." instead. ]

Instead of touching a sticky-to-the-touch thing:
	say "Sticky."

Definition: a thing is sticky-to-the-touch:
	if it is the Origin Paste:
		yes;
	if it is the tube:
		yes;
	if it is the tub:
		yes;
	if it is the sticky:
		yes;
	if it is the tape:
		yes;
	if it is a tar:
		yes.

Instead of touching a fluid thing:
	say "Wet."

Definition: a thing (called itself) is original if it proffers itself and it is proffered by exactly one thing.

To gel-convert (item - an object):
	if the item is not original:
		abide by the dangerous destruction rules for the item;
		let destination be home for the item;
		repeat with source running through things which proffer the item:
			if source is not in repository:
				say "[line break][bracket]gel-convert: BUG! [The source] is not in the repository. It will be moved from [the holder of the source] to [the destination].[close bracket][line break]";
			now the source is in the destination;
			now the source is marked-visible;
			if source is stuck:
				now source is part of the destination;
		now the item is marked invisible;
		[play the sound of gel splort;]
		let description needed be false;
		if exactly one thing (called the parent) proffers the item:
			set pronouns from parent;
			abide by the dangerous construction rules for the parent;
			if the parent is unseen:
				now description needed is true;
		if item is derivate of the secret-plans:
			now derivate of the secret-plans is previous derivate of secret-plans;
			if derivate of the secret-plans is not held by destination:
				say "BUG! Derivate of the secret-plans ([derivate of the secret-plans]) [were] not recreated when gelling [the item]!";
		if item is hoses or item is hoe:
			say "[The item] [become] [a list of things which proffer the item], redecorating the fountain. [run paragraph on]";
		otherwise:
			say "With an audible SPLORT, [the item] [become] [a list of things which proffer the item][if the destination is the location and the holder of the item is not the location] and falls to the [ground][end if]. ";
			if description needed is true:
				say "[parent description]";
		say paragraph break;
		[It's possible, in rare cases, for something to be its own parent: AS+COT -> SCOT -> COT leaves a result that is one of its own earlier ingredients. So we need to account for that: ]
		if the item does not proffer the item:
			move the item to the repository;
	otherwise:
		say "Alas, nothing happens.".

To decide what object is home for (item - a thing):
	let destination be the holder of the item;
	if the item is part of the destination and the item is not stuck:
		let the destination be the location;
	decide on destination.

[Stuck objects are those that should not fall off the thing they are part of when recreated by gel-conversion]

Definition: an object is stuck if it is an item listed in the Table of stuck things.

Table of stuck things
item (a thing)
horses
hoses
hoe
legend
fake-legend

Instead of putting the restoration gel on a naughty-sounding thing:
	say "[We] squeeze out a pea-sized quantity of gel and rub it gently onto [--]

No, let me rephrase. [We] clinically and distantly apply some of the restoration gel to an innocent portion of the object in question. [run paragraph on]";
	gel-convert the second noun;
	if the second noun is in the repository:
		express gel-admiration.


Table of Ultratests (continued)
topic	stuff	setting
"gel-bug"	{ tube, arm }	Dormitory

Test gel-bug with "tutorial off / show arm to girl / use gel on lock / put gel on lock / gel lock / apply gel to lock / use tube on lock / put tube on lock / apply tube to lock" [holding the tube and the arm in the Dormitory.]

Chapter 10 - The Anagramming Gun

Section 1 - Pistols and Shooting

[This is lightly adapted from the Technological Terror example in the manual. SHOOT is an annoying verb because there are several different equally valid syntaxes in English and we want to account for all of them, and make good guesses if the player types just SHOOT TARGET or SHOOT WITH GUN.]

A pistol is a kind of thing. A pistol can be loaded or unloaded. A pistol is usually loaded.

Shooting it with is an action applying to one visible thing and one carried thing. The shooting it with action has an object called the detritus.

Check shooting something with something which is not a pistol:
	say "[We] are insufficiently armed." instead.

Check shooting something with an unloaded pistol:
	say "[The second noun] [are] not loaded." instead.

Check shooting a pistol (called target pistol) with the target pistol:
	say "[The noun] doesn't bend that way." instead;

[Disambiguate the restoration gel rifle sensibly with the tub of gel.]
Does the player mean shooting something with the restoration gel:
	it is very unlikely.

Does the player mean shooting something with the tub:
	it is very unlikely.

Does the player mean shooting the tube with the restoration-gel rifle:
	it is very unlikely.

Does the player mean shooting something with a pistol:
	it is very likely.

[Does the player mean shooting the restoration gel with:
	it is very unlikely.

Does the player mean shooting the tub with:
	it is very unlikely.]

Does the player mean doing something with the restoration-gel rifle:
	it is unlikely.

Sanity-check shooting the restoration gel with:
	if the restoration-gel rifle is marked-visible and the player's command does not include "gel/at with/gel":
		if the player's command includes "shoot/fire gel" or the player's command includes "shoot/fire restoration gel":
			replace the matched text with "shoot rifle";
			now the reborn command is the substituted form of "[player's command]";
			now sp reparse flag is true instead;

Sanity-check shooting the tube with:
	if the restoration-gel rifle is marked-visible and the player's command does not include "gel/at with/gel":
		if the player's command includes "shoot/fire gel" or the player's command includes "shoot/fire restoration gel":
			replace the matched text with "shoot rifle";
			now the reborn command is the substituted form of "[player's command]";
			now sp reparse flag is true instead;

Does the player mean shooting something enclosed by the player with: it is very unlikely.
Does the player mean shooting a pistol (called P) with P: it is very unlikely.

Understand "shoot [thing] with [thing]" as shooting it with.
Understand "fire at [thing] with [thing]" as shooting it with (with nouns reversed).
Understand "shoot [thing] at [thing]" as shooting it with (with nouns reversed).
Understand "fire [thing] at [thing]" as shooting it with (with nouns reversed).

Understand "shoot [something unwielded]" as shooting it with.

[Thanks to Matt W for this code]
Definition: a thing is unwielded if it is not a pistol enclosed by the player.

Rule for supplying a missing second noun while shooting when the player carries a pistol (called the firearm) and the noun is not the firearm:
	unless the noun is the restoration gel:
		say "(with [the firearm])[command clarification break]";
	now the second noun is the firearm.

Test rifle-ownership with "tutorial off / shoot gel" holding the restoration-gel rifle.

Section 2 - Anagramming Gun

The anagramming gun is an unloaded pistol on the display-platform. Understand "anagrammer" as the anagramming gun. The description is "Anagramming guns are illegal now, of course, because of their desperately unpredictable behavi[our]. This one is a huge heavy thing, though not quite an artillery piece, because of the colossal amounts of power required and all the stabil[ize]rs needed to try to collapse the letters back down to a single phrase."

Section 3 - Loading the Gun

Sanity-check inserting the bullets into a gun:
	try loading the noun into the second noun instead.

Sanity-check inserting the anagram bullet into a gun:
	try loading the anagram bullet into the second noun instead.

Understand "load [something] with [something]" as loading it into (with nouns reversed).
Understand "load [something] into [something]" as loading it into.
Understand "load [anagramming gun] with [anagram bullets]" as loading it into (with nouns reversed).
Understand "load [anagram bullets] into [anagramming gun]" as loading it into.

Loading it into is an action applying to one carried thing and one thing.

Definition: a thing is ungunlike if it is not a pistol.

Check loading something into something ungunlike:
	say "[The second noun] [are] not a gun." instead.

Check loading something which is not the anagram bullets into something:
	say "[The noun] [are] not ammunition." instead.

Check loading the anagram bullet into something:
	say "The single bullet can't be loaded like this." instead.

Carry out loading the anagram bullets into the anagramming gun:
	now the anagram bullets are nowhere;
	now the anagramming gun is loaded.

Report loading the anagram bullets into the anagramming gun:
	say "I would not know how to do this, but you have sufficient expert skill that we've got the gun loaded up in no time." instead.

Instead of searching the anagramming gun:
	if the anagramming gun is loaded:
		say "There are still some more anagramming bullets within.";
	otherwise:
		say "The gun is unloaded."

Understand "unload [something]" as unloading. Unloading is an action applying to one thing.

Sanity-check unloading:
	if the noun is not a pistol:
		say "[The noun] [are] not a gun." instead;
	if the noun is the anagramming gun and the anagramming gun is unloaded:
		say "[The anagramming gun] [are] already empty." instead;
	otherwise:
		say "[We] see no reason to disarm us unnecessarily." instead.


Section 4 - The Anagram Effect of Shooting

Sanity-check shooting something irretrievable with the loaded anagramming gun:
	abide by the don't change irretrievable rules for the noun.

Sanity-check shooting the loaded anagramming gun with the loaded anagramming gun:
	say "It is impossible to aim the gun at itself." instead.

Check shooting the pills with the loaded anagramming gun:
	if the pills are in a container (called the box) and the number of things in the box is greater than 1 and the box is not the synthesizer:
		say the spill would make a mess in the box instead.

Check shooting something with the loaded anagramming gun:
	let initial key be the anagram key of the noun;
	now detritus is the noun;
	let the possibles list be a list of things;
	let noun-hash be the hash code of the noun;
	repeat with item running through things in the repository:
		if the hash code of the item is noun-hash:
			[say "[item]: ";]
			let initial name be the printed name of noun;
			now initial name is initial name in lower case;
			let comparison name be the printed name of item;
			now comparison name is comparison name in lower case;
			let comparison key be the anagram key of the item;
			[say "[comparison key]";
			say "[noun]: [initial key]"; ]
			if comparison key is the initial key and the initial name is not the comparison name:
				add the item to the possibles list; [* We make a list because otherwise, for any set of anagrammed objects in the repository, we will always just swap back and forth between the first two that are implemented and never get to the others.]
	let max be the number of entries in the possibles list;
	if max is 0:
		say "The gun fires ruggedly into [the noun], but is unable to make anything interesting out of [the initial key]. [The noun] [recoalesce] into [their] original form." instead;
	otherwise:
		now detritus is entry max of the possibles list.

To decide what list of text is the anagram key of (N - an object):
	let anagram key be a list of text;
	let starting form be some text;
	if N is yourself:
		now starting form is "alexandra";
	otherwise:
		now starting form is the printed name of N;
	let count be the number of characters in starting form;
	repeat with i running from 1 to count:
		let char be character number i in starting form;
		now char is char in lower case;
		if char is not " ":
			add char to anagram key;
	sort anagram key;
	decide on anagram key;

Check shooting something with the anagramming gun:
	abide by the dangerous destruction rules for the noun.

A last check shooting something with the anagramming gun:
	if the detritus is a tear:
		if there is an alterna-tear (called the goal) in the repository:
			now the detritus is the goal;
	if the detritus is a sap or the detritus is some plural-pas:
		now the detritus is the spa.

Carry out shooting something with the anagramming gun:
	move the detritus to the holder of the noun;
	if the noun is part of the holder of the noun:
		now the detritus is in the location;
	move the noun to the repository;
	if the detritus proffers the noun and the detritus is not original:
		now every thing which proffers the noun proffers the detritus;
		now the generated object does not proffer the detritus;
	otherwise:
		now the detritus is not proffered by anything;
		now every thing which proffers the noun proffers the detritus;
	if an essential thing (called source) proffers the detritus:
		now the detritus is essential;
		if the noun is the derivate of the secret-plans:
			now derivate of the secret-plans is the detritus;
	[ if something (called source) which proffers the detritus encloses an essential thing:
		now the detritus is essential; ]
	now the detritus is marked-visible;
	now the noun is marked invisible;
	record "using the anagramming gun" as achieved;

Report shooting something with the anagramming gun when the detritus is unseen:
	say "The gun fires ruggedly into [the noun], which [shatter] and then [reform] as [a detritus]. [run paragraph on][detritus description][paragraph break]";
	set pronouns from the detritus;
	abide by the dangerous construction rules for the detritus instead.

Report shooting something with the anagramming gun:
	say "The gun fires ruggedly into [the noun], which [shatter] and then [reform] as [the detritus].";
	abide by the dangerous construction rules for the detritus instead.




Chapter 11 - Restoration gel rifle

The restoration-gel rifle is a long strong pistol. The printed name of the restoration-gel rifle is "restoration gel rifle". Understand "restoration/gel/handgun" as the restoration-gel rifle.

[we want use of the regular gel to win, if possible]
Does the player mean putting the restoration-gel rifle on:
	it is very unlikely.

The description of the restoration-gel rifle is "A rifle that shoots pellets of restoration gel, converting objects from a distance. Guns like this are illegal to carry unless you're Bureau. They can inflict unpleasant bruises if they encounter nothing to convert and absorb the energy."

Sanity-check shooting something irretrievable with the restoration-gel rifle:
	unless the noun is the tub or the noun is original:
		abide by the don't change irretrievable rules for the noun.

Before shooting something which is in a container (called the box) with the restoration-gel rifle:
	if the noun is proffered by an uncontained fluid thing (called the liquid):
		if the number of things in the box is greater than 1 or the number of things proffered by the noun is greater than 1 and the box is not the synthesizer:
			say the liquid would make a  mess in the box instead.

[Because it's possible to change something into an object that becomes fixed in place in the backpack, or too heavy to move...]

Before shooting something which is enclosed by the backpack with the restoration-gel rifle:
	if the backpack is closed:
		try opening the backpack;
	if the backpack is open:
		try taking the noun;
	if the player does not carry the noun:
		say "It seems best not to word-change things that are in the backpack." instead.

[And now special cases of description: ]

Instead of shooting the origin paste with the restoration-gel rifle:
	say "[We] fire the gun into the Origin Paste. There is a violent thump, a suffocating cloud of lavender and mint fumes, and then the paste is much the same as before, just smaller."

Carry out shooting something with the restoration-gel rifle:
	say "[We] shoot [the restoration-gel rifle] at [the noun]. ";
	gel-convert the noun.

Instead of shooting the player with the restoration-gel rifle:
	if atlantida-woman is seen:
		say "[We] optimistically fire [the restoration-gel rifle] at [ourselves], but it doesn't make any difference. We're stuck this way, for good.";
	else:
		say "There's a real chance [we][']d come apart into a you and a me. And [we] can't afford that right now."


Chapter 12 - Britishizing Goggles

[Originally included as a joke, and a harmless one, because it was going to be in the tools exhibit and the player was never going to be able to get in there. Later, though, when I made the tool exhibit possible to break into, it became necessary to go back and implement cosmetic changes throughout the text. And then it felt like the player was getting the goggles too late in the game for them to be really fun as a toy, so I moved them much earlier, to the antiques shop.

Let this be a lesson to you, children. Jokes can cost a lot of implementation time.]

Some Britishizing goggles are a wearable thing. The description is "An experimental prototype that (from the perspective of the viewer only) adds -u- into words ending in -or, and reverses -er into -re wherever possible. Subjects wearing the [Britishizing Goggles] generally began to develop implausible accents and to have better than usual success wooing American tourists. Otherwise, the goggles are not much use: like my monocle, they don't affect the actual form of an object in any way.

The surplus stock were mostly given away as rewards to supporters of public television, and the Bureau discouraged even recreational use in the 1980s as they began to make progress towards greater linguistic purity."

[Check wearing the Britishizing goggles while the player is wearing the monocle:
	try taking off the monocle;
	if the player is wearing the monocle:
		say "[We] can't fit the goggles over the monocle." instead.

Check wearing the monocle while the player is wearing the Britishizing goggles:
	try taking off the Britishizing goggles;
	if the player is wearing the Britishizing goggles:
		say "[We] can't fit the monocle over the goggles." instead. ]

Rule for printing the name of the odor when the player is wearing the Britishizing goggles:
	say "odour".

Rule for printing the name of the Britishizing goggles when the player is wearing the Britishizing goggles:
	say "Britishising goggles".

Rule for printing the name of the synthesizer when the player is wearing the Britishizing goggles:
	say "synthesiser"

To say ize:
	if the player is wearing the Britishizing goggles:
		say "ise";
	otherwise:
		say "ize"

To say izing:
	if the player is wearing the Britishizing goggles:
		say "ising";
	otherwise:
		say "izing"

To say ization:
	if the player is wearing the Britishizing goggles:
		say "isation";
	otherwise:
		say "ization"

To say IZE:
	if the player is wearing the Britishizing goggles:
		say "ISE";
	otherwise:
		say "IZE"

To say IZING:
	if the player is wearing the Britishizing goggles:
		say "ISING";
	otherwise:
		say "IZING"

To say ae:
	if the player is wearing the Britishizing goggles:
		say "ae";
	otherwise:
		say "e".

To say our:
	if the player is wearing the Britishizing goggles:
		say "our";
	otherwise:
		say "or".

To say ter:
	if the player is wearing the Britishizing goggles:
		say "tre";
	otherwise:
		say "ter".

To say er:
	if the player is wearing the Britishizing goggles:
		say "re";
	otherwise:
		say "er".

To say ense:
	if the player is wearing the Britishizing goggles:
		say "ence";
	otherwise:
		say "ense".

To say gram:
	if the player is wearing the Britishizing goggles:
		say "gramme";
	otherwise:
		say "gram".

To say Mr:
	if the player is wearing the Britishizing goggles:
		say "Mr";
	otherwise:
		say "Mr.[no line break]".
To say Mrs:
	if the player is wearing the Britishizing goggles:
		say "Mrs";
	otherwise:
		say "Mrs.[no line break]".


Chapter 13 - The Umlaut Punch

[Because the player shouldn't stop having fun things just because it's late in the game. The anagramming gun was a pretty ambitious thing to add and brought in a lot of extra objects, but I wanted the Bureau basement to feel rich in possibilities even if I couldn't afford to make another half dozen genuinely useful objects. Hence the umlaut punch, which works, but just for a moment -- so there's no risk of it expanding the object trees.

Originally there was no gameplay value to the punch, but later when the generator room was introduced, I decided I wanted to include a power cord, and the power chord concept was born. ]

The description of the umlaut punch is "A very heavy, solid object manufactured in Stuttgart. A wire basket holds the item to be punched; two sharp metal tines descend into the basket at the moment of use." Understand "wire basket" or "basket" or "sharp" or "metal" or "tines" as the umlaut punch. The heft of the umlaut punch is 3. The umlaut punch is a container.


Understand "punch [something]" as umlaut-punching when the umlaut punch is marked-visible.

umlaut-punching is an action applying to one thing.

Understand "punch [something] in/with [umlaut punch]" as inserting it into.

Sanity-check umlaut-punching:
	try inserting the noun into the umlaut punch instead.

Check inserting a heavy thing into the umlaut punch:
	say "[The noun] [are] far too substantial to fit into the wire basket." instead.

Sanity-check inserting the player into the umlaut punch:
	say "[if story viewpoint is second person singular]You decide against it[otherwise]I'm not putting my hand in that thing[end if]." instead.

Check inserting something into the umlaut punch when the umlaut punch contains something (called the blockage):
	say "[The blockage] [are] already in the wire basket, and it doesn't take two things at a time." instead.

Report inserting a strand into the umlaut punch:
	say "[We] put [the noun] into the wire basket of the umlaut punch. There is a hum as the punch warms up, then a bang! as the tines come down sharply, tattooing [the noun].[paragraph break]";
	say "For a moment [we] glimpse the teen girl band Haïr [--] starring Big Haïr, Scary Haïr, Bed Haïr, and Skyblue Haïr [--] whose big hit, 'You Got Me In Curlers (And I Liked It)', has unfortunately now dropped out of the charts.

But the effect fades almost instantly." instead.

Report inserting something into the umlaut punch:
	say "[We] put [the noun] into the wire basket of the umlaut punch. There is a hum as the punch warms up, then a bang! as the tines come down sharply, tattooing [the noun].[paragraph break]";
	let sample be the printed name of noun;
	now sample is sample in lower case;
	let replacement made be false;
	if sample matches the text "u":
		replace the text "u" in sample with "ü";
		now replacement made is true;
	if sample matches the text "o" and replacement made is false:
		replace the text "o" in sample with "ö";
		now replacement made is true;
	if sample matches the text "e" and replacement made is false:
		replace the text "e" in sample with "ë";
		now replacement made is true;
	if sample matches the text "i" and replacement made is false:
		replace the text "i" in sample with "ï";
		now replacement made is true;
	if sample matches the text "y" and replacement made is false:
		replace the text "y" in sample with "ÿ";
		now replacement made is true;
	if sample matches the text "a" and replacement made is false:
		replace the text "a" in sample with "ä";
		now replacement made is true;
	record "using the umlaut punch" as achieved;
	say "Briefly [the noun] appears as the [one of]thrash[or]speed[or]art[or]death[or]power[or]progressive[or]folk[or]drone[or]Viking[or]cello[as decreasingly likely outcomes] metal band [sample in title case], before fading back to itself: there just isn't enough energy to hold the conversion, given [sample in title case][']s [one of]dismal[or]fading[or]weak[or]non-existent[at random] [one of]name-recognition[or]reputation[at random]. ";
	comment on band quality of the noun;
	if the power chord is not seen and the power cord is not seen:
		move the power chord to the location;
		say "[line break]When they are gone, [a power chord] remains in the air.";
		now the power chord is marked-visible;
	stop the action.

To comment on band quality of (item - the honey pastry triangle):
	say "Their use of tinkly percussion did not lift them to the heights they hoped for."

To comment on band quality of (item - the baklava):
	say "The Greek-language cover of 'Don't Fear the Reaper' had less of a market than you might expect."

To comment on band quality of (item - the asparagus):
	say "Their song 'Spears in Vinegar' was seventeen minutes too long to play on the radio.";

To comment on band quality of (item - the monocle):
	say "Something to do with the quality of their debut album, Red Baron Suicide Deathwish (1983).";

To comment on band quality of (item - a vegetable):
	say "The early popularity of '[one of]Leafy Greens[or]Hell's Garden[or]Harvest of Slaughter[or]Vegetable Vengeance[or]Blood on the Tree[at random]' was never matched again.";

To comment on the band quality of (item - an insect):
	say "Their hit single 'Phosphorescent Beetle' is a classic, but none of their later work reached the same heights."

To comment on the band quality of (item - a bird):
	say "Reviewers routinely complained of the flights of fancy in their lyrics, and the surrealism ultimately made it hard for listeners to relate to their work."

To comment on the band quality of (item - a pet):
	say "Album covers featuring Siamese kittens and gerbils gave a misleading impression of the contents, and a lawsuit from distraught parents ended in bankruptcy for the band and its manager."

To comment on the band quality of (item - a sign):
	say "In retrospect, the lead guitarist wished he'd gone along with the plan to name the band Ömen instead."

To comment on the band quality of (item - a hat):
	say "Several of the backing players went on to much more successful careers in Mäd Hätters."

To comment on the band quality of (item - an oil):
	say "The band wore out its welcome by coating several boxes at the Royal Albert Hall with unrefined crude during a closing spectacular."

To comment on band quality of (item - a thing):
	say "[one of]They haven't been playing many clubs lately[or]They never really got out of their parents['] basement[or]The reunion tour wasn't a big success[at random]."



The power chord is an r-abstract noisy thing. The initial appearance is "A power chord vibrates ominously in the air." The description of the power chord is "The chord [--] played as though by electric guitar [--] almost makes it sound as though heavy machinery is in use in here."
	The introduction of the power chord is "Having a leftover like this is… unusual. A sign of spare reification energy in this area, maybe. Like radiation left over from some really high energy abstraction work."

Instead of listening to the power chord:
	say "The repeated power chord makes it sound as though some heavy equipment is being used in here even when it's not."

Table of Ultratests (continued)
topic	stuff	setting
"chord"	{ asparagus, goggles }	Equipment Archive

Test chord with "tutorial off / autoupgrade / put asparagus in punch / wave h-remover at chord / x cord / x plug / wear goggles / x plug" [in Equipment Archive holding the asparagus and goggles.]


Chapter 14 - The Catalan punt volat Needle

[This is a wholly unnecessary toy that exists (a) to give the player something to fiddle with briefly if stuck with the anagramming gun; and (b) to suggest a wider world of language use beyond the shores of Atlantis.]

The description of the Catalan punt volat needle is "An infinitely delicate tool designed to slip between two Ls. It has no application in English."

Sanity-check inserting the Catalan punt volat needle into something:
	try poking the second noun with the noun instead.

Check poking something with something:
	if the player does not carry the second noun:
		try taking the second noun;
	if the player does not carry the second noun:
		stop the action.

Check poking something with something which is not the Catalan punt volat needle:
	say "[The second noun] [are] not very suitable for the purpose." instead.

Check poking the Catalan needle with the Catalan needle:
	say "[The noun] doesn't bend that way." instead.

Carry out poking something with the Catalan punt volat needle:
	let sample be text;
	let sample be the printed name of noun;
	now sample is sample in lower case;
	if sample matches the regular expression "(.*l)(l.*)":
		say "The needle slips into place, trying to construct '[text matching subexpression 1]·[text matching subexpression 2]'. It fails, however, to make any recognizable word out of this, and the needle wire grows hotter and hotter in our hand as it tries to fix the change. Finally [we] have to pull out." instead;
	otherwise:
		say "There's nowhere for the needle to slide in, because there are no paired Ls in [the noun]." instead.

Understand "use [catalan punt volat needle] on [something]" as poking it with (with nouns reversed).
Understand "poke [something] with [catalan punt volat needle]" as poking it with. Poking it with is an action applying to one thing and one carried thing.
Understand "poke [something] with [something]" as poking it with.
Understand "poke [something] in/into [something]" as poking it with (with nouns reversed).

Understand the commands "pierce" and "stick" and "penetrate" as "poke".

Chapter 15 - The Workshop Platform

The programmable dais is an enterable supporter in the Workshop. Understand "machine" or "equipment" or "platform" or "big" or "black" or "metal" or "round" or "machinery" or "coil" or "coils" as the dais.
	The initial appearance is "A programmable dais sits in the middle of the room. It has the raw look of lab equipment rather than a nice smooth commercial instrument."
	The description is "It's a round black metal platform with substantial stabil[izing] coils visible underneath, five or six feet in diameter. This is experimental lab grade letter equipment, ferociously powerful, insanely dangerous."

The programmable dais allows seated, standing and reclining.

After examining the programmable dais:
	say "The dais has [a list of things which are part of the dais]."

The big lever is part of the programmable dais. The big lever is a device. The description is "One of those big heavy levers you see at demolitions. You won't be tripping this thing by accident."

Understand "flip [something]" as pushing. Understand "use [big lever]" as pushing.

Sanity-check pulling the big lever:
	try switching on the programmable dais instead.

Sanity-check pushing the big lever:
	try switching on the programmable dais instead.

Sanity-check switching on the big lever:
	repeat with item running through things on the programmable dais:
		if item is irretrievable:
			abide by the don't change irretrievable rules for item.

Sanity-check switching on the programmable dais:
	try switching on the big lever instead.

Sanity-check switching off the programmable dais:
	say "It doesn't stay on long enough to need turning off." instead.

Sanity-check homonyming the programmable dais:
	let N be a random thing on programmable dais;
	if N is nothing:
		now N is the player;
	try homonyming N instead.

[Joke responses. These duplicate, more or less, code for the synthesizer above; inelegant, but there aren't enough of these jokes to be worth a more elaborate implementation of synthesis generally that would take them into account.]

Instead of switching on the big lever when the switch-setting of the massive switch is synthesize and the programmable dais supports the roll and the programmable dais supports the rock:
	say "You can't get to rock & roll with just synthesis. You'd need an ampersand generator, which unfortunately (despite promising research and a prototype resembling a pretzel-maker) has yet to achieve stable results."

Instead of switching on the big lever when the switch-setting of the massive switch is synthesize and the programmable dais supports the sill and the programmable dais supports the cate:
	say "It feels like [we] ought to be close to getting a silicate out of all this, but no, I fear not. That final L on SILL is going nowhere."

Instead of switching on the big lever when the switch-setting of the massive switch is synthesize and the programmable dais supports the key-lime and the programmable dais supports a pi-object:
	say "What, are you hoping for key lime π? I'm afraid synthesis doesn't do puns as such."

Instead of switching on the big lever when the switch-setting of the massive switch is synthesize and the programmable dais supports a pan and the programmable dais supports the ear:
	say "That Indian soft cheese is called paneer, you know, not panear."


Instead of switching on the big lever:
	if the boiler is not switched on or a massive plug is free:
		say "[We] pull the lever, but a lot of nothing happens. It doesn't look like there is power flowing to the machine." instead;
	if the switch-setting of the massive switch is:
		-- synthesize:
			[if the number of things on the programmable dais is not two:
				say "[The programmable dais] goes red, then dims again when it doesn't find sufficient contents for synthesis." instead;]
			synthesize contents of programmable dais instead;
		-- swap homonym:
			if the programmable dais does not support something:
				say "[The programmable dais] goes red. There's a hot smell, as though you'd turned on the stove with no pot on the burner. Finally it dims again." instead;
			if exactly one thing (called target) is on the programmable dais:
				let result be the homonym-match of the target;
				if the result is not the player:
					if something proffers the target:
						now the result is not proffered by anything;
						now everything which proffers the target proffers the result;
					abide by the dangerous destruction rules for the target;
					move the result to the programmable dais;
					move the target to the repository;
					now the result is marked-visible;
					now the target is marked invisible;
					if the result is the passage-place:
						say "[The programmable dais] glows deep red, then deeper. There's a roar like a stadium being demolished, and a passage opens, descending into the dais itself." instead;
					otherwise:
						say "[The programmable dais] glows deep red. Almost at once [the result] [are] lying on the surface. [result description][line break]";
						abide by the dangerous construction rules for the target instead;
			say "[The programmable dais] goes red, then dims again. Apparently it can't find a homonym to fit [the list of things *in the programmable dais]." instead;
	now the big lever is switched off.

The massive switch is part of the programmable dais. The description is "A large black switch with a red arrow painted on it. There are two stops, labeled with black marker on tape: [i]swap homonym[/i] and [i]synthesize[/i]. It is currently set to [switch-setting of the massive switch]."

The switch-setting is a kind of value. The switch-settings are swap homonym and synthesize. The massive switch has a switch-setting. The switch-setting of the massive switch is swap homonym. Understand "swap" or "homonym" or "swap homonym" as swap homonym. Understand "synthesise" as synthesize.


[This will catch FLIP SWITCH and a range of similar attempts:]
Sanity-check pushing the massive switch:
	try turning the massive switch instead.

Sanity-check pulling the massive switch:
	try turning the massive switch instead.

Carry out turning the massive switch:
	if the switch-setting of the massive switch is swap homonym:
		now the switch-setting of the massive switch is synthesize;
	otherwise:
		now the switch-setting of the massive switch is swap homonym.

Report turning the massive switch:
	say "[We] give the switch a strong twist and turn it to [i][the switch-setting of the massive switch][/i]." instead.

Understand "switch [massive switch]" as turning.
Understand "switch [massive switch] to [a switch-setting]" as switching it to.
Understand "switch [something] to [a switch-setting]" as switching it to.
Understand "set [massive switch] to [a switch-setting]" as switching it to.
Understand "turn [massive switch] to [a switch-setting]" as switching it to.

Understand "switch [programmable dais]" as turning.
Understand "switch [programmable dais] to [a switch-setting]" as switching it to.
Understand "switch [programmable dais] to [a switch-setting]" as switching it to.
Understand "set [programmable dais] to [a switch-setting]" as switching it to.
Understand "turn [programmable dais] to [a switch-setting]" as switching it to.

Switching it to is an action applying to one thing and one switch-setting.

Sanity-check switching the programmable dais to the switch-setting understood:
	now the noun is the massive switch.

Check switching something which is not the massive switch to the switch-setting understood:
	say "That is not a setting of [the noun]." instead.

Check switching the massive switch to the switch-setting of the massive switch:
	say "[The massive switch] is already set to [switch-setting understood]." instead.

Carry out switching the massive switch to the switch-setting understood:
	now the switch-setting of the massive switch is the switch-setting understood.

Report switching the massive switch to the switch-setting understood:
	say "[We] give the switch a strong twist and turn it to [the switch-setting of the massive switch]." instead.

Table of Ultratests (continued)
topic	stuff	setting
"programmable"	{ crate, anagramming gun, ring }	Workshop

Test programmable with "tutorial off / x platform / x switch / turn switch / x switch / set switch to swap homonym / switch switch to swap homonym / turn switch to swap homonym / put the crate and the ring on the platform / turn on lever / shoot cratering with gun" [holding the crate and the anagramming gun and the ring in the Workshop.]

Chapter 16 - The Cryptolock aka Vowel Rotator

[ The cryptolock is a variation on the idea of the spinner introduced much earlier in the game.

The puzzle here is completely different depending on whether you're playing hard mode or easy mode.]

The cryptolock is a scenery enterable container in the Generator Room. It is fixed in place. The printed name of the cryptolock is "brushed steel bucket". Understand "brushed" or "steel" or "container" or "bucket"  as the cryptolock.

The cryptoswitch is a device. The cryptoswitch is part of the cryptolock. The printed name of the cryptoswitch is "reverse switch". Understand "reverse" or "switch" as the cryptoswitch.

Report switching on the cryptoswitch:
	say "The switch thunks over into the Reverse position." instead.

The description of the cryptolock is "Attached to the machine is a [cryptolock], with insulated walls; it looks like a large version of an ice bucket for chilling sparkling wines.

Around the outside of the bucket are all sorts of odd gears, sprockets, parts, and bits, which have been attached in a haphazard way with bolts, wire, and duct tape. Presumably this does something to items placed in the bucket.

At the lip of the bucket is a switch labeled REVERSE. The switch is currently [if the cryptoswitch is switched on]on[otherwise]off[end if]." The carrying capacity of the cryptolock is 1.

The sprocket-bits are part of the cryptolock. Understand "odd" or "gears" or "sprocket" or "sprockets" or "parts" or "bits" or "part" or "bit" or "bolt" or "wire" or "duct" or "tape" as the sprocket-bits. The description of the sprocket-bits is "They're all different metals and component sizes, as though scavenged from other machines. But for what? It would take a much better engineer than I am to guess that."

Sanity-check inserting something (called item) into the cryptolock when the cryptolock contains the item:
	try silently taking the item;
	if the player carries the item:
		say "[We] momentarily lift [the item] out of [the cryptolock] and then drop [them] back in.

		[run paragraph on]";
		try silently inserting the item into the cryptolock instead;
		say "[run paragraph on]";
	otherwise:
		do nothing instead.

Check inserting something into the cryptolock when the cryptolock contains something (called the blockage):
	try taking the blockage;
	if the blockage is in the cryptolock:
		stop the action.

Check entering the cryptolock:
	say "[We] wouldn't fit. And even if [we] did, [we]['re] not sure it would be such a good idea." instead.

Test bucket-size with "put coat in bucket / wave a-remover at coat / get cot / put cot in bucket" holding the coat in the Generator Room.

After inserting something into the cryptolock:
	let goal text be text;
	if hardness is true:
		if the cryptoswitch is switched on:
			let goal text be the back hard encryption of the noun;
		else:
			let goal text be the hard encryption of the noun;
	otherwise:
		if the cryptoswitch is switched on:
			let goal text be the back encryption of the noun;
		else:
			let goal text be the encryption of the noun;
	let source hash be the letter-hash of goal text;
[	say "[substitute text]";]
	let chosen article be the noun;
	repeat with item running through things in the repository:
		if the hash code of the item is the source hash:
			let item text be the printed name of item;
			now item text is item text in lower case;
			if the goal text is item text:
				now the chosen article is the item;
				break;
	if the chosen article is not the noun:
		abide by the dangerous destruction rules for the noun;
		now the chosen article is not proffered by anything;
		now everything which proffers the noun proffers the chosen article;
		if the chosen article is enormous:
			say "There is a churning noise from within [the cryptolock] and '[goal text]' appears in letters of vivid purple smoke. Additional letters read 'SAFETY OVERRIDE.' Then the smoke dissipates without result." instead;
		if an essential thing (called source) proffers the chosen article:
			now the chosen article is essential;
			if noun is the derivate of the secret-plans:
				now the derivate of the secret-plans is the chosen article;
		[ if something which proffers the chosen article encloses an essential thing:
			now the chosen article is essential; ]
		now everything which is in the cryptolock is in the repository;
		if the chosen article is the cord and the power chord is not seen:
			now the chosen article is the power cord;
			now the printed name of power cord is "cord";
			reset hash code of power cord;
		move the chosen article to the cryptolock;
		if the heft of the chosen article is greater than 3:
			now the chosen article is in the Generator Room;
			say "There is a churning noise from within [the cryptolock] as [a chosen article] [are] formed within. The finished [chosen article] [are] too big to fit in the bucket, however, and [fall] out during the process of formation. [run paragraph on]";
		otherwise:
			say "There is a churning noise from within [the cryptolock], and a moment later [we] see inside [a list of things *in the cryptolock]. [run paragraph on]";
		let paragraph break needed be true;
		now the chosen article is marked-visible;
		now the noun is marked invisible;
		if the chosen article is not examined:
			try examining the chosen article;
			now paragraph break needed is false;
		record "using the vowel rotator" as achieved;
		abide by the dangerous construction rules for the chosen article;
		if the boiler is switched off:
			now the boiler is switched on;
			say "[if paragraph break needed is true][paragraph break][end if]This appears to have unlocked the mechanism. With a growl, the boiler comes to life.";
		otherwise:
			say "The boiler growls but cannot become any more on than it already is.";
	otherwise:
		say "There is a churning noise from within [the cryptolock] and '[goal text]' appears in letters of hot pink smoke. Then the smoke dissipates without result.".

Table of Ultratests (continued)
topic	stuff	setting
"cryptoreverse"	{ tub, ball, pastis, earring, pea, gimlet, garish sign }	Generator Room
"crypto"	{ tub, ball, pastis, earring, pea, gimlet, garish sign }	Generator Room

Test cryptoreverse with "tutorial off / autoupgrade / put gimlet in cryptolock / put earring in cryptolock / put pastis in cryptolock / put pea in cryptolock / put ball in cryptolock / wave g-remover at sign / put sin in cryptolock / put son in cryptolock / put tub in bucket / turn on switch / x cryptolock / put tab in bucket" [in the Generator Room holding the tub and ball and the pastis and the earring and the pea and the gimlet and the garish sign.]

Test crypto with "tutorial off / autoupgrade / x boiler / look through pane / w / turn on platform / e / put gimlet in cryptolock / put earring in cryptolock / put pastis in cryptolock / put pea in cryptolock / put ball in cryptolock / wave g-remover at sign / put sin in cryptolock / put son in cryptolock / x boiler / look through pane / w / turn on platform" [in the Generator Room holding the ball and the pastis and the earring and the pea and the gimlet and the garish sign.]

[In easy mode, each vowel is replaced by the one subsequent, and U in turn becomes A. Y is not considered a vowel for these purposes.

To avoid confusion during the replacement process, we replace lower-case letters with upper-case ones to show they've already been changed.]

To decide what text is the encryption of (X - a thing):
	let goal text be the printed name of the X;
	now goal text is goal text in lower case;
	replace the text "a" in goal text with "E";
	replace the text "e" in goal text with "I";
	replace the text "i" in goal text with "O";
	replace the text "o" in goal text with "U";
	replace the text "u" in goal text with "A";
	now goal text is goal text in lower case;
	decide on goal text.

To decide what text is the back encryption of (X - a thing):
	let goal text be the printed name of the X;
	now goal text is goal text in lower case;
	replace the text "a" in goal text with "U";
	replace the text "e" in goal text with "A";
	replace the text "i" in goal text with "E";
	replace the text "o" in goal text with "I";
	replace the text "u" in goal text with "O";
	now goal text is goal text in lower case;
	decide on goal text.


[In hard mode, each vowel becomes the next consonant in the alphabet and each consonant becomes the next vowel. This has the effect of vastly reducing the number of possible letters in output, and is a bit tricky to think through; but it is possible to get LAMB > OBOE.

To figure out whether the game supplied any objects that could fruitfully be encrypted this way, we ran the encryption on every object in the game and inspected the results for things that were really words.]

To decide what text is the hard encryption of (X - a thing):
	let goal text be the printed name of the X;
	now goal text is goal text in lower case;
	replace the text "a" in goal text with "B";
	replace the text "b" in goal text with "E";
	replace the text "c" in goal text with "E";
	replace the text "d" in goal text with "E";
	replace the text "e" in goal text with "F";
	replace the text "f" in goal text with "I";
	replace the text "g" in goal text with "I";
	replace the text "h" in goal text with "I";
	replace the text "i" in goal text with "J";
	replace the text "j" in goal text with "O";
	replace the text "k" in goal text with "O";
	replace the text "l" in goal text with "O";
	replace the text "m" in goal text with "O";
	replace the text "n" in goal text with "O";
	replace the text "o" in goal text with "P";
	replace the text "p" in goal text with "U";
	replace the text "q" in goal text with "U";
	replace the text "r" in goal text with "U";
	replace the text "s" in goal text with "U";
	replace the text "t" in goal text with "U";
	replace the text "u" in goal text with "V";
	replace the text "v" in goal text with "A";
	replace the text "w" in goal text with "A";
	replace the text "x" in goal text with "A";
	replace the text "y" in goal text with "A";
	replace the text "z" in goal text with "A";
	now goal text is goal text in lower case;
	decide on goal text.

To decide what text is the back hard encryption of (X - a thing):
	let goal text be the printed name of the X;
	now goal text is goal text in lower case;
	replace the text "a" in goal text with "Z";
	replace the text "b" in goal text with "A";
	replace the text "c" in goal text with "A";
	replace the text "d" in goal text with "A";
	replace the text "e" in goal text with "D";
	replace the text "f" in goal text with "E";
	replace the text "g" in goal text with "E";
	replace the text "h" in goal text with "E";
	replace the text "i" in goal text with "H";
	replace the text "j" in goal text with "I";
	replace the text "k" in goal text with "I";
	replace the text "l" in goal text with "I";
	replace the text "m" in goal text with "I";
	replace the text "n" in goal text with "I";
	replace the text "o" in goal text with "N";
	replace the text "p" in goal text with "O";
	replace the text "q" in goal text with "O";
	replace the text "r" in goal text with "O";
	replace the text "s" in goal text with "O";
	replace the text "t" in goal text with "O";
	replace the text "u" in goal text with "T";
	replace the text "v" in goal text with "U";
	replace the text "w" in goal text with "U";
	replace the text "x" in goal text with "U";
	replace the text "y" in goal text with "U";
	replace the text "z" in goal text with "U";
	now goal text is goal text in lower case;
	decide on goal text.


Tools ends here.
