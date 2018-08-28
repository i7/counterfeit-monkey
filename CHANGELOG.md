# Change log

## Unreleased

- Fixes a hang that would occur on some interpreters when resizing the game window or clicking on the compass rose while being asked to reply yes or no.
- Many small optimizations should improve performance a little on slower interpreters and devices.

### Gameplay changes

- No longer awards achievements when you die that were meant to be awarded when finishing the game.
- No longer awards a point (or expresses admiration for the player) if a non-player character puts restoration gel on something.
- Automatically opens the backpack when necessary to use the letter-remover.
- Disallows opening the backpack when doing so would reveal something incriminating to the secretary.
- Homonyming now works properly on things with randomized descriptions.
- Homonyming the activist's sign no longer turns it into a protesters' sign.
- In general, homonyming will no longer transform a thing into another of the same kind, with the exception of the card.
- The bartender will no longer paddle the musical piece.
- Gives a proper response when asking the bartender to paddle a tool that you made by gelling a drink. It still doesn't make a huge amount of sense, though.
- Living things will no longer immediately get off the programmable dais.
- Improves clues to help the protest-scenario along.
- Makes touching the gel equivalent of putting it on us.
- Prevents the player from walking out on Mother. Previously we would print a refusal message, but still carry out the action.
- Tones down the clues to the legend puzzle.
- It is no longer allowed to walk away with the rock until we have gelled it once.
- Disallows B-removing Brock.
- No longer allows waving the letter-remover at the small knob on the letter-remover.
- No longer allows picking up the oyster turd.
- Adds a massive pug.

### Parsing
- Makes all player input case-insensitive.
- Makes commands like X-REMOVE CODEX or P-REMOVE APPLE work.
- When typing commands like REMOVE X FROM CODEX, the game will no longer try to change the setting of the letter-remover if it already is X.
- Many fixes to weird behavior when trying to stand, sit and recline on things.
- Fixes a run-time error that would occur when typing a number as a reply when asked to disambiguate between rooms.
- Fixes some cases when using the definite article "the" would make the parser misunderstand commands.

### Typos and cosmetic output errors
- If you disable graphics, they will now stay disabled after a restart or restore. Not after quitting the interpreter, though.
- The map images used on the yacht have been updated to eliminate black lines that would sometimes appear when switching graphics off and then on.
- Always describe new letter-transformed creations when we haven't seen them before. Previously, the player would sometimes never get to see the descriptions of things that instantly killed them.
- Some letter-transformation tools would print a full description of their creations every time, even if we created the same thing over and over. Now only the homonyming dais does this.
- Removes a superfluous line break when clicking the compass rose.
- Examining the spinner sculpture while it is empty no longer causes a run-time error.
- The ad no longer refers to the restoration gel as "restoring gel".

## Release 7

- The game and all its extensions have been ported to Inform 6M62. This allows us to simplify the code in many places. We have tried hard to ensure that nothing was broken in the process.
- The source code was split into smaller files.
- The map can now be switched off with GRAPHICS OFF to reclaim screen space.
- The TOPICS command lists all recommended quips as well as most available ones.
- Many initial values are now hard-coded in the source for a quicker game start.
- Adds a startup pre-computation function that caches the results of startup for faster subsequent game starts, and which can also read startup data from the blorb file on interpreters that support it.
- Replaces most visibility tests with the marked-visible attribute from Scope Caching by Mike Ciul for a speedup.
- Uses the list writers and other replacement functionality from Large Game Speedup by Andrew Plotkin. Inspired by this, many similar speed-ups have been implemented elsewhere in the code.
- Adds a repsonse to trying to play the games on Brock's computer.
- Implements asking the mechanic where to find a car.
- Allows thanking more people.
- Adds a reply for asking the ticket-taker about The Babel Café.
- Fixes a broken image when drawing the compass in the traffic circle.
- Fixes a bug where the spinner would sometimes spin twice the same turn.
- The map is now always the same width as the graphics window.
- Allows turning tutorial mode back on unless we have left the starting area.
- Adds new testing functionality where a file named AUTOTESTING.TXT (or just AUTOTESTING on some interpreters) will be read as a list of input commands.
- Adds the testing command PAUSES OFF to disable the game pausing and waiting for a key press. Enable it again with PAUSES ON.
- Adds the testing command RANDOM-SEED (number) to reset the random seed to any number.
- Includes some primitive testing scripts that pipe a text file of commands into the game and compares the output to an older transcript.
- Fixes a bug where the as could disappear out of your hand if you made a second as from the trash, then synthesized an ascot, then gelled the ascot. Also prevents any potential similar bugs.
- Now the roc or other converted forms of Brock are properly gelled when boarding the yacht.
- Fixes an issue where the game wouldn't let you leave the starting park area if you letter-converted the plans before touching them.
- Fixes a run-time problem in Threaded Conversation when resetting the interlocutor while the current interlocutor is nothing.
- Speeds up route-finding by not looking for ways around locked doors and skipping other redundant checks.
- Speeds up conversation by reducing the number of quips tested for viability each turn and also replacing slow code with Inform 6 equivalent.
- Makes children cry when you break the hanging figure with the severed arm.
- Things on the trampet now randomly fall off when you jump on it.
- Implements smelling the lavender smell in the public convenience.
- Delays awarding the score for getting past the secretary until you actually get past her.
- Brock now comments on things you are wearing.
- Adds responses for showing the draft document to Waterstone, and for showing him something homonym-shame-relevant too early. Rewords other responses to help clarifying this puzzle.
- Adds responses to discourage the player from trying to stow things in the tin hut while hiding from the authenticator.
- Prevents the player from walking away with the student quarters coffee-maker.
- The quip Ask how Professor Brown makes abstracts is now still suggested if you leave his office and return later.

### Gameplay changes

- Adds four new achievements.
- The letter-transformation tools will now consistently produce the same object when there are several viable.
- Disallows removing The Problem of Adjectives from the Language Studies seminar room bookcase.
- Disallows putting restoration gel on the morning dress.
- You can now leave the rock behind until you have found out that it is Brock.
- Allows destroying fake people by destroying their container or supporter.
- Allows cutting the kudzu with the jigsaw.
- Enforces closing the portcullis when being chased by the guards
- It is now possible to leave the snap temporarily behind as a masking noise.
- Liquids and sinks behave more consistently. No longer can certain uncontained fluids be picked up and carried around in containers alongside other solid things or fluids.
- It is no longer possible to put containers in the sink to fill them with soap.
- Things that are not allowed in the backpack, such as fluids, long or heavy things, can no longer be snuck into the backpack by first placing them in another container or on a supporter.
- You can no longer carry too heavy objects by hiding them in a lighter container or on a supporter.
- It is not possible to climb into or onto things inside the car anymore.
- The legend now stays attached to the map after you gel it.
- Fixes to allow the roc following along when you take the kayak to the yacht.
- It is no longer possible to leave essential objects behind by inserting them into a container and then letter-transforming the container.
- Makes it more apparent when the car will not run by stopping you rather than making you automatically get out and walk to your destination.
- Makes the refusal messages more consistent when trying to go to blocked-off locations, and avoids walking you halfway there.
- Gelling the tub is now allowed.
- Animals will no longer get out of containers such as the car on the same turn that they followed you into them.
- Fixes a bug where placing an object in the garage before changing it into a car would prevent you from entering the car.
- Adds carp, caps, PARC and a strolling cap.

### Parsing

- The parser no longer asks for a second noun when attacking something unless a weapon is actually required.
- Heavy objects are no longer picked up and then dropped when typing TAKE ALL.
- Understands PIÑATA as the hanging Atlantida figure on interpreters that support unicode input.
- Understands REMOVE SCREWS and REMOVE BLINDFOLD.
- Gives a response when trying to get the mechanic to fuel the car.
- Makes pouring fuel into the car synonymous with fueling it
- Fixes quips that require the knowledge of certain facts.
- Any suitable supporters are preferred to the floor when typing SIT or LIE DOWN.
- Adjusts line breaks around achievement messages.
- Typing INSERT X IN CONTAINER when X is already in the container will no longer make you open the container if closed, or make you take out X and then put it back in.
- The backpack now automatically opens when you try to use the letter-remover inside it.
- It is no longer possible to insert objects into the customs house line or the secret door.
- Makes IN and OUT work more consistently as directions.
- Fixes a run-time error when typing LIE.
- Makes RETURN BOOK work when there are several books available.
- Adds new ways of understanding what we want to shoot at and with what. The parser is now better at telling the difference between shooting a gun at something and shooting at something with it.
- Makes it possible to refer to SINKS in the public convenience.
- Adds several new ways of asking the bartender to homonym-convert things.
- Adds more ways tell the parser to fill the pen with ink and write with it.
- Adds more synonyms for putting the reel in the projector and starting the movie.
- Fixes a bug where trying to remove things from containers or supporters would be misinterpreted as trying to wave the letter-remover at them.
- Gives responses to waving the letter-remover at the tub and the restoration gel, and to putting gel on the letter-remover.
- Prevents the parser from taking you to the diorama table in Heritage Corner when typing GO TO BUREAU.
- Prevents the parser from taking you to the elderly apartments in Sigil Street when typing GO TO APARTMENT.
- Makes you go to the old city walls rather than the postcards in cathedral gift shop, the museum exterior, the yellow buildings in the back alley or the sandcastle when typing GO TO WALLS.
- Goes to the public convenience rather than the convenience store when typing GO TO CONVENIENCE.
- The parser no longer asks which room in the church you want to go to when typing GO TO CHURCH.
- Fixes a bug that would sometimes leave you standing right outside your intended destination.
- Typing a number as a disambiguation choice will now pick the right selection.
- Allows some greeting phrases used by other characters to be used by the player.
- ACTIVATE, HOMONYM and SYNTHESIZE are now understood as verbs.
- Taps can now be referred to as HOT or COLD.
- UP is understood as standing up if there is no exit leading upwards.
- Adds a response to PUT PANS IN PANS.

### Typos and cosmetic output errors

- Properly announces any achievements awarded when winning the game.
- Prints the intended message when trying to show something to an animal.
- No longer describes the truck or the shuttle as "our car".
- Fixes always showing your goals automatically after going through the barrier for the first time.
- Hides some more instructional messages when tutorial mode is off.
- No longer prints a message about walking through "the wealthy neighborhood" unless you actually do.
- Fixes printing the article of the mourning dress when examining the shops.
- The Babel Café is spelled with an accented é everywhere.
- Changes the word "ground" to "floor" in standard messages when indoors.
- Gets rid of parser clarification messages when issuing GIVE, BUY or SHOW commands without specifying a second noun.
- The utilitarian inventory listing is now faster and more robust. It also states whether the things listed are inside containers.
- Improves the responses when trying to walk in unimplemented directions.
- Gives a better response when the cryptolock produces something large that falls out of it.
- Avoids printing long lists of refusal messages when typing PUT ALL IN a locked container or similar.
- Makes it possible to look up Anglophone Atlantis in the guidebook.
- Adds responses to trying to remove the restoration gel from the tub or the tube.
- Makes the score awarding from reading the legend show up immediately rather than on the next turn.
- Fixes a double refusal message when trying to insert things into the etymological reversing chamber while it is in the closed display case.
- Fixes a bug that would occasionally refer to a "galley sink" when describing the public convenience.
- Fixes a double room description sometimes printed when approaching rooms.
- Makes the letter-transformation tools refer to the player as "Alexandra".
- The name that the letter-remover tries to change is now always identical to the printed name of the object. Previously it would differ for certain objects, such as the sink taps.
- Fixes the reply when asking the gift shop volunteer about things he has nothing to say about.
- The mechanic is no longer mentioned twice when examining the garage.
- Adds back some old responses found in the source when attempting to buy souvenirs in the cathedral gift shop.
- The descriptions of running taps in room descriptions are now grouped together.
- Makes sure that all the steps involved in driving (closing the door, starting the ignition) are printed the first time we drive to a named location, just as they are when driving in a direction.
- Makes sure that the funnel is described as "all sandy" until you have taken it.
- Prevents the response "What do you want to drop those things in?" when typing DROP ALL while carrying nothing.
- Makes sure that I is always capitalized in travel descriptions.
- You no longer enter the car at the end of the traffic circle scene if you are already in the car.
- You no longer get off the tarpaulin in the tin hut after having already left the hut.

## Release 6

- Fixes a bug where resurrecting the player (i.e. answering yes to "Shall we suppose \[we\] didn't?" after dying) would sometimes break the game. Now we perform an undo rather than resume the story.
- Updates the version of Ultra Undo.
- Somewhat speeds things up by adding "southern" as an permanent attribute of rooms rather than calculating the path to them on every turn.
- Adds an article to the description of putting gel on things.

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
