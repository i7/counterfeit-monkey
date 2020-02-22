Approaching Speedups by Counterfeit Monkey begins here.

Use authorial modesty.

A room can be non-checkpoint or checkpoint. A room is usually non-checkpoint.

["Checkpoint" rooms are those that must be properly gone to rather than just moved to when approaching]

The creating a path history rule is not listed in any rulebook.

This is the even newer creating a path history rule:
	add the approach-heading to the path so far of the player;
	let approach-destination-name be the printed name of the approach-destination;
	let adverb be "";
	let X be the number of entries in the path so far of the player;
	if X is greater than 1:
		let previous direction be entry (X - 1) in the path so far of the player;
		if the previous direction is the approach-heading, now adverb is "again ";
	let N be "[approach-heading] [adverb]to [approach-destination-name]";
	unless approach-destination is proper-named:
		now N is N in lower case;
	add N to the described motion of the player;

Carry out going to a forbidden room (called target):
	now the target is nonsecret.

Understand "go to [any nonsecret room]" or "goto [any nonsecret room]" or "go back to [any nonsecret room]" or "return to [any nonsecret room]" or "revisit [any nonsecret room]"  as approaching.

The tell the player when blocked at a door rule response (A) is "Unfortunately, [we] [find] [we] [lack] a key fitting [the locked-thing].";

The new approach refusal rule is listed instead of the refusing bad headings rule in the approach-finding rules.

This is the new approach refusal rule:
	if approach-heading is not a direction:
		say "Neither of us can think how to get there from here.";
		rule fails.

The new approach heading finding rule is listed instead of the approach-heading selection rule in the approach-finding rules.

This is the new approach heading finding rule:
	now approach-heading is the true-best route to the noun.

The new default approaching rule is listed instead of the default approaching rule in the carry out approaching rules.

Carry out approaching (this is the new default approaching rule):
	now approach-heading is the true-best route to the noun;
	if the room approach-heading from the location is the noun:
		try going approach-heading instead; [ If the destination is adjacent, just go there instead ]
	abide by the don't-leave-the-unleavable rule;
	clear path-walked for the player;
	now the player is hurrying;
	while the location is not the noun:
		follow the approach-finding rules;
		if rule failed:
			now the player is staid;
			stop the action;
	now the player is staid;
	if the number of entries in the path so far of the player is greater than 1:
		carry out the describing path activity with the player;
		say paragraph break;
	otherwise:
		clear path-walked for the player;
	try looking instead.

The default looking on arrival after approaching rule is not listed in any rulebook.

The describe overall path on arrival rule is not listed in any rulebook.

The new actual approach movement rule is listed instead of the actual approach movement rule in the approach-finding rules.

An approach-finding rule (this is the new actual approach movement rule):
	now location is visited;
	follow the new creating a path history rule;
	if location is initial room or approach-destination is checkpoint or approach-destination is not a room:
		silently try going approach-heading;
	otherwise:
		if player is in a car (called parent car):
			if approach-destination is offroad:
				silently try going approach-heading;
			otherwise:
				move parent car to approach-destination, without printing a room description;
		otherwise:
			if location is a road and approach-destination is a road:
				silently try going approach-heading;
			otherwise:
				rapidly move followers to approach-destination;
				move player to approach-destination, without printing a room description;
	follow the even newer creating a path history rule.


The new other character approach rule is listed instead of the other character approach rule in the carry out approaching rules.

Carry out someone approaching (this is the new other character approach rule):
	clear path-walked for the actor;
	now initial room is the location of the actor;
	while the location of the actor is not the noun:
		now approach-heading is the true-best route from the location of the actor to the noun;
		if approach-heading is not a direction:
			stop the action;
		now approach-destination is the room approach-heading from the location of the actor;
		try the actor going the approach-heading;
		if the location of the actor is not the approach-destination:
			stop the action.


To decide which direction is the true-best route from (x - a room) to (y - a room):
	(- MyRouteTo({x},{y}) -).

To decide which direction is the true-best route to (x - a room):
	(- MyRouteTo(real_location,{x}) -).

To decide which number is the best-number of moves from (x - a room) to (y - a room):
	(- MyCountRouteTo({x},{y}) -).

Include
(-

Array my_directions --> nothing (+ north +) (+ northeast +) (+ east +) (+ southeast +) (+ south +) (+ southwest +) (+ west +) (+ northwest +) (+ up +) (+ down +) (+ inside +) (+ outside +) (+ fore +) (+ fore-starboard +) (+ starboard +) (+ aft-starboard +) (+ aft +) (+ aft-port +) (+ port +) (+ fore-port +);

[ MyRouteTo from to i;
	if (from == to) return nothing;
	i = route_finding->(from.room_index_2*NUM_ROOMS + to.room_index_2);
	return my_directions-->i;
];

[ MyCountRouteTo from to place moves;
	moves = 0;
	place = from;
	while (place ~= to) {
		place = MapConnection(place, MyRouteTo(place, to));
		moves++;
	}
	return moves;
];

-) after "Relations.i6t".

Approaching Speedups ends here.
