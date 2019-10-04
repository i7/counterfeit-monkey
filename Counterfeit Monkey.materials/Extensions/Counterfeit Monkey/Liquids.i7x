Liquids by Counterfeit Monkey begins here.

Use authorial modesty.

Section - Liquids

[We could have used a full-bore liquid extension, but there's really no reason to do so: the player is not going to be allowed to mix liquids or have partial liquid quantities, and in fact we want to encourage him to think of all objects in the game universe as atomic rather than partial and divisible.

So our minimal approach to fluids just disallows a few kinds of manipulation that apply to solids, and leaves it at that.]

A thing can be solid or fluid. A thing is usually solid.

Instead of waving or squeezing or pulling or pushing or rubbing or turning an uncontained fluid thing:
	say "[The noun] [don't] really respond to that kind of manipulation."

Instead of taking an uncontained fluid thing (called the fluid):
	if the fluid is the sap-liquid or the fluid is the soap:
		if the fluid is in a container (called receptacle):
			say "[The fluid] is too fluid and sticky to pick up easily.";
			stop the action;
	say "[The fluid] [are] not the kind of thing [we] can just pick up and carry away."

Understand "drink from [something]" as drinking.

Sanity-check drinking a tap (called target tap):
	if  the subcommand of the target tap matches "water" or the player's command includes "from":
		say "It may not be sanitary." instead.

Sanity-check inserting something into a tap (called target tap):
	if the subcommand of the target tap matches "water":
		if the target tap is not part of something:
			say "There is no water here." instead;
		if target tap is switched off:
			silently try switching on target tap;
		try inserting the noun into the tap-water;
		if target tap is switched on:
			silently try switching off target tap;
		stop the action.

Before doing something other than switching on with a switched off tap:
	if the subcommand of the noun matches "water":
		say "[We] can see no water here at the moment." instead.

Before doing something when the second noun is a switched off tap:
	if the subcommand of the second noun matches "water":
		say "[We] can see no water here at the moment." instead.

Check drinking a fluid thing:
	try eating the noun instead.

Sanity-check burning a fluid thing:
	say "Only the rare fluid is able to burn." instead.

Sanity-check burning the fuel:
	say "Let's keep your arsonist tendencies under wraps. I think they might attract attention." instead.

Sanity-check burning oil:
	say "Let's keep your arsonist tendencies under wraps. I think they might attract attention." instead.

Rule for deciding whether all includes an uncontained fluid thing while taking:
	it does not.

Rule for deciding whether all includes an uncontained fluid thing while removing object from object:
	it does not.

Sanity-check tying an uncontained fluid to something:
	say "[The noun] [don't] make much of an anchor point." instead.

Sanity-check tying something to an uncontained fluid thing:
	say "[The second noun] [don't] make much of an anchor point." instead.

Sanity-check climbing an uncontained fluid thing:
	say "A prominent feature of [noun] is that [they] [don't] provide much support." instead.

A thing can be contained or uncontained. A thing is usually uncontained.

Every turn when the player carries a fluid thing (called the puddle):
	unless the puddle is contained:
		move the puddle to the location;
		say "[The puddle][one of], true to [their] nature, [leak] out onto the [fall-receiver][or] [drip] through our fingers onto the [fall-receiver][or] [drip] out of our hands[at random]."

Definition: a container is fluid-filled rather than dry if the first thing held by it is an uncontained fluid thing.

Understand "fill [a container] with [a fluid thing]" as filling it with.
Understand "fill [a container] with [something]" as filling it with.
Understand "fill [something] with [a fluid thing]" as filling it with.
Understand "fill [something] with [something]" as filling it with.

Understand "empty [something] in/into [something]" as filling it with (with nouns reversed).
Understand "empty [a fluid thing] in/into [something]" as filling it with (with nouns reversed).
Understand "empty [something] in/into [a container]" as filling it with (with nouns reversed).
Understand "empty [a fluid thing] in/into [a container]" as filling it with (with nouns reversed).

[ Every turn when a fluid thing (called target) is in a pan:
	unless the target is contained:
		move the target to the location;
		say "[The target] runs rapidly out through the slots of the pan." ]

Filling it with is an action applying to two things.

Check inserting something into a fluid-filled container:
	try inserting the noun into the first thing held by the second noun instead.

Check inserting something into a fluid thing (called the liquid):
	if the liquid is washing-appropriate:
		try washing the noun instead;
	otherwise:
		say "[We] don't want to get [second noun] all over [the noun]." instead.

Check putting an uncontained fluid thing (called the liquid) on something:
	unless the second noun is the spinner or the second noun is the programmable dais:
		if the liquid is washing-appropriate:
			try washing the second noun instead;
		if the second noun is a drain (called D):
			say "[The liquid] would disappear down [the D]." instead;
		otherwise:
			say "[We] don't want [noun] all over [the second noun]." instead.

Check putting a fluid thing on a fluid thing:
	say "There's no restoration gel that will separate mixed liquids, you know. I'd rather stay away from the chemistry experiments." instead.

Check inserting a fluid thing into a fluid thing:
	say "There's no restoration gel that will separate mixed liquids, you know. I'd rather stay away from the chemistry experiments." instead.

Sanity-check inserting an uncontained fluid thing into a container (called target):
	unless the target is a pan or the target is the synthesizer or the target is the t-inserter or the target is the cryptolock:
		try filling the second noun with the noun instead.

Instead of inserting the funnel into a container which incorporates a drain:
	try washing the funnel.

Check inserting something into a container which incorporates a drain:
	say "Better not. We don't want to get [the noun] all wet." instead.

Check filling a container which incorporates a drain (called D) with an uncontained fluid thing:
	say "[The second noun] would disappear down [the D]." instead.

Instead of examining a drain (called target drain):
	say "[The target drain] is unimportant."

Check filling a container with something which is not a fluid thing:
	try inserting the second noun into the noun instead.

Check filling a contained fluid thing with a fluid thing:
	say "There's no restoration gel that will separate mixed liquids, you know. I'd rather stay away from the chemistry experiments." instead.

Check filling the funnel with a fluid thing:
	say "That would have about the same effect as pouring [the second noun] on our feet." instead.

Check filling a net with a fluid thing:
	say "That would have about the same effect as pouring [the second noun] on our feet." instead.

Check filling a non-empty container with a fluid thing:
	if the second noun is the holder of the noun:
		say "[The second noun] [are] in [the noun] already." instead;
	otherwise:
		say "[The second noun] would make a mess in there." instead.

Check filling it with:
	say "[one of]I'd rather leave [the second noun] where [they] [are].[or]I don't see much point to filling something with [second noun].[at random]" instead.


Understand "empty [something]" as emptying. Emptying is an action applying to one thing.
Understand the command "pour" as "empty".

Carry out emptying:
	if the noun is not a supporter and the noun is not a container:
		if the holder of the noun is a supporter or the holder of the noun is a container:
			try emptying the holder of the noun instead;
		otherwise:
			say "[The noun] [are] not something [we] can empty." instead;
	if the noun is empty:
		say "[The noun] [are] empty already." instead;
	if the noun is fluid-filled:
		say "I'd rather leave [the first thing held by the noun] where [they] [are]." instead;
	say "[first custom style][bracket]Try to TAKE things from [the noun] instead.[close bracket][roman type][line break]".

Understand "empty [something] in/into/on/onto [something]" as emptying it into. Emptying it into is an action applying to two things.

Carry out emptying it into:
	if the noun is not a supporter and the noun is not a container:
		if the holder of the noun is a supporter or the holder of the noun is a container:
			try emptying (the holder of the noun) into the second noun instead;
		otherwise:
			say "[The noun] [are] not something [we] can empty." instead;
	if the second noun is not a supporter and the second noun is not a container:
		say "[The second noun] [are] not something [we] can empty things into." instead;
	if the noun is empty:
		say "[The noun] [are] empty already." instead;
	if the noun is fluid-filled:
		let contents be the first thing held by the noun;
		if the contents is the soap or the contents is the sap-liquid:
			say "[The contents] sticks to the bottom of [the noun]." instead;
		otherwise:
			say "I'd rather leave [the contents] where [they] [are]." instead;
	say "[first custom style][bracket]Try to TAKE things from [the noun] and then PUT them [in-on the second noun] instead.[close bracket][roman type][line break]".

Check an actor washing (this is the new restrict washing to the proximity of sinks rule):
	if the actor can touch a washing-appropriate thing:
		do nothing;
	otherwise:
		if the player is the actor:
			say "[We] [can] see no good source of fresh water for washing." (A) instead;
		stop the action;

The new restrict washing to the proximity of sinks rule is listed instead of the restrict washing to the proximity of sinks rule in the check washing rulebook.

Check an actor bathing (this is the new restrict baths to bathrooms rule):
	if the actor can touch a washing-appropriate thing:
		do nothing;
	otherwise:
		if the player is the actor:
			say "[We] [can] see no good source of fresh water for washing." (A) instead;
		stop the action;

The new restrict baths to bathrooms rule is listed instead of the restrict baths to bathrooms rule in the check bathing rulebook.


Understand "wash [something] in/with [something]" as washing it with.
Understand "clean [something] in/with [something]" as washing it with.
Understand "wet [something] in/with [something]" as washing it with.

Washing it with is an action applying to two things.

Instead of washing something with something that is not fluid:
	if the player's command includes "in" and the second noun is a container:
		if the second noun contains a fluid thing (called the liquid):
			try washing the noun with the liquid;
		otherwise:
			try washing the noun;
	otherwise:
		if the second noun is washing-appropriate:
			try washing the noun;
		otherwise:
			say "How would that even work?".

Check washing something with a fluid thing (called the liquid):
	unless the liquid is washing-appropriate:
		say "I doubt [the second noun] would make [the noun] much cleaner." instead;
	otherwise:
		try washing the noun instead.

Definition: a thing is washing-appropriate:
	if it is fountain-water:
		yes;
	if it is soap:
		yes;
	if it is sea-view:
		yes;
	if it is distant-sea-view:
		yes;
	if it is tap-water:
		yes;
	if it is secret-chamber-water:
		yes;
	if it is a tap which is part of something:
		yes;
	if it incorporates a tap:
		yes.

Section - Taps and washing

[Loosely based on rules from Part 3 - Flowing Water in Modern Conveniences by Emily Short]

The tap-water is fluid scenery.
	The indefinite article is "some". The printed name is "water". The description is "Ordinary tap water. Perhaps with a hint of green precipitate."
	Understand "water/precipitate" as the tap-water.
	Instead of taking the tap-water, say "[We] can't, not having webbed fingers."
	Instead of drinking the tap-water, say "It might not be sanitary."
	The scent-description of the tap-water is "wet metal".

The heft of a sink is 5.

Instead of examining something (called target sink) which incorporates a tap (called target tap):
	if description of target sink is not empty:
		say "[description of target sink][paragraph break]";
	if target tap is switched on:
		say "Water pours from [the target tap].";
	otherwise:
		if description of target sink is empty:
			if target sink is empty:
				say "[We] see nothing special about [the target sink].";
			otherwise:
				say "In [the target sink] [is-are a list of things *in target sink]."

Before printing the name of a drain (called target) (this is the drain identification rule):
	if target is part of something (called target sink) which is not the galley sink:
		say "[random thing which incorporates the target] " (A).

Does the player mean doing something to the tap-water:
	it is very likely.

Does the player mean doing something to a tap:
	it is very unlikely.

Does the player mean switching off the letter-remover:
	it is very unlikely.

Setting action variables for filling something with a switched on tap (this is the divert filling with taps rule):
	now the second noun is the tap-water.

Setting action variables for switching on when the noun is tap-water (this is the divert TURN OFF WATER rule):
	if some switched off taps (called target taps) are marked-visible:
		now the noun is the target taps;
	otherwise if some taps (called target taps) are marked-visible:
		now the noun is the target taps.

Setting action variables for switching off when the noun is tap-water (this is the divert TURN ON WATER rule):
	if some switched on taps (called target taps) are marked-visible:
		now the noun is the target taps;
	otherwise if some taps (called target taps) are marked-visible:
		now the noun is the target taps.

Sanity-check switching on a switched on tap:
	if there is a switched off tap (called target tap) enclosed by location:
		try switching on target tap instead.

Sanity-check switching off a switched off tap:
	if there is a switched on tap (called target tap) enclosed by location:
		try switching off target tap instead.

Before switching on a switched off tap (called target tap):
	let the target sink be a random container which incorporates the target tap;
	if the target sink is not nothing:
		[This works because we only allow the soap and derivates in sinks]
		if there is a non-empty sink (called soap-sink) in location and there is a thing (called soap-thing) which is not tap-water in soap-sink:
			now soap-thing is in target sink;
		unless the target sink is empty:
			say "As we turn on the water, [the list of things in target sink with definite articles] washes down the drain.";
			repeat with item running through things in target sink:
				if item is the soap or item is proffered by the soap:
					move item to repository;
					move soap to soap dispenser;
				otherwise:
					now the item is nowhere;
			move tap-water to target sink;
			now target tap is switched on;
			stop the action;

A last description-concealing rule (this is the new running things aren't scenery rule):
	now every open refrigerator in location is marked for listing;
	now a random switched on tap enclosed by location is marked for listing.

The new running things aren't scenery rule is listed instead of the running things aren't scenery rule in the description-concealing rules.

A first rule for writing a paragraph about a switched on tap:
	let S be the number of (sinks incorporating a switched on tap) enclosed by location;
	let B be the number of (baths incorporating a switched on tap) enclosed by location;
	if B is 0:
		if S is at least 2:
			say "There are [S in words] sink taps running.[paragraph break]";
			the rule succeeds;
		if S is 0:
			the rule succeeds;
	if B is 1 and S is 1:
		say "[The random (switched on tap which is part of a bath) enclosed by location] and [the random (switched on tap which is part of a sink) enclosed by location] are both running.[paragraph break]";
		the rule succeeds;
	say "[The list of switched on taps which are part of something enclosed by location] [are] running.[paragraph break]"

Last carry out an actor switching on a tap (called the target tap) (this is the move water supply rule):
	let the target sink be a random container which incorporates the target tap;
	if the target sink is not nothing:
		move tap-water to target sink.

The standard report switching taps on rule response (A) is "[We] [turn] on [the noun].[if the noun is part of something] Water flows into the [random thing which incorporates the noun].[end if]"

The standard report switching taps off rule response (A) is "[We] [turn] off [the noun].[if the noun is part of something] The water drains away.[end if]"

Check an actor washing (this is the new block washing rule):
	if the noun is fluid:
		 say "There's no restoration gel that will separate mixed liquids, you know. I'd rather stay away from the chemistry experiments." instead;
	if the noun is edible:
		say "That would not make [the noun] more appet[izing]." instead;
	if the player is the actor:
		say "[regarding nothing]It [don't] seem worth the bother to wash [the noun]." (A) instead;
	stop the action.

The new block washing rule is listed instead of the block washing rule in the check washing rulebook.

Last carry out an actor switching off a tap (called target tap) (this is the remove water supply rule):
	if there is a marked-visible switched on tap which is part of a container (called target container):
		move tap-water to target container;
	otherwise:
		now tap-water is nowhere.


Liquids ends here.
