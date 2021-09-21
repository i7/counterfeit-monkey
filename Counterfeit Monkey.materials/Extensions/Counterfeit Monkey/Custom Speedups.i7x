Custom Speedups by Counterfeit Monkey begins here.

Use authorial modesty.

[ These are used to speed up Scope Caching ]

To rapidly set everything marked invisible:
	(- MyAllSetMarkedInvisible(); -).

To rapidly set (n - an object) marked visible:
	(- MySetMarkedVisible({n}); -).

To rapidly set everything marked-visible as seen:
	(- MySetAllMarkedVisibleAsSeen(); -).

To mark contents of (box - an opaque container) visible:
	(- if (child({box})) MarkContentsVisible(child({box})); -).

To mark contents of (box - an opaque container) invisible:
	(- if (child({box})) MarkContentsInvisible(child({box})); -).

To decide which object is random-visible-thing:
	(- RandomVisibleThing() -).

To decide which object is the unleavable:
	(- FindUnleavableLoop(real_location) -).


The new player aware of actions by visible actors rule is listed instead of the player aware of actions by visible actors rule in the player's action awareness rules.

The new player aware of actions on visible nouns rule is listed instead of the player aware of actions on visible nouns rule in the player's action awareness rules.

The new player aware of actions on visible second nouns rule is listed instead of the player aware of actions on visible second nouns rule in the player's action awareness rules.

A player's action awareness rule
	(this is the new player aware of actions by visible actors rule):
	if the player is not the actor and the actor is marked-visible, rule succeeds.

A player's action awareness rule
	(this is the new player aware of actions on visible nouns rule):
	if the noun is a thing and the noun is marked-visible, rule succeeds.

A player's action awareness rule
	(this is the new player aware of actions on visible second nouns rule):
	if the second noun is a thing and the second noun is marked-visible, rule succeeds.

Include (-

	[ MyAllSetMarkedInvisible obj;
		for (obj = IK2_First: obj: obj = obj.IK2_Link) {
			give obj ~(+ marked-visible +);
		}
	];

	[ MySetMarkedVisible obj;
		give obj (+ marked-visible +);
	];


	[ MySetAllMarkedVisibleAsSeen obj;
		for (obj=IK2_First: obj: obj=obj.IK2_Link) {
			if (obj has (+ marked-visible +) )
				 obj.(+ seen +) = true;
		}
	];

	[ MarkContentsVisible start o;
		!loop through everything in start object
		for (o=start : o :) {
			give o (+ marked-visible +);
			o.(+ seen +) = true;

			!Check any components recursively
			if (o.component_child)
				MarkContentsVisible(o.component_child);

			if (o.component_sibling)
				MarkContentsVisible(o.component_sibling);

			! Don't look inside closed opaque containers
			if (child(o) &&  ~~((o has openable && o hasnt open) && o hasnt transparent))
				o = child(o);
			else
				while (o) {
					if (sibling(o)) { o = sibling(o); break; }

					o = parent(o);
					if ( o == parent(start)) return;
				}
		}
		return;
	];

	[ MarkContentsInvisible start o;
		!loop through everything in start object
		for (o=start : o :) {
			give o ~(+ marked-visible +);

			!Check any components recursively
			if (o.component_child)
				MarkContentsInvisible(o.component_child);

			if (o.component_sibling)
				MarkContentsInvisible(o.component_sibling);

			! Don't look inside closed opaque containers
			if (child(o) &&  ~~((o has openable && o hasnt open) && o hasnt transparent))
				o = child(o);
			else
				while (o) {
					if (sibling(o)) { o = sibling(o); break; }

					o = parent(o);
					if ( o == parent(start)) return;
				}
		}
		return;
	];

	[ IsUnleavable obj;
		if (~~(obj ofclass (+ thing +))) rfalse;
		if (~~(obj.(+ essential +))) rfalse;
		if (obj ofclass (+ person +) && parent(obj) == parent((+ player +))) rfalse;
		if (~~(obj.(+ seen +))) rfalse;
		if ( obj == (+ origin paste +) && ~~(obj.(+ won +))) rfalse;
		if ( obj == (+ rock +) && ~~(Relation_TestVtoV((+ player +), (+ the fact-awareness relation +), (+ brock-found +), false))) rfalse;
		rtrue;
	];

	[ FindUnleavableLoop start o c;
		o=start;
		!loop through everything in start object
		while (o) {

			if (IsUnleavable(o))
				return o;

			!Check any components recursively
			if (o.component_child) {
				c = FindUnleavableLoop(o.component_child);
				if (c) return c;
			}

			if (o.component_sibling) {
				c = FindUnleavableLoop(o.component_sibling);
				if (c) return c;
			}


			! Don't look inside people or vehicles containing the player
			if (child(o) &&  ~~(o ofclass (+ person +) || ( o ofclass (+ vehicle +) && o == parent(player))) ) o = child(o);
			else
				while (o) {

					if (sibling(o)) { o = sibling(o); break; }

					o = parent(o);
					if ( o == parent(start)) return nothing;

				}
		}
		return nothing;
	];

	[ RandomVisibleThing i o start thing j;
		i = 1;
		thing = nothing;

		! Search the current location for things
		i = FindVisibleThing(child(real_location), i);

		! Pick a random thing out of all found and return it
		! I'm reusing Table of Inventory Ordering for this until somebody tells me not to
		if (i > 1)
		{
			j = random(i - 1);
			thing = ((+ Table of Inventory Ordering +)-->2)-->(j + COL_HSIZE);
		}
		if (metaclass(thing) == nothing)
			thing = nothing;
		return thing;
	];

	[ FindVisibleThing start i o;
		! loop through the local object tree from start
		for (o=start : o :) {
			! Add o to list unless it is a person or the roc or the list is full
			if ( (~~o ofclass (+ person +) ) || (o ofclass (+ animal +) && o ~= (+ the roc +) ) ) {
				if (i >= 100) return 100;
				((+ Table of Inventory Ordering +)-->2)-->(i+COL_HSIZE) = o;
				i++;
				if (i == 100) return 100;
			}

			! Check any components recursively
			if (o.component_child)
				i = FindVisibleThing(o.component_child, i);

			if (o.component_sibling)
				i = FindVisibleThing(o.component_sibling, i);

			! Don't look inside closed opaque containers or the backpack
			if (child(o) &&  ~~(o has openable && (o hasnt open && (o hasnt transparent || o == (+ the backpack +) )))) o = child(o);
			else
				while (o) {
					if (sibling(o)) { o = sibling(o); break; }

					o = parent(o);
					if ( o == parent(start)) return i;
				}
		}
		return i;
	];

-) after "Output.i6t".

Custom Speedups ends here.
