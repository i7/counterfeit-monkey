Actions on Multiple Objects by Counterfeit Monkey begins here.

Use authorial modesty.

Section 6 - Actions on multiple objects

Rule for deciding whether all includes fixed in place things: it does not.
Rule for deciding whether all includes scenery: it does not.
Rule for deciding whether all includes people while taking: it does not.
Rule for deciding whether all includes things carried by other people while taking: it does not.

Rule for deciding whether all includes things in a pan while taking in the presence of the barker (this is the don't touch the pans rule):
	it does not.

Rule for deciding whether all includes things in the heavy pack while taking (this is the show some mercy rule):
	it does not.

Rule for deciding whether all includes disguisable things while taking (this is the no stealing from Lena rule):
	it does not.

Rule for deciding whether all includes the contraband box while taking:
	it does not.

Rule for deciding whether all includes things enclosed by the player while taking or taking off or removing (this is the new exclude indirect possessions from take all rule):
	if the action name part of the current action is the removing it from action:
		it does;
	it does not.

The the new exclude indirect possessions from take all rule is listed instead of the exclude indirect possessions from take all rule in the for deciding whether all includes rulebook.

Rule for deciding whether all includes things enclosed by the backpack while taking or taking off or removing ( this is the exclude contents of backpack from take all rule ):
	if the action name part of the current action is the removing it from action:
		it does;
	it does not.

Rule for deciding whether all includes other people carried by the person asked while dropping or throwing or inserting or putting (this is the new exclude people from drop all rule):
	it does.

The new exclude people from drop all rule is listed instead of the exclude people from drop all rule in the for deciding whether all includes rulebook.

[Hack to avoid "What do you want to drop those things in?" when typing DROP ALL while carrying nothing.]
Rule for deciding whether all includes the person asked while dropping:
	if the person asked is empty:
		it does.

[The empty-removing action makes it possible to give custom replies to trying to remove all from an empty container or supporter. Without this we would have to hack the default parser error messages.]
Understand "remove all/everything from [an empty container]" or "take all/everything from [an empty container]" or "get all/everything from [an empty container]" as empty-removing.
Understand "remove all/everything from [an empty supporter]" or "take all/everything from/off [an empty supporter]" or "get all/everything from/off [an empty supporter]" as empty-removing.

Empty-removing is an action applying to one thing.

Carry out empty-removing:
	if the noun is closed and noun is opaque and noun is a container:
		say "[The noun] [aren't] open.";
	otherwise:
		unless the noun is a container or the noun is a supporter:
			say "There are none at all available!";
		otherwise:
			say "[The noun] [are] empty.";

[Prevent long lists of error messages when typing things like "put all in rock":]

[First "drop all"]
A multiple action processing rule when dropping:
	if the player is empty:
		alter the multiple object list to {};
	otherwise:
		let L be the multiple object list;
		if the player is listed in L:
			remove player from L;
			alter the multiple object list to L;
	if the multiple object list is empty:
		say "[We] don't have anything to drop.";
	otherwise if the location is privately-controlled and the number of entries in the multiple object list is at least 2:
		unless the location is traffic circle and the player is in a car:
			now the noun is dummy-object;
			say "[non-drop-zone]";
			alter the multiple object list to {}.

[Next "put all on"]
A multiple action processing rule when the action name part of the current action is the putting it on action:
	abide by the stop putting error list rule.

This is the stop putting error list rule:
	abide by the check self-containment rule;
	if the number of entries in the multiple object list is less than 2:
		the rule succeeds;
	if the second noun is a support listed in the Table of unsuitable supporters or the second noun is a pan:
		say "It makes no sense to put a lot of random stuff on [the second noun].";
		abide by the cancel multiple rule;
	if the second noun is single put on only:
		abide by the fake put on rule;
	otherwise:
		if the second noun is not touchable:
			abide by the try reaching rules for the second noun.

Definition: a thing is single put on only:
	if it is the hard wood floors:
		no;
	if it is the tiny refrigerator:
		no;
	if it is a support listed in the Table of snarky supporters:
		yes;
	if it is not a supporter:
		yes;
	if it is enclosed by the display case:
		yes;
	if it is enclosed by a car and the location is traffic circle:
		no;
	if it is not enclosed by the player and the location is privately-controlled:
		yes.


[To make sure that we don't try things like inserting the bag in the pan when the pan already is inside the bag. That is blocked further down the line too, but this rule prevents that ugly error messages are printed at the wrong time.]
This is the check self-containment rule:
	if the holder of the second noun is listed in the multiple object list:
		let L be the multiple object list;
		remove the holder of the second noun from L;
		alter the multiple object list to L;
		if L is empty:
			say "There are none at all available!";
			the rule fails.

[Then "remove all from"]
A multiple action processing rule when the action name part of the current action is the removing it from action:
	abide by the stop removing error list rule.

This is the stop removing error list rule:
	if the second noun is toolkit or the second noun is heavy pack or second noun is tub or second noun is the bartender:
		try removing the first thing held by the second noun from the second noun;
		abide by the cancel multiple rule;
	if second noun is enclosed by display case or second noun is display case:
		say "[no stealing from display case]";
		abide by the cancel multiple rule;
	if the second noun is not touchable:
		abide by the try reaching rules for the second noun;
	if the second noun is closed:
		abide by the try opening rules for the second noun.
	
[And finally "insert all into"]
A multiple action processing rule when the action name part of the current action is inserting it into action:
	abide by the stop inserting error list rule.

This is the stop inserting error list rule:
	abide by the check self-containment rule;
	if the number of entries in the multiple object list is less than 2:
		the rule succeeds;
	abide by the check multiple insert rules for the second noun;
	if the second noun is not touchable:
		abide by the try reaching rules for the second noun;
	if the second noun is closed:
		abide by the try opening rules for the second noun.

[A rulebook to give sensible reactions to "insert all into". This is mostly to make the the stop inserting error list rule above more readable.]

The check multiple insert rules are an object-based rulebook.

A first check multiple insert rule for the tub:
	if tub is closed and the tub is touchable:
		silently try opening the tub.

A check multiple insert rule for the shrine:
	if the the bushes are shrine-revealing:
		say "One thing at a time.";
		abide by the cancel multiple rule;

A check multiple insert rule for a thing (called the target) (this is the check for unsuitable containers rule):
	if the target is a box listed in the Table of unsuitable containers:
		say "It makes no sense to insert a lot of random things in [the target].";
		abide by the cancel multiple rule.

A check multiple insert rule for a container (called the target) (this is the check for small containers rule):
	if the carrying capacity of target is less than 3:
		say "It makes no sense to insert a lot of random things in [the target].";
		abide by the cancel multiple rule.

A check multiple insert rule for a single insert only thing (this is the check for single insert containers rule):
	abide by the fake insert rule.

The check for unsuitable containers rule is listed before the check for single insert containers rule in the check multiple insert rules.

A last check multiple insert rule for something that incorporates a drawer (called target drawer):
	now second noun is target drawer;
		
A last check multiple insert rule for something that incorporates an oven (called target oven):
	now second noun is target oven;

[These are used to give a single reply to an action on multiple object, using a dummy object to get a sensible noun name:]
This is the fake insert rule:
	move dummy-object to player;
	try inserting dummy-object into second noun;
	now dummy-object is nowhere;
	abide by the cancel multiple rule.

This is the fake put on rule:
	move dummy-object to player;
	try putting dummy-object on the second noun;
	now dummy-object is nowhere;
	abide by the cancel multiple rule.

Dummy-object is a proper-named thing. The printed name of dummy-object is "[if location is privately-controlled or the second noun is fluid or the second noun incorporates a tap]our [end if][one of]stuff[or]things[at random]".

This is the cancel multiple rule:
	alter the multiple object list to {};
	the rule fails.

Definition: a thing is single insert only:
	if it incorporates a drawer:
		no;
	if it incorporates an oven:
		no;
	if it is a desk:
		yes;
	if it is a tin-can:
		yes;
	if it is a drain:
		yes;
	if it incorporates a drain:
		yes;
	if it is a freezer compartment:
		yes;
	if it is fluid-filled:
		yes;
	if it is a box listed in the Table of snarky containers:
		yes;
	if it is not a container:
		yes;
	if it is enclosed by the display case:
		yes;
	if it is a car and the location is traffic circle:
		no;
	if it is enclosed by a car and the location is traffic circle:
		no;
	if it is not enclosed by the player and the location is privately-controlled:
		yes.

[The things listed in this table gives a single custom reply when trying to put all on them.]
Table of snarky supporters
Support (a thing)
sea-view
word-balance
department printer
oval table
altar
the output tray
the heavy pack
mannequin
shrine
keyring
stillage
the rack

[The things listed in this table gives a the reply "It makes no sense to put a lot of random stuff on" when trying to put all on them.]
Table of unsuitable supporters
Support (a thing)
spinner
pen
left pan
right pan
the pulley
diorama table
portcullis
projector

[The things listed in this table gives a single custom reply when trying to insert all into them.]
Table of snarky containers
Box (a thing)
Slango's bed
sea-view
secret-door
sugar bowl
teapot
fountain
nightstand
word-balance
projector
shot glasses
toolkit
heavy pack
depluralizing cannon
department printer
paper-drawer
long line
display case
tub
tube
gel
origin paste
long glass case
shrine
pit-trap

[The things listed in this table gives a the reply "It makes no sense to insert a lot of random things in" when trying to insert all into them.]
Table of unsuitable containers
Box (a thing)
diorama table
plywood cutout
mirth pail
left pan
right pan
keycard-reading lock
umlaut punch
contraband box
hopping bag
mailboxes
till
mutual punch
pulley
reclamation machine
pen
mug

Table of Ultratests (continued)
topic	stuff	setting
"all-lists"	{ apple, tomcat, tube, stick, twig, secret-plans, backpack, card, letter-remover, origin paste }	Tools Exhibit

Test all-lists with "tutorial off / get all from tube / put all in tube / put all in paste / wave e-remover at tube / get gel / get gel from tub / put all in tub / get all from tub / wave l-remover at plans / wave s-remover at pans / wave d-remover at card / put all in pan / get pan / put all in backpack / look in backpack / enter car / close car / put car in backpack / put all in backpack / get out / get backpack / get all from backpack / get all from platform / put all on platform / put all in chamber / get all from chamber".
Actions on Multiple Objects ends here.