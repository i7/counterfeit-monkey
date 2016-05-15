Version 5 of Modern Conveniences by Emily Short begins here.

"Modern Conveniences creates kitchen and bathroom kinds of room, which will automatically be furnished with a set of plausible appliances. (This was originally an example in the manual of how to create extensions, and an annotated version may still be found there.) Version 3 adds compatibility with Measured Liquid, modeling flowing water from taps."

[Updated for adaptive text and deprecations.]

To turn is a verb. To flush is a verb. To flow is a verb.

Part 1 - Kitchens

Chapter 1 - Appliances

A kitchen is a kind of room.

A cabinet is a kind of container. A cabinet is usually openable and closed. It is scenery.
	Understand "cupboard" or "cupboards" or "cabinets" as a cabinet.

A furniture counter is a kind of supporter. It is scenery. It is privately-named. The printed name is "counter".
	Understand "counter" or "countertop" as a furniture counter.

A refrigerator is a kind of container. A refrigerator is usually closed and openable. A refrigerator is usually fixed in place. A refrigerator is usually scenery. Understand "refrigerator" or "fridge" as a refrigerator.

A freezer compartment is a kind of container. A freezer compartment is usually closed and openable. A freezer compartment is part of every refrigerator.

Inclusion relates a thing (called X) to a thing (called Y) when Y is part of X. The verb to include (it includes, they include, it included, it is included) implies the inclusion relation.

A stove is a kind of supporter. It is usually scenery. Understand "stovetop" as a stove.
An oven is a kind of container. An oven is usually openable and closed. One oven is a part of every stove.
A switch is a kind of device. A switch is part of every stove. A switch is part of every oven.
Understand "[something related by reversed incorporation] switch" as a switch. 

A sink is a kind of container. A sink is usually fixed in place and scenery. 

A tap is a kind of switch. A tap is part of every sink. Understand "faucet" or "taps" as a tap. Understand "[something related by reversed incorporation] tap/faucet/taps" as a tap. 

A drain is a kind of container. A drain is part of every sink. Understand "plughole" as the drain. Understand "[something related by reversed incorporation] drain/plughole" as a drain.

Chapter 2 - Switch Manipulation

Setting action variables for opening a stove (this is the stove-opening rule):
	let relevant oven be a random oven which is part of the noun;
	now the noun is the relevant oven.

Setting action variables for switching on something which includes a switch (this is the redirecting switches for switching on rule):
	let relevant switch be a random switch which is part of the noun;
	now the noun is the relevant switch.

Setting action variables for switching off something which includes a switch (this is the redirecting switches for switching off rule):
	let relevant switch be a random switch which is part of the noun;
	now the noun is the relevant switch.

Before printing the name of a switch (called target) (this is the switch identification rule):
	if the target is part of something:
		say "[random thing which includes the target] " (A).

Chapter 3 - Tap Manipulation

Instead of an actor opening a tap:
	try the actor switching on the noun. 

Instead of an actor closing a tap: 
	try the actor switching off the noun.

Report switching on a tap (this is the standard report switching taps on rule):
	say "[We] [turn] on [the noun]." (A) instead. [since "switch on" sounds weird in this context.]

Report switching off a tap (this is the standard report switching taps off rule):
	say "[We] [turn] off [the noun]." (A) instead.

Report someone switching on a tap (this is the standard report someone switching taps on rule):
	say "[The actor] [turn] on [the noun]." (A) instead. [since "switch on" sounds weird in this context.]

Report someone switching off a tap (this is the standard report someone switching taps off rule):
	say "[The actor] [turn] off [the noun]." (A) instead.

After examining something which includes a switched on tap (called relevant tap) (this is the report flowing water rule):
	say "The water [flow] from [the relevant tap]." (A)

Instead of an actor inserting something into a drain (this is the no clogging drains rule):
	if the player is the actor: 
		say "Pointless." (A);
	stop the action.

Understand "water" as a tap when the item described is switched off..

Chapter 4 - Kitchen Assembly

A kitchen cabinet is a kind of cabinet.
A kitchen cabinet is in every kitchen.
A furniture counter is in every kitchen.
A refrigerator is in every kitchen.
A sink is in every kitchen.
A stove is in every kitchen.

Section 1 - Added Drawers (for use with Automated Drawers by Emily Short)

Two drawers are part of every furniture counter.

Section 2 - Added Dishes (for use with Dishes by Emily Short)

Every kitchen cabinet contains 2 plates.
Every kitchen cabinet contains 2 cups.
Every kitchen cabinet contains 2 glasses.

Part 2 - Bathrooms

Chapter 1 - Baths and Toilets

A bathroom is a kind of room.

A toilet is a kind of supporter. Understand "john" as a toilet. A toilet is usually fixed in place and enterable and scenery.

A bath is a kind of container. A bath is usually a fixed in place and enterable and scenery. A tap is part of every bath. A drain is part of every bath. Understand "bathtub" or "shower" as a bath.

Chapter 2 - Bathroom Assembly

A sink is in every bathroom.
A toilet is in every bathroom.
A bath is in every bathroom.

A bathroom cabinet is a kind of cabinet.
A bathroom cabinet is in every bathroom.

Chapter 3 - Toilet Manipulation

Understand "flush [toilet]" or "use [toilet]" as flushing.

Flushing is an action applying to one thing.

Check an actor flushing a toilet (this is the block flushing toilets rule):
	if the player can see the actor:
		say "[The noun] [flush] dramatically." (A) instead;
	stop the action.

Check an actor flushing something (this is the block flushing non-toilets rule):
	if the player is the actor:
		say "[The noun] [don't] flush." (A) instead;
	stop the action.

Chapter 4 - Bathing and Washing

Understand "take shower" or "take a shower" or "take bath" or "take a bath" or "bathe" or "wash" as bathing. Bathing is an action applying to nothing.

Check an actor bathing (this is the restrict baths to bathrooms rule):
	if the location is not a bathroom:
		if the player is the actor:
			say "[There's] no good source of fresh water for washing." (A) instead;
		stop the action.

Check an actor bathing (this is the block bathing rule):
	if the player is the actor:
		say "[We] [don't] have time for a bath." (A) instead;
	stop the action.

Washing is an action applying to one thing. Understand "clean [something]" or "wet [something]" or "wash [something]" as washing.

Instead of an actor washing the actor:
	try the actor bathing.

Check an actor washing (this is the restrict washing to the proximity of sinks rule):
	if the actor can touch a sink:
		do nothing;
	otherwise:
		if the player is the actor:
			say "[We] [can] see no good source of fresh water for washing." (A) instead;
		stop the action;

Check an actor washing (this is the block washing rule):
	if the player is the actor:
		say "[regarding nothing]It [don't] seem worth the bother." (A) instead;
	stop the action.

Part 3 - Flowing Water (for use with Measured Liquid by Emily Short)

Before an actor washing a fluid container (this is the convert washing rule):
	try the actor rubbing the noun instead.

The flowing water is a liquid stream. The indefinite article is "some". The flowing water is part of a water-backdrop. The liquid of the flowing water is water.

The water-backdrop is a privately-named backdrop.

Rule for describing the fullness of the flowing water (this is the describe flowing water fullness rule):
	say "looks clear and drinkable.[no line break]" (A)

Setting action variables for filling something with a switched on tap (this is the divert filling with taps rule):
	now the second noun is the flowing water.

Setting action variables for pouring a switched on tap into something (this is the divert pouring taps rule):
	now the noun is the flowing water.

Setting action variables for switching on when the noun is a fluid container and the liquid of the noun is water (this is the divert TURN OFF WATER rule):
	if the player can see some switched off taps (called target taps):
		now the noun is the target taps;
	otherwise if the player can see some taps (called target taps):
		now the noun is the target taps.
 
Setting action variables for switching off when the noun is a fluid container and the liquid of the noun is water (this is the divert TURN ON WATER rule):
	if the player can see some switched on taps (called target taps):
		now the noun is the target taps;
	otherwise if the player can see some taps (called target taps):
		now the noun is the target taps.

Rule for clarifying the parser's choice of a fluid container while switching off (this is the avoid awkward fluid switchoffs rule):
	do nothing instead.
Rule for clarifying the parser's choice of a fluid container while switching on (this is the avoid awkward fluid switchons rule):
	do nothing instead.

A room can be water-supplying.

When play begins (this is the initialize water supply rule):
	move the water-backdrop backdrop to all water-supplying rooms.

Last carry out an actor switching on a tap (this is the move water supply rule):
	now the location is water-supplying;
	update backdrop positions.
	
Last carry out an actor switching off a tap (this is the remove water supply rule):
	now the location is not water-supplying;
	update backdrop positions.
	
Instead of an actor pouring a fluid container into something which incorporates a drain (this is the sink-dumping fluids rule):
	if the noun is empty:
		if the player is the actor:
			say "[The noun] [are] already empty." (A) instead;
		stop the action;
	now the fluid content of the noun is 0.0 fl oz;
	if the player is the actor:
		say "[We] [dump] out [the noun] into [the second noun].";
	otherwise if the player can see the actor:
		say "[The actor] [dump] out [the noun] into [the second noun]."
		
Part 4 - Descriptive Features (for use with Tailored Room Description by Emily Short)

Section 1 - Mention Things that are Running but Should Not be

To stand is a verb.

A last description-concealing rule (this is the running things aren't scenery rule): 
	now every visible open refrigerator is marked for listing;
	now every visible switched on tap is marked for listing.
	
Rule for writing a topic sentence about an open refrigerator (called item):
	say "[The item] [stand] open, letting all the cold air out. ";
	if the number of things in the item is 0:
		say "[There's] nothing inside. ";
	
Rule for writing a paragraph about a switched on tap (called item):
	say "[The item] [are] running.[paragraph break]"
	
A ranking rule for an open refrigerator (called special-target): 
	increase description-rank of the special-target by 1.
	
A ranking rule for a switched on tap (called special-target): 
	increase description-rank of the special-target by 1.

Modern Conveniences ends here.

---- Documentation ----

Modern Conveniences provides a kitchen kind and a bathroom kind of room. Kitchens will automatically be furnished with scenery cabinets, counters (called "furniture counter" to distinguish them from other counter variables), stove-and-oven assemblies, sinks, and refrigerators. Bathrooms will automatically be furnished with sinks, toilets, baths, and cabinets.

One slight challenge lies in giving these assembled pieces separate descriptions. When we have an assembly that adds parts to objects, we can then talk about (for instance) "the stove's switch" elsewhere in the code. But items that have been assigned rooms are not named in the same way, so we cannot talk about "the Industrial Kitchen's stove" in our code as a way to assign it a description or special behavior.

If we only have one instance of each item in our game, we may simply say something like

	The description of a stove is "Scrupulously polished."

applying the description to the class as a whole since there will only be one instance of it.

In a game that features multiple bathrooms and kitchens, this won't be enough; we might instead give the items descriptions that check their location (if there are only a couple of each):

	The description of a stove is "[if in Industrial Kitchen]A massive stainless steel stove-top with six burners[otherwise]Your standard four-burner item[end if]."

or create an

	Instead of examining the stove in the Industrial Kitchen: ...

sort of rule for those objects we want to describe specially; or, as the most extreme case, we might write a When play begins: ... rule to initialize the features of the generated objects, like so:

	When play begins: 
		let N be a random stove in the Industrial Kitchen; 
		move the boiling pot to N; 
		change the description of N to...

We can also, of course, use the appliances individually. In the end, the "kitchen" and "bathroom" room types are likely to be most useful when we want to include the standard props but not actually make them a critical part of the game; if stoves and sinks have more of a starring role in the production, we may be better off coding them or at the very least placing them by hand, as in

	The Industrial Kitchen is a room.
	Thor is a stove in the Industrial Kitchen. It supports a boiling pot.


Additional code is provided for a more rigorous treatment of liquids when this extension is used alongside Measured Liquid by Emily Short. In that case, turning on taps will create a liquid source called "flowing water" from which fluid containers can be filled.

Example: * Our House - A minimalist house consisting of two rooms.

	*: "Our House"

	Include Modern Conveniences by Emily Short.

	Our Household Kitchen is a kitchen.

	The Tiny Bathroom is a bathroom. It is west of Our Household Kitchen.

	The description of a stove is "Scrupulously polished."

	The description of a refrigerator is "It is baby blue and has the contours of a 50[']s chevy. One of these days it really will break down, but it's been serving your family faithfully since your grandmother's honeymoon."

	Test me with "x refrigerator / open fridge / x freezer / look in freezer / open freezer / turn on stove / turn on oven / x oven switch / turn off oven switch / turn off stove switch / turn on taps / x sink / w / x sink / turn on sink / take bath / use toilet". 

Example: ** Getting a drink - A house in which we're allowed to turn on the taps and get a drink of the running water, using a cup we find in the kitchen cabinet.

	*: "Getting a Drink"

	Include Measured Liquid by Emily Short.

	Include Modern Conveniences by Emily Short.

	The Home Kitchen is a kitchen. The Little Bathroom is a bathroom. It is west of the Home Kitchen.

	The cup is a fluid container. It is preferred for drinking.

	When play begins:
		let target be a random cabinet in the Home Kitchen;
		move the cup to the target.
	
	Test me with "open cabinet / get cup / fill cup / turn on tap / fill cup / x cup / drink water / x cup / empty cup into sink / put cup in sink / turn off tap / x water / get cup / west / turn on water / fill cup / e / drink water / fill cup / turn on tap / fill cup / drink water / w / fill cup / empty cup in sink / e / put cup on counter / look".

Example: ** Tidy Bowl - Adding a toilet bowl to every toilet, which will contain undrinkable toilet water. 

	*: "Tidy Bowl"

	Include Measured Liquid by Emily Short.

	Include Modern Conveniences by Emily Short.

	The Home Kitchen is a kitchen. The Little Bathroom is a bathroom. It is west of the Home Kitchen.

	The cup is a fluid container. It is preferred for drinking.

	When play begins:
		let target be a random cabinet in the Home Kitchen;
		move the cup to the target.
	
	A toilet bowl is a kind of fluid container. A toilet bowl is part of every toilet. The liquid of a toilet bowl is toilet water. The fluid content of a toilet bowl is 163.0 fl oz. The fluid capacity of a toilet bowl is 163.0 fl oz.

	Setting action variables for pouring a toilet into something:
		now the noun is a random toilet bowl which is part of the noun.
	
	Setting action variables for filling something with a toilet:
		now the second noun is a random toilet bowl which is part of the second noun.
	
	Setting action variables for filling a toilet with something:
		now the noun is a random toilet bowl which is part of the noun.
	
	Setting action variables for pouring something into a toilet:
		now the second noun is a random toilet bowl which is part of the second noun.
	
	Setting action variables for drinking a toilet:
		now the noun is a random toilet bowl which is part of the noun.

	Rule for clarifying the parser's choice of a toilet:
		do nothing.
	
	Rule for clarifying the parser's choice of a toilet bowl:
		do nothing.
	
	Table of Liquids (continued)
	liquid	potable	flavor
	toilet water	false	--
	
	Test me with "open cabinet / get cup / w / fill cup from toilet / x toilet bowl / pour cup into toilet / drink from toilet / fill cup with toilet water / empty toilet water into bath".

	