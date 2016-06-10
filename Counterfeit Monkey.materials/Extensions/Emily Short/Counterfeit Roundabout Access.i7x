Counterfeit Roundabout Access by Emily Short begins here.

Use authorial modesty.

Part 3 - Roundabout Access

[Instead of going to Old City Walls when the backpack is not handled:
	say high-street refusal instead.

Instead of approaching Old City Walls when the backpack is not handled:
	say high-street refusal instead.]


Instead of going to Monumental Staircase when the backpack is not handled:
	say high-street refusal instead.

Instead of approaching Monumental Staircase when the backpack is not handled:
	say high-street refusal instead.

To say high-street refusal:
	say "[one of]That way will take us away from the cinema, and I'd like to retrieve our things first.[or]Er, before we strike out into the rest of town, could we get my backpack from the cinema?[or]Look, I'm not ready to leave this part of town until we've retrieved my stuff from the cinema. It might not seem important to you, but it's my whole reason for leaving the island, and I'm not going without it.[stopping]".

Instead of going to Monumental Staircase when the secret-plans are not handled:
	say plans-search refusal instead.

Instead of approaching Monumental Staircase when the secret-plans are not handled:
	say plans-search refusal instead.

To say plans-search refusal:
	say "I think we'd better get your things from the hostel before we leave this part of town, don't you?".

The crowds are a backdrop. The crowds are in Fair, Monumental Staircase, Church Forecourt, and Park Center. Understand "people" or "crowd" or "men" or "women" or "man" or "woman" or "person" or "hustle" or "bustle" or "spectators" or "pedestrians" as the crowds.
	understand "children" or "child" as the crowds when the small children are not in the location.
	The description is "[if the location is a road]They are all in a hurry to get somewhere, though it is not clear exactly where or why[otherwise]The people seem to be enjoying themselves. I don't recogn[ize] anyone in particular, though[end if]."

The High Street is east of Monumental Staircase. It is proper-named. The description is "[if the player is not enclosed by a car]Hustle, bustle, [grimy-dirt]; [ugly American chain shops]; lots and lots of people. [otherwise][We] [are] surrounded by tail-lights and impatient men swearing. [end if][if the protesters are in High Street]There seems to be a large organ[ize]d protest in progress: [protesters] completely cram the sidewalk to the southeast.[end if]"


The grimy-dirt is scenery in High Street. Understand "grime" or "dirt" or "griminess" or "filth" as the grimy-dirt. The printed name is "dirt". The description is "Just a general griminess over all surfaces. Some parts of the city have recently been renovated, and some are being renovated now, scouring off the accumulated filth on facades and walls; but this area hasn't been treated yet and is simply unappealing."

Some ugly American chain shops are a facade in High Street. They front southwest. They are scenery. Understand "shop" or "store" or "stores" or "boutique" or "boutiques" as the shops. The description is "Our eyes pass over them without recognition or attention, really: there is nothing here of any use. It is almost all women's shoes and clothing, overpriced coffee, toiletries made with products from half a world away."

The optometry clinic is a facade in High Street. It fronts northeast. It is scenery. Understand "optometrist" or "novelty" or "spectacles" or "enormous pair" or "of spectacles" or "of novelty" as the optometry clinic. The description is "An enormous pair of novelty spectacles hangs over the front of the office, which, however, is currently closed."

The tower-side is a facade in High Street. It fronts north. It is scenery. Understand "tower" or "hexagonal" as the tower-side. The printed name is "hexagonal tower". The description is "Immediately to the north is the [tower-side] of the old city walls. It rises some [if the player wears the Britishizing goggles]storeys[otherwise]stories[end if] above where [we] now stand, so from here the only thing to see is a blank wall of rough-hewn masonry."
	The closure notice is "The tower has no doors at this level, just masonry. ".

A garbage is a thing in High Street. The initial appearance is "The curb is lined with [garbage]." The description is "Discarded containers from the assortment of food shops and coffee stores lining High Street." The indefinite article is "some".

Instead of putting gel on the mechanic:
	try putting gel on the garage.

Instead of smelling the garbage:
	say "To judge from the mildness of its od[our], it mainly contains packing materials and paper goods, rather than rotting meat or anything of that nature."

Instead of eating or tasting the garbage:
	say "As fascinating as your personal habits are turning out to be, I must draw the line somewhere."

Instead of taking the garbage:
	say "There are other people paid to perform that task."

The staircase-distant-view is scenery in High Street. The printed name is "monumental staircase". Understand "monumental" or "staircase" as staircase-distant-view. The description of staircase-distant-view is "The staircase is several [if the player wears the Britishizing goggles]storeys[otherwise]stories[end if] tall and ascends the side of a major hill." Instead of climbing the staircase-distant-view, try going west. Instead of going up in High Street, try going west.

Rule for listing exits when the location is High Street:
	say "To the west, the street turns into a monumental staircase leading to the old fortified area[if the hostel is unvisited] [--] your hostel should be up that way [--] while[otherwise];[end if] a cross street heads southeast towards the main roundabout." High Street is a road.

The distant-staircase is scenery in High Street. Instead of climbing or entering the distant-staircase, try going west. The description of the distant-staircase is "Broad flat stairs of white stone, with people going up and down[if Monumental Staircase is unvisited]. There's a good view from the top of those stairs: you can see the ships in the harbor and everything. Well, you'll know that, of course[end if]."

The Roundabout is southeast of the High Street. The Roundabout is a road. The description is "The traffic flows in a tight circle around a statue which [if Traffic Circle is visited][we] know all too well[otherwise][we] can never see clearly[end if][if the player is not in a car]. There is a pedestrian walkway around the outside of this circle, but crossing the tributary streets is an unpleasant experience involving considerable hazard. Unfortunately, there is no other quick way to get around this part of town[end if]."

The hard-to-see statue is scenery in the Roundabout. The description is "[if Traffic Circle is visited]It is, curiously, easier to get a sense of from a distance than it was close-up in the Traffic Circle[otherwise]I've seen it before: it's supposed to be Atlantida, the Spirit of the Atlantean people[end if]. Kind of a 19th-century French style of thing: flowing bronze robes, one breast naked, plump fingers clasping an olive branch. But [we] can't stop and stare at it with the traffic the way it is." Understand "atlantida" or "olive" or "branch" or "robes" or "bronze" or "breast" or "naked" as the hard-to-see statue.

Instead of opening a car when the location is the Roundabout and the player is in a car:
	say "Are you mad? [we][']ll be killed."

Rule for listing exits when the location is Roundabout:
	if boldening is true:
		say "Confusing signs point in various directions: [b]northeast[/b] to Deep Street, [b]northwest[/b] to High Street, [b]south[/b] to Long Street, [b]east[/b] to Tall Street.";
	else:
		say "Confusing signs point in various directions: northeast to Deep Street, northwest to High Street, south to Long Street, east to Tall Street."

[Before printing the name of a direction (called way) when in Roundabout:
	if looking, say "[room way from the location] to the " ]

[Procedural rule when listing exits:
	if the location is Roundabout, ignore the append room names rule.]

Understand "change lanes" as a mistake ("Oh, please don't, please don't...") when the player is in a car.

Understand "yield" as a mistake ("It's hard to go wrong with that, anyway.") when the player is in a car.

Every turn when the location is Roundabout and the player is in a car:
	if a random chance of 1 in 2 succeeds:
		say "[one of]I hate to backseat-drive, but I think you were supposed to yield just there.[or]Hey, mind the truck![or]Please don't try to change lanes.[or]They're honking at us for a reason, you know.[at random]".

Instead of exiting in Roundabout:
	say "[We] couldn't possibly park here."




[The Questionable Chinese Restaurant is southeast of the Bus Station. The description is "Thanks to the limitations of space, the kitchen is actually kept in the basement, down a steep flight of stairs."

The steep flight of stairs is a backdrop. It is in the Restaurant Kitchen and the Questionable Chinese Restaurant. Instead of entering or climbing steep flight of stairs in the Restaurant Kitchen: try going up. Instead of entering or climbing steep flight of stairs in Questionable Chinese Restaurant: try going down.

The Restaurant Kitchen is below Questionable Chinese Restaurant. The Restaurant Kitchen is a kitchen.

The Two-Star Hotel is north of the Bus Station. The description is "This is a very different place from the Fleur D'Or, and different, too, from your backpacking hostel. There is a carpet, which is clean but old. The lobby features a single sofa, which has thin cushions and does not promise comfort or luxury. The front desk is veneered in fake walnut. It is unmanned."

Some carpet is in the Two-Star Hotel. It is scenery.
	The description is "It is deep red, a color likely chosen for its capacity to hide stains, and there is a pattern on it of tiny grey diamonds, so that it looks rather as though someone's tie had been made the basis of an entire room design."

A hotel sofa is an enterable supporter in the Two-Star hotel. It is scenery. The initial appearance is "No one has to sit there at the moment, which is the key point."

The front desk is a scenery supporter in the Two-Star hotel. The description of the front desk is "No one is sitting there now; but this entire time of year must be a bit of a slump for the hotel, since there is not a busy tourist trade running through on its way to buses out of town."

Rule for listing exits while in Two-Star hotel: say "To the east, through an archway in which an ineffective curtain hangs, is the room by which the hotel actually makes the majority of its easy money: there it rents out luggage-storage space to persons using the bus station."

The ineffective curtain is east of Two-Star Hotel. The Luggage Consignment is east of the ineffective curtain. The ineffective curtain is a door. It is open and not openable. It is scenery. The description is "Printed with a print of moon and stars." ]

Counterfeit Roundabout Access ends here.