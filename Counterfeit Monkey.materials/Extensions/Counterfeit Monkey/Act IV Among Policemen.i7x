Act IV Among Policemen by Counterfeit Monkey begins here.

Use authorial modesty.


Book 4 - Act IV Among Policemen

Part 1 - The Bureau

Chapter 1 - The Bureau and Environs

Section 1 - Tall Street

East of Roundabout is Tall Street. Tall Street is a southern road. The description is "Tall Street is very quiet. No celebrations have reached this far, and neither is there any business today; so it has an air of dull abandonment. At the [east] end the street bends to go around an old park rarely visited."
The distant-rotunda is scenery in Tall Street. It is distant. The printed name is "rotunda". Understand "rotunda" and "distant" and "blue" and "bureau of orthography" as the distant-rotunda.

Sanity-check doing anything when the location is Tall Street and distant-rotunda must be touched: say "From here [we] can't reach." instead.

The description of the distant-rotunda is "It is brighter blue than the sky and soars many [if the player wears the Britishizing goggles]storeys[otherwise]stories[end if]."

Rule for listing exits when looking in Tall Street:
	if Pinata Celebration is happening:
		do nothing instead;
	if boldening is true:
		say "To the [b]south[/b] is the important blue [b]rotunda[/b] of the Bureau of Orthography. The street runs [b]west[/b] towards the busy roundabout.";
	else:
		say "To the south is the important blue rotunda of the Bureau of Orthography. The street runs west towards the busy roundabout."

The employment office is a facade in Tall Street. It fronts north. It is scenery.
	The description is "Only the stencilled lettering in the window identifies this place: Temporary Employment For Job Seekers. The blinds are down and the door locked. It doesn't look like a large facility." Understand "blinds" or "blind" or "door" or "window" or "lettering" as the employment office.

Section 2 - Abandoned Park

The Abandoned Park is east of Tall Street. It is southern. The description is "In contrast with the parks in the more savory parts of town, this is a bit of [patchy grass] where local dogs occasionally come out to do their business. A granite [war memorial] is fixed at the cen[ter][one of], which is why tourist maps optimistically call the place Monument Green. But the memorial is only moderately monumental and the grass hardly green at all[or][stopping]."
	Understand "monument" or "green" as the abandoned park.
	The introduction is "It is a place that might have been developed long ago; only it is known that there are remains of Roman settlement here, and there is a risk that digging out the foundations would turn up some of those ruins, exposing a large number of Latin-language objects to the light of day. To prevent this catastrophe the whole area has been placed off limits to development."

A war memorial is scenery in the Abandoned Park. Understand "granite" as the war memorial. The description is "It's a curious thing: it stands taller than a person and yet seems almost embarrassed and self-effacing. The lettering is cut quite small, and the names thereon are tightly spaced. Since 1829 there have been only thirty-five officially sanctioned surnames on the island, which means that, for reasons of space, the names have been truncated to numbers, and the result is a list that looks almost like a table of Biblical quotations: John 31, Mark 12, Paul 29.

The reason for all this compactness is that the memorial is dedicated to the dead of [i]all[/i] wars. Deaths from the War of Secession and the Civil Dispute of Standard[ization], losses from islanders volunteering in the French Foreign Legion, and the hefty cost of World Wars I and II, all are crammed into the upper left corner, leaving room for a long and bloody future."

A poppy is on the war memorial. Understand "flower" as poppy. The description is "Not a real, fresh poppy, but a construct of bright red fabric with a black heart."

A description-concealing rule when the poppy is marked for listing:
	if the poppy is not seen and the poppy is not handled:
		now the poppy is not marked for listing.

Test poppy with "look / x memorial / look" in abandoned park.

The patchy grass is scenery in the Abandoned Park. Understand "dirt" or "ground" or "soil" as the patchy grass. The scent-description is "dusty ground". The description of the patchy grass is "It's growing in dry flat tufts, from dusty earth."

Instead of digging in the patchy grass:
	if the dog is not seen:
		move the dog to the player;
		say "There does seem to be something metal just under the surface. A bit of scrabbling at the dirt is enough to excavate it: [a dog], made of metal, which might be almost any age.";
	otherwise:
		say "There's nothing else obviously close to the surface."

The description of the dog is "A small, heavy metal figurine representing a watchdog. He looks ferocious, on the verge of attacking. The teeth are especially savage." Understand "metal" or "small" or "heavy" or "figurine" or "watchdog" as the dog. The heft of the dog is 2.

Test dog with "tutorial off / dig / g / x dog / test dog-placing" in abandoned park.
Test dog-placing with "put dog on pedestal / get god / n / autoupgrade / wave z-remover at kudzu / look behind bushes / put god in shrine / look" in Roget Close.

A twig is a thing in Abandoned Park. The initial appearance is "[one of][We] step on a [twig] before [we] back away again.[or]A [twig] lies in the grass.[stopping]". The description is "Nine or ten inches long, very thin and somewhat flexible. There are no leaves left on it."

Instead of propping a door with the twig:
	say "A nice thought, but the twig is too short and supple to make an effective prop. One needs something a bit longer."

Rule for listing exits when looking in the Rotunda:
	do nothing instead.

The used furniture shop is a facade in Abandoned Park. It fronts east. The description is "Like just about everything else, the shop is closed, but were it open, it would be just the place to buy cracked mirrors, scuffed end tables, and wobbly chairs painted with a thick layer of off-white paint." It is scenery.

The veterinary clinic is a facade in Abandoned Park. It fronts north. It is scenery.
	The description is "From outside it looks just the same as almost any kind of professional office: there could just as well be a doctor in there, or a lawyer, or a psychiatrist."



Section 3 - Bus Station

The Bus Station is southeast of the Abandoned Park. It is southern. The description is "A currently-desolate depot from which buses run seasonally to Maiana, the island's other major town. The [station building] is a low, rectilinear edifice from the 60s, all pebbled concrete and sheet glass, but it's shut, leaving accessible only a series of empty [bus bays] and a [wall-mounted schedule]. The public convenience to the [east] is the only thing open, while the area to the [northwest] is open parkland."

The old station building is scenery in the Bus Station. The description is "It's the most pathetic thing imaginable: the future, as imagined by the past. No one is in there at the moment." Understand "pebbled" and "concrete" and "sheet" and "glass" and "edifice" as the old station building.

The bus bays are scenery in the Bus Station. The description is "There are three bays, though it's rare for more than one to be in use at a time unless a chartered bus service is running on behalf of tourists or the schools."

The wall-mounted schedule is scenery in the Bus Station. The description is "The schedule is an intricate affair, and the de[if the player is wearing britishizing goggles]cy[otherwise]ci[end if]phering of the various letter-codes and footnotes was actually a subject of study in my grade school. The buses run every sixty-two minutes during daylight in the winter, every forty-three minutes in summer, with every third bus running as an express without stops if the passengers of this bus do not vote otherwise.

During the run of the school year there is an extra inbound bus in the morning and outward in the afternoon; contrariwise the bus is on half-schedule Sundays and holidays, except major patriotic holidays when there is no bus at all.

Like today."

Understand "wall" and "mounted" as the wall-mounted schedule.

The shed is a thing in the Bus Station. The initial appearance is "A [shed], rather ramshackle and unlikely, sits on the pavement, where it ought to be in the way of incoming buses." The heft of the shed is 10. The description of the shed is "Sheds like this are typically cheap and very very temporary housing for the homeless. The policy of the Bureau is that no one is allowed to beg, and punishments for begging and homelessness are often quite stiff, so there is nothing in the way of an established shelter on the island and little recourse for those who might need it."

Instead of opening or entering the shed:
	say "It's locked, but I doubt there's anything inside but possibly a few used blankets."

A dove is a bird in the Bus Station. The initial appearance is "A [dove] flutters from one surface to another, occasionally stopping to stare at us." The heft of the dove is 2. Understand "bird" as dove. The description is "It is pure white, probably a refugee from a group released at a wedding. People do occasionally get married on Serial Comma Day."

The long-road is a facade in the Bus Station. The printed name is "long road". Understand "long" or "road" as the long-road. It is scenery. It fronts southeast. The description is "A long road leads through the outskirts of town south and east towards the rest of the island. It's an interesting journey, but not for today."
	The closure notice is "That would be a long walk and in the wrong direction. ".

The convenience-exterior is a scenery facade in the Bus Station. It fronts east. The printed name is "public convenience". Understand "public" or "convenience" as the convenience-exterior. The description is "A humble structure."

Rule for listing exits while looking in Bus Station:
	do nothing instead.

Section 4 - Public Convenience

[The public convenience existed from a fairly early stage of the game development, as a place to change your wig or look in the mirror or acquire some soap. The dead-drop puzzle was a late addition to the game, and it came about because I felt that I wanted to make the espionage aspects more convincingly espionage-y. I used this excuse to read a couple of LeCarré novels — research, you see — and then extracted the concepts that I thought would be easiest to transfer into the context of IF.]

The Public Convenience is east of Bus Station. It is indoors and southern. The Public Convenience is a public restroom. The description of Public Convenience is "There are just the two toilet stalls[if at least two sinks are in the location] and a couple of [sink-collectives], but the place has been kept up reasonably well, if one doesn't count the [random graffiti][otherwise if one sink is in the location] and a single [random sink in location], the other one having been vandalized. The [random graffiti] adds a grim touch[otherwise], though both sinks are gone and there is [random graffiti] on the walls[end if]."

Out-direction of the Public Convenience is west. [To the bus station]

The introduction of the Public Convenience is "A faint smell of lavender lingers in the air."

The smell is scenery in the public convenience.

Instead of doing anything when the smell is the noun or the smell is the second noun:
	try smelling the Public Convenience.

Instead of smelling the Public Convenience when the ash is in the wall-hole:
	say "The smell seems to emanate from the small hole in the wall."

Before putting gel on the ash:
	now the smell is nowhere.

After reading a command when location is Public Convenience (this is the replace sinks with sink rule):
	now the referred of the sink-collectives is false;
	while the player's command includes "sinks":
		now the referred of the sink-collectives is true;
		replace the matched text with "sink".

Some sink-collectives are scenery in the public convenience. The sink-collectives are privately-named. The sink-collectives have a truth state called referred. The printed name is "sinks". Understand "sink" as sink-collectives when there is no sink in location.

Instead of examining a sink when the referred of the sink-collectives is true and there is more than one sink in location:
	now the referred of the sink-collectives is false;
	if location is not public convenience:
		continue the action;
	say "The sinks are nothing special. Clean enough, I suppose."

Instead of doing something when the sink-collectives is the second noun:
	if the number of sinks in the location is 0:
		say "[We][']ve already gotten rid of all the sinks to be found in this area." instead;
	otherwise:
		now the second noun is a random sink in location.

Instead of doing something to the sink-collectives:
	if the number of sinks in the location is 0:
		say "[We][']ve already gotten rid of all the sinks to be found in this area.";
	otherwise:
		now the noun is a random sink in location.

[After going to Public Convenience:
	let N be the number of entries in the path so far of the player;
	if N is greater than 1:
		say "[path-walked so far]";
	otherwise:
		clear the path-walked for the player;
	[if hurrying:
		say "[line break]";]
	say "I double-take before remembering to go into the women's side; it's a good thing you're nudging me along.";
	continue the action.]

Include Dispensers by Counterfeit Monkey.

The wall-hole is a fixed in place container in the Public Convenience. Understand "hole" or "hole in the wall" or "hole in wall" or "wall" as the wall-hole. The printed name is "[if looking]hole[otherwise]hole in the wall[end if]". The initial appearance is "About knee-height in one of the stalls is a [wall-hole] that runs right through the wall between the men's and women's restrooms." The description of the wall-hole is "It's too small to get a good look through, really, and usually cluttered with junk."

The carrying capacity of the wall-hole is 1.

Report searching the wall-hole when the ash is in the wall-hole:
	say "[one of]At first there doesn't seem to be anything in there, but when we put our finger in, we find it's full of ash[or]The ash is still mounded up in the hole[stopping]." instead.

A description-concealing rule:
	if the ash is marked for listing and the ash is in the wall-hole:
		now the ash is not marked for listing.

The introduction is "It's here that you and Brock and Slango usually leave things for one another."

The ash is a fluid thing in the wall-hole. The description is "It's fine grey-white powder, and a fair quantity of it: too much to have come from a cigarette or two." The indefinite article is "some".
	The scent-description of the ash is "bitter smokiness".

Instead of touching the ash:
	say "It leaves white-grey smears on our fingers."

Test ash with "tutorial off / open tub / get ash / smell ash / touch ash / put gel on ash / x card / wave t-remover at trash / wave r-remover at rash / x ash / gel ash / x trash" in the Public Convenience holding the tub.

Test tap with "tutorial off / x sinks / x sink / turn on tap / g / look / examine sink / x water / turn on water / look / x water / drink water / x sink / turn off tap / x sink / look / turn off water / turn off / x water / drink water" in the Public Convenience.

Section 5 - Rotunda

The Rotunda is south of Tall Street. It is indoors, checkpoint and southern. The description is "Echoing space, marble floor, eye-like [skylight] many me[ter]s above us: so far, the Rotunda might belong to any 19th-century government bureau of means and self-importance.

What sets this one apart is the lettering, each sigil no bigger than a flea, carved over every inch of the walls. Inscribed here is, in fact, the [italic type]entire[roman type] [inscribed-text] of A New Orthodox Orthography[if the Rotunda is unvisited], which means that if [we] had a great deal of patience and many rolls of butcher paper, [we] could take rubbings and wind up with our very own volume.

[We] don't, of course. There are better things to do. More important places to go[end if]. The administrative part of the bureau is away to the south, and there is an exhibit of letter tools to the east, which is open to the public."

Out-direction of Rotunda is north. [To Tall Street]

Instead of facing up in the Rotunda: try examining the inscribed-text.

The skylight is scenery in the rotunda. The description is "It is distant and perfectly round."

The inscribed-text is scenery in the Rotunda. Understand "new" or "orthodox" or "orthography" or "inscribed" or "text" or "lettering" or "inscription" as the inscribed-text. The printed name is "text". The description of the inscribed-text is "It is far too small to read, especially since the letters are not painted or inked, just carved into the stone surfaces." Instead of touching the inscribed-text: say "The letters are cool and tiny under our fingers."

The informational bulletin-board is fixed in place in the Rotunda. Understand "bulletin" or "board" as the bulletin-board. The initial appearance is "Near the street entrance is a sizable [bulletin-board] advertising the services of the Bureau[if the bin is in the location]; and next to this, pushed back to be out of the way, is a [bin][end if].[run paragraph on]"

The description is "[i]What Can Your Bureau of Orthography Do For You?[/i] inquires the bulletin board, in a sprightly casual font.

On a sheet labeled [i]From Plumbing to Medicine... 'And More'[/i], the bulletin board describes the tools available to the All-Purpose Officers, including a synthes[ize]r for combining two word-objects into one; Q- and Z-inserters (most letters are still under development); and even specially licensed equipment capable of producing living creatures.

For immigration and importation services, such as assigning Atlantean names to immigrants, neutral[izing] foreign-language pets, and approving imported goods, [we] are encouraged to visit the Customs House instead."

After examining the informational bulletin-board:
	say "A handwritten note is tacked up after this, which adds that the synthes[ize]r is unavailable for public use through Dec. 19th because it is on loan to the university Department of Language Studies[if Samuel Johnson Hall is not visited][one of]. Hey, that's my department![or].[stopping][otherwise].[end if]"

A bin is a container in the Rotunda. It contains a shuttle. The description of the bin is "BUREAU PARKING, reads the bin, in thick black marker. DO NOT TAKE UNLESS AUTHOR[IZE]D."

The description of the shuttle is "It's a wooden device that holds a quantity of yarn, allowing the user more easily to pass the thread back and forth while weaving.

It is also a bit of a snarky joke on the Bureau's part. Atlantean land prices being what they are, the Bureau prefers not to have to build a parking garage. Instead they have shuttles that an All-Purpose Officer with a homonym paddle can easily convert into a full-sized vehicle for use, and back again for easy storage.

The shuttles in their untransformed state are no earthly use to anyone else, of course, which is why they can be left around unsupervised."


Section 6 - Tools Exhibit

The Tools Exhibit is east of the Rotunda. It is indoors and southern.

The description of the Tools Exhibit is "This area, though technically part of the Bureau, is open to the public as a display of the tools (past and present) of orthographical dominance. Everything is, alas, behind glass. Over at one end of the room is a Regency version of your own letter-remover [--] known as the [Model T], because that is all it was originally able to remove.

Next to that there is [an anagramming gun] and [an etymological reversing chamber]." The printed name of the Tools Exhibit is "Tools and Techniques Exhibit".

The display case is a scenery container. It is in the Exhibit. It is transparent, openable, and closed. Understand "glass/exhibit" or "casing material" as the display case.

Before inserting something into the display case:
	abide by the display-case-closed rule.

Before inserting something into something that is enclosed by the display case:
	abide by the display-case-closed rule.

Before putting something on something that is enclosed by the display case:
	abide by the display-case-closed rule.

This is the display-case-closed rule:
	say "[The display case] isn't open.";
	abide by the cancel multiple rule.

Before empty-removing something that is enclosed by the display case:
	say "[no stealing from display case]" instead.

Before taking something that is enclosed by the display case:
	say "[no stealing from display case]" instead.

Before removing something that is enclosed by the display case from:
	say "[no stealing from display case]" instead.

Instead of opening or attacking the display case:
	say "[no stealing from display case]".

The parser nothing error internal rule response (E) is "[if noun is the display case][no stealing no line break][otherwise][The noun] [aren't] open.[end if]"

To say no stealing from display case:
	say "[no stealing no line break][line break]".

To say no stealing no line break:
	say "[one of]I don't want to sound like I doubt your criminal credentials, or whatever, but I doubt even you can successfully steal from this display case[or]No. Sorry, I just don't see how it could possibly work without our getting caught[or]Still not interested[stopping]. The casing material would stop a bullet. ".

Instead of searching the display case:
	try examining the display-platform.

Instead of examining the display case:
	if the subcommand of the display case matches "glass/casing/material" or the subcommand of the display case includes "casing/material":
		say "The casing material would stop a bullet.";
	otherwise:
		try examining the display-platform.

A description-concealing rule when the location is Tools Exhibit:
	now the display-platform is not marked for listing.

The display-platform is a supporter in the display case. Understand "pedestal" or "platform" as the display-platform. Understand "display/exhibit" as the display-platform when location is Display Reloading Room. The printed name is "display platform".


Instead of shooting the display-platform with the loaded anagramming gun:
	say "The display platform shatters and starts to reassemble as [one of]a soft drippy llama[or]fatally dim props[or]dim floppy altars[or]papa's moldy flirt[or]forty pallid amps[or]a tipsy mallard fop[at random], but the containment control fails at the last minute and it goes back to being itself. Must just be too big an object for the gun to handle."

The Model T is a thing on the display-platform. The description is "The Regency-era T-remover is clumsy-looking and too big to lift, thanks to the coal boiler required to power it. It still bears the maker's mark of one S. Meretzky." The heft of the Model T is 12. Understand "coal" or "boiler" as the Model T.

Instead of taking the model T:
	say "It is much too large to lift."

Instead of switching on the Model T:
	say "It doesn't switch. It requires coal and water and a lot of patience, and [we] don't have a long supply of any of those things. Besides, it would only do 1/26th of what the ordinary letter-remover can do."



The Etymological Reversing Chamber is a closed openable container on the display-platform. The heft of the Etymological Reversing Chamber is 12. The description is "It looks like an iron lung [--] a large sealed chamber with extensive machinery surrounding it. It is able to make words run back to their linguistic roots: ape into apa, pearl to perle, and so on.

The machine is of little popular use and is principally applied by scholars under controlled circumstances."
	The introduction is "Despite newspaper articles breathlessly proclaiming that the ERC will be able to produce the 'God language' [--] mankind's original tongue [--] in practice even the more modest research goal of rediscovering the vocabulary of proto-Indo-European would require prohibitive amounts of power. As one moves further and further from forms that are familiar to modern speakers, the reification effort required increases exponentially."

Understand "erc" as the Etymological Reversing Chamber.

Report opening the Etymological Reversing Chamber for the first time:
	say "There is an exhalation of funereal dust, as though you had cracked an Egyptian tomb." instead.

Instead of switching on the Etymological Reversing Chamber:
	say "It is not plugged in, nor is there any plausible way to plug it in around here. Just as well: it probably draws a lot of power."

Sanity-check plugging the power cord into the Etymological Reversing Chamber:
	say "The plug is the wrong size. And there is no power outlet within reach." instead.

Sanity-check plugging a massive plug into the Etymological Reversing Chamber:
	try plugging the power cord into the Etymological Reversing Chamber instead.

Table of Ultratests (continued)
topic	stuff	setting
"reversing"	{ army, members }	Tools Exhibit

Test reversing with "tutorial off / put remover in reversing chamber / insert apple into reversing / put all in reversing" holding the apple.

A description-concealing rule when the location is the Tools Exhibit:
	now the Model T is not marked for listing;
	[now the Britishizing goggles are not marked for listing;]
	now the anagramming gun is not marked for listing;
	now the Etymological Reversing Chamber is not marked for listing.

Sanity-check going to a privately-controlled room in Official grounds:
	if Cold Storage is visited:
		make no decision;
	[if the player encloses a visible bureau-disallowed thing:
		say "If [we] [are] going to try to get into the Bureau, [we][']ll need a pass and a reason for entry, and [we] should probably hide most of our possessions[if the player carries something bureau-allowed]. It's fine to have [the list of bureau-allowed things enclosed by the player], and our[otherwise]Our[end if] hair and clothing probably won't be closely searched, but anything illegal or weird, or anything an authentication scope would identify as fake, like [the list of visible bureau-disallowed things enclosed by the player], will need to be smuggled inside something else." instead; ]
	if a fake person (called ringer) is in the location:
		say "[The ringer] would probably give us away if [they] followed us. Best take care of that first." instead;
	if a fake person (called ringer) is enclosed by the player:
		say "[The ringer] would probably give us away if we carried [them] around. Best take care of that first." instead;
	[if the noisemaker is something:
		say "[The noisemaker] might give us away. Better take care of [them] first." instead;]
	continue the action.

Section 7 - Antechamber

The Antechamber is south of the Rotunda. It is indoors, southern and checkpoint. The description is "The most important task of any government bureau is to keep away time-wasters, irritants, and uninformed members of the general public, who might distract the diligent workers within from their important tasks. The Bureau of Orthography is no different.

An [instructive notice] details the criteria for entry to the Bureau proper."

Out-direction of Antechamber is north. [To the rotunda]
In-direction of Antechamber is east. [To Bureau hallway]

The instructive notice is scenery in the Antechamber. The description is "Please note that those wishing to enter must have a PASS suitable for visitors, which must include an UP TO DATE photograph closely resembling the subject. Passes that do not look like their possessors will be rejected.

Visitors will also need an additional proof of their business in the Bureau, such as a letter of invitation from a Bureau authority.

All credentials will be subject to inspection with an authentication scope.

Anyone attempting to enter the Bureau with a falsified pass or lack of proper credentials may be subject to FINES and INDEFINITE DETENTION."

A tall stool is in the Antechamber. The description of the stool is "It looks uncomfortable."

Instead of waving the letter-remover at something in the presence of the secretary:
	say "Not with the secretary watching, [we] don't."

The secretary is a police woman on the tall stool. The description of the secretary is "Curiously, she refuses to quite meet our eye."

Understand "woman" or "guard" as the secretary. [The secretary carries an Authentication Scope.] She wears a pencil skirt and a plain white top. Understand "shirt" or "blouse" as the top.

The description of the pencil skirt is "A prim, pencil-length number reaching to just below the knee. It is the regulation shade of Orthographical Blue."

The description of the plain white top is "Devoid of ruffles, lace or other distractions."

[Originally the secretary could be solved in a variety of different ways. Initially she was dressed in a skirt and blouse, both of which could be letter-removed to make other objects, so that she'd be embarrassed by her sudden denuding and run out of the room. That solution didn't last very long at all, though, since about two seconds of thought suggested it was both mean-spirited and creepy.]

Rule for writing a paragraph about the secretary when the location of the cad is the location:
	say "[The secretary] sits on [a stool], fidgeting with [if a random chance of one in two succeeds]the hem of [the skirt][otherwise]the neckline of [the plain white top][end if], and glaring at [the cad]. ".

Rule for writing a topic sentence about the secretary:
	say "Here to guard access to the rest of the building is [a secretary][if the secretary is on the tall stool] [in-on a tall stool][end if].[no line break] [run paragraph on]".

[Every turn when the secretary carries the skit:
	say "[The secretary] screeches in horror at her newly defrocked state, and leaps from [the stool], dropping [the list of things carried by the ]. She runs from the room.

The skit [--] which turns out to be performed by a harmless-looking man wearing a tea-towel on his head [--] turns to us and says, 'Oh dear!'

The man departs after her.";
	now everything carried by the secretary is in the location;
	remove the secretary from play;
	remove the skit from play. ]

Player-is-allowed is a truth state that varies. Player-is-allowed is false.

Instead of someone going to Bureau hallway from the Antechamber when the person asked does not enclose the pass:
	if the actor is in location:
		say "'Pass?' demands the secretary in a bored voice. [The person asked] shrugs and goes no further."

Instead of going to Bureau hallway from the Antechamber when the player does not enclose the pass and player-is-allowed is false:
	if the number of entries in the path so far of the player is greater than 1:
		say "[path-walked so far]";
	otherwise:
		clear path-walked for player;
	say "[one of][We] stride confidently toward [the noun] [--] that's my contribution, as you're more of a shuffler or possibly a slinker. Actually, I think a little of your posture must still be showing, because [we] [are] stopped by the secretary. [or]I do my best to give us a cocky swagger, but she's on to us now. [stopping]";
	if the player is staid:
		say paragraph break;
	if the current interlocutor is not the secretary, silently try saying hello to the secretary;
	try the secretary discussing pass-need.

Sanity-check showing the invitation to the secretary:
	try going east instead.
Sanity-check showing the pass to the secretary:
	try going east instead.

Instead of going to Bureau hallway from the Antechamber when the player encloses the pass and the secretary encloses the Regulation Authentication Scope and player-is-allowed is false:
	if already caught is true:
		make no decision;
	if the number of entries in the path so far of the player is greater than 1:
		say "[path-walked so far]";
	otherwise:
		clear path-walked for player;
	if the pass is marked invisible:
		if the pass is enclosed by a closed container (called the barrier):
			try opening the barrier;
		try taking the pass;
	otherwise:
		say "[We] show our pass to the secretary.";
	if the player does not wear a hairpiece and the player does not wear the wig:
		now already caught is true;
		say "[line break]The secretary looks at the pass, then looks at us. 'This isn't you on the pass,' she says. [paragraph break]'I've changed my hair,' I explain. 'And I'm wearing different contacts. And I've lost some weight.'[paragraph break]She looks at the picture, then at us again. 'Nope,' she says [--] and sends the room into lockdown.[paragraph break]I'm telling you, it's the hair that did it. If that matched better, I doubt she would have looked so closely at the rest.";
		end the story saying "Our arrest goes badly";
		stop the action;
	if the player wears a hairpiece (called H) which is not disguised:
		try the secretary looking at H through the scope;
		end the story saying "Our detention goes badly";
		stop the action;
	if the player wears the wig and the wig is not disguised:
		try the secretary looking at the wig through the scope;
		end the story saying "Our detention goes badly";
		stop the action;
	if the player does not enclose the invitation:
		now already caught is true;
		say "[line break]The secretary looks at the pass, then looks at us. 'And the purpose of your visit?' [paragraph break][We] say [we] [are] here at invitation to examine the T-inserter. She asks where the invitation is. [We] admit [we] don't have it just at the moment. It is possible that I come off as particularly dishonest in my nervous attempts to convince her. She sends the room into lockdown.";
		end the story saying "Our detention goes badly";
		stop the action;
	try the secretary looking at the pass through the scope;
	if player-is-allowed is true:
		[now the secretary carries the pass;]
		now the secretary carries the invitation;
		now the invitation is not essential;
		complete "Gain entrance to the Bureau"; [Should there be a line break here?]
		say "'That will do,' the secretary says of our pass. Then she inspects the invitation with the monocle. 'Most of the visits were earlier in the day,' she says. 'Quite a fracas there was this morning.'

'The invitation doesn't state a particular time,' we say.

She deflates momentarily and goes back to inspecting. 'There's another problem. This invitation is for Professor Waterstone. They're watermarked individually to avoid fraud. You're not Professor Waterstone.'

'He sent me to do some research in his place. I'm a student of his.'

She frowns. 'Invitations to inspect highly secure machinery are not transferrable,' she says. 'And how should I know whether you stole it?'";

Sanity-check going to the Antechamber when the secretary carries the pass:
	say "[We] went to all that trouble to get inside; [we] might as well go on from here." instead.

Sanity-check going to the Rotunda when the secretary carries the pass:
	say "[We] went to all that trouble to get inside; [we] might as well go on from here." instead.

[Instead of going to the Antechamber in the presence of the secretary:
	say "We went to all that trouble to get inside; we might as well go on from here."]

Attempting entry is a scene. Attempting Entry begins when the secretary carries the invitation.

Sanity-check doing something other than waiting during Attempting entry:
	say "I'm handling this." instead.

Instead of waiting during Attempting Entry:
	say "Sure, hang in there. I'm pretty sure that what [we] need here is to act as much like Professor Waterstone himself as humanly possible."

Every turn during Attempting Entry:
	if time since Attempting Entry began is 1 minute:
		say "'Professor Waterstone is a busy man,' I say. 'If you want me to tell him you wouldn't cooperate, I'm just as happy not to work on Serial Comma Day. But if DCL wants his endorsement or advice, they'll have to work within his schedule. If you are going to turn me away, however, I would like the opportunity to speak with your manager.'

The secretary scowls. 'Fine. I'll contact Waterstone.' She places a call [--] on speakerphone, no less [--] glaring all the time.

'Waterstone here,' says the phone. There's background traffic noise. Waterstone must be on the road already. Figures he would have a car phone. Most people aren't allowed, here.

'I have a student here attempting to use your invitation to enter the Bureau,' says the secretary. 'Was it stolen?'

'What? Oh that. No.'

'You're saying you gave your invitation away.'

'Yes I did,' says Waterstone. 'And I have been a research partner to DCL since before you were born.'

'Sir, you are aware that this is highly irregular!'";

Attempting entry ends when the time since Attempting entry began is three minutes.

When attempting entry ends:
	record "passing the secretarial test" as achieved;
	say "The secretary is still talking. 'You personally vouch for this student? You know her well and are sure of her trustworthiness?'

'Known her for years,' lies Waterstone, annoyed. There's a click as he hangs up.

'What a delightful man,' remarks the secretary.

She looks over our other visible possessions ([the list of not worn things which are not the pass *in the player]) and deems them acceptable. She makes us sign a book, for which [we] use a signature of your invention. Finally: 'Go in, descend to the basement, and present yourself at the secure section downstairs. Be advised you will be under video surveillance as you approach. Any attempts to modify or steal Bureau property, to gain access to rooms to which you have not been expressly invited, to eavesdrop on conversations of Bureau employees, or to leave objects of your own behind in the Bureau, may result in your arrest and prosecution.

'Have a nice day!'";

Instead of putting gel on something in the presence of the secretary:
	say "I think the secretary would find that a little too interesting."

Already caught is a truth state that varies.

[A person can be allowed or barred. A person is usually barred.]

[Persuasion rule for asking the secretary to try looking at something through something:
	persuasion succeeds. ]

Understand "bribe [secretary]" as a mistake ("Attempts to bribe bureau employees carry sentences of up to ten years in prison. I'm not up for that, thanks.").

Sanity-check taking something which is held by the secretary:
	say "Theft from bureau employees carries a sentence of up to fifteen years in prison and rationed use of plurals." instead.

Sanity-check kissing or attacking the secretary:
	say "Violence against the person of a bureau employee is grounds for Cold Storage." instead.

Instead of giving something to the secretary:
	try showing the noun to the secretary.

Instead of showing something to the secretary when the secretary encloses the Scope:
	try the secretary looking at the noun through the scope.

Sanity-check opening the backpack when the location is Antechamber and the backpack contains an illegal thing (called the offending item):
	say "Better not. We don't want the secretary to see [the offending item]." instead.

[After going to the Rotunda when the player encloses the pass:
	say "You flash your pass at the secretary, and she shrugs, allowing you in."]

Section 8 - Hallway and Inaccessible Room

The Bureau Hallway is east of the Antechamber. It is indoors, checkpoint and southern. The description is "This is a long hallway with many doors leading off, the business of the bureau being varied and all-encompassing; it is for all essential purposes the chief organ of government in Atlantis, since only a few topics are brought to citizen referendum."

Out-direction of Bureau Hallway is west. [To antechamber]

The All-Purpose Office is east of Bureau Hallway. It is indoors and southern. The description is "There's a front desk at which a receptionist meets with members of the public and assesses their needs; beyond that, the room is crowded with dozens of stations for the use of the All-Purpose Officers, and stretches back some distance. It looks like an old-fashioned newsroom.

Fully half the stations are empty, due to their owners being away on call somewhere on the island, but the rest are fully occupied [--] many of them by people who wear authentication monocles routinely."

Every turn when the location is the All-purpose office:
	say "I'm pretty sure that hanging out here is the best way to get caught in a hurry, though, so let's duck back out, shall we? Maybe one of the other rooms will offer us better prospects.";
	try going west.


Chapter 2 - Bureau Basement

Section 1 - Foot of Stairs

Below Bureau Hallway is Bureau Basement South. Bureau Basement South is indoors, forbidden and southern. Understand "bureau basement s" as Bureau Basement South. The description of Bureau Basement South is "[We] have descended into a windowless underground passage. The hallway runs [north] from here, and for an eerily long way [--] the tunnels must extend well beyond the above-ground profile of the building."

Out-direction of Bureau Basement South is up. [To bureau hallway]

Rule for writing a paragraph about the plywood cutout when the seer automaton is mentionable and the location is Bureau Basement South:
	say "Propped in the corner are some articles that were probably meant to be used as part of the Serial Comma Day Fair, but got confiscated instead: [a seer automaton] and [a plywood cutout] depicting Atlantida.".

A push-button device is a kind of device.

Sanity-check switching off a push-button device:
	say "[The noun] [one of]only runs for a little while at a time, and is already off[or]has already shut down again[at random]." instead.

The seer automaton is a push-button device in Bureau Basement South. Understand "robot head" as the seer automaton. The heft is 3. The description is "It's a robotic head inside a glass box. When turned on, it gives out fortunes. There's an old-fashioned carnival feel about the thing, and the fact that it's a portable size makes it a good candidate for traveling fairs."

Instead of switching on the seer automaton:
	say "The seer cranks to life, looks us up and down with painted wooden eyeballs, and in a tinny voice, says, 'I predict [one of]you will become BIG. Much bigger than you were yesterday[or]you will escape.' Asthmatic whirring. 'Possibly on the back of an interstellar whale[or]the Bureau won't last past tomorrow[cycling].'"

The plywood cutout is a fixed in place thing in Bureau Basement South. The initial appearance is "A plywood cutout depicting Atlantida is propped in the corner." Understand "painted" or "depicting" or "atlantida" or "hole" or "funny pose" as the plywood cutout. The heft is 5. The description is "It's one of those plywood cutouts where a tourist sticks his head through and someone else takes a photo showing the tourist a funny pose. This one puts the tourist's face on Atlantida, complete with flowing blue robes and expansive bosom."

Understand "put [something] through [something]" as inserting it into.

Sanity-check inserting something into the plywood cutout:
	if the noun is the player:
		try poking head through the plywood cutout instead;
	say "[The noun] would not balance inside the face cutout." instead.

Understand "put my/our/your/-- head/face in/into/through [something]" as poking head through.
Understand "poke my/our/your/-- head/face in/into/through [something]" as poking head through.

Poking head through is an action applying to one thing.

Sanity-check an actor poking head through something which is not the plywood cutout:
	if the noun is wearable:
		try the actor wearing the noun instead;
	otherwise if the noun is a door:
		try the actor entering the noun instead;
	otherwise:
		if the player is the actor:
			say "I'm not sure that's feasible.";
		stop the action.

Report someone poking head through the plywood cutout:
	say "[The actor] [look] frankly awesome with [their] head poking through above the bosom and flowing robes of Atlantida." instead.

Report poking head through the plywood cutout:
	say "[We] momentarily enjoy the sensation of being cast as Atlantida, spirit of the island, invincible, implacable, the sum of the devotions and desires of all our people.

It's a giddy feeling. No wonder the Bureau confiscated this thing and wouldn't let it be shown at the fair." instead.

Test BBS with "tutorial off / look / x cutout / put head through cutout / put seer through cutout / turn on seer / turn off seer / cad, put your head through the cutout / kiss cad / cad, put your head through the cutout" holding the cad in Bureau Basement South.

Table of Ultratests (continued)
topic	stuff	setting
"automaton"	{ tub, automaton }	Sensitive Equipment Testing Room

Test automaton with "tutorial off / open tub / x automaton / put automaton in inserter / get it / gel it / put it in inserter" [holding the tub and the automaton in the Sensitive Equipment Testing Room.]


Section 2 - Basement Middle

North of Bureau Basement South is Bureau Basement Middle. It is indoors, forbidden and southern. The description of Bureau Basement Middle is "The hallway continues both [north] and [south], flanked by doors painted immutable col[our]s: hyacinth, celadon, chartreuse."

The hyacinth door, the celadon door, and the chartreuse door are scenery in Bureau Basement Middle.

Rule for listing exits while looking in Bureau Basement Middle:
	do nothing instead.

The description of the hyacinth door is "A small plaque on the door reads 'Internal Security.' [door-quip for the item described]."

The description of the celadon door is "A small plaque on the door reads 'Liaison to Homeland Business Interests.' [door-quip for the item described]."

The description of the chartreuse door is "A small plaque on the door reads 'Overseer of Business Abroad.' [door-quip for the item described]."

To say door-quip for (N - a thing):
	say "[one of][The N] is impervious even to N-insertion, should someone develop it[or]I don't even recogn[ize] the kind of lock on this thing[at random]".

The cute security door is a locked lockable door. The initial appearance is "The [cute security door] at the [if the location is Bureau Basement Middle]north[otherwise]south[end if] end is solidly shut[if Cold Dilemma has happened]; there's no sign of anyone still waiting on this side of it[end if]." It is north of Bureau Basement Middle and south of Bureau Basement Secret Section. The description is "A thick iron door, decorated with Hello Kitty stickers. There is no handle and no access to the locking mechanism (though it is certainly locked). The door can only be activated by guards in another room, watching through a video camera."

[Here I compromised narrative plausibility in order to make the game winnable. It seems highly unlikely to me that anyone would be allowed to visit this area without an escort of guards. However, the multiplication of doors, and the trick of the guard controlling a second door by watching for it through a video camera, are based on memories and stories about the facility where my mother did some classified work back in the 80s.]

The adorable video camera is a thing in Bureau Basement Middle. The initial appearance is "[An adorable video camera] hangs in the left corner above the door." It is fixed in place. The description is "It has a lens, certainly, but it is also made of pink plastic and has cat ears. And it looks like it will recognize us if we approach, perhaps?"

A ranking rule for the adorable video camera:
	decrease the description-rank of the adorable video camera by 100.


[handles approach camera, go to camera, etc]
Sanity-check finding the video camera:
	try entering the cute security door instead.


Instead of waving to the video camera:
	say "[We] raise a hand and wave to the camera. Its ears swivel in acknowledgement.";
	try entering the cute security door.

Sanity-check going through the cute security door when cold dilemma has happened:
	say "That way will be guarded. If [we] [are] going to escape, it will have to be by some back way." instead.

Before going through the cute security door:
	let N be the number of entries in the path so far of the player;
	if N is greater than 1:
		say "[path-walked so far]";
		say "[We] come to a cutely decorated security door. ";
	otherwise:
		clear the path-walked for the player;
	say "The guards have apparently been instructed to allow us in, because as [we] approach, the door slides open.";
	now the cute security door is open.

After going through the cute security door:
	now the cute security door is closed;
	say "The door seals behind us as soon as [we] [are] through.";
	continue the action.

Some Hello Kitty stickers are part of the cute security door. The description is "They're here to ensure that this door is unlike any other door, and will not respond well even to advanced custom-language devices."

Section 3 - Secret Section

Bureau Basement Secret Section is indoors, checkpoint, forbidden and southern. The description is "The heightened security on this side of the door is obvious everywhere [we] look. The floor is tiled in paisley tiles. The light fixtures give off pale pink light. The walls are covered in frog leather. The doors are locked with padlocks the size of handbags, locks decorated à la Louis Quinze, combination locks made of solid gold. There is not a bare noun in sight."

Out-direction of Bureau Basement Secret Section is south. [Bureau basement middle]

Some frog leather walls, paisley tile floors, enormous padlocks, fancy locks, and gold combination locks are scenery in the Bureau Basement Secret Section. The description of the frog leather walls is "Mostly green spotted with brown, but for decorative trim they've used more exotic tree frogs in blue and orange."

The description of the paisley tile floors is "[We] have a dizzying impression of walking on an old gentleman's tie."

The description of the enormous padlocks is "Huge and heavy, like something out of the jail in a child's cartoon."

The description of the gold combination locks is "They may look old fashioned, but inside I daresay they are electronic and use one of those systems where the passcode is tied to the exact current time of day."

The description of the fancy locks is "They look as though they were doing service in Versailles, but they also look as though they're really fingerprint readers. The business of grasping the lock to insert the key is the important thing. Not that [we] have the right sort of fingertips for that."

Rule for listing exits while looking in Bureau Basement Secret Section:
	say "[if Cold Storage is visited]Going south through the security door isn't an option; our only way out is north[otherwise]The hallway runs from south (comparatively normal) to north (deeply frightening)[end if]. Just west is the equipment testing room[if Cold Storage is visited], and southwest is Cold Storage[end if]." instead.

Section 4 - Testing Room

The Sensitive Equipment Testing Room is west of Bureau Basement Secret Section. It is indoors, forbidden and southern. The description is "A room with no windows, no cameras, no recording equipment, and barely any furniture." The Sensitive Equipment Testing Room contains a rock.

The initial appearance of the rock is "A [rock] sits in one corner of the room."

Sanity-check going from the Sensitive Equipment Testing Room:
	if the player does not know brock-found:
		say "[We] shouldn't leave here until [we] have some clue about what happened to Brock when he came in." instead;
	if the rock is enclosed by the location and the rock is not enclosed by the player:
		if Brock does not recollect getting-out-now:
			say "[We] can't leave rock-Brock. That was the whole point of coming down here, right? The whole point of risking our freedom and all that extra time. So let's gel him." instead;
		otherwise:
			say "We can hardly leave Brock here." instead;
	if Brock is in the location:
		say "Brock is determined that we get the T-inserter tested before we leave, and it's probably faster to cooperate with him than to fight it out." instead;
	if the rock is enclosed by the player and Brock does not recollect getting-out-now and Brock does not recollect what-day:
		say "We better talk to Brock first and find out what happened. Let's gel him." instead.

Check waving the letter-remover at Brock when the current setting of the letter-remover is "b":
	say "Brock would never forgive [us] if [we] turned him back into a rock now." instead.

Check waving the letter-remover at Brock when the current setting of the letter-remover is "r":
	say "Brock would never forgive [us] if [we] turned him into a bock now." instead.

Carry out putting gel on the rock when the player does not know brock-found:
	now the player knows brock-found;
	complete "Find Brock";

[Instead of putting gel on the rock when the player is in Sensitive Equipment Testing Room:
	if the player knows brock-found:
		say "No, don't gel him! Think. How would [we] smuggle him out? Only one of us came in. He's much more portable in rock form.";
	otherwise:
		complete "Find Brock";
		assign "Return to yacht";
		say "[brock-found]You're right, that must be Brock. (B-removed himself when he heard someone coming down the corridor, maybe?) But bringing him back now is a terrible idea. How would [we] smuggle him out? Only one of us came in. He's much more portable in rock form." ]

Instead of putting gel on the rock when cold dilemma has ended and Sunning Deck is not visited:
	say "Having two people to smuggle back to the yacht will just make this trip twice as hard to accomplish."


After printing the name of Brock while looking at the rock through the monocle:
	complete "Find Brock";
	say "[brock-found]";

[Sanity-check going from the Sensitive Equipment Testing Room:
	if Restroom Trouble has happened:
		continue the action;
	if the player encloses a visible bureau-disallowed thing:
		say "[We] came in with just a handful of things (apparently, anyhow), and [we] shouldn't be caught with lots of extras now. It would lead to explanations[if the player carries something bureau-allowed]. It's fine to have [the list of bureau-allowed things enclosed by the player], and our[otherwise]Our[end if] hair and clothing probably won't be closely searched, but [the list of visible bureau-disallowed things enclosed by the player] should probably be concealed." instead;
	continue the action. ]

[Sanity-check wearing the pants when the location is Bureau Basement Secret Section:
	say "This doesn't seem like a sufficiently private place to change our underclothing." instead.

Sanity-check taking off the pants when the location is Bureau Basement Secret Section:
	say "This doesn't seem like a sufficiently private place to change our underclothing." instead.

Report wearing the pants:
	say "[We] slip on the pants as underclothing. Without a strip search, no one will find them." instead.

Report taking off the pants:
	say "[We] retrieve the pants." instead.

After printing the name of the pants while taking inventory:
	if the pants are worn:
		say " (worn as underwear)";
		omit contents in listing;
	otherwise:
		make no decision. ]

[ Definition: a thing is bureau-allowed:
	if it is part of something:
		yes;
	if it is the letter-remover:
		yes;
	if it is the tub:
		yes;
	if it is the restoration gel:
		yes;
	if it is the invitation:
		yes;
	if it is the pass:
		yes;
	if it is illegal:
		no;
	if it is wearable:
		yes;
	if it is disguised:
		yes;
	no.

Definition: a thing is bureau-disallowed if it is not bureau-allowed. ]

Section 5 - Cold Storage


Cold Storage is southwest of Bureau Basement Secret Section. It is indoors, improper-named, forbidden and southern. The description is "Shelves on both sides of the room are full of [objects-on-stands] on stands: objects that used to be men and women, and in a few cases even children. The [stand labels] preserve their original names."

The introduction is "If this goes wrong, we could wind up living in here permanently. So we'd better figure whom to send out, and do it fast."

Some assorted shelves are scenery in cold storage. The description is "There's room for more contents, to be sure."

The duty roster is fixed in place in Cold Storage. The initial appearance is "[A duty roster] is posted prominently." The description is "The roster records duty shifts once every two weeks, assigned to various people in the department, all of them very high-ranking.

'Be conscientious,' admonishes the roster. 'Read each name clearly while looking at the item through a monocle. If you suspect an object of losing its original identity, contact the Curator. We have disposed of seventeen objects this year!!'"

The objects-on-stands are scenery in Cold Storage. The printed name is "objects". Understand "thing" or "things" or "objects" or "object" or "stand" or "stands" or "on" or "jon" or "alice" or "peter" or "lucy" or "19" or "13" or "20" or "2" or "1" as the objects-on-stands. The description is "The stand labels preserve their names, and a few details such as birthdate and date of inanimation."

Some stand labels are part of the objects-on-stands. The description is "[We] pick out a name on one of them: [one of]Graham 1, born 1968, inanim 2005[or]Jon 19, born 1979, inanim 1999 on charge of attempted espionage[or]Alice 13, born 1950, inanim 1982 on charge of stealing DCL information[or]Peter 20, born 2000, inanim 2010 on charge of reckless use of constructed language[or]Lucy 2, born 1991, inanim 2009 on charge of smuggling French materials[or]Thierry Claude, foreigner, inanim 1969 on charge of espionage[or]Petra Odinsova, foreigner, inanim 1972 on charge of not speaking English[at random]."

Instead of putting gel on the objects-on-stands:
	if the patsy-woman is in the repository:
		say "Hang on [--] are you sure you want to send one of these poor bastards out there? It would be cruel to get their hopes up just to have them re-arrested, not to mention that it would make my father look like a fool if he arrested a dissident who turned out to have been in storage all along. >>" ;
		if the player consents:
			move the patsy-woman to the location;
			say "[line break]We gel the nearest of the objects, and it comes to life: a woman in her thirties or forties, at first so motionless that she looks like a statue, until she remembers that she can move.";
		otherwise:
			say "[line break]Okay then. There might be some other way.";
	otherwise:
		say "Choosing the nearest thing to us, [we] apply a little restoration gel. Nothing happens, though. It seems this particular object has forgotten what it used to be."

Instead of looking at the objects-on-stands through the monocle:
	if the patsy-woman is in the repository:
		say "The nearest of the objects resolves, awkwardly, into the face of a woman. It's hard to tell much about her, her age or her dress, from the faded image the monocle creates.";
	otherwise:
		say "There is only a shapeless shadow: the memory of something this object used to be, but now is not."

Table of Ultratests (continued)
topic	stuff	setting
"storage1"	{ rock, tub, monocle }	Cold Storage
"storage2"	{ rock, tub, monocle }	Cold Storage
"storage-bug"	{ dove, rock, tub, monocle }	Cold Storage

Test storage1 with "placefather / tutorial off / open tub / out / gel rock / z" [holding the rock and the tub and the monocle in Cold Storage].
Test storage2 with "placefather / tutorial off / open tub / out / x objects / gel object / z" [holding the rock and the tub and the monocle in Cold Storage].
Test storage-bug with "placefather / tutorial off / open tub / out / x objects / gel object" [holding the dove and the rock and the tub and the monocle in Cold Storage].

Rule for listing exits while looking in Cold Storage:
	do nothing instead.

Cold Dilemma is a scene. Cold Dilemma begins when the location is Cold Storage.

Instead of going from the Cold Storage when Cold Dilemma is happening:
	say "So you want us both to get caught? Well, I'm not up for that arrangement. What [we] [are] doing here is important. I say [we] send Brock and get out of here."


Every turn when Cold Dilemma is happening and the time since Cold Dilemma began is 1 minute and father is in a room:
	say "I vote [we] gel Brock and send him out to my father. No, hear me out. Brock's cover is probably not in great shape anyway. You might be able to rescue him later. And it would be a coup for my father to have a real big arrest to put on the record."

Every turn when Cold Dilemma is happening and there is someone human (called the victim) who is not the player enclosed by location:
	if victim is Brock:
		say "You're silent. I'm not letting you act again. You're not stopping me.

'We're still inside the Bureau basement,' I say. 'We just need to head out, separately.'

He looks puzzled. 'Aren't we safer together?'

'No,' I say.[paragraph break]";
		say "[command prompt]";
		custom-wait for any key;
		say "[line break]'But[--]'[paragraph break]'Look, just trust me, this once,' we say.[paragraph break][The victim] [back] out the door. Loud sounds of an arrest ensue. I hear my father's voice, and two other people. Then finally the sounds die away.";
		now Brock is nowhere;
		now father is nowhere;
	otherwise if the victim is fake:
		say "[The victim] [look] at us in confusion. 'OUT,' you say, pointing at the door[one of].

I keep thinking: my father is going to look like a fool when it's found he's arrested a fake person; he'll be disgraced.

I want to stop you, but you've got the upper hand now[or][stopping].

[The victim] [back] out the door.

[if the victim is not undisguised]'Nothing on the auth scope,' comments a female voice.

'Yeah, but [regarding the victim][they] [don't] look like a criminal mastermind, does [they]?'

[end if][one of]There's a noise like the firing of a restoration gel rifle and[or]The rifle fires again, followed by[stopping] the sound of [the victim] collapsing into [a list of things which proffer the victim]. 'Nice try,' shouts a voice from outside. 'Next?'";
		now victim is nowhere;
	otherwise if the victim is the patsy-woman:
		now the story viewpoint is second person singular;
		now victim is nowhere;
		now father is nowhere;
		say "'Thank goodness,' says the woman. 'I felt like I was going to lose myself if I had to spend another minute in there. I don't know who you are, but thank you, thank you! Is there a Bureau reprieve? Please tell me they've decided to let us all out!'

'No general reprieve,' you say. 'Just you.'

This isn't what I want. It's not just unfair; it's actually monstrous. 'What were you put in for?' I ask.

'Italian,' she whispers.

'What?'

'I was learning Italian,' she says. 'I wanted to read Manzoni. There was no sympathy from the officers; they thought it was an inexplicable desire. Is it daylight or night-time out there? Not that it matters. I haven't seen either in so long.'

You gesture at the door. She looks at us once more, doubtfully, and goes.

From the corridor comes the sound of a shot being fired from a restoration gel rifle; the woman exclaiming in pain; officers gathering around her for the arrest. And she'll be back here, I suppose, before the night is out. I suppose that allows you to tell yourself that it wasn't a bad thing, what we just did.";


Cold Dilemma ends when father is not in Bureau Basement Secret Section.

When Cold Dilemma ends:
	if the story viewpoint is not second person singular:
		now the story viewpoint is first person singular;
	say "A faint spell comes over [us] and [we] feel dizzy.";

Instead of examining the player when the story viewpoint is second person singular:
	say "It's still our joint body, but it feels like you, and I'm riding along, somehow. Part of you, but alienated. Something's wrong. I want to get out.";
	rule succeeds.

Instead of examining the player when the story viewpoint is first person singular:
	say "I can feel you in my head, but you've... stilled, sort of. Like an animal that's given up. Like a dog hiding in the corner of a cage. I feel more like me than I have all day, though I miss my real body.";
	rule succeeds.

Instead of putting the restoration gel on yourself when Cold Dilemma is happening:
	say "[one of]If you have some idea of gelling me and sending me out there while you escape with Brock, let me tell you, I know enough to ruin you. I know Lena, I know Slango, I know who to talk to at the Counterfeit Monkey. I know half a dozen other exploits you pulled before. And I would tell them, because that's the only way I'd get to avoid a full trial for treason. I like you, honestly, but if it's you or me, I'm still picking me[or][We] already discussed this. I'm not going out there[stopping]. Unless you're volunteering to go yourself? >>";
	if the player consents:
		say "You're a brave person. Foolish. But brave.

We do the split, a cold hasty slathering of gel, and--

[i]You're on your own now. You give Alex one last look. Wonder how he's going to get away, shivering and naked as he is, but that's not your problem now. He can keep all of your stuff, and doubtless there's some kind of outfit to be found in there. You go.

After that comes interrogation, incarceration, a trial that's remarkably swift. You aren't asked about whether you'd like to plea bargain. Alex's father doesn't mean to let you say the half of what you know; not if it would endanger him and his son. You spend most of the time leading up to your trial in a fog so dense that it must be drugs. You can barely speak.

The sentence is inanimation. You are put on the chair and the last thing you notice is the executioner setting the dial of his letter-remover to C.[/i]";
		end the story saying "For a long long time you know nothing at all";
	otherwise:
		say "I didn't think so.";

Instead of listening to Cold Storage when Cold Dilemma is happening:
	say "The men waiting outside aren't loud, but they're not silent, either. There's a sound of movement here and there."

Instead of listening to cold storage when Cold Dilemma has happened and Cold Dilemma has ended:
	say "All quiet out there now."


Act IV Among Policemen ends here.
