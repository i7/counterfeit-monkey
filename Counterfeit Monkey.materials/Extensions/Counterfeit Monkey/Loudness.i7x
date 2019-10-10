Loudness by Counterfeit Monkey begins here.

Use authorial modesty.


A thing can be noisy or quiet. A thing is usually quiet.

Listening to something is acting fast.

A first every turn rule (this is the make noisemakers make noise every turn rule):
	if listening:
		make no decision;
	otherwise:
		follow the make noise rule.

The noisemaker is an object that varies.

This is the make noise rule:
	now the noisemaker is find noisy thing;
	if the noisemaker is not nothing:
		try listening to the noisemaker.

Instead of listening to a room:
	follow the make noise rule;
	if the noisemaker is nothing:
		continue the action.

Report listening to a quiet thing:
	say "[The noun] [one of][don't] make much noise[or][are] naturally silent[or][make] no notable noises[at random]." instead.

Report listening to a person:
	if the noun is the current interlocutor:
		say "I'm paying attention, don't worry." instead;
	otherwise:
		say "[We] hear some breathing, I guess. Nothing extraordinary." instead.


To decide which object is find noisy thing:
	(- FindNoiseMaker() -)

Include (-

Array noisy_things --> 10;

[ FindNoiseMaker i o audible_ceiling noisemaker;
	i = 0;

	noisemaker = nothing;

	! Search the container of the player for noisy things
	audible_ceiling = parent (player);

	while (audible_ceiling && ~~(audible_ceiling == real_location || (audible_ceiling has openable && audible_ceiling hasnt open)))
		audible_ceiling = parent(audible_ceiling);

	if (audible_ceiling == nothing)
			audible_ceiling = real_location;

	! We could be inside something noisy
	if (audible_ceiling provides (+ noisy +) && audible_ceiling.(+ noisy +))
		noisy_things --> i++ = audible_ceiling;

	if (audible_ceiling provides component_child && audible_ceiling.component_child)
			i = MyFindNoiseMakerLoop(audible_ceiling.component_child, i);

	i = MyFindNoiseMakerLoop(child(audible_ceiling), i);

	!Pick a random noisy thing and return it
	if ( i > 0)
		noisemaker = noisy_things --> (random(i) - 1);

	return noisemaker;
];

[ MyFindNoiseMakerLoop start i o;

	!loop through everything in start object
	for (o=start : o : ) {

		if (o provides (+ noisy +) && o.(+ noisy +)) {

			if(i >= 10) return 9;
			else
				noisy_things --> i++ = o;
				if(i == 10) return 9;
		}

		!Check any components recursively
		if (o.component_child)
			i = MyFindNoiseMakerLoop(o.component_child, i);

		if (o.component_sibling)
			i = MyFindNoiseMakerLoop(o.component_sibling, i);

		! Don't look inside closed containers
		if (child(o) &&  ~~(o has openable && o hasnt open) ) o = child(o);
		else
			while (o) {

				if (sibling(o)) { o = sibling(o); break; }

				o = parent(o);
				if ( o == parent(start)) return i;

			}
	}
	return i;
];

-).


Loudness ends here.
