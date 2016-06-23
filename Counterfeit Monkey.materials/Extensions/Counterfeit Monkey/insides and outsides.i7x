Insides and Outsides by Counterfeit Monkey begins here.

Use authorial modesty.

This is the attempt going in rule:
	let C be car-or-container;
	if C is enterable:
		say "([the C])";
		try entering C instead;
	otherwise:
		say "Any particular direction? ";
		carry out the listing exits activity.

This is the attempt going out rule:
	if the player is in an enterable thing:
		try exiting;
	otherwise:
		try departing the location.

Instead of facing outside:
	if the actor is in a container (called the box):
		if the box is closed and the box is opaque:
			say "[The actor] can't see outside [the box].";
		otherwise:
			say "(looking outside [the box])[line break]";
			try looking;
	otherwise:
		if the out-direction of the location is a direction:
			if the out-direction of the location is outside:
				continue the action;
			otherwise:
				try facing out-direction of location;
		otherwise:
			if the location is outdoors:
				say "[The actor] [are] not in anything at the moment.";
			otherwise:
				say "[The actor] can't see outside from here."

Instead of facing outside in the Old Hexagonal Turret:
	try examining the sea.

Instead of facing outside in the Tin Hut:
	say "([the circular windows])";
	try searching the circular windows.

Instead of facing outside in the Church Garden:
	try facing west.

Instead of facing inside in Old City Walls:
	say "([the turret-view])";
	try examining turret-view.

Instead of facing outside when location is nautical and location is indoors:
	if there are portholes in location:
		let P be random portholes in location;
		try searching P;
	otherwise:
		say "There are no portholes here."

Instead of facing outside when location is nautical and location is outdoors:
	say "No one appears to be approaching the ship or attempting to follow us, which is the main thing."

Instead of facing inside:
	if the in-direction of location is a direction:
		let dir be in-direction of location;
		if dir is inside:
			continue the action;
		let D be the door dir from the location;
		if D is not a door:
			let D be a random marked-visible facade fronting dir;
		if D is something:
			say "([the D])";
			try searching D instead;
		otherwise:
			try facing dir instead;
	otherwise:
		let C be car-or-container;
		if C is something:
			say "([the C])";
			try searching C instead;
	say "[one of]What should [we] look inside, exactly?[or][We]['re] not sure what to look inside here.[at random]"

To decide which object is car-or-container:
	if there is a car (called C) in location:
		decide on C;
	let B be a random marked-visible container in location;
	if B is a box listed in the Table of Obvious Containers to Look Inside:
		decide on B;
	otherwise:
		decide on nothing.

Instead of exiting when the player is not in an enterable thing:
	try going outside.

Understand "get out of [thing]" or "exit [thing]" as getting out. Getting out is an action applying to one thing.

Carry out getting out:
	if the actor is in the noun:
		try exiting;
	otherwise:
		say "[The actor] [are] not in [the noun]."

A room has an object called in-direction. The in-direction of a room is usually nothing.
A room has an object called out-direction. The out-direction of a room is usually nothing.

Table of Obvious Containers to Look Inside
box (a thing)
the backpack
the projector
the depluralizing cannon
the locker
the crate
the shopping bag
the plexiglas case
the large carton
the reclamation machine 
the shed
the wall-hole
the bin
the display case
the t-inserter machine
the cryptolock
the secret-door
the kayak
your wardrobe

Insides and Outsides ends here.