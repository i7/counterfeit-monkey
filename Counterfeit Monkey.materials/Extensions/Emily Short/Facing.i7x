Version 11/160611 of Facing by Emily Short begins here.

"Provides actions to face a direction, look toward a named room, or look through a named door."

To look is a verb. To see is a verb.

[Includes adaptive text.]

[ There are three possible ways the player can specify that he wishes to look into another room from the present location:

1. facing a direction; 2. looking toward a named room; 3. looking through a given door. 

In all three cases we want to establish the direction, the goal room, and the intervening door, then apply check and carry out rules in a sensible way. This is not quite as complex as the going action, which has to keep track of direction traveled, door traveled through, objects pushed along, and vehicles; but we use a similar technique of setting a bunch of global variables and then consolidating the check rules in such a way that any given rule (such as "the player cannot see through a closed door") is expressed in only one place.]

Viewed location is a room that varies. Occluding door is an object that varies. Direction faced is a direction that varies.

A door can be transparent.

[Now some routines to help us handle all this. ]

To decide what object is the door between (this place - a room) and (that place - a room):
	repeat with item running through doors enclosed by this place:
		if that place is the front side of the item or that place is the back side of the item, decide on the item; 
	decide on nothing. 

Definition: a room (called the considered room) is proximate: 
	repeat with item running through doors in the location:
		if the other side of the item is the considered room:
			yes;
	no.

[To handle LOOK THROUGH DOOR:]

Instead of searching a door (this is the player looking through doors rule): 
	abide by the looking through doors rule.
	
Instead of someone trying searching a door (this is the other person looking through doors rule):
	abide by the looking through doors rule.
	
This is the looking through doors rule:
	now the direction faced is the direction of the noun from the location; 
	if direction faced is not a direction:
		if the player is the person asked,
			say "[nothing-to-see-that-way][paragraph break]" (A);
		stop the action; 
	now the viewed location is the other side of the noun; 
	if the player is the person asked, try looking toward the viewed location;
	otherwise try the person asked trying looking toward the viewed location.

nothing-to-see-that-way is some text that varies. nothing-to-see-that-way is "[We] [can] make out nothing that way."
	

Understand "look [direction]" as facing. Understand "face [direction]" as facing. Understand "look to/toward/towards [direction]" as facing.

Facing is an action applying to one visible thing.

Check someone trying facing (this is the setting someone's direction faced rule): abide by the setting direction faced rule.

Check facing (this is the setting your direction faced rule): abide by the setting direction faced rule.

This is the setting direction faced rule:
	now the direction faced is the noun.
	
Check facing (this is the redirect to looking toward rule):
	now the viewed location is the room noun from the location;
	if viewed location is a room:
		try looking toward the viewed location;
		rule succeeds.
	
Check someone trying facing (this is the redirect someone to looking toward rule):
	now the viewed location is the room noun from the location;
	if viewed location is a room:
		try the person asked trying looking toward the viewed location;
		rule succeeds.
	
Report facing (this is the standard report facing rule): 
	if viewed location is not a room, say "[nothing-to-see-that-way][paragraph break]" (A).
	
Report someone trying facing (this is the standard report someone facing rule):
	if viewed location is not a room, say "[regarding nothing]There [aren't] much for [the person asked] to see in that direction." (A)

[Here is where we might also add special rules for "look up" or "look down" if so inclined: Instead of looking up: might be a good place to put in comments about a ceiling or sky object if there is one, for instance. The extension does not preprogram anything like this on the assumption that games will vary widely in their furnishings, but it would be easy to put in.]

Understand "look at/to/toward/towards [any adjacent room]" as looking toward. 

Understand "look at/to/toward/towards [any proximate room]" as looking toward. [Understand "examine [any proximate room]" as looking toward.]

Looking toward is an action applying to one visible thing.
 
Check an actor looking toward a room (this is the can't see through closed door rule): 
	now the occluding door is the door direction faced from the location;  
	if the occluding door is a door and the occluding door is closed and the occluding door is not transparent:
		if the person asked is the player:
			if the sequential action option is active:
				try opening the occluding door;
			otherwise:
				say "(first opening [the occluding door])[command clarification break]" (A);
				silently try opening the occluding door; 
		otherwise:
			try the person asked trying opening the occluding door; 
		if the occluding door is closed:
			if the player is not the person asked, say "[The person asked] [can't] see that way because [the occluding door] [are] closed." (B) instead;
			stop the action; 

Section - (For use without Locksmith by Emily Short)

Use sequential action translates as (- Constant SEQUENTIAL_ACTION; -).

Section -

Carry out looking toward (this is the describing a room from afar rule):
	carry out the distantly describing activity with the noun.

Report someone trying looking toward (this is the default report someone looking toward rule): 
	let N be "[the noun]";
	say "[The person asked] [look] toward [N in lower case]." (A)

Distantly describing something is an activity.

Rule for distantly describing a room (called target) (this is the default distant description rule):
	let N be "[the target]"; 
	say "[We] [see] [N in lower case] that way." (A)

Facing ends here.

---- DOCUMENTATION ----

Facing allows the player to LOOK a direction and be told what lies in that area.

Chapter: Added Abilities

Section: New actions

Facing adds the actions "facing [a direction]" and "looking toward [a room]". When the player does one of these actions, he is told what room lies in that direction, unless a closed door intervenes. LOOK THROUGH DOOR also redirects to the same action. In processing these actions, it assigns three variables: 

(1) the occluding door, if any, is the door that stands in the way of the player's line of sight; 

(2) the direction faced is the direction in which he is looking; 
	
(3) the viewed location is the room that the player will see if the door is not closed.

These actions are also implemented for non-player characters, so that characters instructed to look some direction will try to do so.

Section: New phrases

In the process of discovering these, Facing also defines some phrases that may be useful in general:

(1) the door between (this place - a room) and (that place - a room) returns the door between two rooms, if any; e.g.,
	
	the door between the barn and the yard

...which will be a door if there is one, and nothing if there isn't. 

Section: Implicit Actions

If the player or a non-player character needs to look through a closed door, an open action will be generated automatically. The implicit action follows the conventions of Emily Short's Locksmith extension: if we "Use sequential action", this will be reported as

	You open the white door.

	You can see the hallway.

but otherwise reported as
	
	(first opening the white door)
	You can see the hallway.

To override this implicit action, replace the "can't see through closed door rule" with another that merely checks whether the occluding door is closed and, if so, stops the action.

Doors that are transparent may be seen through even when closed.

Chapter: Controlling output

Section: Distantly describing

Finally, Facing adds a distantly describing activity that controls how a room is seen from the outside. By default, this is the distantly describing rule:

	Rule for distantly describing a room (called target): 
		let N be "[the target]";
		say "[We] [see] [N in lower case] that way."

But we may change this for a specific room, so:

	Rule for distantly describing the hallway:
		say "The hallway is quite crowded at this time of day."

If we need to work around the lower-casing:
	
	Rule for distantly describing a city (called the target):
		say "You make out [the target] that way."

If we need to acknowledge the door through which we are looking:

	Rule for distantly describing the changing room when the occluding door is a door:
		let N be indexed text;
		now N is "[the changing room]";
		say "You glance through [the occluding door] at [N in lower case]."

Section: nothing-to-see-that-way

The most common other piece of textual output is "You can make out nothing that way.", the default response printed when the player looks in a direction that does not reveal a room.

To replace this in play with our own preferred text, we might add a line such as

	When play begins:
		now nothing-to-see-that-way is "We can't see anything interesting in that direction."

Chapter: Dependencies and change log

Section: Dependencies

Facing requires Plurality by Emily Short. It is compatible with Locksmith but does not depend on its inclusion. 

Section: Change log

Version 5 isolates some of the text to make it more replaceable and upgrades the documentation with better section headings. Version 6 updates for the greater strictness of Inform 5T18, which requires that we say doors can be transparent before making them so. 

Version 9 updates for 6E59, removing deprecated features. It also removes a number of phrases formerly defined inside Facing, because equivalent ones are now built into the standard rules.

Version 10 updates for adaptive text and responses.

Version 11/160611 Small fix to make it work alongside Locksmith by Emily Short - Petter Sjölund

Example: * Directions and Doors - Allowing the player and his sidekick Clark to see into various rooms.

	*: "Changing Room"
	
	Include Facing by Emily Short.

	The Changing Room is a room. The white door is north of the Changing Room and south of the Hallway. The white door is a door. Clark is a man in the changing room. A persuasion rule: persuasion succeeds. The closet door is west of the changing room and east of the Storage Closet. The closet door is a door. It is closed and locked.
	
	The sliding glass door is a door. It is southeast of the changing room and northwest of the Patio. It is transparent.
	
	Rule for distantly describing the hallway:
		say "Off in the hallway, you make out a steady stream of auditioners coming and going; some looking tense, some relieved."
		
	Rule for distantly describing a room (called target) when the occluding door is closed and the occluding door is transparent:
		let N be indexed text;
		now N is "[the target]";
		say "Through the glass of [the occluding door], you make out [N in lower case]."
	 
	Test me with "look north / close white door / clark, look north / look east / Clark, look east / look west / Clark, look west / look southeast / open sliding door / se / look nw / close door / look nw".
