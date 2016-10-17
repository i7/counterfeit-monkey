Version 3 of Exit Lister by Gavin Lambert begins here.

"Automatic listing of available exits, with a reasonable dose of customization built in."

[
version 1 by Andre Kosmos - basic features
version 2 by Gavin Lambert - more features
version 3 by Mark Harviston <mark.harviston@gmail.com> - updated for 6L38
]

Section 1 - Text

To say closed door: say "(closed)".

To say no obvious exits: say "You can see no obvious exits."

A door has a text called passing text. Passing text of a door is usually "through".
A door has a text called closed text.  Closed text of a door is usually "[closed door]".
A door can be obvious.  Doors are usually obvious.

Section 2 - Preferences

List exits is a truth state that varies. List exits is true.
Mentioning doors is a truth state that varies. Mentioning doors is true.
Room memory is a truth state that varies. Room memory is true.
Darkness memory is a truth state that varies. Darkness memory is true.
Mentioning unvisited rooms is a truth state that varies. Mentioning unvisited rooms is true.

To mention doors: now mentioning doors is true.
To don't mention doors: now mentioning doors is false.
To mention visited rooms: now room memory is true.
To don't mention visited rooms: now room memory is false.
To mention visited rooms in darkness: now darkness memory is true.
To don't mention visited rooms in darkness: now darkness memory is false.

Section 3 - Listing Exits

The exit obviousness rules are an object-based rulebook.  The door obviousness rules are an object-based rulebook.

Last door obviousness rule for a door (called gateway) (this is the check obvious doors rule):
	if gateway is not obvious, rule fails.

An exit obviousness rule for a room (called place) (this is the darkness hides exits rule):
	if not in darkness, make no decision;
	if darkness memory is false, rule fails;
	if place is not visited, rule fails.

To decide if (way - a direction) is a listable exit:
	let place be the room way from the location;
	if place is not a room, decide no;
	follow the exit obviousness rules for place;
	if the rule failed, decide no;
	let gateway be the room-or-door way from the location;
	if gateway is a door
	begin;
		follow the door obviousness rules for gateway;
		if the rule failed, decide no;
	end if;
	decide yes.

Definition: A direction is exit-listable if it is a listable exit.

Listing exits is an activity.

The last for listing exits rule (this is the standard exit listing rule):
	let exits be the number of exit-listable directions;
	if exits is 0, say "[no obvious exits]";
	otherwise say "You can go [list of exit-listable directions] from here.".

Last after printing the name of a direction (called way) while listing exits (this is the standard exit printing rule):
	let place be the room way from the location;
	if mentioning doors is true
	begin;
		let gateway be the room-or-door way from location;
		if gateway is a door, say " [passing text of gateway] [the gateway]";
	end if;
	if place is visited and room memory is true, say " to [the place]".

Last after printing the name of a closed door (called gateway) while listing exits (this is the standard door closed text rule):
	say " [closed text of gateway]".

Section 4 - Player Rules

This is the exits rule: if list exits is true, carry out the listing exits activity.
The exits rule is listed last in the carry out looking rules.

Listing exits is an action applying to nothing.
Understand "exits" as listing exits.
Carry out listing exits: carry out the listing exits activity.

Turning exits on is an action out of world.
Understand "exits on" as turning exits on.
Carry out turning exits on: now list exits is true.
Report turning exits on: say "(exits listing is on)".

Turning exits off is an action out of world.
Understand "exits off" as turning exits off.
Carry out turning exits off: now list exits is false.
Report turning exits off: say "(exits listing is off)".

Section 5 - Secret Doors (for use with Secret Doors by Andrew Owen)

Definition: a secret door is obvious if it is revealed.
Definition: a secret door is not obvious if it is unrevealed.


Exit Lister ends here.

---- DOCUMENTATION ----

Chapter: About

This extension is based on Exit Lister by Andre Kosmos.  I've tried to keep the author-facing interface compatible while reworking the internal design and adding some extra features.

This gives you a list of available exits at the end of the room description.
There are options to mention doors that are in your way, to mention rooms you have already visited, and how much info to reveal in dark rooms.

For suggestions and feedback, Gavin Lambert can be contacted via "http://www.mirality.co.nz/".

Chapter: Reference

Section: New commands

...for the player

	'EXITS'	 ------- this gives a list of the available exits.
	'EXITS ON' ---- after this command there will be a list of available exits at the end of the room description. (default setting)
	'EXITS OFF' --- after this command the list of exits will no longer appear at the end of the room description.


 ...for the author:	(note: these are phrases, and must appear inside a rule; eg. "when play begins")

	'mention doors'
		after this command the exit lister will mention if there is a door in the way of an exit. (default setting)

	'don't mention doors'
		after this command doors will no longer be mentioned in the exit list.

	'mention visited rooms'
		after this command exits leading to a visited room will mention this room. (default setting)

	'don't mention visited rooms'
		after this command exits leading to a visited room will no longer mention this room.

	'mention visited rooms in darkness'
		after this command exits leading to a visited room will still be mentioned when in darkness. (default setting)

	'don't mention visited rooms in darkness'
		after this command no exits will be mentioned when in darkness.

Section: Properties and Text

Doors have a new property called passing text. The default is "through".
Some suggestions for other types of doors are: "over" for bridges, "climbing" for ropes and ladders.
	The passing text for the Wooden Bridge is "over".

Doors have a new property called closed text.  The default is "[closed door]", to make it use the common definition from previous versions of this extension, described below.
This can be overridden on a case by case basis, eg:
	The closed text for the brown door is "(barred)".

If the closed text for a door is not defined, closed doors are mentioned with the text "(closed)" by default, but you can write your own text with:
	To say closed door: say "(if you manage to open it)".

If you don't want to mention the fact that doors are closed (unless you've defined a "closed text" for it) you can use:
	To say closed door: do nothing instead.

You can also change the text shown when no obvious exits are visible (which doesn't necessarily mean no exits are present):
	To say no obvious exits: say "There doesn't seem to be anywhere you can go."

In addition, you can override the normal description by using the "listing exits" activity.  For example:
	Rule for listing exits while in Fog Bank: say "It's too foggy to see."

Doors can be made "not obvious".  This will cause them to be hidden from exit listings (and they will stay that way even after use unless you later mark them as "obvious").
	Hidden Trapdoor is a door.  It is not obvious.

Section: Advanced

For more complicated cases, you can also define a rule:
	A door obviousness rule for the Concealed Trapdoor:
		if the Secret Passage is not visited, rule fails.

This also works for exits, by checking against where they go to:
	An exit obviousness rule for the Hidden Chamber:
		if the Hidden Chamber is not visited, rule fails.

Note that it is best to only use "rule fails" and "make no decision" -- this permits other rules (such as the standard "darkness hides exits rule") to also hide the door/exit.

Also, while it's a little odd, you can choose to avoid describing specific exits like so (this will still display the direction, but won't display the name of the door or where it leads to):
	After printing the name of east while listing exits:
		if in the Garden, do nothing instead.

The standard "mention / don't mention visited rooms in darkness" controls let you decide if you want to tell the player the way to get out (ie. the way they came in) while hiding other paths (although bear in mind that by default Inform doesn't stop them actually using those other paths), or whether you want to hide all the exits and report that there are no obvious exits.  Note that only the room's visited flag is checked; in the Test Game example, the path up out of darkness to the Main Road is listed because the player has been to the Main Road, even though they haven't used that specific exit before.

In addition, there are a couple of other potentially useful alternatives.  One is to use a technique shown above to hide the message entirely (or to display a different message from normal):
	Rule for listing exits while in darkness: do nothing instead.

Another is to remove darkness handling entirely and to show all exits.  This breaks realism, so probably won't be common, but the option is there:
	The darkness hides exits rule is not listed in any rulebook.

One final option would be to override all normal handling (including testing for darkness) for a single exit -- perhaps you have a self-lit door (or with light seeping through the cracks), giving enough light to see the door but not its surroundings:
	A door obviousness rule for the Glowing Door:
		rule succeeds.

Chapter: Integration

If the "Secret Doors by Andrew Owen" extension is in use (this is optional), an unrevealed secret door is automatically unobvious as well.

Chapter: Change Log

Section: Changes from version 1 to version 2

Replaced "object-based-rulebook" with "object-based rulebook", which seems to make recent versions of I7 happier.

Replaced custom "yes_no_flag" variable kind with the built-in "truth state" (added in 5G67), to reduce clutter.

Added "closed text" property to doors.

When printing the names of exit destinations, the definite article is used (if you've used any article when defining the place in your source text).

Example: * Test Game for Exit Lister - 

This example asks the player up front what they want to see in the exit list, in order to better demonstrate the options.  Normally, though, these will be fixed by the author, although if you want you can define additional commands to let the player change them at will.

	*: "Test Game for Exit Lister" by Gavin Lambert.
	After printing the banner text: say "Based on the test game by Andre Kosmos."
	
	Include Exit Lister by Gavin Lambert.
	
	Hallway is a room. "This hallway is decorated with the simplest wallpaper you have ever seen. There are no pictures, or plates with wise words, nor tiles with proverbs hanging on any of the walls. The only thing you notice is that all the doors are painted in different colors."

	The pink door is east of hallway and west of Bathroom. It is a door and scenery.
	The description of the bathroom is "Everything in here is pink. The tiles on the walls, the toilet bowl, the bathtub, the floor, and even the ceiling. The only thing not pink is a large mirror on the wall, but since all it reflects is pink that hardly matters.".
	A large mirror is scenery in bathroom. Instead of examining mirror, say "Don't be vain, you look fine.".

	The brown door is west of hallway and east of the Living Room. It is a door and scenery. The closed text of the brown door is "(barred)".
	The description of the living room is "You are in a well decorated room here, there are numerous pictures on the walls, some comfy looking chairs, and a big television set."

	The green door is south of hallway and north of Garden. It is a door and scenery.
	The description of garden is "A large garden with very short cut grass, and various flowerbeds. The main thing you notice is a large oak tree. From between the leaves of the trees you see a rope ladder hanging down to the ground. The ladder is dug into the ground to keep it from swinging too much when you climb it."

	The rope ladder is up from garden and down from the Tree house. It is a open unopenable door and scenery.
	The passing text of rope ladder is "climbing". Instead of climbing the rope ladder in tree house, try going down. Instead of climbing the rope ladder in garden, try going up.

	The description of the tree house is "A Rather untraditional tree house, the walls are decorated with a rather ugly wallpaper with pink and purple flowers, and a thick red carpet covers the floor."

	A wooden bridge is east of garden and west of the Main Street. It is an open unopenable door and scenery. The passing text of the wooden bridge is "over".

	The description of the main street is "This is the main street, from here you could go to town to see a movie, visit a pub, or something. If only the author of this game wasn't too lazy to write those pleasant locations in. Ah well... maybe next version."

	West End of Tunnel is down from the garden. "The western end of a small tunnel running under the river." It is dark.
	East End of Tunnel is down from Main Street. "The eastern end of a small tunnel running under the river." It is dark.
	East of West End of Tunnel is East End of Tunnel.

	A light stick is in Main Street.  "A feebly-glowing light stick lies discarded nearby."  It is lit.

	When play begins:
		say "Do you want a list of possible exits at the end of the room description?";
		if player consents, try turning exits on;
		otherwise try turning exits off;
		say "[paragraph break]You can always turn the exit list on or off with the commands EXITS ON and EXITS OFF. You can also always ask for an exit list with the command EXITS.[paragraph break]Do you want the exit lister to mention locations you have already visited?";
		if player consents, mention visited rooms;
		otherwise don't mention visited rooms;
		say "[paragraph break]Sometimes the exit list can tell you that you can go north, but when you try to the game tells you that You can't, since some door is in the way. [paragraph break]Do you want to mention those doors in the exit list?";
		if player consents, mention doors;
		otherwise don't mention doors;
		say "[paragraph break]Do you want the exit lister to still mention visited rooms even in darkness?";
		if player consents, mention visited rooms in darkness;
		otherwise don't mention visited rooms in darkness;
		say "[paragraph break]".

	test me with "open green door / s / e / w / u / d / d / e / u / get stick / d / w"
