Tests by Counterfeit Monkey begins here.

Use authorial modesty.


Volume 8 - Tests

Chapter 0 - Skipping breaks

No pauses is a truth-state that varies. No pauses is initially false.

To custom-pause the game:
	if no pauses is false:
		pause the game;
	otherwise:
		say "[line break]Please press SPACE to continue.[paragraph break]"

To custom-wait for any key:
	if no pauses is false:
		wait for any key.

The File of Tests is called "testing".

[Start automated test if File of Tests exists.]

A last after starting the virtual machine rule (this is the automated testing rule):
	if the File of Tests exists:
		say "[first custom style][bracket]Test mode active. No waiting for key presses, deterministic randomness[close bracket][roman type][paragraph break]";
		seed the random-number generator with 1234;
		now no pauses is true;

Understand "pauses on" as on-pausing. On-pausing is an action out of world.
Understand "pauses off" as off-pausing. Off-pausing is an action out of world.

Carry out on-pausing:
	say "[first custom style][bracket]No-pause mode inactive. Will wait for key presses.[close bracket][roman type]";
	now no pauses is false.

Carry out off-pausing:
	say "[first custom style][bracket]No-pause mode active. No waiting for key presses.)[roman type]";
	now no pauses is true.

Understand "random-seed [number]" as reseeding. Reseeding is an action out of world applying to one number.
Carry out reseeding:
	say "[first custom style][bracket]Random-number generator seeded with [the number understood].[close bracket][roman type]";
	seed the random-number generator with the number understood.


Chapter 1 - Tests - Not for release

Section 1 - Ordinary Tests

[First, a set of tests that runs us through the entire game and also verifies that the remove-all-letters achievement can be accomplished.]

[Note that these tests will require you to press the space key a few times]

Test me with "test act1 / test act2 / test act3 / test act4 / test act5".
Test me2 with "yes / andra / test act1 / test act2 / test act3 / test act4 / test act5A".


Test act1 with "tutorial off / test gel / test church/ test hostel / test cinema".
Test act2 with "test chard / test car / test Slango-missed / test origin-getting / test crate-collection / test contraband-fixing / test Slango-refound / test circlewalkout".
Test act3 with "test home-break / test uni / test keycardgetting".
Test act4 with "test rectification / test z-getting / test synthesis / test pinata / test breakin / test wig / test easyinsertion".

[Version where you save Brock, betray Dad, and leave on the roc's back]
Test act5 with "test dadchat / test meetA / test escape1 / test escape3".

[Version where you betray Brock, save Dad, and leave via the bollard and squid]
Test act5A with "test dadchat2 / test meetA / test escape1 / test escape2".

[ Test that undoing game ending actions works: run undotest1, then "y", then undotest2 ]
Test undotest1 with "test act1 / test act2 / test act3 / test rectification / test z-getting / test synthesis / test pinata / test breakin / wave s-remover at plans / wave l-remover at plan / get pan / go to abandoned park / get twig / wave t-remover at twig / go to convenience / put paste on wig / wear wig / go to bus station / x schedule / x shed / remove v from dove / put gel on doe / go to rotunda / s".
Test undotest2 with "put all but pass and invitation in backpack / close backpack / s / show pass to secretary / e / z / z / e / e / d / n / approach camera / w / open pack / test easyinsertion / test act5".

Test leafletgetting with "test act1 / test chard / test car / test Slango-missed / test origin-getting /  test contraband-fixing / test Slango-refound / get out / put paste on car / get out / wave o-remover at olive branch / get rifle / shoot signet / shoot tree / shoot affixer / get leaflet / shoot affixer / shoot signet / g".
Test tolena with "test act1 / test chard / test car / test Slango-missed / test origin-getting / test crate-collection".
Test toSlango with "test act1 / test chard / test car / test Slango-missed / test origin-getting / test crate-collection / test contraband-fixing".
Test tocircle with "test act1 / test chard / test car / test Slango-missed / test origin-getting /  test contraband-fixing / test Slango-refound".
Test toequip with "test act1 / test act2 / test act3 / test act4 / test dadchat".
Test tobureau with "test act1 / test act2 / test act3 / test act4 / test dadchat / test meetA ".
Test tohiggate with "test act1 / test act2 / test act3 / test rectification / test z-getting / test synthesis / go to tall street".

Test tobrock with "test act1 / test act2 / test act3 / test rectification / test z-getting / test synthesis / test pinata / test breakin / test hairpiece".

Test towaterstone with "test act1 / test act2 / test act3 / test rectification / find synthesizer / wave l-remover at clock / put cock in synthesizer /  wave r-remover at pearl / wave l-remover at peal / put pea in synthesizer / turn on synthesizer / get peacock / go to department office".

Test alternateescape with "test act1 / test act2 / test act3 / test act4 / test synthesis / test customs / test brock / wave k-remover at rock / go to precarious / wave k-remover at rock".

Test gel with "n / wave u-remover at mourning dress / score / e / wave x-remover at codex / x code / unlock barrier / set barrier to 305 / go to fair / x wheel / wave w-remover at wheel / get heel / look / score / go to Midway / wave p-remover at apple / get pear / wave e-remover at tube / open tub / put gel on pear / put gel on ale / get apple / wave l-remover at pearl / wave p-remover at pear / e".
Test church with "go to garden / wave h-remover at thicket / get all".
Test hostel with "go to hostel / up / x lock / remember lock / open locker / x girl / show ear to girl / turn dial / x dial / d / talk to attendant / ask attendant about locker / up / put gel on dial / get clock / open locker / get all /  x letter / remember /x plans / wave l-remover at plans / wave s-remover at pans / d / w / w".
Test cinema with "go to cinema / give ticket to ticket-taker / w / get all / open backpack / wear monocle / n / get jotter".
Test chard with "go to Hesychius Street / talk to farmer / ask about sale / buy asparagus / buy lime / wave m-remover at lime / n / ne / get chard / look / sw".
Test car with "go to crumbling wall / get fossil / wave s-remover at fossil / wave f-remover at foil / go to close / put gel on pan / wave l-remover at plans / put pans on spinner / go to beach / get funnel / wave n-remover at funnel /  go to high street / z / go to high street / wave h-remover at chard / wave d-remover at card / put fuel in car / wave b-remover at garbage / talk to mechanic / ask mechanic about car / give oil to mechanic".
Test Slango-missed with "go to counterfeit monkey / e / take off monocle / put all in backpack / close backpack / go to counterfeit monkey / open backpack / y".
Test origin-getting with " go to outdoor / open backpack / look / wave p-remover at spill / get sill / go to counterfeit monkey / talk to barman / ask about slango / challenge parker about the rum / ask about paste / ask how / play / show sill to barman / put gel on sill / wave s-remover at spill / show pill to barman / put gel on pill / wave p-remover at spill / get sill / get paste".
Test crate-collection with "go to tin hut / prop trap door with sill / down / open crate / get all / wave r-remover at crate / get cate / up / get sill".
Test contraband-fixing with "go to aquarium / ask whether / say who / x contraband / wave m-remover at modems / wave s-remover at odes / put gel on ode / wave m-remover at modems / wave s-remover at preamps / wave p-remover at preamp / put paste on ream / put paste on odes / ask whether / encourage lena / put gel on as".
Test Slango-refound with "go to counterfeit monkey / x slango / say who / explain / z /  a trouble / complain / look / e / go to convenience".
Test home-break with "go to oval / go to convenience / wave s-remover at sink / get ink / x hole / look in hole / look at ash through monocle / smell ash / gel ash / get trash / go to rotunda / get bin / go to antiques / x maps / get slangovia map / buy slangovia map / go to drinks club / show legend to bartender / x legend / go to palm square / w / w / s / get problem of adjectives / n / t girlfriend / claim / z / reassure / n / get key / get ring / s / ne / go to babel".
Test uni with "go to palm / unlock gate with ring / go to oval / say no / encourage / ask how consciousness / s / se / n / ask why / ask whether / x printer / open printer / go to graduate student / get sticky / wave y-remover at sticky / open fridge / get cream / wave c-remover at cream / go to language studies department office / put ream in printer / close printer / get draft / w / no / ask how / ask what / ask about seminar / t book / put problem on shelves / go to brown's lab / ask what / ask what / ask how / ask whether / ask what / ask why / ne / s / x sticky / go to oval / wave g-remover at sign / score".
Test keycardgetting with "go to samuel johnson basement / x door / x lock / go to hotel / y / w / order screwdriver / get screwdriver / go to seminar room / gel screwdriver / put key in synthesizer / turn screws / g / open case / put key in synthesizer / find car / put gel on car / wave h-remover at chard / get card / go to seminar room / put card in synthesizer / get crossword /  turn synthesizer on / get keycard / go to samuel johnson basement / swipe card / west".
Test rectification with "put gel on as / wave i-remover at pastis / wave t-remover at pasts / find synthesizer / take all from synthesizer / put pass in synthesizer / put gel on crossword / put word in synthesizer/ turn on synthesizer / get password / x it / go to rectification room / put gel on ear / wave r-remover at pearl / put peal in carton / go to rectification room / turn on machine / x password / type password / select option 3 / put letter-remover in machine / type password / type 4 / put letter-remover in machine / go to basement / put gel on peal / get pearl / wave s-remover at stick / wave k-remover at tick / e / get coat / wave o-remover at coat / put gel on cat / wave a-remover at coat / wave j-remover at jotter / gel otter".
Test z-getting with "go to winding path / x bushes / look under bushes / x kudzu / wave z-remover at kudzu / look under bushes / x shrine / go to roget close / put bin on spinner / get nib".
Test synthesis with "find synthesizer / wave l-remover at clock / put cock in synthesizer /  wave r-remover at pearl / wave l-remover at peal / put pea in synthesizer / turn on synthesizer / get peacock / go to department office / knock on waterstone's door / z / get invitation / gel peacock / gel cock / get clock / put all in backpack / get password".
Test pinata with "put gel on watch / put gel on tic / wave y-remover at sticky / go to tall street / z / z / z / z / go to tall street / look at families / look at figure / z / east / look / listen/ look west / west / listen / blindfold me / blindfold me with swatch / take off swatch / wear swatch as a blindfold / hit figure / hit figure with stick".
Test breakin with "put gel on password / put paste on pass / go to hotel / put all in backpack / get piece / find synthesizer / put piece in synthesizer / get letter-remover / get gel / get pass / get invitation".
Test wig with "wave s-remover at plans / wave l-remover at plan / get pan / go to abandoned park / get twig / wave t-remover at twig / go to convenience / put paste on wig / wear wig / go to bus station / x schedule / x shed / remove v from dove / put gel on doe / go to rotunda / put all but pass and invitation in backpack / close backpack / s / show pass to secretary / e / z / z / e / e / d / n / approach camera / w / open pack".

Test easyinsertion with "gel rock / z / z / gel ink / wave k-remover at sink / put sin in t-inserter / wave s-remover at stint / wave n-remover at tint / wave t-remover at tit / get i / put i in t-inserter / get tit / wave t-remover at tit / put i in t-inserter / get all / e".


Test dadchat with "deny everything / lay out / deny / z / get pea / wave e-remover at pea / z / gel stands / yes / ne / n / e /  s / press button / get gun / n / gel lamb / load gun / shoot mirror / w / shoot odor / open door / n / x fable / gel fable / x charts / look up 1942 in cabinet / look up 1982 in cabinet / e / e / e / switch switch / gel keycard / put card in bucket / take curd / put curd in bucket / switch switch / take cord / w / w / w".
Test dadchat2 with "deny everything / lay out / deny / z / get pea / wave e-remover at pea / z / gel rock / yes / ne / n / e /put pass in punch / get pass / get chord / wave h-remover at chord /  s / press button / get gun / n / gel lamb / load gun / shoot mirror / w / shoot odor / open door / n / x fable / gel fable / x charts / look up 1942 in cabinet / look up 1982 in cabinet ".

Test workdais with "gel paperweight / x paper / x weight / get all / e / test surveillance / down / get counter / up / e / e / look in pane / put gel on pass / put pastis in bucket / look in pane / get pestos / w / plug dais into wall /"

Test meetA with "test workdais / set platform to synthesize / put counter on platform / put weight on platform / turn on lever / get counterweight / go to tunnel / put counterweight on hook / open portcullis / e".

Test escape1 with "x stamp / z / shoot atlantida with anagramming gun / shoot rifle with anagramming gun / gel atlantida / gel astrologer / shoot atlantida with rifle / get atlantida / e / n / yes / x jacks / take jacks / wave s-remover at jacks / go to workshop / put atlantida on platform / set platform to homonym / turn on platform ".

Test escape2 with "go to personal apartment / take jack / e / n / d / x boulders / wave q-remover at squid / wave l-remover at bollard / wave d-remover at board / wave b-remover at boar / get oar / enter kayak / drop all but oar / n / n / score / inventory utilitarian / i / get up / open wardrobe / fore / wear sundress / wear trousers / wear turtleneck / fore / open cabinet / x newspaper".

Test escape3 with "go to personal apartment / take jack / e / n / wave k-remover at rock / ride roc / n / score / inventory utilitarian / i / get up / open wardrobe / fore / wear sundress / wear trousers / wear turtleneck / fore / open cabinet / x newspaper".

Test revival with "put gel on rock / go to galley / put gel on me".


Section 2 - Hard Mode Tests

Test hard with "test hardact1 / test hardact2 / test hardact3 / test hardact4 / test hardact5".


Test hardact1 with "tutorial off / hard / yes / n / e/ wave x-remover at codex / x code / set barrier to 305 / go to heritage corner / wave y-remover at army / wave s-remover at members / get arm / get member / go to Midway / wave p-remover at apple / wave e-remover at tube / open tub / get ale / go to church garden / wave h-remover at thicket / get all / go to hostel / e / up / x lock / show arm to girl / gel lock / open locker / get all from locker / wave l-remover at plans / wave s-remover at pans / go to cinema / give ticket / w / get all /  open pack / wear monocle".

Test hardact2 with "go to patriotic chard-garden / get chard / look / wave s-remover at soil / get oil / go to hesychius / buy yam / go to close / put yam on spinner / go to beach / get sage / wave e-remover at sage / go to roget close / get all from spinner / put sag on spinner / get gas / go to high street / z/ go to high street / wave h-remover at chard / wave d-remover at card / put gas in car / wave b-remover at garbage / talk to mechanic / ask mechanic about car / give oil to mechanic / test slango-missed / test origin-getting / test crate-collection / test contraband-fixing / test slango-refound / test circlewalkout".

Test hardact3 with "test home-break / test harduni / test keyalt".
Test hardact4 with "test hardrectification / test hardsynthesis / test hardpinata / test hardbreakin / test hairpiece / test insertion".
Test hardact5 with "test harddadchat / test hardmeetA / test escape1 / test escape2".

Test harduni with "go to palm / unlock gate with ring / go to oval / say no / encourage / ask how consciousness / s / se / n / ask why / ask whether / x printer / open printer / go to graduate student / open fridge / get cream / wave c-remover at cream / go to language studies department office / put ream in printer / close printer / get draft / w / no / ask how / ask what / ask about seminar / t book / put problem on shelves / go to brown's lab / ask what / ask what / ask how / ask whether / ask what / ask why / ne / s / x sticky / go to oval / wave g-remover at sign / score".

Test hardrectification with "put gel on as / wave i-remover at pastis / wave t-remover at pasts / find synthesizer / take all from synthesizer / put pass in synthesizer / put gel on crossword / put word in synthesizer/ turn on synthesizer / get password / x it / go to rectification room / put gel on watch / wave c-remover at swatch / wave h-remover at swath / put swat in carton / go to rectification room / turn on machine / x password / type password / select 3 / put letter-remover in machine / type password / type 4 / put letter-remover in machine / go to basement / e / get coat / wave o-remover at coat".


Test insertion with "get rock / get hairpiece / put gel on hairpiece / put gel on hair / open backpack / wear monocle / x rock / remove monocle / gel rock / gel ale / get apple / put apple in T-inserter / get applet / put gel on applet / wave p-remover at apple / put ale in T-inserter / put gel on tale / wave p-remover at apple / put ale in T-inserter / get all from T-inserter / wave e-remover at piece / put pic in T-inserter / gel pict / get all / e".

Test keyalt with "go to samuel johnson basement / x door / x lock / go to long street south / get bag / get jigsaw / go to hotel / y / w / show jigsaw to bartender / get jigsaw / go to seminar room / cut case with jigsaw / put key in synthesizer / find car / put gel on car / wave h-remover at chard / get card / go to seminar room / put card in synthesizer / get crossword /  turn synthesizer on / get keycard / go to samuel johnson basement / swipe card / west".

Test hardsynthesis with "find synthesizer / put member in synthesizer / put cat in synthesizer / turn on synthesizer / get camembert / go to department office / knock on waterstone's door / z / get invitation / take off monocle  / get password ".

Test hardpinata with "go to tall street / z / z / z / z / go to tall street / e / se / gel shed / get shred / go to tall street / blindfold me with shred / put gel on password / put gel on word / hit figure with sword".

Test hardbreakin with "put paste on pass / go to hotel / put all in backpack / get piece / find synthesizer / put piece in synthesizer / get letter-remover / get gel / get pass / get invitation / get paste".


Test hairpiece with "find synthesizer / wave c-remover at chair / get hair / put hair in synthesizer / turn on synthesizer / get hairpiece / put paste on hairpiece / drop paste / wear hairpiece / go to bus station / x schedule / x shed / remove v from dove / put gel on doe / go to rotunda / take off monocle / put all in backpack / take pass / close backpack / s / show pass to secretary / e / z / z / e / e / d / n / n / w / open pack".

Test harddadchat with "deny everything / lay out / deny / z / get pea / wave e-remover at pea / z / gel stands / yes / ne / n / e /put pass in punch / get pass / get chord / wave h-remover at chord /  s / press button / get gun / n / gel lamb / load gun / shoot mirror / w / shoot odor / open door / n / x fable / gel fable / x charts / look up 1942 in cabinet / look up 1982 in cabinet ".

Test hardworkdais with "gel paperweight / x paper / x weight / get all / e / down / get counter / up / e / e / look in pane / open station / take balm / shoot balm with gun / put lamb in bucket / look in pane / get oboe / w / plug dais into wall /"

Test hardmeetA with "test hardworkdais / set platform to synthesize / put counter on platform / put weight on platform / turn on lever / get counterweight / go to tunnel / put counterweight on hook / open portcullis / e".


Section 3 - Achievements

[These test getting specific achievements (other than the "finished tutorial" achievement, the two achievements for finishing the game in easy and hard mode, and the achievement for finishing the game with all the letters removed, which is built into the standard process).]

Test quagmire with "tutorial off / test act1 / test act2 / test act3 / wave t-remover at letter / go to roget close / put leer on pedestal / get reel / go to drinks club / show reel to bartender / go to screening room / n / put reel in projector / turn projector on".

Test archaeologist with "tutorial off / test act1 / test act2 / test act3 / test rectification / test z-getting / go to monument green / dig in ground / get dog / go to roget close / put dog on pedestal / get god / n / put god on shrine".

Test secret-passage with "tutorial off / test act1 / test act2 / test act3 / go to podium / get page / test act4 / test dadchat / gel paperweight / x paper / x weight / get all / e / down / get counter / up / e / e / look in pane / put rock in bucket / get ruck / w / plug dais into wall / set platform to synthesize / put pass on platform / wave p-remover at page / put age on platform / turn on platform / set platform to homonym / turn on platform / x passage / enter passage".

Test buccaneer with "tutorial off / test act1 / test act2 / test act3 / go to public convenience / squeeze dispenser / wave a-remover at soap / get sop / go to piano / get piece / wave e-remover at piece / go to synthesizer / get screws / go to oval / get sin / test act4toT / put sop in t-inserter / get stop / e / test dadchat / test workdais / shoot stop with gun / go to workshop / wave c-remover at pic / gel cate / wave c-remover at crate / put pi on platform / put rate on platform / set platform to synthesize / turn on platform / put screws on platform / show spot to pirate / pirate, enter platform / wave s-remover at screws / turn on platform / show spot to pirate crew".

Test curate with "tutorial off / test act1 / test act2 / test act3 / test rectification / gel password / go to synthesizer / wave p-remover at pass / put ass in synthesizer / wave l-remover at clock / put cock in synthesizer / turn on synthesizer / get cassock / wear cassock / go to new church / put cross on altar".

Test poe with "tutorial off / test act1 / test act2 / test act3 / go to piano / get piece / wave e-remover at piece / test rectification / test z-getting / go to monumental staircase / wave t-remover at poster / wave r-remover at poser / get pose / go to oval / get sin / test synthesis / test pinata / test breakin / test wig / gel rock / z / z / get sign / wave g-remover at sign / put sin in t-inserter / wave s-remover at stint / wave n-remover at tint / wave t-remover at tit / get i / put i in t-inserter / get tit / wave t-remover at tit / put i in t-inserter / get all / e / test dadchat / go to t-inserter / put pic in t-inserter / shoot silver chain with gun / wave s-remover at pose / show ravens to Poe".

Test writing with "test act1 / test act2 / test act3 / test act4 / test dadchat / test workdais / e / gel it / wave s-remover at sink / gel snap / wave l-remover at plans / wave s-remover at pans / get pan / put pan in bucket / get pen / put nib in pen / put ink in pen / write hello on paper / x paper".

Test propp with "test act1 / test act2 / test act3 / test act4toT / wave p-remover at apple / put ale in t-inserter".

Test secularist with "tutorial off / test gel / test hostel / go to cinema / buy ticket / test cinema / test act2 / test act3 / test act4 / test act5".

Test act4toT with "test rectification / test z-getting / test synthesis / test pinata / test breakin / test wig / gel rock / z / z / get sign / wave g-remover at sign / put sin in t-inserter / wave s-remover at stint / wave n-remover at tint / wave t-remover at tit / get i / put i in t-inserter / get tit / wave t-remover at tit / put i in t-inserter / get all"

Chapter 2 - Special commands - Not for release

Section 1 - Special Access within Play

[Understand "findengeo" as engeo-cheating. Engeo-cheating is an action applying to nothing. Carry out engeo-cheating: now the player is in Outdoor Cafe; try Nexami saying hello to the player. ]


[This section provides for materials or access that might be useful during play.]

Understand "autoupgrade" as autoupgrading. Autoupgrading is an action applying to nothing.

Carry out autoupgrading:
	now the letter-remover is creature-enabled;
	now the letter-remover is upgraded.


Understand "placefather" as placing father. Placing father is an action applying to nothing.
Carry out placing father:
	now father is in Bureau Basement Secret Section.


Understand "summon" as animal-summoning. Animal-summoning is an action out of world.

Carry out animal-summoning:
	now every animal is in the location.

Report animal-summoning:
	try looking.


[Since it takes several steps to get a working car, sometimes we want to be able to test without going through that rigamarole.]

Understand "car-acquire" as car-acquiring. Car-acquiring is an action out of world.

Carry out car-acquiring:
	let auto be a random car in the repository;
	move auto to the location;
	now the auto is fueled;
	now the auto is operational.

Report car-acquiring:
	try looking.

[And to help us test the scene with Slango without having to go through the whole work of summoning him.]

Understand "deparker" as deparkering. Deparkering is an action out of world.

Carry out deparkering:
	move Slango to the location;
	assign "Finally find Slango at Counterfeit Monkey" at Counterfeit monkey;
	now the barman is nowhere.

[Allowing us to test some late-game ]

Understand "unmonkey" as unmonkeying. Unmonkeying is an action out of world.

Carry out unmonkeying:
	now Slango is seen;
	now the Counterfeit Monkey is visited. [This turns off certain movement restrictions that prevent the player from visiting most of the map when the player hasn't been to the Counterfeit Monkey first.]

[The Consulting-Slango scene can come back and bite us again if we skip to the end of the game and meet Slango for the first time, thus restricting our movement.]

Understand "unslango" as unslangoing. Unslangoing is an action out of world.

Carry out unslangoing:
	assign "Finally find Slango at Counterfeit Monkey" at Counterfeit monkey;
	complete "Finally find Slango at Counterfeit Monkey".


[For testing what happens during combat attempts with Atlantida, without having to play through to this point ourselves.]
Establishing longs is an action out of world. Understand "establish" as establishing longs.

Carry out establishing longs:
	now the restoration-gel rifle is carried by atlantida-woman;
	now the foil is not proffered by anything;
	now the fossil proffers the foil;
	now the sill is not proffered by anything;
	now the spill proffers the sill;
	now the track is not proffered by anything;
	now Brock proffers the track;
	now the warm rods are not proffered by anything;
	now the sword proffers the warm rods;
	now the army proffers the warm rods;
	now the crosspiece is not proffered by anything;
	now the cross proffers the crosspiece;
	now the piece proffers the crosspiece;

[Multi-step test with writing]

Understand "shutoffice" as shutting the office. Shutting the office is an action out of world. Carry out shutting the office: shut the office.

[Supply power on the programmable dais for testing purposes]

Understand "powerup" as supplying power. Supplying power is an action out of world.

Carry out supplying power:
	now the boiler is switched on;
	if a massive plug is free:
		move the power cord to the Workshop;
		repeat with the target plug running through massive plugs:
			if nothing is plugged into the dais socket:
				now the target plug is plugged into the dais socket;
			otherwise:
				now the target plug is plugged into the wall socket.

Section 2 - Listwriters

[ This section identifies objects conforming to specifications. This is a way to test for a given open-ended puzzle (e.g., one looking for the player to wear a blindfold) whether the list of solutions is reasonable and conforms to expectation. ]

Understand "list fakes" as listing fakes. Listing fakes is an action out of world. Carry out listing fakes:
	let N be the list of fake things;
	sort N; say "[N]".

Understand "list abstracts" as listing abstracts. Listing Abstracts is an action out of world.

Carry out listing abstracts:
	let N be the list of r-abstract things;
	sort N;
	say "[N]".

Understand "list clothes" as listing clothes. Listing clothes is an action out of world.

Carry out listing clothes:
	let N be the list of wearable things;
	sort N;
	say "[N]".

Understand "list blindfolds" as listing blindfolds. Listing blindfolds is an action out of world.

Definition: a thing is lightweight if the heft of it is 1.

Carry out listing blindfolds:
	let N be the list of wearable floppy lightweight things;
	sort N;
	say "[N]".


Understand "list longs" as listing longs. Listing longs is an action out of world.

Carry out listing longs:
	let N be the list of long things;
	sort N;
	say "[N]".

After printing the name of something (called N) while listing longs:
	if N is floppy:
		say " (floppy)";
	otherwise:
		say " (strong)"

Understand "list noisy" as listing noisy.  Listing noisy is an action out of world.

Carry out listing noisy:
	let N be the list of noisy things;
	sort N;
	say "[N]".

Understand "list cat 5" as listing category five.  Listing category five is an action out of world.

Carry out listing category five:
	let N be the list of edible things which are not vegetables;
	sort N;
	say "[N]".

Understand "list liquid" as listing liquid.  Listing liquid is an action out of world.

Carry out listing liquid:
	let N be the list of fluid things;
	sort N;
	say "[N]".

Understand "list edible" as listing edible.  Listing edible is an action out of world.

Carry out listing edible:
	let N be the list of edible things;
	sort N;
	say "[N]".

Understand "list uncontained" as listing uncontained.  Listing uncontained is an action out of world.

Carry out listing uncontained:
	let N be the list of uncontained fluid things;
	sort N;
	say "[N]".

Understand "list components" as listing components. Listing components is an action out of world.

Carry out listing components:
	repeat with item running through synthesizable things:
		say "[item][line break]";

Understand "list plurals" as listing plurals. Listing plurals is an action out of world.

Definition: a thing is movable:
	if it is scenery:
		no;
	if it is fixed in place:
		no;
	if it is part of something:
		no;
	if it is a person:
		no;
	yes.

Carry out listing plurals:
	let N be the list of plural-named things;
	sort N;
	say "[N][line break]".

Understand "remove plurals" as removing plurals. Removing plurals is an action out of world.

Carry out removing plurals:
	repeat with N running through plural-named things:
		try letter-removing "s" from N.

Understand "list animates" as listing animates. Listing animates is an action out of world.

Carry out listing animates:
	say "[list of people]".


Understand "list size [number]" as listing size. Listing size is an action out of world applying to one number.

Carry out listing size:
	repeat with item running through things:
		if the heft of the item is the number understood:
			say "[item][line break]";

[counting contents.]

[A thing can be either counted or uncounted.

When play begins:
	say "The full list is [list of things in the repository].";
	let C be 0;
	now all things are uncounted;
	let X-name be text;
	let Y-name be text;
	repeat with X running through things in the repository:
		let X-name be the printed name of X;
		if X is uncounted:
			increase C by 1;
			now X is counted;
			say "Distinct name: [X-name].";
			repeat with Y running through things in the repository:
				if Y is uncounted:
					let Y-name be the printed name of Y;
					if X-name is Y-name:
						now Y is counted;
	say "I believe that makes [C] items with distinct names." ]


[Understand "list all sizes" as listing all sizes. Listing all sizes is an action out of world.

Carry out listing all sizes:
	say "Size 0 (abstracts and the totally weightless):[line break]";
	try listing size 0;
	paragraph break;
	say "Size 1:[line break]";
	try listing size 1;
	paragraph break;
	say "Size 2:[line break]";
	try listing size 2;
	paragraph break;
	say "Size 3:[line break]";
	try listing size 3;
	paragraph break;
	say "Size 4:[line break]";
	try listing size 4;
	paragraph break;
	say "Size 5:[line break]";
	try listing size 5;
	paragraph break;
	say "Size 6:[line break]";
	try listing size 6;
	paragraph break;
	say "Size 7:[line break]";
	try listing size 7;
	paragraph break;
	say "Size 8:[line break]";
	try listing size 8;
	paragraph break;
	say "Size 9 and up (large enough to crush the player on creation):[line break]";
	repeat with N running from 9 to 20:
		try listing size N;
	paragraph break;]

[ The mentioning relation broke horribly when porting from 6G60 because some quips had locations listed as mentioned. The compiler seemed to accept it, but instead a long list of random things were suddenly mentioned by the quip. Use this to test if it happens again. ]

Understand "list mentions" as listing-subjects. Listing-subjects is an action out of world. Carry out listing-subjects:
		show relation mentioning relation.


Section 3 - Verifying Implementation Depth

[These verbs run through lots of objects and systematically works them over to check for the full implementation of a certain feature.]

Understand "check indoors" as checking indoors.
	Checking indoors is an action out of world.

Carry out checking indoors:
	repeat with item running through rooms:
		say "[item]: ";
		if item is indoors:
			say "indoors[line break]";
		if item is outdoors:
			say "outdoors[line break]".

[Object response tests will do this, but as it's particularly common to add an object to the repository and then come back and do the description later, it's useful to have a shorthand way to look for which objects have slipped through the cracks and still need a fresh description.]

Understand "check repository descriptions" as checking repository descriptions. Checking repository descriptions is an action out of world.

Carry out checking repository descriptions:
	repeat with item running through things in the repository:
		if the description of the item is "":
			say "[item][line break]";


[In case we want to check how people will greet the player:]

Understand "all-greet" as testing greetings. Testing greetings is an action applying to nothing.

Carry out testing greetings:
	repeat with item running through people who are not animals:
		move the item to the location;
		try the item saying hello to the player.

[This goes through locations and tests how well they describe the surroundings if the player types LOOK (DIRECTION). This is partly an act of world-building self-discipline: we never want there to be streets without buildings fronting them, even if those buildings aren't important and aren't part of the primary description. There should always be *something* there to reward playful investigation.]
Understand "pound face" as testing facing. Testing facing is an action out of world.

Carry out testing facing:
	repeat with item running through rooms:
		move the player to item;
		carry out the caching scope activity with player;
		say "[line break] north: ";
		try facing north;
		say "[line break] northwest: ";
		try facing northwest;
		say "[line break] west: ";
		try facing west;
		say "[line break] southwest: ";
		try facing southwest;
		say "[line break] south: ";
		try facing south;
		say "[line break] southeast: ";
		try facing southeast;
		say "[line break] east: ";
		try facing east;
		say "[line break] northeast: ";
		try facing northeast;
		say "[line break] down: ";
		try facing down;
		say "[line break] up: ";
		try facing up;
		say "[line break] in: ";
		try facing inside;
		say "[line break] out: ";
		try facing outside.


Understand "pound insides" and "pound outsides" as testing insides. Testing insides is an action out of world.

Carry out testing insides:
	try unmonkeying;
	try deparkering;
	repeat with item running through rooms:
		say "(Testing insides and outsides of [item])";
		move player to item;
		carry out the caching scope activity with player;
		say "> GO IN";
		let way be in-direction of item;
		if way is a direction:
			let R be the room the way from location;
			if R is a room:
				say "[line break](Going inside from [the item] will take the player [way] to [R])[paragraph break]";
			otherwise:
				try going inside;
		otherwise:
			say "[line break]([Item] has no in-direction property)";
			try going inside;
		say "> LOOK IN";
		try facing inside;
		say "> GO OUT";
		let way be out-direction of item;
		if way is a direction:
			let R be the room the way from location;
			if R is a room:
				say "[line break](Going outside from [the item] will take the player [way] to [R])[paragraph break]";
			otherwise:
				try going outside;
		otherwise:
			say "[line break]([Item] has no out-direction property)";
			if item is dead-end:
				let way be a random exit-listable direction;
				say "[line break](but because there is only one way out of here, going out will take us [way] to [the room way from location])[paragraph break]";
			otherwise:
				try going outside;
		say "> LOOK OUT";
		try facing outside.



Understand "pound all-lists" as pounding all-lists. Pounding all-lists is an action out of world.

Carry out pounding all-lists:
	let L be a list of things;
	let all-list be { tomcat, apple, stick, cream };
	let L be the list of containers;
	remove the repository from L;
	remove the backup-repository from L;
	remove quip-repository from L;
	add the list of supporters to L;
	add the list of fluid things to L;
	repeat through the Table of snarky supporters:
		add support entry to L;
	repeat through the Table of unsuitable supporters:
		add support entry to L;
	repeat through the Table of unsuitable containers:
		add box entry to L;
	repeat through the Table of snarky containers:
		add box entry to L;
	sort L in printed name order; [remove any duplicates in the list]
	let last be nothing;
	let L2 be a list of things;
	let N be text;
	let D be 0;
	repeat with obj running through L:
		let N1 be printed name of obj;
		let D1 be the number of words in description of obj;
	[checking the printed name and the number of words in description seems to be the best way to see if two objects are identical instances of the same kind, and only fails for the tent(s) because of the random description.]
		unless obj is last or (N1 is N and D1 is D):
			add obj to L2;
			now last is obj;
			now N is N1;
			now D is D1;
	now L is L2;
	repeat with item running through L:
		now the second noun is item;
		say "[bold type][The item][roman type][line break]";
		if item is enclosed by a room (called R):
			unless R is location:
				move player to R, without printing a room description;
				say "(moving to [the R])[line break]";
		otherwise:
			unless item is a backdrop:
				move item to location;
				say "(moving [the item] to [the location])[line break]";
			otherwise:
				now item is everywhere;
		repeat with obj running through all-list:
			move obj to player;
		say "(examine [the item])";
		try examining the item;
		say "(remove all from [the item])";
		if item is empty:
			try empty-removing item;
		otherwise:
			let H be a list of things;
			repeat with obj running through things held by item:
				unless obj is scenery or obj is part of item:
					add obj to H;
			alter the multiple object list to H;
			follow the stop removing error list rule;
			repeat with obj running through multiple object list:
				say "[obj]: [run paragraph on]";
				try removing obj from item;
			if multiple object list is empty:
				say "That can't contain things.";
		say "(put all on [item])";
		repeat with obj running through all-list:
			move obj to player;
		alter the multiple object list to all-list;
		follow the stop putting error list rule;
		repeat with obj running through the multiple object list:
			say "[obj]: [run paragraph on]";
			try putting obj on item;
		say "(put all in [item])";
		alter the multiple object list to all-list;
		follow the stop inserting error list rule;
		repeat with obj running through the multiple object list:
			say "[obj]: [run paragraph on]";
			try inserting obj into item;
		move spill to location;
		say "(put spill in [item])";
		try inserting spill into item;
		say "(put spill on [item])";
		try putting spill on item;
		move apple to player;
		say "(put apple on [item])";
		try putting the apple on item;
		say "(put apple in [item])";
		try inserting the apple into item;
		say "(remove apple from [item])";
		try removing apple from item;

[Object responses for everything in the repository.]

Include Object Response Tests by Juhana Leinonen.

Table of analyzing actions (continued)
testing rule
test building rule
test swiping rule
test recycling rule
test launching rule
test tuning rule
test fueling it with rule
test fueling it with two rule
test rebooting rule
test typing rule
test digging in rule
test sitting on rule
test lying on rule
test standing up on rule
test diving into rule
test mounting rule
test washing rule
test flushing rule
test smiling at rule
test frowning at rule
test laughing at rule
test saying hello to rule
test saying goodbye to rule
test waving to rule
test reading rule
test erasing rule
test performing rule
test performing vaguely rule
test blindfolding rule
test blindfold-wearing rule
test poking head rule

This is the test poking head rule:
	say "[italic type] poking head through [the noun]: [roman type]";
	try poking head through the noun.

This is the test blindfold-wearing rule:
	say "[italic type] blindfolding oneself with [the noun]: [roman type]";
	try blindfold-wearing the noun.

This is the test blindfolding rule:
	let target be a random marked-visible person;
	say "[italic type] blindfolding [target] with [the noun]: [roman type]";
	try blindfolding the target with the noun.

This is the test performing vaguely rule:
	say "[italic type] performing vaguely on [the noun]: [roman type]";
	try performing vaguely on the noun.

This is the test performing rule:
	say "[italic type] performing [piece] on [the noun]: [roman type]";
	try performing piece on the noun.

This is the test erasing rule:
	say "[italic type] erasing [the noun]: [roman type]";
	try erasing the noun.

This is the test reading rule:
	say "[italic type] reading [the noun]: [roman type]";
	try reading the noun.

This is the test flushing rule:
	say "[italic type] flushing [the noun]: [roman type]";
	try flushing the noun.

This is the test tuning rule:
	say "[italic type] tuning [the noun]: [roman type]";
	try tuning the noun.

This is the test waving to rule:
	say "[italic type] waving to [the noun]: [roman type]";
	try waving to the noun.

This is the test building rule:
	say "[italic type] building [the noun]: [roman type]";
	try building the noun.

This is the test swiping rule:
	say "[italic type] swiping [the noun]: [roman type]";
	try swiping the noun.

This is the test recycling rule:
	say "[italic type] recycling [the noun]: [roman type]";
	try recycling the noun.

This is the test launching rule:
	say "[italic type] launching [the noun]: [roman type]";
	try launching the noun.

This is the test fueling it with rule:
	say "[italic type] fueling [the noun] with the [fuel]: [roman type]";
	try fueling the noun with fuel.

This is the test fueling it with two rule:
	let supposed car be a random touchable thing;
	say "[italic type] fueling [the supposed car] with [the noun]: [roman type]";
	try fueling the supposed car with the noun.

This is the test rebooting rule:
	say "[italic type]rebooting [the noun]: [roman type]";
	try rebooting the noun.

This is the test typing rule:
	say "[italic type]typing 'fish' on [the noun]: [roman type]";
	try typing "fish" on the noun.

This is the test sitting on rule:
	say "[italic type]sitting on [the noun]: [roman type]";
	try sitting on the noun.

This is the test lying on rule:
	say "[italic type]lying on [the noun]: [roman type]";
	try lying on the noun.

This is the test standing up on rule:
	say "[italic type]standing up on [the noun]: [roman type]";
	try standing up on the noun.

This is the test digging in rule:
	say "[italic type]digging in [the noun]: [roman type]";
	try digging in the noun.

This is the test diving into rule:
	say "[italic type]diving into [the noun]: [roman type]";
	try diving into the noun.

This is the test mounting rule:
	say "[italic type]mounting [the noun]: [roman type]";
	try mounting the noun.

This is the test washing rule:
	say "[italic type]washing [the noun]: [roman type]";
	try washing the noun.

This is the test smiling at rule:
	say "[italic type]smiling at [the noun]: [roman type]";
	try smiling at the noun.

This is the test frowning at rule:
	say "[italic type]frowning at [the noun]: [roman type]";
	try frowning at the noun.

This is the test laughing at rule:
	say "[italic type]laughing at [the noun]: [roman type]";
	try laughing at the noun.

This is the test saying hello to rule:
	say "[italic type]saying hello to [the noun]: [roman type]";
	try saying hello to the noun.

This is the test saying goodbye to rule:
	say "[italic type]saying goodbye to [the noun]: [roman type]";
	try saying goodbye to the noun.

[Running this one is a major, major undertaking, producing thousands of lines of transcript output to go through. But it turned up a huge number of small bugs and implementation gaps as well: items that weren't marked plural when they should have been, animals that weren't set to the correct class, objects that should have a strong smell or sound associated but didn't.

Other errors discovered this way:

	— >KISS MOTHER originally produced the response "Tempting, but no,"
	— the Gengis Khan-style Tartar smelled like deodorant
	— so did the Victorian papa and papas
	— PUSH TOTS NORTH had a come-back about how pushing people in directions only worked on small children
	— the tamale description sort of hinted that the contents might be interesting, then didn't react if you searched it
	— all sorts of things could be waved that weren't really wave-worthy
	— the stopcock and petcock were both described as not something we can open/close, when they are in fact forms of valve
	— the rock ballad wasn't marked as abstract, so you could wave it and rub it and so on
	— it was possible to "play" other items like an instrument any time the oboe was in the same location
]

Understand "pound repository" as testing repository. Testing repository is an action applying to nothing.

Carry out testing repository:
	move the repository to the location;
	now the repository is open;
	now every synthesizable thing is in the repository;
	now Authenticator is nowhere;
	repeat with item running through things in the repository:
		try object-analyzing the item.

[showing]

Understand "pound showing" as testing showing. Testing showing is an action applying to nothing.

The test entering rule does nothing when the action name part of current action is the object-analyzing action. [because if you get in and out of things, then the animals will follow and the object loop going through the repository will be corrupted]

Carry out testing showing:
	move the repository to the location;
	now the repository is open;
	now every synthesizable thing is in the repository;
	now every person is in the location;
	repeat with item running through things in the repository:
		repeat with interviewee running through people who are not animals:
			say "[italic type]showing [item] to [the interviewee]: [roman type]";
			try showing the item to the interviewee.

[We use this to test whether appropriate rules are being followed about what can be worn simultaneously with what else.]

Understand "cycle wardrobe" as cycling wardrobe. Cycling wardrobe is an action out of world.

Carry out cycling wardrobe:
	repeat with item running through wearable things:
		move the item to the player;
		try wearing the item.

Understand "pound bold descriptions" as testing boldness.

Testing boldness is an action applying to nothing.

Carry out testing boldness:
	now boldening is true;
	repeat with destination running through rooms:
		move player to destination.

Section 4 - Construction Tests

[ This section is of chiefly archaeological interest.

These commands were written not to verify behavior already in the game but to help identify things that could or should be implemented. 'list sources' identifies portable in-game objects that ought to be analyzed for their word derivatives.

'pound anagrams' helped to work out which objects in the game were anagrams of which others, and is very slow because it was implemented before the hash code was in; but it only needed to run once. This was more of a viability test than anything else.

'list syntheses' was to help with brainstorming about what synthetic objects should be made, though it does not account for objects with interleaved letters (again, because it was implemented before the hash code was added).

]

Understand "list syntheses" as listing syntheses. Listing syntheses is an action out of world.



Carry out listing syntheses:
	repeat with item running through fake things:
		repeat with second item running through fake things:
			say "[item][second item][line break]";
		say line break.

Understand "pound anagrams" as testing anagrams. Testing anagrams is an action applying to nothing.

Carry out testing anagrams:
	repeat with item running through synthesizable things:
		hash item;
		say " - [item][line break]";

To hash (N - a thing):
	let anagram key be a list of text;
	let starting form be "[n]";
	let count be the number of characters in starting form;
	repeat with i running from 1 to count:
		add "[character number i in starting form]" to anagram key;
	sort anagram key;
	say anagram key.

Understand "list sources" as listing sources. Listing sources is an action applying to nothing.

Carry out listing sources:
	repeat with item running through portable things which are not off-stage:
		if the item is not part of something:
			say "[item][line break]".

Understand "list easy outcomes" as listing easy outcomes. Listing easy outcomes is an action applying to nothing.

Carry out listing easy outcomes:
	repeat with item running through synthesizable things:
		say "[item]: [encryption of item][line break]".

Understand "list hard outcomes" as listing hard outcomes. Listing hard outcomes is an action applying to nothing.

Carry out listing hard outcomes:
	repeat with item running through synthesizable things:
		say "[item]: [hard encryption of item][line break]".

Understand "list back outcomes" as listing back outcomes. Listing back outcomes is an action applying to nothing.

Carry out listing back outcomes:
	repeat with item running through synthesizable things:
		say "[item]: [back encryption of item][line break]".



Understand "list all outcomes" as listing all outcomes. Listing all outcomes is an action applying to nothing.

Carry out listing all outcomes:
	repeat with item running through synthesizable things:
		say "[item]: [encryption of item], [back encryption of item], [hard encryption of item], [back hard encryption of item][line break]".


[The list length thing was added because I was investigating a different puzzle style -- one in which the player needed to make a word-object with specific characteristics such as length and consonant/vowel pattern, which would then function as a key in a particular type of Bureau lock. This turned out to be hard to construct and boring to solve, so I scrapped the concept.]

Understand "list length [number]" as listing lengths. Listing lengths is an action applying to one number.

Carry out listing lengths:
	repeat with item running through portable things:
		let starting form be "[item]";
		let N be the number of characters in starting form;
		if N is the number understood:
			say "[item][line break]".

Understand "list anagram probables" as listing anagram probables. Listing anagram probables is an action applying to nothing.

Carry out listing anagram probables:
	repeat with item running through portable things which are not fixed in place:
		if item is in the quip-repository:
			next;
		if item is part of something which is fixed in place:
			next;
		if item is a person:
			next;
		let starting form be "[item]";
		let N be the number of characters in starting form;
		if N is greater than 8:
			say "[item][line break]".

Section 5 - Ultratest

After reading a command:
	if the player's command includes "test":
		replace the matched text with "utest".

Understand "ultratest [text]" as ultratesting. Ultratesting is an action out of world applying to one topic.

Understand the command "utest" and "ultra-test" as "ultratest".

Carry out ultratesting a topic:
	if the topic understood is a topic listed in the table of ultratests:
		if there is a setting entry:
			say "Moving to [setting entry].";
			move the player to the setting entry, without printing a room description;
		if there is a stuff entry:
			repeat with item running through stuff entry:
				say "Procuring [the item].";
				move item to the player;
	call test.

To call test:
(-
	wn = 2;
	special_word = NextWordStopped();
	TestScriptSub();
-)

Understand "hashtest" as hashtesting. Hashtesting is an action out of world.

Carry out hashtesting:
	repeat with item running through things which are not facts:
		unless item is a quip:
			let T be "[item]";
			let H be the letter-hash of T;
			if the hash code of the item is H:
				say "Hashtest for [item] passed![line break]";
			else:
				say "ERROR:Hashtest for [item] FAILED![line break]Hash was [hash code of item], should have been [H]![line break]";
			now the item is unseen;
	repeat with item running through rooms:
		let T be "[item]";
		let H be the letter-hash of T;
		if the hash code of the item is H:
			say "Hashtest for [item] passed![line break]";
		else:
			say "ERROR:Hashtest for [item] FAILED![line break]Hash was [hash code of item], should have been [H]![line break]".


Tests ends here.