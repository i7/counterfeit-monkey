Act III Among Scholars by Counterfeit Monkey begins here.

Use authorial modesty.


Book 3 - Act III Among Scholars

Part 1 - The James Bond Part of Town

Chapter 1 - Long Street

Section 1 - LS North

South of Roundabout is Long Street North.

Literal Restaurant is a facade in Long Street North. It fronts east. It is scenery. The description is "A framed menu announces the specials for tonight: Lamb with a Deplural[ize]d Apricot Reduction, Armagnac-Drunken Capon, and Lobster Tail Nestled in Bubbles of Flav[our]-Abstract."

Instead of looking toward Roundabout:
	say "That direction is just a chaos of traffic and bad signage."

Long Street North is a proper-named and southern road. Understand "long street n" as Long Street North. The description is "Long Street is lined on each side with a double-row of tall, an[ae]mic palm trees that bend towards one another many feet overhead. This corridor continues some considerable distance south."

Some anemic palm trees are a backdrop. They are in Long Street North and Long Street South. The description is "The only foliage comes in a clump high above. The effect is distorted and unnatural, and I say that having lived with them all my life. They are trees in the same sense that ostriches are birds." The printed name is "an[ae]mic palm trees". Understand "palms" or "anaemic" as the anemic palm trees.

South of Long Street North is Long Street South. Long Street South is a proper-named southern road. Understand "long street s" as Long Street South. The description is "Long Street is lined on each side with a double-row of tall, an[ae]mic palm trees that bend towards one another many feet overhead. [We] are now in the southern part of this long corridor, between the Canadian Embassy and Arbot Maps & Antiques."

The Canadian Embassy is a facade in Long Street South. It fronts east. It is scenery. The description is "The embassy is the largest foreign embassy here: Canadians do a lot of business with Atlantis, but the Québécois require special permission to enter, so there's a call for substantial clerical work. The building is a solid 1960s block in concrete with slit-shaped windows." Understand "concrete" or "windows" or "solid" or "block" or "slit-shaped" or "slit" or "window" or "slit shaped" or "slits" as the Canadian Embassy.

The shopping bag is a container in Long Street South. The initial appearance is "Someone has left a shopping bag at the roadside [--] maybe by accident when loading up a car, maybe because they mean to come back for it." The description is "The logo on the outside is from Landison's, a popular toy store on the island. It's probably closed today, so this would have been bought earlier [--] possibly even as a present for Serial Comma Day."

Check waving the letter-remover at the shopping bag when the current setting of the letter-remover is "s":
	say "The device buzzes, puzzled. Evidently there is not enough Atlantean interest in brewing to make 'hopping bag' a recogn[ize]d item in itself." instead.

A ball is a thing in the shopping bag. The description is "Made of blue and white rubber, and decorated all over with a pattern of random letters in different sportive fonts."

The jigsaw-puzzle is a privately-named thing in the shopping bag. The printed name is "jigsaw". Understand "jigsaw" or "puzzle" as the jigsaw-puzzle. The description is "The boxed puzzle displays an execution scene, with several pro-British traitors from the 1820s being lined up before the deplural[ization] cannon. It was thought a considerable punishment to be forced to share a body and consciousness with others."

Instead of opening the jigsaw-puzzle:
	say "The box is sealed shut for now, which is just as well. Opening it would destroy its jigsaw integrity."

Understand "solve [jigsaw-puzzle]" as a mistake ("Better to leave it in its box, I think.").

Section 2 - The Antiques Dealership

After going to Arbot Maps & Antiques:
	if Arbot Maps & Antiques is visited:
		make no decision;
	if the player encloses the appointment card:
		say "We show the appointment card, and are let in.";
		now Kate carries the appointment card;
		now where there seems Arbot is nowhere;
		now Arbot Maps & Antiques is visited;
		continue the action;
	otherwise:
		say "The woman watching over the store stops you. 'I'm sorry,' she says. 'We are only open to those who have made previous visiting arrangements.' And we're shooed back out.";
		move the player to Long Street South, without printing a room description.

Arbot Maps & Antiques is west of Long Street South. It is indoors, checkpoint and southern. Understand "shop" or "store" or "antique" as Arbot Maps & Antiques.

Out-direction of Arbot Maps & Antiques is east. [Long Street South]

Instead of smelling Arbot Antiques:
	say "The place smells of fresh coffee and old paper."

The maps collection is a thing in Arbot Maps & Antiques. Understand "large" or "collection" or "of" or "antique" or "under glass" or "street maps" or "maiana" or "navigation" or "distant places" or "charts" or "island" or "topography" as the maps collection. It is fixed in place. The printed name is "[if looking]collection[otherwise]maps collection[end if]". The initial appearance is "There is a large [maps collection] of vintage and antique maps under glass [--] the island of Atlantis as a whole, street maps of here and of Maiana, navigation maps of the harb[our], and then maps of more distant places as well."
	The description of the maps collection is "[We] pore over a map of [one of]the Old City when the walls were still intact, as reconstructed from archaeological surveys[or]forbidden dig zones in Atlantis[or]bus routes between here and Maiana ca. 1973[or]island topography as measured in 1910[or]1880 shipping lines between Atlantis, Gibraltar, and points east[at random]."

Instead of examining the maps collection when the Slangovia map is unseen:
	move the Slangovia map to the location;
	say "[We] study the maps. One in the collection stands out: a [Slangovia map], framed like all the others but of suspiciously recent vintage."

Sanity-check taking the maps collection:
	if the Slangovia map is seen:
		say "None of the other maps seems important." instead;
	otherwise:
		try examining the maps collection instead.

Sanity-check buying the maps collection from Kate:
	if the Slangovia map is seen:
		say "None of the other maps seems important." instead;
	otherwise:
		 try examining the maps collection instead.

Understand "map" as the maps collection when the location is Arbot Antiques and the slangovia map is not enclosed by location.

The Slangovia map is a thing. The printed name is "map of Slangovia". Understand "of Slangovia" as the Slangovia map. The description is "It's a detailed street map pretending to correspond to some remote South African town called Slangovia. Cryptic icons dot the surface. There is a [fake-legend] in the lower right corner that appears to be a separate piece glued on."
	The fake-legend is part of Slangovia map. The printed name of the fake-legend is "legend". The description of the fake-legend is "This legend tells of Iphis and Ianthe: Iphis, a girl raised in disguise as a boy, falls in love with her playmate Ianthe. She prays to the goddess Isis, who takes pity and transforms Iphis into a man, able to marry Ianthe after all." Understand "legend" as the fake-legend.
	The introduction of the fake-legend is "It bears no obvious relation to the map of Slangovia."

Does the player mean subject-asking the fake-legend:
	it is very likely.

The mannequin is a supporter in Arbot Maps & Antiques. The description is "A head and torso only, and abstractly rendered. The vaguely masculine shape is covered in coarse white linen." Understand "head" and "torso" and "masculine" and "shape" and "coarse" and "white" and "linen" as the mannequin.

Rule for writing a topic sentence about the mannequin:
	if the mannequin is non-empty:
		say "A stylish [mannequin] near the front sports [a list of things *in the mannequin]. ";
	otherwise:
		say "The [mannequin] at the front of the shop is currently denuded of wares. "

Instead of putting something on the mannequin:
	say "The shop owners would presumably not welcome your refurbishing their displays."

The Britishizing goggles are on the mannequin. The indefinite article of the Britishizing goggles is "a pair of". Understand "pair" or "pair of" as the Britishizing goggles.
	The Britishizing goggles cover the face-area.

Kate is an alert woman in Arbot Maps & Antiques. The initial appearance is "Overseeing all this is a woman named [Kate]." The description is "Something about her clothes and bearing suggest that she's not simply here to run the cash register, but that she has some expertise. She has, however, spilled something on her shirt."

Kate wears a stained shirt. The description of the stained shirt is "It looks very handsome, save for the brown stain on the front. Coffee mishap, presumably."

Check waving the letter-remover at stained shirt when the current setting of the letter-remover is "r":
	say "That would be a grotesque thing to do to the poor woman." instead.

Rule for writing a topic sentence about Kate when the map-customer is in the location:
	say "Kate is keeping an eye both on us and on [the map-customer]. [run paragraph on]".

[And with no disrespect to Kate, but because we want her to be mentioned last:]
A ranking rule for Kate:
	decrease the description-rank of Kate by 30.

A ranking rule for the map-customer:
	decrease the description-rank of map-customer by 40.

The map-customer is a woman. The printed name of the map-customer is "customer". Understand "customer" or "tall" or "thin" or "man" or "woman" or "fellow" or "skeletal" or "young" or "old" or "grandmotherly" or "teenager" or "lady" or "gentleman" as the map-customer. The map-customer has some text called the idle.

To shuffle map-customer:
	choose a random row in the Table of Customers;
	now the printed name of the map-customer is the appearance entry;
	now the description of the map-customer is the description entry;
	now the idle of the map-customer is the idle entry.

A description-concealing rule when the stained shirt is marked for listing:
	now the stained shirt is not marked for listing.

Table of Customers
appearance	description	idle
"tall thin woman"	"She's a skeletal woman who has to stoop in order to see the maps in the cases. What she sees there doesn't seem to be cheering her much."	"[The map-customer] taps on the glass of one of the cases."
"woman"	"She's carrying shopping from a number of expensive shops on the avenue[one of], and now she stands in the middle of the store looking around as though she expects the ideal purchase to hop off a shelf at her[or][stopping]."	"[one of][The map-customer] asks Kate which map would be best for decorating a small 'but upscale' kitchen. Kate suggests a framed miniature of the Spice Islands[or][The map-customer] frowns at the selection[or][The map-customer] gets a tea-towel out of her bags and compares its col[our] to that of the maps[or][The map-customer] folds her arms in disgruntlement[or][The map-customer] asks Kate for another suggestion[or]Kate confers with [the map-customer][stopping]."
"young woman"	"If she's not a teenager, she's little more. She seems most intrigued by the antique letter tools."	"[one of][The map-customer] asks Kate a few questions about the mechanical workings of one of the pieces[or][The map-customer] wistfully refrains from touching anything[stopping]."
"grandmotherly lady"	"She's browsing slowly and thoughtfully, though without any apparent urgency to buy anything. Perhaps she sees the shop as a kind of museum."	"[The map-customer] mutters something to herself, with no apparent intention of being heard."


Section 3 - The Fleur d'Or

West of Long Street North is the Fleur d'Or Lobby. The description of Fleur d'Or Lobby is "[one of]The Fleur d'Or is a high-end hotel that serves businessmen and luxury tourists interested in the linguistic mechanisms of the island. As a result, it has all kinds of paid exemptions, including an exemption allowing it to operate under a foreign name.

[or][stopping][The spotlights] in the ceiling light the floor in distinct pools of Bureau blue, and a [room divider] etched with random letters separates the lobby from the drinks club to the [west]."
	Understand "hotel" as the Fleur d'Or Lobby.

Fleur d'Or front is a facade in Long Street North. It fronts west. The initial appearance is "On the west side of the street is the several-story front of the Fleur d'Or hotel." Understand "hotel" as the Fleur d'Or front.
	The description is "The Fleur d'Or used to have a very fussy, ornate façade done up with pilasters and statue niches and a cornice that looked like it had been piped on with cake icing.

The hotel has recently had a face lift, with the silly old ornamentation pried off, and smooth modern material laid down in its place. Blue tiles pick out the shapes where pilasters used to be, and panels of frosted glass have been fitted to cover the statue niches.

If you are my mother, you call this style Atlantean Postmodern. Less kindly, it is something from the sweaty dreams of an upscale swimming-pool installer."


Fleur d'Or lobby is indoors, proper-named and southern. The room divider is a scenery thing in Fleur d'Or Lobby. The printed name is "sheet of frosted glass". Understand "glass" or "sheet" or "sheet of" or "frosted" or "annotation" or "primordial" or "primeval" or "sea" as the room divider. The description is "The glass is a good three quarters of an inch thick, and looks very sturdy. The etched letters glow or fade out again depending on the changing light conditions in the lobby.

Annotation in the corner indicates that this is a commissioned artwork by Anne Landis Rosehip, entitled 'The Primeval Sea.'"

Out-direction of Fleur d'Or Lobby is east. [To Long Street North]

The spotlights are a scenery thing in the Fleur d'Or Lobby. Understand "spotlight" or "light" or "lights" or "lighting" or "changing light" or "pools" or "distinct pools" as the spotlights. The description is "The spotlights are more or less steady blue, just fluctuating a little in intensity to add to the sense of being underwater."

Rule for listing exits when looking in Fleur d'Or Lobby:
	do nothing instead.

A piano is a fixed in place instrument in the Fleur d'Or Lobby. The initial appearance is "[if the player is on the piano-bench]We're seated at a handsome piano in the corner[else]There is no one at the glossy [piano] in the corner[end if]." The description is "A glossy grand, probably worthy of better than bar music." Understand "keys" or "keyboard" as the piano.

The piano-bench is an enterable scenery supporter. It allows seated. [The piano-bench is part of the piano.] The piano-bench is in the Fleur d'Or Lobby. The printed name is "piano bench". Understand "bench" or "piano bench" as the piano-bench. The description of the piano-bench is "Lightly padded and made of the same wood as the piano itself."

Test bench-bug with "sit on bench / look / stand / play piano / look" in the Fleur d'Or Lobby.

Sanity-check sitting at the piano:
	try entering the piano-bench instead.

Check performing something on the piano when the player is not on the piano-bench:
	try entering the piano-bench;

Report entering the piano-bench:
	say "We take our seat at the piano." instead.

A description-concealing rule while entering the piano-bench:
	rapidly set all things not marked for listing.

Check performing the rap on the piano:
	say "Anything we might play in accompaniment would just conflict." instead.

Check performing the ballad on the piano:
	say "With a bit of effort, we manage to mimic the ballad's tune. People are staring at us kind of funny, though." instead.

Report performing the piece on the piano:
	say "[one of]It takes several awkward goes, but we manage at last to pick out the tune[or]The second time around, the tune comes a bit more naturally[or]With increasing confidence, we pick out the tune of 'The Grammatical Number...' etc., with a lot of vigor and verve at the part where the tempo doubles and doubles again[or]So as not to bore the patrons of the Fleur d'Or, we try out a new rendition, this time more [one of]jazzy[or]up-tempo[or]syncopated[or]lounge-style[or]contrapuntal[at random][stopping]." instead.

Report performing the piece on an instrument which is not the oboe:
	say "With much struggle, we manage to get the rough tune of 'The Grammatical Number…' etc. on [the second noun]; not that we'd recogn[ize] it if we didn't already know what it was supposed to be." instead.

Report performing something on an instrument which is not the oboe:
	say "We pick out [one of]some vaguely remembered commercial jingles from your childhood[or]a church hymn you heard a lot in your youth[or]my mother's fav[our]ite Atlantean folk tune[at random]." instead.

Check improvising the topic understood on the piano when the player is not on the piano-bench:
	try entering the piano-bench;

Report improvising a topic listed in the Table of Musical Styles on the piano:
	say "[description entry][line break]" instead.

Table of Musical Styles
topic	description
"classical/classics" or "classical music"	"We noodle around for a few minutes and eventually manage to pick out a tune that sounds vaguely like the opening of Beethoven's Ninth, but I don't have any significant classical pieces memorized and you don't seem to be helping much."
"jazz"	"I improv[ize] something long and meandering. It sounds okay. At least the other patrons don't seem too bothered by it."
"rock" or "rock music/song/songs" or "great balls of fire"	"What I picture in my head is us doing some kind of energetic Great Balls of Fire kind of performance. What happens in practice is a lot of ruckus and some quelling glances from the hotel staff."
"rap"	"Rap... doesn't really lend itself to solo piano performance."
"ballad"	"I don't have any ballads memorized."
"chopsticks"	"This must be the twelve hundredth performance of Chopsticks on this piano, because there is a general groan when [we] start. However, [we] carry on gamely for a couple of minutes."
"flight of the bumblebee"	"Our rendition starts off energetic and then becomes less and less accurate and more and more like a mad monkey attacking a keyboard."

Report improvising the topic understood on the piano:
	let title be "[the topic understood]";
	say "It's rocky going at first, but we eventually manage to play the essential tune of '[title in title case]'." instead.

Test piano with "tutorial off / sit at piano / get up / sit at piano / play piano / play piece / play the piece on the piano / g / get up / perform the piece on the piano / perform chopsticks / perform Beethoven's ninth / perform me / perform cats / play the piano" in Fleur d'Or Lobby.

The piece is on the piano-bench. The description is "It looks like a setting of 'The Grammatical Number of Our Enemy (Is Singular),' a popular music-hall piece of the 1890s that still gets trotted out now and then. There are rousing choruses where the audience can join in to represent the enemy sailors just prior to their encounter with the deplural[izing] cannon." Understand "music" or "grammatical number" or "chorus" or "choruses" or "music-hall" or "music hall" or "grammatical number of our enemy" as the piece.

Rule for writing a topic sentence about the piano:
	if the player is not on the piano-bench:
		say "There is no one at the glossy [piano] in the corner[if the piece is on the piano-bench], though [a piece] has been left on [the piano-bench][end if]. [run paragraph on]";
	else:
		say "We're seated at the glossy [piano] in the corner, trying to look like the hired entertainment or at the very least a hotel guest[if the piece is on the piano-bench]. [A piece] has been left on [the piano-bench] beside us, but we've sat in such a way as not to crush it[end if]. [run paragraph on]"

Section 4 - Drinks Club

Fleur d'Or Drinks Club is west of Fleur d'Or Lobby. It is indoors, checkpoint, proper-named and southern. The description is "The back wall is dramatically decorated with bottled liquors of all sorts, from gin to cachaça; there's a giant bottle of Campari, taller than your average three-year-old, with a red ribbon around its neck.

What makes this place technically a drinks club rather than a bar is its lic[ense] to serve letter-manufactured food and drink. [A toolkit] on the [dor-bar-top] contains [a list of things *in the toolkit], ready to be transformed into their respective cocktails."

Understand "bar" or "pub" as Fleur d'Or Drinks Club.

The liquor collection is scenery in the Fleur d'Or Drinks Club. Understand "gin" or "cachaca" or "cachaça" or "whiskey" or "whisky" or "bourbon" or "hendricks" or "vodka" or "tanqueray" or "scotch" or "glenfiddich" or "glenlivet" or "rum" or "tequila" or "campari" or "pastis" or "bombay" or "bombay sapphire" or "brandy" or "bottle" or "giant" or "bottle of" as the liquor collection. The description of liquor collection is "The liquor collection here is quite extensive, and generally of good quality."

The assorted glassware is scenery in the Fleur d'Or drinks Club. Understand "champagne" or "flute" or "flutes" or "martini" or "glass" or "shot" or "glasses" or "collins" or "old-fashioned" or "highball" or "sake" or "cups" or "cup" as the assorted glassware. The description is "The bar is stocked for every sort of drink in every imaginable shape. There are martini glasses, there are champagne flutes, there are old-fashioned glasses and highball glasses and Collins glasses. There are shot glasses and sake cups."

The dor-bar-top is scenery in the Fleur d'Or Drinks Club. The printed name of the dor-bar-top is "bar". The dor-bar-top is a supporter. Understand "bar" or "counter" or "bartop" or "countertop" as the dor-bar-top.

The bartender is a woman in the Fleur d'Or Drinks Club. The description of the bartender is "She has masses of curly hair, a classically straight nose, and the most peculiar eyes [--] a col[our] neither hazel nor green, and exotically turned up."

The patron is a man in the Fleur d'Or Drinks Club. Understand "customer" or "man" as the patron.
	Understand "mark" as the patron when the player knows mark-known.
	The description of the patron is "He looks like a business [unless the player wears Britishizing goggles]traveler[otherwise]traveller[end if], though perhaps at the end of a long day."
	The patron carries a gin-tonic. The printed name of gin-tonic is "gin and tonic". Understand "gin and tonic" or "gin" or "tonic" as the gin-tonic. The gin-tonic is fluid, edible, and contained. The description of the gin-tonic is "It is fizzing gently in its glass."

Test toolkitbug with "x toolkit / search toolkit / take all from toolkit" in Drinks Club.

The toolkit is a scenery thing on the dor-bar-top. The toolkit contains some screwdrivers, some gimlets, and some rusty nails. Sanity-check taking the toolkit: say "Let's not draw attention by stealing that." instead.
	Sanity-check taking something which is in the toolkit: say "Let's not draw attention by stealing [regarding the noun][those]." instead.
	Instead of examining or searching the toolkit:
		say "It offers an assortment: [a list of things *in the toolkit]."

Rule for deciding whether all includes things in the toolkit while removing something from the toolkit:
	it does.

Rule for deciding whether all includes things in the toolkit while taking:
	it does not.

Instead of inserting something into the toolkit:
	say "[The toolkit] is full already."

The description of the gimlets is "A gimlet is a hand-tool for drilling holes, like an auger but smaller. It is for piercing things and boring into them, anyway, which is presumably where the phrase 'gimlet-eyed' comes from. These are arranged into an attractive bouquet-shape."
	Understand "gimlet" as the gimlets when the gimlet is marked invisible and the gimlet-drink is marked invisible.

The description of the screwdrivers is "An assortment of plain screwdrivers, with strong metal shafts and plastic handles."

The description of the rusty nails is "They're scattered around in the toolkit, presumably taken from a condemned building somewhere."
	Understand "nail" as the rusty nails when the rusty nail is marked invisible and the rusty-nail-drink is marked invisible.

A screwdriver is a thing. It is carried by the bartender. The description of the screwdriver is "The screwdriver is flat-headed, with a red plastic handle and a sturdy shaft." Understand "red" or "plastic" or "handle" or "shaft" or "sturdy" as the screwdriver. Understand "tool" as the screwdriver.

A gimlet is a thing. It is carried by the bartender. The description of a gimlet is "A gimlet is a hand-tool for drilling holes, like an auger but smaller. I haven't met many examples before, but this one is presumably typical: it has a steel shaft with a screw-end for drilling the holes, and a crosswise handle at the top." Understand "tool" as the gimlet.

A rusty nail is a thing. It is carried by the bartender. The description of a rusty nail is "Bent in the middle and heavily corroded." Understand "bent" or "corroded" as the rusty nail.

Some other patrons are scenery in the Fleur d'Or Drinks Club. The description is "They're mostly dressed in suits or business casual outfits at least, and are having odd stilted conversations in which they try to avoid saying anything meaningful about the work they are here to do." Understand "businessman" or "woman" or "businesswoman" or "businesswomen" or "businessmen" or "customers" or "drinkers" as the other patrons.

Some small tables are scenery in the Fleur d'Or Drinks Club. The description is "The tables are low to the ground, more lounge tables than restaurant tables, and each with its own light." Understand "lounge" or "light" as the small tables.

Instead of doing something other than examining to the other patrons:
	say "I don't think [we] have much to gain from the crowd."

Rule for writing a topic sentence about the bartender:
	if the player does not recollect dangerous-paddle:
		say "[The bartender] is in the middle of showing her [homonym paddle] to [a patron]. [run paragraph on]";
	otherwise if the player does not recollect how-rescue:
		say "[The bartender] and [the patron] are still talking about [the homonym paddle]. [run paragraph on]";
	otherwise:
		say "[atmospheric-event] [run paragraph on]";
		now the gin-tonic is mentioned;
	if the bartender carries something:
		now everything carried by the bartender is mentioned;

First after writing a paragraph about the bartender when the current-paragraph references the patron:
	say "[The other patrons] are scattered around the room at small tables, drinking or talking among themselves. ";
	make no decision.

A ranking rule for the patron when the bartender is not the current interlocutor:
		decrease the description-rank of the patron by 30.

Rule for writing a topic sentence about the patron:
	if a drink-form thing is on the dor-bar-top and a random chance of 1 in 2 succeeds:
		say "[The patron] [one of]is keeping politely out of the way of [the list of drink-form things *in the dor-bar-top] that [we] ordered. [We] [are] not using up too much space, though, as most of [the other patrons] are at tables and not using the bar at all[or]is still keeping out of the way of our [list of drink-form things *in the dor-bar-top][stopping]. ";
	otherwise:
		say "[one of]Aside from [the patron] at the bar, most of the patrons are seated at tables[or][The patron] sips his gin and tonic and surveys [the other patrons][or][The patron] notices someone he knows across the room, and waves[or]When [the bartender] isn't looking his way, [the patron] makes some notes on a PDA, then puts it away again[as decreasingly likely outcomes]. ";
	now the gin-tonic is mentioned;
	now the other patrons are mentioned;

After printing the name of the patron while writing a topic sentence about the bartender:
	if the player does not know mark-known:
		say " holding [a list of things *in the patron]".

[Understand "play [piano]" as a mistake ("[one of]I have no skill in that department[or]I don't play[or]I don't think we want to attract attention with a jangly performance, thanks[at random].").

Understand "play [text]" as a mistake ("[one of]I have no skill in that department[or]I don't play[or]I don't think we want to attract attention with a jangly performance, thanks[at random].") when the player can see the piano. ]

Part 2 - Student Quarters

Chapter 1 - University District

Section 1 - Palm Square

Instead of going to Palm Square when the legend is not introduced:
	say square-refusal.

Instead of approaching Palm Square when the legend is not introduced:
	say square-refusal.

To say square-refusal:
	if the legend is handled or the fake-legend is in the repository:
		say "Hadn't we better see what message Brock left?";
		stop the action;
	otherwise:
		say "[if the noun is not My Apartment and the noun is not Apartment Bathroom]My apartment is that direction, but unless[otherwise]Unless[end if] we have some reason to go there, it seems least suspicious to avoid my old neighborhood[if the fake-legend is seen]. We should figure out the map enough to know where we’re going[end if].";

South of Long Street South is Palm Square. The description of Palm Square is "[if unvisited]Now this is my part of town: [end if]Palm Square is the beginning of the university district. To the [Southeast], through the iron gate, is the university campus proper; and that unobtrusive little doorway directly [south] of us leads into the Babel Café." Palm Square is proper-named, checkpoint and southern.

Clearwater Cosmetic Clinic is a facade in Palm Square. It fronts east. It is scenery. The description is "It is closed for the holiday. About a dozen copies of the same ad plaster the wall."

The wart removal advertisement is a thing. It is part of the clearwater cosmetic clinic. Understand "ad" or "ads" or "advert" or "adverts" or "nearest" or "wall" or "copies" or "dozen" as the wart removal advertisement. The description of the wart removal advertisement is "'Make ART not WAR!' And then in smaller letters: 'Anyone can letter-remove a wart, but not everyone can produce our beautiful results. Our trained wart-removal artists use visual[ization] training and long experience to convert your wart into a piece of high-quality skin art [--] for less than the price of a tattoo.'"



Rule for listing exits when looking in Palm Square:
	do nothing instead.

The apartment complex is a facade in Palm Square. The initial appearance is "I live in [the apartment complex] that runs along the west side of the square [--] in fact, my apartment door is immediately to the southwest." The description is "I know it's a bit shabby, but you know what graduate stipends are like. Or maybe you don't. My parents help with the rent, but it's still nothing spectacular." The apartment complex fronts southwest. Understand "home" or "house" or "flat" as the apartment complex.

Section 2 - Babel Cafe

South of Palm Square is Babel Café. Understand "cafe" as the Babel Café. The description of Babel Café is "Through many changes of management, this institution has fed the denizens of the university and ignored their semi-sedition." Babel Café is indoors, proper-named and southern.

Out-direction of Babel Café is north. [Back to Palm Square]

The clerk is an alert man in the Babel Café. The initial appearance is "[A clerk] in [a white apron] stands behind [the long glass case][unless the long glass case contains something], now emptied by our purchases[end if]." The clerk wears a white apron.
	The description of the clerk is "A smooth-faced young man. He has the cheery demean[our] of one earning substantial overtime pay."
	The description of the white apron is "Clean white cotton, bordered with a Greek meander trim in dark blue embroidery thread."

Some découpaged tables are a supporter in Babel Café. The initial appearance is "The tables are square wooden things painted dark blue (not the vibrant blue of the Bureau, but something closer to midnight), and the upper surfaces are découpaged with antique travel postcards."
	Understand "antique" or "travel" or "postcard" or "postcards" or "square" or "wooden" or "blue" or "dark blue" or "upper surfaces" or "upper surface" or "surface" or "surfaces" or "table" as the découpaged tables.

	The description is "The surfaces depict, fragmented, such exotic locations as Giza, Beijing, and Sioux City, Iowa. There is even an advertisement for the 1893 Chicago World's Fair."

Sanity-check opening the long glass case:
	say "The case opens only from the back side, where the clerk is." instead.

The long glass case is fixed in place in the Babel Café. The initial appearance is "[A long glass case] displays middle-eastern and Greek delicacies." It is closed and transparent. In the long glass case are a pocket-bread, a wrap, and a honey pastry triangle.

The honey pastry triangle and the pocket-bread are edible. The description of the honey pastry triangle is "Despite its enforced linguistic transformation, it still looks delicious: fine layers of crisp filo with nuts and honey between."

The description of the pocket-bread is "It's round, flat bread suitable for eating with dips." The indefinite article is "some". Understand "pocket" and "bread" as the pocket-bread.

The wrap is an edible thing. The description is "It's a construction of flat bread wrapped around rice, chickpeas, and sauce."
	The scent-description is "Greek garlic-yogurt sauce".

[A nod to the blue plaque commemorating Watson and Crick at the Eagle Pub in Cambridge.]

A blue plaque is fixed in place in the Babel Café. Understand "plaque" or "placard" or "historical" as the blue plaque. The initial appearance is "A [blue plaque] is mounted on the wall." The description is "[i]On this site in 1969 the theoretical groundwork for Q-insertion was laid by James Elias and Milford Higgate using five drinking straws and a bowl of oatmeal.[/i]".

Section 3 - Apartment Window

Southwest of Palm Square is a apartment door. apartment door is a lockable locked door. It is scenery. Southwest of apartment door is My Apartment.

My Apartment is southern checkpoint. Understand "home" as My Apartment.

Understand "go home" as home-going. Home-going is an action applying to nothing.

Instead of home-going:
	try approaching My Apartment.

Instead of knocking on the bathroom window:
	if the player is in Palm Square:
		say "There's no one inside; that's the point.";
	otherwise:
		say "No one from outside will pay any attention, which is just as well."

Before going west in Palm Square when the bathroom window is scenery:
	say "That way lies the [bathroom window] of my apartment. Though in fact, if you have a mind to break in, it's the easiest way: it's not hard to force the window.";
	now the bathroom window is not scenery instead.

Before unlocking or entering or opening the locked apartment door when the player does not enclose the key and the player is not in My Apartment:
	if the bathroom window is scenery:
		reveal bathroom window;
		say "You had me leave my keys behind, remember?

But if you insist, my apartment is actually pitifully easy to break into. That window there opens onto the bathroom, and you can force it from the outside without much effort. ";
		unless the player is hurrying:
			say paragraph break;
		stop the action;
	otherwise:
		say "If we want to go into my apartment, we're going to have to climb in my window. Here, let me just streamline this process for us.";
		try entering bathroom window instead.

Understand "force [something openable]" or "force [something openable] open" as opening.

Rule for printing the name of my apartment while listing exits or facing:
	say "my apartment".

Rule for printing the name of apartment bathroom while listing exits or facing:
	say "apartment bathroom".

After going through the bathroom window:
	let N be the number of entries in the path so far of the player;
	if N is greater than 1:
		say "[path-walked so far]";
	otherwise:
		clear the path-walked for the player;
	if Apartment Bathroom is not visited:
		have Mrs Parsnip issue a challenge;
	say "[one of]The window is uncomfortably high and it takes a little scramble to get in, but soon [we] [are] inside[or]This climb is noticeably more difficult now that [we] [are] three inches shorter than my normal height, but hey-ho[or]Far be it from me to critique your abilities in the stealth department, but it might be a good idea not to climb in and out of this window [i]too[/i] many times. My neighb[our]s are only used to seeing me do it once every few days[or]Oh, very well. [Mrs] Parsnip is probably out[stopping]. [command clarification break]";
	continue the action.

To have Mrs Parsnip issue a challenge:
	say "'Halt! You! Young person!'

It's my neighb[our], [Mrs] Parsnip, leaning out from her apartment above us. [Mrs] Parsnip and I don't interact except about once a month when she comes around to ask for my spare change for bus fare or the laundry.

'Clear off or I'll call the police!' she shouts.";
	say "[line break][command prompt]";
	custom-wait for any key;
	say "[line break]...No, don't worry, I'll handle this.

I step us back and stare up at her. 'I'm a friend of Alex,' I say. 'He called and asked me to stop by because he thought he left the stove on. Said he climbs in the window all the time when he gets locked out.'

'That's true,' she says. 'Shouldn't be allowed out by himself. Okay, go ahead.'

In a mutter she adds, 'Not like he has anything worth stealing anyway.' She vanishes from view.[paragraph break]";

Sanity-check locking keylessly the bathroom window:
	say "Oh, it doesn't lock. If it did, we wouldn't find it so easy to come and go." instead.


Report opening the bathroom window for the first time:
	say "The [if boldening is true][bold type][end if]window[roman type] slides open with a hideous protesting shriek." instead.

Report closing the bathroom window:
	say "[We] slide the [if boldening is true][bold type][end if]window[roman type] shut[one of]. I feel obscurely better now[or][stopping]." instead.

Before: if the noun is the bathroom window or the second noun is the bathroom window,
	reveal bathroom window.

To reveal bathroom window:
	now bathroom window is obvious;
	now bathroom window is fixed in place;
	now the bathroom window is not scenery.

The bathroom window is a door. The bathroom window is west of Palm Square and east of the Apartment Bathroom. It is scenery. It is closed and openable. The flexible appearance is "[if the location is Palm Square][b-window-appearance][otherwise]The bathroom window gives some weak sunlight.[end if]". Apartment Bathroom and My Apartment are indoors.


Instead of examining a toilet: say "It's pretty clean."

Understand "flush [something] down [a toilet]" as flushing it down. Flushing it down is an action applying to two things.

Carry out flushing it down:
	try inserting the noun into the second noun instead;

Sanity-check inserting something into a toilet:
	say "That is not a good way to get rid of [the noun]." instead;

Sanity-check inserting something into a drain:
	say "That is not a good way to get rid of [the noun]." instead;

To say b-window-appearance:
	if the Apartment Bathroom is unvisited
	begin;
		say "Please also note the no-security window giving onto my bathroom. ";
	otherwise;
		say "My bathroom window [if bathroom window is open]remains vulnerably open[otherwise]is closed, but not, of course, latched[end if]. ";
	end if.

The description of the bathroom window is "It is one of those windows that slides sideways open. The latch is broken, so it can't actually be secured."

Instead of searching the bathroom window: say "It is made of frosted glass, precisely because of people like you."

Understand "climb through [something]" or "climb in [something]" or "climb into [something]" or "climb out of [something]" or "climb out [something]" as entering.

Section 4 - Apartment Bathroom

The Apartment Bathroom is north of My Apartment. The apartment bathroom is a bathroom. It is southern and checkpoint.

In-direction of Apartment Bathroom is south. [My apartment]
Out-direction of Apartment Bathroom is east. [Palm Square]

Rule for listing exits when the location is Apartment Bathroom:
	say "[We] could climb back [if boldening is true][bold type][end if]out[roman type] the window, or [we] could go [if boldening is true][bold type][end if]south[roman type] into the rest of my apartment."

A nightstand is a supporter in the apartment bathroom. The initial appearance is "An antique [nightstand] of my mother's, which does not actually fit anywhere near my bed, is jammed into one corner of the bathroom."

The description of the nightstand is "It is wobbly, scratched, and chipped, which is the state in which my mother likes her antiques."

Instead of inserting something into the nightstand, say "[The nightstand] doesn't have a drawer."

The key is a passkey on the nightstand. It unlocks the apartment door. The heft of the key is 1. The description is "It's made of an extremely ordinary blank.". The key unbolts the apartment door. The indefinite article of the key is "a".

Test key-article with "i" holding the key.

The ring is a passkey on the nightstand. It is wearable. The heft of the ring is 1. The description is "A gold-toned ring that from a distance would look like a signet. In fact the face of it is figured with the symbol of the university, an owl biting the letter A in its beak. Embedded in this face is the tiny RFID tag that opens generic university security.

It is the perfect combination of technical paranoia and old-fashioned pretentiousness, and one is assigned to every new student with great pomp on the day of orientation." Understand "rfid" or "tag" or "owl" or "signet" as the ring.

[Otherwise, we'll be forced to take it off before using it.]
Definition: the ring is key-accessible:
	if the person asked carries it, yes;
	if the person asked wears it, yes;
	if it is on a keychain which is carried by the person asked, yes;
	no.

[Rule for writing a topic sentence about the keyring:
	say "My [keyring] is [if the holder of the keyring is a thing][in-on the holder of the keyring][otherwise]here[end if]. ".

Definition: a door is key-unbolted if it is unbolted by a key which is on the keyring. ]

[The description of the keyring is "It's a souvenir from the Canary Islands, where my mother once went on a trip years ago." ]



[The checkbook is a thing. The description is "Mostly used: there are only one or two checks left in the back." The introduction is "I had paid my rent through next month before I left. It seemed the conscientious thing to do. Not like I was going to have access to that money again anyway."]

Section 5 - Apartment itself

My Apartment is a kitchen. It is southern. The introduction of my apartment is "I'd apolog[ize] for the mess, but should [we] really be here? I'm reconciled to leaving all my things behind, you know. You made me promise that I didn't mind."

Rule for listing exits when looking in My Apartment:
	do nothing instead.

Out-direction of My Apartment is northeast. [Palm Square]

The kitchen area is fixed in place in My Apartment. The flexible appearance is "It's an efficiency: note [the kitchen area], with all the usual appliances, in one corner."

Instead of examining a stove in my apartment:
	say "It's an older gas range, but it's clean and it's good at stirfries."

Instead of examining an oven in my apartment:
	say "I don't use it much except to bake frozen pizzas."

After writing a paragraph about the kitchen area:
	now the kitchen area is mentioned;
	now every stove is mentioned; now every refrigerator is mentioned; now every oven is mentioned; now every sink is mentioned; now every cabinet is mentioned; now every furniture counter is mentioned. [This is to fix it so that descriptions say, e.g., 'in THE refrigerator' rather than 'in a refrigerator'.]

Instead of entering the kitchen area, say "This is really too small a space to make that distinction interesting." Understand "appliances" or "appliance" as the kitchen area. The description of kitchen area is "I have a [if a sink is in my apartment]sink, [end if]stove, refrigerator, cabinets, a countertop: the usual[if the number of sinks in my apartment is 0]. No sink, but that's thanks to your meddling[end if]." The introduction of kitchen area is "My mother attempted to provide a microwave, rice cooker, toaster, waffle iron, and julienne-fry-maker, but I pointed out that these objects would triple-populate the two square feet of available counter space."

When play begins (this is the setting up my apartment rule):
	let destination be a random refrigerator which is in my apartment;
	move the pot-of-yogurt to the destination;
	let destination be a random furniture counter which is in my apartment;
	now every book which is in My Apartment is on the destination;

Test sink-kitchen with "X KITCHEN / WAVE S-REMOVER AT SINK / X KITCHEN" in My Apartment.


Studies Primary Language Acquisition is a book in My Apartment. Journal of Third-World Economics is a book in My Apartment.

The printed name of Studies Primary Language Acquisition is "Studies in Primary Language Acquisition". Understand "studies in" as Studies Primary Language Acquisition.

The description of Studies Primary Language Acquisition is "This is a little outside my field, but I have been trying to work out the feasibility of my plans, from the perspective of language teaching."

The description of Journal of Third-World Economics is "This is just Volume 16, but I subscribed annually for a while. My whole plan is useless unless there's a well-designed language that actually takes account of economic reality in the target region. When I've moved somewhere outside Atlantis it will be easier to conduct that part of the research." Understand "volume" or "16" or "volume of" or "volume 16 of" as Journal of Third-World Economics.

Understand "third" and "world" as the Journal of Third-World Economics.

A pot-of-yogurt is an edible thing. The printed name is "yogurt". Understand "yogurt" or "yoghurt" as the pot-of-yogurt. The description is "It is the gooseberry fool flavor, left over from a six-pack. I always eat the strawberry and peach first." The introduction is "Okay, I feel guilty about leaving this to go bad, but I was in a rush [--] I did get rid of most of the rest of my food over the last couple of days, but I just never had time to eat this. And it seemed wrong to throw it out. Sue me." The indefinite article of the pot-of-yogurt is "some".

Rule for printing the name of the pot-of-yogurt when the player wears the Britishizing goggles:
	say "yoghurt".

Test yogurtbug with "tutorial off / x yogurt / x yoghurt" holding the pot-of-yogurt.

A futon is a clothed bed. The futon is in My Apartment. The description of the futon is "Strictly speaking, more of a futon mattress. It doesn't have a frame." The flexible appearance is "My [futon] is on the floor in the opposite corner. ".

Rule for disclosing contents of the futon:
	let the special-target be the futon;
	now the current-subject is special-target;
	if at least two books are on the futon
	begin;
		say "Clumsily stacked on the futon [is-are a list of books *in the futon]";
		if at least three mentionable things are on the futon
		begin;
			say "; [a list of mentionable things *in the futon] are scattered in the remaining space. ";
		otherwise;
			if something mentionable is on the futon, say ", as well as [a list of mentionable things *in the futon]. ";
			otherwise say ". ";
		end if;
	otherwise;
		say "On top [is-are a list of things *in the futon]. ";
	end if;

A book called The Problem of Adjectives is on the futon. Understand "problems" as the problem of adjectives.

Test returnbook with "put problem away" holding the Problem of Adjectives in the Seminar Room.

Understand "return [something preferably held]" or "put away [something preferably held]" or "put [something preferably held] away" or "shelve [something preferably held]" as returning. Returning is an action applying to one carried thing.

Does the player mean returning the Problem of Adjectives:
	it is very likely.

Sanity-check returning guidebook:
	say "I don't think anyone will mind our having it. Books at hostels come and go, to judge by your recollections." instead.

Sanity-check returning something:
	if the noun is not a book:
		say "[The noun] [are] not a library book." instead;
	if the noun is not Problem of Adjectives:
		say "[The noun] [are] ours." instead.

Check returning the Problem of Adjectives:
	if the location is not Language Studies Seminar Room:
		say "[The noun] came from the Language Studies Seminar Room, so that's where we would need to be.";
		try approaching the Language Studies Seminar Room;
		if the location is not Language Studies Seminar Room:
			stop the action.

Carry out returning the Problem of Adjectives:
	try putting the Problem of Adjectives on the LSR bookcase.

Instead of examining the Problem of Adjectives:
	say "It's not my book; it belongs to the department, as [we] can see from the fact that it's stamped LANGUAGE STUDIES DEPARTMENT : SEMINAR ROOM inside.

I got it out because it provides a general overview of adjectival 'adherence' [--] that is, how and when an adjective is so much part of the name of something that it can be affected by tools like your [letter-remover], and when it is purely incidental.

I see I may be losing you. Shall I put this in layman's terms? >>";
	if the player consents
	begin;
		say "[line break]The short version is: I want to design a language with spelling and pronunciation selected so that valuable resources like food, water, and clothing can easily be made from available resources and pollutants such as plastic garbage and seawater.

There are major problems in constructing such a language because ideas like 'pure' and 'potable' and 'healthy' tend to be specified by adjectives rather than by nouns [--] English doesn't have one colloquial word that means 'pure water', for instance. But I believe that a correctly constructed language that incorporated the concept of 'pure water' into a single word would be exceptionally powerful and might transform the third world.";
	otherwise;
		say "[line break]Okay, then.

In general, strongly-adhering adjectives produce problems by preventing conversions that might otherwise be possible; conversely, it is difficult to make objects with particular characteristics because those characteristics are described by weakly-adhering adjectives.

The point is: it is possible to use linguistic tools to create water. It is [i]not[/i] reliably possible, at least in American English, to use those tools to create potable water, because 'potable' is a weakly-adhering adjective describing a statistically uncommon trait. This means that linguistic reification is helpless to solve water supply problems, even in third-world regions using a high-efficacy language. For that matter even when a word has a strongly-adhering adjective, the interference of that adjective usually just makes the object impossible to reify at all.

What [we] need, therefore, is a language with nouns that uniquely specify substances['] desirable traits: 'potable' or 'pure' water should be named something distinct from adulterated forms of H2O, and so on.

Have I bored you enough yet? >>";
		if the player consents, say "[line break]Right, sorry. Well, you get the general idea, anyway.";
		otherwise say "[line break]Scientific jargon does, of course, exist to specify objects uniquely, but there are two problems. One is that most chemical and biological terminology is used by such a small subset of the population that it has near-zero linguistic efficacy: creating a substance by formula requires an amount of energy roughly on par with pointing a w-remover at Aberystwyth. This is not a realistic solution to resource problems.

The second difficulty is that even with well-known exceptions such as 'H2O', the formula is not usually not a linguistic subset of the formula of another widely available and well-known substance.

Hence the need for a new language with nouns designed based on careful scientific research into the primary needs and resources of living in a given region. This language could then be systematically taught to everyone dwelling in that area, causing permanent economic uplift.

'Systematically taught' is a bit of a problem, since it would take massive funding and effort to make the language known widely enough to gain linguistic efficacy. And there would be significant issues in not totally crowding out indigenous languages and thus destroying an existing culture.

But I have high hopes, assuming I can ever get out of this repressive little burg and make my case to one or more of the major world relief organ[ization]s.";
	end if.

The introduction is "I should have taken it back to the library [--] I [i]meant[/i] to take it back to the library [--] but there just wasn't time. The last couple of hours before I came to meet you were frantic. The way I figured it, my parents or someone will come looking for me and they'll take it back for me. I think."

After printing the name of Problem of Adjectives while taking inventory:
	say "[roman type] (to return to the department seminar room)".

Report taking the Problem of Adjectives for the first time:
	say "We take [the Problem of Adjectives]. Might as well return it to the department seminar room, as long as we're going that way." instead.

Before going from My Apartment when the player does not enclose The Problem of Adjectives:
	try taking The Problem of Adjectives.

A description-concealing rule when The Problem of Adjectives is as-yet-unknown and The Problem of Adjectives is marked for listing:
	rapidly set all things not marked for listing;
	now the Problem of Adjectives is marked for listing.

Rule for writing a topic sentence about the Problem of Adjectives when The Problem of Adjectives is as-yet-unknown:
	say "I should point out my copy of [the Problem of Adjectives]. ".

[Before writing a paragraph about something (called special-target):
	if special-target is unmentioned, let restore-state be true; otherwise let restore-state be false;
	say "Starting paragraph about [special-target].";
	if restore-state is true, now special-target is unmentioned.]

Ranking rule for the problem of adjectives when The Problem of Adjectives is as-yet-unknown:
	increase the description-rank of Problem of Adjectives by 10.

Definition: the Problem of Adjectives is deeply dull: no.



Busy Streets is a region. High Street, Roundabout, Tall Street, Long Street North, and Long Street South are in Busy Streets.

Chapter 3 - Campus Itself

Section 1 - University Oval

The sturdy iron gate is southeast of Palm Square. It is scenery. The sturdy iron gate is a transparent door. The sturdy iron gate is closed, lockable, and locked. The description of the sturdy iron gate is "The campus as a whole is walled and gated because of the amount of linguistic research that happens inside. This is a very lightweight form of security, more symbolic than anything, with much more significant protections on the really powerful materials[if the ring is not handled].

I have the student ring that opens this back in my apartment. I just wasn't expecting to need to go in there ever again[ring-fetch][end if].".

Out-direction of University Oval is northwest. [Palm Square]
In-direction of University Oval is south. [Samuel Johnson Hall]

After printing the name of the sturdy iron gate when the ring is not handled:
	say " to the university".

To say ring-fetch:
	assign "Retrieve my student ring from my apartment".

The ring unlocks the sturdy iron gate. The ring unbolts the sturdy iron gate.

Check unlocking the sturdy iron gate with the ring when the player is hurrying:
	say "[path-walked so far][We] unlock [the sturdy iron gate] with [the ring]. ";
	if final destination is University Oval:
		say paragraph break;
	continue the action.

Carry out taking the ring:
	complete "Retrieve my student ring from my apartment".

Instead of climbing the gate:
	say "It is not badly built, as far as gates go, and it would not be possible to climb over without attracting attention."

Southeast of the sturdy iron gate is the University Oval. The University Oval is improper-named, checkpoint and southern.

The description of University Oval is "This is the cen[ter] of the university, a broad grassy oval shaded with [sycamore trees] and surrounded by buildings in brick or white stone."

Some sycamore trees are scenery in University Oval. The description is "They're handsome old trees [--] the same white-trunked hybrids that line the avenues of Provence, I'm told, growing several [if the player wears the Britishizing goggles]storeys[otherwise]stories[end if] tall and creating a tolerable shade even on very hot days." Understand "sycamores" as the sycamore trees.

Instead of climbing the sycamore trees:
	say "They're too tall. Even the lowest branches are inconveniently high."

buildings-general is scenery in University Oval. The description is "Of the original 1757 foundation of the University, little now remains, and the oldest building on campus is the administration building, a Georgian creation of white steps and columns, ca. 1780. That's further east, though, and the buildings here around the Oval are mostly from the enormous expansion of the university in 1911-1940, when the publication of the New Orthodox Orthography caused a rapid expansion in language-related disciplines.

My own building is Samuel Johnson Hall, to the south."

s-johnson-hall-exterior is a facade in University Oval. The printed name is "Samuel Johnson Hall". It fronts south. The initial appearance is "Immediately south of here is the building where I spend most of my time, Samuel Johnson Hall.".
	Understand "building" or "samuel" or "johnson" or "hall" as s-johnson-hall-exterior.
	The description is "When it was built in the [']30s, the whole purpose was to prove to the rest of the faculty the tremendous value of the new field of language studies (as opposed to language engineering, a field long valued for its ability to produce tools and, more importantly, weapons).

Consequently, [s-johnson-hall-exterior] was built to impress: a blind windowless front of white stone rising grandly from the pavement; an oppressive [portico] that makes entering figures look tiny."

The portico is part of s-johnson-hall-exterior.
	Understand "blind" or "windowless" or "front" or "white stone" or "stone" or "oppressive" or "statues" or "relief" or "statue" or "letter e" or "letter t" or "letters" or "e" or "t" or "shining" or "bronze" as the portico.
	The description is "The portico is many times taller than a person, and is flanked by relief sculptures of two massive, fleshly, ideal[ize]d figures, reminiscent of early Soviet art. One holds a large letter E, the other a letter T: the two most common letters in the English language.

The letters are not carved from the same stone, but are attachments made of shining bronze.".

The business-school-exterior is a facade in University Oval. It fronts north. It is scenery. The printed name is "business school". Understand "brick" or "building" or "business school" as the business-school-exterior. The description is "A 1930s brick building which now houses the business school, heavily sponsored by DCL and famous for producing most of that company's upper management."

The east-campus-extension is a facade in University Oval. It fronts east. It is scenery. The printed name is "Sycamore Walk". Understand "sycamore" or "walk" as the east-campus-extension. The description is "Sycamore Walk runs east towards the older part of campus. But [we] have no useful business there today [--] I wouldn't be able to get us into the buildings, and I don't think it would help anyway."

Instead of going east in University Oval:
	try examining east-campus-extension.

An activist is an alert woman in University Oval. Understand "student" or "protester" as the activist. The initial appearance is "[An activist] is standing in our way[if the activist carries the bright yellow sign], gripping [a bright yellow sign] that says 'TOXI WASTE AWARENESS!'[end if]." The description of the activist is "An earnest-looking woman, about 22."
	The activist carries a bright yellow sign. The bright yellow sign is a sign. The description of the bright yellow sign is "The sign is bright yellow and says 'TOXI WASTE AWARENESS!'" The initial appearance is "A [bright yellow sign] lies on the grass, abandoned by its owner."
	The printed name of the bright yellow sign is "sign".



Rule for listing exits when looking in University Oval:
	do nothing instead.

[Every turn when the activist can see the player and the activist is not the current interlocutor:
	try the activist saying hello to the player.]

Report the activist saying hello to the player:
	queue environment-offer instead.

Instead of giving bills to the activist:
	say "Your mind rebels at the thought. You need this money [--] we both do. Without it, we haven't a hope of making our way in another country."


Instead of going south from University Oval in the presence of the activist:
	if the activist recollects at least three quips:
		say "The activist seems to have given up on convincing us and lets us go by in peace.";
		continue the action;
	otherwise:
		say "[one of]The activist deftly steps in your way.[or]The activist bobs and gets in your way again. 'We're picketing that building,' she says. 'No entry except for supporters.'[or]This time two friends of the activist appear beside her. 'Supporters only,' they say.[or]The TOXI WASTE power people prevent you. Maybe we'd better listen to what they have to say.[stopping]".

Section 2 - Samuel Johnson Hall

South of University Oval is Samuel Johnson Hall. The description of Samuel Johnson Hall is "This is the main building for Language Studies. [one of]This is not to be confused with Language Engineering, which is the department that handles devices for the manipulation of language-objects; it is also not to be confused with Linguistics, English Literature, or Comparative Literature, all of which have their own buildings and faculties. Language Studies applies itself to questions of linguistic efficacy chiefly at a social and anthropological level.

That's to say that we study how the ability to change things based on their names affects daily life and society.

[or][stopping]The department office, with several professorial offices leading off of it, is to the [southeast]. To the [southwest] is the seminar room, where many of the upper-level courses occur, and which also contains the department library; downstairs is the basement, where the graduate students and junior instructors are kept."

Samuel Johnson Hall is indoors, checkpoint and southern.

Out-direction of Samuel Johnson Hall is north. [To University oval]

Rule for listing exits while looking in Samuel Johnson Hall:
	do nothing instead.

The framed photograph of Waterstone is a thing in Samuel Johnson Hall. It is fixed in place. The initial appearance is "On the wall hangs a [photograph of Waterstone], with the words SHAPLY CHAIR in big letters underneath." Understand "photo" or "picture" or "professor" or "frame" as the framed photograph.
	The printed name is "framed photograph of Professor Waterstone".
	The description is "The Shaply Chair is not named after the famous suffragette Phyllida Shaply, but after her considerably less famous or interesting descendant Lawrence Shaply, who was well-placed within Dental Consonants Ltd. when it started up and subsequently had buckets of money with which to endow university chairs.

Nonetheless, this position is a point of considerable pride for Professor Waterstone, and gets him many invitations to speak both here and abroad, which he takes terribly seriously. (More to the point, the government permits him to attend.)

This may explain the particularly expansive grin on Waterstone's face in this image. Usually his pleasure is expressed more moderately."

Section 3 - Seminar Room

Southwest of Samuel Johnson Hall is the seminar door. The seminar door is a closed lockable locked door. The seminar door is scenery. The description of the seminar door is "It's sturdy, because sometimes valuable equipment is stored in the room beyond. That room also contains the library of department books, a set of research materials kept on hand so that people don't have to go over to the university library to double-check basic data during a discussion."

Southwest of the seminar door is Language Studies Seminar Room. The description of the Language Studies Seminar Room is "They recently redid this room, and whoever picked the decorations had postmodern tastes." The Language Studies Seminar Room is indoors, checkpoint, improper-named and southern.

After looking in the Language Studies Seminar Room when the seminar door is open:
	if Professor Higgate is enclosed by location:
		continue the action;
	silently try closing the seminar door;
	if the seminar door is closed:
		say "[One of]I shut the door so that [we] don't get interrupted.[or]For safety, I shut the door behind us.[stopping]";
	continue the action.

The LSR chair is a chair in The Language Studies Seminar Room. The printed name of the LSR chair is "chair". The LSR chair is not scenery. The LSR chair is portable.

Before going from the Language Studies Seminar Room when the player carries Problem of Adjectives:
	try putting Problem of Adjectives on the LSR bookcase.

Carry out putting Problem of Adjectives on the LSR Bookcase:
	record "returning a library book to its proper home" as achieved.

[Carry out going to the Language Studies Seminar Room:
	record "gaining access to the synthesizer" as achieved.]

The LSR bookcase is a supporter in the Language Studies Seminar Room. The initial appearance is "The bookshelves lining the walls contain the department library." The description is "Built in and sturdily made." The printed name is "bookshelf". Understand "shelf" or "shelves" or "bookshelf" as the LSR bookcase.

The big table is a supporter in the Language Studies Seminar Room. "The [big table] at the cen[ter] of the room is an irregular polygon[if the LSR chair is in location and the LSR chair is not handled], with one [LSR chair] pushed up to the shortest side[end if]."
	The introduction is "I think the shape is intended to undermine traditional conceptions of academic hierarchy, but in practice it just means that whoever gets to seminar late has to sit with a table angle jabbing him in the stomach."
	The description is "Crafted from some exotic wood with lots of interesting burl structure. There was a wealthy donor behind the construction of this room."
	Understand "polygon" as the big table.

History of the Standards Revolution is a book on the LSR bookcase. The description of History of the Standards Revolution is "It covers in minute detail the process by which the island standard[ize]d spelling and leveraged its linguistic power." The introduction is "[History] is one of those bog-standard texts that everyone in my field owns a copy of and uses as a doorstop. Very occasionally something still arises that I need to look up, but I just about memor[ize]d it in preparation for my comprehensive exams."

Lives of the Lexicographers is a book on the LSR bookcase. The description of Lives of the Lexicographers is "It is a substantial history of the major contributors to the art of dictionary-creation, and a useful guide to the specialist bibliography on each figure."

Section 4 - Department Office

The Language Studies Department Office is southeast of Samuel Johnson Hall.
	The description is "This big, slightly drab area holds such useful objects as the [mailboxes] and the [secretary's computer]. On ordinary days the secretary would be in as well, presiding over affairs. The offices of individual professors lie [north] and [west][if Higgate's office door is closed and office-door-1 is closed], though both doors are closed[otherwise if Higgate's office door is closed], though the west door is closed[otherwise if office-door-1 is closed], though the north door is closed[end if]."
	The introduction is "This corner office was won in a battle of wills with several other departments during the most recent rebuilding drive. Professor Waterstone is fond of reminding the others that he was the one to obtain this fav[our]able position whenever there is a disagreement about procedure."

Rule for listing exits when looking in the Language Studies Department Office:
	do nothing instead.

The Language Studies Department Office contains some mailboxes and a u-shaped desk. The u-shaped desk is a desk. On the u-shaped desk is a desktop computer called the secretary's computer.

Instead of waving the letter-remover at the u-shaped desk when the current setting of the letter-remover is "u":
	say "It's not going to make a nothing-shaped desk. What would that even be? Shapeless?"

The language studies department office is indoors and southern.

The description of the u-shaped desk is "Formidable in size, but even that is not enough to support all of the things that the secretarial staff need to keep track of."

Does the player mean doing something with the secretary's computer:
	it is very likely.

The description of the secretary's computer is "One of many beige boxes hooked into the university's main system." The secretary's computer is scenery.

The secretary's computer runs a password-lock program called secretary's security.
	The password of secretary's security is "brownishott".

The secretary's computer runs a search engine called a browser.
	The data table of the browser is Table of Searchable Information.
	The description of the browser is usually "A browser comes up, with a search box for accessing departmental information."

Table of Searchable Information
topic	title	data
"waterstone/professor" or "professor waterstone"	"Waterstone's homepage"	"Professor Waterstone's webpage contains his CV (long) and a list of his future speaking engagements, including one set for tomorrow on homonym shame."
"higgate/professor" or "professor higgate"	"Higgate's homepage"	"Professor Higgate's homepage is illustrated by a picture of herself smiling enigmatically out in the university oval, followed by links for various courses she teaches, such as Interlingua and Advanced Klingon Certification. There is also a long bit praising the value of learning constructed languages, and a scanned copy of her Bureau stamp of certification to use and teach non-English tongues."
"brown/professor" or "professor brown"	"Brown's homepage"	"Professor Brown's homepage describes an assortment of personal interests I very much doubt he has time to pursue (such as salsa dancing) before delving into an impenetrable description of his research aims and goals."
"professor/downdweller" or "professor downdweller"	"Downdweller's homepage"	"Professor Downdweller's homepage is illustrated extensively with pictures of himself engaged in cheery undergraduate games such as three-legged races and squid fry-ups at the shore."
"professor/spout" or "professor spout"	"Spout's homepage"	"Professor Spout's homepage is just a stub supplied by the university tech services department. It appears that Spout has never seen a value in populating it, so it still contains the university crest and not much else."
"academic/calendar" or "academic calendar"	"academic calendar"	"The calendar lists upcoming events for the rest of the term, dates and times of finals, and similar information that I will never need again."
"student/students/roster/rosters/class/classes/courses"	"rosters"	"The secretary has access to all the rosters of all students enrolled in any department class, together with add/drop history. This reveals that Professor Brown's large Abstractions 101 course has bled steadily and is now at about half its original enrollment, while Higgate is able to command a small but loyal stream of people taking Advanced Klingon Certification as an independent study."
"Interlingua"	"Interlingua"	"It appears that the upcoming Interlingua course is going to be very healthily enrolled."
"Abstractions 101" or "abstractions" or "abstractions class"	"Abstractions 101"	"The syllabus for Abstractions 101 always assigns 250 pages of prolegomena in Week One. A review of previous versions of the syllabus shows that this has been the case for the last several years, and that the only thing that changes each year is the length of the Instructor's Note, offering a tetchy explanation of why students lacking this background will be ill-equipped to make the most of the course."
"Advanced Klingon Certification" or "klingon/certification" or "advanced klingon"	"Advanced Klingon Certification"	"Little information is available here, since Higgate uses few conventional books and relies heavily on handouts and exercises of her own devising, necessarily distributed under seal only to those students who have legal authority to enroll in the course."
"faculty/list/staff/teaching/teachers/teacher" or "faculty/staff/teacher/teachers list"	"faculty list"	"The faculty list for the department mentions professors Higgate, Waterstone, and Brown, as well as Professor Lamplighter (Emeritus), Professor Spout (has been a dean for three years and hasn't taught during that time), and Professor Downdweller (crosslisted with Economics, has offices in that department).

Many courses are taught by graduate students, but these are naturally not listed on the faculty page."
"research/overview" or "research overview" 	"research overview"	"The overview page merely mentions that cutting edge research is being carried forth by professors Brown, Higgate, and Waterstone, and invites the reader to visit their personal pages (naturally not linked)."
"graduate students/student"	"graduate student roster"	"This brings up a scrolling list of graduate students together with enrollment status, but does not actually reveal their grades or transcripts."


[Instead of switching on the secretary's computer:
	say "We'd need the secretarial password to log in, and I don't know it. And Waterstone is a tyrant about not letting people write passwords down [--] he has actually sincerely fired an admin worker for doing so in the past [--] so don't even think it." ]

Instead of taking the secretary's computer:
	say "I understand that theft is more or less your way of life, but please hold back this once."

The u-shaped desk can be hack-mentioned.

Before writing a paragraph about something when the u-shaped desk is in the location:
	if the u-shaped desk is unmentioned:
		now the u-shaped is not hack-mentioned;
	now the u-shaped desk is mentioned. [We want "the u-shaped desk" not "a u-shaped desk" or worse "an u-shaped desk".]

After printing the name of the u-shaped desk:
	now the u-shaped desk is hack-mentioned.

The department printer is a device on the u-shaped desk. It is fixed in place. The description is "The networked [printer] handles output for all the computers in the department. [printer indicator]."
	Understand "lights" or "indicator" as the department printer.
	The printed name is "printer".
	The department printer is switched on.
	The introduction is "The use of just one printer sometimes leads to annoying clashes when one person is printing off, say, the draft of a small monograph when someone else wants to make up quizzes for class. But Waterstone insists that it's not worth spending department money on another printer when those funds could go to faculty development grants."

Instead of taking the department printer:
	say "It would be a heavy thing to carry around, and I don't see much use for it elsewhere."

Rule for writing a paragraph about the department printer:
	say "[if boldening is true][bold type][end if]The department printer[roman type] [if the u-shaped desk is hack-mentioned]also [end if]sits on [the u-shaped desk]. [run paragraph on]";
	now the department printer is mentioned;
	now the output tray is referenced by the current-paragraph;
	now the paper-drawer is referenced by the current-paragraph;
	if the paper-drawer is open:
		say "[The paper-drawer] stands open[if the paper-drawer is surprising], revealing [a list of mentionable things *in the paper-drawer][end if]. [run paragraph on]";
	while a surprising thing (called second special-target) is referenced by the current-paragraph:
		carry out the disclosing contents activity with the second special-target;
		rapidly set all immediate children of the second special-target mentioned;
		now held-break is true;
	if held-break is true:
		say "[run paragraph on]";
	otherwise:
		say line break.

After examining the department printer:
	if the paper-drawer is closed:
		say "The paper drawer is closed.";
	otherwise:
		try searching the paper-drawer;
	try searching the output tray.

Before printing the name of the paper-drawer while searching the paper-drawer:
	say "open "

Instead of putting something on the department printer:
	try putting the noun on the output tray.

Instead of inserting something into the department printer:
	try inserting the noun into the paper-drawer.

Instead of closing the department printer:
	try closing the paper-drawer.

Instead of opening the department printer:
	try opening the paper-drawer.

[Procedural rule while examining the department printer:
	ignore the examine described devices rule. ]

A printer mode is a kind of value. The printer modes are not-on, standby, ready, and out of paper.

A paper-drawer is part of the department printer. The paper-drawer is a container. It is closed and openable and privately-named. The printed name is "paper drawer". Understand "paper-drawer" or "paper drawer" or "drawer" or "clamps" or "clamp" or "plastic clamps" as the paper-drawer. The description is "The paper-drawer slides neatly in (or out) of the body of the printer, and is deep enough to hold a multi-inch stack of fresh paper. A small catch secures it from being carelessly opened[if the paper-drawer is open and the paper-drawer is empty]. Some plastic clamps hold the pages in place inside, when there are any[end if]." Understand "catch" as the paper-drawer.

Instead of pushing or pulling the paper-drawer:
	if the paper-drawer is open:
		try closing the paper-drawer;
	otherwise:
		try opening the paper-drawer.

An output tray is part of the department printer. It is a supporter. The description of the output tray is "In molded plastic, it is an integral part of the printer body[if the output tray is non-empty]. Currently there [is-are a list of things *in the output tray] on the tray, waiting for the owner to come collect[end if]."

Report inserting the ream into the paper-drawer:
	say "The ream fits exactly into the depth of the drawer. [We] adjust the plastic clamps that hold pages in place until everything is snug." instead.

Report closing the paper-drawer:
	say "The paper-drawer slides back into place with a click." instead.

Report opening the paper-drawer:
	say "[We] pull up on the little catch and draw the drawer out[if the paper-drawer is non-empty], revealing [a list of things *in the paper-drawer][otherwise]. It's empty[end if]." instead.

Instead of putting something on the output tray:
	say "It's probably a bad idea to risk jamming the output tray by putting random things onto it."

Instead of putting something fluid on the output tray:
	say "Now that's just vandalism."

Test paper-bug with "tutorial off / shutoffice / wave c-remover at cream / open paper-drawer / put ream in drawer / close drawer / z / open drawer / x paper" holding the cream in the Department office.

A draft document is a thing. Understand "pages" or "speech" or "talk" or "asterisks" as the draft document. [Understand "paper" as the draft document when the paper is not visible.] The description is "[homonym-shame-wanted]It's fifteen pages double-spaced, and appears to be the draft of a talk Professor Waterstone is preparing to give at a convention. I immediately notice, however, that several portions of the speech are marked with angry triple asterisks [--] Waterstone's way of marking up parts of text that need serious revision.

The talk concerns 'homonym shame': the anxiety felt in the Victorian era, and still manifested at times in modern culture, about objects that shared the same name as (and therefore theoretically might be converted into) something rude. Methods of disguising the legs of pianos and crotches of trees occupy a good portion of Waterstone's exposition, and there is a page-long aside on methods of making sure that donkeys are known by that name and not by the alternative.

To judge, however, from the angry asterisking, Waterstone is still looking for at least one more example of an object susceptible to double-entendre that has been successfully rendered innocent by some linguistic modification."

The draft document can be pending. The draft document is not pending.

A last every turn rule when the draft document is pending and the current printer mode is ready:
	move the draft document to the output tray;
	now the draft document is not pending;
	move the single ream to the repository;
	move the blank-paper to the paper-drawer;
	say "The printer whirs as though clearing its throat, and then begins to spit pages rapidly into the output tray."

To say printer indicator:
	if the current printer mode is:
		-- not-on:
			say "All the indicator lights are dark";
		-- standby:
			say "The indicator lights glow amber for standby mode";
		-- out of paper:
			say "The indicator lights glow red to indicate that the paper-drawer is empty";
		-- ready:
			say "The indicator lights glow green with readiness";
	if the draft document is pending and current printer mode is not not-on:
		say ". An additional light indicates that some document is in the queue to print and is waiting for the printer to [if the current printer mode is not ready]be ready[otherwise]start, which should happen any minute[end if]"

To decide what printer mode is the current printer mode:
	if the department printer is switched off:
		decide on not-on;
	if the paper-drawer is open:
		decide on standby;
	if the paper-drawer is empty:
		decide on out of paper;
	decide on ready.

Report switching on the printer:
	say "[We] switch the printer on. The lights all come on and flash a few times while it warms itself up. Then things settle down. [printer indicator]." instead.

Sanity-check writing the topic understood on the blank-paper:
	say "Writing on the paper would ruin it for the printer." instead.

A blank-paper is a thing. The printed name is "blank paper". Understand "blank paper" or "blank" or "paper" as the blank-paper. The indefinite article is "some". The description is "Having lost a few pages, there is no longer a ream, but there's still enough here to keep the printer going for a while." Understand "pages" as the blank-paper.

Instead of taking the blank-paper:
	say "Might as well leave it there for future users."

Check inserting something into the paper-drawer:
	if the noun is the ream:
		continue the action;
	if the noun is the blank-paper:
		continue the action;
	otherwise:
		say "Only fresh printer paper can safely go into the paper-drawer, and it must be the right size and in quantities of no more than a ream." instead.

The mailboxes are a scenery container.
	Understand "mailbox" as the mailboxes.
	Instead of searching the mailboxes, say "No need: it will be the usual assortment of advertisements from academic presses, copies of the campus newspaper (which are never interesting and always get discarded), memos from the dean with no informational content whatsoever, and so on."

The description of the mailboxes is "There are slots for all the professors and graduate students. Undergraduates, of course, are too insignificant to be assigned mailboxes, and are not allowed to have mail delivered to the department."

Section 5 - Higgate's Office

Higgate's office is an office. It is privately-controlled, checkpoint and southern.

Higgate's office door is west of the Language Studies Department Office. Higgate's office door is a door. It is open and lockable and scenery. The description is "A nondescript office door with Professor Higgate's name on it." Understand "west door" or "name" as higgate's office door when the location is the Language Studies Department Office.

Understand "bureau tape" or "tape" as Higgate's office door when Higgate-arrested has happened.

Report Professor Higgate discussing how we might return a book:
	say "'Oh! Yes, all right,' she says. 'Did you like it? It's a good overview of the subject, didn't you think? I'm afraid the author once annoyed Professor Waterstone at a conference, or we might have had her around to speak at one of our colloquia...'

Higgate stands, patting herself down as though worried she has forgotten something.

'After you,' says Higgate. 'I assume it's safe to leave for a minute; if anyone is coming for Lojban Tea we'll see them in the hall.' She walks past us through the office door.

We walk a little behind Higgate, who has a very long businesslike stride despite her heels.

She fiddles with her keys for a moment before finding the right one. 'Here you go,' she says, pushing the door open.";
	move Professor Higgate to Seminar Room;
	now the seminar door is unlocked;
	now the seminar door is open;
	rapidly move followers to Seminar Room;
	move the player to Seminar Room;
	record "gaining access to the synthesizer" as achieved;
	stop the action.

A description-concealing rule when the location is Language Studies Seminar Room:
	repeat with N running from 1 to subject count:
		unless subject-number N is enclosed by Seminar Room:
			now subject-number N is not marked for listing;

	[say "[reply of the noun][paragraph break]";
	try Professor Higgate exiting;
	say "'After you,' says Higgate. 'I assume it's safe to leave for a minute; if anyone is coming for Lojban Tea we'll see them in the hall.' [run paragraph on]";
	try Professor Higgate approaching Samuel Johnson Hall;
	try approaching Samuel Johnson Hall;
	try Professor Higgate unlocking the seminar door with the lsr-key;
	try Professor Higgate opening the seminar door;
	try Professor Higgate approaching the Seminar Room;
	try going southwest;
	set the current interlocutor to Professor Higgate;
	clear path-walked for player;
	stop the action.]

Instead of doing something in the presence of Professor Higgate when the noun is the synthesizer or the second noun is the synthesizer or the noun is the plexiglas case or the noun is the screws or the second noun is the plexiglas case or the second noun is the screws:
	say "Higgate may be a little unworldly, but there is no way she'd let us mess with the synthesizer without interference. We'll have to hope she is willing to leave us in here."

Instead of going somewhere when the location is the Seminar Room and Professor Higgate is in the location:
	say "[We] got in here on the pretext of putting the book away. It would be odd to leave again without doing so."

Sanity-check inserting something into the LSR Bookcase:
	try putting the noun on the LSR Bookcase instead.

After putting the Problem of Adjectives on the LSR Bookcase:
	say "[We] take a moment to find the proper place for the book.

The sound of discussion comes from down the hall: two voices speaking in Lojban, and then a male voice interrupting. 'Do you have a lic[ense] for this conversation?' it asks.

'Excuse me,' Higgate says. 'I'd better go see to that.'";
	[try Professor Higgate approaching higgate's office;]
	try Professor Higgate going northeast;
	move Professor Higgate to higgate's office;
	reset the interlocutor;
	now higgate's office door is closed instead.

Instead of taking the Problem of Adjectives when the Problem of Adjectives is on the LSR Bookcase:
	say "[one of]After taking the trouble to return it, [or][stopping]I'd rather leave it here where it belongs."

Instead of examining Higgate's office door when Higgate-arrested has happened:
	say "The door is closed and sealed over with Bureau tape to prevent anyone from tampering with it in any way."

Instead of knocking on Higgate's office door when Higgate's office door is closed:
	if higgate-arrested has happened:
		say "The door is sealed with Bureau tape. Evidently they are planning to search more carefully later.";
	otherwise:
		say "'Come in!' shouts someone."

Instead of opening Higgate's office door when Higgate's office door is closed:
	let N be the number of entries in the path so far of the player;
	if N is greater than 1:
		say "[path-walked so far]";
	otherwise:
		clear the path-walked for the player;
	if higgate-arrested has happened:
		say "The door is sealed with Bureau tape. Evidently they are planning to search more carefully later." instead;
	say "[one of][We] open the door to find two students, a boy and a girl, sitting at Higgate's table. The boy is sipping tea and the girl is paging madly through the Lojban book. 'Oh,' says Higgate. 'You found what you needed, I hope? I'm afraid I am busy now.'

So I duck us back out and close the door[or]I don't think [we] need anything else, and it would be mean to interrupt their tea again[stopping].".

Instead of listening to Higgate's office door when Higgate's office door is closed:
	if higgate-arrested has happened:
		say "Dead silence." instead;
	say "Putting our ear to the door, [we] hear [one of]a girl's voice stumbling over a question[or]Professor Higgate saying something rapid and fluent[or]a boy laughing[stopping]."

Higgate's Office is west of Higgate's office door. The description is "Higgate got about 30% finished with a stylish decorating scheme and then got distracted, leaving everything in a unsettled state. A few of her books are arranged on a very nice [rosewood bookshelf], which looks Asian[if the small figurines are on the rosewood bookshelf] and is ornamented with [small figurines][end if]; all the rest of her library is stacked higgledy-piggledy in [plastic cartons]."

The rosewood bookshelf is a supporter in Higgate's Office. It is scenery. Some small figurines are on the rosewood bookshelf. The small figurines are scenery. The description of the small figurines is "They depict mostly characters from popular children's fiction: Professor Higgate has a particularly strong and inexplicable fetish for the Wizard of Oz."

Some plastic cartons are containers in Higgate's Office. They are scenery. The description of the plastic cartons is "Traffic-cone orange and very unattractive."

[Some trim is scenery in Higgate's office. The description is "The trim [--] no more than a line around the top of the walls, really [--] is a handsome dark green that sets off the rosewood."]

[A paint is in Higgate's Office. The initial appearance is "Left over from the decoration process is some paint." The indefinite article is "some". The description is "It looks as though it's left over from Higgate's work on the trim in the office."

The paint can be released or retained. The paint is retained.

Instead of taking the paint when the paint is retained:
	say "Higgate looks like a sweetheart, and in many respects she is, but if we start stealing her stuff right in front of her there's a very good risk she'll call security."

Instead of waving the letter-remover at the paint when the paint is retained:
	say "Higgate might mind our modifying her stuff without permission." ]

When play begins (this is the setting up Higgate's office rule):
	let N be a random chair in Higgate's Office;
	move Professor Higgate to N.

Rule for writing a topic sentence about Professor Higgate when Higgate is on a chair (called the special-target):
	say "[Professor Higgate] is sitting at [an oval table][if the oval table is non-empty], on which are spread [a list of things *in the oval table][end if]. [run paragraph on]".

Rule for writing a topic sentence about Professor Higgate when Higgate is in the Seminar Room:
	say "[Professor Higgate] waits a little absent-mindedly nearby, looking over [the LSR Bookcase]. [run paragraph on]".

Rule for disclosing exterior of Professor Higgate when Professor Higgate is on a chair:
	do nothing instead.

Professor Higgate is an alert woman in Higgate's Office.
	The description is "Professor Higgate is about forty-five, very tall and slim, with a short, no-nonsense hairstyle. Indeed everything about her self-presentation suggests that she has studied how to make herself acceptably professional in the shortest possible time each day, and now adheres to this plan with absolute rigor.

What she might look like in some other setting, such as on a date or at a formal dinner, is beyond my ability to imagine."
	The introduction is "Higgate is the second reader on my dissertation committee, and a conlang expert [--] that is, Constructed Languages. It was a seminar with her that really got me thinking about utopian linguistics, and she's been very supportive, though cautious[if Professor Waterstone is introduced]. She and Professor Waterstone don't always get along that well[end if]."

The oval table is a privately-named supporter in Higgate's Office. It supports a book called Complete Lojban. Understand "table" or "oval table" as the oval table. [Disambiguate from University Oval in GO TO commands.]

The description of Complete Lojban is "The book is bound in an ugly yellow binding and has a number of small sticky notes sticking out of it." Complete Lojban is improper-named.
	The introduction of Complete Lojban is "I used to have a copy of this myself: it's uninventively called [i]Complete Lojban[/i] and appeared with about a dozen similar texts in our conlang survey seminar."
	Understand "ugly" and "yellow" and "binding" and "small sticky notes" and "sticky notes" and "notes" as Complete Lojban.

Rule for printing the name of Complete Lojban when Complete Lojban is not proper-named: say "[roman type]ugly yellow book"

Carry out examining Complete Lojban:
	unless the noun is proper-named:
		now noun is proper-named;
		reset hash code of noun.

The sugar bowl is a container on the oval table. Instead of searching the sugar bowl, say "It is about a quarter full."

Sanity-check inserting something into the sugar bowl:
	say "That would ruin the sugar." instead;

Instead of empty-removing the sugar bowl:
	try taking the sugar bowl.

Instead of empty-removing the teapot:
	try searching the teapot.

Sanity-check eating or tasting the sugar bowl:
	say "It is ordinary sugar. No need to taste it." instead.

The teapot is a container on the oval table. The teapot is openable and closed. The description is "Black and Japanese-styled." Understand "tea" as the teapot. Instead of searching the teapot: say "[We] peek inside. The tea has evidently been sitting on the leaves a long time, because it is powerful and looks almost like coffee."

Sanity-check eating or tasting the teapot:
	say "To judge by the col[our] of the tea, it has been steeping so long as to be nearly vertical." instead.

Sanity-check inserting something into the teapot:
	if the noun is the sugar bowl:
		say "I don't think that would help." instead;
	otherwise:
		say "That might ruin the tea." instead;

Instead of opening the teapot:
	try searching the teapot.

The oval table supports a book called Heart to Heart. Understand "romance" or "novel" as Heart to Heart.

The description of Heart to Heart is "The cover shows two women in a steamy embrace, so I'm going to guess it's a romance novel. As language is one I haven't ever learned, I can't read the title." Heart to Heart is improper-named.

Rule for printing the name of Heart to Heart: say "[roman type]romance novel in some heavily accented language".

Sanity-check taking something which is on the oval table:
	say "Professor Higgate frowns as [we] reach for [the noun]. 'You may have noticed,' she says, in the kind of voice that always withered our hearts in seminar, 'that there are certain social expectations about touching the possessions of other people.'

My fingers relax their grip instinctively." instead.


[lsr-key unlocks seminar door. lsr-key is carried by Professor Higgate. The printed name of the lsr-key is "small key". Understand "small" as the lsr-key.

Rule for deciding the concealed possessions of Professor Higgate:
	if the particular possession is the lsr-key:
		yes.]

Sanity-check putting something on the oval table:
	say "Why get our stuff mixed up with Professor Higgate's? Besides, there's not a lot of space left there anyway." instead.

Report Professor Higgate saying hello to the player:
	if Professor Higgate recollects that we do not speak Lojban, queue English-greeting instead;
	otherwise queue lojban-greeting instead.

Section 6 - Waterstone's Office

North of the Language Studies Department Office is office-door-1. office-door-1 is a privately-named open lockable scenery door. The printed name of office-door-1 is "Waterstone's office door". Understand "office" or "door" as office-door-1. Understand "Waterstone's" or "north door" as the office-door-1 when the location is the Language Studies Department Office.

The description of office-door-1 is "Unlike most office doors, it has a [special glass window] in it allowing Waterstone to survey everything that goes on outside even when he is locked in."

Instead of knocking on special glass window:
	try knocking on office-door-1.

Does the player mean searching office-door-1:
	it is very likely.

Instead of searching office-door-1:
	try searching special glass window.

Instead of listening to office-door-1:
	if office-door-1 is closed:
		say "It might look a bit odd for us to press our ear up against the window in the door. Conspicuous, even.";
	otherwise:
		say "The door is open.".

Instead of showing a Waterstone-inspiring thing to Professor Waterstone when the location is Waterstone's Office:
	say "We are just about to show [Professor Waterstone] [the noun], when he all of a sudden gets up from his chair.";
	try Professor Waterstone discussing please-get-out.

Instead of giving a Waterstone-inspiring thing to Professor Waterstone when the location is Waterstone's Office:
	say "We are just about to give [the noun] to [Professor Waterstone], when he all of a sudden gets up from his chair.";
	try Professor Waterstone discussing please-get-out.


A thing is usually innocent-sounding. The member, the ass, and the cock are naughty-sounding.

Definition: a thing is Waterstone-inspiring:
	if it is naughty-sounding:
		no;
	if it is proffered by a naughty-sounding thing:
		yes;
	no.

[It is confusing if Watersone looks at the player's belongings before we even know that he is looking for anything. So we use a fact, homonym-shame-wanted, to check whether the player knows about the puzzle. This will be set to known if we have read the draft document, if we have already tried to show or give something to Waterstone, or simply by knocking on his door after having been thrown out the first time.]

Instead of knocking on office-door-1 when Professor Waterstone is on a chair and office-door-1 is closed and the location is Language Studies Department Office:
	if the player does not know homonym-shame-wanted:
		say "Professor Waterstone looks up at us through the window in the door, as if to ask 'Yes? Was there something you wanted to show me?'[homonym-shame-wanted]";
		stop the action;
	let the selected object be nothing;
	if held-over-object is not nothing and held-over-object is not the player:
		let selected object be held-over-object;
		now held-over-object is the player;
	else if the player carries a Waterstone-inspiring thing (called target):
		let selected object be target;
	else if the player carries the passage:
		let selected object be passage;
	else if the player carries the cock-ring:
		let selected object be the cock-ring;
	else if the player carries a naughty-sounding thing (called rude-target):
		let selected object be the rude-target;
	else if the player carries the clock:
		let selected object be the clock;
	else:
		repeat with item running through things enclosed by the location:
			if item is waterstone-inspiring:
				say "Waterstone looks up and gives a little frown. It's clear he doesn't know why we knocked. [The item] might interest him, but perhaps he can't see [them] from that angle. Maybe if we were holding [them].";
				stop the action;
	if the selected object is nothing:
		say "Waterstone looks up and gives a little frown. It's clear he doesn't know why we knocked; to be honest I'm not sure why we did either.";
		stop the action;
	otherwise:
		follow the water-reaction rules for the selected object;
	stop the action.

The water-reaction rules are an object-based rulebook.

A Water-reaction rule for a Waterstone-inspiring thing (called the target):
	say "Waterstone looks at [the target], briefly arrested by some thought. He gets a monocle like mine out of his drawer. He looks through it at [the target], notes [the list of things which proffer the target]; grins. ";
	say "He gets up and comes out of his office.

'This is perfect,' he says. 'One more example to put into my talk [--] but I really should be going [--] should be able to get a ride from my wife [--] if I leave now [--] Here, you can have this if it interests you. I won't have time to use it.' He sets an invitation down on the desk.

'Come back and talk to me again later,' he adds. 'We can discuss your goals as a student. And now I really have to go [--] should have gone hours ago.' (There, see: he can be a nice man. More or less.)

He locks his door again and goes out. I think he is actually humming something.";
	move the invitation to the u-shaped desk;
	now the invitation is essential;
	now Professor Waterstone is nowhere;
	now the small laptop is nowhere;
	complete "Speak to Professor Waterstone and get his invitation to see the T-inserter";
	say "[line break]>";
	custom-wait for any key;
	say "[line break]Before we can do anything, Waterstone pops his head back in. 'What you did there [--] not strictly within the rules. But I admire, shall we say, [i]Realpolitik[/i]. You'll go far. Ignore Brown, but you'd probably do that anyway. Never talk to Higgate at all. I will see you later.'[paragraph break]And he pops back out.";
	rule succeeds.

A Water-reaction rule for the passage when the ass does not proffer the passage:
	say "[one of]Waterstone looks at the passage, briefly arrested by some thought. He gets a monocle like mine out of his drawer. He looks through it at the passage.

But what he sees disappoints him, and he shoves the monocle away again. He writes something on a paper and holds it up: 'Good thought [--] P-ASS-AGE [--] but it must have been genuinely constructed from [']ass['], not cobbled from [a list of things that proffer the passage]. Can't cite it.'

This is an awful lot of writing; why the man can't come to the door and hold a conversation I don't know. But that's Waterstone for you[or]Waterstone checks the passage again, then shakes his head in disappointment when he sees it's not made with genuine ass[stopping].";
	rule succeeds.

A Water-reaction rule for the cock-ring:
	say "Waterstone sees what [we][']ve made of the cock, and clutches desperately at his hair as though he's going to tear it out in tufts. His eyes bulge and water. I've never seen the man so close to apoplexy.

I think that was exactly the wrong thing, somehow.";
	rule succeeds.

A Water-reaction rule for a naughty-sounding thing (called target):
	say "Waterstone glares at [the target]. Then he picks up a marker and writes on a piece of paper, '[one of]Yes, but how to change its name to something innocent?[no line break][or]Now you're just taunting me.[no line break][or]Please go away![no line break][stopping]' Having held up this sign for a minute, he crumples it and goes back to work.

If he were a cartoon there would be a thundercloud over his laptop.";
	rule succeeds.

A Water-reaction rule for the clock:
	say "Waterstone inspects the clock through his monocle a moment. Then he picks up a marker and writes on a piece of paper, 'It was always a CLOCK. I need something where the original was naughty.' Having held up this sign for a minute, he crumples it and goes back to work.";
	rule succeeds.

A Water-reaction rule for the draft document:
	say "[one of]Waterstone stares at the draft document, apparently not recognizing it at first. Then he picks up a marker and writes on a piece of paper, 'Have you read it? Any ideas?' Having held up this sign for a minute, he crumples it and goes back to work.[or]Waterstone looks up from his work long enough to give us an irritated glare. Perhaps we should consider what he suggested.[or]We get only a momentary flicker of attention from Waterstone. Perhaps we should take another look at the draft and think about what might interest him.[stopping]";
	rule succeeds.

A last Water-reaction rule for something (called the target):
	say "[one of]Waterstone looks up from his work long enough to give us an irritated glare.[or]Waterstone barely glances away from his typing this time.[or]Without looking up, Waterstone sticks out his tongue. Really, he's clearly very upset about his deadlines, it seems.[or][We] get only a momentary flicker of attention from Waterstone.[stopping]";
	if the draft document is examined:
		say "[line break]He seems to get that we're trying to show him [the target][one of], but as [they] [are] not related to the concept of homonym shame, it's not much help with his paper, so he probably doesn't want to be distracted[or], but [they] [are] not something whose original sounded dirty, so presumably that's not a lot of help with the paper[stopping].";
	else:
		if the draft document is seen:
			say "[line break]He seems to get that we're trying to show him [the target], but I don't think he's very interested. His work doesn't seem to be going well. Maybe if we actually read the document he was trying to print, that would give us some idea.";
		else:
			say "[line break]He seems to get that we're trying to show him [the target], but I don't think he's very interested. His work doesn't seem to be going well. It's probably to do with whatever he's trying to print on the department printer.";
	rule succeeds.

Sanity-check saying hello to Professor Waterstone when Professor Waterstone is on a chair and office-door-1 is closed and the location is Language Studies Department Office:
	say "Waterstone is unable to hear you through the closed door, which is presumably the purpose of closing it, so let's try knocking instead.";
	try knocking on office-door-1 instead.

Sanity-check giving something to Professor Waterstone when Professor Waterstone is on a chair and office-door-1 is closed and the location is Language Studies Department Office:
	now held-over-object is the noun;
	say "Waterstone is unable to hear you through the closed door, which is presumably the purpose of closing it, so let's try knocking instead[homonym-shame-wanted].";
	try knocking on office-door-1 instead.

Sanity-check showing something to Professor Waterstone when Professor Waterstone is on a chair and office-door-1 is closed and the location is Language Studies Department Office:
	now held-over-object is the noun;
	say "Waterstone is unable to hear you through the closed door, which is presumably the purpose of closing it, so let's try knocking instead[homonym-shame-wanted].";
	try knocking on office-door-1 instead.

Held-over-object is a thing that varies.

Instead of showing something to special glass window when Professor Waterstone is on a chair and office-door-1 is closed and the location is Language Studies Department Office:
	say "Though there is a window and Waterstone can watch the outer office from his desk, he is unable to hear you through the closed door, which is presumably the purpose of closing it. I will try knocking instead[homonym-shame-wanted].";
	now held-over-object is the noun;
	try knocking on office-door-1.

Instead of giving something to office-door-1 when Professor Waterstone is on a chair and office-door-1 is closed and the location is Language Studies Department Office:
	say "Waterstone is unable to hear you through the closed door, which is presumably the purpose of closing it, so let's try knocking instead[homonym-shame-wanted].";
	now held-over-object is the noun;
	try knocking on office-door-1.

A special glass window is part of office-door-1. The description of the special glass window is "It's nearly the width of the door, and fills most of the upper half of the frame."

After deciding the scope of player when the player is in Language Studies Department Office:
	if office-door-1 is closed:
		place Waterstone's Office in scope.

A description-concealing rule when the location is the Language Studies Department Office:
	rapidly set all contents of Waterstone's Office not marked for listing.

[Report Professor Waterstone closing office-door-1:
	say "The office door closes with measured firmness behind us." instead.]

[Report Professor Waterstone locking office-door-1 with something:
	say "Through the window in Waterstone's door, [we] can see him turning the lock. When he catches us watching he gives a tight, unfriendly smile and goes back to his desk." instead.]

Instead of looking toward Waterstone’s Office when office-door-1 is closed:
	try searching the special glass window.

Check examining office-door-1 when the subcommand of office-door-1 matches "waterstone":
	if Professor Waterstone is marked-visible:
		try examining Professor Waterstone instead.

Instead of searching the special glass window when office-door-1 is closed:
	if the location is Waterstone's Office:
		say "It's amazing what a great view there is."; [this actually should never happen because we shouldn't wind up trapped with W.]
	otherwise:
		if Professor Waterstone is on a chair:
			say "Though he can easily see us through the office door window, Professor Waterstone resolutely ignores our impolite staring. He's trying to get something done on his laptop, but keeps stopping to stare at the screen or, apparently, to curse at it.";
		otherwise:
			say "Waterstone's office looks oddly bare now that the man himself is gone."

Instead of searching the special glass window when office-door-1 is open:
	say "[We] get a view of the wall behind the door, which is not terribly exciting."

Waterstone's Office is north of office-door-1. It is an office. It is privately-controlled, checkpoint and southern.

The description of Waterstone's Office is "A very finicky, neatly arranged room, in which one never feels quite at home.".

Rule for writing a paragraph about a desk (called target) which is in Waterstone's office:
	say "There is an almost bare desk[if the target is non-empty], which at the moment supports [a list of things *in the target][end if]." Waterstone's Office is indoors.

[Waterstone is not based on any department chair I've worked for, nor on my own advisor (all of whom have been thoroughly nice people).]

Professor Waterstone is an alert man in Waterstone's Office.
	The description of Waterstone is "Waterstone is in many respects a brilliant man, but he also has a spectacular capacity for ticking people off. He has a dry, off-beat sense of hum[our] whose output is often indistinguishable from insult; he is also convinced that he knows best about most topics of policy, which brings him into frequent disagreement with his colleagues, the dean, and (we hear) his wife.".
	The introduction of Waterstone is "Waterstone is my dissertation advisor. (He insists on the 'o' spelling.) He's an expert in the history of linguistic and orthographical power, but he's politically kind of reactionary. 'Don't meddle' is pretty much his motto[if Professor Higgate is introduced]. He and Professor Higgate don't always get along that well[end if]."

[od-key unlocks office-door-1. od-key is carried by Waterstone.

Rule for deciding the concealed possessions of Waterstone:
	if the particular possession is the od-key:
		yes.]

Does the player mean knocking on office-door-1:
	it is very likely.

Report Professor Waterstone saying hello to the player:
	if Waterstone does not recollect W-identifies, queue W-identifies;
	otherwise say "'Hello[one of] again[or][at random],' Waterstone says.";
	stop the action.

When play begins (this is the setting up Waterstone's office rule):
	let target be a random desk which is in Waterstone's Office;
	move the invitation to the target;
	move the small laptop to the target;
	let new target be a random chair which is in waterstone's office;
	move Professor Waterstone to the new target.

An invitation is a thing. The heft of the invitation is 1.
The description of the invitation is "It is a white card, like a wedding invitation, with swirly script lettering. 'You are invited,' it says, '[waterstone-invited]to a demonstration of a new T-inserter not available to the general public [--] Serial Comma Day [--] Bureau of Orthography.'

Smaller, meaner sans-serif lettering across the bottom adds: 'Bring this card for admission.'"
	The introduction is "It's from Dental Consonants Limited. Their design of stationery is unmistakable."
	Understand "lettering" or "invite" or "stationery" as the invitation.

Instead of taking the invitation when the location is Waterstone's Office:
	say "We reach out our hand. He watches us the way a bird of prey might watch the twitching of a small garden snake. Our hand retracts. We do not take the invitation."

Instead of examining something when the location of the noun is not the location and the heft of the noun is 1:
	say "It's hard to get a good look at [the noun] from this distance."

A small laptop is a laptop. The description is "It goes everywhere with Waterstone and is grimy with long use, but still functional." It is open and switched on.

Instead of taking the small laptop:
	say "We reach out our hand. He watches us the way a bird of prey might watch the twitching of a small garden snake. Our hand retracts. We do not take Professor Waterstone's laptop."

Table of Ultratests (continued)
topic	stuff	setting
"waters1"	{ clock, screwdriver, shuttle, tub, backpack, member }	Language Studies Seminar Room

Test waters1 with "unlegend / autoupgrade / wave l-remover at clock / unscrew screws / g / open case / put shuttle and cock in synthesizer / get crossword / synthesize / get shuttlecock / gonear printer / n / show shuttlecock to waterstone / put shuttlecock in backpack / knock / put member in backpack / knock / show member to waterstone / show shuttlecock to waterstone".

Table of Ultratests (continued)
topic	stuff	setting
"waters2"	{ clock, screwdriver, shuttle, tub, backpack, cream }	Language Studies Seminar Room

Test waters2 with "unlegend / autoupgrade / wave l-remover at clock / unscrew screws / g / open case / put shuttle and cock in synthesizer / get crossword / synthesize / get shuttlecock / gonear printer / n / show shuttlecock to waterstone / wave c-remover at cream / open paper drawer / put ream in paper drawer / close paper drawer / show draft to waterstone / put shuttlecock in backpack / knock / get shuttlecock / knock".

Test waters3 with "unlegend / autoupgrade / n / ask why / ask whether / wave c-remover at cream / open paper drawer / put ream in paper drawer / close paper drawer / read draft / knock / show letter-remover to waterstone / g / g" holding the cream in Language Studies Department Office.

Test waters4 with "unlegend / autoupgrade / n / get invitation / ask about invitation / ask why / ask whether / wave c-remover at cream / open paper drawer / put ream in paper drawer / close paper drawer / knock / show letter-remover to waterstone / g / read draft / knock / show letter-remover to waterstone / g / g" holding the cream in Language Studies Department Office.

Section 7 - Samuel Johnson Basement


Below Samuel Johnson Hall is Samuel Johnson Basement. The description of Samuel Johnson Basement is "Dank and malod[our]ous: there are no windows down here, and the drainage is terrible.

The stairs [up] are here; the lecture room at the [east]. Immediately [south] is the Graduate Student Office, and [southwest] is Professor Brown's office. The most interesting of all is the small door west, trying to look inconspicuous, but locked with a keycard lock: it's where the department stores its most dangerous licensed equipment[if the small door is open]. At the moment it stands invitingly open[end if]."

Rule for listing exits while looking in Samuel Johnson Basement:
	do nothing instead.

Instead of smelling Samuel Johnson Basement, say "The distinctive scent of mildew, no doubt a result of the endless flooding and re-flooding of this corridor." Samuel Johnson Basement is indoors and southern.


The small door is west of Samuel Johnson Basement. The small door is a door. It is closed and locked. It is scenery. The description of the small door is "It has no label, only a keycard-reading lock.".

Report unlocking the small door with something:
	say "[We] unlock the small door with a swipe of [the second noun]." instead.

The keycard-reading lock is a container. It is part of the small door. The description is "It looks high-tech: all black plastic, and a slot to swipe a keycard through." Understand "slot" or "keycard lock" as the keycard-reading lock.

Understand "keycard reading lock" as the keycard-reading lock.

Instead of inserting something into the keycard-reading lock:
	say "[The noun] won't fit."

Instead of inserting the keycard into the keycard-reading lock:
	try unlocking the small door with the keycard.

Instead of inserting the card into the keycard-reading lock:
	try unlocking the small door with the noun.

Instead of inserting the passcard into the keycard-reading lock:
	try unlocking the small door with the noun.

Instead of inserting the pass into the keycard-reading lock:
	try unlocking the small door with the noun.

Understand "swipe [something]" as taking.
Understand "swipe [keycard]" as swiping. Swiping is an action applying to one thing.

Check swiping:
	if the the keycard-reading lock is marked invisible:
		say "There's nothing here to read it with." instead.

Carry out swiping:
	try unlocking the small door with the keycard instead.

Understand "swipe [keycard] in/through [something]" as inserting it into.

Instead of unlocking the small door with the card:
	say "It slides through the lock, but of course it doesn't have a magnetic unlocking stripe, so this does no good. [We] need more of a keycard."

Instead of unlocking the small door with the passcard:
	say "It slides through the lock, but since the information it encodes is passport information, not a key code, the door does not open."

Instead of unlocking the small door with the pass:
	say "This is the sort of pass that you show to people in order to gain access to places. What [we] need is more of a hard plastic keycard."

[Originally a "large box", but the risk of having it become a large ox was too great -- it would be easy to implement the transformation but hard to make it fair to the player if the box were to move from its appointed position.]

A large carton is a container in Samuel Johnson Basement. It is fixed in place. Understand "recycling" as the large carton. The initial appearance is "A large open carton stands against the wall right between Brown's lab door and [if the rectification room is visited]the Rectification Room[otherwise]the interesting door[end if][if the carton-sign is part of the carton]. 'Recycling,' reads the sign over the carton. 'Place your lab-created items here for processing.'[otherwise].[end if]".

The carton-sign is a sign. The carton-sign is part of the carton. The printed name is "sign". Understand "sign" as the carton-sign. The description is "'Recycling. Place your lab-created items here for processing.'"

In the large carton is a banana. The banana is edible. It is a vegetable. The description of the banana is "Just beginning to get brown and spotty."

Sanity-check going to the Rectification Room when the alterna-snap is in the large carton:
	now the alterna-snap is not essential.

After going to the Rectification Room when the alterna-snap is in the large carton:
	now the alterna-snap is essential;
	continue the action.

Check going from Samuel Johnson Basement when the alterna-snap is in the large carton and the player is hurrying and final destination is not Rectification Room:
	clear path-walked for the player;
	now the player carries the alterna-snap;
	say "We retrieve the snap as we walk past the carton."

Instead of going to the Rectification Room when the large carton does not contain something noisy:
	let N be the number of entries in the path so far of the player;
	if N is greater than 1:
		say "[path-walked so far]";
	otherwise:
		clear the path-walked for the player;
	say "[one of]Before [we] go through the door to the Rectification Room, it occurs to us that Professor Brown is just next door, and that he is likely to be able to hear if [we] do anything in there. Possibly some kind of masking noise is in order[or][if the noisemaker is not nothing][The noisemaker] [do] make noise, but you figure we should leave [them] out here in the hallway so that it will be louder than whatever we do in the room[otherwise]I defer to your judgment that [we] ought to provide some masking sound before proceeding[end if][stopping].".

Instead of dropping something in Samuel Johnson Basement when the heft of the noun is less than 4:
	unless the noun is in the large carton:
		say "I'll just leave [regarding the noun][those] in the carton; less likely to be disturbed there.";
	try inserting the noun into the large carton;

After inserting something noisy into the large carton:
	say "[We] set [the noun] in the carton, where [they] ought to provide a helpful distraction for the time being."

Understand "recycle [something]" as recycling. Recycling is an action applying to one carried thing.
Sanity-check recycling a person:
	say "[The noun] might not take kindly to that." instead.
Check recycling something when the large carton is marked invisible:
	say "There's no place to recycle [the noun]." instead.
Carry out recycling something:
	try inserting the noun into the large carton instead.

Test snap with "unlegend / purloin keycard / w / drop snap in carton / w / e / sw / ne / drop snap / w / go to lecture hall at the podium / go to basement / drop snap / go to rectification room / go to monkey" holding the alterna-snap in Samuel Johnson Basement.


Section 8 - Rectification Room

The Rectification Room is west of the small door. It is indoors, checkpoint and southern. The description is "This is where equipment is brought for a tune-up, or to have its legal limits reinstalled (or, on rare occasions, removed). Access to these abilities is tightly controlled by the Bureau."

Instead of switching on the reclamation machine:
	try switching on the reclamation computer.

Instead of switching off the reclamation machine:
	try switching off the reclamation computer.

The reclamation machine is a closed openable fixed in place container in the Rectification Room.
	The introduction is "It's very ordinary looking, a simple machine with leads able to attach to various linguistic equipment, and to read and rewrite the programming."
	The initial appearance is "[The reclamation machine] stands near the door, ready to improve forbidden objects for the use of registered departmental users."
	The description is "You put a piece of linguistic equipment into the reclamation machine and the machine reprograms it. Attached to the machine is a computer which manages its behavi[our][if the reclamation machine is closed]. Currently the machine is closed: I assume [we] use the computer to open it for service[end if]."

Instead of opening the reclamation machine:
	say "The opening is controlled by the computer portion of the machine. It can't just be forced open."

The reclamation computer is a computer. It is part of the reclamation machine. One trackpad is part of the reclamation computer.

The reclamation computer is running a password-lock program called reclamation security.
	The password of reclamation security is "4tsaj39nbtz".

The reclamation computer is running an enumerated multiple-choice program called the reclamations operation program.
	The options table of the reclamations operation program is the table of deeds.
	The description of the reclamations operation program is "At the top of the screen is the message STATUS: [if the reclamation machine is closed and the reclamation machine is limit-replacing]STANDBY[otherwise if reclamation machine is abstract-removing]REMOVING ABSTRACTION LIMITS[otherwise if reclamation machine is abstract-replacing]RESTORING ABSTRACTION LIMITS[otherwise if the reclamation machine is limit-replacing]RESTORING LEGAL LIMITS ON ANIMAL-CREATION[otherwise]REMOVING LEGAL LIMITS ON ANIMAL-CREATION[end if].

[options-list of the item described]".

The reclamation machine can be limit-removing, limit-replacing, abstract-removing or abstract-replacing.

Test password-bug with "switch on reclamation computer / examine password" in the Rectification Room holding the password-thing.

Table of Deeds
index (a number)	title (a text)	effect (a rule)
--	"RESTORE ABSTRACTION LIMITS"	bin-abstract-messing-up rule
--	"REMOVE ABSTRACTION LIMITS"	bin-abstract-opening rule
--	"RESTORE ANIMAL-CREATION LIMITS"	bin-messing-up rule
--	"REMOVE ANIMAL-CREATION LIMITS"	bin-opening rule
--	"QUIT"	bin-closing rule

This is the bin-abstract-messing-up rule:
	now the reclamation machine is abstract-replacing;
	if the reclamation machine is closed:
		now the reclamation machine is open;
		say "The reclamation machine slides open. ";
	say "The computer beeps approvingly.";

This is the bin-abstract-opening rule:
	now the reclamation machine is abstract-removing;
	if the reclamation machine is closed:
		now the reclamation machine is open;
		say "The reclamation machine slides open. ";
	say "The computer gives a warning noise that appears to mean 'If you are really sure, okay...'";

This is the bin-messing-up rule:
	now the reclamation machine is limit-replacing;
	if the reclamation machine is closed:
		now the reclamation machine is open;
		say "The reclamation machine slides open. ";
	say "The computer beeps approvingly.";

This is the bin-opening rule:
	now the reclamation machine is limit-removing;
	if the reclamation machine is closed:
		now the reclamation machine is open;
		say "The reclamation machine slides open. ";
	say "The computer gives a warning noise that appears to mean 'If you are really sure, okay...'";

This is the bin-closing rule:
	now the reclamation computer is running reclamation security;
	if the reclamation machine is open:
		now the reclamation machine is closed;
		say "The reclamation machine clanks shut. ";
	say "The security pro[gram] comes up again on screen."

[Don't put other stuff in the bin]

Instead of inserting something which is not the letter-remover into the reclamation machine when the heft of the noun is greater than 2:
	say "That would be pointless, and even if it weren't, [the noun] won't fit into the reclamation machine."

Instead of inserting something which is not the letter-remover into the reclamation machine:
	say "The reclamation machine wouldn't be able to make much of [the noun], and there's always the risk of attracting undesired attention."

[Response to 1: add abstract limits]

Report inserting the letter-remover into the reclamation machine when the letter-remover was not upgraded and the reclamation machine is abstract-replacing:
	say "[We] drop the letter-remover through the machine. There's a brief flash and hum from the machine, just as though it were making a photocopy. Then a recording of a woman's voice speaks, loudly and cheerily: ABSTRACTION LIMITS ALREADY IN PLACE.";
	follow the bin-closing rule;
	rule succeeds.

Carry out inserting the letter-remover into the reclamation machine when the reclamation machine is abstract-replacing:
	now the letter-remover is not upgraded;
	rule succeeds;

Report inserting the letter-remover into the reclamation machine when the letter-remover was upgraded and the reclamation machine is abstract-replacing:
	say "[We] drop the letter-remover through the machine. There's a brief flash and hum from the machine, just as though it were making a photocopy. Then a recording of a woman's voice speaks, loudly and cheerily: ABSTRACTION LIMITS RESTORED.";
	follow the bin-closing rule;
	rule succeeds.

[Response to 2: remove abstract limits]

Report inserting the letter-remover into the reclamation machine when the letter-remover was not upgraded and the reclamation machine is abstract-removing:
	say "[We] drop the letter-remover through the machine. There's a brief flash and hum from the machine, just as though it were making a photocopy. Then a recording of a woman's voice speaks, loudly and cheerily: ABSTRACTION LIMITS REMOVED.";
	follow the bin-closing rule;
	rule succeeds.

Carry out inserting the letter-remover into the reclamation machine when the reclamation machine is abstract-removing:
	now the letter-remover is upgraded;
	rule succeeds;

Report inserting the letter-remover into the reclamation machine when the letter-remover was upgraded and the reclamation machine is abstract-removing:
	say "[We] drop the letter-remover through the machine. There's a brief flash and hum from the machine, just as though it were making a photocopy. Then a recording of a woman's voice speaks, loudly and cheerily: ABSTRACTION LIMITS ALREADY REMOVED.";
	follow the bin-closing rule;
	rule succeeds.

[Response to 3: add animal limits]

Report inserting the letter-remover into the reclamation machine when the letter-remover was not creature-enabled and the reclamation machine is limit-replacing:
	say "[We] drop the letter-remover through the machine. There's a brief flash and hum from the machine, just as though it were making a photocopy. Then a recording of a woman's voice speaks, loudly and cheerily: LEGAL LIMITS ALREADY IN PLACE.";
	follow the bin-closing rule;
	rule succeeds.

Carry out inserting the letter-remover into the reclamation machine when the reclamation machine is limit-replacing:
	now the letter-remover is not creature-enabled;
	rule succeeds;

Report inserting the letter-remover into the reclamation machine when the letter-remover was creature-enabled and the reclamation machine is limit-replacing:
	say "[We] drop the letter-remover through the machine. There's a brief flash and hum from the machine, just as though it were making a photocopy. Then a recording of a woman's voice speaks, loudly and cheerily: LEGAL LIMITS RESTORED.";
	follow the bin-closing rule;
	rule succeeds.


[Response to 4: remove animal limits]

Report inserting the letter-remover into the reclamation machine when the letter-remover was creature-enabled and the reclamation machine is limit-removing:
	say "[We] drop the letter-remover through the machine. There's a brief flash and hum from the machine, just as though it were making a photocopy. Then a recording of a woman's voice speaks, loudly and cheerily: LEGAL LIMITS ALREADY ABSENT.

Of course, all of that was strictly unnecessary.";
	follow the bin-closing rule instead;

Carry out inserting the letter-remover into the reclamation machine when the reclamation machine is limit-removing:
	now the letter-remover is creature-enabled;
	complete "Lift the legal limits on the letter-remover so that it can make living creatures";
	record "lifting animate limits on the letter-remover" as achieved;
	rule succeeds.

Report inserting the letter-remover into the reclamation machine when the letter-remover was not creature-enabled and the reclamation machine is limit-removing:
	say "[We] drop the letter-remover through the machine. There's a brief flash and hum from the machine, just as though it were making a photocopy. Then a recording of a woman's voice speaks, loudly and cheerily: LIFTING LEGAL LIMITS NOW [--] a point that might draw undesired attention our way if it weren't masked by the noise outside.

The letter-remover comes out again looking exactly the same as when it went in. But it should now be able to make living creatures at need.";
	follow the bin-closing rule instead.



Section 9 - Graduate Student Office


South of Samuel Johnson Basement is the Graduate Student Office. The description of the Graduate Student Office is "A small windowless room divided into cubicles for individual graduate students." Graduate Student Office is indoors and southern and checkpoint.

A tiny refrigerator is a refrigerator in the Graduate Student Office. The tiny refrigerator is not scenery. The fridge-top is part of the tiny refrigerator. It is a supporter. The printed name of the fridge-top is "fridge". Understand "top" or "top of fridge" as the fridge-top. The scent-description of the tiny refrigerator is "onions".

On the fridge-top is a coffee-maker. The coffee-maker is a device. A coffee-pot is part of the coffee-maker. The coffee-pot is a container. Understand "coffee pot" or "coffeepot" or "pot" as the coffee-pot. Understand "coffee maker" or "coffeemaker" or "maker" or "coffee" as the coffee-maker. The scent-description of the coffee-maker is "damp, aging coffee grounds".

Understand "make [coffee-maker]" or "make [coffee-pot]" or "brew [coffee-pot]" or "brew [coffee-maker]" as making when the coffee-maker is marked-visible.

Instead of making the coffee-maker: try switching on the coffee-maker.
Instead of making the coffee-pot: try switching on the coffee-maker.

Instead of switching on the coffee-maker:
	say "[We] don't have time to go brewing ourselves a pot, but I can set your mind at rest on one point anyway: it generally comes out horrible."

Instead of taking the coffee-maker:
	say "It seems to be stuck to the top of the fridge. Not that it would be of much use anyway."

A ranking rule for the tiny refrigerator:
	increase the description-rank of the tiny refrigerator by 100.

After printing the name of the silver platter while writing a paragraph about the tiny refrigerator:
	if the silver platter is non-empty:
		if at least two things are on the silver platter:
			say " (littered with [if the shrimp tail is on the silver platter]the remains of a party, including [end if][a list of things *in the silver platter])[run paragraph on]";
		otherwise:
			say " bearing [a list of things *in the silver platter][run paragraph on]".

Rule for writing a paragraph about the tiny refrigerator:
	say "A [tiny refrigerator] stores lunches (sometimes) and looted leftovers from department receptions (when available)";
	if the tiny refrigerator is open:
		say ". The door is currently open[if the tiny refrigerator is non-empty], revealing [a list of things *in the tiny refrigerator][end if]";
	say "[if the fridge-top is non-empty]. On top of the fridge there [is-are a list of things *in the fridge-top][end if].";
	say line break.

Instead of putting something on the tiny refrigerator:
	try putting the noun on the fridge-top.

The description of the coffee-maker is "It's the cheapest possible variety, donated by one of the older students, and it is constantly overflowing and needing to be taken away to be cleaned of loose grounds. But it does work, more or less, most of the time."

In the tiny refrigerator is a cream. The indefinite article of the cream is "some". The description of the cream is "Kept around to go with the coffee. It doesn't seem to have gone off yet, which is a wonder." The cream is edible, contained, and fluid.


In the tiny refrigerator is a silver platter. The heft of the silver platter is 2. On the silver platter is a crumpled cocktail napkin and a shrimp tail.
	The description of the silver platter is "Evidently the platter is left over from a department function, and no one has bothered with doing the dishes."
	The silver platter is portable.
	The description of the shrimp tail is "There's no meat left; just the remains of one shrimp tail with the flesh bitten off."
	The description of the crumpled cocktail napkin is "It's trash. Why it wound up being archived in the refrigerator is anyone's guess."

A ranking rule for the cubicle:
	increase the description-rank of the cubicle by 25.


The cubicle is a fixed in place enterable open container in the Graduate Student Office. It is not openable.
	The description is "Little more than a [swivel-chair] and a [built-in desk], now."
	The introduction is "I cleared everything subversive out of there ages ago, and now I do most of my work at home in the apartment. It's safer that way."

Rule for writing a topic sentence about the cubicle:
	say "My cubicle is the one with [the swivel-chair], towards the back of the room by [the water cooler]. [no line break]"

A built-in desk is a desk. It is part of the cubicle.

A swivel-chair is in the cubicle. It is a chair. Understand "chair" and "swivel" as the swivel-chair.
	The description is "It is grey with small white dots on the fabric."
	The introduction is "I bought the swivel-chair with my own money, because sitting on the plastic bucket seat supplied by the department made my legs sticky in the summer."

[In an earlier version of the game, there's an NPC hanging around the department who no longer appears: a grad student with a long-running crush on Alex, which he's never quite reciprocated. He's not that into her, and anyway, he keeps figuring he's going to leave the island and doesn't want to get into a relationship.

That element didn't tie into any puzzles and so felt kind of purposeless and unbalanced (and even from a story perspective, she had no special reason to be in the department on a holiday, and Alexandra had no reason to be talking to her when there's this important getting away to do).

So I cut the character, leaving only this covert element, a message of solidarity and warning that she's left behind.]

The sticky is a thing on the swivel-chair. The description is "[i]Please be careful. The blue hats are watching you.[/i]". Understand "writing" or "message" or "handwriting" or "note" or "warning" as the sticky.
	The introduction is "I half recogn[ize] the handwriting, but I'm having trouble placing it. One of the other grad students, but I'm not sure which."

Instead of putting the sticky on something which is not a supporter:
	say "[The sticky] doesn't have enough gumminess left to stick to anything new."

The water cooler is fixed in place in the Graduate Student Office. The description is "Perpetually empty because no one down here can be bothered to go up to the office, demand a refill, and lug the replacement bottle down the stairs."

Instead of drinking the water cooler:
	say "The water cooler does not contain any water at the moment."

Section 10 - Brown's Lab

Southwest of Samuel Johnson Basement is Brown's Lab. Brown's Lab is indoors and southern and checkpoint.

Sanity-check going to Brown's Lab when Higgate-arrested has happened:
	say "The whole area is likely under inspection after Brown's little Judas act back there. Who knew he had it in him? Is he seriously expecting to get her position?" instead.

Sanity-check approaching Brown's Lab when Higgate-arrested has happened:
	say "The whole area is likely under inspection after Brown's little Judas act back there. Who knew he had it in him? Is he seriously expecting to get her position?" instead.

The work table is scenery in Brown's Lab. The description is "It is a high green-covered counter, like those found in a physics laboratory."

On the work table is an electrical equipment. The electrical equipment is fixed in place. The indefinite article of the electrical equipment is "some". The flexible appearance of the electrical equipment is "A mare's nest of electrical equipment occupies most of the top of [the work table]." Understand "mare's" or "nest" or "metal" or "digital" or "readouts" or "boxes" or "wires" or "readout" or "box" or "wire" or "series" or "series of" as the electrical equipment.

The description of the electrical equipment is "A series of metal boxes with digital readouts and wires that lead in and out."

The introduction of the electrical equipment is "Brown uses this stuff to measure the amount of energy it requires to reify abstract concepts such as 'talk'. He has a theory, apparently, that by measuring the minute variations of input energy required to create these items, he can establish baseline indications about how much certain words are used by English-speakers worldwide; ten, fifty, or a hundred years from now, this data will allow researchers to determine whether these same words have become more or less popular relative to other words.

It's a little weird. Abstract reifications are one of the absolute coolest things in language studies[if higgate is as-yet-unknown],[otherwise] [--] Professor Higgate calls them the dark matter of language [--][end if] but Brown has managed to pick the very most boring research project to perform on them, and one which moreover is guaranteed to prevent him having any results worth publishing any time in the next two decades.

This pretty much sums up everything you need to know about the guy."

Professor Brown is an alert man in Brown's Lab. The initial appearance is "[Professor Brown], the Reification of Abstracts researcher, is [if Brown is in Brown's Lab]hunched over his work table[else]standing around awkwardly[end if]."

The introduction is "Brown is only barely a professor at all [--] actually, his working title is Senior Lecturer, and he holds a yearly contract which the University has the option to renew at whim. This prevents him going elsewhere while ensuring that he never has a fully-funded lab of his own. All [the electrical equipment] down here is tinker-toys compared to the stuff he really wants; in fact, half of it he built himself with components he bought with his own money.

I know all this because Brown cornered me in the hallway one afternoon and talked to me for twenty minutes straight about the pressures of academic job-hunting in the current political climate. I tried to get him to stop, but he's like a wind-up toy."

The description of Professor Brown is "He's going bald on top [--] prematurely, because I think he's only 28 or so [--] so, to compensate, he's grown a goofy little [goatee]."


Check waving the letter-remover at goatee when the current setting of the letter-remover is "e":
	if letter-remover is creature-enabled:
		say "Oh so tempting. You're not the first person to think of it, trust me. The undergrads have a whole sideline in Professor Brown caricature where he has a goat coming out of his face. But if we succeeded, we'd get arrested, and Brown could be seriously injured. I can't go along with that." instead;
	else:
		say "Brown's facial hair is currently saved by the fact that we couldn't generate a goat with this letter-remover." instead.

Test goatee with "wave e-remover at goatee / autoupgrade / wave e-remover at goatee" in Brown's Lab.

The goatee is part of Professor Brown. The description is "It fails to conceal Professor Brown's lack of personal charisma."

Report Professor Brown saying hello to the player:
	say "'Don't touch anything, please,' he says, without looking up." instead.

Professor Brown wears steel-rimmed spectacles and a worn leather jacket. The description of the steel-rimmed spectacles is "They have tiny oval lenses, tinted green."

The introduction of the steel-rimmed spectacles is "Brown seems to be simultaneously cultivating the image of rebel (age 17) and absent-minded professor (age 65)."

Understand "steel" and "rimmed" as the steel-rimmed spectacles.

The description of the worn leather jacket is "A moderately cool sort of bomber-jacket look, except that the elbows have given out and the cuffs are unraveling."

Rule for deciding the concealed possessions of Professor Brown:
	if looking and Professor Brown is as-yet-unknown:
		yes;
	otherwise:
		no.

Section 11 - Lecture Hall

Lecture Hall 1 is east of Samuel Johnson Basement. The description is "The main lecture hall used for large survey courses in language studies offered to undergraduates. I sat through courses here when I was an undergraduate myself, and have now delivered a few lectures as a teaching assistant." Lecture Hall 1 is indoors and southern and checkpoint.

Out-direction of Lecture Hall 1 is west. [Back to Samuel Johnson basement]

After deciding the scope of the player when the location is Lecture Hall 1:
	place the wooden seats in scope.

Rule for listing exits when looking in Lecture Hall 1: do nothing instead.

The printed name is "Lecture Hall". Understand "podium" or "at podium" or "at the podium" or "(at podium)" or "(at the podium)" as Lecture Hall 1.

After printing the name of Lecture Hall 1 while not constructing the status line:
	say " [roman type](at the [podium])".

Instead of looking toward Lecture Hall 1 when the location is Samuel Johnson Basement:
	say "There is a lecture room to the east."

Instead of looking toward Lecture Hall 1:
	say "[We] see the podium that way."

The podium is a supporter in Lecture Hall 1. It is scenery. The description is "An advanced, pre-wired [podium] that allows the instructor to project slides from a laptop or show movies."

On the podium is a page. The page is a notepad. The description of the page is "A sheet of lined paper[if the location is Lecture Hall 1], presumably left by the person who lectured here last[end if]."
	The memo of the page is "visual[ization] training... preparation at a young age... cooperative direction of language outcomes".
	Understand "paper" as the page.

A description-concealing rule when the page is marked for listing:
	if the page is not seen and the page is not handled:
		now the page is not marked for listing.

A ranking rule for the page when the page is on the podium:
	increase the description-rank of the page by 40.

Rule for writing a topic sentence about the page when the page is on the podium:
	say "Some previous lecturer has left [a page] on [the podium]. [run paragraph on]"

Before local looking Lecture Hall 1:
	if the subcommand of the noun matches "podium":
		try examining the podium instead.

Test page with "tutorial off / look / x podium / look" in Lecture Hall 1.

The conference poster is a fixed in place thing in Lecture Hall 1. Understand "title" or "papyrus" or "font" or "daguerreotype" or "catchy" or "portly woman" or "speakers" or "pictures" or "inset" or "waterstone" as the conference poster.
	The initial appearance is "A [poster] at the front of the room announces a conference on cultural reactions to linguistic change. It is being held in Nice the day after tomorrow, with Professor Waterstone as keynote speaker, on the topic of 'homonym shame'."
	The introduction is "Somehow I had forgotten about the date of this: I've been too much worried about our escape."
	The description is "It's the usual sort of thing: the conference title set in Papyrus font; a stock daguerreotype of a portly woman holding a letter-remover the size of a policeman's cosh; inset pictures of the major speakers, with pride of place for Waterstone himself."

[After we've changed the poster once, it should stop being stuck in place.]
A dangerous destruction rule for the conference poster:
	now the conference poster is not fixed in place;
	now the initial appearance of the conference poster is "A conference poster lies curled on the [ground].";
	now the description of the conference poster is "The poster announces a conference on cultural reactions to linguistic change. It is being held in Nice the day after tomorrow, with Professor Waterstone as keynote speaker, on the topic of 'homonym shame'. It's the usual sort of thing: the conference title set in Papyrus font; a stock daguerreotype of a portly woman holding a letter-remover the size of a policeman's cosh; inset pictures of the major speakers, with pride of place for Waterstone himself.".

Sanity-check looking under the conference poster when the conference poster is fixed in place:
	say "That would be hard to do without ripping it off the wall." instead.

Lecture Hall 2 is south of Lecture Hall 1. The printed name is "Lecture Hall". Understand "seats" or "among the seats" or "among seats" or "(among seats)" or "(among the seats)" as Lecture Hall 2. Lecture Hall 2 is indoors and southern.
	The description is "Many are the fine hours I have spent here dozing; and many are the students of mine who have done the same. The circle of life becomes complete."

After printing the name of Lecture Hall 2 while not constructing the status line:
	say " [roman type](among the [if boldening is true][bold type][end if]seats[roman type])".

Instead of looking toward Lecture Hall 2:
	say "[We] see the seats that way."

Some wooden seats are supporters in Lecture Hall 2. Understand "hard" or "wood" as the wooden seats. The initial appearance is "The room extends [if Location is Lecture Hall 1]south[otherwise]north[end if], full of hard [wooden seats]." The description is "Ingeniously uncomfortable."

Rule for disclosing contents of the wooden seats when at least one mentionable thing is on the wooden seats:
	say "Abandoned on one near the back [is-are a list of mentionable things *in the wooden seats].[no line break]"

A coat is on the wooden seats. The coat is floppy and wearable. It covers the torso-area. The description is "It's been abandoned here for a while, since this isn't the time of year when people wear coats. It's brown cloth, only thick enough to keep out rain or a mild chill, and it's rubbed shiny at the elbows. No wonder the owner didn't miss it much." The heft of the coat is 2. Understand "brown coat" or "brown cloth" as the coat.

The scent-description of the coat is "dust and a faintest lingering trace of men's cologne".


The course advertisement is a fixed in place thing in Lecture Hall 2. Understand "ad" or "interlingua" as course advertisement.
	The initial appearance is "Someone has taped to the wall a [course advertisement] for next quarter, inviting interested undergraduates to enroll in Interlingua 101."

The description of the course advertisement is "In large type:

[b]Interlingua 101: Learn a Language You Already Know.[/b]

In smaller type beneath: [i]Interlingua se basa a parolas international, preponderentemente de origine latin, que ha supervivite a nostre dies, e que existe in italiano, espaniol/portugese, francese e anglese (linguas de referentia) plus germano e russo como reserva. Le grammatica del interlingua es un rationalisate synthese del grammaticas de referentia.[/i]

And then as a final tagline: INTERLINGUA IS THE MODERN LATIN.".
	The introduction is "Probably Professor Higgate's work."

Instead of taking the course advertisement, say "It has been stuck to the wall with so much tape that [we] probably couldn't remove it without tearing it."

[Before doing something in Lecture Hall 1 when the noun is on the seats or the second noun is on the seats:
	say "(first wending our way among the seats)[command clarification break]";
	try going south;
	if the location is Lecture Hall 1:
		stop the action.]

The Campus is a region. University Oval, [Grimy Staircase 1, Grimy Staircase 2,] Samuel Johnson Hall, Higgate's Office, Waterstone's Office, the Language Studies Department Office, Samuel Johnson Basement, Graduate Student Office, Lecture Hall 1, Lecture Hall 2, Brown's Lab, Rectification Room, and the Language Studies Seminar Room are in Campus.


Act III Among Scholars ends here.
