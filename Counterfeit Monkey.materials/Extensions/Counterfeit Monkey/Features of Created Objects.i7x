Features of Created Objects by Counterfeit Monkey begins here.

Use authorial modesty.


Book 4 - Features of Created Objects

Section 1 - Legality

[Legality reflects whether something can be carried safely in the presence of the authorities and whether it should be noticed by them. ]

A thing can be legal or illegal. A thing is usually legal.

Tried-hiding-plans is a truth state that varies. Tried-hiding-plans is initially false.

Before going to the Antechamber:
	if the player is hurrying:
		if the number of entries in the described motion of the player is greater than 1:
			say "[path-walked so far][line break][paragraph break]";
		otherwise:
			clear path-walked for player;
	if the player has the secret-plans:
		say "[if tried-hiding-plans is false]We try hiding the plans in the backpack before approaching the secretary ahead, but they are too long to fit. We decide to stay where we are for now.[otherwise][still-too-long][end if]";
		now tried-hiding-plans is true;
		stop the action;
	follow the don't-leave-the-unleavable rule;
	if the player has the secret-plans and tried-hiding-plans is true:
		say still-too-long instead;
	stow gear;
	if the player has the secret-plans:
		stop the action.

To say still-too-long:
	say "The plans are still too long to hide in the backpack[one of]. I don't think we should let the secretary ahead see us with them[or][stopping]."

[Before approaching a room that encloses a police person when the player has a backpack:
	if the room gone to is the fish Market:
		do nothing instead;
	stow gear.]

To stow gear:
	let L be a list of things;
	repeat with item running through things which are enclosed by the player:
		if the item is marked-visible and the item is illegal and the item is not enclosed by the backpack:
			add item to L;
	if the number of entries in L is positive:
		say "Before approaching the secretary ahead, we try to hide all our illegal things in the backpack.";
		if the backpack is closed:
			silently try opening the backpack;
		repeat with item running through L:
			if item is the secret-plans:
				say "[line break][if tried-hiding-plans is false]The rolled-up plans are too long to fit, however, so we stop and consider our options[otherwise]The plans are still too long[end if].";
				now tried-hiding-plans is true;
				stop the action;
			otherwise:
				silently try inserting the item into the backpack;
		silently try closing the backpack;
	otherwise:
		if the backpack is open:
			say "Before approaching the secretary ahead, we close the backpack.";
			silently try closing the backpack.

Every turn when location is the Antechamber (this is the caught by police rule):
	repeat with evidence running through things enclosed by the player:
		if the evidence is illegal and the evidence is not enclosed by a closed backpack:
			say "The attention of [the secretary] lights on [the evidence]. 'Let's see [regarding the evidence][those],' she says. [paragraph break]Of course, her quick inspection doesn't make her any happier, and she sends the room into lockdown.";
			end the story saying "Our arrest goes badly";
			the rule fails.

Table of Ultratests (continued)
topic	stuff	setting
"hidestuff"	{ backpack, secret-plans, crate, silver tray }	Rotunda

Test hidestuff with "unmonkey / put tray in crate / put plans on tray / close crate / south".


Section 2 - Proffering and thing relations

[A thing can be useful or useless. A thing is usually useless.]

Proffering relates various things to various things. The verb to proffer (it proffers, they proffer, it proffered, it is proffered) implies the Proffering relation. [This relation indicates which objects have been derived verbally from which others.]

When play begins (this is the setting proffered rule):
	repeat with item running through things:
		unless item is a fact or item is a quip or item is a memory or item is a subject or item is a g-window or item is dummy-object or item is quip-repository or item is backup-repository or item is the repository:
			now the item proffers the item;
	now the rock is not proffered by anything;
	now Brock proffers the rock;
	now the banana is not proffered by anything;
	now the bandana proffers the banana;
	now the brown tree is not proffered by the brown tree;
	now the brown tee proffers the tree;
	now the shed is not proffered by anything;
	now the shred proffers the shed;
	now the as-coin is not proffered by anything;
	now the pastis proffers the as-coin;
	now the ash is not proffered by anything;
	now the trash proffers the ash;
	now the pear is not proffered by anything;
	now the pearl proffers the pear;
	now the lock is not proffered by anything;
	now the lock is proffered by the clock;
	now the watch is not proffered by anything;
	now the watch is proffered by the swatch;
	now the mechanic is not proffered by anything;
	now the garbage proffers the mechanic;
	now the pocket-bread is not proffered by anything;
	now the pocket-bread is proffered by a random pita (called P);
	now P is real;
	now the honey triangle is not proffered by anything;
	now the honey triangle is proffered by the baklava;
	now the crossword is not proffered by anything;
	now the crossword is proffered by the cross;
	now the crossword is proffered by the word;
	now the word is not proffered by anything;
	now the word is proffered by the sword;
	now atlantida-woman is not proffered by anything;
	now atlantida-shellfish proffers atlantida-woman;
	now the paperweight is not proffered by anything;
	now the paperweight is proffered by the paper;
	now the paperweight is proffered by the weight;
	now the lamb-granulates are not proffered by anything;
	now the lamb-granulates are proffered by the anagram bullets;
	now the inciting fable is not proffered by anything;
	now the filing cabinet proffers the inciting fable.
	[now the bead is not proffered by anything;
	now the bead is proffered by the fancy bed;]
	[now the vest is not proffered by anything;
	now the vet proffers the vest. ]

A thing can be seen or unseen. A thing is usually unseen.

After printing the name of something (called special-target):
	if the special-target is a quip or the special-target is a subject:
		do nothing;
	otherwise if the special-target is not in the repository:
		now the special-target is seen.

A thing can be fake or real. A thing is usually real.

When play begins (this is the setting real and fake rule):
	now every thing enclosed by the repository is fake;
	now the pearl is real;
	now patsy-woman is real;
	now Brock is real.

[Definition: a thing is discovered if it is fake and it is seen.]

The setting real and fake rule is listed before the setting proffered rule in the When play begins rules.

Section 3 - Concreteness

A thing can be r-concrete or r-abstract. A thing is usually r-concrete.

Sanity-check rubbing or squeezing or touching or waving or pulling or pushing or turning or climbing an r-abstract thing:
	say "[The noun] [are] not really solid enough to treat that way. Might as well be [one of]dandelion fluff[or]pipe smoke[or]a hologram[or]a 3D image[or]mist[or]a cloud of vapor[at random]." instead.

Sanity-check eating or drinking or tasting an r-abstract thing:
	say "[The noun] [are] too abstract to offer sustenance." instead.
Sanity-check  pushing an r-abstract thing to a direction:
	say "[The noun] [aren't] solid enough for that kind of treatment." instead.
Sanity-check switching on or switching off an r-abstract thing:
	if the noun is a device:
		make no decision;
	say "[The noun] [aren't] literally a projection; [they] [are] more of a concept created by the group mind of this language community. Sort of. [We] think. At any rate, [they] [don't] switch on and off." instead.

Section 4 - Heft

A thing has a number called heft. The heft of a thing is usually 2. The heft of an animal is usually 4. The heft of an insect is usually 1. The heft of a bird is usually 2. The heft of a person is usually 4. The heft of a vehicle is usually 5. The heft of a supporter is usually 5.

The verb to weigh (it weighs, they weigh, it is weighing) implies the heft property.

Definition: a thing is heavy if its heft is greater than 3.

Every turn:
	let X be the burden;
	if X is not nothing:
		if the player does not carry X:
			move X to the player;
		try involuntarily-dropping X.

To decide which object is the burden:
	(- Burden() -).

Include (-

	[ Burden o;
		for (o=child(player) : o : ) {
			if (o.(+ heft +) > 3 || o has scenery || o has static)
				return o;
			if (child(o)) o = child(o);
			else
				while (o) {
					if (sibling(o)) { o = sibling(o); break; }
					o = parent(o);
					if (o == player) return nothing;
				}
		}
		return nothing;
	];

-).

Sanity-check waving a heavy thing:
	say "Unlikely, unless [we] suddenly [become] a good deal stronger." instead.

Involuntarily-dropping is an action applying to one thing.

Carry out involuntarily-dropping something which is not a person:
	now the noun is handled.

Carry out involuntarily-dropping:
	if the player is on the spinner or the player is in the T-inserter:
		now the noun is in the location;
	otherwise:
		try silently dropping the noun; [this is better than just moving to the location because it copes with cases where the thing needs to land in a vehicle or supporter.]
	if the player carries the noun:
		stop the action.

Report involuntarily-dropping:
	say "[The noun] [are] [if the heft of the noun is greater than 4]far too large[otherwise]too awkward[end if] for [us] to carry, and [regarding the noun][fall] onto the [fall-receiver]." instead.

Report involuntarily-dropping an animal:
	say "[The noun] [are] [if the heft of the noun is greater than 4]far too large[otherwise]too awkward[end if] for [us] to carry, and half-[regarding the noun][fall], half-[jump] to the [fall-receiver]." instead.

Report involuntarily-dropping the boar:
	now the boar is in the location;
	say "[We] more or less throw the boar as far away as possible. It seems the wisest course." instead.

Report involuntarily-dropping a person:
	if the noun is brock:
		stop the action;
	otherwise:
		say "[The noun] [look] rather awkward, and [clamber] out of our ineffective hold onto solid ground." instead.

Report involuntarily-dropping a cat:
	say "[The noun] [get] tired of being carried and [leap] delicately to the [fall-receiver]." instead.

To say fall-receiver:
	let H be the holder of the player;
	if H is the location or H is the spinner or H is the T-inserter:
		say "[ground]";
	otherwise:
		if the H is a car:
			say "[H] floor";
		otherwise:
			say "[H]".

Section 5 - Length and Strength

A thing can be short or long. A thing is usually short.

A thing can be strong or floppy. A thing is usually strong.

Sanity-check swinging a long thing:
	if the noun is strong:
		say "[We] might hit something with [the noun]." instead.

Instead of swinging a long thing:
	if the noun is wearable:
		say "[We] swing [the noun] dashingly over a shoulder. I feel foolish now.";
	otherwise:
		say "[We] swing [the noun] from one hand, to no special effect."
Sanity-check swinging a short thing:
	if the noun is not a person:
		say "There's not really a lot of extent to [the noun] to make [them] satisfying to swing." instead.

Section 6 - Politeness

[A thing can be crude or polite. A thing is usually polite.]

A thing can be naughty-sounding or innocent-sounding.



Section 7 - Edges and Cutting


[We could in theory use an object property for these, but there are nearly 2000 objects in the game and that would be a bit of storage overkill when we want only two or three objects to correspond to the definition.]

Definition: a thing is edged if it is the jigsaw or it is the sword.
Definition: a thing is cuttable if it is the kudzu or it is the plexiglas.

Understand the command "cut" as something new. Understand "cut [something] with [something preferably held]" as cutting it with. Understand "cut [something] with [an edged thing]" as cutting it with. Cutting it with is an action applying to one thing and one carried thing.

Sanity-check cutting something which is not cuttable with something:
	if the second noun is edged:
		if the noun is a person:
			say "Sometimes I find your sense of hum[our] grotesque." instead;
		otherwise:
			say "I think that would only make a mess." instead;
	else:
		say "[The second noun] [don't] offer much of an edge, but that's probably just as well really." instead.

Sanity-check cutting something cuttable with something which is not edged:
	say "[The second noun] [don't] offer much of an edge." instead.

Check cutting something with the jigsaw when the jigsaw is not switched on:
	try switching on the jigsaw;
	if the jigsaw is not switched on:
		say "It's impossible to use a jigsaw that is not turned on." instead.


Features of Created Objects ends here.
