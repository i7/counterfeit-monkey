Insides and Outsides by Counterfeit Monkey begins here.

Use authorial modesty.

This is the attempt going in rule:
	if in-direction of location is a direction and in-direction of location is not inside:
		try going in-direction of location;
	otherwise:
		let C be car-or-container;
		if C is enterable:
			say "([the C])";
			try entering C;
		otherwise:
			say "[one of]Enter what, exactly? [run paragraph on][or]There's nothing obvious to enter here. [run paragraph on][at random]";
			carry out the listing exits activity.

This is the attempt going out rule:
	if the player is in an enterable thing or the player is on an enterable thing:
		try exiting;
	otherwise if out-direction of location is a direction and out-direction of location is not outside:
		try going out-direction of location;
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
	let dir be in-direction of location;
	if dir is a direction:
		let D be the door dir from the location;
		if D is not a door:
			let D be a random facade in location fronting dir;
		if D is not nothing:
			say "([the D])";
			try searching D instead;
		otherwise if dir is inside:
			continue the action;
		otherwise:
			try facing dir instead;
	otherwise:
		let C be car-or-container;
		if C is not nothing:
			say "([the C])";
			try searching C instead;
		otherwise:
			say "[one of]What should [we] look inside, exactly?[or][We]['re] not sure what to look inside here.[at random]"

To decide which object is car-or-container:
	if there is a car (called C) in location and the player is not in C:
		decide on C;
	let B be a random marked-visible container in location;
	if B is a box listed in the Table of Obvious Containers to Look Inside and the player is not enclosed by B:
		decide on B;
	otherwise:
		decide on nothing.

Instead of exiting when the player is not enclosed by an enterable thing and the player's command does not include "get off/down/up":
		try going outside.

Check entering something (called target) when the target is in a container (called the target-parent):
	if target-parent is not enterable:
		say "[The target-parent] [are] too small to allow for that." instead;
	if target-parent is closed:
		say "[The target-parent] [are] closed." instead.

Check entering a closed enterable container (called the target) when the player is not in the target (this is the attempt opening on enter rule):
	try opening the noun;
	if the noun is closed, stop the action.

Check exiting when the player is in a closed container (called the current-container) (this is the attempt opening on exit rule):
	try opening the current-container;
	if the current-container is closed, stop the action.

Understand the command "enter" as something new.
Understand "enter" as vaguely entering. Vaguely entering is an action applying to nothing.
Understand "enter [thing]" or "get in/into [thing]" as entering.

Carry out vaguely entering:
	try going inside.

Understand "get out of [thing]" or "get out [thing]" or "exit [thing]" as getting out. Getting out is an action applying to one thing.

Understand "get out of here" as exiting.

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
