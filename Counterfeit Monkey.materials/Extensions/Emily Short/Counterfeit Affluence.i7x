Counterfeit Affluence by Emily Short begins here.

Use authorial modesty.

Part 4 - Affluence

Chapter 1 - City Walls

Section 1 - Old City Walls

Old City Walls are north of the Monumental Staircase. Understand "wall" as Old City Walls. The description is "Only portions of the old walls still stand, but you can walk along what remains, as though you were defending the place. They're a me[ter] and a half wide, made of ashlar blocks. On the vertical faces these blocks are still rough, but underfoot they have been worn smooth by the passage of many defenders and (subsequently) tourists. One of the [defaced ashlar block]s in the wall has even been defaced, some old inscription gouged out.[one of]

I used to like to climb around up here when I was a kid. I made believe[--] oh, you'll think it's silly.[or][stopping]

Down below in the distance are the docks and the sea, and immediately east of here is an old hexagonal [turret-view]."

The defaced ashlar block is scenery in Old City Walls. Understand "blocks" or "ashlar" or "inscription" as block. The description is "To judge by its different shaping and col[our], the defaced block is something borrowed from an older building to make up the new wall: taken out of a church or a mosque or perhaps even a Roman fortification in some earlier era of the island.

It was once inscribed with a message, but whatever it was, the foreign-language writing has been completely chiseled away so as to be illegible.".

Rule for printing the name of the defaced ashlar block while looking:
	say "block".

Instead of putting the restoration gel on the defaced ashlar block:
	say "The gel has no ability to restore that which was physically damaged; only letter-changes can be removed."

Rule for listing exits when looking in Old City Walls:
	do nothing instead.

Turret-view is a facade in Old City Walls. It is scenery. The printed name is "turret". Understand "old" or "hexagonal" or "tower" or "turret" as turret-view. The description is "The turret extends to the east. It's one of the best preserved pieces of the old wall."

Section 2 - The Turret

The Old Hexagonal Turret is east of Old City Walls. The description is "Up here [we] stand on the remains of the old fortifications; this turret offers a view out over the docks, the fish market, and the harbor, which it was designed to protect."

The depluralizing cannon is a container in the Old Hexagonal Turret. It is fixed in place. Understand "heavy" or "old" or "barrel" as the depluralizing cannon. The printed name is "deplural[izing] cannon".
	The initial appearance is "A heavy old [depluralizing cannon] is aimed out to sea."
	The description is "Like a conventional cannon it has a mounting to allow the users to turn the gun and change its angle, to hit objects at various ranges.

It is currently unloaded, of course; but time was when this vast weapon was employed to reduce entire fleets to a single ship, and a whole crew of marines to a single man. This tactic was found so effective that the harbor was never successfully taken."

Sanity-check turning or pushing or pulling the depluralizing cannon:
	say "With considerable effort, we manage to point the cannon a little more [one of]towards the open sea[or]towards the docks[or]towards the cliffs opposite[cycling]. Not that that does any good." instead.

The deep purple residue is part of the depluralizing cannon. The description is "Deplural[izing] shot is usually a very dark purple near to black, and some may have scraped off on the inside of the barrel."
	The scent-description is "smoke and leather".

Instead of searching the depluralizing cannon:
	say "There's nothing to see inside the old barrel except perhaps the faintest traces of a [deep purple residue]."

Sanity-check inserting something into the depluralizing cannon:
	say "No doubt it would be interesting to fire [the noun] out over the marina, but it's neither possible nor wise." instead.

Sanity-check entering the depluralizing cannon:
	say "Col[our]ful as it would be to climb into the cannon and fire ourselves straight out to sea, this is not a viable option. I would have tried it before now if it were." instead.

Instead of facing south in Old Hexagonal Turret:
	say "That way is mostly empty air, though if [we] look south and down over the edge, there is a vertiginous view down to the bottom of the monumental staircase. Tourists and natives are climbing up and down."

The mounting is part of the depluralizing cannon. The description is "Everything is stiff and motionless now."

Instead of turning or pushing or pulling the mounting:
	say "No matter what [we] do [we] won't be able to aim or fire the old cannon; which is just as well, since to do so would be a major felony under local penal code, and a war crime under international conventions."

Understand "fire [cannon]" or "load [cannon]" or "aim [cannon]" or "use [cannon]" as a mistake ("[We] haven't got the shot for this thing, and for very good reason. There may not even be any still in existence, but if there is, the Bureau will keep it under lock and key.").

Section 3 - The Walls Crumble

Crumbling Wall Face is north of the Old City Walls. The description is "The wall once continued north from here some distance before curving northwest around the remainder of the city. So much has crumbled away, though, that the walkway is impassable north of this point. To protect citizens, there is a [safety railing] across the [view of jagged wall].

A [metal ladder] of four rungs descends the inner face of the wall, allowing pedestrians access to the streets to the west."

Sanity-check going north in Crumbling Wall Face:
	say "The wall pretty much falls away into slippery rubble at that point, which is why there's a safety railing in the way." instead.

rule for listing exits while looking in Crumbling Wall Face:
	do nothing instead.

Instead of facing southeast in Crumbling Wall Face:
	say "[We] would have to go south and then east to reach it, but that way is the top of the hexagonal turret."

The fossil is a thing in Crumbling Wall Face. The initial appearance is "Among the rubble fill of the wall is [if we have examined the fossil]a fossil[otherwise]an odd spiral-shaped rock[end if]."
	Understand "odd" or "spiral-shaped" or "spiral" or "shaped" or "rock" or "stone" as the fossil.
	The description is "[one of]The spiral rock turns out to be a fossil, from one of those sea creatures long ago.[or]It is perhaps an inch and a half long, the shape of a corkscrew seashell that once housed something small and soft. There are thousands of these things around; they're not exactly valuable, but an interesting curiosity all the same.[stopping]".

Instead of taking the fossil when the fossil is not handled:
	say "[We] pick it up. [description of fossil][line break]";
	move fossil to player.

Instead of examining the view of jagged wall when we have not examined the fossil:
	try examining the fossil.

The view of jagged wall is a distant backdrop in Crumbling Wall Face. It screens north. The printed name is "broken edge".

The description is "The masonry has broken away, revealing the rubble fill inside the wall and making a dangerously unstable surface of craggy rocks.". Understand "edge" or "broken" or "rubble" or "craggy" or "rocks" or "gravel" or "unstable" or "jagged" or "masonry" as the view of jagged wall. Understand "rock" as the view of jagged wall when the rock is marked invisible and the fossil is marked invisible.

The safety railing is scenery in Crumbling Wall Face. The description is "Though it shows traces of surface rust, the safety railing is sturdy and close-fitted enough to prevent anyone, child or adult, from taking a tumble down the jagged masonry.". Understand "rail" as the safety railing.

Instead of turning or pulling or pushing the safety railing:
	say "It proves gratifyingly resistant to your attempts."

Instead of climbing the safety railing:
	say "It's here for our protection."

The metal ladder is a down-staircase in Crumbling Wall Face. It is fixed in place. The description is "The rungs [if the noun is not the metal ladder]of the ladder [end if]have been bolted individually into the stone." Understand "rungs" or "rung" as the metal ladder.

Instead of going down in Crumbling Wall Face, try going west.

The Walltop is a region. The Old City Walls, the Crumbling Wall Face, and the Old Hexagonal Turret are in The Walltop.

Instead of listening to a location in Walltop:
	say "The noises that reach us are the sounds of distant traffic, the occasional horn blast from the docks, and some cheery shouting from the direction of the fair."

Test wallbug with "tutorial on / n" in Crumbling Wall Face.

Chapter 2 - Residential District

Section 1 - Hesychius Street

Hesychius Street is west of Old City Walls. The description is "As the street names make obvious, this part of town was laid out in a different political age, when it was considered more important to commemorate linguistic richness than to standard[ize] practices[if Webster court is unvisited].

This is also the edge of the richest part of town, with houses [--] really, almost villas [--] that were built for households with servants. My parents['] place is just a block or two north of here[end if][if the farmer's stall is in Hesychius Street].

On holidays like today, this street is often host to a farmer's market; though it is now late enough in the day that most of the farmers have given up and gone home, taking with them their twenty-three varieties of pickled olives, their loganberry jam, and their pigs[']-feet-in-aspic[otherwise].

Even the single farmer from earlier is now gone[end if]."

A fortified villa is a scenery facade in Hesychius Street. It fronts west. The description is "An especially solid and safe-looking villa with no entrance on this side. It was built, originally, by the head of the customs office, when that post was somewhat more dangerous than it is today. I admit I don't know who lives there now."
	The closure notice is "There are no doors in [the item described] from this angle. ".

Rule for listing exits when looking in Hesychius Street:
	do nothing.

A farmer's stall is scenery in Hesychius Street. The description is "It appears to belong to the farmer. It's made of wood and canvas and offers a little shade against the harsh sun. Previous customers have cleared most of it off[if the farmer is non-empty], but the farmer still has [a list of things *in the farmer][end if]."

Rule for printing the name of farmer's stall while looking:
	say "stall".

The farmer is a man in the Hesychius Street. The description is "Contrary to your obvious expectations, he is dressed more or less like anyone else, and is neither wearing quaint overalls nor chewing a piece of hay."

Rule for writing a paragraph about the farmer:
	say "One remaining [farmer] lazes here, watching his [farmer's stall].";
	now every thing carried by the farmer is mentioned.


An asparagus is carried by the farmer. It is a vegetable. The indefinite article of the asparagus is "some".  The description of the asparagus is "It looks particularly tender and pleasant, but I avoid the stuff."

A lime is carried by the farmer. It is a vegetable. The description of the lime is "A small, wrinkled, intense-looking fruit: it wouldn't give much juice, but is likely very strong."

A yam is a kind of vegetable.

A white-yam is carried by the farmer. It is a yam. The printed name of the white-yam is "yam". Understand "yam" as the white-yam. The description of the white-yam is "A yam with whitish skin. Some of the dirt of the farm still adheres to it."

[Rule for deciding the concealed possessions of the farmer:
	if buying something from someone, no;
	yes.]

A description-concealing rule:
	now every thing which is carried by the farmer is not marked for listing.

Section 2 - Webster Court

Webster Court is north of Hesychius Street and west of Crumbling Wall Face. The description is "[if former direction is north]Hesychius Street opens here into a broad and plainly-paved court[otherwise if former direction is west]Here below the wall is a broad, plainly-paved court[otherwise]A broad and plainly-paved court[end if][unless statue of Noah Webster is as-yet-unknown], named for [the statue of Noah Webster][end if]."

Instead of facing west in Webster Court:
	say "The old city wall cuts off any view towards the harbor and the far horizon. The taller houses permit a view over, however."

Instead of facing northwest in Webster Court:
	say "Roget Close is west, but there's no passage or street running northwest."

[Instead of facing northeast in Webster Court:
	say "[We] could go that way around behind my parents' house and enjoy their garden. They " ]

Rule for distantly describing Webster Court:
	say "In that direction is Webster Court, as made unmistakable by the gleaming bronze pate of old Noah himself."

A description-concealing rule:
	if the statue of Noah Webster is not as-yet-unknown:
		now the statue of Noah Webster is not marked for listing. [after its first introduction it becomes scenery, since it's not really interactive and we want to emphasize other things]

The statue of Noah Webster is a fixed in place thing in Webster Court. The initial appearance is "Lending its name to the location is a bronze statue of Noah Webster."
	Understand "bronze" as the statue.
	The description is "It's that hero of spelling reform, and personally responsible for the island going over to American[ize]d spellings over the British standard."
	The introduction is "My mother likes to irritate my father by quoting what his contemporaries called Webster: a 'viper', a 'maniacal pedant', and (always a fav[our]ite at Reform Day parties) 'a toad in the service of [i]sans-culottism[/i]'. She makes sure to pronounce that in the most Parisian accent possible."

Rule for listing exits while looking in Webster Court:
	say "The streets continue south, east, and west; and just to the northeast is my parents['] side garden."


Check waving the letter-remover at the statue of Noah Webster when the current setting of the letter-remover is "u":
	say "The device chokes on the concept, though my mother might say that this whole island is already the State of Noah Webster." instead.

A description-concealing rule when the location is not Webster Court:
	now the statue of Noah Webster is not marked for listing.

Instead of examining the statue of Noah Webster when the player is not in Webster Court:
	say "From this distance the statue is little more than a glare of sunlight."

After deciding the scope of the player when Webster Court is adjacent to the location:
	place the statue of Noah Webster in scope.

My parents' home is a facade in Webster Court. The printed name is "my parents['] home". Understand "house" or "building" or "pink" or "large building" as my parents' home. The initial appearance is "The [one of]large building just to the north [--] yes, the one in pale pink [--][or]large, pale pink building north of us[stopping] is [my parents' home]." The introduction is "I think I mentioned that my parents were well off. My father works for the Bureau, embarrassingly, and my mother was born into the kind of money that we like to pretend doesn't exist on this island."
	The description is "It's stucco and tile, inspired by southern California ideas of gracious living. There are potted palm trees inside, and leather sofas, and French oil paintings for which expensive importation lic[ense]s had to be bought.

My childhood bedroom faces northwest, away from the docks, towards the roofs of other villas and the open sea."


The pink door is north of Webster Court and south of Foyer. The pink door is a door. The pink door is scenery. It is lockable and locked.

Parental appearance is a scene. Parental appearance begins when the location is webster court and Patriotic chard-garden is visited and Private Beach is visited.

When parental appearance begins:
	move fake-father to the location;
	say "The door to my parents['] house opens and my father comes out. He's talking over his shoulder: 'Sorry, dear, but [i]someone[/i] has to be on call.'

My mother answers from inside, but we can't make out what she's saying.

'Surge on the grid,' Father replies. 'Could be an unauthor[ize]d synthes[ize]r, but more likely... yes, exactly. I'll try to be home before the fireworks.'

He closes the door behind him.";
	if the player wears the monocle:
		try taking off the monocle;
		if the player encloses the backpack:
			if the backpack is closed:
				try opening the backpack;
			if the backpack is open:
				try inserting the monocle into the backpack;

Report taking off the monocle in the presence of fake-father:
	say "Hastily I take off our monocle and palm it. Father shouldn't recogn[ize] us in our current body, but wearing expensive Bureau equipment in his presence would be a terrible idea." instead.

fake-father is a man. fake-father is privately-named. The printed name of fake-father is "Father". Understand "father" and "dad" as fake-father. The description of fake-father is "He looks put out. Serial Comma Day is supposed to be a day off, even for him." The initial appearance is  "My father is just outside [my home]. He's clipping the cuffs of his trousers so that he won't snag them on anything during his ride in to work. His scooter is propped against the [statue of Noah Webster], ready for action."

After writing a paragraph about fake-father:
	set pronouns from fake-father.

Sanity-check doing something other than acting fast during parental appearance:
	[I don't know how this worked in 6G60, or what changed. Now the behavior at least matches that version.]
	if the current action is the action of listing exits:
		make no decision;
	if the current action is the action of taking off the monocle:
		make no decision;
	if the current action is the action of opening the backpack:
		make no decision;
	if the current action is the action of inserting the monocle into the backpack:
		make no decision;
	if the current action is the action of waiting:
		say "We hold our breath." instead;
	if the action name part of the current action is the going action:
		say "Hang on; I want to see where [fake-father] goes." instead;
	say "We don't dare drawing father's attention. I'm going to have us stand over here as though checking on the health of the neighb[our][']s lawn, shall I?" instead.

Parental appearance ends when turn-taken is true.

Turn-taken is a truth state that varies. Before reading a command during parental appearance: now turn-taken is true.

Rule for listing exits while looking during parental appearance:
	do nothing.

When parental appearance ends:
	now fake-father is nowhere;
	now turn-taken is false;
	say "[if the prior named object is fake-father]He[otherwise]My father[end if] sees us from a distance and gives a neighb[our]ly wave. 'Happy Punctuating!' he shouts.

I wave back rather weakly.

He gets on his [if not looking]small red [end if]scooter, checks his helmet, and revs off to the south. Off, apparently, to investigate the synthes[ize]r that put us together. That will go slowly because of the holiday, but I'm guessing there will be Bureau investigators crawling all over the south side of old town in an hour or two."

Instead of doing something to the pink door:
	say "Walking into my parents['] house is the action perhaps most likely to get us caught."

Rule for printing the name of the pink door:
	if the player can see the pink door, say "door here";
	otherwise say "door of my parents['] villa".

[Because we need to stop you so that you can see the scene with Dad if you were otherwise just going to be passing through:]
After going to Webster Court when Private Beach is visited and Patriotic Chard-Garden is visited and parental appearance has not happened :
	let N be the number of entries in the described motion of the player;
	if N is greater than 1:
		say "[path-walked so far][paragraph break]";
		clear path-walked for the player;
		increase path description count by 1;
	otherwise:
		try looking;
	now approach-destination is Winding Footpath. [Tricks the approaching verb into stopping here even if you're trying to reach someplace really far away.]
	[pause the game. ]

Section 3 - Chard-Garden

The Patriotic Chard-Garden is northeast of Webster Court. Understand "patriotic garden" or "chard garden" as the patriotic chard-garden.
	The description is "A narrow strip of land between the house and the edge of my parents['] property. The eastern edge runs right up to the [decaying old wall] of the city, which here means some stumpy masonry on this side and a dizzying drop on the other.

The rest of their terraces and gardens are fenced off."
	The introduction is "Because it's so linguistically productive, chard is something of a national symbol; and during the world wars, there was a fad of gardening at home. After the war, it became common for affluent people with a little bit of land to keep their garden, so that if you were down on your luck you could glean a few leaves."

The decaying old wall is scenery in Patriotic Chard-Garden. The description is "This part of it is not really picturesque: just old rocks, a few of which occasionally shift loose and fall away."

Instead of climbing the decaying old wall:
	say "It's not in the best of shape. It wouldn't be hard to become part of a minor rockfall and kill ourselves on the descent."

A chard is in Patriotic Chard-Garden. It is a vegetable. The initial appearance is "A little [chard] still grows in the nearest bed, carefully tended to thrive in this climate." The indefinite article of the chard is "some".

Instead of taking the chard when the chard is not handled and the location is the Patriotic Chard-Garden:
	say "We pick the chard, leaving bare soil behind.

A flicker of curtains from inside the house suggests that someone saw us [--] a cleaner, possibly. But then there is a voice, not audible except as a confident rising and falling tone; this will be my mother, saying not to worry and not to interfere.";
	move the chard to the player.

A soil is a fixed in place thing in the Patriotic Chard-Garden. The indefinite article is "some". The initial appearance is "At our feet is a patch of [soil]."
	Understand "ground" or "earth" or "soil" as the soil.
	The description is "Bare dirt[if the chard is not in the location and the location is the Patriotic Chard-Garden], revealed when the chard was cleared away[otherwise], looking somewhat out of place here[end if]."
	The soil is diggable.

Instead of taking the soil when the soil is in the location:
	say "It's more than [we] can carry around by the handful."

[Every turn when the player carries the dirt:
	move the dirt to the location;
	say "The dirt is more than we can contain, and spills out onto the ground instead." ]

Before doing something when the current action involves the soil and the chard is in the location:
	say "The soil is hard to see under the chard." instead.

A description-concealing rule when the soil is marked for listing:
	if the chard is in the location, now the soil is not marked for listing.

The house-wall is scenery in Patriotic Chard-Garden. Understand "house" or "flicker" or "curtains" or "curtain" or "window" or "windows" or "wall" as the house-wall.

Section 4 - Roget Close

Roget Close is west of Webster Court. The description is "A pleasantly sheltered lane in which I learned to ride a bicycle, and where my friend Lucy used to live, before she and her parents moved off-island. Restrictions were looser even twenty years ago. Our old [schoolhouse] is just west of here."

[Instead of looking in Roget Close when Private Beach is visited and lexicon-tick is 0:
	do nothing instead.]

Instead of going west in Roget Close:
	say "School is out for the holiday. [run paragraph on]";
	carry out the listing exits activity.

The schoolhouse is a facade in Roget Close. It fronts west. It is scenery. Understand "school" or "elementary" or "building" or "big" or "arched" or "windows" or "faded" or "floorboards" or "yard" or "schoolyard" as the schoolhouse. The description is "[one of]It's where I went to school until I was twelve, as did most of the kids in this area. It's an old building with big arched windows and faded floorboards, and in the afternoon the schoolyard smells of spilled milk going sour in the sun. [or][stopping]From this direction there's not much to see but the screen of palm trees in front."

Some handsome old houses are a backdrop. They are in Hesychius Street and Roget Close. They are scenery. They screen south. The description is "Many of them built in the mid- or late 19th century, the houses are designed for families with a number of servants. Some of the owners even continue to keep up establishments on that scale." Understand "villas" as the handsome old houses.

Some palm trees are scenery in Roget Close. Understand "screen" or "palms" as the palm trees. The description is "They aren't the very tall and graceful kind, but a stumpier variety, forming a sort of vegetative colonnade in front of the school building[if the gum is in the location and the gum is not handled]. There's some [gum] stuck to the base of the nearest tree[end if]."

Instead of climbing palm trees:
	say "Were you good at pole climbing exercises in gym? Because I wasn't."

[Because it requires several levels of examination, it's likely that many players will miss the gum entirely -- which is fine, because there are several other, more prominent solutions to the spinner puzzle. The aim here is to provide a reward to people whose first instinct is deep rather than broad exploration when they're faced with a new puzzle.

Once they *have* seen the gum, it becomes more prominently visible in the room description to hint that they could interact with it if they want.]

The gum is in Roget Close. It is edible. The heft of the gum is 1. The indefinite article is "some". The initial appearance is "Gum adheres to one of the palm trees, left no doubt by some departing school kid." The description is "The lump of blue-green gum has largely dried, but is still intensely unappetizing."
	The scent-description is "spearmint".
	Understand "lump" or "blue-green" as the gum.

Sanity-check eating the gum:
	say "I'm afraid I've never cared for ABC gum." instead.

Sanity-check tasting the gum:
	say "I'm afraid I've never cared for ABC gum." instead.

A description-concealing rule when the gum is marked for listing:
	if the gum is not handled and the gum is not seen:
		now the gum is not marked for listing.

Test gum with "tutorial off / look / x school / x palm / look / x gum / get gum / look / x palm trees / chew gum / eat gum / drop gum  / look / get gum / put gum on spinner / get mug / x mug / wave g-remover at mug / n" in Roget Close.

Rule for listing exits  while looking in Roget Close:
	do nothing instead.

After going from Roget Close to the Winding Footpath:
	let N be the number of entries in the described motion of the player;
	if N is greater than 0:
		say "[We] walk through the wealthy neighb[our]hood to Roget Close. ";
	clear path-walked for the player;
	increase path description count by 1;
	say "[if N is greater than 0]There [we][otherwise][We][end if] slip between the houses and down a path that looks as though it might lead to someone's back yard. No one has ever put up signage to correct this misapprehension because no one who lives around here is eager to encourage strangers on the private beach.

Soon, however, the footpath begins to descend purposefully towards the level of the ocean[if the location is the final destination].[otherwise].[paragraph break][end if]";
	continue the action;

Section 5 - Winding Footpath

The spinner-gate is north of Roget Close.  It is a closed locked door. The printed name of the spinner-gate is "gate". Understand "gate" as the spinner-gate. The initial appearance is "If you look just north between the houses, you'll notice also the footpath down to an almost-private beach. It used to be open, but it's now gated off, and built into the [spinner-gate] is a chic modern sculpture."

The description of the spinner-gate is "A gate of wrought iron bars between two sturdy columns[if the spinner-gate is closed and the spinner-gate is locked], too close to climb through and too tall to climb over[else if the spinner-gate is closed], closed but not locked[else if the spinner-gate is open]; at the moment the gate has been pushed conveniently open[end if]. Built into the right-hand column, next to the gate latch, is a curious sculpture."

Through spinner-gate is the Winding Footpath. South of Winding Footpath is Roget Close.

Winding Footpath is an outdoors room. The description is "The [underfoot-path] winds between the villas, sloping steeply downward. It is narrow, and [bushes] left and right conceal it even from the windows of the people living nearby." Understand "path" as Winding Footpath.

Instead of going down in Winding Footpath:
	try going north.

Instead of going up in Winding Footpath:
	try going south.

Report facing in Winding Footpath:
	say "The steep sides of the path and the heavy growth of bushes make it hard to see far." instead.

Rule for listing exits when looking in Winding Footpath:
	do nothing instead.

Some bushes are scenery in Winding Footpath. The description is "Some variety I'm not familiar with: dark glossy green leaves, thick stems. In the right season, and I can't even remember what season that is, they also grow gaudy pink flowers. But not now[if kudzu is part of the bushes]. Lots of [kudzu] grows through and over the bushes [--] this is one of the few spots on the island where it hasn't been eradicated, it seems[end if].

[if the bushes are shrine-hiding]At one point along the path the bushes stick out especially far, as though there's something behind them.[otherwise]The bushes part a little to reveal the [shrine] [we] found.[end if]". Understand "dark" or "glossy" or "green" or "leaves" or "gaudy" or "pink" as the bushes.

The kudzu is part of the bushes. The indefinite article is "some". Understand "invasive" or "vines" or "vine" as the kudzu. The description of the kudzu is "An invasive vine grown through and over the bushes."

Test foilkudzubug with "cut kudzu with foil" holding the foil in the Winding Footpath.

Carry out cutting the kudzu with something:
	now the kudzu is nowhere.

Report cutting the kudzu with the jigsaw:
	say "The jigsaw is not an ideal tool for kudzu removal and [we] wind up making a bit of a mess with bits of bush, but we do enough damage to clear the stage a bit." instead.

Report cutting the kudzu with the sword:
	say "A sword is not a machete, a fact that [we] have reason to ponder at some length. At least it's not a heavy broadsword. Our arm is not nearly strong enough to wield one of those. Even this blade gets tiring to wield surprisingly quickly.

After a long time and a lot of bother, [we] manage to lop off the main kudzu bits." instead.


The bushes can be shrine-hiding or shrine-revealing. The bushes are shrine-hiding.

Setting action variables for searching or looking under the kudzu:
	now the noun is the bushes.

Instead of searching or looking under the bushes:
	if the kudzu is part of the bushes:
		say "It's hard to get a good look under the bushes with all this kudzu in the way." instead;
	if the bushes are shrine-hiding:
		say "Hunting behind the bushes reveals something I vaguely remember seeing when I was a child, but not noticing again since: built into the wall is what looks like a very ancient sort of shrine.";
		now the bushes are shrine-revealing;
	otherwise:
		say "There's nothing more to find, really."

Instead of waving the letter-remover at the shrine:
	say "It won't do any good, you see: this is an [if the player is wearing britishizing goggles]artefact[otherwise]artifact[end if] of another time and language, and it has never been neutral[ize]d by authorities, so it won't respond to English-language tools. Quite likely it's in a language so old that it can't be manipulated at all.

I wonder why it hasn't been removed, or fixed; but I'd guess the reason is that very few people come this way."

Instead of waving the letter-remover at something which is part of the shrine:
	try waving the letter-remover at the shrine.

A description-concealing rule:
	if the bushes are shrine-hiding:
		now the shrine is not marked for listing.

Instead of pushing or pulling or turning the shrine:
	say "The backing stone is built firmly into the wall."

Sanity-check doing something when the bushes are shrine-hiding:
	if the noun is the shrine or the second noun is the shrine:
		say "Now that you mention it, I do vaguely recall something about a shrine in this area, but [we] can't make it out under the [bushes] right now." instead.

[The nymph 'shrine' is nod to the island's Roman history. There's nothing in the game to reveal this, really, but the idea is that this stone is actually a panel from an imperial-era sarcophagus (nymphs were often featured on such panels, and sarcophagus carvers were of very varied levels of skill). Subsequent inhabitants moved it.]

The shrine is a fixed in place container in the Winding Footpath. The initial appearance is "Now that the bushes have been cleared a little, the ancient shrine is plainly visible[if the shrine is non-empty], and [a random thing in the shrine] [are] set up in the place of hon[our][end if]." Understand "ancient" or "wall" or "niche" or "stone" or "backing" as the shrine. The description of the shrine is "There's a niche dug into the stone of the wall, above a [low relief] of three ladies. It's not very good work to start with, and has been eroded by a lot of weather, and I wouldn't be surprised if this weren't its original location; it probably stood somewhere else and was brought here.".

The carrying capacity of the shrine is 1.

Sanity-check inserting something into the shrine:
	if the heft of the noun is greater than 2:
		say "[The noun] [are] too large to fit in the shrine niche." instead.

Sanity-check putting something on the shrine:
	try inserting the noun into the shrine instead.

[The shrine is an easter egg to begin with; but easter eggs are the most fun if they are toys as well. The shrine offers the opportunity for some expressive play, as the player can try inserting different items. Mostly it's up to the player to roll his own meanings for this, but there are special responses for a few of the most pointed donations.]

Report inserting the as into the shrine:
	say "[We] set [the noun] in the shrine, as though to leave a small offering for whatever deities these were." instead.

Report inserting the member into the shrine:
	say "[We] plant [the noun] in the shrine, where it looks pedantic and pin-headed. What is the point of its obsession about punctuation and spelling, in the broader scope of things?" instead.

Report inserting the members into the shrine:
	say "The set of members just barely fits into the shrine. They look odd and plastic against the rough stone." instead.

Report inserting the army into the shrine:
	say "The figures of the soldiers form a neat line in the shrine niche. It looks as though a child had come here to play." instead.

Report inserting the cross into the shrine:
	say "[We] appropriate the ancient pagan shrine for a more Christian purpose, as many others must have done here when Atlantis was first converted in the fourth century." instead.

Report inserting the Guidebook into the shrine:
	say "[We] set [the noun] down in the niche. A pointed gesture, that: this shrine is just one of the many things around the island that the [i]Guidebook[/i] does not, and cannot, acknowledge." instead.

Report inserting a pi-object into the shrine:
	say "[We] set [the noun] in the niche, where it gleams in crisp and perfect contrast to the old and battered superstitious monument. Pure and eternal mathematics, exalted by the frail hand of man; or something like that." instead.

Report inserting the roll of bills into the shrine:
	say "[We] set up a cult to cash and contemplate it for a minute. There's no one else around to appreciate the point, though, and we need the money, so it will have to be a temporary installation only." instead.

Report inserting a sin into the shrine:
	say "[We] arrange [the noun] in the shrine niche, as some sort of ironic statement about what people worship these days." instead.

Report inserting the dog into the shrine:
	say "[We] stick the dog into the shrine niche. The effect is a bit sinister." instead.

Report inserting the god into the shrine:
	say "[We] stand the god up in the niche in a place of solemn hon[our]. It fits perfectly, as though shaped for just this use.

For a moment, with the air still and hot, and no one visible in any direction, we might almost believe that the past two millennia have been nothing, and that the shrine is fresh and new.

But Anglophone Atlantis prefers to forget what it was.";
	record "Jocasta Higgate award for reconstructing pagan worship on the island" as an achievement instead.

Report inserting something into the shrine:
	say "[We] give [the noun] a place of solemn hon[our] above the relief of frolicking ladies." instead.

The low relief is a part of the shrine. Understand "ladies" or "three" or "waves" or "surface" or "nymph" or "nymphs" or "bare" or "breasts" or "breast" or "garment" or "garments" or "carving" or "sculpture" or "sculpted" as the low relief.  The description is "It looks like three ladies dancing on the surface of waves. They're probably meant to be nymphs, if I had to guess. They have bare breasts and fluttering garments, but the carving was done by someone who has not the slightest idea how to make limbs appear under sculpted cloth, so it all looks clunky, as though they don't have hips or legs at all, just randomly swirling skirts as their lower halves.

All the same, there's something appealing about it."

After going from the Winding Footpath to the Private Beach:
	let N be the number of entries in the path so far of the player;
	if N is greater than 1:
		say "[path-walked so far]";
	otherwise if N is 1:
		clear path-walked for player;
	increase path description count by 1;
	say "[We] continue down until there is a chink of a view of the sea. Then the path descends through a few last hairpin twists among rocks, and comes out suddenly on a little beach[if N is greater than 1].[paragraph break][otherwise if N is 1].[otherwise].[end if]";
	continue the action.

Test pathbug with "wear monocle / x path" holding the monocle in Winding Footpath.

underfoot-path is a privately-named improper-named scenery thing in Winding Footpath. The printed name is "footpath". Understand "path" or "footpath" or "pathway" as underfoot-path. The description is "There are traces of sand on the pathway, tracked up from the beach."

Instead of climbing underfoot-path:
	try going south.

[TODO fix tests]
Table of Ultratests (continued)
topic	stuff	setting
"shrine"	{ god, pita, roll of bills, as, cross, army, members, yellow sign, Guidebook }	Winding Footpath

Test shrine with "tutorial off / autoupgrade / wave z-remover at kudzu / look behind bushes / put god in shrine / look / get god / wave a-remover at pita / wave t-remover at pit / put pi in shrine / look / get pi / put bills in shrine / look / get bills / put as in shrine / look / get as / put cross in shrine / look / get cross / put army in shrine / look / get army / put members in shrine / look / get members / wave s-remover at members / put member in shrine / look /  get member / wave g-remover at sign / put sin in shrine / look / get sin / put guidebook in shrine / look / get guidebook" [holding the god and the pita and the roll of bills and the as and the cross and the army and the members and the yellow sign and the Guidebook in the Winding Footpath.]

Section 6 - The Beach

Private Beach is north of Winding Footpath. The description is "This is little more than a strip of fine yellow [sand], perhaps twenty me[ter]s from side to side, and five from the [hillside] to the waterline[if the sage is in the location and the sage is not handled]. A little [sage] grows on the hillside, escaped from some garden, along with wilder plants[end if]. Above, at the top of that slope, are houses with balconies overlooking the sea, but from this angle it's impossible to see much of them, or for them (you'll have to take my word on this) to see us[if high street is visited and roundabout is not visited].

It's tempting to look for crabs among the rocks, but the tide is high just now, and even at the best of times this is not an area rich in sealife[end if]."

Understand "look for crabs" or "search for crabs" or "find crabs" or "catch crabs" as a mistake ("There aren't likely to be any, is the point.") when the player is in Private Beach.

The hillside is a facade in Private Beach. It is scenery. It fronts west. The initial appearance is "The [hillside] both east and west runs steeply down into the water [--] much too steep to allow for beaches or buildings. Here and there some bit of plant life has managed to cling onto the rock, but mostly it is bare and rough." Understand "hill" or "slope" or "plant life" or "plants" as the hillside.
	The closure notice is "That way is just bare hillside, much too steep to climb. ".

Instead of facing east in Private Beach:
	try examining the hillside.

The sage is in Private Beach. The indefinite article is "some". The scent-description is "pleasant herbs". The description of the sage is "Dark green leaves furred with silver prickles." The sage is a vegetable.

A description-concealing rule:
	if the sage is not handled:
		now the sage is not marked for listing.

The sandcastle is fixed in place in Private Beach. The initial appearance is "A fragile [sandcastle] stands near the water's edge." The sandcastle can be built or unbuilt. The sandcastle is unbuilt. The description is "[if unbuilt]At the edge of the water the sand is disturbed just enough to suggest where a previous sandcastle might have been, but that is all.[otherwise]No more than a couple of cylindrical turrets and a protective wall.[end if]". Understand "turret" or "turrets" or "wall" or "cylindrical" or "protective wall" or "cylinder" or "cylinders" or "castle" or "sand castle" or "sand-castle" or "palace" or "fort" or "fortress" or "project" as the sandcastle.

The scent-description is "salt and seaweed".

Instead of touching the sandcastle:
	say "[one of]Delicately [we] trace a few more crenellations in the top of the castle wall.[or][We] smoothe down one of the turrets.[or][We] poke a little door into the base of one of the turrets.[or][We] draw in some windows with our pinky.[at random]".

A description-concealing rule:
	if the sandcastle is unbuilt:
		now the sandcastle is not marked for listing.

Understand "build [sandcastle]" or "rebuild [sandcastle]" or "make [sandcastle]" or "construct [sandcastle]" or "reconstruct [sandcastle]" as building.

Instead of attacking the sandcastle:
	now the sandcastle is unbuilt;
	say "With a few vigorous swipes [we] demolish the construction."

Instead of building the sandcastle more than once:
	say "It would be pleasant to make believe that we were young and had no other concerns but to sit on the beach and make castles. But we both know that's not the case."

Building is an action applying to one thing.

Check building:
	if the sandcastle is built:
		say "There isn't time to build an entire sand-city." instead.

Carry out building:
	let N be a random number between 3 and 10;
	sandcastle washes away in N turns from now;
	now the sandcastle is built.

Report building:
	say "It would be madness to spend long on such projects when [we] have so much else to be doing, but [we] do, for old times['] sake (mine, at least), construct a couple of hasty cylindrical turrets and a protective wall of sorts."

At the time when sandcastle washes away:
	if the sandcastle is unbuilt and the player can see the sandcastle:
		say "The waves wash away all but the faintest traces of the sandcastle.";
	otherwise if the player can see the sandcastle:
		say "[if the noun is the sandcastle or the second noun is the sandcastle]But our efforts are in vain, because an[otherwise]An[end if] especially forward wave slides up the beach and demolishes [if the noun is the sandcastle or the second noun is the sandcastle]the whole construction[otherwise]our poor sandcastle[end if].";
	now the sandcastle is unbuilt;

Test sandcastle with "x castle / build castle / build sandcastle / look / smell castle / taste castle / touch castle / x castle / z".

The sand is scenery in Private Beach. Understand "ground" as the sand. The description is "It's baking hot." The indefinite article is "some". The sand is diggable.

Instead of taking the sand:
	say "Sure, [we] could wander off with a handful of sand, but [we] could hardly shift any significant portion of the beach. And then we'd be making a mess and dribbling sand grains everywhere."

Test funnelbug with "tutorial off / hard / y / dig / dig sand" in the Beach.

After digging in the sand when the funnel is buried:
	now the funnel is not buried;
	say "[We] brush away the sand covering a [funnel], left over from some child's building project."

Report digging in the sand:
	say "Scooping away a few handfuls of sand reveals nothing extraordinary, just more sand." instead.

Instead of touching the sand:
	say "[We] run our fingers through the fine sand, raking it into patterns."

Instead of inserting the sand into the funnel:
	say "[We] scoop a little sand, but it only runs out again."

Instead of inserting the sea-view into the funnel:
	say "The water fills the funnel and then runs out again in a decorative drizzle on the sand. A moment later even that is gone in the heat of the day."

A funnel is a thing in the Private Beach. The initial appearance is "[if the funnel is buried]Something green and plastic just barely pokes out of the sand[otherwise]Half-hidden in the sand, no doubt left over from some kid's sandcastle project, is a plastic funnel[end if]." The description is "A gaudy green plastic toy suitable for funneling water and shaping conical sand-turrets. [if examined]A few grains of sand still cling to it[otherwise]It's all sandy[end if]." The scent-description is "warm plastic".
	Understand "green" or "plastic" or "toy" or "gaudy" as the funnel.

Instead of examining the buried funnel:
	say "All that's visible from here is the tip of something green."

Carry out taking the funnel:
	now the funnel is not buried.

The funnel can be buried or unburied. The funnel is buried.

Sanity-check rubbing the sand when the funnel is buried:
	try digging in the sand instead.

Sanity-check inserting the funnel into the fountain:
	try washing the funnel instead.

Instead of washing the funnel in the presence of the fountain:
	say "We dip the funnel in the water and quickly shake it dry.";
	now the description of the funnel is "A gaudy green plastic toy suitable for funneling water and shaping conical sand-turrets."

Instead of  washing the funnel when the player can touch a sink (called target sink):
	now the description of the funnel is "A gaudy green plastic toy suitable for funneling water and shaping conical sand-turrets.";
	say "[We] run some water from [the target sink] over [the funnel], leaving it glistening and clean." instead.

Instead of rubbing the funnel:
	if the funnel is buried:
		try digging in the sand instead;
	otherwise if the funnel is not handled:
		say "There's no point trying to clean it while it's lying in the sand." instead;
	otherwise:
		say "[We][']ve brushed away most of the adhering sand, but there are always going to be a few grains left."

Instead of wearing the funnel:
	say "I try setting it on our head as a cap, but it slides off again."

Instead of searching the funnel:
	say "It restricts our view comically, as though [we] were peering through a doll's periscope. But the utility is limited."

Rule for listing exits when the location is Private Beach:
	say "This little bit of sand ends on either side in steep rockfalls; there's no way to work along the coast in either direction. The only way to go is back up the footpath to the south."

[TODO fix tests]
Table of Ultratests (continued)
topic	stuff	setting
"funnel1"	{ funnel, apple}	Park Center

Test funnel with "tutorial off / look / x funnel / dig in sand / look / x funnel / get funnel / clean funnel / look in funnel / wear funnel" in Private Beach.
Test funnel1 with "drop funnel / take funnel / wash funnel / fill funnel with water / wave p-remover at apple / fill funnel with ale / put funnel in water / put funnel in fountain" [holding the funnel and the apple in Park Center].
Test funnel2 with "drop funnel / take funnel /wash funnel / put funnel in water / put funnel in sink" holding the funnel in My Apartment.

Instead of going up when the location is Private Beach:
	try going south.

The footpath entrance is a backdrop. It is in Roget Close and Private Beach. The description is "You can see just a few feet of the path, which quickly disappears among houses and bushy growth." Understand "path" as the footpath.

Instead of climbing or entering the footpath entrance:
	if the location is Private Beach:
		try going south;
	otherwise:
		try going north.

The Wealthy District is a region. Hesychius Street, Roget Close, Webster Court, Winding Footpath, the Private beach, Patriotic Chard-Garden, and the Foyer are in Wealthy District.

Index map with Old City Walls mapped north of Monumental Staircase. Index map with Hesychius Street mapped west of Old City Walls. Index map with Webster Court mapped north of Hesychius Street. Index map with Roget Close mapped west of Webster Court. Index map with Foyer mapped north of Webster Court.

Counterfeit Affluence ends here.