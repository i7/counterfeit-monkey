Counterfeit Old Town Celebration by Emily Short begins here.

Use authorial modesty.

Part 2 - Old Town Celebration

Chapter 1 - Central Park Area

Section 1 - The Park

Park Center is a room. The description of the Park Center is "This is a handsome expanse of [grass], shaped like a rectangle with rounds cut from the corners, bounded by [railings] along the north side. There are no stalls and no barkers here, but [small children] are running around [if the horses are part of the fountain]an impressive[else]a desecrated[end if] [marble fountain][if hoses are part of the marble fountain], currently spewing water in all directions[end if].[one of]

I gather from the direction of your thoughts that you dislike small children, so I'll restrain myself from trying to communicate with them.[or][stopping]".

Some railings are a facade. Understand "railing" as the railings. They are scenery in Park Center. They front north. The description is "Painted railings separate the Park and surrounding pedestrian areas from the private property to the north. Some [lipstick advertisements] have been hung over the railings." Understand "painted" as the railings.
	The closure notice is "There is no gate in the railings at this point. ".

Check waving the letter-remover at the railings when the current setting of the letter-remover is "s":
	say "The letter-remover warms in our hand, but nothing visibly changes, perhaps because RAILING lies on the awkward verge between a count noun and a mass noun, and if we say RAILINGS we mean something not very different from A QUANTITY OF RAILING, making RAILING a word with cumulative reference." instead


Some lipstick advertisements are part of the railings.
	Understand "ad" or "ads" or "advert" or "adverts" as the lipstick advertisements.
	The description of the lipstick advertisements is "Over the image of a pouting, lipsticked female, it says: IN EVERY TEMPTRESS THERE IS AN EMPRESS [--] MAKE YOURSELF UP TO A T! It's selling Temptress Brand cosmetics, apparently.".

Rule for listing exits when looking in Park Center:
	do nothing instead.

Rule for distantly describing Park Center:
	say "That way is the cen[ter] of the park, across a lot of grass."

[Before printing the name of a direction (called way) while listing exits:
	if the player is in Park Center, say "[room way from the location] to the "

Procedural rule when listing exits:
	if the location is Park Center, ignore the append room names rule.

Rule for listing exits when looking in Park Center:
	do nothing instead. ]


Check waving the letter-remover at the small children when the current setting of the letter-remover is "s":
	say "If it were a more powerful device, the letter-remover might be able to generate something resembling the concept of 'mall children,' but that's not an idiomatic saying around here. Not to mention that the parents would be bound to object." instead

Carry out examining small children:
	trigger Childhood-bedroom.

Some small children are a person in Park Center. Understand "child" or "boy" or "girl" or "sibling" as the small children. The description is "They look small and harmless, but you're probably right that they have sticky hands." The children are scenery.

Every turn when the small children can see the hoses and the location is Park Center:
	if a random chance of 1 in 2 succeeds:
		say "[one of]A little boy[or]A small girl[at random] [one of]tries to catch the spraying hosewater in an open mouth[or]pushes a sibling into the path of the water[or]leaps gleefully through the arc of water[at random].";
		now the description of the small children is "Most of them are now sopping wet, and loving it.";
		if a random chance of 1 in 5 succeeds:
			say "[line break]A harrassed-looking All-Purpose Officer comes hurrying across the lawn towards the vandal[ize]d fountain. For a moment it looks like she might get close enough to spot us, but about twenty paces off she stops, plants her feet, and gets out a restoration-gel rifle.

There's a bang, a last glittering fan of water in the air.[paragraph break]";
			gel-convert the hoses;
			say "[line break]As for the Officer, she's already speaking into her radio as she turns away.".

Every turn when the small children can see the ho and the location is Park Center:
	say "It isn't but a few seconds before a watchful parent notices the ho strutting around and goes to report her.

She is too stupid — as a constructed person — to put up much resistance when an officer shows up to escort her away.";
	now the ho is nowhere.

[And now we need to special-case these, because otherwise they will fall on the ground. In general we want letter-conversion to move things that are part of other things, but here it's funnier and also more persuasive if the changed items stay part of the fountain.]
To gel-convert (item - hoses):
	now everything which proffers the item is part of the marble fountain;
	now the item is in the repository;
	[play the sound of gel splort;]
	say "[The item] [become] [a list of things which proffer the item], redecorating the fountain.";
	repeat with secondary running through things which proffer the item:
		abide by the dangerous construction rules for the secondary.
To gel-convert (item - hoe):
	now everything which proffers the item is part of the marble fountain;
	now the item is in the repository;
	[play the sound of gel splort;]
	say "[The item] [become] [a list of things which proffer the item], redecorating the fountain.";
	repeat with secondary running through things which proffer the item:
		abide by the dangerous construction rules for the secondary.

Instead of taking the children:
	say "There's no need to attract attention to our new face with a kidnapping charge."

Instead of kissing the children:
	say "I doubt their mothers would approve."

Instead of saying hello to the children:
	say "[one of]They have probably been instructed not to talk to strangers[or]Come on, they're not in the least useful[stopping].".

Instead of asking the children about something:
	say "[one of]They have probably been instructed not to talk to strangers[or]Come on, they're not in the least useful[stopping].".

Instead of telling the children about something:
	say "None of them hold still long enough to listen."

[The fountain itself is similar to one in a plaza in Carcassonne. The horses-to-hoses business was a late-game addition, thanks to Jim Munroe trying to amuse the children.]

The marble fountain is a scenery container. It is in Park center. The description of the fountain is "[if horses are part of the marble fountain]It depicts some horses rising out of the waves, with trident-bearing gods on their backs, and some nymphs overseeing the whole operation. Probably 17th-century, to judge by the excessive number of writhing [figures][else if hoses are part of the marble fountain]The nymphs and trident-bearing gods are now aiming hoses out at passers-by[else if hoe is part of the marble fountain]A single bewildered nymph is carrying a hoe, which presumably isn't much use out at sea[else]The former majesty of the fountain has been extensively vandalized[end if]."
	The introduction is "The fountain celebrates [--] if that's the right word [--] the conquest of this island by the Dutch in 1607, it having been a Spanish possession for about 140 years before that.

In spite of this the fountain bears not a word of any foreign language, the original Latin or vernacular inscriptions having been long since renovated away."

Some horses are part of the marble fountain. Understand "horse" or "horse statues" or "horse sculptures" as the horses. The description of the horses is "Their eyes are wide and their nostrils flared with excitement."

Some sculpted figures are part of the fountain. The description of the sculpted figures is "Nereids and Tritons, apparently, together with tame fish, conch shells, and other representatives of the goods of the sea." Understand "nereids" or "tritons" or "fish" or "shells" or "goods of the sea" or "tame" or "conch" or "gods" or "trident-bearing" or "poseidon" or "neptune" or "nymphs" or "nymph" or "trident" or "god" as the figures.

Instead of searching the fountain:
	say "The basin is nearly full of clear [water], but there are no coins or other useful articles to be found. This is not a culture that tends to discard what might be of use."

The missing-inscriptions are part of the marble fountain. The printed name is "inscriptions". Understand "inscription" or "inscriptions" or "renovated" or "latin" or "vernacular" or "missing" or "nonexistent" or "non-existent" or "foreign" or "lettering" or "letters" or "words" or "language" or "original" as the missing-inscriptions.

The description of the missing-inscriptions is "Whatever writing once graced the fountain, it has been chiseled off because it wasn't in English."


Instead of listening to a room when the location is in Open-Air:
	if hoses are part of the marble fountain:
		say "The sound of children shrieking and jumping through fountain water is by far the loudest component of the assorted din.";
	else:
		say "Children laughing and shouting, people selling food and drinks, various fairground machinery, tinny music, adult conversations, flowing water in the fountain."


After deciding the scope of the player when the location is in Open-Air:
	place the fountain in scope.

Rule for reaching inside a room:
	if the person reaching is the player:
		say "[We] can only look from this distance.";
	deny access.

The water is in the fountain. The water is fluid and scenery.
	The indefinite article is "some".
	Understand "clear" as the water.
	Instead of taking the water, say "[We] can't, not having webbed fingers."
	Instead of drinking the water, say "It might not be sanitary."
	The scent-description of the water is "wet marble".

Some grass is scenery in the Park Center. The description is "Deep green and velvety."
	Instead of touching the grass: say "[We] kneel and run our fingers through the grass."
	Sanity-check digging in the grass:
		say "It must have taken years of careful upkeep to achieve the smoothness of the present turf. No point in ruining that now." instead.

Rule for distantly describing the Fair:
	say "That way is the fair: a mass of booths and people and games and bright sunlight, too chaotic to get a good look at from here."

The Fair is south of Park Center. The description is "[one of]Today is Serial Comma Day, one of the biggest holidays on the island, and a time when half the police force is off duty while the other half is over-extended. The perfect day to make an escape. [or][stopping]The square at the cen[ter] of town is [one of]therefore [or][stopping]crowded with people, and there's an overpowering smell of artificial butter and spun sugar."

Instead of smelling the Fair:
	say "It smells like candy and popcorn, with a note of booze and another note of sweaty crowd."


The wheel is a thing in the Fair. The heft is 5. The description is "It's the sort of game where you spin the wheel for a prize[if the location is the Fair]. No one seems to be manning or using it any more, though; perhaps the supply of prizes has run out[end if]."

Instead of pushing or pulling the wheel:
	say "The wheel contraption moves a few millimeters to the side. Of course, we could always spin it and see what happens."

Instead of looking under the wheel:
	say "It looks heavy, but is not actually attached to the ground."

Instead of listening to the wheel:
	say "When the wheel is spinning, the flipper makes a satisfying [i]thup thup thup[/i] noise as it flips from one slot to the next."


Understand "use [wheel]" as turning.

Instead of turning the wheel:
	say "[We] give the wheel [one of]a[or]another[stopping] [one of]energetic[or]hard[or]strong[at random] spin. The pointer lands on [one of]HOT AIR[one of], which appears to be the most common reward[or] again[or] yet again[stopping][or]FREE POSTCARD[or]BLUE RASPBERRY LOLLIPOP[or]STUFFED DONKEY[or]STUFFED OCTOPUS[or]SET OF PAINT[or]LIFETIME CHARD SUPPLY[as decreasingly likely outcomes][one of]. Sadly, no one is around to award this prize (which is probably why we were allowed to spin it without having some sort of ticket first)[or]. Too bad no one is around to award the prize. Of course, if someone were, they'd be charging to spin[stopping]."

The random foodstuffs are scenery in the fair. Understand "spun" or "sugar" or "candy" or "butter" or "artificial" or "booze" or "popcorn" as the random foodstuffs.
	The description is "An assortment of unwholesome things to eat are sold here, and since it's extremely hot, [we] smell all of them pungently and in rapid succession. If it's not my imagination, actually, I think this female nose is better than mine. (I've heard that women have a better sense of smell. This could be wrong.) At the moment that sensitivity is a liability, as disorienting as flashes of a col[our]ed strobe.".  [* I wanted to give the sense in the first portion of the game that Alex and Andra are really disoriented by what has happened to them. Some of their sensations are borrowed from what it's like to have a migraine on a hot, sunny day amid a crowd: everything is simply too present to endure, and smells and noises become distinct and offensive even if normally they'd be quite pleasant.]

Some kiosks are fixed in place things in the Fair.  The description of the kiosks is "They're the usual tacky affairs of brightly painted [if the player wears the Britishizing goggles]fibreboard[otherwise]fiberboard[end if] and cheap prizes. I don't see any likely to help us today, however." Understand "activity" or "activities" or "cheap" or "prizes" or "face-painting" or "face painting" or "spell offs" or "spell-offs" as the kiosks.


A ranking rule for the kiosks: increase description-rank of the kiosks by 50.

Definition: the kiosks are deeply dull:
	no.

Rule for writing a topic sentence about kiosks:
	say "[We] are surrounded by [kiosks] for spell-offs, face-painting[if the wheel is in the location], [a wheel] to spin for prizes[end if], and other activities best for small children or the very easily amused. [run paragraph on]";

Rule for listing exits when the location is the Fair:
	if boldening is true:
		say "The Fair continues with a selection of carnival games to the [b]west[/b], and with open park to the [b]north[/b] and [b]east[/b].";
	else:
		say "The Fair continues with a selection of carnival games to the west, and with open park to the north and east."

Section 2 - Midway

The Midway is west of the Fair and southwest of Park Center. The description is "Here in front of the [pharmacy] in the southwestern corner of the town square, various contests have been set up [--] a [strong-man contest], a contest to see who can burst the most [balloons] using [a styrofoam dart-plane], and so on."

The pharmacy is a facade in Midway. It fronts south. It is scenery. Understand "pharmacy" or "window" or "windows" or "glass" or "front" or "shade" or "shampoo" or "razors" or "analgesics" or "burn" or "creams" or "candy" or "toothpaste" or "homeopathic" or "remedies" as the pharmacy. The description is "There's not much to see, as a shade has been pulled down behind the glass front. I can tell you what's back there, though, if you care: the usual assortment of shampoo and razors and analgesics and burn creams; candy, and also toothpaste; and a costly selection of homeopathic remedies in matching brown bottles."

The blank church wall is a facade in Midway. It fronts west. It is scenery. The description is "The blank wall separates off the church property that lies west of here."
	The closure notice is "The wall is solid here, though the church can be entered from the church forecourt. ".

Instead of going south in Midway:
	say "The pharmacy, like many of the other shops in the area, is closed so that the employees can enjoy Serial Comma Day. [run paragraph on]";
	carry out the listing exits activity.

Rule for listing exits while looking in Midway:
	do nothing instead.

The strong-man hammering contest is scenery in the Midway. Understand "strongman" or "bell" or "bells" or "hammer" as the contest. The description is "It's one of those contests where you have to hammer something so that something else flies up and rings a bell. I don't have time for that kind of silly macho display."

The balloons are scenery in the Midway. The description is "All stapled in place and ready to be attacked." Instead of attacking the balloons: say "[one of]Better to leave that nonsense to the little ones.[or]Come on, we'll never get away if you insist on lollygagging![or]We have better things to do, remember?[stopping]".

The styrofoam dart-plane is scenery in the Midway. The description is "Ridiculous little styrofoam gliders with dart-noses. No use to us, anyway."

The word-balance is fixed in place in the Midway. Understand "balance" or "steel" or "scales" or "pair of" or "beam" or "fabulous" as the word-balance. The printed name is "word-balance". The initial appearance is "[if the barker is in location]I assume you've noticed, though, [otherwise]No longer so useful is [end if]the [word-balance], which comes up as high as our hip. [balance contents]". The description is "The beam is [if the word-balance is tilting]tilting[otherwise]balanced[end if]. [balance contents]".

Instead of touching, pushing, pulling, or turning the word-balance:
	try pushing the right pan.

Instead of inserting something into the word-balance:
	say "You'd have to be specific about which pan you mean."

Instead of putting something on the word-balance:
	say "You'd have to be specific about which pan you mean."

Understand "put [word-balance] out of alignment" or "unbalance [word-balance]" or "win [tube]" or "try hand" or "try my/our hand" or "try hand at [word-balance]" or "try my/our hand at [word-balance]" as a mistake ("[one of]That does seem like the general idea.[or]Could you be a little clearer about the strategy?[or]I don't see how to carry out that clever little plan.[stopping]").

A ranking rule for the word-balance: increase description-rank of the word-balance by 50.

Every turn when a fluid thing (called target) is in a pan:
	unless the target is contained:
		move the target to the location;
		say "[The target] runs rapidly out through the slots of the pan."

Every turn:
	if the word-balance is tilting and the barker is in location
	begin;
		[follow the considerate player's holdall rule;]
		move the tube to the player;
		move the barker to the repository;
		say "There is a [if the ear is in a pan]disgusted gasp[otherwise]cheer[end if] from the spectators. [The word-balance] tilts slowly but inexorably.

[The barker] looks astonished and displeased, except for a fraction of a second when he just noticeably winks. With exaggerated bad grace hands us [a gel]. 'There's your prize. And now this contest is over.'

He stalks away";
		[if the apple is in a pan
		begin;
			move the apple to the repository;
			say ", taking [the apple] with him";
		end if;]
		say ".";
		record "winning the gel" as achieved;
		if the barker is the current interlocutor, reset the interlocutor;
	end if;

To say balance contents:
	if the right pan is empty
	begin;
		if the left pan is empty, say "Both pans are empty. ";
		otherwise say "The right pan is empty and the left contains [a list of things *in the left pan]. ";
	otherwise if the left pan is empty;
		say "The left pan is empty and the right contains [a list of things *in the right pan]. ";
	otherwise;
		say "On the right pan [is-are a list of things *in the right pan] and on the left [a list of things *in the left pan]. ";
	end if.

A pan is a kind of container. Understand "scale" or "pan" or "pans" as a pan. The right pan and the left pan are pans. The left pan and the right pan are part of the word-balance. The description of a pan is "Sturdy but slotted."

Instead of putting something on a pan, try inserting the noun into the second noun.

An apple is a vegetable. The apple is edible.

In the right pan is an apple. In the left pan is a pear. The pear is edible.

The description of an apple is "Red-cheeked and rosy." The scent-description of an apple is "apple juice". The flavor-description of an apple is "The skin tastes slightly waxy: I suspect it's been gussied up to look nice."

The description of the pear is "Handsome and green."
	The flavor-description of the pear is "The flesh is not quite ripe and tastes wooden."

Instead of smelling the pear:
	say "It doesn't smell like much of anything, probably because it's not completely ripe yet."

The pear is a vegetable.

Report waving the letter-remover at the apple creating ale:
	say "There's a smell of fermenting apple, then cider, then something more malty. In the apple's place there is now a glass of nutbrown ale." instead.

Understand "put [something preferably held] on/onto [a pan]" as inserting it into.

Instead of taking something which is in a pan in the presence of the barker:
	say barker-refusal instead.

Instead of touching or pushing or pulling or turning a pan in the presence of the barker: say barker-refusal instead.

Instead of touching or pushing or pulling or turning something which is in a pan in the presence of the barker: say barker-refusal instead.

Instead of inserting something into a pan in the presence of the barker: say barker-refusal instead.

[Yes, this is very strange. By default the parser will exclude the contents of the right pan when typing GET ALL while taking the contents of the left. But with this rule it works.]
Rule for deciding whether all includes things enclosed by the right pan while taking:
	it does;

To say barker-refusal:
	say "[one of]'None of that!' says [the barker]. 'You must make one side go down and the other come up, but you may not add or subtract anything from the load, you may not apply pressure to the beam itself, and you may not lean on, push, pull, or support the individual pans!'

A little boy in the crowd snickers rudely. 'Got ya!'[or]The barker gives us a warning look. In case you forgot, we may not increase or decrease the contents of the pan by hand or lean on the beam.[or]It is against the rules of the contest to remove something from the pans; and whatever we do, we've got to do without touching.[stopping]";

The barker is a man in the Midway. The initial appearance is "Beside the word-balance is a barker in [a blue suit], the same regulation blue used by the Bureau of Orthography." The barker wears a blue suit. The description of the barker is "He is dapper in his suit, as though he might belong to an especially vivid barber-shop quartet." The description of the suit is "Carefully tailored in bright blue linen, with fine white pinstripes."

Instead of telling someone about something:
	say "[The noun] [stare] at us coldly. [one of]I wish you wouldn't babble at folks: it just draws attention.[or]I know you didn't grow up around here, but people in this vicinity tend not to be so free with their words.[stopping]".

Instead of asking someone about something:
	say "[The noun] thinks for a moment, then apparently decides not to answer."

Definition: the word-balance is tilting if the total heft of the things in the left pan is not the total heft of the things in the right pan.

Every turn when the barker is in location and the word-balance is not tilting:
	add barker-advertisement to the planned conversation of the barker.

Check someone who is not the current interlocutor discussing an NPC-directed quip:
	set the current interlocutor to the actor.

barker-advertisement is an NPC-directed quip.
	The reply is "[one of]'Step up and try your hand at the fabulous word-balance!' calls the barker appealingly.[or]'Put the beam out of alignment and win a fabulous prize!' says the barker, holding up a [tube].[or]'One [tube] of restoration gel goes to the first person who can unbalance the word-balance!' cries the barker, glance sweeping the crowd.[at random]".

The barker is carrying a tube. The description of the tube is "It claims to be full of restoration gel, but said gel has mostly gone. If only it had been a larger container to start with." Understand "gel" or "prize" or "fabulous prize" or "label" or "restoration gel" as the tube. The scent-description of the tube is "mint". The tube is essential.

Instead of searching the tube:
	 try examining the tube.

Instead of opening or closing the tube: say "It comes without a cap."

Instead of squeezing the tube:
	say "[We] squeeze vigorously, but nothing comes out."

Instead of tasting or eating the tube:
	say "It is not for internal consumption."

Instead of waving the letter-remover at the tube when the tube is carried by the barker:
	say "The barker spots us gesticulating and smoothly, almost without thinking about it, swaps the tube into the other hand so that [we] miss."

Instead of examining the tube when the tube is carried by the barker:
	say "[We] can't get a good look at the tube from this position, but it definitely appears to be authentic restoration gel [--] valuable stuff, I recall you saying. [one of](Or were you just trying to impress me?)[or][stopping]".

[Some spectators are a person in the Midway. They are scenery. The description is "They wander and hover and point and gawk and then move on." Understand "crowd" or "players" or "people" as the spectators. ]



[The Postcard Stalls are north of the Park Center, east of the Food Corner, and west of Outdoor Cafe. The description is "It is astonishing how exactly alike all postcard vendors are. It is the usual thing: white wire racks with pictures of the harbor, the city walls, the ancient fortifications."

Rule for listing exits when looking in Postcard Stalls: do nothing.

]

[Northwest of the Park Center is the Food Corner.

The description of the Food Corner is "In this corner of the park, a sausage stand has been set up. This is partly for the benefit of the people enjoying the park and partly for the patrons of the cinema to the north, which has no food counter of its own."

The sausage stand is scenery in Food Corner. The initial appearance is "An ingenious invention able to keep several dozen Italian sausages, bratwurst, and Kosher hot dogs simultaneously at the ideal heat for serving."

The sausage-seller is a man in Food Corner. The description of the sausage-seller is "He looks suspicious [--] I mean, he looks as though he suspects us of something. It's true that I passed him earlier a few times when I came up here to stash my things before our operation. I even contemplated buying a Kosher hot dog from him, and changed my mind at the last minute because I was afraid of missing our appointment.

But since I was a tall blond male at the time, I don't think he can remember the incident."
	Understand "sausage" or "seller" or "man" as the sausage-seller.]

Section 3 - Church Forecourt

The Church Forecourt is [south of Food Corner,] northwest of Fair, west of Park Center, [southwest of Postcard Stalls,] and north of Midway.

Rule for distantly describing the Church Forecourt:
	if the player is in New Church:
		say "It is much brighter out there in the Church Forecourt.";
	otherwise:
		say "That way lies the Church Forecourt, with the facade of the New Church itself visible on the west side. It's a handsome and dignified building, and still draws its share of tourists, if few worshippers."

[Some salespeople are an alert person in Church Forecourt. The description is "They are all male, somewhat scruffily dressed in bright-colored clothing. This is amateur hour: the real smugglers and counterfeiters and inventors, the [i]pidgitiers[/i], work down by the docks, or in concealed places around town; when you see them out of doors they are always respectable, and their wares are proof against authentication scopes."
	The initial appearance is "Several enterprising salespeople have set out [blankets] on the sidewalk and are hawking wares almost guaranteed to be linguistic counterfeits."
	[The introduction is "The salespeople are particularly daring because they are only a few hundred feet from the front door of the Rotunda. Nonetheless, no one has the right to arrest these characters except a special branch of the police, the black-caped Authenticators. The Authenticators ride around the city [--] slowly [--] on horseback. Notably, they never speed up enough to outpace the lookouts."]

Report the salespeople saying hello to the player:
	say "[one of]'Buy a nice [random thing which is on the blankets]?' wheedles one of the salespeople. I fix them with a practiced cold stare.[or]'Bargains,' says one of the salespeople in a dull voice.[or][one of]The salespeople, recognizing us again, do not bother with another sales pitch.[or]There is a perfunctory nod from the salespeople.[or]The salespeople acknowledge us with a small nod.[at random][stopping]" instead.

The blankets are a supporter in the Market. The description is "Synthetic fleece, grubby from being spread on many sidewalks." Understand "blanket" or "cloth" as the blankets. The scent-description is "hot polyester".

Instead of putting something on the blankets:
	try the salespeople discussing warning about blankets.

Instead of buying something which is on the blankets:
	say "[The noun] [are] certainly fake."

On the blankets is a watch. The description of the watch is "A valuable watch with diamonds set in the face and a chunky metal band."

Instead of taking the watch when the watch is not handled and the watch is on the blankets:
	say "Dubious though it is, the watch is being offered for sale: the salespeople would hardly permit us to walk off with it."

Rule for disclosing contents of the blankets:
	say "Laid out on the blankets carefully as though precious merchandise [is-are a list of mentionable things on the blankets]. " ]

The church exterior is a facade in Church Forecourt. Understand "new church" or "plaster" or "entrance" or "entry" or "flank" or "building" or "flank of the building" as the church exterior. The printed name is "New Church".
	The initial appearance is "This corner of the park, in the lee of the church, has been left free of kiosks and booths. Contrary to the usual rules of cathedral layout, the [church exterior] is oriented toward the north, so [we] are standing by the flank of the building, though there is an entrance on this side."
	The description is "It manages to be austere without seeming in the least modern: the walls are white and the windows clear, but the proportions, the texture of the plaster, the irregular leading between the panes of glass, all come of the age of handmade things."

Instead of touching the church exterior:
	say "We rest our spread palm on the wall of the church. It is reassuringly solid."

Some clear windows are part of the church exterior. Understand "panes" or "glass" or "leading" or "irregular" as the clear windows.
	The description is "They reflect the lucid blue of the sky."

Instead of searching the clear windows:
	say "The lighting conditions are such that [we] can't see in, only catch the reflection of the sky above."

Rule for listing exits when the location is Church Forecourt:
	if boldening is true:
		say "[b]South[/b] and [b]east[/b] lead to more of the park; there is a small [cinema-exterior][if the backpack is not handled] (where I left my pack)[end if] to the [b]north[/b], and the entrance to the [church exterior] is [b]west[/b].";
	else:
		say "South and east lead to more of the park; there is a small [cinema-exterior][if the backpack is not handled] (where I left my pack)[end if] to the north, and the entrance to the [church exterior] is west.";

The cinema-exterior is a facade in Church Forecourt. It fronts north. It is scenery. The description is "Large red letters on the marquee announce the latest film from Cannes." Understand "small" or "cinema" or "theater" or "theatre" or "movie" or "red letters" or "large red" or "large letters" or "large red letters" or "marquee"  or "film" or "cannes" as the cinema-exterior. The printed name is "cinema".

Section 4 - Heritage Corner

The Heritage Corner is east of the Fair and southeast of Park Center. It is proper-named. The description is "This patch of the town square has been paved over in [octagonal bricks] and is commonly used for displays of traditional dancing: over-50 women in home-made embroidered aprons, skipping arm-in-arm and jumping over broomsticks[one of].

No, there aren't any here [i]now[/i]. But trust me. It's an unforgettable sight[or][stopping]."

Rule for distantly describing Heritage Corner:
	say "That way is the bricked-over portion of the town square, sometimes used for exhibitions of regional dance. Today it is less populated than most of the Square[if the location is the Fair]. Beyond Heritage Corner to the east is the hostel where you stowed some important gear[end if]."

A diorama table is fixed in place in Heritage Corner. It is a supporter. The initial appearance is "Under a bit of [diorama-shelter] in the corner, [a diorama table] shows scenes from local history, rotated out each week. This week's diorama represents the first sitting of the Committee for the New Orthodox Orthography." Understand "diorama" or "scene" or "dioramas" or "shelter" or "scenes" or "local history" or "history" as the diorama table.

The description of the diorama table is "The patriotic scene is set against the backdrop of the Bureau's buildings ca. 1895, where the committee first met, but the historians have included a bit of the building exterior to show that the meetings were conducted under army guard. The writing of dictionaries has not always been bloodless[if the army is not on the diorama table and the members are not on the diorama table]. Both army and members are missing[otherwise if the army is not on the diorama table]. The army has been removed[otherwise if the members are not on the diorama table and the member is on the diorama table]. The members have been reduced to a single [member][otherwise if the members are not on the diorama table]. The members have been removed[end if].". Understand "backdrop" or "setting" or "buildings" or "bureau" or "bureau's" or "building" or "scenery" as the diorama table.

The diorama-shelter is part of the diorama table. The printed name is "shelter". Understand "shelter" or "bit" or "bit of" or "clear" or "plastic" or "hood" as the diorama-shelter. The description is "Little more than a clear plastic hood to protect the diorama beneath."

Check waving the letter-remover at diorama-shelter when the current setting of the letter-remover is "s":
	say "The device buzzes, puzzled. You can't make 'helter' without a bit of 'skelter.'" instead.

Instead of pushing something which is on the diorama table:
	if the noun is the army:
		say "[We] form the army into [one of]Roman-style formations[or]a fierce defensive line[or]a cheerleading pyramid[at random].";
	otherwise:
		say "[We] inventively reposition [the noun] [one of]to the outside of the meeting chamber[or]to be on the walls of the meeting chamber[at random]."

Report putting something on the diorama table:
	if the noun is the members or the noun is the army or the noun is the member:
		say "[We] restore [the noun] to [their] rightful position." instead;
	otherwise:
		say "[We] add [unless the noun is plural-named]an [end if]incongruous [noun] to the scene." instead;

Some members are naughty-sounding things on the diorama table. The description is "Mostly men and a few women, sternly dressed and with solemn expressions." Understand "committee" as the members.

An army is a thing on the diorama table. The description of the army is "A collection of soldier figurines in blue uniforms."

A description-concealing rule:
	if the army is on the diorama table:
		now the army is not marked for listing;
	if the members are on the diorama table:
		now the members are not marked for listing.

Definition: a thing is diorama-appropriate:
	if it is the member:
		yes;
	if it is the members:
		yes;
	if it is the army:
		yes;
	no.

The diorama follow-on rule is listed before the examine supporters rule in the carry out examining rules.

This is the diorama follow-on rule:
	if the noun is not the diorama table:
		make no decision;
	if the diorama table does not support anything which is not diorama-appropriate:
		if the diorama table does not support anything:
			say "The scenery appears to have been hot-glued in place.";
		otherwise:
			say "[The list of things *in the diorama table] [if at least two things are on the diorama table]are[otherwise]is[end if] movable, but the rest of the scenery appears to have been hot-glued in place.";
		rule succeeds.


The bakery is a facade in Heritage Corner. It fronts south. It is scenery. Understand "bakery" or "baker" as the bakery. The description is "It's closed today and so there are no products on display, since nothing was baked this morning. But on any other day the windows would be stocked with round and oblong loaves, olive bread, crescent pastries, and a traditional specialty, a kind of savory muffin studded with pine nuts.".

Instead of going south in Heritage Corner:
	say "That way lies a bakery closed for Serial Comma Day. [run paragraph on]";
	carry out the listing exits activity.


Rule for listing exits when the location is Heritage Corner:
	if boldening is true:
		say "The park continues to the [b]north[/b] and [b]west[/b]; to the [b]east[/b] is [if the hostel is unvisited]a backpackers['] [hostel-exterior] where you've stayed recently and where you stowed the rest of your important possessions[otherwise]the [hostel-exterior][end if].";
	else:
		say "The park continues to the north and west; to the east is [if the hostel is unvisited]a backpackers['] [hostel-exterior] where you've stayed recently and where you stowed the rest of your important possessions[otherwise]the [hostel-exterior][end if]."

The hostel-exterior is a facade in Heritage Corner. It is scenery. The printed name is "hostel". The description is "It's a narrow brick townhouse with only one or two rooms on each floor, and silly ornamental brickwork up near the skyline. The label over the entrance merely announces a generic hostel, without the dignity of a name." Understand "hostel" or "sign" or "townhouse" or "silly brickwork/bricks" or "ornamental brickwork/bricks" or "silly ornamental brickwork/bricks" or "brickwork" or "narrow" or "brick" or "backpacker's" or "backpackers'" or "backpacker" as the hostel-exterior. Understand "bricks" as the hostel-exterior when the player's command includes "examine/x/l/look". [Does thiswork?] The hostel-exterior fronts east.

The octagonal bricks are scenery in Heritage Corner. The description is "Alternating with square bricks of a slightly darker shade of maroon. Nothing about this seems remotely significant." Understand "ground" or "paving" or "floor" as the octagonal bricks.

Chapter 2 - Indoor Areas

Section 1 - Cinema


The Cinema Lobby is north of Church Forecourt. It is indoors. The description is "This is a small, one-screen theater. [one of]The seats are not comfortable and the screen is not large. The projector is old. The management is lazy. No food is served.

On two occasions, the film I was watching burst into flames while it was being shown.

Despite these handicaps, it maintains an active and interested clientele simply by virtue of content: a wide variety of foreign films that, though meticulously dubbed into flawless California-accented English, nonetheless carry that slight tang of the forbidden.

[or][stopping]Evidently the next showing is not for a little while yet, because there are no patrons in sight."

Instead of going in when the location is Cinema Lobby:
	try going west.

Rule for listing exits when the location is Cinema Lobby:
	if looking, do nothing;
	otherwise say "There is of course the exit to the south; the screening room itself is west."

The ticket-taker is an alert man in the Cinema Lobby. The initial appearance is "[The ticket-taker] waits just west of us, at the entrance to the screening room, ready to take tickets."
	The description of the ticket-taker is "Not one of this country's best and brightest, but he seems good-natured."
	Understand "young" or "man" or "ticket taker" or "taker" as the ticket-taker.

Rule for writing a paragraph about the ticket-taker when the ticket-taker is not the current interlocutor:
	set the current interlocutor to the ticket-taker;
	if the ticket-taker knows allowed-in-movie, say "'Yo,' says the [ticket-taker] as [we] come in.";
	otherwise say "'Ticket,' says the [ticket-taker] automatically.";
	set pronouns from the ticket-taker;
	now everything held by the ticket-taker is mentioned.


Instead of going to the Screening Room when the ticket-taker does not know allowed-in-movie:
	carry out the describing path activity with the player;
	if the ticket-taker is not in the location, continue the action;
	set the current interlocutor to the ticket-taker;
	queue hang-on-there.

The Screening Room is west of Cinema Lobby. It is indoors. The description is "[if the player recollects what the movie seems]'Red'[otherwise]Whatever is scheduled for later showing[end if] has not started yet, and is probably not destined to start for some time; at any rate,[unless the project is switched on] the [film screen] is blank and[end if] no audience has yet assembled."

Instead of waiting in the Screening Room:
	if the reel is in the projector and the projector is switched on:
		make no decision;
	say "[one of]A little time passes, but I don't think the movie's likely to start for quite some time.[or][We] haven't got time to wait for the show to begin.[stopping]".

Instead of listening to the Screening Room:
	say "The thick walls and solitude make for an especially thick and syrupy silence, as though the rest of the world didn't exist at all."

The film screen is scenery in the screening room. Understand "show" or "movie" as the film screen. The printed name is "screen". The description is "[if the reel is in the projector and the projector is switched on]The screen flickers black and white[otherwise if the projector is switched on]The white beam from the projector illuminates it, but no movie is showing[otherwise]The screen is empty: nothing is yet being shown. It is also very very small by modern cinema standards[end if]."

The seats are an enterable supporter in the Screening Room. The seats are scenery. The description is "In an age of stadium seating and theater chairs that resemble home recliners, these don't even have the usual old-fashioned red plush. They are hard wooden seats such as might be found in a puritanical schoolroom." Understand "row" or "rows" or "seat" or "seating" or "chairs" or "chair" as the seats.
	Instead of looking under the seats when the backpack is in the Screening Room:
		say "I've already located the backpack, right where I left it."
	The scent-description of the seats is "a mixture of wood lacquer and popcorn grease".

The backpack is in the Screening Room. The initial appearance is "My [backpack] is stowed under a seat in the third row from the back." Understand "pack" or "rucksack" or "backsack" as the backpack.
	The backpack is wearable and essential.
	It covers the torso-area.
	The introduction of the backpack is "I figured that it would be undisturbed there for a couple of hours, in the dark and out of sight, and if anyone found it they would probably turn it in to Lost and Found. But it is a big relief to find it still there."

The backpack is a player's holdall. The description of the backpack is "Mine: a little bit worn, but capacious. It doesn't have any identifying marks on it, and I thought a brand-new bag would look more suspicious[if the backpack is open]. It currently gapes open[else]. It's closed[end if]." The backpack is openable and closed and transparent.

The backpack contains a flash drive. The description of the flash drive is "This is it: all my notes; the syllable-and word-generating programs from which I built my language vocabulary; the lexicon and pronunciation guide and grammatical descriptions.

And then there's the research to support the product: citations; copies of journal articles and scans from books; contact information for people in the outside world I think could help me.

It's everything I've been working on for the last three years."

Carry out taking the flash drive:
	complete "Get my backpack from the cinema";
	record "retrieving the backpack" as achieved.

Carry out taking something which encloses the flash drive:
	complete "Get my backpack from the cinema";
	record "retrieving the backpack" as achieved.

The flash drive is essential.

[ The projection booth is here chiefly for easter egg purposes: if the player (much later on) manages to create the abstract LEER, run it through the mirror, and bring the resulting REEL back to the projection booth, the result is this curious movie -- an achievement reward. ]

The Projection Booth is north of Screening Room. It is indoors. The description is "The booth is small and lined with [grey-carpet]. It smells faintly of hot dogs."

The grey-carpet is scenery in the Projection Booth. The printed name is "grey carpet". Understand "gray" or "grey" or "carpet" as the grey-carpet. The description is "In this dim light it's hard to give the carpet too exact an inspection, which I imagine is just as well."

Instead of smelling the Projection Booth:
	say "The ghost of hot dog and relish lingers in the air. It's mildly nauseating."

The jotter is a notepad in the Projection Booth. The initial appearance is "[A jotter] is propped up next to the projector." The description is "It's a little spiral-bound notebook, the kind reporters in old movies carry. It's full of notes: running times of movies. Numbers of people in the audience. Who clapped during potentially subversive scenes. Who arrived in a group of more than three."
	The jotter write-allows a pen and some pens.
	The memo of the jotter is "Red: audience 14. FM couple. MM couple. M in raincoat. FFFFF group. F. MF. M.".

Rule for writing a topic sentence about the jotter when the projector is mentionable:
	say "[A jotter] is propped up next to [the projector].[no line break]"

The projector is a container in the Projection Booth. It is fixed in place. The initial appearance is "[A projector] has been set up facing the [film screen][if the reel is in the projector] and [a reel] threaded into it[end if]." The description of the projector is "It's an old-fashioned film projector[if the reel is in the projector], with [a reel] of film inserted[otherwise], with a spot to hold [a reel] of film[end if]. The lens points at the screen." Understand "lens" as the projector.

The projector-switch is a device. The projector-switch is part of the projector. The printed name of the projector-switch is "projector switch". Understand "switch" or "projector switch" as the projector-switch.

Sanity-check switching on the projector:
	try switching on the projector-switch instead.

Sanity-check switching off the projector:
	try switching off the projector-switch instead.

Report switching on the projector-switch when the reel is not in the projector:
	say "The light comes on, but nothing plays." instead.

Carry out switching on the projector-switch when the reel is in the projector:
	now the reel position of the reel is 1.

Report switching on the projector-switch when the reel is in the projector:
	say "[We] flip the switch. [The projector] comes to life with a hum. There's the usual flickering of light and dust, and then a black and white movie begins to play." instead.

Understand "movie" or "black and white" as the reel when the reel position of the reel is greater than 0.

The reel has a number called reel position.

[The reel here is a little bit like the tale, in that it produces a partially randomized story. This time, however, instead of going for a plot, we juxtapose a series of unexplained images and leave it up to the reader to try to imagine a connection between them -- a fires in the desert approach a la Wilmot's End, to borrow the language of Echo Bazaar.

The intention is to suggest an encounter with a slightly inexplicable film that deals with emotional reactions towards the Atlantean threat and all that goes with it.

The filmmaker is Lucius Quagmire, whose manifesto can also be found in the Aquarium Bookstore by the determined searcher.]

Every turn when the reel is in the projector and the projector-switch is switched on (this is the movie advancement rule):
	record "Lucius Quagmire award for viewing unusual films" as an achievement;
	if the location is Projection Booth or the location is Screening Room:
		say "[cartoon event for reel position of the reel]";
	increase the reel position of the reel by 1;
	if the reel position of the reel is greater than 4:
		now reel position of the reel is 1;
		now the projector-switch is switched off.  [if we go away for a while and come back, we'll find that the story has progressed in our absence]

Instead of examining the reel when the reel is in the projector and the projector-switch is switched on:
	follow the movie advancement rule.

To say on screen:
	say "[one of]On screen,[or]On the screen,[or]In the movie,[or]In the picture,[or]As we watch,[at random]".

To say harmless event:
	say "[one of][viewpoint character] is painting an easter egg with meticulous care[or]a little blonde girl romps through a field carrying a basket[or][viewpoint character] is making a fuss over a white rabbit in a cage[or]a kneeling priest is placing an egg under one of the pews of his church[or]three little boys are throwing eggs at one another[or][viewpoint character] is vigorously squeezing a hen, who does not appear to have done anything to deserve it[or]church bells are ringing in the spire of a Gothic church[or]a lady with white gloves is turning over and over an enamel egg studded with gemstones[or][viewpoint character] dips a pastry brush into a dish of yolk[at random]".

To say foreboding event:
	say "[one of]a man with a snub-nosed pistol is stealing two eggs from a cleric[or]the camera zooms in close on an egg. There is a sound of ticking[or]two men circle each other warily on a stone bridge, built across a dangerous ravine. One of them wears a badge in the shape of a rooster. The other has a giant A stitched to his coat[or]a plane buzzes low to the ground over a peaceful-looking farm. A man parachutes out, lands, and sneaks into the barn. He is carrying a number of pamphlets in English[or]customs officials are unpacking sawdust from a box, revealing a number of uniquely decorated eggs. One of them snaps an order abruptly at the other. Both look alarmed. In close-up, we see tiny writing on the eggs[or]a nurse in uniform counts out glass ampules of clear liquid. Her fingers tremble. She sets the ampules on a table next to a figurine of a white rabbit[or]a girl in white gloves sits down on a church pew and folds her hands to pray. As she does so, the flowers on the altar wilt and turn black[or][viewpoint character] kneels in the dirt, burying eggs in a row as though they were tulip bulbs[at random]".

To say atmospheric event:
	say "[one of][viewpoint character] watches as an egg begins to chip from the inside. Something is trying to get out[or]the camera closes and holds for a long time on a glass jar of pickled eggs. Finally a young boy's hand reaches in and extracts one of the pickles. The rest of the boy is not shown[or]a dead rabbit on a string hangs from the tree. The shot holds there for a long period. Wind rustles in the grass[or]a woman clings to the lapels of a sharply-dressed gentleman. He pushes her away. She takes off a brooch shaped like a rooster and flings it at his feet. He picks it up and slowly pins it to his tie[or]an old man lies on his deathbed, two generations of family members gathered around him. A bird lands on the windowsill outside. It lays a spotted blue egg[or]a pair of eggs sizzle in a frying pan for what feels like an entire minute, before a film hand descends to remove them to a plate[or][viewpoint character] sits skinning a brown rabbit. The film lingers over the separation of skin from flesh, and the glassy look in the dead rabbit's eyes[or][viewpoint character] finds an Atlantean flag [--] one of the old style from before the second World War [--] and tears it into strips[at random]";

To say climactic event:
	say "[one of]angry villagers pelt a plane with rotten eggs while a man in [--] is that Atlantean uniform? [--] cowers away from their wrath[or]a country church explodes from the inside, the stained glass blowing out in all directions. Beleaguered peasants watch with dumb incredulity. A small girl bleeds[or][viewpoint character] digs, manic and desperate, in a graveyard, while more and more villagers come to watch. At last they discover something at the bottom of the hole. Everyone draws back, appalled, but the film does not show us what they are seeing[or][viewpoint character] runs into a burning house and remains there while the fire burns higher and higher, only to return with a book in a worn black binding. From the notches cut into the edges of the page, it appears to be a Bible or a dictionary[at random]";

To say denouement event:
	say "[one of][viewpoint character] applies restoration gel to an easter egg, which turns into a young boy[or]citizens erect a stone monument of a rooster, on a high platform overlooking the sea. Then [viewpoint character] garlands the monument with flowers[or]a priest reads the service over a casket[or]half a dozen children seated on a porch eat fried eggs from the same pan. They have a wild-eyed look, which [viewpoint character] seems to find frightening or sad[at random]";

The viewpoint character is text that varies.

To say first arrival:
	say "The scene opens on [a viewpoint character][one of] seated in the sunshine[or] reading a newspaper[or] kneeling in the dirt outside a farmhouse[or] walking across a field[or] doing some shopping at a farmer's market[or] carrying a cage containing a rabbit[or] putting eggs into a basket[or] purchasing a set of paints[or] speaking earnestly if incomprehensibly to camera[or] reading aloud from a small black book that looks much battered[or] peering into a cracked mirror[or] drawing one finger across a map of the Mediterranean[or] cutting letters from a newspaper with a pair of nail scissors[or] gathering a clump of grubby carrots and washing them at a pump[at random]";

To say cartoon event for (N - a number):
	if N is 1:
		say "A jolly title card comes up, which reads '[one of]Les oeufs de Pâques[or]Ostereier[or]Huevos de pascua[or]Uova di Pasqua[or]Pazko-arrautzak[at random]'.";
		now the viewpoint character is "[one of]a man in a black uniform[or]a woman in a chic blue hat[or]a farmer with calloused hands[or]a little blonde girl[or]a nurse in wartime uniform[or]a priest[or]a skinny spinster[or]a husky-voiced housewife[or]a teenaged boy[at random]";
		say "[line break][first arrival]. Afterward, [one of][harmless event][or][atmospheric event][at random].";
	if N is 2:
		say "[on screen] [one of][foreboding event][or][harmless event]. [paragraph break]Then [foreboding event][or][atmospheric event]. [paragraph break]Next [foreboding event][at random]. [one of]The dialogue is rapid, foreign, and distorted by poor film quality and the passage of time[or]It's impossible to make out what's being said, but the music is melancholy, played on a distressed fiddle[or]The soundtrack has so degraded that the words are incomprehensible, but there is a backing tune of young children singing[at random].";
	if N is 3: [conclusion]
		say "[on screen] [climactic event].

Finally, [one of][atmospheric event][or][denouement event][at random].";
	if N is 4:
		say "The credits come up on the screen. Not a single one of these names is suitable for daily use on the island. After three cards of names, a final note comes up reading, DISTRIBUTED UNDER THE HAND OF LUCIUS QUAGMIRE. FOR THE DISTURBANCE OF MEANING.

The film ends and the projector goes dark.";


Check inserting something into the projector:
	if the noun is not the reel:
		say "The projector can only really show reels of film." instead;
	if the projector-switch is switched on:
		try switching off the projector-switch;

Sanity-check putting the reel on the projector:
	try inserting the reel into the projector instead.

Understand "thread [reel] on/onto [the projector]" as inserting it into.
Understand "mount [reel] on/onto [the projector]" as inserting it into.

Understand "show [reel] on [the projector]" as showing it on. Showing it on is an action applying to one carried thing and one thing.

Check showing something which is not the reel on the projector:
	say "[The noun] [are] not a reel of film." instead.

Check showing the reel on something which is not the projector:
	say "[We] really need a film projector for that." instead.

Check showing something which is not the reel on something which is not the projector:
	say "I could understand if you were trying to show film on a projector, but that suggestion doesn't make much sense to me." instead.

Check showing the reel on the projector when the reel is not in the projector:
	try inserting the reel into the projector;
	if the reel is not in the projector:
		stop the action.

Check showing the reel on the projector when the projector-switch is not switched on:
	try switching on the projector-switch;
	if the projector-switch is not switched on:
		stop the action.

Test projection with "tutorial off / put reel on projector / turn on projector / take reel / mount reel / take reel / thread reel / take reel / show reel / show reel on projector / s / z / z / n" holding the reel in the Projection Booth.

Section 2 - Staircase


The Monumental Staircase is east of Park Center and north of Heritage Corner [and south of Outdoor Cafe]. The description is "Once, the [central hillock] of the city was a fortified enclave, protected from the harbor and the peasant town by great walls. Now, however, the walls are mostly gone, except for a little spur that runs north from here. The walkways and tower are open to the public.

Meanwhile a staircase as wide as a street [if the former direction is west]ascends into this town square, with the fountain playing at the cen[ter][otherwise]descends east from the town square toward the harbor[end if]."

Sanity-check going southeast from the Monumental Staircase:
	try going east instead.

Check waving the letter-remover at staircase-close-view when the current setting of the letter-remover is "i":
	say "The device buzzes, puzzled. Sadly it lacks the verve to understand a 'monumental starcase' as a poetic reference to the universe as a whole." instead.

Rule for distantly describing the Monumental Staircase:
	say "Off in that direction is the monumental staircase [if the location is High Street]that leads [up] to the town square, and [we] can just make out the tops of the heads of people standing near it[otherwise]that leads down towards the marina area of town[end if]."

After going to the Monumental Staircase from High Street:
	let N be the number of entries in the described motion of the player;
	if N is greater than 1:
		say "[path-walked so far]";
	otherwise:
		clear path-walked for player;
	if path description count is greater than 0:
		say "From there [we] have";
	otherwise:
		say "[one of][We] have[or]It's[at random]";
	increase path description count by 1;
	say " [one of]an invigorating[or]a healthy[or]a tiring[or]another wearying[or]yet another exhausting[stopping] climb up[unless N is greater than 1] the Monumental Staircase[end if], with the view of the sea getting better and better as [we] go[one of] (but of course looking requires stopping to gaze back over our shoulder)[or][stopping].[paragraph break]";
	continue the action.

The staircase-close-view is scenery in Monumental Staircase. The printed name is "monumental staircase". Understand "monumental" or "staircase" as staircase-close-view. The description of staircase-close-view is "[We] are standing on one of the upper steps right now, but the staircase descends (if shallowly) for another story or more towards high street." Instead of climbing the staircase-close-view, try going east.

Instead of going down in Monumental Staircase, try going east.

A poster is fixed in place in Monumental Staircase. The initial appearance is "An enormous blue and orange warning [poster] covers the wall alongside the staircase." The description is "'WARNING: Have you seen these dangerous individuals? If so, avoid contact and report all interactions to the Bureau of Orthography.' Below, there's a picture of several people. One of them is you, before your face got shuffled with mine.[one of] It's funny that when we met, you mentioned you were a user of illegally modified language-tools, but you didn't emphas[ize] the grand larceny side so much.

Not to worry. I won't turn you in. I can hardly afford to, can I?[or][stopping]". Understand "blue" or "orange" or "enormous" or "huge" or "warning" as the poster.

A dangerous destruction rule for the poster:
	now the poster is not fixed in place;
	now the initial appearance of the poster is "The blue and orange warning [poster] is rolled up on the ground nearby."

Instead of taking or attacking the poster when the poster is in Monumental Staircase:
	if the poser is seen:
		make no decision;
	say "Defacing official property is illegal [--] like many other things [we][']ve done recently, I suppose [--] but more than usually likely to attract attention."



Fair is southwest of Monumental Staircase. [Postcard Stalls is northwest of Monumental Staircase.]

The central hillock is scenery in Monumental Staircase. The description is "A square park stretches east, with official buildings beyond, occupying what was once the fortified heart of town.

A little of the original fortification does exist immediately north and curving around to the northwest, but it is in very bad shape here, and the top of the walls cannot be walked on at this point." Understand "city" or "fortified" or "walls" or "great" or "enclave" as the hillock.

The harbor-view is a distant backdrop. The printed name is "harbor". It is in Old Hexagonal Turret, Old City Walls, Crumbling Wall Face, Outdoor Cafe, and Monumental Staircase. It screens east and northeast. Understand "port" or "harbor" or "docks" or "dock" as harbor-view. The description is "A harbor swarming with small and medium-sized tourist boats; most of the major shipping comes in via another route." The introduction is "That is where [we] [are] trying to get to [--] or rather, get through."

The fish-market-view is a distant backdrop. The printed name is "fish market". It is in Old Hexagonal Turret, Old City Walls, Crumbling Wall Face, Outdoor Cafe, and Monumental Staircase. Understand "market" or "fish market" as the fish-market-view. The description is "From this angle and distance, all you can see is the open space and a few awnings. It's not the best time of day for this kind of thing anyway."

Instead of going down in the Staircase, try going east. Instead of going up in the Staircase, try going west.

The Open-Air is a region. The Fair, Church Forecourt, Midway, Heritage Corner, [Outdoor Cafe, ] Monumental Staircase, Park Center[, Postcard Stalls, and Food Corner] are in the Open-Air.

Section 3 - The Hostel

The Hostel is east of Heritage Corner. It is indoors. The description is "I take it this is where you stayed from the time you got to town until our operation. I would have expected that someone with your credentials would have been able to afford something better: The Fleur d'Or, maybe? But maybe you thought this was lower-profile. At least it's clean and doesn't smell funny."

Instead of exiting in the Hostel, try going west.

Rule for listing exits when the location is the Hostel:
	if looking, say "There's a [h-staircase] that leads up to the dormitory rooms.";
	otherwise say "[We] could either climb the [h-staircase] up to the dormitory rooms or go back to the park, [west]."

The h-staircase is an up-staircase. The h-staircase is in the Hostel. The printed name is "spiral staircase". Understand "spiral" or "staircase" as the h-staircase. It fronts up. The description is "To save space, it winds around a pole twice before reaching the floor above. This is not kind to people with luggage, but people with luggage are supposed to stay in real hotels."

Instead of facing up in the hostel:
	say "The ceiling is a little cracked but in no way fascinating."

The attendant's desk is a desk in the Hostel. The description is "Formica with a fake wood grain."

The attendant is a woman in the Hostel. The printed name is "desk attendant". Understand "desk attendant" as the attendant. The initial appearance is "[The attendant] [if the current mood of the attendant is distrustful]watches us suspiciously[otherwise]is sort of eying us[end if]." The description of the attendant is "She's dressed in a kind of casual-hippy way: nose ring, poofy [blouse] that doesn't fit quite right."

The introduction of the attendant is "She doesn't recogn[ize] you [--] us [--] but that's a good thing, I think."

Definition: a thing is attendant-related:
	if it is the attendant, yes;
	if it is enclosed by the attendant, yes;
	no.

Instead of looking at an attendant-related thing through an authentication scope:
	if the noun is the louse:
		do nothing instead;
	say "[The second noun] pings happily as [we] sight [the noun] with the crosshairs. [one of]'Do you mind?' [if the noun is the attendant]she[otherwise]the attendant[end if] asks. 'That's kind of rude.'[or]She sighs pointedly.[or]She mutters about people who can't take hints.[or]She ignores us stoically.[stopping]".

Guidebook is a book in the Hostel. The printed name is "Guidebook to Anglophone Atlantis". Understand "guidebook to atlantis" or "guide" or "book" or "guidebook to anglophone atlantis" as the guidebook. The initial appearance is "Discarded in one corner is [a guidebook]." The description is "A much-thumbed and several years out-of-date guidebook to this immediate area. The cover is tomato-red but the pages are crinkly and beige: it appears that someone has spilled coffee on it.

There's too much here to take in in a quick read, but we could look up specific topics if we wanted to read more." The contents of the guidebook is the Table of Local Attractions.

After reading a command:
	while the player's command includes "the":
		cut the matched text.

Table of Local Attractions
topic	reply
"toilets" or "toilet" or "restroom" or "convenience" or "public convenience"	"The island is not overprovided with public toilets, but there is a building near the bus station."
"typoland fun fair" or "fun fair" or "typoland" or "fun"	"Two full pages are devoted to Typoland Fun Fair, describing such delights as the exclamation point mascot character and the competitive kerning events."
"anglophone" or "atlantis" or "atlantean"	"The entire book concerns the island, so we'll have to be more specific about places and institutions."
"atlantida"	"Atlantida is listed here as the 'guiding spirit' of the island and its people. Representations of this abstraction can be found in posters and advertisements, and in the form of a great statue in the roundabout off Deep Street."
"aquarium" or "bookstore" or "aquarium bookstore"	"The entry describes the Aquarium Bookstore as a source of used and off-beat new books, especially those pertaining to 'alternate visions of Atlantis'. The phrase 'treasure trove' also appears, though in a context that makes clear this is code for 'fire hazard'."
"bureau/rotunda" or "bureau of orthography" or "orthography"	"The entry is long and greasily flattering: resplendent blue dome, magnificent interior, warm and hospitable employees, world-renowned historical research department, etc., etc., etc."
"Serial Comma Day" or "holiday"	"Commemorating the 1935 standard[ization] of a whole range of punctuation conventions, Serial Comma Day is one of three major patriotic holidays on Anglophone Atlantis. (See also SHAPLY DAY, SECESSION DAY.)"
"Shaply Day"	"Named in hon[our] of pioneering suffragette Phyllida Shaply, Shaply Day commemorates the 1877 decision to allow all citizens of Anglophone Atlantis to vote in referenda (the direct-democracy form for deciding contentious issues). This right was extended regardless of race, gender, or creed and is a source of considerable pride to Atlanteans."
"Secession Day" or "secession"	"The secession of Atlantis from British governance in 1823 culminated in the reduction of the attacking British fleet on April 19. The holiday celebrates this occasion, which is considered the beginning of Atlantean self-rule."
"cannon" or "depluralizing" or "depluralizing cannon" or "hexagonal" or "turret" or "depluralising" or "depluralising cannon"	"The Guidebook explains that Atlantis['] harb[our]s were traditionally defended by the deplural[izing] cannon, using techniques discovered by Clarence Arbot in 1779. Turrets along the old city walls provided elevated positions for these cannons, allowing them considerable range. See also SECESSION, CLARENCE ARBOT."
"sigil street" or "sigil"	"The entry on Sigil Street proclaims it an excellent place for those seeking to commission their own fonts or indulge in other typographical expenses."
"ampersand bend" or "ampersand/bend"	"Ampersand Bend is notable to the guidebook chiefly for the presence of a fine museum. A little less fine now that we've been past, perhaps."
"long street" or "long"	"Long Street is recorded as a go-to spot for high-end shopping and restaurant experiences."
"customs house" or "customs/house"	"The book offers advice that verges on churlish about how important it is not to commit any type of customs violation."
"clarence" or "arbot" or "clarence Arbot"	"A little copperplate engraving of a man with heavy-lidded eyes accompanies the sidebar biography of Clarence Arbot: b. 1732, proud parent of some 19 children; tireless researcher who in later years rarely left his laboratory 'except to go to bed'; in 1779, the inventor of generic deplural[ization], allowing multiples of almost anything to be reduced to just one. What his wives thought of his research is not recorded. See also DEPLURAL[IZING] CANNON."
"james/elias/milford/higgate" or "milford higgate" or "james elias" or "q-insertion"	"Milford Higgate and James Elias are commonly credited with the discovery of Q-insertion: the letter Q was the first that anyone was able to add to a word. Other forms of letter insertion had to be discovered separately. The Guidebook parrots the standard laudatory text concerning their discovery."
"anne" or "landis" or "rosehip"	"Anne Landis Rosehip is a local artist in glass and etched metal working out of a studio on the south side of Old City. She's some sort of distant cousin to my father."
"Babel" or "cafe" or "café" or "babel cafe/café"	"A popular multiethnic eatery in the university district, best known for having been the meeting place of Milford Higgate and James Elias."
"DCL" or "dental" or "consonants" or "limited" or "dental consonants limited" or "dental consonants"	"Dental Consonants Limited is the largest and most successful linguistic engineering firm on the island, directly employing 15,000 people [--] 8% of the citizens of Anglophone Atlantis or 18% of the workforce. Thanks to its overwhelming significance to the local economy, DCL enjoys significant privileges in terms of support for its espionage policies. DCL builds a wide variety of machines for linguistic efficacy, but its most public[ize]d efforts are in the area of letter-insertion. The company was originally formed to work on T, D, and N-insertion."
"airport/airplane/airline/plane"	"There are no airports on the island that support commercial flights, though there is a landing strip for corporate jets coming in to the DCL campus."
"language/text/linguistics" or "linguistic efficacy"	"The Guidebook points out rather primly that only English is spoken on the island, due to the island's early discovery of linguistic efficacy. Except in special contexts such as sanctioned language classes, attempts to make oneself understood in other tongues will lead to shunning and possibly even jail time."
"history/past"	"The Guidebook gives a thumbnail description, and an extremely biased one, of how linguistic efficacy was discovered and put to use on the island, and its subsequent rise as an independent power when many other states were being absorbed into the empires of England, Spain, France, the Netherlands, etc. This is a bit rich considering that before achieving this independence Atlantis was in fact successively a Spanish, Dutch, and English territory; but local publishers tend to gloss that point a bit. See also MUSEUM."
"lodging/lodgings"	"The guidebook describes two options in the center of town: the hostel, suitable for people on a budget, and the much more expensive Fleur D'Or hotel."
"fleur d'or" or "fleur" or "hotel/hotels" or "fleur d'or hotel"	"The Fleur D'Or is listed as the town's only four-star hotel. (There are no five-star hotels on this island. It is not that kind of place.) As the Fleur d'Or principally attracts those interested in business or research to do with linguistic efficacy, it also maintains a bar with the only publicly-licensed homonym paddle. Visitors to the Fleur d'Or Drinks Club can enjoy linguistically-generated gimlets, rusty nails, and more."
"museum/exhibit/museums/exhibits"	"A museum of linguistic instruments open to the public is to be found on the grounds of the Fleur d'Or hotel."
"fountain" or "town square/park" or "park"	"The fountain is listed as one of the attractions of the old town park: the design and execution of the sculpture credited to one M. Antoinne, and was apparently his final work before he faced a firing squad for his use of an irregular surname. (This was during one of the more blood-soaked episodes of standard[ization], evidently.)"
"cinema/theater/theatre/movie/movies" or "movie theater/theatre"	"The Guidebook lists the cinema at the north end of the town park as the best place to see films 'correctly and legally dubbed'."
"hostel" or "backpacker"	"Mysteriously, the entry for the hostel itself, which ought to contain ratings of its cleanliness, safety, and reliability, has been obliterated with a black marker."
"[transit]" or "station" or "bus station"	"The book is forthright about the absence of public transportation, and recommends that visitors bent on vehicular travel should bring their own cars, since none are available locally for rent. A bus station with long-distance service cross-island to the town of Maiana can be found near Monument Green, though routes are not always served on holidays."
"fair/fairground/fairs/fairgrounds" or "market" or "farmer's market"	"The guidebook is lyrical about the phenomenal produce to be enjoyed at the farmer's market held in Hesychius Street every Saturday and Wednesday and also on special days of observation."
"fish market"	"The fish market, the guidebook explains, may be found at the northeastern part of town near the docks, and holds most of its sales in the early morning."
"dock/docks/boat/boats/ferry/ferries"	"The guidebook gives us to understand that the docks, found northeast of the central town, are a pleasant place to commission short voyages of exploration and to see the island from a distance. It does, however, warn against spending too much time in the adjacent taverns, which have an unsavory reputation."
"tavern/taverns" or "counterfeit" or "monkey" or "counterfeit monkey"	"The Counterfeit Monkey is a tavern of unsavory reputation near to the docks, said to be the locale of more fistfights and disturbances of the peace than the rest of the city put together. The tavern is named in hon[our] of a famous linguistic con job and was a regular site for contraband creation and smuggling. In 1929, the Bureau first developed tools and procedures for identifying linguistic fakes, the Monkey was the target of a law enforcement raid; but a lively and committed criminal community soon put the Monkey in business again with new strategies."
"all-purpose" or "all purpose"	"The All-Purpose, the guidebook explains, is a general civil servant attached to the Bureau of Orthography, with wide-ranging powers to repair, correct, and heal using a variety of linguistic tools."
"university/college/education"	"The guidebook praises the many excellent departments and exceptional research work performed at the university. This is all true, naturally."
"new church/cathedral" or "church/cathedral"	"The guidebook devotes two and a half pages to the splendors of the New Church, located on the western edge of the town square. It particularly admires the clean lines of the architecture, the solidly constructed pews, and the austere decoration; in fact, the more you read, the more the guide seems to be rhapsod[izing] about what the builders left [i]out[/i], instead of what they put in. The guide also recommends a visit to the church gift shop, which apparently supports assorted worthy causes, such as, for instance, buying a new roof for the structure and paying a custodial staff."
"food/eating/dining/restaurant/restaurants/eateries/cafe/cafes/café/bistro/cafés/eatery/lunch/dinner/breakfast"	"The guidebook lists several places to eat around town: the outdoor café near the docks; a Food Corner sometimes found in the town square; the restaurant attached to the Fleur D'Or hotel."
"lucius" or "quagmire" or "lucius quagmire" or "disturbance of meaning"	"A brief and plainly expurgated entry indicates that Lucius Quagmire was a film-maker in the early part of the 20th century who founded the Disturbance of Meaning group with the intention to  undermine the Anglophone hegemony. He was convicted of treason."


Every turn when the attendant carries a louse:
	say "The attendant screams, and performs some kind of strange dance, first brushing at her skin and then stomping at something on the ground. (So much for the louse, I think.)

She then tears out of the room, leaving the room unattended. Unfortunately, places like this don't keep anything of value out front anyway, so your natural gift for larceny hasn't much scope here.";
	move the louse to the repository;
	now the attendant is nowhere;
	if the attendant is the current interlocutor:
		reset the interlocutor.

The attendant wears a nose-ring and a blouse. The description of the blouse is "White cotton with little ribbons on it. I hate that kind of frilly nonsense." The description of the nose-ring is "It's silver and reasonably discreet." Understand "nose" or "nose ring" as the nose-ring. Understand "ring" as the nose-ring when the ring is marked invisible.

The Dormitory Room is above the Hostel. It is indoors. Understand "dorm" as the Dormitory Room. The description is "Painted off-white, with [hard wood floors] under many layers of protective gloss coating: there are no surfaces in this room that would take a stain. Four [random dorm bed]s are lined up against the wall."

A dorm bed is usually scenery.

Four dorm beds are in the dormitory room. Understand "beds" as a dorm bed. The description of a dorm bed is "At this time of day, since everyone is checked out, the beds are all stripped down to bare mattress. Linens may be rented at the front desk [--] but [we][']re not staying here tonight, so there's no need to experience the thinning sheets and the pilled [if the player wears the Britishizing goggles]woollen[otherwise]woolen[end if] blankets. Your memory is enough for both of us."


A backpacking girl is an alert tourist woman in the dormitory room. She exhibits caution.
	The initial appearance is "[one of]A girl of about 19 [set prior to backpacking girl][if the girl is in the location]is standing in the middle of the room, looking around as though she can't quite believe where she landed or what she's doing here[otherwise]seems to be inclined to hang out here for the duration[end if][or][The backpacking girl] is still hanging out here[stopping]."
	The description is "She is just the sort of tourist who most annoys the locals, but actually I find her type a little endearing: she may not be very sophisticated yet, but she [i]wants[/i] to expand her horizons, and that's more than you can say for most of the friends she probably left back at home.".
	The backpacking girl wears a pink t-shirt. The description of the pink t-shirt is "It is somewhat too tight and bears the word JUICY in rhinestones across the bust." Understand "shirt" as the pink t-shirt.
	She carries a heavy pack. The heavy pack is a closed openable container. The description of the heavy pack is "The flag of Canada is [canada-girl][if the player knows fake-canada]mendaciously [end if]sewn on the back." Understand "full" or "massive" or "massively" or "backpack" or "her backpack" or "her pack" or "flag" or "of Canada" as the heavy pack.
	The flexible appearance of the heavy pack is "A massively full pack leans against one of the beds."
	Understand "tourist" as the backpacking girl.

Check waving the letter-remover at pink t-shirt when the current setting of the letter-remover is "r":
	say "That would be intriguingly disgusting, if it weren't for the fact that T-SHIT doesn't describe anything anyone with a functional colon has ever heard of." instead.

Test girl-description with "look" in the Dormitory Room.

Instead of opening the heavy pack in the presence of the backpacking girl:
	say "Overtly searching her possessions while she is here seems like a ticket to trouble."

The heavy pack contains an assortment of very short shorts, a broomstick skirt, flip-flops, bikini bottoms, various t-shirts, an anorak, a fat guidebook to Europe, a cheap camera, and a box of tampons.

Instead of taking the heavy pack:
	say "The girl may be a bit foolish, but she doesn't deserve to be robbed of all her worldly goods on the first day of her trip."

The description of the bikini bottoms is "The tops are not in evidence, at least as far as casual inspection reveals."

The description of the various t-shirts is "There's not a one without a logo of some kind."

Check waving the letter-remover at various t-shirts when the current setting of the letter-remover is "r":
	say "That would be intriguingly disgusting, if it weren't for the fact that T-SHIT doesn't describe anything anyone with a functional colon has ever heard of." instead.

The description of the very short shorts is "It's a good thing the weather here is really as warm as popularly imagined."

The description of the anorak is "It might be meant to counter the effect of all the shorts."

The description of the broomstick skirt is "It is the sort of skirt made of thin fabric that twists up into a tight tube, and is supposed to be interestingly crinkly when worn."

The description of the flip-flops is "The sole of each flip-flop is decorated with the image of Snoopy."

The description of the box of tampons is "Let's not. This is awkward enough already."

The description of the fat guidebook to Europe is "The spine is cracked at many points and the pages folded over for future reference."

The description of the cheap camera is "It is a flimsy device in rose-pink, with a very small lens."

Instead of taking something which is in the heavy pack:
	say "None of these are any use just now."

Chiding-attendant is a scene. Chiding-attendant begins when the dormitory room is visited. Chiding-attendant ends in results when the location of the player is the dormitory room and the location of the backpacking girl is the dormitory room and the backpacking girl recollects have-you-checked and the current quip is not have-you-checked and the current quip is not agree about the attendant and the backpacking girl is finished talking and the attendant is in the Hostel.

Chiding-attendant ends fruitlessly when the location of the backpacking girl is not the dormitory room.

[We want to be set up by the girl's prior complaint, but we don't want the attendant to seem to come in response to said complaint.]

When chiding-attendant ends in results:
	say "There's a heavy tread on the stairs, and the desk attendant puts her head in. 'Just so you two know, you're not actually supposed to be hanging out a lot up here during the day. It's for night use really. I'm not going to do anything today, but it's kind of against the rules, for future reference.'

She turns around and goes back down. The backpacking girl sticks her tongue out at the departing back.".

[Something I wanted to do was try to break down the sense that NPCs are attached to single locations and never move around or interact with one another. On the other hand, scenes where NPCs move freely or converse in groups are harder to engineer, so I wanted to be sparing with those. So there are assorted intermediate effects where we get a little 'fake' interaction, a one-turn-only moment where one NPC addresses another or a character moves around.]

Report scoffing when chiding-attendant ended in results and the time since chiding-attendant ended is less than 2 minutes and the current interlocutor is the backpacking girl:
	say "We snort, and the girl grins at us. 'I know, she is unreal!'" instead.

Report laughing when chiding-attendant ended in results and the time since chiding-attendant ended is less than 2 minutes and the current interlocutor is the backpacking girl:
	say "We laugh, and the girl joins in. 'I know, she is unreal!'" instead.

Report frowning when chiding-attendant ended in results and the time since chiding-attendant ended is less than 2 minutes and the current interlocutor is the backpacking girl:
	say "We frown.

'Oh, whatever,' says the girl. 'She deserves it.'" instead.

An accessibility rule when the touch-goal is the lock:
	if the backpacking girl is marked invisible:
		make no decision;
	otherwise:
		say "[The backpacking girl] is watching our every move with unconcealed curiosity, which makes me a little hesitant to do anything with the locker[one of][or]. Maybe if we freaked her out somehow she would go away[or]. I think our best bet is to show her something that really weirds her out[stopping]." instead.

After writing a paragraph about a dorm bed:
	now every dorm bed in the location is mentioned.

Some hard wood floors are scenery in the Dormitory room. Understand "floor" or "hardwood" or "protective" or "gloss" or "coating" as the hard wood floors. The description is "The floors are designed to be scrubbed clean every single day, leaving no trace of what might have come or gone."

Instead of putting something on the hard wood floors, try dropping the noun.

The locker is a fixed in place closed openable container in the Dormitory Room. The lock is part of the locker. The initial appearance of the locker is "The [locker] you identify as your own sits near one of the beds[if the locker is open], door standing open[otherwise if the lock is part of the locker], still locked with its dial [lock-name][otherwise], closed but not locked[end if]. ".

A ranking rule for the locker:
	increase description-rank of the locker by 100.

The description of the locker is "A standard metal [locker] for travelers to leave their valuable possessions in when they go out [--] or while they sleep, since one's bunkmates are not always to be trusted. It is of the kind that requires the traveler to bring his own lock[if the lock is part of the locker], and in fact someone (such as yourself) has put a lock on this one[otherwise], but it is currently bare[end if]."

After opening the locker:
	record "opening the locker" as achieved;
	complete "Retrieve your remaining possessions from locker at hostel";
	say "Now that the lock has been removed, the locker swings easily open[if the locker is non-empty], revealing [a list of things *in the locker][end if]." instead.

The lock can be lockable. The lock can be locked. The lock can be openable. The lock can be open. The lock is openable, lockable and locked. Understand "dial" as the lock.

Instead of turning the lock:
	say "The dial turns smoothly [--] much too smoothly. There are no clicks, no tiny ticks of inward mechanisms working. By the feel of it, there might be no real locking device here at all."

Understand the command "spin" as "turn".

The description of the lock is "[one of]It's curious, now you look at it: it's a combination lock with a dial face, but no one has bothered putting any numerals onto the dial.[or]Still no numbers on the dial. My mother had a wristwatch like that once. Always a nuisance.[or]I once again contemplate the absence of traditional combination markings on the lock. It must not be meant to be unlocked in the usual way.[or]It's your lock: you brought it with you and put it on the locker. So you must have had some way of opening it again, and not something that would depend on having a clear memory after the operation, either. I don't suppose you remember at all?[stopping]".

To say lock-name:
	now the lock is seen;
	say "[printed name of the lock]"

To say key-refusal for (locked-thing - the lock):
	say "[lock description][paragraph break]".

Instead of setting the lock to something:
	say "No numbers are written on the dial of the lock."

Locking something with something is key-related behavior. Unlocking something with something is key-related behavior. Unlocking keylessly something is key-related behavior. Locking keylessly something is key-related behavior. Opening something is key-related behavior. Closing something is key-related behavior.

Instead of key-related behavior when the current action involves the locker and the lock is part of the locker:
	if the noun is the locker, now the noun is the lock;
	if the second noun is the locker, now the second noun is the lock;
	try the current action.

Instead of attacking the locker with something:
	say "It is built to withstand attack, as witness the several dents in the frame that nonetheless failed to pop the door out."

Instead of attacking or pulling or pushing the lock:
	say "It swings jauntily in place, but does not break."


The locker contains a roll of bills and a letter. The printed name of the roll of bills is "roll". The description of the roll of bills is "[one of]Now that is more like it: you've got us a tidy little stash of euros here.[or]Some day you will have to tell me a little bit about the tricks of the trade [--] how you fenced stuff, you know? Or perhaps you won't tell me. Maybe it would be better not. At any rate, this money is useful, so I won't ask too many questions.[or]It's our cash reserve [--] well, your cash reserve, really, but for now it is serving both of us.[stopping]". Understand "euros" or "euro" or "cash" or "bill" or "money" as the bills.

The bills are essential.


[Andra's backstory was based in the idea that she was an extraordinarily good speller, and I imagined a whole history for her, in which she had been a homeschooled spelling champion who ran away from home when she was disappointed by her parents' reaction to her coming in second place nationally. Slango had seen her on television and so when he recognized her on a street, he picked her up and inducted her into his smuggling gang.

There wasn't room to tell that whole story in Counterfeit Monkey, and eventually I spun that story off as Bee, a Varytale novella which takes place in more or less the real world.

Nonetheless, Andra retains some pointers to that history.]

The description of the letter is "It's a letter from your brother, printed off anonymously from an untraceable email account that you accessed in town. Nothing that could be followed back to Slango and the yacht.

[i]Sis,

I'm keeping your wire transfer funds. I want to try for Stanford.

I'd say thank you except that, one, you didn't get it legally (I saw this documentary about teen prostitutes [--] if that's where it came from then EW) and, two, honestly? You owe for what you put us through after you ran away. Mom and Dad were humiliated that you turned into the prodigal daughter. Your face got on milk cartons. Pastor Hughes GAVE A SERMON ABOUT IT.

Mom spent all that time coaching you through spelling practice, you know she doesn't enjoy getting up at 4 AM, right? You totally threw that in their faces.

If you want to come home sometime, fine, but don't come to just see me. If you want to see me you have to see Mom and Dad too.

Nate.[/i]".



Some secret-plans are in the locker. They are privately-named.
	The printed name is "plans".
	Understand "plan" or "plans" as the secret-plans.
	The description of the secret-plans is "The plans are rolled up and stuck shut with a label that reads 'PROPERTY OF DENTAL CONSONANTS LIMITED [--] UNAUTHOR[IZE]D USE ILLEGAL'. They're just a set of prints from the main computer design, of course, but still extremely informative: to the right engineer, they might reveal the secret of T-insertion for replication by other companies. These are what you and Brock were originally contracted to lift from the island, at a fee in the multiple millions.". The secret-plans are essential, illegal, floppy, and long. Understand "tube" as the secret-plans when the tube is marked invisible. Understand "label" as the secret-plans.

Understand "count [bills]" as a mistake ("[We] thumb quickly through the bills [--] smaller currency on the outside, larger denominations on the inside. I wouldn't have thought I could add that quickly and accurately, but you, evidently, have more practice. It works out to just over fifteen thousand euros.").



Section 4 - The New Church

The New Church is west of the Church Forecourt. It is indoors and proper-named. The description is "Not a Gothic cathedral from the era when the church was wealthy and secure, but a gallant Neo-classical response to the turmoil of the 18th century, when the power of language was just beginning to be evident, and instead of an immutable cosmology, we suddenly had observer-consensus reality. [one of]What is the need or use of God, if it turns out that He gave all the power of creation to Adam when He let him name the animals?[or][stopping]".

The inscription is fixed in place in the New Church. It is distant. The initial appearance is "An [inscription] above [the altar], picked out in gold paint, reads Ἐν ἀρχῇ ἦν ὁ λόγος." Understand "paint" or "gold" as the inscription.
	The description is "It means, In the Beginning was the Word.

A patchy attempt to make theology align with scientific and linguistic reality, but it still has power. And despite the Bureau's depredations of foreign language writings everywhere else, they have never quite had the nerve to deface this."

Some columns are scenery in the New Church. The description of the columns is "The column shafts are unornamented, only tapering a little at the top; the capitals a restrained Ionic." Understand "pillar" or "pillars" or "column" as the columns.

Some clear glass windows are scenery in the New Church. The description of the clear glass windows is "They admit a great deal of light, as though to promise that there is no lie and no chicanery here." Understand "window" as the clear glass windows.

The introduction of New Church is "My mother volunteers here: I think I should warn you. She is not quite religious, but believes in the cultural value of the building, and in having some sort of place where people can go for spiritual respite. She also, I suspect, likes having those great gold letters, defiantly foreign and arcane in the heart of the old city."

Some pews are a scenery supporter in the New Church. The description of the pews is "Simply built out of dark solid wood, to contrast with the white walls and columns, and the clear glass windows." Understand "pew" or "seat" or "seats" or "bench" or "benches" as the pews.


The altar is fixed in place in the New Church. It is a supporter.

Definition:
	a thing is liturgical:
		if it is the cross, yes;
		if it is the cassock, yes;
		if it is the tippet, yes.

Instead of putting something on the altar:
	if the player wears a liturgical thing:
		if the noun is the cross:
			record "Reverend Plaice award for placing the cross on the altar while liturgically dressed" as an achievement;
			continue the action;
		else:
			say "While I am not exactly a believer in the dogmas associated with this place, it seems crass to go putting random items on the altar.";
	else:
		say "[We] [are] not vested appropriately for dressing the altar; someone would be sure to notice."

The description of the altar is "It is simple and bare of cloth or flowers[if the cross is on the altar], though a cross is set in the appropriate place[end if]."

Instead of facing up in the New Church:
	say "The ceiling is handsomely solid but not decorated: no painted feet of the ascendant Christ dangling down between clouds, no medieval grotesques or floral bosses. "

Instead of going north in the New Church:
	say "The only thing in that direction is the little space behind the altar, and to enter that seems like needless trespassing."

Rule for listing exits when the location is New Church:
	if boldening is true:
		say "There are side exits both [b]east[/b] and [b]west[/b]; and a gift shop occupies the narthex at the [b]south[/b] end.";
	else:
		say "There are side exits both east and west; and a gift shop occupies the narthex at the south end."

Understand "pray" or "pray to [text]" as a mistake ("[prayer response]").

To say prayer response:
	say "I'm not much one for prayer myself. But you, evidently, are, and I find myself squirming[--]

(While your mind and heart are elsewhere, ordering your concerns and offering them up.)

[--]and now quiet. I don't know what, if anything, that may have accomplished, but I promise not to be rude if you need to do it again."

The gift-shop-exterior is a facade in New Church. It is scenery. It fronts south. The description is "[We] can't really see it from here; I just know that it is back there, from previous visits, though decently screened from the main body of the church."  Understand "shop" or "gift shop" or "narthex" as the gift-shop-exterior. The printed name is "gift shop".

The Cathedral Gift Shop is south of the New Church. Understand "narthex" as the cathedral gift shop. It is indoors. The description is "This area used to be a sort of antechamber where the priests and choir might gather for processions into the church, but it has now been done over for retail purposes. This is one of several schemes to make the New Church pay for its own upkeep: a problem is that people somehow feel everything associated with a church ought to be free, including lunchtime concerts, potluck suppers, and Thursday-night lecture series."

The gift-shop counter is a scenery supporter in the Cathedral Gift Shop. The description is "The usual arrangement for making purchases."

Some wire racks are scenery things in the Cathedral Gift Shop. The description is "They're designed to hold postcards or other similar small merchandise." Understand "rack" as racks.

Some postcards are on the wire racks. The description of the postcards is "You may be a tourist in these parts, but I, my curious friend, am not: so I find these pictures all rather foolish, and not at all representative of the town as it really is." The postcards are scenery. Understand "pictures" or "harbor" or "city walls" or "walls" or "fortifications" or "ancient fortifications" or "cards" or "harbour" or "postcard" or "picture" or "architecture" or "souvenirs" as the postcards.

A dangerous construction rule for the wire racks:
	now the postcards are on the wire racks.

A dangerous construction rule for the wire rack:
	now the postcards are on the wire rack.

Test rack with "x postcards / wave s-remover at racks / x postcards / open tub / gel rack / x postcards" holding the tub in the Gift Shop.

Instead of buying the postcards:
	say "And send them where? There is no one [we] wish were here."

Instead of turning the racks:
	say "[We] idly turn one of the racks, as though [we] were a tourist here. Familiar pictures swivel past, both of the church interior and of the town as a whole."

Instead of taking or buying the postcards,
	say "Buying souvenirs is not the current objective."

Instead of buying the paper-models:
	say "I am all thumbs and never get these things right."

Instead of buying the souvenir tea-towels:
	say "They're just too embarrassingly cute."

Instead of buying the shot glasses:
	say "The inscribed proverbs about the merits and demerits of the grape would be likely to put me off my drink."

Some tomes are a fixed in place thing in the Cathedral Gift Shop. The initial appearance is "A long line of dusty [tomes] are lined up on one of the shelves, marked 'free for taking'. None are missing." A component-tome is part of the tomes. The printed name of the component-tome is "tome". Understand "tome" or "book" as the component-tome.

The description of the tomes is "Looking at one gives a sense of all. [description of the tome]". The description of the component-tome is "[description of the tome]".

Instead of taking the tomes:
	say "The full set runs to thirty or forty volumes, each one three inches thick and printed on heavy paper. They're much too bulky to carry off."

Instead of taking the component-tome:
	say "[We] reach for one of the volumes, then stop, indecisive. They really do seem to be a set, and I can't bring myself to break it up."

Some paper-models, some souvenir tea-towels, and some shot glasses are scenery in the Cathedral Gift Shop. Understand "model" or "souvenirs" or "paper" or "models" as the paper-models. [Understand "window" or "windows" or "inscription" as the model when the model is the prior named object.] Understand "towel" or "souvenirs" or "towels" or "tea" as the tea-towels. Understand "glass" or "souvenirs" as the shot glasses.

The printed name of the paper-models is "paper models".

Instead of inserting something into shot glasses in the presence of the volunteer:
	say "The volunteer fixes us with such a steely stare that [we] stop immediately."

The description of the paper-models is "With four or five hours['] lab[our], and a quantity of white glue and toothpicks, you too could assemble your very own rendition of the church, complete with windows and a printed-on version of the inscription over the altar; in fact, the model is so cleverly made that it can be taken apart to allow a view in cross-section."

The introduction of the paper-models is "Despite all that, I think [we][']ll pass."

The description of the souvenir tea-towels is "Embroidered with gaudy logos."

The description of the shot glasses is "Printed with various Biblical verses related to drinking."

The gift shop volunteer is an alert man in Cathedral Gift Shop. The initial appearance is "An elderly man in a [knitted wool cap] presides over the gift shop." Understand "elderly" or "man" as the gift shop volunteer.

Rule for writing a topic sentence about the gift shop volunteer when the gift shop volunteer is not the current interlocutor:
	set the current interlocutor to the gift shop volunteer;
	say "The elderly man in charge of the gift shop nods at us as [we] come in.[run paragraph on]";
	now everything held by the gift shop volunteer is mentioned.

The description of the gift shop volunteer is "He has one of those withered-apple faces more frequent in old women, but there is no doubt from the shape of his nose and the slight stubble that he is in fact male."

The gift shop volunteer wears a knitted wool cap. The description of the knitted wool cap is "It is made of some kind of soft and fuzzy blue yarn." Understand "yarn" as the knitted wool cap.

The Church Garden is west of New Church. The description is "One might expect a graveyard, but burial inside the city walls has been forbidden for sanitation reasons since well before the New Church was built. Instead, there is a small meditation garden, which was once designed as an intricate knotwork of shrubs[if the thicket is not in the location]. Now the shrubs are gone[end if]."

Report facing in Church Garden:
	say "The garden is intentionally a space set apart, from which it is hard to see anything of the rest of the world." instead.

Instead of listening to the Church Garden: say "The sounds of the outside world are muted here. There is some traffic noise, it's true; it just doesn't seem terribly important from here."

Understand "meditate" as a mistake ("I'm not bringing you on a tandem ride through my psyche. Sorry.").



The thicket is a fixed in place thing in the Church Garden. The initial appearance is "The knotwork has since grown into [a thicket].".
	The description is "Densely-grown: the church hasn't been able to afford a real groundskeeper for some time."
	The scent-description is "dusty vegetation and maybe a little rosemary".
	Understand "knotwork" or "shrubs" or "bushes" or "herbaceous" or "rosemary" as the thicket.

Report waving the letter-remover at the thicket creating the ticket:
	say "The thicket abruptly shrivels and flattens itself, and in its place a ticket flutters to earth." instead.

Instead of looking under the thicket:
	say "Nothing is beneath."

Instead of taking the thicket:
	say "It grows much too densely to be pulled out of the ground."

Before putting gel on the ticket:
	if the player is not in Church Garden, say "It would probably cause inconvenience, not to mention drawing considerable attention, to remake the thicket anywhere but in the garden from which it came." instead;
	if the soil is not in Church Garden, say "There is no longer anywhere for the thicket to grow." instead;
	if the ticket is not in Church Garden
	begin;
		if the player does not carry the ticket, try taking the ticket;
		if the player does not carry the ticket, stop the action;
		try dropping the ticket;
		if ticket is not in Church Garden, stop the action;
	end if;

Counterfeit Old Town Celebration ends here.