Repository Major Contents by Counterfeit Monkey begins here.

Use authorial modesty.


Volume 5 - The Repository of All Things Possible

Chapter 1 - Major Contents

Section 1 - The Repository Defined

[The repository contains all things that the player might create in the course of the game. This gives us a safe place to move things into and out of when checking items we're manipulating.]

The repository is a container.

Section 2 - Kinds of Thing

[Certain words, especially short ones, can be made via multiple letter combinations. We provide these as kinds first before listing the repository contents.]

An aa is a kind of thing.
An age is a kind of thing.
An air is a kind of fluid thing.
An ale is a kind of thing.
An Amy is a kind of woman.
An art is a kind of thing.
An as is a kind of thing.
A ba is a kind of bird.
A bat is a kind of neuter animal.
A bet is a kind of thing.
A bit is a kind of thing.
A bot is a kind of thing.
A generic-cap is a kind of floppy wearable thing.
An alterna-cap is a kind of thing.
A carp is a kind of thing. [not "a kind of animal" because you get a dead carp]
Some carpi are a kind of plural-named thing.
A cat is a kind of neuter animal.
A cat-army is a kind of neuter animal.
[A car is a kind of vehicle.] [ These are defined in their own section, above, because so complicated.]
A cart is a kind of vehicle.
A char is a kind of thing. [not "a kind of animal" because you get a dead char]
A chart is a kind of thing.
A chert is a kind of thing.
A chat is a kind of thing.
A cod is a kind of thing.
A cot is a kind of clothed bed.
A CPU is a kind of thing.
A CRT is a kind of device.
A generic-cup is a kind of container.
An eel is a kind of thing. [not "a kind of animal" because you get a dead eel]
A git is a kind of man.
A hairpiece is a kind of wearable thing.
A hart is a kind of neuter animal.
A hat is a kind of thing.
[An in-object is a kind of thing. ["in"] The printed name of an in-object is "in". Understand "in" as an in-object.]
An ink is a kind of thing.
An ill is a kind of thing.
An it-object is a kind of thing. ["it"]
A lee is a kind of container.
[A mart is a kind of thing.]
A mat is a kind of supporter. A mat is usually portable.
A May is a kind of thing.
A ma is a kind of woman.
A mama is a kind of woman.
A net is a kind of container.
A nit is a kind of thing.
An ode is a kind of thing.
An oil is a kind of thing.
A self-object is a kind of thing. ["I"]
A pa is a kind of man.
A par is a kind of thing.
A part is a kind of thing.
Some plural-pas are a kind of plural-named man.
A pat is a kind of thing.
Some pat-items are a kind of thing.
A pet is a kind of neuter animal.
A pi-object is a kind of thing. ["pi"]
A pit is a kind of thing.
A pit-hole is a kind of container. The printed name of a pit-hole is "pit".
A pita is a kind of edible thing.
A pot is a kind of container.
An alterna-pot is a kind of vegetable.
A PTA is a kind of ambiguously plural person.
A Ra is a kind of man.
A ram is a kind of neuter animal.
A rap is a kind of thing.
A rat is a kind of neuter animal.
A rate is a kind of thing.
A sap is a kind of man.
A sig is a kind of thing.
A sin is a kind of thing.
A son is a kind of man.
A stink is a kind of air.
A stent is a kind of thing.
A stint is a kind of thing.
A strand is a kind of thing.  ["hair"]
A sun-product is a kind of thing.
A tale is a kind of thing.
A tamale is a kind of edible thing.
A tan is a kind of thing.
A tar is a kind of thing.
A tart is a kind of thing. [chard, pearl]
An alterna-tart is a kind of woman.
A tattle is a kind of thing.
A tear is a kind of fluid thing.
An alterna-tear is a kind of thing.
A ten-object is a kind of thing.
A tent is a kind of container.
Some plural-tents is a kind of container.
A tin-can is a kind of container. ["tin"]
A tint is a kind of thing.
A tip is a kind of thing.
A tit is a kind of bird.
A TNT is a kind of thing.
A top-toy is a kind of thing.
A tot is a kind of woman.
A tote-bag is a kind of container.
A tram is a kind of thing.
A yam-cart is a kind of cart.
[A yam is a kind of vegetable.] [* The yam kind is actually defined earlier because we need one for the farmer to be carrying, as well.]

Section 3 - Individual Items Broken Down By Product

[ For each source object, we work out the plausible changes on what that item could be made into. Scenery objects for the most part are not changeable, and neither are most objects with attached adjectives, except using the anagramming gun in the end-game. So that cuts down somewhat on the chaos.

Nonetheless, there's still an awful lot to account for. To figure out what needed to be implemented for the letter-remover, I used some perl-created subsets of the Scrabble word list; for instance, I had one reference file that consisted of nothing but valid letter removals, of the form

geniuses with i removed -> genuses

Then whenever I needed to check derivations, I could search this file for the object I was adding to the game (recursively, of course), and see what letter removals were possible.

A similar wordlist covered words that could be constructed from pairs of other words, for use with the synthesizer. In the process I learned a lot of new words: I'd never heard of ASSART before, for instance, which is the crime of stealing someone's plants.

To come up with words that could be used with the spinner, I also made a bit of use of this list of semordnilaps:

	http://kgfamily.com/files/semordnilaps.html

For the vowel rotator, I went the other way and ran rotations on everything that already existed in the game world, then culled this to produce a short list of things that were real objects. The algorithm produced a long and surprisingly pleasing (to me, at 1 AM) list of entries such as

	bokono buttums
	iligently wontir polut
	...
	swetch
	wend betch
	...
	bellcuck
	bentem
	bendot
	...
	shromp cuckteol
	shattlicuck
	spollegi
	sockist uffel
	...
	etc. for hundreds of lines

...which seemed just consistent enough to belong to their own language or possibly to some dialect form of English, while still being essentially silly. Who are these sockists anyway, and why do they keep deluging us with their uffel?

For anagrams, I mostly relied on the internet anagram server website.

The good thing about the anagramming gun is that, while it can produce prodigious numbers of possibilities, I didn't have to implement them as thoroughly, because anagramming is not a completely deterministic process. For instance, the accent flipper would anagram to the flint crepe cap and back again, and the player would have no way to try to specify any other possible variant anagrams. So it was only necessary to provide multiple anagrams of the same phrase if I thought those objects would be interesting or funny to have in the game; otherwise, I just picked the single item that seemed most amusing or tractable and included that.

Despite these attempts at rigor, beta-testers did still discover a number of items that weren't handled. I declined to include the 'vaginal foam sop' that one could hypothetically create out of the the map of Slangovia, but I did incorporate a number of others, from the embarrassingly-obvious-how-did-I-leave-that-out COAT > TACO to the more esoteric COUNTERWEIGHT > TOWERING CHUTE. I did very much want the player at this stage of the game to be encouraged to try the anagramming gun widely -- especially on things with long names -- so that he'd be in the right frame of mind when he came up against Atlantida in the end.]

[accent flipper]

The repository contains a flint crepe cap.

[apple]

The repository contains an ale, an applet, a lappet, a tale, a tamale, and a tattle.

[army]

The repository contains Amy, an arm,
	a ram, a yam, a May, a ma, a Mary, [anagram]
	a tram, [t-insert]
	[a mart,] [anagram]
	an art, a mat, a mama, [derive]
	a tart, an alterna-tart, [t insert]
	a rat, a tar. [anagram]

[army coat]
The repository contains a cat-mayor.

[as]

In the repository are a pastis, a pass, some pasts, a pat, an ass, and a pa, [removals]
	a pita, [pa + it-object from e.g. piece->pic->pict->pit] a PTA,
	some pestos, some pests, a pet. [vowel rotator]
	[a zoo.] [reverse hard mode cryptolock]

[ash]
In the repository is a trash and a rash and a fake-as.

[atlantida]
In the repository is an atlantida-shellfish.

[bacon chapeau]
In the repository is a cacao-nub-heap.

[bait]
The repository contains a bat, a bet, a bit, and a bot, [removal and rotation]
	a ba and an it-object.

[ball]

The repository contains a ba, an all,
	a bell, a bill, a bull, [vowel-rotation]
	a bat, [t-insertion]
	a bet, a bit, a bot, [vowel-rotation]
	an it-object, an ell, an ill, [removal]
	a tab. [anagramming]

[balm]
The repository contains a lamb, [anagramming]
	a lam, [a lab-thing,]
	[a limb, ]
	an oboe. [the oboe only via hard-mode encryption]

[banana]

The repository contains a bandana. [banana]

[band]

The repository contains a ban and an alterna-band
	and an abstract-bend, a bind, a bond [, a bund].

[basis]

The repository contains a fake-bus and some buses.

[big lever]

[The repository contains a big revel.]

[bin]

The repository contains a nib
	and an ahi. [reverse hard-mode cryptolock]

[blouse]

In the repository is a louse.

[bollard]

The repository contains a board, a bard, a bar, a boar, a boa, an oar. [too late for t-insertion or anagramming gun]

[brass plate]

In the repository are some pastel bras.

[broken components]
The repository contains a monk corpse bonnet, a broken component and a cement porno knob.

[three unnamed chairs, of which two are occupied and cannot be moved to the T-inserter or anagram gun]

The repository contains 2 strands, 2 chars, 2 cars, 2 airs,
	a chair, [char + I (self-object)]
	a chart, a cart, [t-insert ONE of the chair derivative sets]
	a chert, [vowel-rotate the chart]
	a hart, an art, a chat, a cat, a hat, a CRT, [derive insertions]
	a cat-army, [cat + army]
	a rat, a tar, [anagram all]
	a tart, an alterna-tart [t-insert anagrams]. [chair]

The red hair is a strand in the repository. [Only possible to create in hard mode]

[catalan punt volat needle]
The repository contains an untalented naval polecat.

[chard]

The repository contains a card, a chad, a char, a cad, a car, an ad, a cd,
	a chart, a cart, a tad, [t-insert the derivatives]
	a chert, a curd, a cord, [vowel-rotate]
	a hart, an art, a chat, a cat, a hat, a CRT, a cud, a cod, [derive the insertables]
	a tart, an alterna-tart, a that-object, [t-insert those derivatives]
	a hurt, a cut, a cot, [vowel-rotate]
	a rat, a tar, and an arc. [anagram any of the above]

[clock]

The repository contains a cock,
	a click, a cluck, and a clack. [vowel rotation]

[cloth napkin]
The repository contains a hot-pink-clan.

[coarse woolen clothing]
The repository contains some winner logo chocolates, a winner logo chocolate, and a hooting owl concealer.

[coat]

The repository contains an oat, a cat, a cot,
	a taco,
	and Tao.

[In Daoist philosophy the word Dao is not generally considered to be a 'name' for a 'thing': it is a reference to the natural order of existence, often referred to as the "eternally nameless” (Dao De Jing-32. Laozi) to distinguish it from the countless 'named' things which are considered to be its manifestations.]

[cock ring]
The repository contains a gin-crock.

[codex]

The repository contains a code, an ode, and a cod. [never gets far enough for insertion or anagram]

[conference poster]
The repository contains a conference-poser.

[counter]

The repository contains a counter-alternate.

[countertop]
The repository contains a trope count.

[counterweight]
The repository contains a towering chute.

[course advertisement]
The repository contains a curse advertisement.

[crate]

The repository contains a rate, a cate, a rat, a cat,
	a tear, an alterna-tear, a tar, an art, [anagram all]
	a tier, [vowel-rotation]
	a rite, [anagram the rotation]
	a titer, a titter, a tart, an alterna-tart, [t-insert]
	a tea. [remove the anagram]

[cream]

The repository contains a single ream, a ram, Ra,
	a tram, a rat, [t-insert derivatives]
	a tam, [derive insertables]
	a mare, [a mart,] a tar, an art, a mat, a ma, [anagram all]
	a tart, an alterna-tart. [t-insert]

[crumbs]

The repository contains a crumb.

[crossword]

The repository contains a sword, a cross, some words,
	a Ross,
	some orc-swords, an orc-word, and a crow rod.

[crumpled cocktail napkin]
The repository contains a multiple dropkick cancan.

[dirty coffee cup]
The repository contains a tidy puce coffer.

[dog]
The repository contains a god. [and a dig.]

[dove]

The repository contains an ode and a doe and a diva.

[draft document]

The repository contains a daft document,
	a noted drum fact, a funded-tomcat, [anagramming]
	a noted drum act, [removal]
	a dart document. [re-anagramming]

[duty roster]
The repository contains an oyster turd.

[ebook reader]
The repository contains a rodeo beaker.

[farmer]

[The repository contains a fame.] [Actually producing this ends the game.]

[fossil]

The repository contains a foil, two oils,
	a metal-foil, [homonym]
	and a toil. [t-insertion]

[frozen dinner]
The repository contains a frozen dinner, a red frozen inn, and a zen frond rinse.

[funnel]

The repository contains a fuel, a foal, a loaf, an oaf,
	and an elf nun.

[garbage]

The repository contains a garage. [the garbage]

[gum]
The repository contains a mug, [anagram/spinner]
	a mu, [letter-removal]
	a mut and a mutt, [t-insertion]
	a mat, a Matt, a ma, a mama, a gam, a mag, a Meg, a me-object, a gem.  [vowel-rotation]

[gimlet]

The repository contains a gimlet-drink,
	a gilet, a gilt, and a git. [derivatives]

[green apron]
The repository contains a genre apron.

[hairstick]
The repository contains a thick sari.

[honey pastry triangle]

In the repository is a baklava.

[horses]
In the repository are some hoses, a hoe, and a ho.

In the repository is an in-object.

[inciting fable]
In the repository is a filing cabinet.

[inlaid desk]
The repository contains some kind ladies.

[jacks]
In the repository is a jack.

[jigsaw]
The repository contains a jigsaw.

[jigsaw piece]
The repository contains some ice-wig japes.

[jotter]

The repository contains an otter,
	a torte, [anagramming]
	a tort, a tote-bag, an ore. [removals]

[kudzu]

The repository contains a kudu.

[lamb granulates]
The repository contains some anagram bullets, a lamb-granulate, and an anagram bullet.

[leaflet]
The repository contains a leaf  [gel, if it was manufactured from the statue]
	and a flea. [anagramming]

[fake-legend]
The repository contains a legend.

[first aid station]
The repository contains a titan of diarists.

[letter]

The repository contains an alterna-letter, a leer, a lee,
	a reel, a fishing-reel, an eel.

[lime]

The repository contains a lie, [removal]
	lime-powder, [homonymming]
	and a mile. [anagramming]

[lock]

The repository contains a clock.

[long table]
The repository contains an angle bolt.

[massive plug]
[The repository contains a massive pug.]

[Mark]
[The repository contains an ark.]

[meat studded gown]
The repository contains two-added-nutmegs.

[members]

The repository contains a member and some alterna-members and an alterna-member.

[modems]

The repository contains a modem, an odes-book, and an ode. [modems cannot go to the inserter or anagramming gun]


[mourning dress]

A morning dress is in the repository.

[objects on stands]

A patsy-woman is a woman in the repository.

[odor]
A rood and a secret-door are in the repository.

[officers]
Some offices-thing and an officer are in the repository.

[oil paintings]
Some intaglio-pins, an oil-painting, an intaglio-pin, an intaglio-pint, and a tilting-piano are in the repository.

[olive branch]
A live branch is in the repository.

[paintings]

The repository contains a painting, an inapt sign, an inapt sin, a satin-pin, a satin-pint, a saint-pint, a giant-pin,  a giant-pint, a pig-tat-inn, a pi-tat-inn, a titan-pin, a titan-pint, and an inapt tint.

[page]

The repository contains an age and a page-person. [page]

[paper models]

The repository contains a paper-model.

[paperweight]

The repository contains a paper, a weight, an eight-object, a wight, and a wet epigraph.

[pear]

In the repository is a pearl.

[pearl]

In the repository are an earl, a perl, a peal, an ear, a pal, a pea, a par, a pa,
	a pita, [pa + it-object from e.g. wrap->rap->trap->part->pat->pet->pit] a PTA,
	a pie, a pier, a poi, [vowel rotation]
	a petal, a tear, an alterna-tear, a peat, a part, a pat, [t-insert derivatives]
	a tar, a pet, an art, [derive insertions]
	a pit, [vowel rotation]
	a tart, an alterna-tart, [insert derivatives]
	a rale, a rape, a rape-alternate, a leap, a plea, an era, a lap, [an alp,] an ape, a rap,
	a tepal, a plain-plate, a rate, a tape, a tap, a rat, [anagram each]
	an ire, [vowel rotation]
	a hod, [reverse mode cryptolock on ire]
	[Oz,] [reverse hard mode cryptolock on Pa or Ra, but both are too big to fit in the bucket]
	a trap, a pleat, a rattle, [t-insert anagrams]
	a Ra, a pate, an ale, [derive anagrams]
	a tattle, a tale, and a tamale. [t-insert derivatives]

[pearl ring]
In the repository is a larger-pin.

[piece]

In the repository are a piece-alternate, [homonym]
	a pic, a pi-object, a self-object,
	a Pict, a pit, an it-object, a tit, [t-insert derivatives]
	a tot, [vowel rotation]
	a tip, [anagrams]
	an alterna-tit, [homonymy]
	and a top-toy. [vowel rotation]

[pineapple ring]
In the repository is a ripening-apple.

[pink t-shirt]

In the repository is a pin-t-shirt.

[pit]

In the repository are two pit-holes.

[pita]

The repository contains a pita, a pit, a PTA, an it-object, a pa, a pi-object, a self-object,
	a tit, [t-insert derivatives]
	and a tip, [anagrams]
	a top-toy, a tot, a pot, an alterna-pot.

[plans]
In the repository are some iron-pans, a plan, an i-pan,
	some pens, a pen, some pins, a pin, a pi-object, a pun, some puns, [vowel rotation]
	some plants, a plant, a pant, a pint, some pints, a fake-punt, [some punts,] [t-insert derivatives]
	some pants, some plats, a plat, a pat, a pit, some pit-items, some alterna-pits, some pat-items, an ant, a pus, [derive insertions]
	a snap, an alterna-snap, a nap, a splat, a tap, a spit, a spat, a tan, [anagram all]
	a sap, a slat, [derive anagrams]
	a pet, a pot, an alterna-pot, a ten-object, an Ent, [vowel rotation]
	a spa, a pa, some plural-pas, an as, [derive derivatives]
	a pita, [pa + it-object from e.g. ball->ba->bat->bet->bit] a PTA,
	a salt, a top-toy, a net. [anagram derivatives]

[polling charts]

In the repository are a polling-chart, a strolling chap, a strolling cap, and a patching roll.

[poppy]
In the repository is a puppy.

[poster]
The repository contains a poser, a pose, a Poe. [, Pisa.]

[power chord]
The repository contains a power cord,
	a doper crow, a chowder pro,
	a dope cow.

[preamps, cannot go to the T-inserter or the anagramming gun]

The repository contains a preamp, some reams, some plural-rams, a ram. [preamps/cream]
	[the single ream is omitted because it can only be obtained the second time after the first object has been removed from play; so it's safe to use the same item one time. ]

[reflective window]
The repository contains a reflective widow.

[restoration-gel rifle]
An infertile astrologer is in the repository.

[ring]

In the repository are a rig,
	an alterna-ring, [homonym paddle]
	a trig, [t-insert derivatives]
	a grit and a grin,
	a gin and a git,
	an it-object and a self-object. [anagram all]

[rock]

The repository contains a roc, a bock,
	a ruck, a rack, [vowel-rotation]
	a truck, a track, [t-insertion]
	a tuck, a tack, [removal ]
	an orc, a cork, [anagramming]
	a torc. [t-insertion again]

[rock ballad]
The repository contains a rollback-ad.

[roll of bills]
The repository contains a troll, a rill, and a trill.

[rubber stamp]
The repository contains a rump stabber
	and a rum stabber.

[rusty nail]

The repository contains a rusty-nail-drink
	and a sunlit ray.

[sage]

The repository contains a sag, an age,
	a geas, a gas, [spinner/anagram]
	a stage, and a stag. [t-insertion]

[sator inscription]
The rotas inscription is in the repository.

[screen]

The repository contains a scree.

[screwdriver]

The repository contains a screwdriver-drink.

[screws]

The repository contains a crew-group.

[seer automaton]
The repository contains a steer automaton, a setter automaton, [t-insertion]
	a sere automaton, a terse automaton, a tomato sauterne, and a street automaton. [anagramming]

[shackles]

The repository contains a hackle.

[shed]

The repository contains a shred and a sed.

[shopping bag]

The repository contains a hopping bag and a shopping gab.

[shred]
[The repository contains some herds.]

[shrimp tail]
The repository contains a sharp limit, a harp limit, and a mirth pail.

[shrimp cocktail]
The repository contains a complicit shark.

[shuttle]
The repository contains an alterna-shuttle.

[sign, four times]

The repository contains a signet,	[by the hand of the officer]
	4 sins, 4 sons, a sun-product, [2 in-objects,] 4 self-objects, 4 sigs,
	4 stints, 4 tints, 4 TNTs, 4 tin-cans ["tin"], 4 tits, [t-insert derivatives]
	4 stents, 4 tents, 4 ten-objects, 4 tans, 4 plural-tents, [vowel rotation]
	4 tots, [vowel-rotation]
	4 nits, [anagram all]
	4 nets,
	4 it-objects. [derive anagrams]
	[a ton, a tun.] [vowel rotation. Only one needed of each of these because it is game-ending to create successfully.]
	[an Ohio.] [reverse mode cryptolock on tint, only one needed]

[silver chain]
The repository contains a ravens chili and a raven chili.

[silver tray]
The repository contains a starry veil.

[silver platter]
The repository contains some traveller tips, a traveller tip, and a triple varlet.

[sink, 8]
[lord but the sinks are expensive]

The repository contains 8 inks and 8 stinks,
	8 sins, 8 self-objects, 8 stints, 8 tints, 8 tin-cans, 8 tits, 8 tots, 8 nits, 8 it-objects,
	8 nets, 8 stents, 8 tents, 8 ten-objects, 8 plural-tents.

[small figurines]

The repository contains a mall figurine.

[soap]

The repository contains a sap, a sap-liquid, a sop,
	some plural-pas, an as, [spinner]
	a stop, some pat-items, [t-insert derivatives]
	a top-toy, [derive insertions]
	some plural-pots, a spot, a pot, an alterna-pot. [anagram all]

[soap-dispenser]

The repository contains a sap-dispenser and a sop-dispenser.

[soil]

[spill]

The repository contains a pill, a sill, an ill, a self-object, a pi-object,
	some pills, some plural-ills, [anagram, then p-remove]
	[a still,] a till, [some tills,]  [t-insert derivatives]
	a poll, a toll. [vowel rotation]

[squid]

The repository contains a quid, a suid and a sud. [too late for t-insertion, alas, or we could make a stud, homonym-paddle it into a him, and then anagram him into dust.]

[stack of files]
The repository contains a sickest offal.

[stand labels]

The repository contains a blest sandal.

[sticky]

Table of Ultratests (continued)
topic	stuff	setting
"stickybug"	{ sticky, tub }	Generator Room

Test stickybug with "tutorial off / wave y-remover at sticky / put stick in bucket / wave t-remover at stock / open tub / get sock / gel sock" [holding the sticky and the tub in the Generator Room.]

The repository contains a stick, a sick, a tick, and a tic,
	a stock, a sock.	[vowel rotation]

[stuffed octopus]
The repository contains some spouted cutoffs.

[swatch]

The repository contains a swath and a swat. [the watch]

[sword]

The repository contains a word, a sord, a sod.

[sword arm]
The repository contains some warm rods, a warm rod and a rad worm.

[thicket]

The repository contains a ticket. [the thicket]

[tiny black leather boots]
The repository contains a breathable silky cotton.

[tomes]

The repository contains some toes, some toms, a tome, a toe, a tom,
	some totes, a tote-bag, [t-insert derivatives]
	some plural-tots, a tot, [derive insertions]
	some motes, [anagram all]
	a mote, [derive anagrams]
	some motets, a motet, [t-insert anagrams and derivatives]
	some mottes, a motte, some totems, a totem. [anagram insertions]

[tube]

In the repository is a tub. [tube]

[twig]

The repository contains a wig and a Ben-wig. [twig / bent twig -- the Ben-wig is a joke for hard mode only]

[umlaut punch]
The repository contains a mutual punch.

[wall socket]
[The repository contains a slack towel.]

Table of Ultratests (continued)
topic	stuff	setting
"slack"	{ anagramming gun, bullets }	Workshop

Test slack with "tutorial off / load gun / shoot wall socket" [in the workshop holding the anagramming gun and the bullets.]

[watch]

The repository contains a swatch.

[watchband]
The repository contains a wand batch.

[wheel]

The repository contains a heel, an eel,
	and a lee.

[wire racks]

The repository contains a wire rack.

[wrap]

The repository contains a rap, a clothing-wrap,
	a warp, [anagram]
	a trap, [t-insert derivatives]
	a tap, [a war-object,] [derive insertions]
	a par, a part, a pat, [anagram all]
	[a wart-object,] [t-insert derivatives]
	a pet, a pit, a pot, an alterna-pot. [vowel-rotation]

[yam]
The repository contains an Amy and a May and a ma and a yam-cart. [yam + cart]

[yellow paint lettering]
The repository contains an elegantly winter pilot.

[yogurt]
The repository contains a toy rug.

Section 4 - Composite Synthesized Objects

[Syntheses are alphabetized by the initial word in the synthesized result.]

[ad]
The repository contains an adage.

[age]
The repository contains a bondage.

[air]
The repository contains an airfoil.

[arc]
The repository contains an arcsin [and an arctic].

[arm]
The repository contains an armband, an armpit, and an armchair.

[army]
The repository contains an army-coat.

[as]
An ascot, a Scot, and a sot are in the repository.

[ass]
The repository contains an assart.

[ba]
The repository contains a bait and a basin.

[ball]
A ballad and a ballcock are in the repository.

[ban]
A bantam is in the repository.

[band]
The repository contains a bandit and a bandage.

[bin]
The repository contains some basins, a basis, a bass, a bass-fish, a ba.

[car]
The repository contains a carpet, 3 carpi, 3 carp, 3 generic-caps, 3 alterna-caps,
3 CPUs, [PARC,] [anagrams from cup and carp]
3 generic-cups. [reverse cryptolock cap]
[a cop. [reverse cryptolock cup]]

[card]
[The repository contains a cardboard.] [unreachable]

[cart]
The repository contains a cartage.

[cat]
[Some camemberts and a]
A camembert, a climate, and a catnap are in the repository.

The repository contains a cat-army and a yam-cart. [anagrammed from cat-army]

[char]
A charring and a charlie are in the repository.

[cock]
A cock-ring, a cock-ale, [a cockpit,] and a cassock are in the repository.

[cot]
[Some coasts are in the repository.]

[counter]
A counterweight and a countertop are in the repository.

[crate]
A cratering and a terracing are in the repository.

[cross]
A crosspiece, a crosshair, and a crossbar are in the repository.

[ear]
The repository contains an earring, an earwig, an earpiece, and an earlap.

[hair]
The repository contains a hairband, a hairpiece and a hairstick.

The red hairpiece is a hairpiece in the repository. [Only possible to make in hard mode]

[jackass]
The repository contains a jackass.

[jigsaw]
A jigsaw-piece is in the repository.

[key]
A keyring, a key-lime, and a keycard are in the repository. [key + chard]

[lee]
The repository contains some leases, a lease, a lass, some eases. [the ass will have to be returned to pass form before we ever get to the T-inserter or anagramming gun, so no easels or teases are possible here.]

[lie]
A litotes is in the repository. [Some toilets-collective are in the repository. The printed name of the toilets-collective is "toilets".]

[mile]
A mileage is in the repository.

[nit]
A nitrate is in the repository.

[pa]
The repository contains a papa and some papas and an aa and an aas-object.

[page]
The repository contains  a passage-place. ["page", "passage"]

[pass]
The repository contains a password-thing, a passcard, a passage, a passkey-thing.

[pat]
The repository contains a patera.

[pea]
A peacock, a peacod, and a peacoat are in the repository.

[pearl]
A pearl-ring is in the repository.

[pet]
A petcock is in the repository.

[pi]
Picard, Picross, a picrate, and a pirate are in the repository.

[pineapple ring]

A pineapple-ring is in the repository.

[pit]
A pit-trap and some pit-traps are in the repository.

[pirate]
A pirate-crew and a wart recipe are in the repository.

[plant]
A plantage is in the repository.

[poppy]
A poppy-oil and a poppycock are in the repository.

[pot]
A potage is in the repository.

[potass]
A potass is in the repository.


[ram]
A [rampart, a] ramcat, and a rampage are in the repository.


[ring]
A ringband, a branding, and a banding are in the repository.

[rock]
The rock-ballad and the rock-band are in the repository.

[sag]
The repository contains some sagas, an Aga, and an aa.

[salt]
A saltcat is in the repository.

[shrimp]
In the repository is a shrimp cocktail.

[shuttle]
A shuttlecock is in the repository.

[spill]
A spillage and a sillage are in the repository.

[stick]
A stickball is in the repository.

[still]
A stillage is in the repository.

[stop]
A stopcock and a stoppage are in the repository.

[sword]
A swordstick and a sword-arm are in the repository.

[tam]
In the repository is a tamale.

[tar]
A tartar, a tarpan, and a tartrate are in the repository.

[till]
A tillage is in the repository.

[tip]
A tippet, a tiptop, a tiptoe and some tiptoes are in the repository.


[toe]
A toe-ring is in the repository.

[tom]
Some tomcats, a tomtit, and a tomcat are in the repository.

[tot]
Some toasts are in the repository.

Some stoats and some stats and some tat are in the repository. [toasts -> stoats via anagramming, -> stats via removal]

[tram]
A tramcar and a trampet are in the repository.

[brown tree]
A brown tee is in the repository.

[trig]
A trigram is in the repository.

[tub]
Some tubas and a tuba are in the repository.

[watch]
A stopwatch, a watchband and a watchword are in the repository.

[word]
A wordage is in the repository.


Repository Major Contents ends here.
