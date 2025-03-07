Act II Among Smugglers by Counterfeit Monkey begins here.

Use authorial modesty.


Book 2 - Act II Among Smugglers

Part 1 - Secrets and Concealments

Chapter 1 - The Fish Area

Section 1 - Deep Street

[The mixed architecture of Deep Street is an echo of the dreamlike buildings I once saw in the French seaside town of Cerbère, on the Mediterranean just across the border from Spain.]

Deep Street is a proper-named checkpoint road. The description is "This road descends steeply from [southwest] to [northwest], passing between [white concrete buildings] to provide access to the marina [--] the Fish Market, the Docks, and a bar or two. The street is in deep shadow, protected from sunlight from almost any angle by its narrowness and by the height of the walls."

In-direction of Deep Street is east. [Into the bookstore]

Instead of going southeast in Deep Street:
	say "The [Post Office] is of course shut down for the holiday."

The Post Office is a facade in Deep Street. It fronts southeast. It is scenery. Understand "postoffice" as the Post Office. The description is "Postal service on the island is easy [--] no one lives very far from anyone else, after all [--] but very necessary considering the limited uses of internet and telephones. This building is the one in which mail from the outside world is processed before being sent on, and is consequently a bit grander than most."

The convenience store is a facade in Deep Street. It fronts northeast. It is scenery. Understand "shop" or "grocery" as the convenience store. The description is "During normal business hours, it sells the usual assortment: sandwiches, cold drinks, bus tickets, recharge packets for letter tools, disposable cameras. Currently it is shut, however."

Instead of finding the convenience store when the subcommand of the convenience store matches "convenience":
	try approaching Public Convenience.

The white concrete buildings are scenery in Deep Street. Instead of entering the white concrete buildings, say "They're all private apartments, run down but nevertheless expensive on the grounds of location alone." The description of the white concrete buildings is "Each has its [balcony] and its [laundry] flapping on clothes lines; but there the uniformity ends. Some are decorated in a curious fantasia of [painted Moorish patterns]; others a daring kind of art nouveau, all organic curves and windows that glance out under lowered concrete lids."

The painted Moorish patterns are part of the white concrete buildings. The description is "Black, gold, rose and red, they mark out arches and stripe eaves."

The balcony is part of the white concrete buildings. Understand "balconies" as the balcony. Instead of climbing the balcony, say "The lowest is still many feet above the sidewalk level." The description of the balcony is "Many are rounded, like boxes at the opera."

The laundry is part of the balcony. The description is "Mostly bleached t-shirts and underpants and the odd sheet pinned to a line." Understand "clothes" or "lines" or "line" or "underpants" or "odd" or "sheet" or "t-shirts" or "bleached" as the laundry.



	[say "Then [we] turn south across a lane of traffic. One guy honks and another makes a gesture that doesn't actually apply to us in our current anatomy. There are protesters here, too [--] lots of them.

As we move down the street, we can see police with riot gear starting to cut off side exits, containing the protest.

A woman on the curb bangs on the hood of our car. 'You! You're guilty!' she says, pointing at us.

I nearly have a heart attack, but she pulls back. 'We are [i]all[/i] guilty!' shouts the voice. 'If we really objected to what is done in our name, we would storm the Bureau[--]'";
	custom-wait for any key;
	say "[paragraph break]There's a bright light and a catastrophic bang and world goes eerily silent. The protesters are gone. The cars on the street are still moving, slowly.

A policeman in blue is cuffing a single old woman in a Not Guilty shirt. Her eyes meet ours. They're wild with fury and fear and simple madness.

And that, my friend, is why civil disobedience doesn't tend to work around here. We've just seen a depluralization.";
	remove protesters from play;
	custom-wait for any key. ]


Deep Street is northeast of Roundabout.

A description-concealing rule:
	if Counterfeit Monkey is unvisited:
		now aquarium-exterior is not marked for listing.

aquarium-exterior is a facade in Deep Street. It fronts east. The printed name is "Aquarium Bookstore". Understand "aquarium" or "shop" or "window" or "bookstore" or "store" as aquarium-exterior. The initial appearance is "[if boldening is true][bold type][end if]The Aquarium Bookstore[roman type] is to the east." The introduction is "It is an esoteric bookstore (and purveyor of other things), but one whose owner has helped you in the past[if the player knows lena-needed and aquarium is not visited]. That would be Lena, the woman that [we] need to talk to about Slango[end if]."
	The description is "[if Aquarium is visited]The outside manages to give an impression of poverty, gloom, and probable drug use; though, having seen the inside, I am going to guess that the real issues are sloth and kookiness[otherwise]I've never been inside the Aquarium: the outside never looked terribly savory. Perhaps that's the point[end if]."

Rule for writing a topic sentence about aquarium-exterior when aquarium-exterior is not as-yet-unknown:
	say "[if boldening is true][bold type][end if]The Aquarium Bookstore[roman type] is to the east. [if aquarium-closed-sign is in location]There's a closed sign in the window and a forbidding atmosphere[otherwise]It's dim inside, but occasional movements suggest that the proprietor, Slango's friend Lena, is inside[end if]. "

A ranking rule when aquarium-exterior is not as-yet-unknown and Aquarium is visited and a car (called target) is in the location:
	increase description-rank of the target by 20.

Rule for writing a topic sentence about a car (called target car) when the location is Deep Street and Aquarium is visited and aquarium-exterior is not as-yet-unknown and aquarium-exterior is mentionable:
	let N be the number of cars in location;
	if N is greater than 1:
		say "Our pathetic little cars are parked right outside [the aquarium-exterior]. ";
		now every car in location is mentioned;
	otherwise:
		say "Our pathetic little [target car] is parked right outside [the aquarium-exterior]. "

Instead of searching aquarium-exterior:
	if the aquarium-closed-sign is marked-visible:
		say "Now that the shade is down, it's impossible to see inside.";
	otherwise:
		say "The interior of the shop is so much dimmer than the outside that it's hard to get a good look inside, but from the occasional signs of movement, I think Slango's friend Lena is in there."

Before going to the Aquarium when the Counterfeit Monkey is unvisited:
	say "I'm sure that would be interesting under other circumstances, but [we] have an appointment to keep." instead.

Before approaching the Aquarium when the Counterfeit Monkey is unvisited:
	say "I'm sure that would be interesting under other circumstances, but [we] have an appointment to keep." instead.

Before going to the Aquarium when the aquarium-closed-sign is part of the aquarium-exterior:
	let N be the number of entries in the path so far of the player;
	if N is greater than 1:
		say "[path-walked so far]";
	otherwise:
		clear the path-walked for the player;
	say "[rejection-from-aquarium]" instead.

To say rejection-from-aquarium:
	say "[one of]Lena has rolled down the shades and put up the closed sign.[or]I try tapping on the door, but Lena calls from inside, 'Go away, we're closed!'[or]'I'm napping!' yells Lena from an upper room. 'Go away!'[or][We] knock again. No good.[stopping]"

The aquarium-closed-sign is a privately-named thing. The printed name is "closed sign". Understand "closed" or "sign" or "shades" or "shade" or "red" or "placard" or "white lettering" or "lettering" as the aquarium-closed-sign. The description is "The shades have been rolled down over the Aquarium window, and a red placard with white lettering announces that the shop is closed."

After going from the Aquarium when Slango is in the Counterfeit Monkey:
	say "'This would be a good time to stop for lunch and a little siesta,' says Lena, following us to the door. As we go out, she's rolling down the shades and putting up a closed sign.";
	move the single ream to the repository;
	move the odes-book to the repository; [The ream object actually does double-duty and will reappear when we need to fix the printer.]
	now the single ream is not seen;
	now the single ream is not handled;
	now the single ream is not examined;
	now the single ream is not disguised;
	now the aquarium-closed-sign is part of the aquarium-exterior;
	continue the action.

Section 2 - The Aquarium

The Aquarium Bookstore is east of Deep Street. It is a privately-controlled proper-named checkpoint room. It is indoors. The description is "The shop takes its name from the [collection of fish] mounted on every wall: swordfish, bass, other things I don't recogn[ize]. Underneath these dubious tokens, the walls are covered with bookshelves, and there are stacks of books on the floor where the shelves have proven insufficient."

The aquarium-shelving is scenery in the aquarium. Understand "shelves" or "bookshelves" or "shelving" as the aquarium-shelving. The printed name is "shelving". The description is "They're completely crammed with books."

The collection of fish is scenery in the Aquarium. Understand "swordfish" or "bass" as the collection of fish. The description is "None of the fish has been dusted in the last decade. The collection presents a slightly mournful air."

Out-direction of Aquarium Bookstore is west. [Deep Street]

After reading a command when location is The Aquarium Bookstore (this is the replace books with book rule):
	while the player's command includes "books":
		replace the matched text with "book".

Understand "browse [merchandise]" as searching.

Test merch with "browse / browse merchandise / x merchandise / look at merchandise / g / g / g" in Aquarium bookstore.

Instead of searching the aquarium-shelving:
	try examining the merchandise.

A ranking rule for the merchandise:
	increase the description-rank of the merchandise by 50.

The merchandise is fixed in place in the aquarium. The initial appearance is "The merchandise consists mainly, but not exclusively, of [if boldening is true][bold type][end if]books[roman type], and the selection caters to odd tastes."
	The introduction is "You once picked up in here a book about a man who R-removed a wrench, and then had his way with it. You and Brock had a good time with that one for the next month and a half."
	Understand "books" or "book" or "stack" or "stacks" or "grandfather clock" or "grandfather" or "his gray lover" or "seventy ways to disable an authentication scope" or "ways to disable" or "seventy" or "stack/stacks of books" as the merchandise.
	The description is "Our eyes scan over the merchandise and pick out [one of][a random thing which is part of the merchandise][or][a random number between 2 and 7 in words] copies of [a random thing which is part of the merchandise][at random][one of][or] inexplicably filed under '[one-genre]'[as decreasingly likely outcomes]."

Instead of searching the merchandise, try examining the merchandise.

[ The books at the shop exist to partially explain, justify, and lightly hint other aspects of the game world. I don't anticipate that all players will have sufficient interest to look at all of them, but someone who is bored or stuck or just a thorough explorer may do so.

The Ba's Journey hints that the word "ba" is known in Atlantis, so the BALL > BA > BAT chain is possible. Quagmire Manifesto explains a bit of the background for the film reel easter egg. Indian Summer and The Queen's English hint at the almost sexual fascination some Atlanteans have with foreign words.

Pat and Chris drops in a bit of Atlantean sexual politics that there otherwise isn't a great deal of space to explore, namely that people tend to be more open to gender reassignment because it can be done so cheaply and reversibly with Atlantean technology. While Alex personally is uncomfortable being manifested in a female body, the idea is not as culturally alien to him as it might be to many others.

Dyslexic Coalition reflects some of the downside: learning disabilities that might be regarded purely as a misfortune in another culture are more strongly and unsympathetically stigmatized in Atlantis. ]

Ba's Journey is a book. It is part of the merchandise. The description is "This is a bit of popular new age self-help from the early 80s, combining Atlantean mystical ideas about Egypt with modern popular psychology to create an allegory about the formation and development of the person over the course of a lifetime."

Quagmire Manifesto is a book. It is part of the merchandise. The description is "Written by the implausibly-named Lucius Quagmire, the Manifesto suggests film-making, especially wordless or foreign-language film-making, as a route to undermining the Anglophone hegemony and 'restoring Atlantis to the community of the world.' It's full of stuff about 'disrupting the simple significance of words' by building up complex and multivalent metaphorical associations; connotation as more powerful than denotation; thought as triumphant over word."

The Queen's English is a book. It is proper-named. It is part of the merchandise. The description is "It's a history of the subversive community on Atlantis who resisted adopting Webster's reforms and continued to promote traditional British spelling on the island even up to the beginning of the 20th century.

A cursory examination shows that the book's previous owner went through with a highlighter and tinted pink all the British spelling examples."

Pat-Chris is a book. It is part of the merchandise. The printed name is "Pat and Chris and the Homonym Paddle". Understand "Pat" or "Chris" or "and" or "the" or "homonym" or "paddle" as Pat-chris.
	The description is "A dog-eared old classic of Atlantean transgender literature, in which the protagonists try out the combinatorics of gender identities. Four decades on, it reads as pure camp, but it speaks (if clumsily) to an era where these things were still surprising."

Dyslexic Coalition is a book. It is part of the merchandise. The description is "It's a handbook and guide for people struggling with dyslexia and their families and friends who may be affected."

[The concept and text of Indian Summer are Graham's; he felt there needed to be a little more linguistic seediness about the dock areas.]

Indian Summer is part of the merchandise. It is a book. The description is "It's one of those risqué novels full of loan words. Example:

[i]Glowing, Jocasta peeled off her jodhpurs, donned pajamas, and strode out onto the verandah for a tiffin. The polo match at the gymkhana, now in full swing, overpowered her, and she mopped her brow with a calico bandanna. 'I am just perfectly doolally this afternoon,' she murmured, licking her lips as she admired the riders forming up for first chukka.

She hardly minded the little bandicoot's chicanery, the jar of chutney upended all over the teapoy. It had gone in the kedgeree, it had gone in the mulligatawny. 'You little thug,' Jocasta whispered, 'now I'll have to shampoo my crimson pashmina,' but she fed him some candy, then fondly watched him crash through the banyan like a juggernaut, dodging an anaconda. There was a crack! as the Earl of Arbroathshire, a captain in the 51st Lancers, swung his mallet. 'Oh my swami, my guru,' sang Jocasta to herself, dreaming of her bungalow up-country where once he...[/i]

Sorry, I have to stop. This is making me a little uncomfortable."

Instead of taking something which is part of the merchandise:
	say "This is assuredly not the time for a little light shopping.".

Instead of pushing or pulling or turning the merchandise:
	say "[We] nudge one of the nearest stacks until it is more neatly arranged against the shelf. Less likely to fall over that way."

The contraband box is a container. The contraband box contains some modems and some preamps. The description of the contraband box is "It's just a cardboard box in which some items of interest have been stored."
	The introduction is "Lena apparently wants our help getting them into a less identifiable format."

The description of the preamps is "They aren't in themselves restricted technology, but Atlantean government slaps a very high tariff on any kind of electronic device not manufactured on the island. This is especially annoying and needless in the case of audio equipment for which there is no local manufacturer."

The description of the modems is "If Brock were here, he would know exactly what made these interesting and valuable. All you can guess is that they're not a form approved by the government."

Section 3 - Lena

Lena is an alert woman in the Aquarium. The initial appearance is "[one of][Lena] is present, all right. In fact she watches us keenly the instant [we] come into the shop.[or][Lena] hovers, unwilling to let us look around ungoverned[if the contraband box is in location and the contraband box is non-empty]. At her feet is [a contraband box] containing [a list of things *in the contraband box][end if].[stopping]".
	The introduction is "[Lena] is an associate of Slango's. You hadn't realized that had crossed over into a romance. Slango has never, ever in your recollection dated anyone. And now this."
	The description is "She has grey hair in a curly cloud around her head, and she wears a [long patchwork skirt] and [leather sandals]. But her eyes are keen."
	Lena wears a long patchwork skirt and some leather sandals. The description of the leather sandals is "The sort of sturdy comfortable sandals one can walk in for hours."
	The description of the long patchwork skirt is "It falls to Lena's ankles even though it has been rolled over several times at the waistband. The fabric is mostly scraps of silver and grey and dark blue, but there are here and there some odd sports in other col[our]s." Understand "fabric" or "scraps" or "silver" or "grey" or "blue" or "dark blue" or "waistband" or "waist" or "ankles" as the long patchwork skirt.

Rule for deciding the concealed possessions of Lena:
	if looking:
		yes;
	otherwise:
		no.

Instead of putting the restoration gel on the odes-book in the presence of Lena:
	say "'Hey,' she says. 'I like that how it is.'"

Instead of putting the restoration gel on the ream in the presence of Lena:
	say "'No, leave that,' she says. 'That's a good disguise.'"

Carry out putting the restoration gel on something disguisable in the presence of Lena:
	casually queue back-to-start.

Definition: a thing is disguisable:
	if it is the modems:
		yes;
	if it is the preamps:
		yes;
	if it is proffered by the modems:
		yes;
	if it is proffered by the preamps:
		yes;
	no.

Instead of taking the contraband box:
	say "I don't think her plans for that included our stealing it."

Instead of taking something disguisable:
	say "'You can't have [the noun],' Lena says. 'Just do whatever you think needs doing to... improve [them] a bit.'"

Instead of putting the paste on something in the presence of Lena:
	say "[We] smear some of [the paste] onto [the second noun]. Nothing obvious happens, of course, but that is the whole point.";
	now the second noun is disguised;
	casually queue excellent-work.

Section 4 - The Fish Market

[Inspired by a similar area in Marseilles and a few images from Nice.]

The Fish Market is northwest of Deep Street. It is checkpoint. The description is "Not very fishy at the moment, in fact: all the real trade happens in the early morning; then there is a period of tourist trade when the seafood sale tails off and most of the purchases are of polished conch shells and starfish; and then a little after noon the area clears out completely, leaving only briny rivulets on the concrete."

Rule for listing exits when the location is Fish Market and the Authenticator is in the location:
	do nothing instead.

In-direction of Fish Market is east. [Tin hut]

After going to Fish Market when the authenticator is in Fish Market and the player is hurrying:
	let N be the number of entries in the path so far of the player;
	if N is greater than 1:
		say "[path-walked so far][line break]";
	otherwise:
		clear the path-walked for the player;
	unless final destination is Fish Market:
		now approach-destination is Samuel Johnson Hall; [make it seem like we haven't made progress, if approaching.]
	[try going east.]

[Definition: a thing is problematic:
	if it is illegal:
		yes;
	if it is proffered by an illegal thing:
		yes;
	no.]

Breath-caught is a truth state that varies.

A last carry out looking rule when the location is Tin Hut:
	unless breath-caught is true:
		let L be a list of things;
		repeat with evidence running through things enclosed by the player:
			if the evidence is illegal and the evidence is not enclosed by a closed backpack:
				add evidence to L;
		let N be "[L with definite articles]";
		if the number of entries in L is positive:
			replace the text "[the entry 1 of L]" in N with "[The entry 1 of L]";
		say "We catch our breath and look over our belongings to see if anything suspicious is showing[if the number of entries in L is 0]. Actually, we look innocent enough[otherwise]. [N] might be a little too conspicuous[end if].";
		now breath-caught is true.

Sanity-check dropping secret-plans in the Tin Hut:
	say "It doesn't feel safe leaving the plans here even for a short period." instead.

Sanity-check dropping an illegal thing in the Tin Hut when the Authenticator is in Fish Market:
	say "It doesn't feel safe leaving [the noun] here even for a short period." instead.

Sanity-check propping the trap-door with an illegal thing which is not the secret-plans when the Authenticator is in Fish Market:
	say "It doesn't feel safe leaving [the second noun] here even for a short period." instead.

Sanity-check inserting an illegal thing into something when the Authenticator is in Fish Market:
	if the second noun is the trap-door or the second noun is the tarpaulin-covered masses:
		say "It doesn't feel safe leaving [the noun] here even for a short period." instead.

Understand "put [an illegal thing] under [trap-door]" as a mistake ("It doesn't feel safe leaving [the noun] here even for a short period.") when the Authenticator is in Fish Market.

Understand "put [an illegal thing] under [tarpaulin-covered masses]" as a mistake ("It doesn't feel safe leaving [the noun] here even for a short period.") when the Authenticator is in Fish Market.

Instead of looking under the trap-door:
	try opening the trap-door.

Test tinhut with "tutorial off / unlegend / nw / e / drop plans / w / wave l-remover at plans / wave s-remover at plan" in Deep Street holding the secret-plans.

[Was: To the Fish Market. Broke Test2.]
Check going west from the Tin Hut:
	if the Authenticator is not in Fish Market:
		continue the action;
	let L be a list of things;
	repeat with evidence running through things enclosed by the player:
		if the evidence is illegal and the evidence is not enclosed by a closed backpack:
			add evidence to L;
	if the number of entries in L is positive:
		say "I don't think [we] want to show off [L with definite articles] around the Authenticator." instead;
	now the Authenticator is nowhere;
	if the player is on the tarpaulin-covered masses:
		silently try exiting;
	say "I don't think there's anything showing that should get us into trouble. Timidly [we] open the door; the Authenticator has her back to us. [We] slip out. She makes one more turn in place [--] monocled gaze sliding across us without stopping [--] and then she strides away to the north.";

The storage-exterior is in the Fish Market. The printed name is "tin building". Understand "tin" or "hut" or "building" or "rusting" or "corrugated" as storage-exterior. It fronts east. The initial appearance is "Just east of here is a rusting corrugated tin building, which was built to house various possessions of the fishermen."
	The description is "It looks very much as though it would like to fall down, but it has not done so yet."

Sanity-check doing something other than acting fast when the Authenticator is in location:
	if going east:
		make no decision;
	otherwise if going inside:
		make no decision;
	otherwise if approaching the tin hut:
		make no decision;
	otherwise:
		if authenticator-warning is true:
			if waiting:
				make no decision;
			say "The movement catches her attention. She stares at us for a long moment. I have a moment's hope she's going to look away again, but something we're wearing or carrying tips her off. A moment later and she's signalled a backup officer to detain us.";
			end the story saying "The subsequent attention is not enjoyable";
		otherwise:
			now authenticator-warning is true;
			if going a direction:
				say "You assess the distance and work out that there's too much open space between us and cover if we head [noun]. The tin hut to the east is the only real option." instead;
			otherwise:
				say "This is too dangerous [--] [we][']ve got to get under cover before she sees us." instead.

Authenticator-warning is a truth state that varies.

Before going east in the presence of the Authenticator:
	say "While the Authenticator's back is turned, we slip inside..."

The concrete floor is scenery in the Fish Market. Some briny rivulets are part of the concrete floor. The description of the rivulets is "Run-off from the ice on which the fish were shown, this morning."


Check waving the letter-remover at the briny rivulets when the current setting of the letter-remover is "s":
	say "The letter-remover has a go, and for a moment the rivulets turn into a single, unified trickle. But the ground is so uneven that soon the liquid has diverged again into multiple rivulets. Some things can only be cleaned up the old-fashioned way, but fortunately this one isn't really our problem." instead


The Authenticator is a woman in Fish Market. Understand "tall" or "stern" or "woman" or "uniform" or "black" or "caped" as the Authenticator. The initial appearance is "A tall, stern [if boldening is true][bold type][end if]woman[roman type] is standing in the middle of the market. She wears the black caped uniform of an Authenticator, and a monocle just like mine. And I don't think I want her to see us." The description of the Authenticator is "She isn't looking our way yet, but she will be any minute now."


Section 5 - Outdoor Cafe

The Outdoor Cafe is south of the Fish Market and west of Deep Street. It is improper-named. The printed name is "Outdoor Café". The description is "From this slightly raised terrace, tourists have a view of the activity in the market and out over the docks[one of][or]. The street is [east], the Fish Market [north][stopping]."

The rocky cliff-face is a scenery facade in Outdoor Cafe. It fronts south. Understand "cliff" or "rocks" or "face" as the rocky cliff-face. The description is "This little terrace area has been carved out of the hillside. Immediately to the south there is only rough rock wall for many feet up."
	The closure notice is "That way is bare cliff rock. ".

In-direction of Outdoor Cafe is west. [Into the café building (facade)]

The cafe building is a scenery facade in Outdoor Cafe. It fronts west. The printed name is "café building". Understand "café" as the cafe building. The description is "The source of drinks and small snacks when the café is in full operation. At the moment there isn't much sign of life from inside." The closure notice of the cafe building is "The place is entirely closed now. "

Instead of going west in Outdoor Cafe when traffic circle is not visited:
	say "When we approach, a girl comes to the window and waves us off. 'We're just closing up. No new customers!'".

Some round black metal tables are supporters in the outdoor cafe.
	The initial appearance is "Several [round black metal tables] have been set out, with [umbrellas]."
	The description is "The wobbly, tipsy kind of table that jog at a touch and spill your coffee everywhere.".
	Understand "table" as the round black metal tables.

Nexami Engeo is an alert man. Understand "Nex" as Nexami Engeo.
	The description is "A big man, both tall and stout. He hasn't reached overweight yet, but it looks like a matter of time. He's wearing [a list of things *in Nexami]."
	The introduction is "He's a musician, the front man of engeo. Your gang helped him out with some customs issues because of his unusual name."
	He wears a rocker jacket and jeans.
	The description of the rocker jacket is "It's black leather. It might make the wearer look fierce if he didn't have such a round dimpled face."
	The description of the jeans is "Blue. Ordinary cut. I'm not really an expert in fashion."

Rule for deciding the concealed possessions of Nexami:
	if looking:
		yes;
	otherwise:
		no.

Rule for writing a paragraph about Nexami when Nexami is not as-yet-unknown:
	carry out the writing a topic sentence about activity with Nexami;
	carry out the giving-surrounding-details-for activity with Nexami;
	now the rocker jacket is mentioned;
	now the jeans are mentioned;
	now held-break is true;
	say "[run paragraph on]";

Rule for writing a topic sentence about Nexami Engeo:
	say "[one of]Curiously, there's an acquaintance of yours here: [or][stopping][Nexami Engeo] is at one of the [round black tables]. [run paragraph on]"

The wire chair is a chair in the outdoor cafe. On the wire chair is Nexami.

Check waving the letter-remover at the wire chair when Nexami is on the wire chair:
		say "If we change the chair while Nexami is sitting on it, he might disappear along with it. Let's not do that." instead.

Check waving the letter-remover at the wire chair when the current setting of the letter-remover is "c":
	say "The waitstaff would certainly notice." instead.

A spill is on the round black tables. It is fluid scenery. The flexible appearance is "There's [a spill] [if the spill is in the location]on the [ground][otherwise][in-on the holder of the spill][end if]." The description is "It looks like a quantity of red wine, just waiting to stain some vulnerable bit of clothing."

Report Nexami saying hello to the player for the first time:
	now the spill is not scenery;
	say "Nexami nods to us. 'Watch out. That table next to you has something sticky spilled on it.' And indeed there is a [spill]. You were about to lean on it nonchalantly." instead.

Nexami-encounter is a scene. Nexami-encounter begins when Nexami is the current interlocutor. Nexami-encounter ends in abandonment when Nexami is not the current interlocutor. Nexami-encounter ends in departure when the time since Nexami-encounter began is greater than one minute.

When Nexami-encounter ends in departure:
	say "[if the prior named object is Nexami]He[otherwise]Nexami[end if] stands up and mutters something. I have a little trouble with his Scottish accent [--] [we] don't get a lot of that around here, for obvious reasons [--] but you interpret it as him saying he'd better go pay up.

He heads into the interior of the café.";
	now Nexami is nowhere;
	reset the interlocutor.

Instead of touching or rubbing the spill:
	say "Better not to get it on ourselves."

Instead of taking the spill:
	say "It's not the kind of thing [we] can just pick up and carry away."

Rule for disclosing contents of the round black metal tables when the round black metal tables support the spill:
	say "Someone has left [a spill] on [if Nexami is not on the wire chair]one of the tables[otherwise]another[end if][if the round black metal tables support a mentionable thing], nearly touching [the list of mentionable things *in the round black metal tables][end if].[run paragraph on]".

[The introduction of Outdoor Cafe is "It is here that you and I first met: me drinking my coffee, you with an austere cup of herbal tea. I enjoyed that meeting, but somehow I am uncomfortable being here, as though [we] might be recognized as the couple from earlier. Ludicrous, I know. You're calm." ]

Rule for listing exits when looking in Outdoor Cafe:
	do nothing instead.

Instead of touching the round black metal tables: say "The table wobbles under our fingers."

Some umbrellas are part of the round black metal tables. The description of the umbrellas is "They carry advertisements for brands of liqueur and beer." Understand "umbrella" as umbrellas. The umbrellas can be open or closed. The umbrellas are open. Instead of closing the umbrellas, say "They are meant as protection against the sunlight, and might [we] not draw notice from the waitstaff if [we] messed with them?" Instead of opening the umbrellas, say "They are already open."

Check waving the letter-remover at the umbrellas when the current setting of the letter-remover is "s":
	say "The waitstaff would certainly notice." instead

[Before going to the Tin Hut when the Counterfeit Monkey is unvisited:
	say "I'm sure that would be interesting under other circumstances, but we have an appointment to keep." instead.

Before approaching the Tin Hut when the Counterfeit Monkey is unvisited:
	say "I'm sure that would be interesting under other circumstances, but we have an appointment to keep." instead. ]

Section 6 - Tin Hut

The Tin Hut is east of the Fish Market. It is indoors and checkpoint. The description is "Most of the light in here comes from [circular windows] punched into the tin walls just under the ceiling. From the inside, the building looks both larger and more sound than it appears from outside: there are plenty of sturdy [struts] supporting the roof and keeping the walls upright."
	The introduction is "Sometimes smugglers and forgers have been known to stash things in here, since the building is close to the docks but rarely attracts the interest of customs officials."

Out-direction of Tin Hut is west. [Out to fish market]
In-direction of Tin Hut is down. [Into the crawlspace]

Understand "hide [text]" as a mistake ("[if the location is the Tin Hut and the Authenticator is in the Fish Market]A natural impulse, but I don't think she's coming in here. And if she did, the last thing [we][']d want would be to be caught hiding. The key thing is to be in plain sight and obviously innocent.[otherwise]How?").

Understand "hide" as a mistake ("[if the location is the Tin Hut and the Authenticator is in the Fish Market]A natural impulse, but I don't think she's coming in here. And if she did, the last thing [we][']d want would be to be caught hiding. The key thing is to be in plain sight and obviously innocent.[otherwise]How?").

Rule for listing exits while looking in the tin hut:
	do nothing instead.

Some tarpaulin-covered masses are an enterable supporter in Tin Hut. They are fixed in place. The initial appearance is "Various [tarpaulin-covered masses] fill the room." The description is "From the shapes visible under the blue plastic, it appears that they are probably tables and stalls, buckets, signs, and other necessary features of the fish market when sales are in progress. There's a flattish area [if the player is on the tarpaulin-covered masses]where we are currently standing[otherwise]we could probably scramble onto[end if]." Understand "tarpaulin" or "tarp" or "tarps" or "tables" or "stalls" or "awnings" or "signs" or "buckets" or "table" or "stall" or "awning" or "bucket" or "flattish" or "area" as the masses.

The masses allow seated, standing, and reclining. The posture of the masses is standing.

Test massesbug with "x masses / stand on masses / climb on masses" in Tin Hut.
Test areabug with "jump onto flattish area / scramble onto flattish area / go to flattish area" in the Tin Hut.

Understand "jump onto/on/into/in [something]" as entering.
Understand "scramble onto/on/into/in [something]" as climbing.

Sanity-check approaching the masses:
	try entering the masses instead.

Sanity-check climbing the masses:
	try entering the masses instead.

Report entering the masses:
	say "[We] identify the sturdiest-looking part of the construction and clamber onto it." instead.

Instead of taking the masses:
	say "It all looks fairly heavy, but not useful. Also, and I real[ize] this weighs more with me than with you, I think the people who own it might mind the loss."

Instead of searching or looking under the masses:
	say "[one of]Lifting the edges of the nearest tarps confirms what [we] already suspected: they[or]They[stopping] are various tables, stalls, awnings, etc. belonging to the fish market."

Some circular windows are scenery in Tin Hut. The initial appearance is "The windows admit diffuse light only."
	Understand "sky" or "ellipse" or "window" or "ellipse of sky" as the circular windows.

Every turn when the Authenticator is in the Fish Market and the location is Tin Hut:
	if a random chance of 1 in 3 succeeds:
		say "[one of]Ominous sounds come through the windows, but we're at the wrong angle to see out[or]More racket comes in through the windows[stopping].".

Instead of entering or climbing the circular windows, say "Even if they were low enough to reach, each one has a hand's-breath diameter. At best [we] might be able to see through them."

The Authenticator has a number called patience. The patience of the Authenticator is 3.

Instead of searching the circular windows:
	if the player is on the masses:
		decrement the patience of the Authenticator;
		if the patience of the Authenticator is 0:
			now the Authenticator is nowhere;
		say "[We] put an eye to one of the windows. ";
		if the Authenticator is in Fish Market:
			say "[one of]The Authenticator is still in sight. Two assistants are in the middle of arresting a man for selling germ-based gems, but she is ignoring this play and looking for something or someone else[or]The Authenticator is still out there, looking for something[or]The Authenticator is crossing the market in this direction, but she's not looking straight at us, at least[stopping]." instead;
		otherwise:
			say "The coast looks clear. No one from the Customs House is doing a sweep at the moment." instead;
	say "At this angle, there is nothing to see but an ellipse of sky."

The struts are scenery in Tin Hut. Understand "strut" or "roof" or "wall" or "walls" or "tin" or "corrugated" as the struts. The description is "The struts form a dull but sturdy lattice of metal, supporting the corrugated metal roof and walls."

Instead of attacking the struts:
	say "When struck, the metal booms hollowly, but nothing happens."

The trap-door is a door. It is below the Tin Hut. The initial appearance is "A [trap-door] is set in the floor[if something wedges the trap-door], propped by [a random thing which wedges the trap-door][end if]." The printed name is "trap door". Understand "trap" or "door" or "trapdoor" or "hinge" or "hinges" or "hinging" or "mechanism" as the trap-door. The description is "It is a wooden door set into the floor. The hinging mechanism is designed to keep the door closed if possible, perhaps as a safety feature so that people won't fall into an open hole."

Rule for writing a paragraph about the trap-door when the location is the Crawlspace:
	say "[The trap-door], wedged open by [a random thing which wedges the trap-door], admits the only light.";
	if there is a mentionable thing in location:
		say line break.

Every turn when the trap-door is open and the trap-door is not wedged by something:
	now the trap-door is closed;
	if the location is the Crawlspace or the location is the Tin Hut:
		say "The trap-door makes a creaking noise and slams shut again";
		if the player is in the Crawlspace:
			say ". I DO NOT LIKE being in the dark in a confined space with potential rats. Sorry, I'm getting us out of here. You can come back later.";
			custom-wait for any key;
			try going up;
		otherwise if Crawlspace is not visited:
			say ". They must prop it open when they use it.";
		otherwise:
			say "."

Instead of going to the Crawlspace when the Crawlspace is visited and the trap-door is not wedged by something:
	say "Let's wait to explore down there until [we] can make sure the trap door won't slam on us."

Before going down when the player is on the tarpaulin-covered masses:
	try exiting instead.

Before closing a door which is wedged by something (called the impediment):
	say "(first removing [the impediment])[command clarification break]";
	try taking the impediment;
	if the noun is wedged by something:
		stop the action.

Before taking something which wedges the trap-door when the player is in the crawlspace:
	say "I'd rather not be confined down here in the dark, if it's all the same to you." instead.

Section 7 - The Crawlspace

The Crawlspace is below the trap-door. The description is "An awkward, low, concrete-lined crawlspace beneath the tin hut. It smells somewhat like animals; in spite of this it clearly gets a bit more use than anyone would like the customs officials to know about."

Out-direction of Crawlspace is up. [Into the tin hut]

The Crawlspace is indoors and checkpoint.

After deciding the scope of the player when the player is in the Crawlspace:
	if the trap-door is wedged by something (called the impediment):
		place the impediment in scope.

Report facing in Crawlspace:
	say "There is only darkness, but I assume the space extends only under the rest of the building. There's no obvious sign of any other interesting items being stored down here." instead.

The crate is a container in the Crawlspace. The initial appearance is "[if the location is the Crawlspace]The only significant thing down here is a [crate][otherwise]A [crate] is here, looking desperately out of place[end if]." The crate is openable and closed and fixed in place. The heft of the crate is 4.

Table of Ultratests (continued)
topic	stuff
"crate-bug"	{ tub, crate, secret-plans }

Test crate-bug with "drop crate / put tub in crate / wave c-remover at crate / autoupgrade / wave c-remover at crate / open tub / gel rate / put plans in crate / wave c-remover at crate / n" [holding the tub and the crate and the plans.]

Report involuntarily-dropping the crate:
	say "[We] [are] forced to set the bulky crate down on the [fall-receiver]." instead.

Instead of taking the crate:
	say "[The crate] is too substantial to shift easily."

The watch is a wearable thing in the crate. The description of the watch is "An (apparently) valuable watch with diamonds set in the face."

The band is a thing in the crate. The description is "A paper strip used to keep printed materials together before distribution."
	Understand "strip" or "paper strip" as the band.

The leaflet is an illegal thing in the crate. The description is "It's a subversive tract attacking the state's line on punishing people with inanimate status. It quotes the official state justification (from the days when they bothered to justify it at all) as follows:

[italic type]There are those who argue that it is just as inhumane to make a man inanimate as to kill him. And indeed it is a form of execution, in that the man is wiped out and some other thing replaces him. Execution, that is, in every detail but one: it is reversible. Many men have been executed in error, going innocent to the electric chair or the noose, and once dead they can never be retrieved.

The personality of a man made inanimate, however, stays behind in the changed object, ready to be retrieved should new evidence come to light; and until that date he is harmless to society, and costs almost nothing to store (as compared to the costs of prison guardianship and maintenance).[roman type]

It follows up by discussing the problems with this argument: the tendency of objects to 'fade' over time so that their original form is completely lost; the fact that an inanimate object can hardly direct its own appeal proceedings; the strong words against this kind of punishment in the Geneva Conventions."

Rule for printing the name of the leaflet while listing contents of something:
	say "single discarded leaflet".

Section 8 - Docks

The Docks are north of the Fish Market. It is checkpoint. The description is "Here are some dozens of [boats] tied up: some of them are small to medium-sized fishing craft, some tourist boats for trips around the island, some merely ferries to the deeper harbor where the cruise ships anchor."

The boats are scenery in the Docks. Understand "craft" or "fishing craft" or "tourist" or "ferries" as the boats. The description is "I know nothing about boats. You, on the other hand, appear to have an unnerving awareness of which of these craft are here on legal business and which are engaged in some form of smuggling or refugee-assistance."

[Why I had to call them boats as their primary name I don't know. It certainly requires a lot of specialized error-messaging...]

Check waving the letter-remover at the boats when the current setting of the letter-remover is "b":
	say "Turning all the harb[our] water to cold oatmeal would be an exploit to rival the Boston Tea Party, but the letter-remover is not powerful enough to accomplish it." instead.

Check waving the letter-remover at the boats when the current setting of the letter-remover is "o":
	say "It would be kind of amazing to turn the whole selection of boats into bats and watch them fly away. But there would be dozens of fatalities and massive amounts of property damage, so possibly it's just as well that the letter-remover is not powerful enough for the task." instead.

Check waving the letter-remover at the boats when the current setting of the letter-remover is "a":
	say "Creating an army of tiny robots out of the boats would be inspiring for a very brief period until they sank into the waves and short-circuited. The letter-remover isn't strong enough anyway." instead.

Check waving the letter-remover at the boats when the current setting of the letter-remover is "t":
	say "What a sight that would be: a whole cabaret-worth of feather boas floating on the waves. On the other hand, it would also be very dangerous to any people in the boats at the time. So probably just as well that the letter-remover lacks the power." instead.

Check waving the letter-remover at the boats when the current setting of the letter-remover is "s":
	say "Deplural[izing] all the boats would be a fascinating re-enactment of historical events, except that the boats are full of harmless tourists and the letter-remover doesn't have nearly the power required to achieve that goal."

The customs-exterior is a facade in Docks. It fronts east. The initial appearance is "To the east, up a moderate rise from the sea-level docks, is the imposing exterior of the Customs House. The classical look is only a little undermined by the [public-service posters] along the front." The introduction is "There passports are inspected and cargo passed under authentication, foreign items renamed or confiscated, and suspected smugglers interrogated."
	The description is "The building itself is not especially grand, but you have never been on the good side of the people who work there, and that gives you a perfectly justifiable dislike of the place, and the sense that it's larger than life."
	Understand "exterior" or "customs" or "house" as the customs-exterior. The printed name is "customs house".

Some public-service posters are part of the customs-exterior. The description is "The nearest one shows a kitten drawn in a sinuous Parisian style. 'BOUGHT YOUR PET ABROAD?' demands the poster. 'Consider linguistic realignment therapy!'

Smaller type goes on to explain that even if you have had your dangerous [i]chat[/i] converted to a harmless cat at the border, there is a risk that without proper treatment it will have a litter of foreign-language offspring." Understand "poster" or "public" or "service" as the posters.

Rule for listing exits when looking in Docks:
	do nothing instead.



The counterfeit-monkey-exterior is a facade in the Docks. Understand "counterfeit" or "monkey" as the counterfeit-monkey-exterior. The printed name is "pub". It fronts west. The initial appearance is "Immediately west, [if Counterfeit Monkey is unvisited and the garish sign is part of the counterfeit-monkey-exterior]a [garish sign] advertises a pub called the Counterfeit Monkey[otherwise if the garish sign is part of the counterfeit-monkey-exterior]the Counterfeit Monkey's [garish sign] sways in the wind[otherwise]the Counterfeit Monkey looks atypically bare with its sign missing[end if]." Understand "pub" or "bar" as the counterfeit-monkey-exterior. The description is "The place looks [--] and is [--] wholly disreputable."

The garish sign is part of counterfeit-monkey-exterior. It is a sign. The description is "In the picture, a villainous man threatens a cage full of tiny primates with a primitive Victorian letter-remover. In the background is an enormous bag of cash."
	The printed name of the garish sign is "sign".

Check waving the letter-remover at garish sign when the current setting of the letter-remover is "k":
	say "We try to K-remove the monkey on the sign, but at this distance and in this wind, it's a difficult bit of targeting, and we fail." instead.

Check waving the letter-remover at the counterfeit-monkey-exterior when the current setting of the letter-remover is "k":
	say "Turning the entire pub into a heap of fake bills would be spectacular, but would not really advance our cause." instead.

Section 9 - Counterfeit Monkey

[The concept of the Monkey came fairly early.]

The Counterfeit Monkey is west of the Docks. It is proper-named and indoors. The description is "[one of]It takes a minute for us to adjust to the light in here. [or]Infamously this pub was raided in 1929, the year that the Bureau developed its first meager attempt at an Authentication Scope, and dozens of smugglers and fraudulent businessmen went to jail. But neither that raid nor subsequent scrutiny has ever shut the place down entirely. [or][stopping]Built when people were a bit shorter and ceilings were a bit lower, the Counterfeit Monkey is always smoky and never well lit, even in the middle of the day."

Out-direction of Counterfeit Monkey is east. [To the docks]

Understand "bar" or "pub" as Counterfeit Monkey.

A description-concealing rule when location is the Counterfeit Monkey and Slango is in the Counterfeit Monkey:
	now the clientele is unmarked for listing;
	now the barman is unmarked for listing.

A description-concealing rule when location is the Counterfeit Monkey and the Counterfeit Monkey is as-yet-unknown:
		now the clientele is unmarked for listing;
		now the barman is unmarked for listing;
		now the origin paste is unmarked for listing;
		now the Counterfeit Monkey is introduced.

Rule for writing a topic sentence about the clientele:
	say "[The clientele] are currently engaged in a game of darts, while [the barman] watches and [if the player wears the britishizing goggles]practises[otherwise]practices[end if] a sarcastic wit on those who embarrass themselves[if the origin paste is on the bar-top]. There is also a quantity of [origin paste] sitting out on the bar[end if]. ";


The dartboard is scenery in the Counterfeit Monkey. Understand "dart" or "darts" or "board" as the dartboard. The description is "Several guys are engaged in a lively game of darts. By their tattoos, you recogn[ize] them: they have a regular darts game in which smuggling drop-off coordinates are passed back and forth in the form of scores and the game's surrounding banter.

The result is that the Bureau has been trying to tape their communications for months without ever turning up evidence of wrongdoing."

Understand "playdarts" as a mistake ("We really don't want to attract the negative attention of those guys.").

Instead of doing something other than examining with the dartboard:
	say "We really don't want to attract the negative attention of those guys."

Check waving the letter-remover at the tattoos:
	say "Too hard to distinctly target the collective of tattoos when they're on various moving arms on various slightly drunk guys."

Some tattoos are part of the clientele. The description of the tattoos is "[one of]One says I HEART MA[or]One is a detailed rendering of scenes from Brooklyn[or]One looks like an Elder Sign[at random]."

The clientele is a person in Counterfeit Monkey. The initial appearance is "[The clientele] is keeping [the barman] thoroughly busy."
	The description of the clientele is "A nasty-looking bunch. They can be good enough if you're on the right side of them, but getting and staying that way isn't easy. And they're justly suspicious: the customs house not infrequently tries to infiltrate the criminal organ[ization]s and brotherhoods, though with no great success." Understand "crowd" or "players" or "player" or "customers" or "customer" or "guys" or "people" or "guy" as the clientele.

After reading a command when location is Counterfeit Monkey (this is the replace men with clientele rule):
	while the player's command includes "men":
		replace the matched text with "clientele".

The barman is a man in Counterfeit Monkey. The description of the barman is "His name is Parker, and he is a friend of yours, when you're wearing your own skin. At the moment, though, it seems like a good idea not to trust these friendships by making our new disguise known." Understand "bartender" or "barkeep" or "Parker" as the barman.

Instead of starting a conversation with the barman about something in the presence of Slango:
	say "Better not; the less people notice this little conversation, the better."

Instead of saying hello to the barman in the presence of Slango:
	say "Better not; the less people notice this little conversation, the better."

Check starting a conversation with clientele about something:
	say "They're... busy. At best interrupting them would interrupt their code, and at worst it would make them think [we] [are] a Bureau agent." instead.

Instead of saying hello to the clientele:
	say "They're... busy. At best interrupting them would interrupt their code, and at worst it would make them think [we] [are] a Bureau agent."
	[say "At the moment they aren't harassing us, but there's no reason to get their attention. After all, it took plenty of work to get their respect the first time out, and we don't have the time now to earn it again."]

The bar-top is a supporter in Counterfeit Monkey. It is scenery. Understand "counter" or "bar" as the bar-top. The printed name of the bar-top is "bar". The description is "Kept scrupulously clean, whatever you might say about the rest of the place."

To summon Slango:
	move Slango to the Counterfeit Monkey;
	now the barman is not alert.

Slango is an alert man. The initial appearance is "[Slango] sits at [a dark table], nursing [a root beer]."
	The description is "He's dressed plainly but neatly: clean jeans, crisp white button-up shirt. His face is calm and his voice is even and he could be any age between thirty and fifty. He looked that way when you met him eight years ago, too."
	The introduction is "Slango is, of course, not Slango's real name. He is half criminal, half ideological revolutionary: uncouth, restless, always hungry for a new exploit. Had he been born into a freer society, he might have become a very valuable engineer or consultant. He has been your mentor in crime and your usher into the world of adults."

Slango wears clean jeans and a button-up shirt.[ The clean jeans and the button-up shirt are scenery.][Bad!] [Having people carry scenery makes the compiler go crazy]
The description of the clean jeans is "He wears them as though they were uniform trousers." The description of the button-up shirt is "White and stainless."

Rule for deciding the concealed possessions of slango:
	if looking:
		yes;
	otherwise:
		no.

Slango carries a root beer.

Report Slango saying hello to the player:
	complete "Meet your colleague Slango at Counterfeit Monkey";
	say "[one of]Slango meets our eye for a long minute without smiling[or]Slango nods to us[stopping]." instead.

Definition: a thing is slango-related:
	if it is held by Slango:
		yes;
	no.

Instead of looking at a slango-related thing through an authentication scope:
	say "[The second noun] pings happily as [we] sight [the noun] with the crosshairs. [one of]Slango looks irritated.[or]'Would you mind putting that away?' Slango asks.[or]Slango sticks out his jaw.[stopping]".

The dark table is a supporter in the Counterfeit Monkey. The description is "[We] can't see it too well, which might be just as well." It is scenery.

The Marina is a region. The Counterfeit Monkey, Outdoor Cafe, the Fish Market, Deep Street, Tin Hut, Aquarium Bookstore, and the Docks are in the Marina.

Section 10 - Customs House

[The player is never going to leave via the Customs House. But for a portion of the story, it seems likely that he's going to need to -- so we keep the location here as a bit of misdirection, while trying to make it clear that there's nothing *yet* available to do in this location. (Otherwise, the fact that nothing is implemented as a way to leave the island would be a clear signal about the twist endings to come.)

The people entering and leaving are light local color, but they're not meant to be interesting enough to hold the player's attention long, as he does have other things he is supposed to be doing.

At least, that's the theory. In practice, there's massively more complex output than there needs to be, mostly because making this stuff up is fun.

In an earlier version of the game, the player *did* leave via the Customs House, after first solving a puzzle of manipulating the exit lines — the challenge was to distract multiple officers by creating fake humans and animals, so that everyone manning customs was kept busy dealing with these frauds while the player snuck into a back room to rescue Brock. But this puzzle proved fiddly to explain to the player and not actually very much fun, so we axed the entire sequence. At that point the game was also perhaps a half or two thirds its present length: not only was it missing the escapades in the Bureau basement, but it also lacked the traffic circle and the dead drop/map store sequence. ]

The Customs House is east of the Docks. Understand "customs-house" as the Customs House. It is indoors. The description is "This one building handles both people entering Atlantis by sea and those leaving, so there is an entry line (which feeds out into the city by the door we used) and an exit line (which snakes through from here to the point where boats and ferries board their passengers).

There is a [long line] of people waiting to leave Atlantis, even on Serial Comma Day."
	The introduction is "No one is paying any attention to us [i]yet[/i], but I wouldn't advise spending much time here."

Out-direction of Customs House is west. [To the docks]

Sanity-check entering the long line:
	say "We can only afford to try going through this line once, and it's going to have to be when we're really ready to leave. Which we're not." instead.

Instead of inserting something into the long line:
	say "Only people are allowed in the line."

Instead of empty-removing the long line:
	say "There are none at all available!"

The assorted side rooms are scenery in the Customs House. Understand "private" or "room" as the assorted side rooms. The description is "The side rooms provide auxiliary services: quarantine for linguistically unsuitable objects, kennels for animals that will need to undergo alignment therapy, holding cells for suspects."

The long line is a scenery enterable container in the Customs House. The description is "The line is made up mostly of businessmen and scientists and the occasional professor with academic leave to go elsewhere, as well as departing tourists." Understand "entry" or "exit" or "professor" or "academic" or "academics" or "tourist" or "tourists" or "vacationer" or "vacationers" or "businessman" or "businesswoman" or "businesspeople" or "businessmen" or "businessperson" or "businesswomen" or "scientist" or "scientists" or "man" or "men" or "woman" or "women" as the long line.

Some local-officials are scenery in the Customs House. Understand "officials" or "official" or "customs" as the local-officials. The printed name is "customs officials". The description is "The officials are at the far end of a very long line."


An Atlantida propaganda poster is fixed in place in Customs House. Understand "old" or "war-time" or "wartime" or "war" or "war time" as the propaganda poster. The printed name is "old war-time poster". The initial appearance is "An [Atlantida propaganda poster] on the wall shows Atlantida striding boldly forward." The description is "The poster is huge, almost as tall as [we] are, and covers most of a wall. Atlantida, dressed in blue, walks towards the viewer from a bold sunrise background. The legend reads THE SPIRIT OF OUR PEOPLE.

It was part of a propaganda campaign to get the Atlanteans to think of Atlantis as inherently invulnerable, on the off-chance that the belief would create the reality.

And we never were invaded, for whatever that's worth, though the Axis would certainly have found the island a useful base.".

[I wanted to reinforce the idea of Atlantida several times in the mid to late game as establishing shots for the endgame. The idea of the propaganda poster specifically comes from the gazillion KEEP CALM AND CARRY ON posters one sees everywhere in the UK right now: a nod to the phlegmatic courage of the past.]

The uninteresting posters are a scenery thing in the Customs House. The description is "The nearest one depicts a man having his foreign-language dictionaries confiscated."

Every turn when the location is Customs House:
	if a random chance of 9 in 10 succeeds:
		say "[one of][mini-group] [multi-passersby] [heads for the Docks][entry-comment][or][mini-group] [multi-passersby] [quiet-chat][or][Random-passerby] [comes-in][optional-exit][or][Random-passerby] makes it through the entry line[*and*] heads into Atlantis[or][Random-passerby] [acts bored][or][line-advance][or][one of]A new lane opens up at the front, speeding up the line a little[or]One of the officials at the front goes on break, slowing down the line[cycling][or][Random-passerby] [one of]provokes[or]starts[or]begins[or]gets into[at random] [interaction-type] with a [random-official][private-room][or][Random-passerby] [punks-out][or][hubbub][or][random-once-event][as decreasingly likely outcomes].".

[These events are too memorable to happen more than once; therefore we have them on a stopping cycle with the last event being a generic again.]

To say random-once-event:
	say "[one of]A man arrives to deliver a parrot to the linguistic alignment rooms. '[i]Allo?[/i]' inquires the parrot. Embarrassed, the parrot's owner covers its cage with a blanket[*and*] meets no one's eye until the quarantine room is ready to accept them[or][Random-passerby] explains to a neighb[our] in line that [they] is visiting Atlantis for gender reassignment with a homonym paddle[or]There's a percussive noise from a side chamber as some abandoned luggage is exploded for safety[or]An Authenticator walks along the line, looking people over through a monocle[or][Random-passerby] takes several French-language articles out of a [luggage-item][*and*] tosses them into a reclamation bin[or][Random-passerby] waves cheerfully at a security camera[or][Random-passerby] tries a pick-up line on [their] neighb[our]. [Random-passerby] shuts this down hard[or][Random-passerby] [comes-in][stopping]".

To say private-room:
	if a random chance of 1 in 2 succeeds:
		say "[one of]. 'Come with me, please,' says the official, very bored[or][*and*] is led away into a private room[or]. The official does not seem impressed[or]. A moment later, the official escorts [them] into one of the side rooms. The door shuts firmly[at random]".

To say hubbub:
	say "[one of]The noise increases[or]Raised voices come[or]There's a bit of a hubbub[or]Interested whispers pass back[or]Sounds of argument filter back[at random] from the [one of]front of the room[or]head of the line[or]bank of official desks[at random]. ";
	say "[one of]It appears someone left a [luggage-item] unsupervised, and it now has to be scanned. 'I hope they blow it up,' says someone[or][Random-passerby] is having [their] cell phone confiscated[or][Random-passerby] has foolishly asked to see a supervisor[or][Random-passerby] turns out to have a tattoo of a quotation in German all down [their] right leg[or][Random-passerby] was trying to bribe a [random-official] with a packet of [currency] notes, but was rebuffed[at random]";

To say comes-in:
	say "[one of]comes[or]walks[or]steps[or]strolls[or]saunters[or]stumbles[or]strides[or]wanders[at random]";
	if a random chance of 1 in 2 succeeds:
		say " in";
	otherwise:
		say " [one of]in[or]through[at random] [one of]the door[or]the east door[or]the door from the Docks[at random]";

To say optional-exit:
	if a random chance of 1 in 2 succeeds:
		say "[*and*] [one of]gets in line[or]joins the exit line[or]stands in line[or]gets into the line to leave the country[at random]"

To say *and*:
	say "[one of]. [They][or] and[or], then[as decreasingly likely outcomes]".

To say punks-out:
	say "[one of]looks at the exit line[*and*] suddenly gets cold feet[*and*] leaves[or]climbs under the line divider[*and*] gets out of the exit line[or]abruptly starts moving back out of the exit line[or]gets out of line[*and*] heads for the restroom[at random]".

To say interaction-type:
	say "[one of]a disagreement[or]an involved conversation[or]a tiff[or]a heated altercation[or]an exchange of words[or]an innuendo-rich conversation[or]a flirtation[as decreasingly likely outcomes]".

To say line-advance:
	say "[one of]The line shuffles [minutely] forward[or]The line advances[or]The line advances [minutely][or]The line moves forward [a random number between 2 and 4 in words] steps[or]Everyone in line takes [a random number between 2 and 4 in words] steps ahead[or][Random-passerby] shoves a [luggage-item] ahead in line with [their] foot[or][Random-passerby] emerges from an oblivious fog long enough to notice that a substantial gap has opened up in the line[*and*] hurries to close it[or][Random-passerby] nudges the next person to point out that the line is moving ahead, and there's no reason to stand still gawking at posters, thanks very much[as decreasingly likely outcomes]".

To say minutely:
	say "[one of]a little[or]minutely[or]a few paces[or]slightly[or]very gradually[at random]"

To say heads for the Docks:
	say "[one of]entering Atlantis brush past us and head out to the Docks[or]emerge from the line[or]come through the entry line and head for the east exit[or]go to the east exit[or]pass us heading for the Docks[at random]".

To say acts bored:
	say "[one of][looks-bored][or][consults-watch][or][luggage-item-activities][or][hums][or]taps [their] foot[or]beats a tattoo on the line divider[as decreasingly likely outcomes]";
	if a random chance of 1 in 5 succeeds:
		say "[*and*] [acts bored]"

To say luggage-item-activities:
	if a random chance of 1 in 5 succeeds:
		say "[one of]idly[or]absent-mindedly[at random] ";
	if a random chance of 4 in 5 succeeds:
		say "[one of]kicks[or]tries to peel a claim-check sticker off[or]fishes around inside[or]rearranges the contents of[or]shifts the weight of[at random] a [luggage-item]";
	otherwise:
		say "[one of]unzips[or]opens[at random] a [luggage-item] and feels around inside".

To say looks-bored:
	say "[one of]looks bored[or]yawns[or]stifles a yawn[or]stares slackly into the middle distance[or]assumes an expression of the most severe ennui[as decreasingly likely outcomes]"

To say consults-watch:
	say "[one of]looks at[or]looks pointedly at[or]consults[at random] ";
	say "[one of][their] wristwatch[or]a cheap wristwatch[or]the time[or]a watch[at random]".

To say hums:
	say "hums ";
	say "[one of][music-type][or][music-adverb][or][music-adverb] [music-type][or][music-type] [music-adverb][at random]".

To say music-type:
	say "[one of]a traditional folk song[or]the ballad of squid-farmers[or]the tune of a public service advertisement[or]an advert for the washing power of a washing powder[or]a pop tune[at random]";

To say music-adverb:
	say "[one of]tunelessly[or]nasally[or]pleasantly[or]through the nose[or]off-key[or]with perfect pitch[or]at a lugubrious tempo[or]loudly[at random]";

To say entry-comment:
	if a random chance of 1 in 3 succeeds:
		say ". '[one of]New record: [a random number between 40 and 90 in words] minutes[or]That certainly took long enough[or]Now, how about [if current daytime is early afternoon]lunch[otherwise]snacks[end if]? I'm starving[or]Now, which way is the Fleur d'Or? Let's drop our luggage[or]Ah, the Atlantean heat wave as soon as you open the door[or]After all that I wish I [i]were[/i] smuggling something[or]I was starting to think we weren't going to get out of there in time for the evening fireworks[or]Funny place for a destination wedding[or]Is this the place where you can swim with sharks or is that Mauritius? I can't remember[or]For the price of entry visas around here, they could lay on a few more staff[or]Just think: it's [time-elsewhere][at random],' one of them says".



To say mini-group:
	say "[one of]A small group of[or]A few[or]A couple of[or]Some[or]Several[or]Two[or]Three[or]A trio of[as decreasingly likely outcomes]".

To say quiet-chat:
	[This is like rolling a pair of dice to produce a stronger probability of middle-range outcomes than others:
	1: 1 + 0
	2: 1 + 1, 2 + 0
	3: 1 + 2, 2 + 1, 3 + 0
	4: 2 + 2, 3 + 1
	5: 3 + 2]
	let X be a random number between 1 and 3;
	let Y be a random number between 0 and 2;
	let N be X + Y;
	if N is:
		-- 1: say "[one of]murmur together[or]are speaking in low voices[or]are talking just about a whisper[or]are talking in a conspiratorial whisper[at random]";
		-- 2: say "[one of]are chatting quietly[or]chat quietly in line[at random]";
		-- 3: say "[one of]are talking[or]are chatting[or]are having a placid conversation[or]are standing in line talking[at random]";
		-- 4: say "[one of]talk loudly in line[or]are having an excited conversation[at random]";
		-- 5: say "are [one of]arguing[or]disputing[or]disagreeing[at random]";
			if a random chance of 1 in 2 succeeds:
				say " [one of]fiercely[or]hotly[or]loudly[or]in elevated voices[or]heatedly[at random]";
	if N is greater than 3 or a random chance of 1 in 3 succeeds:
		say " about [one of]the movie selections to be found on cruise ships[or]the [currency]-[currency] exchange rate[or]transportation security[or]whether this year's mosquito population is larger and more voracious than last year's[or]the relative culinary merits of squid and octopus[or]which is the best restaurant on the island[or]whether it's worth it buying a first-class ferry ticket to Portugal[or]whether it's fair for the French government to subsid[ize] linguistic tool research[or]whether they're likely to need long trousers in [random-spot][at random]";
		if a random chance of 1 in 3 succeeds:
			say ". [paragraph break]'[one of]You're mad[or]I wouldn't bring that up around here[or]Hush[or]That's a more political remark than you real[ize][or]I agree completely, but you should keep it down[at random],' says the nearest one abruptly";
	if N is less than 4 and a random chance of 1 in 3 succeeds:
		say ". One of them [acts bored]";

To say currency:
	say "[one of]euro[or]pound[or]yen[or]US dollar[or]Canadian dollar[or]Australian dollar[or]krone[or]peso[or]won[or]rupee[or]ringgit[at random]"

To say Random-passerby:
	say "[one of]A tourist[fm][or]A scientist[fm][or]A businessman[m][or]A scientific-looking individual[fm][or]A businesswoman[f][or][A person-adjective] man[m][or][A person-adjective] woman[f][or]A man[m][or]A woman[f][at random]";
	if a random chance of 1 in 3 succeeds:
		if a random chance of 1 in 2 succeeds:
			say "[one of] with[or] carrying[or] dragging[at random] a [luggage-item]";
		otherwise if a random chance of 6 in 7 succeeds:
			say "[one of] carrying[or] with[or] holding[at random] [odd-prop]";
		otherwise:
			say "[one of] in a wheelchair[or] in [earth-color] trousers[or] wearing a [primary-color] and [secondary-color] hat[at random]".

To say odd-prop:
	say "[one of]a package of dried squid treats[or]a jar of pickled [random vegetable][or][metallic-color] sunglasses[or]a coat suitable for a more northerly climate[or]a small dog on a leash[or]a cane[or]two liters of premium vodka in a duty-free bag[or]a [color-pick] umbrella[or]a huge bouquet of [flowers][at random]".

To say flowers:
	if a random chance of 1 in 2 succeeds:
		say "[one of][pastel-color][or][primary-color][or][secondary-color][as decreasingly likely outcomes] ";
	say "[one of]tulips[or]roses[or]lilies[or]daisies[at random]"

To say primary-modifier:
	say "[one of]vivid[or]bright[or]vibrant[or]faded[as decreasingly likely outcomes]"

To say secondary-modifier:
	say "[one of]neon[or]sickly[as decreasingly likely outcomes]".

To say pastel-modifier:
	say "[one of]pale[or]light[or]iridescent[as decreasingly likely outcomes]".

To say primary-color:
	say "[one of]red[or]crimson[or]blue[or]cerulean[or]yellow[or]canary[at random]".
To say secondary-color:
	say "[one of]teal[or]violet[or]chartreuse[or]purple[or]magenta[or]lime-green[or]green[or]cyan[or]orange[or]tangerine-col[our]ed[at random]".
To say pastel-color:
	say "[one of]lavender[or]pink[or]sky blue[or]mint green[or]peach[or]daffodil-yellow[or]salmon[or]mauve[at random]".
To say earth-color:
	say "[one of]beige[or]olive-drab[or]khaki[or]tan[or]dun[or]sienna[or]chocolate[or]brown[or]camel-col[our]ed[at random]".
To say tone-color:
	say "[one of]white[or]ivory[or]cream[or]black[or]grey[at random]".
To say dark-color:
	say "[one of]black[or]navy[or]dark brown[or]maroon[or]wine-col[our]ed[or]midnight blue[as decreasingly likely outcomes]".
To say metallic-color:
	say "[one of]silver[or]gold[or]gunmetal[or]pewter[or]platinum[at random]"

To say patterned:
	if a random chance of 1 in 3 succeeds:
		say "[one of][pastel-color][or][earth-color][or][tone-color] and [tone-color][or][secondary-color] and [secondary-color][at random] ";
	say "[one of]pin-striped[or]herringbone[or]checked[or]tweed[or]plaid[or]paisley[or]floral-patterned[or]camouflage-patterned[or]leopard-spotted[or]tiger-striped[or]tortoiseshell[or]zebra-striped[or]polka-dot[at random]".

To say color-pick:
	say "[one of][tone-color][or][pastel-color][or][primary-color][or][secondary-color][or][earth-color][or][dark-color][or][patterned][or][metallic-color][at random]".

To say A person-adjective:
	let N be "[person-adjective]";
	let P be character number 1 in N;
	if P is "a" or P is "e" or P is "i" or P is "o" or P is "u" or P is "A" or P is "E" or P is "I" or P is "O" or P is "U":
		say "An [N]";
	otherwise:
		say "A [N]";

To say person-adjective:
	say "[one of]tall[or]fit[or][nationality][or]slim[or]muscular[or]tanned[or]short[or]freckled[or]young[or]older[or]elderly[or]thin[or]pudgy[or]gaunt[or]well-dressed[or]thin-lipped[or]short-sighted[or]squinty-eyed[or]stooped[or]cross-looking[or]pug-nosed[or]frizzy-haired[as decreasingly likely outcomes]".

To say nationality:
	say "[one of]South African[or]English[or]Irish[or]Australian[or]American[or]New Zealand[or]Canadian[or]Scottish[at random]".

To say random-official:
	say "[one of]official[or]customs official[at random]"

To say f:
	now the prior named object is a random woman which is not plural-named.

To say m:
	now the prior named object is a random man which is not plural-named.

To say fm:
	if a random chance of 1 in 2 succeeds:
		say f;
	otherwise:
		say m.

To say multi-passersby:
	if a random chance of 1 in 7 succeeds:
		say "[person-adjective] ";
	say "[one of]tourists[or]vacationers[or]businessmen[m][or]businesspeople[or]businesswomen[f][or]academics[or]scientists[at random]".

To say luggage-item:
	if a random chance of 1 in 4 succeeds:
		say "[one of][dark-color][or]newish[or]scuffed[or]soft-sided[or]hard-sided[or]small[or]large[or]massive[or]outsized[or]bulging[or]broken[or]shabby[or]plastic-wrapped[or]travel-worn[or]leather-trimmed[or][tone-color][or][earth-color][or][secondary-color][or][patterned][as decreasingly likely outcomes] ";
	say "[one of]wheelie suitcase[or]laptop bag[or]carry-on bag[or]suitcase[or]messenger bag[or]camera bag[or]guitar case[or]trunk[or]cosmetic case[or]golf bag[as decreasingly likely outcomes]"


Sanity-check going nowhere when the location is Customs House:
	unless the noun is outside:
		try entering the long line instead.

Test Customs with "tutorial off / look / x side rooms / x line / x tourists / x scientists / x officials / x private room / z / z / z / z / z / z" in Customs House.


[This is a bit of game archaeology: very early on, when the terms of the Atlantidan world weren't very well established, I'd written the "Confiscated Articles Room" as a bit of fantasia. Later it became obvious that I couldn't seriously make a full game in which articles mattered at all. So I commented it out, but didn't ever actually erase it from the code.

The description of the Confiscated Articles Depository is "A room brightly but unsympathetically lit, whose walls are lined with shelves; and on the shelves are dozens and dozens of confiscated articles, both definite and indefinite."

Some shelves are scenery in the Depository. The description of the shelves is "Ordinary metal shelves, painted beige."

The dead articles are on the shelves. Understand "confiscated" and "definite" and "indefinite" as the articles. The articles are scenery. The initial appearance is "Plucked from their nouns, they are limp and pale. The ones in front are a typical mix of 'le' and 'il' and 'gli', 'der' and 'die' and 'la' and 'des'. Towards the back they get more interesting, though little more than husks now [--] I'm sure I see a 'τῶν' wedged back there, and in a contraband alphabet at that." Instead of doing something other than examining with the articles: say "There is bound to be an alarm." ]


Part 2 - Direct Disobedience

Section 1 - Traffic Circle

["The population has often been atomized (turned into a mass of isolated individuals) unable to work together to achieve freedom, to confide in each other, or even do much of anything at their own initiative." -- From Dictatorship to Democracy, Gene Sharp.]

[This scene wraps up Act 2, which has been about themes of concealment and performance, forcing the player to act on a large stage.

Designwise, it attempts to

-- reinforce the teaching about how to use the origin paste, which the player will need again to create the pass
-- establish the restoration-gel rifle and ways of using it well in advance of the endgame; at least hint at the idea of shooting an opponent's gun as well as the opponent himself
-- provide a small, focused set scene as a pacing contrast to the more sprawling, broad passages that come before and (especially) after

Expositionally, it has to

-- establish the symbolism of Atlantida, the propaganda war by which both sides try to lay claim to her, and the special significance of the squid
-- show Alex beginning to move away from his cowardice and embrace the abilities that Andra gives him (though in this case that can be a serious misjudgment)
-- drive home ideas about localized linguistic effectiveness mentioned briefly in the Lena scene

Dramatically, it tries to

-- bookend Act 2, counterbalance the hiding scene with the Authenticator that begins the act, and thus point out the change in Alexandra's courage and attitude.
-- create the first complicity questions about Andra's relationship to Alex: does she want to do the same things he does? Alex's appetite for violence in this scene is stronger than Andra's, though in other places he claims to be a nonviolent person; this is the expression of the rage of an oppressed person finally coming to the top
-- establish that the Bureau is a genuine and serious threat, as this is the first time we see them do something seriously awful

]

After going to Roundabout when the protesters are not off-stage and the location is not Traffic Circle and seeking Slango has ended:
	if the number of entries in the path so far of the player is greater than 1:
		say "[path-walked so far][paragraph break][line break]";
	otherwise:
		clear path-walked for player;
	increase path description count by 1;
	say "The whole Roundabout has ground to a halt, with protesters walking in the street and in some places completely filling the road. But this is mostly a nuisance until I notice that there are a couple of teenagers handcuffed to a tree.

I give the wheel a yank and run the car up onto the central traffic circle a little way. Call it a parking job. We need to get those kids out of here before their arrest is processed and they go to storage. I might not have the nerve to do anything by myself, but you're with me, and I'm starting to appreciate that's like being Batman.";
	if the player is in a car (called target):
		move the target to Traffic Circle;
		silently try switching off a random ignition which is part of target;
	otherwise:
		move the player to Traffic Circle;
	follow the compass-drawing rule;
	stop the action.


Sanity-check doing something when the location is Traffic Circle and the player is in a car:
	if the noun is a thing and the noun is not enclosed by a car and the noun is not a car:
		say "We don't have a good angle on the action from inside the car." instead;
	if the second noun is a thing and the second noun is not enclosed by a car and the second noun is not a car:
		say "We don't have a good angle on the action from inside the car." instead;

Instead of going or approaching when the player is in an undisguised car and the location is Traffic Circle:
	say "[one of]The way we came is completely blocked by protesters. [or][stopping]We're not going anywhere by car from here." instead.

Sanity-check exiting when the player is in an undisguised car and the location is Traffic Circle:
	say "I can see an officer making his way between the cars and stopping at the fake ones. Maybe we'd better conceal our car before we leave it [--] we may need to make a quick getaway later." instead.


Check waving the letter-remover at the Traffic Circle when the current setting of the letter-remover is "l":
	say "Perhaps a Traffic Circe would be able to turn cars into pigs, but the letter-remover has neither the imagination nor the power to bring this entity to life." instead.

Traffic Circle is inside from the Roundabout. It is a privately-controlled checkpoint improper-named outdoors road.

Out-direction of Traffic Circle is outside. [The roundabout and the traffic circle are the only place where the standard outside and inside directions are used]

The no-dropping rule does nothing when the noun is the restoration-gel rifle and the location is Traffic Circle.

[Procedural rule while dropping the restoration-gel rifle when the location is Traffic Circle:
	ignore the no-dropping rule.]

Rule for describing the interior of a car when the location is Traffic Circle:
	say "Normally no pedestrian ever comes to this circle of grass and litter: the flow of traffic is too constant and too fast. But the protest has stopped the traffic and I'm determined to do something about the two teenagers I saw just now, so here we are. Though we probably have to get out of the car if we're going to be useful.";
	rule succeeds.

Instead of going to Traffic Circle:
	if the player is in a car:
		say "Parking on or next to the Traffic Circle is a terrible idea when the traffic is moving at all.";
	otherwise:
		say "We'd get killed crossing traffic if we tried to cross there."

Sanity-check going nowhere in Traffic Circle:
	if the noun is up or the noun is down or the noun is inside or the noun is outside:
		make no decision;
	otherwise:
		try going outside instead.

A description-concealing rule when the player is in a car (called target car) and the location is Traffic Circle:
	rapidly set stuff outside target car not marked for listing.

Report exiting when the container exited from is a car and location is Traffic Circle:
	say "We climb out of the car.";
	try looking instead.

A ranking rule for the giant Atlantida statue:
	increase the description-rank of the giant Atlantida statue by 50.

The giant Atlantida statue is a distant fixed in place enterable supporter in Traffic Circle.
	"A [giant Atlantida statue] stands at the cen[ter][if something unsuitable is on the giant Atlantida statue], decorated in an unorthodox fashion with [a list of unsuitable things *in the giant Atlantida statue][end if][if the signet is on the giant Atlantida statue]. [A signet], outsized, representing the seal of the Bureau, hangs around her neck in classic albatross fashion[end if][if the restoration-gel rifle is in the location]. [The restoration-gel rifle] is propped against the base of the statue[end if]."
	The introduction is "Atlantida is to us a bit as Uncle Sam might be to you, except that she embodies the spirit of the people rather than the government. In recent years she's become a symbol of opposition to the Bureau."

The huge-metal-arm is part of the giant Atlantida statue. It is a distant fixed in place enterable supporter. The printed name is "huge metal arm". Understand "huge" or "enormous" or "metal" or "arm" as the huge-metal-arm. The description of the huge-metal-arm is "It is bare and muscular, as though Atlantida is envisioned championing her people through a series of arm-wrestling matches."

Rule for writing a topic sentence about someone (called the target) who is on the huge-metal-arm:
	say "[The target] has climbed partway out along Atlantida's [huge-metal-arm]."

The olive branch is on the huge-metal-arm. The description is "A metal olive branch, complete with metal leaves and metal olives." Understand "leaves" or "metal" or "olives" as the olive branch.

A description-concealing rule when the location is Traffic Circle:
	now the olive branch is not marked for listing;
	now every car is not marked for listing;

After waving the letter-remover at the olive branch creating the live branch:
	now the live branch is on the huge-metal-arm;
	say "[one of]It takes a little more care with aim than usual, but we do manage to strike the [olive branch], turning it into a [live branch]. It goes green and healthy at once[or]Confidently we reconvert the [olive branch][stopping].

[irritation reaction].";

Irritation count is a number that varies.

Last irritation is a time that varies.

To say irritation reaction:
	if the irritation count is:
		-- 0: say "The All-Purpose Officer glances around, but [if the player encloses the rifle]you've made us stand so our body conceals the rifle from his angle[otherwise]he doesn't notice us[end if]. He growls in annoyance. 'Station,' he says, apparently to thin air. 'I need back-up.'[paragraph break][i]Understood[/i], says a tinny distant voice";
		-- 1: say "'The power of the people!' shouts one of the protesters approvingly.[paragraph break]'Station,' comments the All-Purpose Officer. 'Aborting work on the statue until back-up arrives. Situation here is volatile.'[paragraph break][i]NEGATIVE[/i], replies his tinny interlocutor. [i]Statue to remain clear as first priority. This is from Oracle[/i]";
		-- 2: say "The protesters are cheering and stamping their feet. People in the cars are honking. The All-Purpose Officer tries to crane his head around and see who exactly is making all the trouble, but he quickly realizes he can't do that and hold on at the same time";
		-- 3: say "'[i]Guillemets[/i],' swears the All-Purpose Officer, daringly.[paragraph break][i]Did not copy, say again?[/i] asks the tinny invisible radio.[paragraph break]'Did Oracle happen to say why the statue was top priority?' asks the Officer.[paragraph break][i]That's a negative,[/i] responds the radio";
		-- 4: say "'Station,' growls the All-Purpose Officer into thin air. 'I am underpowered and back-up is not arriving. We need three vans and a DP tank.' His face is shiny with sweat";
		-- 5: say "[i]DP tank? Confirm request![/i] insists the tinny radio.[paragraph break]'That's what I said,' the All-Purpose Officer responds.[paragraph break][i]I'll have to clear this with Herself,[/i] the radio complains";
		-- 6: say "Tormented, the All-Purpose Officer seems beyond speech, while the crowd has lost interest in the symbolic potency of the statue and is starting to lapse back into irritability. You overhear someone asking where to find soft-serve ice cream. From far off there is a rumbling of heavy vehicles approaching";
	if irritation count is greater than 1 and the teenagers are not in the location:
		say "[one of].[paragraph break]This is fun. I'm actually doing something, for once[or].[paragraph break]Poor bastard. You've got good aim. Like one of those western sheriffs who can shoot the gun out of his enemy's hand[or][stopping]";
	increase the irritation count by 1;
	now last irritation is the time of day.


The protest-sign is a sign on the giant Atlantida statue. The printed name is "sign". Understand "sign" as the protest-sign.

The description of the protest-sign is "It reads:

The Spirit of Atlantis is the Spirit of Referendum!

NO MORE 'NON-REFERRABLE PROCEDURES'...[line break]
...ON INTERNATIONAL RELATIONS[line break]
...ON ECONOMIC POLICY[line break]
...ON HUMAN RIGHTS".

The stuffed octopus is a thing. It is on the giant Atlantida statue. The flexible appearance of the stuffed octopus is "The discarded [stuffed octopus] lies on the [ground][one of], looking sadly at us[or], googly eyes fixed on the heavens[at random]."

The description of the stuffed octopus is "Slightly wrong, actually, but I suppose they didn't have a stuffed squid handy. Of the four symbols associated with Atlantis, the squid [--] representing invention and individuality [--] is the one that has greatest resonance for protesters[if the stuffed octopus is on the giant Atlantida statue].

This one has been tied to Atlantida's hand alongside the [end if][if the stuffed octopus is on the giant Atlantida statue and the olive branch is on the huge-metal-arm][olive branch] she traditionally carries[end if][if the stuffed octopus is on the giant Atlantida statue and the live branch is on the huge-metal-arm][live branch] she untraditionally carries[end if]."


Some traffic-island-protesters are a plural-named man. The printed name is "protesters". Understand "protesters" or "crowd" as the traffic-island-protesters. The initial appearance is "Protesters clog the street and sit or stand around the base of the statue."

The All-Purpose-Officer is a privately-named man in Traffic Circle. The printed name is "All-Purpose Officer". Understand "all" or "purpose" or "all-purpose" or "officer" as the All-Purpose-Officer. The description is "He is uniformed and has a look of serious determination." The All-Purpose-Officer is carrying a diminutive affixer and a restoration-gel rifle.

The description of the diminutive affixer is "A piece of special[ize]d equipment resembling a copper-plated staple gun. It shoots 'ette's and 'ling's and the odd 'mini' into words capable of receiving such endings."

Report taking the restoration-gel rifle for the first time:
	say "[We] pick up the rifle. It fits well in your hand: good heft. I feel like we know how to aim this thing. It's illegal to carry, but that doesn't seem to be bothering you right now." instead.
[The film crew is a man in Traffic Circle. "In addition to everything else, there's a small film crew [--] cameraman, someone with a mike, and what appears to be a reporter or narrator [--] filming the whole thing. The Bureau must love this."
	The description of the film crew is "It's curious how a familiar place in a TV show makes the show seem more authentic, but a film crew on location makes the [i]location[/i] seem fake. The protesters are giving the film crew an unreasonable amount of space, more than they'd allow to anyone else."]


Check waving the letter-remover at the teenagers when the current setting of the letter-remover is "s":
	say "Reducing the pair of teenagers to a single teenager would just add our own war crimes to this mix." instead.

Some teenagers are a woman in Traffic Circle. Understand "teens" or "teenage" or "girls" or "girl" or "teenager" or "defiant" or "nervous" or "handcuffs" or "cuff" or "cuffs" or "handcuff" or "bonds" as the teenagers. The initial appearance is "Two [teenagers] are cuffed to [a tree], apparently for safe-keeping while [the All-Purpose-Officer] undoes their vandalism." The description of the teenagers is "One of them looks nervous, the other defiant[one of]. When she catches us looking her way, she contorts herself uncomfortably in order to be able to give us the finger[or][stopping]."

Instead of saying hello to the teenagers:
	say "We try shouting to them over the hubbub of the crowd, but it doesn't really work. [one of]The defiant one waggles her tongue at us obscenely.[or]The nervous one swallows pathetically.[at random]".

Instead of saying hello to the All-Purpose-Officer:
	say "Aside from the fact that he's thoroughly distracted at the moment, I don't think we really [i]want[/i] his attention. He'll lock us up if he pays any attention at all to who and what we are."

A brown tree is a fixed in place thing in Traffic Circle. Understand "leaves" or "leaf" as the brown tree. The description is "It's a tree of indeterminate species. I'm pretty sure it wasn't here yesterday. Though the leaves are dusty and brown, there's no leaf-fall at all underneath the tree, and it's not one of the palms that usually grow in this area."

Instead of putting the restoration gel on the tree:
	say "There's too much intervening crowd for us to get there with any speed."

Sanity-check doing something when the noun is the tee or the second noun is the tee:
	move the tee to the repository;
	say "...come to mention it, where [i]is[/i] that tee? It must be somewhere in the grass, but we can't see it any more. Oh well. It's not as though I was planning an urgent golf game this afternoon." instead.

Instead of climbing the giant Atlantida statue:
	say "It doesn't look safe, and it would only make us more conspicuous."


Instead of going outside from Traffic Circle during protest-scenario:
	say "The way is still blocked by protesters."

Protest-scenario is a scene. Protest-scenario begins when the location is Traffic Circle and the player is not in a car.

Definition: a thing is unsuitable:
	if it is the live branch:
		yes;
	if it is the stuffed octopus:
		yes;
	if it is the protest-sign:
		yes;
	no.

A distant stuff rule when the person asked is the All-Purpose-Officer:
	rule succeeds.

The olive branch is distant. The live branch is distant. The stuffed octopus is distant. The protest-sign is distant. The signet is distant.

Every turn when the player is in Traffic Circle:
	let difference be the time of day minus the last irritation;
	if the teenagers are in the location:
		if the brown tree is not in the location:
			now the teenagers are nowhere;
			say "Freed from attachment to the tree, the teenagers look at each other and then run off into the crowd[if the stuffed octopus is in the location]. After a moment, the defiant one comes back, picks up the stuffed octopus, and re-enters the fray[end if].";
			if the stuffed octopus is in the location:
				now the stuffed octopus is nowhere;
			say "[line break][irritation reaction].";
		otherwise:
			say "[one of]'Go ahead, put us in Cold Storage!' shouts the defiant teenager. 'I'm happy to sleep through all this shit and wake up when we have jet packs and a government that respects the rights of its people.'[or]The nervous teenager looks unhappy. 'We won't get out of here until our families are all dead and global warming has reduced Atlantis to three square feet of hilltop.'[or]The nervous teenager struggles against her bonds.[or]One of the other protesters tries to free the teenagers while the All-Purpose Officer isn't paying attention, but the bonds are too strong.[or]The teenagers look at us rather desperately[if the player carries the letter-remover and the All-Purpose-Officer is in Traffic Circle and the All-Purpose-Officer carries the restoration-gel rifle and the The olive branch is on the huge-metal-arm and a random chance of 1 in 2 succeeds]. One of them glances at our [letter-remover] and then at the olive branch[end if].[stopping]";
			if difference is at least 11 minutes:
				say "[line break][irritation reaction].";
	otherwise:
		if difference is 1 minute:
			say "The crowd is parting. We might be able to leave soon.";
	if All-Purpose-Officer is enclosed by Traffic Circle and an unsuitable thing (called the target) is enclosed by the giant Atlantida statue:
		if the target is the live branch and the All-Purpose-Officer carries the restoration-gel rifle:
			say "[The All-Purpose-Officer] fires the [restoration-gel rifle] at [the live branch], but the statue is holding it at a difficult angle. The gel splatters uselessly across [the huge-metal-arm].";
		if the All-Purpose-Officer is not enclosed by the giant Atlantida statue:
			try the All-purpose-officer entering the giant Atlantida statue;
			now the All-purpose-officer is distant;
			make no decision;
		if the All-Purpose-Officer is not on the huge-metal-arm:
			try the all-purpose-officer entering the huge-metal-arm;
			make no decision;
		if the target is the stuffed octopus and the All-Purpose-Officer carries the stuffed octopus:
			try the All-Purpose-Officer dropping the the stuffed octopus;
			now the stuffed octopus is near;
			make no decision;
		try the All-Purpose-Officer touching the target;
	otherwise:
		if the All-Purpose-Officer is on the huge-metal-arm:
			move the All-Purpose-Officer to the giant Atlantida statue;
			say "[The all-purpose-officer] begins to climb down.";
			make no decision;
		if the All-Purpose-Officer is on the giant Atlantida statue:
			try the All-purpose-officer exiting;
			now the All-purpose-officer is near;
			make no decision;
		if the restoration-gel rifle is in the location:
			try the All-Purpose-Officer taking the restoration-gel rifle;
			make no decision;
		if the player encloses the restoration-gel rifle:
			say "The All-Purpose Officer, no longer distracted by the pressing business of tidying up the Atlantida statue, notices us with the rifle.

He has no qualms about hitting us with the diminutive affixer. It turns out that Alexandrette is a goldilocked poppet with a minimal capacity for self-def[ense] and no gun skills whatever. We're ignominiously [i]carried[/i] back to the Bureau and our subsequent trials are humiliation in a frilly pink dress.";
			end the story saying "That was careless";

Before the All-Purpose-Officer entering the giant Atlantida statue when the All-Purpose-Officer carries something (called target) which is not the diminutive affixer:
	try the All-Purpose-Officer dropping the target instead.

Before the All-Purpose-Officer touching an unsuitable thing which is on the giant Atlantida statue when the All-Purpose-Officer carries the stuffed octopus:
	try the All-Purpose-Officer dropping the stuffed octopus instead.

Instead of the All-Purpose-Officer dropping the stuffed octopus:
	move the stuffed octopus to the Traffic Circle;
	say "The All-Purpose Officer tosses the stuffed octopus away. It falls pathetically to earth.";
	rule succeeds.

Instead of the All-Purpose-Officer touching the stuffed octopus:
	try the All-Purpose-Officer taking the stuffed octopus.

Report the All-purpose-officer taking the stuffed octopus:
	say "Lab[our]iously and with obvious irritation, the All-Purpose Officer pries the arms of the stuffed octopus off the statue's wrist, where they appear to have been fixed with glue." instead.

Report the All-purpose-officer dropping the restoration-gel rifle:
	say "[The actor] [shift] the [noun] from one hand to another; looks around; and then props it against the foot of the statue." instead.

Report dropping the restoration-gel rifle in the presence of the giant Atlantida statue:
	say "[We] prop the rifle back at the foot of the statue." instead.

Report the All-purpose-officer entering the giant Atlantida statue:
	say "[one of][The actor] goes around to the back of the statue and begins to climb up the leg, finding footholds in the folds of Atlantida's gown. It looks like a precarious business, but he's determined[or][irritation reaction].[paragraph break][The actor] begins to climb Atlantida once more[stopping]." instead.

Report the All-purpose-officer entering the huge-metal-arm:
	say "[one of]Gritting his teeth, [the actor] climbs for access out onto Atlantida's [huge-metal-arm]. It looks about as sturdy as a substantial tree branch, but more slippery, and inconveniently angled[or][irritation reaction]. [The actor] clambers back onto the arm[stopping]." instead.

Report the All-purpose-officer exiting when the All-purpose-officer is on the giant Atlantida statue:
	say "[The all-purpose-officer] climbs back onto Atlantida's torso[if the player carries the restoration-gel rifle]. We'd better not let him catch us with this rifle[end if]." instead.

Instead of the All-Purpose-Officer touching the live branch:
	say "The All-Purpose Officer reaches out and touches [the noun][one of]. He must have a small restoration gel applicator[or] with his gel-covered finger[stopping]. ";
	gel-convert the live branch.

Instead of the All-Purpose-Officer touching the protest-sign:
	say "[one of]Once the All-Purpose Officer comes level with [the protest-sign], he shoots it with [the diminutive affixer], turning it into a [signet][or]Forced to repeat himself, [the actor] jams the diminutive affixer into the sign a little harder than strictly necessary, with predictable results[or]Stony-faced with fury, [the actor] punches [the protest-sign] again with the diminutive affixer[stopping]. [run paragraph on][signet description][paragraph break]";
	diminish the protest-sign.

To diminish (item - a thing):
	move the signet to the holder of the item;
	move the item to the repository;
	now the signet is not proffered by anything;
	now the item proffers the signet.

Carry out shooting the signet with the restoration-gel rifle:
	increase the iteration of the signet by 1.

Report shooting the signet with the restoration-gel rifle:
	say "[irritation reaction].";

[Somewhat cheaply, to explain why we can't just gel the depluralized pedestrians and why we don't want to keep the rifle anyway, we have the player run out of pellets just before the scene concludes. But it fits, anyhow: gives the idea of a limited and rare resource in contrast with the other items that we'll be using more constantly.]

Instead of shooting something with the restoration-gel rifle when the irritation count is 6 and protest-scenario is happening:
	say "We take a shot, but the rifle is out of gel pellets. It clicks uselessly in our hands.

[irritation reaction]."

Sanity-check taking the restoration-gel rifle when the All-Purpose-Officer is not enclosed by the giant Atlantida statue and protest-scenario is happening:
	say "[The All-Purpose-officer] is right here. You have too much sense to make a move until he's a little more distracted." instead.

When protest-scenario begins:
	now last irritation is time of day.

[When protest-scenario begins:
	say "[An All-Purpose-officer] is scaling the statue, [diminutive affixer] under his arm. His restoration gel rifle is abandoned at the statue base, probably because it's not plausible to carry both at once.";]


Protest-scenario ends in DP-tanking when irritation count is 7.

When protest-scenario ends in DP-tanking:
	say "There's a bright light and a catastrophic bang and world goes eerily silent. The protesters are gone; all but one.

A policeman in blue is cuffing a single old woman in a Not Guilty shirt. Her eyes are wild with fury and fear and simple madness.

And that, my friend, is why civil disobedience doesn't work around here. We've just seen a deplural[ization][if the teenagers are not in the location].

At least the teenagers got away[end if].";
	custom-wait for any key;
	say "[line break]You know they'll be restored in a few hours, but not confined to that singular form. Most of them will probably get off with fines[if the teenagers are in the location], except the teenagers, who have committed specific crimes against the majesty of the state[end if]. You know it's unlikely anyone has died just there. You know that within minutes, the international news organ[ization]s will be running satellite pictures of a 'suspected deplural[izing] event' on the island.

It's not, so to speak, our business any more.";
	now the protesters are nowhere;
	now the All-purpose-officer is nowhere;
	now the traffic-island-protesters are nowhere;
	if the player encloses the restoration-gel rifle:
		say "[line break][We] ditch the rifle [--] it's too large to fit in the car. ";
	now the restoration-gel rifle is carried by atlantida-woman;
	say "Traffic is starting to move again. We'd better get on to the dead drop. [run paragraph on]";
	if a car (called target car) is in the location:
		try entering the target car;
		move the target car to the Roundabout;
		try looking.

Protest-scenario ends in departure when the player is in a car and the teenagers are not in the location.

When protest-scenario ends in departure:
	say "[unless the player is in a car]We climb back in the car, and no[otherwise]No[end if] one seems to be much the wiser about what just happened. I have to say, you know what you're doing. ";
	now the protesters are nowhere;
	now the All-purpose-officer is nowhere;
	now the traffic-island-protesters are nowhere;
	if the player encloses the restoration-gel rifle:
		say "[We] ditch the rifle out the window [--] it's too large to fit in the car. ";
	now the restoration-gel rifle is carried by atlantida-woman;
	say "Traffic is starting to move again. We'd better get on to the dead drop.";
	if a car (called target car) is in the location:
		move the target car to the Roundabout;
		if target car is open:
			silently try closing target car;
		if target car is quiet:
			silently try switching on a random ignition which is part of target car;
		try looking.

Protest-scenario ends in early time-out when the teenagers are not in the location and the time of day minus the last irritation is at least five minutes.

When protest-scenario ends in early time-out:
	say "The situation is calming down. ";
	now the protesters are nowhere;
	now the All-purpose-officer is nowhere;
	now the traffic-island-protesters are nowhere;
	if the player encloses the restoration-gel rifle:
		say "[We] ditch the rifle [--] it's too large to fit in the car. ";
	now the restoration-gel rifle is carried by atlantida-woman;
	say "Traffic is starting to move and the car behind ours is not delighted that someone is parked in front of it.";
	if a car (called target car) is in the location:
		try entering the target car;
		say "I have to say, that was impressive. I wouldn't have had the nerve and focus for that on my own. And I can't shoot, either. But we'd better get on to the dead drop.";
		move the target car to the Roundabout;
		try looking.

Instead of shooting the All-purpose-officer with the restoration-gel rifle:
	say "[one of]We shoot [the all-purpose-officer] in the back. He doesn't change forms, of course, but he flinches and cries out. That must have hurt, a lot. The back of his shirt is covered with gel.[paragraph break][irritation reaction][or][We] shoot again. He'll have some bruises tonight.[paragraph break][irritation reaction][stopping]."

[As "shooting something that the enemy is holding" sets up a parallel with the solution to the Atlantida endgame puzzles, we want to reward the line of thinking rather than discouraging it.

In re. the leaflet, this happens only if the player hasn't already found the leaflet in the crate (where it functions as a possible preparation for this scene). In general, we don't play many magician's choice tricks in Counterfeit Monkey, but it's worth cheating a little occasionally to make sure that the player not only finds what we want him to find but does so in an order that fits the pace and flavor of what's going on around him in the game. Running across this leaflet *after* the protest is still conceivably possible if the player doesn't find the crate earlier *and* doesn't shoot the affixer, but it's less likely.]

Instead of shooting the diminutive affixer with the restoration-gel rifle when the All-purpose-officer is enclosed by the giant Atlantida statue:
	say "[one of]You take exact aim and fire[or]You shoot again, very precisely[stopping]. ";
	if the leaflet is unseen:
		say "The diminutive affixer doesn't change into anything, but thanks to the impact, the Officer misfires it into a leaf from Atlantida's olive branch.

A single [leaflet] flutters to the ground.

[irritation reaction].";
		now the leaflet is not proffered by anything;
		now the leaflet is proffered by the leaf;
		move the leaflet to the location;
	otherwise:
		say "The diminutive affixer doesn't change into anything, but the impact jars the Officer's hand and the affixer punches firmly into the statue.

The statue scales down abruptly into a ten-inch statuette. The Officer falls with it, though apparently without serious injury. The crowd goes silent, unsure what to do with (from their point of view) the total disappearance of a major landmark.

The Officer realizes that something unthinkable has just happened, and gels the statuette at once. The status quo is thus restored, more or less, except that the Officer is now clinging precariously to the statue's leg.

[irritation reaction].";
	now the All-Purpose-Officer is on the giant Atlantida Statue.

Instead of shooting the giant Atlantida statue with the restoration-gel rifle:
	say "We fire. The statue itself doesn't change, of course, but there's now a spray of gel across its gown. The people nearest us react to this with at best moderate enthusiasm, as the symbolism of actually destroying Atlantida is appealing to no one.

[irritation reaction]."

Instead of shooting the huge-metal-arm with the restoration-gel rifle:
	try shooting the giant Atlantida statue with the restoration-gel rifle instead.


Test circlewait with "get out / put paste on car / get out / wave o-remover at olive branch / get rifle / shoot tree / shoot affixer / shoot signet / g / g ".

Test circletimeout with "get out / put paste on car / get out / z / get rifle / shoot tree / drop rifle / z / z / z / z".

Test circlewalkout with "get out / put paste on car / get out / z / get rifle / shoot tree / drop rifle / enter car".

Test caughtinact with "get out / put paste on car / get out / z / get rifle / z / z / z / z".

[Often the concept -- of the self, of the democracy, of the other -- stands in the way of the process that would lead to understanding, effective compromise, and the construction of an integrated identity; a process that is never easy.]


Act II Among Smugglers ends here.
