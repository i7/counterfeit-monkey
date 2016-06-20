# Change log

## Unreleased

## Release 6

- Fixes a bug where resurrecting the player (i.e. answering yes to "Shall we suppose \[we\] didn't?" after dying) would sometimes break the game. Now we perform an undo rather than resume the story.
- Updates the version of Ultra Undo.

## Release 5

### Gameplay changes

- Revises the way Waterstone responds to things he's shown, so that it is more clear that he is behind a glass door, and so that he is more obviously reacting to an item of the player's deliberate selection.
- Removes old requirements about use of disguises in the presence of others. This was just confusing, really.
- Removes requirement to be empty-handed before rowing, because this is just holding things up at what is otherwise nearly the end of the game, and because some of the messaging about it was actively confusing to some players. But it wasn't a puzzle really anyway.
- Removes an incorrect exit listing from the Equipment Archive.
- Fixes bug whereby APPROACH CAMERA could be misconstrued even though this was clearly hinted as an action during the basement sequence.
- Allows the player to type RESTORE during the name-recognition sequence at the beginning rather than playing through it.
- Adds a reverse mode to the vowel rotator bucket, allowing vowels to be rotated in the other direction. This removes the risk that the player will make TUB > TAB and accidentally destroy the only access to restoring gel (since this can be reversed). It also allows the player an alternate way to make a CORD for the power cord puzzle, via CARD > CURD > CORD. This is meant to address complaints about the umlaut punch being necessary, but of course it doesn't work in hard mode, which will still require the more difficult solution.
- Fixes a bug whereby the reconstructed Atlantida is less proactive than she was intended to be.
- Adds an afterlife feature to automatically undo accidental deaths.

### Word repository

- Adds CURD, CORD, CUD, COD, HURT, CUT, RILL, TRILL, PISA, PUN, PUNS, PUNT, PUNTS, PUS, TEN, TUN, TAN (extras), NET (extras), STENT, TENT, TENTS, BUSES, BUS, FOAL, LOAF, OAF, CLICK, BULL, DIG, and DIVA to support reversal mode on the bucket.
- Adds AHI, HOD, OZ, OHIO, and ZOO to support hard reversal mode on the bucket.
- Adds SHUTTLE homonym.
- Adds STOCK, SOCK, CHERT, CLUCK, CLACK, CACK, and POI products for the vowel-rotating bucket.
- Adds TORTE, TORT, and ORE (and an additional TOTE) as results of anagramming the OTTER.
- Adds TNT as a product of TINT.
- Adds SCREE as a product of SCREEN.
- Adds RAPE, PIECE, and COUNTER homonyms.
- Adds MARY anagram for ARMY.
- Adds PILLS anagram for SPILL, and ILLS and TILLS as derivatives thereof.
- Adds a singular CRUMB.
- Adds a BIG REVEL (anagram of BIG LEVER).
- Adds a WARP (anagram of WRAP), and its derivatives WAR and WART (though as WAR is fatal it is probably not possible to get WART).
- Adds a TRAVELLER TIP and a TRIPLE VARLET (from the TRAVELLER TIPS which can be anagrammed from SILVER PLATTER).
- Adds AGA and an additional AA object to be made from SAGAS (added in rev 4).
- Adds noisy homonyms for SNAP and RING, providing additional solutions to the masking noise puzzle.
- Adds TIDY PUCE COFFER anagram for the dirty coffee cup.
- Adds a singular OIL PAINTING for the OIL PAINTINGS in Atlantida's chambers. Also a singular INTAGLIO PIN and the resulting INTAGLIO PINT and TILTING PIANO.
- Adds a singular PAINTING for the PAINTINGS in the bureau.
- Adds INAPT SIGN as an anagram for the PAINTINGS, resulting also in INAPT SIN, SATIN PIN, SATIN PINT, SAINT PINT, GIANT PIN, GIANT PINT, PIG TAT INN, PI TAT INN, TITAN PIN, TITAN PINT, and INAPT TINT.
- Adds special responses to trying to S-remove the UMBRELLAS, the TEENAGERS, the BRINY RIVULETS, the RAILINGS, the SMALL CHILDREN, the YELLOW BUILDINGS or BEIGE BUILDINGS, or the PORTHOLES.
- Adds a MALL FIGURINE from the SMALL FIGURINES in Higgate's office.
- Adds a POLLING CHART as a singular of POLLING CHARTS, together with a STROLLING CHAP and a PATCHING ROLL.
- Adds a WINNER LOGO CHOCOLATE to be the singular of the same object, and a HOOTING OWL CONCEALER as its anagram.
- Adds BROKEN COMPONENT and CEMENT PORNO KNOB as products of the BROKEN COMPONENTS.
- Adds singulars LAMB GRANULATE and ANAGRAM BULLET for those objects.
- Adds FROZEN DINNER, ZEN FROND RINSE, and RED FROZEN INN as products of FROZEN DINNERS.
- Adds WARM ROD and RAD WORM products of SWORD ARM. (It was previously possible to get as far as WARM RODS, but not to remove the S.)
- Adds WIRE RACK and PAPER MODEL singulars.
- Adds TAT as a derivative of STATS.
- Adds BOCK as a derivative of BROCK.
- Takes the coward's way out and changes the FIGURES on the fountain to SCULPTED FIGURES so that they can't plausibly be depluralized in a way that would require varying the fountain description to account for both the state of the figures *and* the state of the horses. The whole HOSE transformation is enough, thanks.

### Parsing

- Adds USE GUN ON X syntax for shooting.
- Fixes bug whereby in certain circumstances FIRE GUN AT X would not be recognized as synonymous with SHOOT.
- Fixes bug whereby the PLATE could not be referred to by name.
- Improves parsing so PUT BOOK AWAY and SHELVE BOOK would be understood as well as RETURN BOOK or PUT BOOK ON SHELVES.
- Adds synonym BACKSACK for BACKPACK.
- Adds synonym EDIFICE for the station building.
- Adds BOTTLE and GIANT BOTTLE and BOTTLE OF synonyms for the liquor collection.
- Adds IF as a synonym for WHETHER in many dialogue options.
- Adds PUNCH X WITH PUNCH or just PUNCH X in the presence of the umlaut punch.
- Adds PASTE X as a way of applying the origin paste.
- Makes it easier to refer to the newspaper at the very end as PAPER, and removes a conflict with the clipping (formerly NEWSPAPER CLIPPING)
- Adds more robust handling of input like SELECT OPTION 3 or SELECT CHOICE 3 or SELECT NUMBER 3 as an alternative for SELECT 3 (and other similar formations) when manipulating a computer with a multiple-choice interface.
- Improves parsing of some conversation options referring to characters by name or pronoun.
- Fixes bug whereby UNSCREW SCREWS WITH AS gave misleading feedback.

### Clarified descriptions and instructions

- Corrects a piece of misleading output about cars, which suggested it was possible to park one that had not been started.
- Improves response to trying to gel yourself after you've learned that you are fused.
- Slightly rephrases the description of the spinner puzzle in order to make it easier to visualize.
- Rephrases feedback if you try to prop the trapdoor with something inappropriate, to be more specific about why the object is not sufficient.
- Fixes an instruction that incorrectly directed the player to the university rather than the dead-drop.
- Fixes a bug that gave a misleading message in response to an instruction to stand on the tarpaulin masses.
- Revises the phrasing used to describe exactly why a given prop won't work in the trap door.
- Fixes a bug whereby it is not immediately explained that the pinata is what is blocking you if you use GO TO ROTUNDA while the game is being played.
- Fixes a bug whereby Brock may appear confused by an abstract created not in the t-inserter, and act as though that counted as solving the puzzle.

### Improved world model

- Improves character dialogue responses when the player asks about the current location.
- Fixes a loophole that allowed the player to get the attention of the men playing darts even though other code had been written to disallow them from having a conversation. Subsequent behavior was visibly buggy.
- Fixes a bug that misreported the window in the Private Solarium as closed even when it had been opened.
- Fixes a bug whereby the poster is described as still being attached to the Monumental Staircase wall even after it has been converted to a POSER and led to a new location, then gelled.
- Fixes a bug whereby it was possible to close the plexiglas even after cutting it open.
- Adjusts the weight of the puppy to make it easier to pick up.
- Fixes a bug whereby it was possible to put the ruck in the bucket and get a rack that could neither be taken nor gelled.
- Fixes bug whereby the boiler could be taken.
- Fixes bug whereby the coffee cup was described as empty even if the player put something in it.
- Fixes bug whereby it was possible to change an object that was propping a door without the door closing in response.
- Fixes bug whereby mother could stare at an object that was inside our closed backpack.
- Fixes bug by which the department printer could whir even if switched off after the player leaves Waterstone's office.
- Fixes bug such that if you put the gel on the rock when it’s in the T-insertion machine, Brock won’t leave the machine, preventing the player from being able to put anything else into it (unless they turn him into a rock and remove him).
- Fixes bug whereby flipping a yam twice with the pedestal turned it back to a yam, but the monocle thought it was still in an altered state.
- Fixes bug whereby Brown could be described as hunched over his work table even when he was out in the Oval.
- Fixes bug such that animals in the kayak would spontaneously leap out (to their presumed watery deaths though this was not narrated).
- Fixes bug to do with reaching objects on the stand in the museum window. This in fact turned out to be the fault of an obscure error in the Inform world model (see http://inform7.com/mantis/view.php?id=1168) but has been hacked around.
- Revises the crypto-lock bucket so that large objects cannot be put into it and large objects constructed inside it will fall out.
- Accepts SE as a synonym to E when leaving Monumental Staircase for High Street, since one player felt the map looked more southeasterly than east at that point.
- Adds a clearer response for why taking the SAND is not a good option.
- Adds better responses for attempts to wash the funnel in the fountain or near a sink.
- Adds better responses to trying to pour and fill things (though it generally rejects these attempts, it at least recognizes what the player is attempting).
- Adds an exception to an overzealous rule that prevented the player from gelling air-like objects (such as a STINK manufactured in the T-inserter).

### Additional content

- Addresses the disgraceful fact that Typoland Fun Fair could not be found in the guidebook.
- Adds "lodgings", public convenience and bus station to the guidebook as well.
- Adds chap-hop variant to the rap if you're wearing the Britishizing goggles.
- Adds responses to PLAY DARTS and PLAY ARKHAM HORROR (or other games aboard the yacht). (You're not actually allowed to do either, but at least we can respond better.)
- Adds response to trying to synthesize ROCK and ROLL.
- Adds responses for E-removing Brown's goatee with and without an animate-enabled letter remover.
- Adds a couple of additional features to Brock's laptop, in case you hack in.
- Adds a special response for looking at your reflection through the monocle.

### Typos and cosmetic output errors

- Corrects a typo in text about the winding footpath.
- Corrects a typo in description of fishing reel.
- Corrects a typo in the synonyms for the shrine object.
- Hacks around a mysterious bug in which the apartment key was reported as "an key" rather than "a key". I am not sure why this was happening to start with.
- Fixes a rare runtime error to do with table rows used to record player goals.
- Fixes a bug such that the player was described as sitting IN the piano rather than on the piano bench in the Fleur d'Or lobby.
- Fixes a bug such that the description of the TROPE COUNT object was not set correctly.
- Fixes a bug whereby looking at Alex's apartment key with the monocle on did not produce any monocle reading.
- Fixes a bug whereby the footpath was referred to without the article if you looked at it through the monocle.
- Fixes a bug that made it possible to cut the kudzu with edgeless objects but get no description when one had done so.
- Fixes bug which misleadingly described the toolkit in the drinks club as empty if you looked at it directly.
- Fixes response to TOPICS command to avoid mentioning quips that are intended to go unmentioned.
- Fixes bug such that the first attempt to TAKE CHARD produced output only suitable for the chard garden, even if you'd manipulated it linguistically first and moved it somewhere else.
- Fixes bug whereby TOES was treated as singular.
- Fixes bug whereby ELECTRICAL EQUIPMENT, GRIT and TERRACING were treated as plural rather than mass nouns.
- Fixes bug whereby certain joke responses to synthesis occurred only for the synthesizer and not for the workshop dais.
- Fixes bug whereby the kitchen sink would be described as still present after you'd converted it.
- Fixes bug whereby objects described as having text would nonetheless appear "blank" in response to READ (rather than examine).
- Fixes bug whereby a joke about eels and congress was supposed to be attached to the accent flipper but by mistake got attached to the equipment shelves, making it incomprehensible. Maybe it would have been anyway, but now it's at least in the right place.
- Fixes bug whereby answering Alex's initial questions with ANDRA as early as possible avoided the banner being printed. This failure ever to display the Inform affiliation is technically a violation of Inform's license.
- Fixes a bug whereby the command PUT POT ON PEDESTAL, referring to the yogurt, could hang the parser for ornate and complicated reasons. Rather than really fix this, we just made the YOGURT be YOGURT, not POT OF YOGURT. Because it wasn't worth it. As penance, added a TOY RUG object for the anagramming gun.

## Release 4

- Adds CORK (ROCK anagrammed), SAGAS (SAG + AS).
- Documents HARD MODE officially.
- Adds a description to the patchy grass in the monument green.
- Corrects a line about going to the university immediately after freeing the teens.
- Clarifies the dead drop goal so that a player who has left the game for a little while can review where they were supposed to be going.
- Fixes a bug whereby it was possible to hang the game by referring to "paper" in the presence of the draft document.
- Fixes a bug whereby typing TAKE ALL while carrying the pill will result in eating the pill (fatally).
- Fixes a bug where looking through the monocle at the tub didn't mention the tube.
- Improves responses to attempting to use the tube on the lock.
- Fixes a bug whereby DIGGING in the sand in the beach still produced a description of finding the funnel, even in hard mode where the funnel is not actually available.
- Fixes a bug whereby in one circumstance the paper drawer would be described as a paper-drawer, but would not accept the hyphenated form as input.
- Adds an extra Amy and an extra May to the repository so that they can be simultaneously produced by the army and by the yam, if need be.
- Fixes an error whereby the player was able to observe the wrong member of the Brock/Dad pair when looking in the surveillance screen.
- Adds synonyms for attempting to climb on the tarpaulin masses in the Tin Hut.
- Adds snarky response to trying to make font t-shits, pink t-shits, or various t-shits. (Mournful sigh.)
- Adds snarky response to trying to remove I from oneself.

## Release 3

- Improves appearance of achievement announcements (line breaks, text styling).
- Sets the ticket-taker pronoun when you first see him, so GIVE TICKET TO HIM doesn't fail.
- Fixes bad line breaking when listening in the presence of the protesters.
- Fixes a typo in the description of turning the cannon.
- Fixes a bug whereby the cannon was takeable.
- Fixes buggy text output when putting the fuel in the car.
- Fixes a bug whereby turning on a car that wasn't properly fueled or oiled gave the wrong indications about its state of readiness.
- Fixes a buggy response to drinking the ale when the bar game had previously been about producing a pea-sized object.
- Fixes a bug whereby it's possible to kiss brock during any conversation, even if he's not in the room, if using the correct command format; and to see this possibility by typing TOPICS.
- Fixes a bug whereby the plexiglas case was portable.
- Fixes a bug whereby anagramming the accent-flipper and then turning it back was sufficient to crush the player under the bulk of the recreated object.
- Fixes a bug whereby only two pi objects could be generated though in theory there should have been more.
- Adds the words bandage, basin, bait, tea, rite, gin, eight, wight, Ross, tart homonym, pot homonym, ant, tan, ten, net, ent, and rattle.
- Fixes a sequence bug whereby giving the mechanic the oil when the car wasn't around would lead to the mechanic notionally fixing something that wasn't there, while consuming the oil permanently. Adds some dialogue for the mechanic, allowing him to hint a little more clearly about the card state as necessary.
- Fixes a bug whereby the jigsaw was supposed to be noisy when turned on, but due to a typo in the rules, wasn't counting. This made hard mode significantly more hard.
- Fixes a bug whereby the modified names of objects in hard mode were not being respected.
- Fixes a bug whereby M-removing Mark after he'd been identified wasn't working properly because the game still thought of his name as "patron".
- Fixes a bug whereby having the broken components in inventory messes with parsing of the big lever on the work dais.
- Revises utilitarian inventory listing to be clearer about what is being worn or carried in the backpack, and whether the backpack is open or closed.
- Makes X ME give information about what you're wearing.
- Improves the response to trying to go north in Crumbling Wall Face.

## Release 2

- Fixes letter-tranformation behavior so that the newly constructed object will have its pronouns set properly (so "IT" will apply to the thing just made).
- Hackily fixes weird bug where, despite the code being evidently correct, "HIGHLIGHT" would activate score notification rather than the highlighting effect.
- Fixes bad instruction in ABOUT text that misdescribed the LOOK CAREFULLY function, and makes LOOK CLOSELY also work, for good measure.
- Fixes bug whereby an answer in the first three questions which included punctuation meant that the answer would not be correctly recognized.
- Fixes a response to cutting things with the sword that says the sword is not edged.
- Fixes a bug whereby carrying the dove into the Cold Storage room resulted in the player immediately and involuntarily sending the patsy prisoner out to face the rifles.
- Fixes a bug whereby gelling Brock in Cold Storage wasn't working.
- Adds a response to attempting to cut the Atlantida pinata.
- Adds to the repository a countertop, a trope count, a hairband, a pineapple ring and a ripening apple.