"Counterfeit Monkey" by Emily Short.


["The alphabet is a system of interchangeable parts. The word form can be surgically revised, instead of rewritten, to become the word farm or firm or fork or fort or from, or with a little more trouble, to become the word pineapple." -- Robert Bringhurst, The Elements of Typographic Style]


[A word about the source release:

This source is provided for its interest value. Not all of the extensions necessary to compile the source are available to the public and it is not the author's intention to have others recompile or revise the game.

There is no guarantee that any of the included code is suitable for any specific purpose, but the author grants users the right to adapt the code they find as they wish for other projects. The author's release of the source does not constitute a promise to support that code or help other authors in adapting it to their own purposes.

Output text remains copyright Emily Short.]


Volume 1 - Model Adjustments
 
Book 1 - Presentation Details

Part 1 - Metadata and File Format

Chapter 1 - Bibliographical Data

Include (- Switches z; -) before "Other Configuration" in "Output.i6t".

The story headline is "A Removal".

The story description is "Anglophone Atlantis has been an independent nation since an April day in 1822, when a well-aimed shot from their depluralizing cannon reduced the British colonizing fleet to one ship.

Since then, Atlantis has been the world's greatest center for linguistic manipulation, designing letter inserters, word synthesizers, the diminutive affixer, and a host of other tools for converting one thing to another. Inventors worldwide pay heavily for that technology, which is where a smuggler and industrial espionage agent such as yourself can really clean up.

Unfortunately, the Bureau of Orthography has taken a serious interest in your activities lately. Your face has been recorded and your cover is blown.

Your remaining assets: about eight more hours of a national holiday that's spreading the police thin; the most inconvenient damn disguise you've ever worn in your life; and one full-alphabet letter remover.

Good luck getting off the island."

[Release along with a file of "Customs Poster" called "Customs-Poster-Big.png", a file of "DCL Advertisement" called "DCLbig.png", a file of "Atlantida Poster" called "Atlantida.png", cover art, the library card, source text, and a website.]

[The EPS file is not included in the game, but was used as an underlayer when the game maps were prepared.]

Index map with EPS file.

Chapter 2 - Size Adjustments

Use ALLOC_CHUNK_SIZE of 64000.
Use MAX_ARRAYS of 60000.
Use MAX_CLASSES of 255.
Use MAX_VERBS of 510.
Use MAX_LABELS of 40000.
Use MAX_ZCODE_SIZE of 40000.
Use MAX_STATIC_DATA of 3000000.
Use MAX_PROP_TABLE_SIZE of 4000000.
Use MAX_INDIV_PROP_TABLE_SIZE of 2000.
Use MAX_STACK_SIZE of  600000.
Use MAX_SYMBOLS of 80000.
Use MAX_EXPRESSION_NODES of 600.
Use MAX_LOCAL_VARIABLES of 128.
Use MAX_OBJECTS of 3000.
Use SYMBOLS_CHUNK_SIZE of 10000.
Use MAX_DICT_ENTRIES of 4500.
Use MAX_OBJ_PROP_COUNT of 128.
Use MAX_NUM_STATIC_STRINGS of 90000.
Use MAX_ACTIONS of 400.
Use MAX_LINESPACE of 15000.

Chapter 3 - Undo Handling

[Some interpreters do not allocate enough memory to allow Counterfeit Monkey to UNDO successfully after a turn has gone wrong. To make matters worse, sometimes UNDO stops working partway through a playthrough when it did work at the beginning.

Ultra Undo is an extension kindly written by Dannii Willis to use external file recording to ensure that UNDO remains available.]

Include version 1/160501 of Ultra Undo by Dannii Willis.

The release number is 6.

Use scoring.
Use no deprecated features.

Include Scope Caching by Mike Ciul.
Include Large Game Speedup by Andrew Plotkin.

[ Startup precomputation ]
Include version 1/160718 of Startup Precomputation by Dannii Willis.
The finalise startup precomputation rule is listed last in the when play begins rules.
The initial conversation rule is listed after the finalise startup precomputation rule in the when play begins rules.
The graphics window construction rule is listed after the finalise startup precomputation rule in the when play begins rules.

Last after starting the virtual machine rule (this is the apologise for a slow start rule):
	say "Counterfeit Monkey is starting. This may take a short moment.";



Volume 2 - Source files inclusion

[•	Volume 1 - Model Adjustments 
	•	Book 1 - Presentation Details
		•	Part 1 - Metadata and File Format
			•	Chapter 1 - Bibliographical Data
			•	Chapter 2 - Size Adjustments
			•	Chapter 3 - Undo Handling ]

Include Multimedia by Counterfeit Monkey.
			
[		•	Part 2 - Multimedia
			•	Chapter 1 - Images
				•	Section 1 - Compass Rose
				•	Section 2 - Local Maps
			•	Chapter 2 - Sounds ]

Include Presentation Details by Counterfeit Monkey.

[			•	Chapter 3 - Typographical Conveniences
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
	
Include Character Models by Counterfeit Monkey.

[	•	Book 2 - Character Models
		•	Section 1 - Some activities on Oneself
		•	Section 2 - Conversation, including Subjects
		•	Section 3 - Conversational Greetings
		•	Section 4 - Facts and Motives
		•	Section 5 - Generic Response Types
		•	Section 6 - Varieties of Person
		•	Section 7 - Moods
		•	Section 8 - Refusals for threaded actions ]
			
Include Viewpoint and Narrative Voice by Counterfeit Monkey.

[	•	Book 3 - Viewpoint and Narrative Voice
		•	Section 1 - Overriding to First Plural
		•	Section 2 - Making TRD first plural
		•	Section 3 - Making Locksmith first plural
		•	Section 4 - Making Threaded Conversation first plural
		•	Section 5 - Introductions
		•	Section 6 - The THINK verb ]
	
Include World Model Tweaks by Counterfeit Monkey.
Include Insides and Outsides by Counterfeit Monkey.
Include Liquids by Counterfeit Monkey.
Include Actions on Multiple Objects by Counterfeit Monkey.

[	•	Book 4 - Default World Model Tweaks
		•	Part 1 - Parsing and Verb Handling
			•	Section 1 - Smarter Parser
			•	Section 2 - Additional Parsing Lines for USE
			•	Section 3 - Miscellaneous Verbs
			•	Section 4 - Miscellaneous Class Vocabulary
			•	Section 5 - Sanity and Accessibility
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
				•	Section 1 - Vegetables
			•	Chapter 3 - Useful Items
				•	Section 1 - Holdall
				•	Section 2 - Clothing
				•	Section 3 - Signs
				•	Section 4 - Writing Surfaces
				•	Section 5 - Instruments and Performance
		•	Part 5 - Extra Actions
			•	Section 1 - Swimming and other Seaside Activities
			•	Section 2 - Attacking it with ]

Include Features of Created Objects by Counterfeit Monkey.

[	•	Book 4 - Features of Created Objects
			•	Section 1 - Legality
			•	Section 2 - Proffering and thing relations
			•	Section 3 - Concreteness
			•	Section 4 - Heft
			•	Section 5 - Length and Strength
			•	Section 6 - Politeness
			•	Section 7 - Edges and Cutting ]

Include Schedule and Time by Counterfeit Monkey.

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
					
•	Volume 2 - The World ]

Include Act I Among Sightseers by Counterfeit Monkey.

[	•	Book 1 - Act I Among Sightseers
		•	Part 1 - Tutorial
			•	Chapter 1 - Barriers and Spaces
			•	Chapter 2 - Tutorial Content
				•	Section 1 - Initial Waking
				•	Section 2 - Tutorial Mode
		•	Part 2 - Old Town Celebration
			•	Chapter 1 - Central Park Area
				•	Section 1 - The Park
				•	Section 2 - Midway
				•	Section 3 - Church Forecourt
				•	Section 4 - Heritage Corner
			•	Chapter 2 - Indoor Areas
				•	Section 1 - Cinema
				•	Section 2 - Staircase
				•	Section 3 - The Hostel
				•	Section 4 - The New Church
		•	Part 3 - Roundabout Access
		•	Part 4 - Affluence
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

Include Act II Among Smugglers by Counterfeit Monkey.

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

Include Act III Among Scholars by Counterfeit Monkey.

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
				
Include Act IV Among Policemen by Counterfeit Monkey.

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
				
Include Act V Atlantida Herself by Counterfeit Monkey.

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
				
Include Map Declarations by Counterfeit Monkey.

[	•	Book 6 - Map Declarations
		•	Chapter 1 - Main Map
		•	Chapter 2 - Inside the Bureau
		•	Chapter 3 - Aboard the Yacht ]

Include Memories by Counterfeit Monkey.

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
	
Include Safety Overrides and Disasters by Counterfeit Monkey.

[	•	Book 1 - Safety Overrides and Disasters
		•	Section 1 - Dangerous Destruction
		•	Section 2 - Dangerous Construction ]

Include Hashing by Counterfeit Monkey.
		
[	•	Book 2 - Hashing ]

Include Tools by Counterfeit Monkey.

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
		•	Chapter 16 - The Cryptolock aka Vowel Rotator 
		
•	Volume 5 - The Repository of All Things Possible ]

Include Repository Major Contents by Counterfeit Monkey.

[	•	Chapter 1 - Major Contents
		•	Section 1 - The Repository Defined
		•	Section 2 - Kinds of Thing
		•	Section 3 - Individual Items Broken Down By Product
		•	Section 4 - Composite Synthesized Objects 
	•	Chapter 2 - Content Details By Alphabet ]

Include Repository Alphabetic Details by Counterfeit Monkey.

[		•	Section 1 - A
		•	Section 2 - B
		•	Section 3 - C
		•	Section 4 - D
		•	Section 5 - E
		•	Section 6 - F through H
		•	Section 7 - I through L
		•	Section 8 - M through 0
		•	Section 9 - Pa
		•	Section 10 - Pe
		•	Section 11 - Pf through Pn
		•	Section 12 - Power Cord
		•	Section 13 - Pr - Pz
		•	Section 14 - Q through R
		•	Section 15 - S
		•	Section 16 - Tale
		•	Section 17 - The rest of T
		•	Section 18 - U through Z ]

Include Animal Actions and Human Conversation by Counterfeit Monkey.

[•	Volume 6 - Animal Actions and Human Conversation
	•	Book 1 - Some Rules of Animal Behavior
		•	Section 1 - Lifting Animals
		•	Section 2 - Animal Following
	•	Book 2 - Person Behavior
		•	Part 1 - Universal Groundwork
			•	Section 1 - Asking Directions
			•	Section 2 - Showing Off Essentials
			•	Section 3 - Responses to demonstrations that aren't interesting
			•	Section 4 - Commentary on NPC Possessions
		•	Part 2 - Individual Conversation 
			•	Chapter 1 - Manufactured People
				•	Section 1 - The Mechanic
				•	Section 2 - The Bard
				•	Section 3 - Picard
				•	Section 4 - The Pict
				•	Section 5 - The cad 
			•	Chapter 2 - Open Access Characters
				•	Section 1 - The Farmer
				•	Section 2 - The Babel Clerk
				•	Section 3 - The Bartender
				•	Section 4 - Kate
				•	Section 5 - The Ticket-taker
				•	Section 6 - The Secretary
				•	Section 7 - The Desk Attendant
				•	Section 8 - Backpacking Girl
				•	Section 9 - Gift Shop Volunteer
				•	Section 10 - The Barker 
			•	Chapter 3 - Scenic Characters
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
				
Include Hint System by Counterfeit Monkey.

[•	Volume 7 - Hint System
	•	Chapter 1 - Hint Vocabulary
	•	Chapter 2 - Hints for Reusable Items and Tools
	•	Chapter 3 - Hints about Useless Scenery
	•	Chapter 4 - Puzzle Hints
		•	Section 1 - Tutorial Area
		•	Section 2 - Endgame ]
		
Include Tests by Counterfeit Monkey.
		
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


[The following source files are included above:

Include Multimedia by Counterfeit Monkey.
Include Presentation Details by Counterfeit Monkey.
Include Character Models by Counterfeit Monkey.
Include Viewpoint and Narrative Voice by Counterfeit Monkey.
Include World Model Tweaks by Counterfeit Monkey.
Include Insides and Outsides by Counterfeit Monkey
Include Liquids by Counterfeit Monkey.
Include Actions on Multiple Objects by Counterfeit Monkey.
Include Features of Created Objects by Counterfeit Monkey.
Include Schedule and Time by Counterfeit Monkey.
Include Act I Among Sightseers by Counterfeit Monkey.
Include Act II Among Smugglers by Counterfeit Monkey.
Include Act III Among Scholars by Counterfeit Monkey.
Include Act IV Among Policemen by Counterfeit Monkey.
Include Act V Atlantida Herself by Counterfeit Monkey.
Include Map Declarations by Counterfeit Monkey.
Include Memories by Counterfeit Monkey.
Include Safety Overrides and Disasters by Counterfeit Monkey.
Include Hashing by Counterfeit Monkey.
Include Tools by Counterfeit Monkey.
Include Repository Major Contents by Counterfeit Monkey.
Include Repository Alphabetic Details by Counterfeit Monkey.
Include Animal Actions and Human Conversation by Counterfeit Monkey.
Include Hint System by Counterfeit Monkey.
Include Tests by Counterfeit Monkey. ]