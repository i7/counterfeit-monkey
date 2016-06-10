"Counterfeit Monkey" by Emily Short.


["The alphabet is a system of interchangeable parts. The word form can be surgically revised, instead of rewritten, to become the word farm or firm or fork or fort or from, or with a little more trouble, to become the word pineapple." -- Robert Bringhurst, The Elements of Typographic Style]


[A word about the source release:

This source is provided for its interest value. Not all of the extensions necessary to compile the source are available to the public and it is not the author's intention to have others recompile or revise the game.

There is no guarantee that any of the included code is suitable for any specific purpose, but the author grants users the right to adapt the code they find as they wish for other projects. The author's release of the source does not constitute a promise to support that code or help other authors in adapting it to their own purposes.

Output text remains copyright Emily Short.]

The release number is 6.

[Change log:

Release 6:

	Fixes a bug where resurrecting the player (i.e. answering yes to "Shall we suppose [we] didn't?" after dying) would sometimes break the game. Now we perform an undo rather than resume the story.
	Updates the version of Ultra Undo.

Release 5:

	*** Gameplay changes:
	Revises the way Waterstone responds to things he's shown, so that it is more clear that he is behind a glass door, and so that he is more obviously reacting to an item of the player's deliberate selection.
	Removes old requirements about use of disguises in the presence of others. This was just confusing, really.
	Removes requirement to be empty-handed before rowing, because this is just holding things up at what is otherwise nearly the end of the game, and because some of the messaging about it was actively confusing to some players. But it wasn't a puzzle really anyway.
	Removes an incorrect exit listing from the Equipment Archive.
	Fixes bug whereby APPROACH CAMERA could be misconstrued even though this was clearly hinted as an action during the basement sequence.
	Allows the player to type RESTORE during the name-recognition sequence at the beginning rather than playing through it.
	Adds a reverse mode to the vowel rotator bucket, allowing vowels to be rotated in the other direction. This removes the risk that the player will make TUB > TAB and accidentally destroy the only access to restoring gel (since this can be reversed). It also allows the player an alternate way to make a CORD for the power cord puzzle, via CARD > CURD > CORD. This is meant to address complaints about the umlaut punch being necessary, but of course it doesn't work in hard mode, which will still require the more difficult solution.
	Fixes a bug whereby the reconstructed Atlantida is less proactive than she was intended to be.
	Adds an afterlife feature to automatically undo accidental deaths.

	*** Word repository:
	Adds CURD, CORD, CUD, COD, HURT, CUT, RILL, TRILL, PISA, PUN, PUNS, PUNT, PUNTS, PUS, TEN, TUN, TAN (extras), NET (extras), STENT, TENT, TENTS, BUSES, BUS, FOAL, LOAF, OAF, CLICK, BULL, DIG, and DIVA to support reversal mode on the bucket.
	Adds AHI, HOD, OZ, OHIO, and ZOO to support hard reversal mode on the bucket.
	Adds SHUTTLE homonym.
	Adds STOCK, SOCK, CHERT, CLUCK, CLACK, CACK, and POI products for the vowel-rotating bucket.
	Adds TORTE, TORT, and ORE (and an additional TOTE) as results of anagramming the OTTER.
	Adds TNT as a product of TINT.
	Adds SCREE as a product of SCREEN.
	Adds RAPE, PIECE, and COUNTER homonyms.
	Adds MARY anagram for ARMY.
	Adds PILLS anagram for SPILL, and ILLS and TILLS as derivatives thereof.
	Adds a singular CRUMB.
	Adds a BIG REVEL (anagram of BIG LEVER).
	Adds a WARP (anagram of WRAP), and its derivatives WAR and WART (though as WAR is fatal it is probably not possible to get WART).
	Adds a TRAVELLER TIP and a TRIPLE VARLET (from the TRAVELLER TIPS which can be anagrammed from SILVER PLATTER).
	Adds AGA and an additional AA object to be made from SAGAS (added in rev 4).
	Adds noisy homonyms for SNAP and RING, providing additional solutions to the masking noise puzzle.
	Adds TIDY PUCE COFFER anagram for the dirty coffee cup.
	Adds a singular OIL PAINTING for the OIL PAINTINGS in Atlantida's chambers. Also a singular INTAGLIO PIN and the resulting INTAGLIO PINT and TILTING PIANO.
	Adds a singular PAINTING for the PAINTINGS in the bureau.
	Adds INAPT SIGN as an anagram for the PAINTINGS, resulting also in INAPT SIN, SATIN PIN, SATIN PINT, SAINT PINT, GIANT PIN, GIANT PINT, PIG TAT INN, PI TAT INN, TITAN PIN, TITAN PINT, and INAPT TINT.
	Adds special responses to trying to S-remove the UMBRELLAS, the TEENAGERS, the BRINY RIVULETS, the RAILINGS, the SMALL CHILDREN, the YELLOW BUILDINGS or BEIGE BUILDINGS, or the PORTHOLES.
	Adds a MALL FIGURINE from the SMALL FIGURINES in Higgate's office.
	Adds a POLLING CHART as a singular of POLLING CHARTS, together with a STROLLING CHAP and a PATCHING ROLL.
	Adds a WINNER LOGO CHOCOLATE to be the singular of the same object, and a HOOTING OWL CONCEALER as its anagram.
	Adds BROKEN COMPONENT and CEMENT PORNO KNOB as products of the BROKEN COMPONENTS.
	Adds singulars LAMB GRANULATE and ANAGRAM BULLET for those objects.
	Adds FROZEN DINNER, ZEN FROND RINSE, and RED FROZEN INN as products of FROZEN DINNERS.
	Adds WARM ROD and RAD WORM products of SWORD ARM. (It was previously possible to get as far as WARM RODS, but not to remove the S.)
	Adds WIRE RACK and PAPER MODEL singulars.
	Adds TAT as a derivative of STATS.
	Adds BOCK as a derivative of BROCK.
	Takes the coward's way out and changes the FIGURES on the fountain to SCULPTED FIGURES so that they can't plausibly be depluralized in a way that would require varying the fountain description to account for both the state of the figures *and* the state of the horses. The whole HOSE transformation is enough, thanks.

	*** Parsing:
	Adds USE GUN ON X syntax for shooting.
	Fixes bug whereby in certain circumstances FIRE GUN AT X would not be recognized as synonymous with SHOOT.
	Fixes bug whereby the PLATE could not be referred to by name.
	Improves parsing so PUT BOOK AWAY and SHELVE BOOK would be understood as well as RETURN BOOK or PUT BOOK ON SHELVES.
	Adds synonym BACKSACK for BACKPACK.
	Adds synonym EDIFICE for the station building.
	Adds BOTTLE and GIANT BOTTLE and BOTTLE OF synonyms for the liquor collection.
	Adds IF as a synonym for WHETHER in many dialogue options.
	Adds PUNCH X WITH PUNCH or just PUNCH X in the presence of the umlaut punch.
	Adds PASTE X as a way of applying the origin paste.
	Makes it easier to refer to the newspaper at the very end as PAPER, and removes a conflict with the clipping (formerly NEWSPAPER CLIPPING)
	Adds more robust handling of input like SELECT OPTION 3 or SELECT CHOICE 3 or SELECT NUMBER 3 as an alternative for SELECT 3 (and other similar formations) when manipulating a computer with a multiple-choice interface.
	Improves parsing of some conversation options referring to characters by name or pronoun.
	Fixes bug whereby UNSCREW SCREWS WITH AS gave misleading feedback.

	*** Clarified descriptions and instructions:
	Corrects a piece of misleading output about cars, which suggested it was possible to park one that had not been started.
	Improves response to trying to gel yourself after you've learned that you are fused.
	Slightly rephrases the description of the spinner puzzle in order to make it easier to visualize.
	Rephrases feedback if you try to prop the trapdoor with something inappropriate, to be more specific about why the object is not sufficient.
	Fixes an instruction that incorrectly directed the player to the university rather than the dead-drop.
	Fixes a bug that gave a misleading message in response to an instruction to stand on the tarpaulin masses.
	Revises the phrasing used to describe exactly why a given prop won't work in the trap door.
	Fixes a bug whereby it is not immediately explained that the pinata is what is blocking you if you use GO TO ROTUNDA while the game is being played.
	Fixes a bug whereby Brock may appear confused by an abstract created not in the t-inserter, and act as though that counted as solving the puzzle.

	*** Improved world model:
	Improves character dialogue responses when the player asks about the current location.
	Fixes a loophole that allowed the player to get the attention of the men playing darts even though other code had been written to disallow them from having a conversation. Subsequent behavior was visibly buggy.
	Fixes a bug that misreported the window in the Private Solarium as closed even when it had been opened.
	Fixes a bug whereby the poster is described as still being attached to the Monumental Staircase wall even after it has been converted to a POSER and led to a new location, then gelled.
	Fixes a bug whereby it was possible to close the plexiglas even after cutting it open.
	Adjusts the weight of the puppy to make it easier to pick up.
	Fixes a bug whereby it was possible to put the ruck in the bucket and get a rack that could neither be taken nor gelled.
	Fixes bug whereby the boiler could be taken.
	Fixes bug whereby the coffee cup was described as empty even if the player put something in it.
	Fixes bug whereby it was possible to change an object that was propping a door without the door closing in response.
	Fixes bug whereby mother could stare at an object that was inside our closed backpack.
	Fixes bug by which the department printer could whir even if switched off after the player leaves Waterstone's office.
	Fixes bug such that if you put the gel on the rock when it’s in the T-insertion machine, Brock won’t leave the machine, preventing the player from being able to put anything else into it (unless they turn him into a rock and remove him).
	Fixes bug whereby flipping a yam twice with the pedestal turned it back to a yam, but the monocle thought it was still in an altered state.
	Fixes bug whereby Brown could be described as hunched over his work table even when he was out in the Oval.
	Fixes bug such that animals in the kayak would spontaneously leap out (to their presumed watery deaths though this was not narrated).
	Fixes bug to do with reaching objects on the stand in the museum window. This in fact turned out to be the fault of an obscure error in the Inform world model (see http://inform7.com/mantis/view.php?id=1168) but has been hacked around.
	Revises the crypto-lock bucket so that large objects cannot be put into it and large objects constructed inside it will fall out.
	Accepts SE as a synonym to E when leaving Monumental Staircase for High Street, since one player felt the map looked more southeasterly than east at that point.
	Adds a clearer response for why taking the SAND is not a good option.
	Adds better responses for attempts to wash the funnel in the fountain or near a sink.
	Adds better responses to trying to pour and fill things (though it generally rejects these attempts, it at least recognizes what the player is attempting).
	Adds an exception to an overzealous rule that prevented the player from gelling air-like objects (such as a STINK manufactured in the T-inserter).

	*** Additional content:
	Addresses the disgraceful fact that Typoland Fun Fair could not be found in the guidebook.
	Adds "lodgings", public convenience and bus station to the guidebook as well.
	Adds chap-hop variant to the rap if you're wearing the Britishizing goggles.
	Adds responses to PLAY DARTS and PLAY ARKHAM HORROR (or other games aboard the yacht). (You're not actually allowed to do either, but at least we can respond better.)
	Adds response to trying to synthesize ROCK and ROLL.
	Adds responses for E-removing Brown's goatee with and without an animate-enabled letter remover.
	Adds a couple of additional features to Brock's laptop, in case you hack in.
	Adds a special response for looking at your reflection through the monocle.

	*** Typos and cosmetic output errors:
	Corrects a typo in text about the winding footpath.
	Corrects a typo in description of fishing reel.
	Corrects a typo in the synonyms for the shrine object.
	Hacks around a mysterious bug in which the apartment key was reported as "an key" rather than "a key". I am not sure why this was happening to start with.
	Fixes a rare runtime error to do with table rows used to record player goals.
	Fixes a bug such that the player was described as sitting IN the piano rather than on the piano bench in the Fleur d'Or lobby.
	Fixes a bug such that the description of the TROPE COUNT object was not set correctly.
	Fixes a bug whereby looking at Alex's apartment key with the monocle on did not produce any monocle reading.
	Fixes a bug whereby the footpath was referred to without the article if you looked at it through the monocle.
	Fixes a bug that made it possible to cut the kudzu with edgeless objects but get no description when one had done so.
	Fixes bug which misleadingly described the toolkit in the drinks club as empty if you looked at it directly.
	Fixes response to TOPICS command to avoid mentioning quips that are intended to go unmentioned.
	Fixes bug such that the first attempt to TAKE CHARD produced output only suitable for the chard garden, even if you'd manipulated it linguistically first and moved it somewhere else.
	Fixes bug whereby TOES was treated as singular.
	Fixes bug whereby ELECTRICAL EQUIPMENT, GRIT and TERRACING were treated as plural rather than mass nouns.
	Fixes bug whereby certain joke responses to synthesis occurred only for the synthesizer and not for the workshop dais.
	Fixes bug whereby the kitchen sink would be described as still present after you'd converted it.
	Fixes bug whereby objects described as having text would nonetheless appear "blank" in response to READ (rather than examine).
	Fixes bug whereby a joke about eels and congress was supposed to be attached to the accent flipper but by mistake got attached to the equipment shelves, making it incomprehensible. Maybe it would have been anyway, but now it's at least in the right place.
	Fixes bug whereby answering Alex's initial questions with ANDRA as early as possible avoided the banner being printed. This failure ever to display the Inform affiliation is technically a violation of Inform's license.
	Fixes a bug whereby the command PUT POT ON PEDESTAL, referring to the yogurt, could hang the parser for ornate and complicated reasons. Rather than really fix this, we just made the YOGURT be YOGURT, not POT OF YOGURT. Because it wasn't worth it. As penance, added a TOY RUG object for the anagramming gun.

Release 4:
	Adds CORK (ROCK anagrammed), SAGAS (SAG + AS).
	Documents HARD MODE officially.
	Adds a description to the patchy grass in the monument green.
	Corrects a line about going to the university immediately after freeing the teens.
	Clarifies the dead drop goal so that a player who has left the game for a little while can review where they were supposed to be going.
	Fixes a bug whereby it was possible to hang the game by referring to "paper" in the presence of the draft document.
	Fixes a bug whereby typing TAKE ALL while carrying the pill will result in eating the pill (fatally).
	Fixes a bug where looking through the monocle at the tub didn't mention the tube.
	Improves responses to attempting to use the tube on the lock.
	Fixes a bug whereby DIGGING in the sand in the beach still produced a description of finding the funnel, even in hard mode where the funnel is not actually available.
	Fixes a bug whereby in one circumstance the paper drawer would be described as a paper-drawer, but would not accept the hyphenated form as input.
	Adds an extra Amy and an extra May to the repository so that they can be simultaneously produced by the army and by the yam, if need be.
	Fixes an error whereby the player was able to observe the wrong member of the Brock/Dad pair when looking in the surveillance screen.
	Adds synonyms for attempting to climb on the tarpaulin masses in the Tin Hut.
	Adds snarky response to trying to make font t-shits, pink t-shits, or various t-shits. (Mournful sigh.)
	Adds snarky response to trying to remove I from oneself.

Release 3:
	Improves appearance of achievement announcements (line breaks, text styling).
	Sets the ticket-taker pronoun when you first see him, so GIVE TICKET TO HIM doesn't fail.
	Fixes bad line breaking when listening in the presence of the protesters.
	Fixes a typo in the description of turning the cannon.
	Fixes a bug whereby the cannon was takeable.
	Fixes buggy text output when putting the fuel in the car.
	Fixes a bug whereby turning on a car that wasn't properly fueled or oiled gave the wrong indications about its state of readiness.
	Fixes a buggy response to drinking the ale when the bar game had previously been about producing a pea-sized object.
	Fixes a bug whereby it's possible to kiss brock during any conversation, even if he's not in the room, if using the correct command format; and to see this possibility by typing TOPICS.
	Fixes a bug whereby the plexiglas case was portable.
	Fixes a bug whereby anagramming the accent-flipper and then turning it back was sufficient to crush the player under the bulk of the recreated object.
	Fixes a bug whereby only two pi objects could be generated though in theory there should have been more.
	Adds the words bandage, basin, bait, tea, rite, gin, eight, wight, Ross, tart homonym, pot homonym, ant, tan, ten, net, ent, and rattle.
	Fixes a sequence bug whereby giving the mechanic the oil when the car wasn't around would lead to the mechanic notionally fixing something that wasn't there, while consuming the oil permanently. Adds some dialogue for the mechanic, allowing him to hint a little more clearly about the card state as necessary.
	Fixes a bug whereby the jigsaw was supposed to be noisy when turned on, but due to a typo in the rules, wasn't counting. This made hard mode significantly more hard.
	Fixes a bug whereby the modified names of objects in hard mode were not being respected.
	Fixes a bug whereby M-removing Mark after he'd been identified wasn't working properly because the game still thought of his name as "patron".
	Fixes a bug whereby having the broken components in inventory messes with parsing of the big lever on the work dais.
	Revises utilitarian inventory listing to be clearer about what is being worn or carried in the backpack, and whether the backpack is open or closed.
	Makes X ME give information about what you're wearing.
	Improves the response to trying to go north in Crumbling Wall Face.

Release 2:

	Fixes letter-tranformation behavior so that the newly constructed object will have its pronouns set properly (so "IT" will apply to the thing just made).
	Hackily fixes weird bug where, despite the code being evidently correct, "HIGHLIGHT" would activate score notification rather than the highlighting effect.
	Fixes bad instruction in ABOUT text that misdescribed the LOOK CAREFULLY function, and makes LOOK CLOSELY also work, for good measure.
	Fixes bug whereby an answer in the first three questions which included punctuation meant that the answer would not be correctly recognized.
	Fixes a response to cutting things with the sword that says the sword is not edged.
	Fixes a bug whereby carrying the dove into the Cold Storage room resulted in the player immediately and involuntarily sending the patsy prisoner out to face the rifles.
	Fixes a bug whereby gelling Brock in Cold Storage wasn't working.
	Adds a response to attempting to cut the Atlantida pinata.
	Adds to the repository a countertop, a trope count, a hairband, a pineapple ring and a ripening apple.

]

Use scoring.
Use no deprecated features.

Include Scope Caching by Mike Ciul.
Include Large Game Speedup by Andrew Plotkin.

[Include Counterfeit Presentation Details by Emily Short.
Include Counterfeit Character Models by Emily Short.
Include Counterfeit Viewpoint and Narrative Voice by Emily Short.
Include Counterfeit World Model Tweaks by Emily Short.
Include Counterfeit Features of Created Objects by Emily Short.
Include Counterfeit Schedule and Time by Emily Short.
Include Counterfeit Act I Among Sightseers by Emily Short.
Include Counterfeit Act II Among Smugglers by Emily Short.
Include Counterfeit Act III Among Scholars by Emily Short.
Include Counterfeit Act IV Among Policemen by Emily Short.
Include Counterfeit Act V Atlantida Herself by Emily Short.
Include Counterfeit Map Declarations by Emily Short.
Include Counterfeit Memories by Emily Short.
Include Counterfeit Safety Overrides and Disasters by Emily Short.
Include Counterfeit Hashing by Emily Short.
Include Counterfeit Tools by Emily Short.
Include Counterfeit Repository of All Things Possible by Emily Short.
Include Counterfeit Some Rules of Animal Behavior by Emily Short.
Include Counterfeit Person Behavior by Emily Short.
Include Counterfeit Hint System by Emily Short.
Include Counterfeit Tests by Emily Short.]

[•	Volume 1 - Model Adjustments ]
	
Include Counterfeit Presentation Details by Emily Short.

[	•	Book 1 - Presentation Details
		•	Part 1 - Metadata and File Format
			•	Chapter 1 - Bibliographical Data
			•	Chapter 2 - Size Adjustments
			•	Chapter 3 - Undo Handling
		•	Part 2 - Multimedia
			•	Chapter 1 - Images
				•	Section 1 - Compass Rose
				•	Section 2 - Local Maps
			•	Chapter 2 - Sounds
			•	Chapter 3 - Typographical Conveniences
				•	Section 1 - Output Shorthand
				•	Section 2 - Input Editing
				•	Section 3 - Styles
				•	Section 4 - Bolding Help
		•	Part 3 - Status
			•	Section 1 - The Status Line
			•	Section 2 - Score
			•	Section 3 - Assigning and completing tasks
			•	Section 4 - Achievements
			•	Section 5 - Inventory Options
		•	Part 4 - Extras
			•	Section 1 - Footnotes
			•	Section 2 - Hard Mode
			•	Section 3 - About Menu
			•	Section 4 - Resurrection ]
	
Include Counterfeit Character Models by Emily Short.

[	•	Book 2 - Character Models
		•	Section 1 - Some activities on Oneself
		•	Section 2 - Conversation, including Subjects
		•	Section 3 - Conversational Greetings
		•	Section 4 - Facts and Motives
		•	Section 5 - Generic Response Types
		•	Section 6 - Varieties of Person
		•	Section 7 - Moods
		•	Section 8 - Refusals for threaded actions ]
			
Include Counterfeit Viewpoint and Narrative Voice by Emily Short.

[	•	Book 3 - Viewpoint and Narrative Voice
		•	Section 1 - Overriding to First Plural
		•	Section 2 - Making TRD first plural
		•	Section 3 - Making Locksmith first plural
		•	Section 4 - Making Threaded Conversation first plural
		•	Section 5 - Introductions
		•	Section 6 - The THINK verb ]
	
Include Counterfeit World Model Tweaks by Emily Short.

[	•	Book 4 - Default World Model Tweaks
		•	Part 1 - Parsing and Verb Handling
			•	Section 1 - Smarter Parser
			•	Section 2 - Additional Parsing Lines for USE
			•	Section 3 - Miscellaneous Verbs
			•	Section 4 - Miscellaneous Class Vocabulary
			•	Section 5 - Sanity and Accessibility
			•	Section 6 - Fix actions on multiple objects
		•	Part 2 - Senses
			•	Section 1 - Smell and Taste
			•	Section 2 - Loudness
		•	Part 3 - Travel and the Map
			•	Chapter 1 - Moving Between Places
				•	Section 1 - Listing Exits
				•	Section 2 - Finding
				•	Section 3 - Approaches and Describing Distance Travel
			•	Chapter 1 - Moving Between Places
				•	Section 1 - Listing Exits
				•	Section 2 - Finding
				•	Section 3 - Approaches and Describing Distance Travel
				•	Section 4 - Going Back and Going Vaguely
			•	Chapter 2 - Looking Towards Other Areas
				•	Section 1 - Far Away Things and Facades
				•	Section 2 - LOOK AT LOCATION as LOOK
				•	Section 3 - Facing
			•	Chapter 3 - Vehicles and Transport Animals
				•	Section 1 - Animals
				•	Section 2 - Roads
				•	Section 3 - Cars
				•	Section 4 - The View From Inside
			•	Chapter 4 - Special Doors and Barriers
				•	Section 1 - Door Descriptions and Knocking
				•	Section 2 - Propping Doors
				•	Section 3 - Approaching doors (like the security door)
			•	Chapter 5 - Special Kinds of Rooms
				•	Section 1 - Essentials and Non-Drop Zones
				•	Section 2 - Kitchens and Bathrooms
				•	Section 3 - Bedrooms
				•	Section 4 - Desks, Drawers, Offices
				•	Section 5 - Outdoor Rooms and Digging
		•	Part 4 - Special Prop Types
			•	Chapter 1 - Information Sources
				•	Section 1 - Books
				•	Section 2 - Computers
			•	Chapter 2 - Substances
				•	Section 1 - Liquids
				•	Section 2 - Vegetables
			•	Chapter 3 - Useful Items
				•	Section 1 - Holdall
				•	Section 2 - Clothing
				•	Section 3 - Signs
				•	Section 4 - Writing Surfaces
				•	Section 5 - Instruments and Performance
		•	Part 5 - Extra Actions
			•	Section 1 - Swimming and other Seaside Activities
			•	Section 2 - Attacking it with ]

Include Counterfeit Features of Created Objects by Emily Short.

[	•	Book 4 - Features of Created Objects
			•	Section 1 - Legality
			•	Section 2 - Proffering and thing relations
			•	Section 3 - Concreteness
			•	Section 4 - Heft
			•	Section 5 - Length and Strength
			•	Section 6 - Politeness
			•	Section 7 - Edges and Cutting ]

Include Counterfeit Schedule and Time by Emily Short.

[	•	Book 5 - Schedule and Time 
		•	Chapter 1 - Time Model
			•	Section 1 - Speed of Action
			•	Section 2 - Times of Day
			•	Section 3 - Time Tests - Not for release
		•	Chapter 2 - Scenes
			•	Section 1 - Recovering Stowed Objects
			•	Section 2 - Looking for Transport
			•	Section 3 - Missing Slango
			•	Section 4 - Academia
			•	Section 5 - Higgate's Arrest
			•	Section 6 - Pinata Celebration
			•	Section 7 - Fireworks
			•	Section 8 - Tracking Down Brock
			•	Section 9 - Escape
			•	Section 10 - Goodbye
					
•	Volume 2 - The World 
	•	Book 1 - Act I Among Sightseers ]

Include Counterfeit Tutorial by Emily Short.

[		•	Part 1 - Tutorial
			•	Chapter 1 - Barriers and Spaces
			•	Chapter 2 - Tutorial Content
				•	Section 1 - Initial Waking
				•	Section 2 - Tutorial Mode ]

Include Counterfeit Old Town Celebration by Emily Short.
				
[		•	Part 2 - Old Town Celebration
			•	Chapter 1 - Central Park Area
				•	Section 1 - The Park
				•	Section 2 - Midway
				•	Section 3 - Church Forecourt
				•	Section 4 - Heritage Corner
			•	Chapter 2 - Indoor Areas
				•	Section 1 - Cinema
				•	Section 2 - Staircase
				•	Section 3 - The Hostel
				•	Section 4 - The New Church ]

Include Counterfeit Roundabout Access by Emily Short.

[		•	Part 3 - Roundabout Access ]

Include Counterfeit Affluence by Emily Short.

[		•	Part 4 - Affluence
			•	Chapter 1 - City Walls
				•	Section 1 - Old City Walls
				•	Section 2 - The Turret
				•	Section 3 - The Walls Crumble
			•	Chapter 2 - Residential District
				•	Section 1 - Hesychius Street
				•	Section 2 - Webster Court
				•	Section 3 - Chard-Garden
				•	Section 4 - Roget Close
				•	Section 5 - Winding Footpath
				•	Section 6 - The Beach ]

Include Counterfeit Act II Among Smugglers by Emily Short.

[	•	Book 2 - Act II Among Smugglers
		•	Part 1 - Secrets and Concealments
			•	Chapter 1 - The Fish Area
				•	Section 1 - Deep Street
				•	Section 2 - The Aquarium
				•	Section 3 - Lena
				•	Section 4 - The Fish Market
				•	Section 5 - Outdoor Cafe
				•	Section 6 - Tin Hut
				•	Section 7 - The Crawlspace
				•	Section 8 - Docks
				•	Section 9 - Counterfeit Monkey
				•	Section 10 - Customs House
		•	Part 2 - Direct Disobedience
			•	Section 1 - Traffic Circle ]

Include Counterfeit Act III Among Scholars by Emily Short.

[	•	Book 3 - Act III Among Scholars
		•	Part 1 - The James Bond Part of Town
			•	Chapter 1 - Long Street
				•	Section 1 - LS North
				•	Section 2 - The Antiques Dealership
				•	Section 3 - The Fleur d'Or
				•	Section 4 - Drinks Club
		•	Part 2 - Student Quarters
			•	Chapter 1 - University District
				•	Section 1 - Palm Square
				•	Section 2 - Babel Cafe
				•	Section 3 - Apartment Window
				•	Section 4 - Apartment Bathroom
				•	Section 5 - Apartment itself
			•	Chapter 3 - Campus Itself
				•	Section 1 - University Oval
				•	Section 2 - Samuel Johnson Hall
				•	Section 3 - Seminar Room
				•	Section 4 - Department Office
				•	Section 5 - Higgate's Office
				•	Section 6 - Waterstone's Office
				•	Section 7 - Samuel Johnson Basement
				•	Section 8 - Rectification Room
				•	Section 9 - Graduate Student Office
				•	Section 10 - Brown's Lab
				•	Section 11 - Lecture Hall ]
				
Include Counterfeit Act IV Among Policemen by Emily Short.

[	•	Book 4 - Act IV Among Policemen
		•	Part 1 - The Bureau
			•	Chapter 1 - The Bureau and Environs
				•	Section 1 - Tall Street
				•	Section 2 - Abandoned Park
				•	Section 3 - Bus Station
				•	Section 4 - Public Convenience
				•	Section 5 - Rotunda
				•	Section 6 - Tools Exhibit
				•	Section 7 - Antechamber
				•	Section 8 - Hallway and Inaccessible Room
			•	Chapter 2 - Bureau Basement
				•	Section 1 - Foot of Stairs
				•	Section 2 - Basement Middle
				•	Section 3 - Secret Section
				•	Section 4 - Testing Room
				•	Section 5 - Cold Storage ]
				
Include Counterfeit Act V Atlantida Herself by Emily Short.

[	•	Book 5 - Act V Atlantida Herself
		•	Part 1 - In the Depths of the Bureau
			•	Chapter 1 - Storage and Secrets
				•	Section 1 - Display Reloading Room
				•	Section 2 - Wonderland
				•	Section 3 - Equipment Archive
			•	Chapter 2 - Through the ODOR DOOR
				•	Section 1 - Oracle Project
				•	Section 2 - Surveillance Room
				•	Section 3 - Workshop
				•	Section 4 - Generator Room
				•	Section 5 - Tunnel through Chalk
			•	Chapter 3 - Atlantida's Spaces
				•	Section 1 - Personal Apartment
				•	Section 2 - Private Solarium
		•	Part 2 - Final Departure
			•	Chapter 1 - The Seaside
			•	Chapter 2 - The Yacht
				•	Section 1 - Nautical Directions
				•	Section 2 - Sunning Deck
				•	Section 3 - Navigation Area
				•	Section 4 - Crew Cabin
				•	Section 5 - Galley
				•	Section 6 - Brock's Stateroom
				•	Section 7 - Brock's Head
				•	Section 8 - Your Bunk
				•	Section 10 - Your Head
				•	Section 11 - Slango's Bunk
				•	Section 12 - Slango's Head
				•	Section 13 - View from Outdoor Areas ]
				
Include Counterfeit Map Declarations by Emily Short.

[	•	Book 6 - Map Declarations
		•	Chapter 1 - Main Map
		•	Chapter 2 - Inside the Bureau
		•	Chapter 3 - Aboard the Yacht ]

Include Counterfeit Memories by Emily Short.

[•	Volume 3 - Memories
	•	Section 1 - Memory Terms
	•	Section 2 - First Recollection of the Yacht
	•	Section 3 - Childhood
	•	Section 3 - Back Alley
	•	Section 4 - Brock Goodnatured
	•	Section 5 - Brock in Bed
	•	Section 7 - Espionage Memories
	•	Section 8 - Breaking
	•	Section 9 - Protesting Petty Laws
	•	Section 10 - Counterfeit Monkey Clue 
•	Volume 4 - Tools and Substances Affecting Letters ]
	
Include Counterfeit Safety Overrides and Disasters by Emily Short.

[	•	Book 1 - Safety Overrides and Disasters
		•	Section 1 - Dangerous Destruction
		•	Section 2 - Dangerous Construction ]

Include Counterfeit Hashing by Emily Short.
		
[	•	Book 2 - Hashing ]

Include Counterfeit Tools by Emily Short.

[	•	Book 3 - Tools
		•	Chapter 1 - The Letter-Remover
			•	Section 1 - Normal Behavior
		•	Chapter 2 - The Homonym Paddle
		•	Chapter 3 - The T-inserter
		•	Chapter 4 - The Synthesizer
		•	Chapter 5 - The Spinner
			•	Section 1 - Physical Description
			•	Section 2 - Spinning Functionality
		•	Chapter 6 - The Turntable
		•	Chapter 7 - Authentication Scope
		•	Chapter 8 - The Origin Paste
		•	Chapter 9 - The Restoration Gel
			•	Section 1 - Gel and the Rest of the World
			•	Section 2 - Converting nouns
		•	Chapter 10 - The Anagramming Gun
			•	Section 1 - Pistols and Shooting
			•	Section 2 - Anagramming Gun
			•	Section 3 - Loading the Gun
			•	Section 4 - The Anagram Effect of Shooting
		•	Chapter 11 - Restoration gel rifle
		•	Chapter 12 - Britishizing Goggles
		•	Chapter 13 - The Umlaut Punch
		•	Chapter 14 - The Catalan punt volat Needle
		•	Chapter 15 - The Workshop Platform
		•	Chapter 16 - The Cryptolock aka Vowel Rotator ]
		
•	Volume 5 - The Repository of All Things Possible]

Include Counterfeit Repository Major Contents by Emily Short.

[	•	Chapter 1 - Major Contents
		•	Section 1 - The Repository Defined
		•	Section 2 - Kinds of Thing
		•	Section 3 - Individual Items Broken Down By Product
		•	Section 4 - Composite Synthesized Objects 
	•	Chapter 2 - Content Details By Alphabet ]

Include Counterfeit Repository A-L by Emily Short.

[		•	Section 1 - A
		•	Section 2 - B
		•	Section 3 - C
		•	Section 4 - D
		•	Section 5 - E
		•	Section 6 - F through H
		•	Section 7 - I through L ]

Include Counterfeit Repository M-R by Emily Short.
		
[		•	Section 8 - M through 0
		•	Section 9 - Pa
		•	Section 10 - Pe
		•	Section 11 - Pf through Pn
		•	Section 12 - Power Cord
		•	Section 13 - Pr - Pz
		•	Section 14 - Q through R ]

Include Counterfeit Repository S-Z by Emily Short.

[		•	Section 15 - S
		•	Section 16 - Tale
		•	Section 17 - The rest of T
		•	Section 18 - U through Z
		
•	Volume 6 - Animal Actions and Human Conversation ]

Include Counterfeit Some Rules of Animal Behavior by Emily Short.

[	•	Book 1 - Some Rules of Animal Behavior
		•	Section 1 - Lifting Animals
		•	Section 2 - Animal Following
	•	Book 2 - Person Behavior ]

Include Counterfeit Universal Groundwork by Emily Short.

[		•	Part 1 - Universal Groundwork
			•	Section 1 - Asking Directions
			•	Section 2 - Showing Off Essentials
			•	Section 3 - Responses to demonstrations that aren't interesting
			•	Section 4 - Commentary on NPC Possessions
		•	Part 2 - Individual Conversation ]

Include Counterfeit Manufactured People by Emily Short.

[			•	Chapter 1 - Manufactured People
				•	Section 1 - The Mechanic
				•	Section 2 - The Bard
				•	Section 3 - Picard
				•	Section 4 - The Pict
				•	Section 5 - The cad ]

Include Counterfeit Open Access Characters by Emily Short.

[			•	Chapter 2 - Open Access Characters
				•	Section 1 - The Farmer
				•	Section 2 - The Babel Clerk
				•	Section 3 - The Bartender
				•	Section 4 - Kate
				•	Section 5 - The Ticket-taker
				•	Section 6 - The Secretary
				•	Section 7 - The Desk Attendant
				•	Section 8 - Backpacking Girl
				•	Section 9 - Gift Shop Volunteer
				•	Section 10 - The Barker ]

Include Counterfeit Scenic Characters by Emily Short.

[			•	Chapter 3 - Scenic Characters
				•	Section 1 - The Activist
				•	Section 2 - The Barman
				•	Section 3 - Slango
				•	Section 4 - Lena
				•	Section 5 - Professor Brown
				•	Section 6 - Professor Higgate
				•	Section 7 - Professor Waterstone
				•	Section 8 - Brock
				•	Section 9 - Mother
				•	Section 10 - Father
				•	Section 11 - Nexami
				•	Section 12 - The Mean Atlantida
				•	Section 13 - Scene Interlude with Guards
				•	Section 14 - The Nicer Atlantida ]
				
Include Counterfeit Hint System by Emily Short.

[•	Volume 7 - Hint System
	•	Chapter 1 - Hint Vocabulary
	•	Chapter 2 - Hints for Reusable Items and Tools
	•	Chapter 3 - Hints about Useless Scenery
	•	Chapter 4 - Puzzle Hints
		•	Section 1 - Tutorial Area
		•	Section 2 - Endgame ]
		
Include Counterfeit Tests by Emily Short.
		
[•	Volume 8 - Tests
	•	Chapter 1 - Tests - Not for release
		•	Section 1 - Ordinary Tests
		•	Section 2 - Hard Mode Tests
		•	Section 3 - Achievements
	•	Chapter 2 - Special commands - Not for release
		•	Section 1 - Special Access within Play
		•	Section 2 - Listwriters
		•	Section 3 - Verifying Implementation Depth
		•	Section 4 - Construction Tests
		•	Section 5 - Ultratest ]