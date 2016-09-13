Version 7 of Approaches by Emily Short begins here.

"Approaches provides a GO TO place action which allows the player to move through visited rooms to a new location. It also allows other characters to traverse the map to named locations. It is designed to work with Locksmith by Emily Short. Version 7 drops the erroneous requirement of the Plurality extension, which was still mentioned in Version 6."

[Does adaptive text.]

To find is a verb. To lack is a verb. To head is a verb. To go is a verb.

Include Version 6 of Locksmith by Emily Short.

A person can be staid or hurrying. A person is usually staid.
A room can be proper-named or improper-named.

Before refusing keys of something (this is the tell the preface blocked doors with path walked rule): 
	say "[path-walked so far]" (A).
	
Rule for refusing keys of an object (called locked-thing) when the player is hurrying (this is the tell the player when blocked at a door rule):
	say "Unfortunately, [we] [find] [we] [lack] a key fitting [the locked-thing].[no line break]" (A);
	rule succeeds.

A person has a list of objects called the path so far.
A person has a list of indexed text called described motion.
	
To say path-walked so far:
	carry out the describing path activity with the player.

Describing path of something is an activity.

Rule for describing path of someone (called the worker) (this is the default path description rule):
	if the number of entries in the path so far of the worker is greater than 0:
		if the location is not the noun:
			let N be the number of entries in the described motion of the worker;
			let last movement be entry N in the described motion of the worker;
			truncate the described motion of the worker to (N - 1) entries;
			if N is 1:
				say "[The worker] [head]" (A);
			otherwise:
				say "[The worker] [go] [described motion of the worker]" (B);
				if N is greater than 2, say ", before heading" (C); 
				otherwise say ", then [head]" (D); 
			say " [the last movement]. [run paragraph on]" (E);
		otherwise:
			say "[The worker] [go] [described motion of the worker]. [run paragraph on]" (F);
	clear path-walked for worker.
		
To clear all/the/-- path-walked for (worker - a person):
	truncate the described motion of the worker to 0 entries;
	truncate the path so far of the worker to 0 entries.

Understand "go to [any visited room]" or "go back to [any visited room]" or "return to [any visited room]" or "revisit [any visited room]"  as approaching.  

Approaching is an action applying to one visible thing.

The approaching action has a room called the initial room.

Check an actor approaching (this is the can't approach our current location rule):
	if the noun is the location of the actor:
		if the actor is the player, say "[We] [are] already in [the location]." (A);
		stop the action;
	otherwise:
		now the initial room is the location;

The approach-finding rules are a rulebook.

The approach-heading is an object that varies.
The approach-destination is a room that varies.
The final destination is a room that varies.

A first approach-finding rule (this is the recording destination rule):
	now the final destination is the noun.

An approach-finding rule (this is the approach-heading selection rule):
	now approach-heading is the best route from the location to the noun through visited rooms, using doors;
	if approach-heading is not a direction:
		now approach-heading is the best route from the location to the noun through visited rooms, using even locked doors;

An approach-finding rule (this is the refusing bad headings rule):
	if approach-heading is not a direction:
		say "[We] [can't] think how to get there from here." (A);
		rule fails; 

An approach-finding rule (this is the find outcome rule):
	now approach-destination is the room approach-heading from the location; 

An approach-finding rule (this is the actual approach movement rule):
	silently try going approach-heading. 

An approach-finding rule (this is the abort movement if held up rule):
	if the location is not the approach-destination:
		clear the path-walked for the player;
		now the player is staid; 
		if the location is not the initial room:
			say conditional paragraph break;
			try looking;
		rule fails; 

Carry out going while the player is hurrying (this is the creating a path history rule):
	add the approach-heading to the path so far of the player; 
	let approach-destination-name be "[the approach-destination]"; 
	let adverb be "";
	let X be the number of entries in the path so far of the player;
	if X is greater than 1:
		let previous direction be entry (X - 1) in the path so far of the player;
		if the previous direction is the approach-heading, now adverb is "again ";   
	let N be "[approach-heading] [adverb]to [approach-destination-name in lower case]"; 
	if approach-destination is proper-named:
		let N be "[approach-heading] [adverb]to [approach-destination-name]"; 
	add N to the described motion of the player; 

An approach-finding rule (this is the final approach success rule):
	rule succeeds.

Carry out approaching (this is the default approaching rule):
	clear path-walked for the player;
	now the player is hurrying;
	let initial location be the location; 
	while the location is not the noun:
		follow the approach-finding rules;
		if rule failed:
			now the player is staid;
			stop the action;
	now the player is staid;

Carry out someone approaching (this is the other character approach rule):
	clear path-walked for the actor;
	let initial location be the location of the actor; 
	while the location of the actor is not the noun:
		now approach-heading is the best route from the location of the actor to the noun, using doors;
		if approach-heading is not a direction:
			now approach-heading is the best route from the location of the actor to the noun, using even locked doors;
		if approach-heading is not a direction:
			stop the action; 
		now approach-destination is the room approach-heading from the location of the actor; 
		try the actor going the approach-heading;
		if the location of the actor is not the approach-destination:
			stop the action.

Report approaching when the location is the noun and the number of entries in the path so far of the player is greater than 1 (this is the describe overall path on arrival rule):
	carry out the describing path activity with the player;
	say paragraph break;
	try looking instead.
	
Report approaching when the location is the noun (this is the default looking on arrival after approaching rule):
	clear path-walked for the player;
	try looking instead.

Approaches ends here.

---- Documentation ----

Approaches provides a GO TO ... action which allows the player to move to a named room, as long as the path lies through rooms he has already visited.

Several Inform examples already show how to do this: what Approaches adds is a flexible and adaptable set of rules and more elegant reporting of movement through intermediate rooms before arrival at the final goal. 

Chapter: Route-finding methods

Section: Default behavior with visited rooms only

By default, Approaches will find a route only through rooms already visited by the player, but it will ignore states of darkness. (A dark room never becomes "visited" until the player has seen it in the light, though, so this will not facilitate fumbling through dark rooms.) It also seeks a route first through unlocked doors and only attempts locked doors if that fails.

If we wish to change this behavior, we may do so by replacing the approach-heading selection rule, which currently reads thus:

	An approach-finding rule (this is the approach-heading selection rule):
		now approach-heading is the best route from the location to the noun through visited rooms, using doors;
		if approach-heading is not a direction
		begin; 
			now approach-heading is the best route from the location to the noun through visited rooms, using even locked doors;
		end if.

Section: Routes through unvisited rooms

If we wanted, we could replace this rule with another, such as 

	An approach-finding rule (this is the new approach-heading selection rule):
		now approach-heading is the best route from the location to the noun, using even locked doors.

This eliminates the double-pass approach and allows the player to move across areas of the map as yet unvisited. 

This may still be too limiting, however, since by default Approaches only understands GO TO or RETURN TO or GO BACK TO or even REVISIT any room which the player has already visited. Names of unvisited rooms are not recognized, to protect the game's secrets.

If we want to let the player move through unvisited rooms, we may also want to let him GO TO places he hasn't been yet; in that case we could add the line

	Understand "go to [any room]" or "go back to [any room]" or "return to [any room]" or "revisit [any room]"  as approaching.  

See Riverside Path, below, for an example of how to combine these elements.

Section: Routes in darkness

If we want to force the player to avoid darkness, we could also write

	An approach-finding rule (this is the lighted-room approach-heading selection rule):
		now approach-heading is the best route from the location to the noun through lighted rooms, using even locked doors.

...though another approach would be to find and execute the path, but stop the player at the point where he reaches a dark room and not allow him to enter it. The example "Traveling with Candles", below, demonstrates how to do this.

Section: Stopping partway through a path

The trickiest aspect of the go to command is that the player can be stopped at any time by a locked door or by some other instead rule preventing motion; and if that happens, we want to print the description of the route taken so far and only then explain what the barrier was.

Approaches is designed to work with Locksmith in such a way that if the player encounters a locked door for which he doesn't have a key, the path will be printed first and then the lack of key will be explained. But if we are also introducing other things that can stop the player, we need to write rules that account for the possibility of interrupted travel.

To do this, we would invoke the describing path activity, as in

	carry out the describing path activity with the player.

or, as a shortcut useful in text output,

	say "[path-walked so far]".

In the event that the player has not already traveled through several rooms, this will print nothing, so no extra conditions are needed to use it. See the Wide-Eyed Saloon example below for a demonstration of this.

Chapter: Refining the description of movement

Section: The path history rule

Approaches creates a description of the player's trip by making a list of pieces of indexed text, such as "south to the wishing well" or "northeast again to Peter's House". This list is called the described motion of a person; so when it comes time to print out the path description, we simply say "[described motion of the player]" and get a comma-delimited list of each of the directions the player goes.

There are several points at which we can intervene to modify the text that is built and printed here. 

One is to replace the creating a path history rule, which constructs these pieces of text. If we want to use essentially the same method but write the output text in a different language or using different conventions, that would be the best place to intervene.

For instance, we might change to the following if we wanted to be sure to list doorways passed through:

	An approach-finding rule (this is the new creating a path history rule):
		add the approach-heading to the path so far of the player;
		let approach-destination-name be indexed text;
		let approach-destination-name be "[the approach-destination]";
		let adverb be indexed text;
		let adverb be "";
		let X be the number of entries in the path so far of the player;
		if X is greater than 1
		begin;
			let previous direction be entry (X - 1) in the path so far of the player;
			if the previous direction is the approach-heading, now adverb is "again ";
		end if;
		if the room-or-door approach-heading from the location is a door, now adverb is "[adverb]through [the room-or-door approach-heading from the location] ";
		let N be indexed text;
		if approach-destination is proper-named, 
			let N be "[approach-heading] [adverb]to [approach-destination-name]";
		otherwise let N be "[approach-heading] [adverb]to [approach-destination-name in lower case]"; 
		add N to the described motion of the player;
		say "[run paragraph on]"; [a mildly inelegant hack to correct for the fact that the indexed-text handling is inserting gratuitous line breaks here]

or, if we planned very complicated variations, we could even break this behavior down into a new rulebook or set of activities, allowing for very specific customized travel descriptions for any given pair of rooms.

Section: The describing path of activity

A second possibility is to rewrite the rule for describing path: "describing path of something" is an activity, so we can supply special rules for alternative player characters, while driving in a car, etc. 

The possibilities here are moderately complex; the "Jade Amphitheater" example below demonstrates one approach, whereby we might change our output to leave out the direction names and just list the rooms passed through, as in

	You go to Crimson Chamber by way of Grooved Channel, Shallow Jade Amphitheater, Silver Filigree Prison and Mandarin Casket Room.

Section: Changing the cases or names of rooms in movement output

At a more microscopic level: names of rooms will be put in the lower case unless they are proper-named: this means that places called, e.g., "the church" will be lower-cased, but "Paris" would be left in its original sentence casing. If we want to do anything extraordinary to override this behavior, we can always write a rule such as

	Rule for printing the name of the Lotus-Eaters' Island while approaching:
		say "dangerously soporific island"

and this new text will be used instead of the usual name. See the "Proper Places" example for a fuller demonstration of how to control this output.

Chapter: Other characters

Section: A warning

The behavior of Approaches for characters other than the player is relatively simple: most steps of approach-finding are omitted. Other characters are allowed, by default, to travel through any rooms they like, subject to the usual rules about locked doors; no special attempt is made to modify the description of that travel, because in almost all cases, the player will only be around to see the character move (at most) into and out of a room. So the regular report going rules are adequate to the cause.

This may not be ideal if the player character ever winds up riding in a vehicle with another character while the other character follows a path through multiple rooms. In this case, we will see a series of room descriptions and movement announcements, and the output text could end up being rather long and complex.

This is a sufficiently uncommon situation that Approaches does not attempt to provide an alternate reporting method for us; appropriate description is likely to vary from game to game.

Example: * Easy Keys - Demonstrating how to use Approaches with Locksmith to create doors that properly bar the player's travel.

Approaches is designed to work together with Locksmith to produce sensible messages when the player stops in the middle of going somewhere because of a locked door. Conversely, if the player does have the correct keys, he will automatically unlock, open, and move through any doors that stand in his way, without special comment.

The only trick to bear in mind here is that we must use the "sequential action" option; otherwise, Locksmith will print "(first unlocking the hut door)" sorts of messages at inappropriate points in our action reporting.

So for example:

	*: "Easy Keys"

	Include Approaches by Emily Short.

	Use sequential action.

	Seamus' Hut is a room. 

	South of Seamus' Hut is the hut door. The hut door is a door. It is lockable and unlocked. The tiny key unlocks the hut door. The player carries the tiny key.

	South of the hut door is an Open Field.

	South of the open field is Woodland.

	Test me with "s / lock door / s / drop key / go to Hut / go to woodland / get key / go to Hut".

Example: * Wide-Eyed Saloon - Demonstrating how to safely interrupt the player's travel with conditions other than locked doors.



	*: "Wide-Eyed Saloon"

	Include Approaches by Emily Short.

	Wide-Eyed Saloon is a room.

	North of Wide-Eyed Saloon is a Dusty Street.

	The Church is west of a Dusty Street.

	Instead of going to the church when the player does not carry the hymnal:
		say "[path-walked so far]Entry into the church is barred without a hymnal, unfortunately."
	
	The player carries the hymnal.

	Test me with "n / w / go to Saloon / drop hymnal / go to church / west".

Example: * Proper Places - Demonstrating how to change the names of rooms as printed in movement descriptions.

There are two ways to make a room count as proper-named: to define it without an article, as we define Paris here; or to explicitly say that it is proper-named, as shown in the case of the Bois du Boulogne. Either way, the place name will be shown capitalized, whereas other location names will be printed in lower case during travel descriptions.

As mentioned, we can override output with the rule for printing the name..., as well.

	*: "Proper Places"

	Include Approaches by Emily Short. 

	Paris is a room. 

	West of Paris is the Bois du Boulogne. The Bois du Boulogne is proper-named.

	South of Paris is an Unattended Pathway. 

	South of the Unattended Pathway is a Small Forbidding Hut.

	Rule for printing the name of the small forbidding hut while the player is hurrying:
		say "aforementioned unwelcoming hut"

	South of the Small Forbidding Hut is the Empty Kitchen.

	Test me with "w / e / s / s / s / go to bois".

Example: ** Traveling with Candles - Movement in which the player is not allowed to enter a dark room unless some light source is found inside or the player himself carries a light source.

This example is a little tricky in that we must invoke some of Inform's underlying machinery to check whether the room the player is about to enter in fact has a visible lightsource inside; otherwise, it is much the same as the previous example in setting special limits on the player's movement and printing the path description when necessary.

	*: "Traveling with Candles"

	Include Approaches by Emily Short. 
	
	The Living Room is a room. The Kitchen is north of the Living Room. The Basement is below the Kitchen. The Oubliette is south of the Basement.
	
	The Basement and the Oubliette are dark.
	
	Instead of going to a provisionally dark room (called danger spot) when the player does not enclose a lit thing:
		say "[path-walked so far]It looks dark in [the danger spot], [if the number of entries in the path so far of the player is greater than 0]though, [end if]so you stop";
		if the number of entries in the path so far of the player is greater than 0:
			say ".[no line break]";
		otherwise:
			say "."
	
	The player carries a lit thing called a candle.
	
	To decide whether (place - a room) finds light inside:
		(- ( OffersLight({place}) ) -)
	
	Definition: a room is internally lit if it finds light inside.
	
	Definition: a room is provisionally dark if it is not internally lit.
	
	Test me with "n / d / s / drop candle / go to Living Room / get candle / n / drop candle / s / go to living room / go to basement / get candle / go to living room / drop candle / go to oubliette".

Example: ** Riverside Path - A bicycle that the player can use to traverse multiple rooms at a time, when travel on foot is restricted to single-room movement.

Suppose we want the player to be able to travel long distances at once only when riding on a vehicle: maybe it's part of a timed puzzle that the player can solve only after finding the bike, or maybe it's simply a gesture at realism.

We're also going to allow the player to travel even to unvisited rooms in this scenario, so that he can go by bicycle to places he knows about but hasn't had time to explore on foot.

Finally, because our travel is by vehicle, we're going to restrict the player to disallow riding through doors, so we calculate "the best route from the location to the noun" rather than "the best route from the location to the noun, using doors".

	*: "Riverside Path"

	Include Approaches by Emily Short. Include Rideable Vehicles by Graham Nelson.

	Section 1 - Restricting travel to bike

	Check approaching:
		if the holder of the player is not vehicular and the noun is not adjacent, say "On foot you can only travel short distances at a time." instead.

	Section 2 - Allowing travel to and through unvisited rooms

	Understand "go to [any room]" or "go back to [any room]" or "return to [any room]" or "revisit [any room]"  as approaching. 

	The new approach heading finding rule is listed instead of the approach-heading selection rule in the approach-finding rules.

	This is the new approach heading finding rule:
		now approach-heading is the best route from the location to the noun.

	Section 3 - The scenario

	The Field is north of the Street. The Street is north of the Town Square. The Town Square is north of the Riverside Path.

	The bicycle is a rideable vehicle in the Field.

	Test me with "go to Riverside Path / get on bicycle / go to riverside path / get off bicycle / go to town square".

Example: ** The Jade Amphitheater - A replacement for the ordinary describing path rule to produce text output such as "You go to Crimson Chamber by way of Grooved Channel, Shallow Jade Amphitheater, Silver Filigree Prison and Mandarin Casket Room."

Here we want to change both the individual pieces of the movement description (using only room names and not directions traveled) and the order in which this output is presented. Therefore, we need a new rule to write the player's described motion using just the room names, and also a new describing path rule to put the description together:

	*: "Jade Amphitheater"

	Section 1 - Rules for Revising Output
	
	Include Approaches by Emily Short.
	
	The new creating a path history rule is listed instead of the creating a path history rule in the carry out going rules.
	
	Room sequence is a list of rooms that varies.
	
	Carry out going while the player is hurrying (this is the new creating a path history rule):
		add the approach-heading to the path so far of the player; 
		add the approach-destination to the room sequence;
	
	Rule for describing path of the player:
		let N be the number of entries in the room sequence; 
		say "[We] [go] [if the location is the noun]to[otherwise]toward[end if] [entry N of room sequence]";
		if N is greater than 1:
			truncate the room sequence to (N - 1) entries;
			say " by way of [the room sequence]"; 
		say ". [run paragraph on]";
		clear the path-walked for the player;
		now room sequence is { }.
	
	Section 2 - Scenario
	
	The Crimson Chamber is north of the Mandarin Casket Room. The Mandarin Casket Room is west of the Silver Filigree Prison. The Silver Filigree Prison is northwest of the Shallow Jade Amphitheater. The Shallow Jade Amphitheater is north of the Grooved Channel. Below the Grooved Channel is the Carved Basin.
	
	A room is usually proper-named.
	
	Test me with "s / e / se / s / d / go to the Crimson Chamber". 