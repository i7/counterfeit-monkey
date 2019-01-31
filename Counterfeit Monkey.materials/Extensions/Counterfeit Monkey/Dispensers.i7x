Dispensers by Counterfeit Monkey begins here.

Use authorial modesty.

A soap is a fluid thing. The indefinite article is "some". The description is "Clear fluid for washing up with."
	The scent-description is "herbes de Provence".

Does the player mean waving the letter-remover at the soap:
	it is very likely.

Does the player mean waving the letter-remover at the soap dispenser:
	it is very unlikely.

Does the player mean waving the letter-remover at the sap-dispenser:
	it is very unlikely.

Does the player mean waving the letter-remover at the sop-dispenser:
	it is very unlikely.

Does the player mean waving the letter-remover at the sap-liquid:
	it is very likely.

Does the player mean waving the letter-remover at the sop:
	it is very likely.

The soap dispenser is a closed container in the Public Convenience. It is privately-named. Understand "dispenser" or "soap dispenser" as the soap dispenser. Understand "soap" as the soap dispenser when the soap is marked invisible. It is fixed in place. The initial appearance of the soap dispenser is "A [soap dispenser] hangs beside the mirror." The description of the soap dispenser is "It's the kind where a squeeze will dispense new soap into the sink[if the soap is not in the soap dispenser]. It is also empty[end if]."

Sanity-check taking the soap dispenser when the soap is in the soap dispenser:
	if the subcommand of the soap dispenser matches "soap":
		try squeezing the soap dispenser instead.

Sanity-check taking the sap-dispenser when the sap-liquid is in the sap-dispenser:
	if the subcommand of the sap-dispenser matches "sap":
		try squeezing the sap-dispenser instead.

Sanity-check taking the sop-dispenser when the sop is in the sop-dispenser:
	if the subcommand of the sop-dispenser matches "sop":
		try squeezing the sop-dispenser instead.

Instead of squeezing something dispenser-like (called dispenser-thing):
	let soap-like be a content corresponding to a source of dispenser-thing in the Table of Dispensers;
	if soap-like is in the dispenser-thing:
		let target be a random sink in the location;
		if the soap-sap-receptacle-supporter is non-empty:
			now target is the first thing held by soap-sap-receptacle-supporter;
		if target is a sink:
			if a switched on tap (called target tap) is part of the target:
				silently try switching off target tap;
				say "First switching off [the target tap], [we][run paragraph on]";
			otherwise:
				if a switched on tap (called target tap) is enclosed by location:
					say "Fortunately, the faucet below [the dispenser-thing] is not running. ";
			say "We give the dispenser a squeeze. It deposits [a soap-like] in [the target][unless soap-like is a sop] [--] just viscous enough not to drain away instantly[end if].";
		otherwise:
			if target is nothing:
				say "We give the dispenser a squeeze and it deposits [a soap-like] on the floor, the sink having been removed from the area.";
				now target is the location;
			otherwise:
				if target is non-empty:
					emergency-empty target;
					if target is non-empty:
						stop the action;
				say "We give the dispenser a squeeze. It deposits [a soap-like] in [the target].";
		move the soap-like to the target;
	otherwise:
		say "This time nothing much comes out."

Table of Dispensers
source (a thing)	content (a thing)
soap dispenser	soap
sap-dispenser	sap-liquid
sop-dispenser	sop

The soap is in the soap dispenser.

The soap-sap-receptacle-supporter is a scenery supporter in the public convenience. The printed name of the soap-sap-receptacle-supporter is "[floor-or-sink]".

Under-dispenser-putting is an action applying to two things.

Understand "put [something] under/below [a dispenser-like thing]" as under-dispenser-putting.

Carry out under-dispenser-putting:
	try putting the noun on the soap-sap-receptacle-supporter instead.

Every turn when the location is the Public Convenience and the soap-sap-receptacle-supporter is not part of a sink and the soap-sap-receptacle-supporter is empty and there is a sink in location (this is the attach soap-sap-receptacle-supporter to a sink rule):
	now the soap-sap-receptacle-supporter is part of a random sink in location.

A dangerous destruction rule for a sink which incorporates the soap-sap-receptacle-supporter:
	if the soap-sap-receptacle-supporter is not empty:
		let item be the first thing held by soap-sap-receptacle-supporter;
		say "[The item] [fall] to the floor, landing under the [soap-or-sap-dispenser].";
	move soap-sap-receptacle-supporter to Public Convenience;

Carry out waving the letter-remover at the soap dispenser creating the sap-dispenser when the soap is in the soap dispenser:
	if the sap-liquid is in the repository:
		move the sap-liquid to the sap-dispenser;
		now the sap-liquid is proffered by nothing;
		now the sap-liquid is proffered by the soap;
	move the soap to the repository.

Carry out  waving the letter-remover at the soap dispenser creating the sop-dispenser when the soap is in the soap dispenser:
	if the sop is in the repository:
		move the sop to the sop-dispenser;
		now the sop is proffered by nothing;
		now the sop is proffered by the soap;
	move the soap to the repository.

Carry out  putting the gel on the sap-dispenser when the sap-liquid is in the sap-dispenser:
	if the soap is in the repository:
		move the soap to the soap dispenser;
	move the sap-liquid to the repository.

Carry out  putting the gel on the sop-dispenser when the sop is in the sop-dispenser:
	if the soap is in the repository:
		move the soap to the soap dispenser;
	move the sop to the repository.

To say soap-or-sap-dispenser:
	if the soap dispenser is in the Public Convenience:
		say "soap dispenser";
	otherwise:
		if the sap-dispenser is in the Public Convenience:
			say "sap dispenser";
		otherwise:
			say "sop dispenser".

To say floor-or-sink:
	if the soap-sap-receptacle-supporter is part of a sink:
		say "sink";
	otherwise:
		say "floor".

Instead of inserting a container into a sink when the location is Public Convenience:
	try putting the noun on the soap-sap-receptacle-supporter.

Instead of putting a container on a sink when the location is Public Convenience:
	try putting the noun on the soap-sap-receptacle-supporter.

Check putting something on the soap-sap-receptacle-supporter when the soap-sap-receptacle-supporter is non-empty:
	let item be the first thing held by soap-sap-receptacle-supporter;
	silently try taking the item;
	if the player carries the item:
		say "We remove [the item] from under the [soap-or-sap-dispenser].";
	otherwise:
		say "[The item] [are] already under the [soap-or-sap-dispenser]. There is no more room there." instead.

Instead of putting the backpack on the soap-sap-receptacle-supporter:
	say "We don't want to get the backpack wet."

Check putting something on the soap-sap-receptacle-supporter when the noun is non-empty:
	emergency-empty the noun;
	if the noun is non-empty:
		stop the action.

To emergency-empty (X - a container):
	let thing-list be the list of things enclosed by X;
	let taken-list be a list of things;
	repeat with the target running through thing-list:
		if target is fluid:
			say "We don't want anything to mix with [the target] in [the X].";
			repeat with N running from 1 to the number of entries in taken-list:
				move entry N of taken-list to X;
			make no decision;
		otherwise:
			silently try taking the target;
			if the player carries the target:
				add target to taken-list;
			otherwise:
				repeat with N running from 1 to the number of entries in taken-list:
					move entry N of taken-list to X;
				make no decision;
	if the number of entries in taken-list is at least 1:
		say "We take [taken-list with definite articles] out of [the X].[paragraph break]";

Report putting something on the soap-sap-receptacle-supporter:
	say "We place [the noun] on the [floor-or-sink], right below the [soap-or-sap-dispenser]." instead.

Rule for writing a paragraph about something on the soap-sap-receptacle-supporter:
	say "[The item described] [sit] on the [floor-or-sink], right under the [soap-or-sap-dispenser]."

Definition: a thing is dispenser-like:
	if it is the soap dispenser:
		yes;
	if it is the sap-dispenser:
		yes;
	if it is the sop-dispenser:
		yes;
	no.

Instead of emptying the soap into something:
	if the the soap is in location:
		try taking the soap instead;
	otherwise:
		say "The soap sticks to the bottom of [the holder of the soap]."

Instead of emptying the sap-liquid into something:
	if the the sap-liquid is in location:
		try taking the sap-liquid instead;
	otherwise:
		say "The sap sticks to the bottom of [the holder of the sap-liquid]."

Instead of filling something with the sap-liquid:
	if the the sap-liquid is in location:
		try taking the sap-liquid;
	otherwise:
		say "The sap sticks to the bottom of [the holder of the sap-liquid]."

Instead of filling something with the soap:
	if the the soap is in location:
		try taking the soap;
	otherwise:
		say "The soap sticks to the bottom of [the holder of the soap]."

Dispensers ends here.
