Counterfeit Presentation Details by Emily Short begins here.

Use authorial modesty.

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
Use MAX_NUM_STATIC_STRINGS of 80000.
Use MAX_ACTIONS of 400.
Use MAX_LINESPACE of 15000.

Chapter 3 - Undo Handling

[Some interpreters do not allocate enough memory to allow Counterfeit Monkey to UNDO successfully after a turn has gone wrong. To make matters worse, sometimes UNDO stops working partway through a playthrough when it did work at the beginning.

Ultra Undo is an extension kindly written by Dannii Willis to use external file recording to ensure that UNDO remains available.]

Include version 1/160501 of Ultra Undo by Dannii Willis.

Part 2 - Multimedia

Chapter 1 - Images

Section 1 - Compass Rose

[The aim of the graphics is to provide the player with visual orientation. We don't ever want the player to feel lost or to feel pressure to take notes. With a large game space, this is a challenge to achieve. Even though Bronze provided GO TO and FIND commands *and* came with a manual with a pre-drawn map, a number of players reported making maps of their own. This was a failure. Note-taking should be completely unnecessary unless the player happens to enjoy map-making for some reason.

The map concept borrows from commercial game minimaps that show goal locations as the player progresses.

Like the compass rose in Bronze, the compass rose here shows exits in different shades depending on whether the rooms in those directions have already been visited. The compass is also hyperlinked so that the player can click on it as an alternative to typing directions. ]

Figure of dim northwest is the file "grey-nw.png".
Figure of dim north is the file "grey-n.png".
Figure of dim northeast is the file "grey-ne.png".
Figure of dim west is the file "grey-w.png".
Figure of dim east is the file "grey-e.png".
Figure of dim southwest is the file "grey-sw.png".
Figure of dim south is the file "grey-s.png".
Figure of dim southeast is the file "grey-se.png".
Figure of dim up is the file "grey-u.png".
Figure of dim down is the file "grey-d.png".

Figure of northwest is the file "white-nw.png".
Figure of north is the file "white-n.png".
Figure of northeast is the file "white-ne.png".
Figure of west is the file "white-w.png".
Figure of east is the file "white-e.png".
Figure of southwest is the file "white-sw.png".
Figure of south is the file "white-s.png".
Figure of southeast is the file "white-se.png".
Figure of up is the file "white-u.png".
Figure of down is the file "white-d.png".

Figure of new northwest is the file "blue-nw.png".
Figure of new north is the file "blue-n.png".
Figure of new northeast is the file "blue-ne.png".
Figure of new west is the file "blue-w.png".
Figure of new east is the file "blue-e.png".
Figure of new southwest is the file "blue-sw.png".
Figure of new south is the file "blue-s.png".
Figure of new southeast is the file "blue-se.png".
Figure of new up is the file "blue-u.png".
Figure of new down is the file "blue-d.png".

Figure of dim fore-port is the file "grey-fp.png".
Figure of dim fore is the file "grey-f.png".
Figure of dim fore-starboard is the file "grey-fsb.png".
Figure of dim port is the file "grey-p.png".
Figure of dim starboard is the file "grey-sb.png".
Figure of dim aft-port is the file "grey-ap.png".
Figure of dim aft is the file "grey-a.png".
Figure of dim aft-starboard is the file "grey-asb.png".

Figure of fore-port is the file "white-fp.png".
Figure of fore is the file "white-f.png".
Figure of fore-starboard is the file "white-fsb.png".
Figure of port is the file "white-p.png".
Figure of starboard is the file "white-sb.png".
Figure of aft-port is the file "white-ap.png".
Figure of aft is the file "white-a.png".
Figure of aft-starboard is the file "white-asb.png".

Figure of new fore-port is the file "blue-fp.png".
Figure of new fore is the file "blue-f.png".
Figure of new fore-starboard is the file "blue-fsb.png".
Figure of new port is the file "blue-p.png".
Figure of new starboard is the file "blue-sb.png".
Figure of new aft-port is the file "blue-ap.png".
Figure of new aft is the file "blue-a.png".
Figure of new aft-starboard is the file "blue-asb.png".

Figure of center-squiggle is the file "center-squiggle.png".


[The following is a hack. Originally the figure name associations were all properties of the direction objects, but some sort of memory bug happened when image properties were added to the nautical directions. The result was that the map itself was reconfigured weirdly -- for instance, Slango's Head was declared in source to be aft from Slango's Bunk, but in the game model it would be port of Slango's Bunk instead.]

To decide what figure-name is the dim image of (way - a direction):
	if way is:
		-- fore-port:
			decide on figure of dim fore-port;
		-- fore:
			decide on figure of dim fore;
		-- fore-starboard:
			decide on figure of dim fore-starboard;
		-- port:
			decide on figure of dim port;
		-- starboard:
			decide on figure of dim starboard;
		-- aft-port:
			decide on figure of dim aft-port;
		-- aft:
			decide on figure of dim aft;
		-- aft-starboard:
			decide on figure of dim aft-starboard;
		-- northwest:
			decide on figure of dim northwest;
		-- north:
			decide on figure of dim north;
		-- northeast:
			decide on figure of dim northeast;
		-- west:
			decide on figure of dim west;
		-- east:
			decide on figure of dim east;
		-- southwest:
			decide on figure of dim southwest;
		-- south:
			decide on figure of dim south;
		-- southeast:
			decide on figure of dim southeast;
		-- up:
			decide on figure of dim up;
		-- down:
			decide on figure of dim down.

To decide what figure-name is the unvisited image of (way - a direction):
	if way is:
		-- fore-port:
			decide on figure of new fore-port;
		-- fore:
			decide on figure of new fore;
		-- fore-starboard:
			decide on figure of new fore-starboard;
		-- port:
			decide on figure of new port;
		-- starboard:
			decide on figure of new starboard;
		-- aft-port:
			decide on figure of new aft-port;
		-- aft:
			decide on figure of new aft;
		-- aft-starboard:
			decide on figure of new aft-starboard;
		-- northwest:
			decide on figure of new northwest;
		-- north:
			decide on figure of new north;
		-- northeast:
			decide on figure of new northeast;
		-- west:
			decide on figure of new west;
		-- east:
			decide on figure of new east;
		-- southwest:
			decide on figure of new southwest;
		-- south:
			decide on figure of new south;
		-- southeast:
			decide on figure of new southeast;
		-- up:
			decide on figure of new up;
		-- down:
			decide on figure of new down.

To decide what figure-name is the visited image of (way - a direction):
	if way is:
		-- fore-port:
			decide on figure of fore-port;
		-- fore:
			decide on figure of fore;
		-- fore-starboard:
			decide on figure of fore-starboard;
		-- port:
			decide on figure of port;
		-- starboard:
			decide on figure of starboard;
		-- aft-port:
			decide on figure of aft-port;
		-- aft:
			decide on figure of aft;
		-- aft-starboard:
			decide on figure of aft-starboard;
		-- northwest:
			decide on figure of northwest;
		-- north:
			decide on figure of north;
		-- northeast:
			decide on figure of northeast;
		-- west:
			decide on figure of west;
		-- east:
			decide on figure of east;
		-- southwest:
			decide on figure of southwest;
		-- south:
			decide on figure of south;
		-- southeast:
			decide on figure of southeast;
		-- up:
			decide on figure of up;
		-- down:
			decide on figure of down.

A direction has a number called x-coordinate. A direction has a number called y-coordinate.

Include Simple Graphical Window by Emily Short. The graphics window proportion is 50.  The graphics window position is g-left.

The compass width is a number that varies. The compass width is 120.

Include Graphic Links by Jeff Sheets.

When play begins (this is the setting directional hyperlinks rule):
	follow the compass-drawing rule.

To establish compass graphlinks:
	let ZE be grid-margin;
	let D be grid-size;
	let DD be 2 * D;
	let DDD be compass width;
	let top-edge be current graphics window height - (D * 4);
	let upper-mid be top-edge + D;
	let lower-mid be top-edge + DD;
	let bottom-edge be current graphics window height - D;
	let super-top be current graphics window height - (D * 5);
	let true-bottom be current graphics window height;
	increase D by grid-margin;
	increase DD by grid-margin;
	increase DDD by grid-margin;
	if the location is nautical:
		set a graphlink identified as "goFP" from ZE by top-edge to D by upper-mid as "fore-port";
		set a graphlink identified as "goF" from D by top-edge to DD by upper-mid as "fore";
		set a graphlink identified as "goFSB" from DD by top-edge to DDD by upper-mid as "fore-starboard";
		set a graphlink identified as "goP" from ZE by upper-mid to D by lower-mid as "port";
		set a graphlink identified as "lookHere" from D by upper-mid to DD by lower-mid as "look";
		set a graphlink identified as "goSB" from DD by upper-mid to DDD by lower-mid as "starboard";
		set a graphlink identified as "goAP" from ZE by lower-mid to D by bottom-edge as "aft-port";
		set a graphlink identified as "goA" from D by lower-mid to DD by bottom-edge as "aft";
		set a graphlink identified as "goASB" from DD by lower-mid to DDD by bottom-edge as "aft-starboard";
		set a graphlink identified as "goD" from DD by bottom-edge to DDD by true-bottom as "down";
		set a graphlink identified as "goU" from ZE by bottom-edge to D by true-bottom as "up";
	otherwise:
		set a graphlink identified as "goNW" from ZE by top-edge to D by upper-mid as "northwest";
		set a graphlink identified as "goN" from D by top-edge to DD by upper-mid as "north";
		set a graphlink identified as "goNE" from DD by top-edge to DDD by upper-mid as "northeast";
		set a graphlink identified as "goW" from ZE by upper-mid to D by lower-mid as "west";
		set a graphlink identified as "lookHere" from D by upper-mid to DD by lower-mid as "look";
		set a graphlink identified as "goE" from DD by upper-mid to DDD by lower-mid as "east";
		set a graphlink identified as "goSW" from ZE by lower-mid to D by bottom-edge as "southwest";
		set a graphlink identified as "goS" from D by lower-mid to DD by bottom-edge as "south";
		set a graphlink identified as "goSE" from DD by lower-mid to DDD by bottom-edge as "southeast";
		set a graphlink identified as "goD" from DD by bottom-edge to DDD by true-bottom as "down";
		set a graphlink identified as "goU" from ZE by bottom-edge to D by true-bottom as "up";

To clear compass graphlinks:
	[first the nauticals]
	clear the graphlink identified as "goFP";
	clear the graphlink identified as "goF";
	clear the graphlink identified as "goFSB";
	clear the graphlink identified as "goP";
	clear the graphlink identified as "lookHere";
	clear the graphlink identified as "goSB";
	clear the graphlink identified as "goAP";
	clear the graphlink identified as "goA";
	clear the graphlink identified as "goASB";
	[and now the regular directions]
	clear the graphlink identified as "goNW";
	clear the graphlink identified as "goN";
	clear the graphlink identified as "goNE";
	clear the graphlink identified as "goW";
	clear the graphlink identified as "lookHere";
	clear the graphlink identified as "goE";
	clear the graphlink identified as "goSW";
	clear the graphlink identified as "goS";
	clear the graphlink identified as "goSE";
	clear the graphlink identified as "goD";
	clear the graphlink identified as "goU";

When play begins (this is the setting drawing-rule rule):
	now current graphics drawing rule is the compass-drawing rule.

After going somewhere (this is the update compass on movement rule):
	refresh compass with current directions;
	continue the action.

After someone going somewhere when the actor encloses the player:
	refresh compass with current directions;
	continue the action.

[We want the compass to stay down in a corner of the screen and not to scale up too huge if the screen is resized. One of the irritating things about Glulx window management is that it's impossible to force an aspect ratio on the player, so I have no idea whether they're going to go tall-and-skinny or short-and-wide. Testers playing in full-screen mode sometimes found that the compass got way too large and encroached on the upper part of the map if I just set the compass to be one quarter the width of the window.]

To decide what number is grid-size:
	let width-quarter be (current graphics window width / 4);
	let height-quarter be (current graphics window height / 4);
	if width-quarter is greater than height-quarter:
		now compass width is height-quarter;
	else:
		now compass width is width-quarter;
	let D be compass width / 3;
	decide on D;

To decide what number is grid-margin:
	decide on grid-size / 2.

This is the compass-drawing rule:
	if glulx graphics is supported:
		clear compass graphlinks; [We need to reset the graphlinks every time the player resizes the window, because if the height of the screen changes, the compass may move vertically.]
		establish compass graphlinks;
		refresh compass with current directions.

To determine compass coordinates:
	let ZE be 0;
	increase ZE by grid-margin;
	let D be grid-size;
	let DD be 2 * D;
	let DDD be compass width;
	let TE be current graphics window height - (D * 4);
	let UM be TE + D;
	let LM be TE + DD;
	let BEE be current graphics window height - D;
	increase D by grid-margin;
	increase DD by grid-margin;
	increase DDD by grid-margin;
	now x-coordinate of up is ZE;
	now y-coordinate of up is BEE;
	now x-coordinate of down is DD;
	now y-coordinate of down is BEE;
	now x-coordinate of fore-port is ZE;
	now y-coordinate of fore-port is TE;
	now x-coordinate of fore is D;
	now y-coordinate of fore is TE;
	now x-coordinate of fore-starboard is DD;
	now y-coordinate of fore-starboard is TE;
	now x-coordinate of port is ZE;
	now y-coordinate of port is UM;
	now x-coordinate of starboard is DD;
	now y-coordinate of starboard is UM;
	now x-coordinate of aft-port is ZE;
	now y-coordinate of aft-port is LM;
	now x-coordinate of aft is D;
	now y-coordinate of aft is LM;
	now x-coordinate of aft-starboard is DD;
	now y-coordinate of aft-starboard is LM;
	now x-coordinate of northwest is ZE;
	now y-coordinate of northwest is TE;
	now x-coordinate of north is D;
	now y-coordinate of north is TE;
	now x-coordinate of northeast is DD;
	now y-coordinate of northeast is TE;
	now x-coordinate of west is ZE;
	now y-coordinate of west is UM;
	now x-coordinate of east is DD;
	now y-coordinate of east is UM;
	now x-coordinate of southwest is ZE;
	now y-coordinate of southwest is LM;
	now x-coordinate of south is D;
	now y-coordinate of south is LM;
	now x-coordinate of southeast is DD;
	now y-coordinate of southeast is LM.

[Layer the image: black in the background to fill in the top of the screen; a blue and black mix of the right height across the whole width of the screen so that if the map is too small, it will still look blue at the edges; then the map itself, proportionally scaled as large as it can reasonably be given the window dimensions; then the compass, built from the current circumstances.

In theory, it would have been possible to make the map images carry the compass directions as well. In practice, that presented several problems: more difficult to cope with minor map changes during final revisions, inability to indicate which directions have already been explored.]
To refresh compass with current directions:
	if glulx graphics is supported:
		blank window to graphics background color;
		now currently shown picture is the figure of background;
		follow the bottom wide drawing rule;
		now currently shown picture is the local map of the location;
		follow the bottom scaled drawing rule;
		draw Figure of center-squiggle from the x-coordinate of north by y-coordinate of west to grid-size by grid-size;
		determine compass coordinates;
		repeat with way running through directions:
			if the way is a listable exit:
				let X be the x-coordinate of way;
				let Y be the y-coordinate of way;
				if the room way from the location is visited:
					draw the visited image of the way from X by Y to grid-size by grid-size;
				otherwise:
					draw the unvisited image of the way from X by Y to grid-size by grid-size;

Section 2 - Local Maps

A room has a figure-name called the local map. [Actual file names and assignments are made later, after all the rooms have been defined.]

[Simple Graphical Window provides instructions for scaling an image and putting it in the middle of the screen if the aspect ratio of the window it needs to fill is slightly wrong. In this case, though, we want to put the map at the bottom of the screen and fill the background above it with black, so there is no apparent top and bottom margin at all.]

This is the bottom wide drawing rule:
	draw wide image in graphics window;

To draw wide image in graphics window:
	(- ScaleToBottomWide(); -)

This is the bottom scaled drawing rule:
	draw bottom scaled image in graphics window.

To draw bottom scaled image in graphics window:
	(- ScaleToBottom(); -)

Include (-

 [ ScaleToBottom cur_pic result graph_width graph_height
		img_width img_height w_offset h_offset w_total h_total;

	if (FollowRulebook( (+glulx picture selection rules+) ) ) { cur_pic = ResourceIDsOfFigures-->(+ internally selected picture +); }
	if (cur_pic == 0) rtrue;

      if (gg_picwin) {

	result = glk_window_get_size(gg_picwin, gg_arguments, gg_arguments+WORDSIZE);
             	graph_width  = gg_arguments-->0;
             	graph_height = gg_arguments-->1;

	result = glk_image_get_info( cur_pic, gg_arguments,  gg_arguments+WORDSIZE);
	img_width  = gg_arguments-->0;
	img_height = gg_arguments-->1;

	w_total = img_width;
	h_total = img_height;

	if (graph_height - h_total < 0) !	if the image won't fit, find the scaling factor
	{
		w_total = (graph_height * w_total)/h_total;
		h_total = graph_height;

	}

	if (graph_width - w_total < 0)
	{
		h_total = (graph_width * h_total)/w_total;
		w_total = graph_width;
	}

	w_offset = (graph_width - w_total)/2; if (w_offset < 0) w_offset = 0;
	h_offset = graph_height - h_total; if (h_offset < 0) h_offset = 0;

	glk_image_draw_scaled(gg_picwin, cur_pic, w_offset, h_offset, w_total, h_total);
	}
 ];

 [ ScaleToBottomWide cur_pic result graph_width graph_height
		img_width img_height w_offset h_offset w_total h_total;

	if (FollowRulebook( (+glulx picture selection rules+) ) ) { cur_pic = ResourceIDsOfFigures-->(+ internally selected picture +); }
	if (cur_pic == 0) rtrue;

      if (gg_picwin) {

	result = glk_window_get_size(gg_picwin, gg_arguments, gg_arguments+WORDSIZE);
             	graph_width  = gg_arguments-->0;
             	graph_height = gg_arguments-->1;

	result = glk_image_get_info( cur_pic, gg_arguments,  gg_arguments+WORDSIZE);
	img_width  = gg_arguments-->0;
	img_height = gg_arguments-->1;

	w_total = img_width;
	h_total = img_height;

	if (graph_height - h_total < 0) !	if the image won't fit, find the scaling factor
	{
		w_total = (graph_height * w_total)/h_total;
		h_total = graph_height;

	}

	if (graph_width - w_total < 0)
	{
		h_total = (graph_width * h_total)/w_total;
		w_total = graph_width;
	}

	w_offset = (graph_width - w_total)/2; if (w_offset < 0) w_offset = 0;
	h_offset = graph_height - h_total; if (h_offset < 0) h_offset = 0;

	glk_image_draw_scaled(gg_picwin, cur_pic, 0, h_offset, graph_width, h_total);
	}
 ];


-)

Chapter 2 - Sounds

[Once upon a time, when this was a much smaller and more comedic game, I was going to have sound effects communicating successes and failures with the various letter-manipulating instruments. But then the tone of the game changed and the game itself got a lot longer, and it felt like the cuteness of this would wear off long before hour eight or so of play.

Also, not all interpreters support Glulx sound, so I would have had to commit to a lot of extra testing work in order to get anything done in this line.

Ultimately it didn't seem worth it and the sounds were scrapped from the gameplay. I did have a fun afternoon once picking royalty-free sounds from a special effects database, though.]

[Sound of record scratch is the file "scratch14.aif".
Sound of sudden growth is the file "maximize04.aif".
Sound of scope success is the file "organic_nav_16.aif".
Sound of scope failure is the file "hi-tech_05.aif".
Sound of gel splort is the file "pop_15.aif". ]

Chapter 3 - Typographical Conveniences

Section 1 - Output Shorthand

[For changes of style and certain unicode elements that we might want to invoke in the middle of other output, we define a few say phrases to make them easier to type. ]

Use American dialect and the serial comma.

To say i -- beginning say_i -- running on: (- style underline; -).
To say /i -- ending say_i -- running on: (- style roman; -).
To say b -- beginning say_b -- running on: (- style bold; -).
To say /b -- ending say_b -- running on: (- style roman; -).

en dash translates into Unicode as 8211.
em dash translates into Unicode as 8212.
ballot x translates into Unicode as 10007.

To say --: say Unicode em dash.
To say -: say Unicode en dash.
To say -x-: say Unicode ballot x.

Rule for deciding whether all includes fixed in place things: it does not.
Rule for deciding whether all includes scenery: it does not.
Rule for deciding whether all includes people while taking: it does not.

Rule for clarifying the parser's choice of something:
	do nothing instead.


To say set prior to (item - a thing):
	now prior named object is item.

Section 2 - Input Editing

[There are a number of situations -- when typing a question with a ? at the end, in a command like TYPE "BROWN" ON COMPUTER, etc. -- where we want to throw away any punctuation that the player has added to the input, and no situations in which we want to keep it (except for full stops, which might indicate the beginning of another command). So we edit those out.]

Include Punctuation Removal by Emily Short.

First after reading a command:
	remove stray punctuation.

Section 3 - Styles

[Borrowed from Alabaster's version of the same thing.]

Table of User Styles (continued)
style name (a glulx text style)	background color (a text)	color (a text)	first line indentation (a number)	fixed width (a truth state)	font weight (a font weight)	indentation (a number)	italic (a truth state)	justification (a text justification)	relative size (a number)	reversed (a truth state)
special-style-2	--	"#444444"	0	false	light-weight	0	true	left-justified
special-style-1	--	"#888888"

Before listing plausible quips [when dialogue tinting is true]:
	say "[second custom style][run paragraph on]".

After listing plausible quips [when dialogue tinting is true]:
	if a paragraph break is pending:
		say "[roman type]";
	otherwise:
		say "[roman type][run paragraph on]".

Before listing matched quips:
	say "[second custom style][run paragraph on]".

After listing matched quips:
	if a paragraph break is pending:
		say "[roman type]";
	otherwise:
		say "[roman type][run paragraph on]".

Section 4 - Bolding Help

[The names of manipulable objects are especially important in this game, and it's possible for the reader to miss clues through careless reading or misunderstanding. So, as with Bronze and several of Aaron Reed's games, we bracket objects in descriptions and provide a facility to mark the names of implemented items in bold.]

Boldening is a truth state that varies. Boldening is false.

Before printing the name of a direction when boldening is true:
	say "[bold type]"

After printing the name of a direction when boldening is true:
	say "[roman type]"


Before printing the name of something which is not a quip when boldening is true:
	say "[bold type]"

After printing the name of something which is not a quip when boldening is true:
	say "[roman type]"

[This is a hack to get around a bug that I find wholly inexplicable and may be happening at the interpreter level, whereby "HIGHLIGHT" is assigned to the score notification action though it should not be, and appears correctly in the phrasebook.]
After reading a command:
	if the player's command includes "highlight":
		replace the matched text with "hilight".

Understand "highlighting on" or "hilighting on" or "hilight on" as turning on highlighting. Turning on highlighting is an action out of world.

Understand "highlighting off" or "hilighting off" or "hilight off" as turning off highlighting. Turning off highlighting is an action out of world.

Understand "highlighting" or "hilighting" or "hilight" or "highlight" as turning on highlighting when boldening is false.

Understand "highlighting" or "hilighting" or "hilight" or "highlight" as turning off highlighting when boldening is true.

Carry out turning on highlighting:
	now boldening is true.

Carry out turning off highlighting:
	now boldening is false.

Report turning on highlighting:
	say "Highlighting of object names is now on."

Report turning off highlighting:
	say "Highlighting of object names is now off."

[And suppose we want this to be functional for just a single turn and then turn off again:]

Understand "look carefully" or "look closely" as bold looking. Bold looking is an action applying to nothing.

Carry out bold looking:
	let already-bold-flag be false;
	if boldening is true:
		let already-bold-flag be true;
	now boldening is true;
	try looking;
	unless already-bold-flag is true:
		now boldening is false.



Part 3 - Status

Section 1 - The Status Line

To fill the/-- status bar/line with (selected table - Table of Fancy Status):
	repeat through selected table:
		move cursor to 1;
		say "[left entry]";
		right align cursor to 1;
		say "[right entry]";

When play begins:
	now right alignment depth is 20.

Table of Fancy Status
left	central	right
" [location], [current daytime]"	""	"Goals: [count of pending tasks]  Score: [score]"

Rule for constructing the status line:
	fill status bar with Table of Fancy Status;
	rule succeeds.

Section 2 - Score

[Score is pretty old-school here: it marks progress towards the end game and provides the player with a review of significant achievements so far, as well as encouraging the player that he did the right thing at certain junctures.

Optional accomplishments are not included -- those are reserved for the achievement system -- so there are no Last Lousy Points. A player who gets to the end of the game should have the full hundred.]

The new notify score changes rule is listed instead of the notify score changes rule in the turn sequence rulebook.

This is the new notify score changes rule:
	if the score is not the last notified score:
		say "[first custom style]";
		let diff be the score minus the last notified score;
		if diff is less than 0:
			let diff be 0 minus diff;
			say "[bracket]Your score has gone down by [diff in words] point[s][if score is greater than diff] and is now [score in words][end if].[close bracket]";
		otherwise:
			say "[bracket]Your score has gone up by [diff in words] point[s][if score is greater than diff] and is now [score in words][end if].[close bracket]";
		say "[roman type][paragraph break]";
		now the last notified score is the score;


Table of Tasks Achieved
Points (a number)	Citation (some text)	Time (a time)
1   	"using the letter-remover"
1	"using the gel"
1	"using the spinner"
1	"using the origin paste"
1	"using the synthesizer"
1	"getting a product of the homonym paddle"
1	"using the T-inserter"
1	"using the anagramming gun"
1	"using the umlaut punch"
1	"using the vowel rotator"
2	"returning a library book to its proper home"
3	"passing through the temporary barrier"
3   	"winning the gel"
3   	"opening the locker"
3	"retrieving the backpack"
3	"fueling our car"
3	"repairing our car"
3	"winning a barroom bet"
3	"arranging contact with Slango through his lady friend"
3	"visiting the dead drop"
3	"reading a legend"
3	"lifting abstraction limits on the letter-remover"
3	"lifting animate limits on the letter-remover"
3	"gaining access to the synthesizer"
3	"acquiring a keycard"
3	"breaking the Spirit of Atlantis (in cardboard form)"
3	"profiling the T-inserter"
5	"traveling by car"
5	"meeting Slango"
5	"passing the secretarial test"
10	"acquiring a sought-after invitation"
15	"returning to the yacht"

To record (T - text) as achieved:
    choose row with a citation of T in the Table of Tasks Achieved;
    if there is no time entry begin;
        now time entry is the time of day;
		increase score by points entry;
	end if.

The announce the score rule is not listed in any rulebook.

Carry out requesting the score:
	if the score is 0:
		say "So far you are without points.";
	otherwise:
		say "You have earned [score] point[s]:";
		repeat through the Table of Tasks Achieved in time order:
			say "[line break]  [points entry] point[s] for [citation entry]";
		say paragraph break.


Report requesting the score:
	if the number of entries in the list of remaining letters is 26:
		say "You have not yet removed any letters from anything.";
	otherwise if the number of entries in the list of remaining letters is 0:
		say "You have at some time removed every letter from something.";
	otherwise:
		say "You have not yet removed [disjoint list of remaining letters] from anything.";
	follow the list achievements rule.

To say disjoint (L - a list of texts):
	let N be the number of entries in L;
	repeat with I running from 1 to N:
		say entry I in L;
		if I is N - 1:
			say ", or ";
		otherwise unless I is N:
			say ", ".

Table of Rankings
Score (a number)	Rank (a text)
0   	"Graduate Student"
10	"Escapee"
20	"Petty Criminal"
30	"Smuggler"
40	"Industrial Spy"
50	"Corporate Espionage Expert"
60	"Subversive Element"
75	"Enemy of the State"
100	"Successful Revolutionary"


Section 3 - Assigning and completing tasks

Table of Tasks Pending
Citation (some text)	Time (a time)	Goal (a room)
"Get my backpack from the cinema"	--	Screening Room
"Retrieve your remaining possessions from locker at hostel"	--	Dormitory Room
"Meet your colleague Slango at Counterfeit Monkey"	--	Counterfeit Monkey
with 40 blank rows.

Table of Prefinished Tasks
Citation (a text)	Time (a time)	Goal (a room)
with 40 blank rows.

Table of Tasks Complete
Citation (a text)	Time (a time)	Goal (a room)
with 40 blank rows.

To assign (job - text) at (place - a room):
	unless job is under way or job is completed:
		if there is a citation of job in the Table of Prefinished Tasks:
			choose row with a citation of job in the Table of Prefinished Tasks;
			mark job done at (time entry);
			blank out the whole row;
		otherwise:
			if the number of blank rows in the Table of Tasks Pending is greater than 0:
				choose a blank row in the Table of Tasks Pending;
				now (Citation entry) is job;
				now (goal entry) is place.

To decide whether (job - text) is under way:
	if there is a citation of job in the Table of Tasks Pending:
		yes.

To decide whether (job - text) is completed:
	if there is a citation of job in the Table of Tasks Complete:
		yes.

To complete (job - text):
	if there is a citation of job in the Table of Tasks Pending:
		choose row with Citation of job in the Table of Tasks Pending;
		blank out the whole row;
		mark job done at time of day;
	otherwise:
		mark job pending;

To mark (job - text) pending:
	unless there is a citation of job in the Table of Tasks Complete:
		if the number of blank rows in the Table of Prefinished Tasks is greater than 0:
			choose a blank row in the Table of Prefinished Tasks;
			now (citation entry) is job;
			now (goal entry) is the location;
			now (time entry) is the time of day;

To mark (job - text) done at (T - a time):
	unless there is a citation of job in the Table of Tasks Complete:
		if the number of blank rows in the Table of Tasks Complete is greater than 0:
			choose a blank row in the Table of Tasks Complete;
			now (citation entry) is job;
			now (goal entry) is the location;
			now (time entry) is T;


[To reverse (job - text):
	if there is a citation of job in the Table of Tasks Complete:
		choose row with Citation of job in the Table of Tasks Complete;
		blank out the whole row;
	unless there is a citation of job in the Table of Tasks Pending:
		choose a blank row in the Table of Tasks Pending;
		change (citation entry) to job. ]

To replace (job - text) with (new job - text):
	if there is a citation of job in the Table of Tasks Pending:
		choose row with Citation of job in the Table of Tasks Pending;
		blank out the whole row;
		now (citation entry) is new job;
	if there is a citation of job in the Table of Prefinished Tasks:
		choose row with Citation of job in the Table of Prefinished Tasks;
		blank out the whole row;
		now (citation entry) is new job;
	if there is a citation of job in the Table of Tasks Complete:
		choose row with Citation of job in the Table of Tasks Complete;
		blank out the whole row;
		now (citation entry) is new job;

Understand the command "think" as something new. Understand "think" or "plan" or "plans" or "journal" or "missions" or "goals" or "goal" as planning. Planning is an action out of world.

Check planning:
	if the Table of Tasks Pending is empty:
		say "[We] [are] out of goals." instead;

Carry out planning:
	say "Here's what [we] think [we] need to do: ";
	repeat through the Table of Tasks Pending:
		say "[line break]  [citation entry]";
	say "[line break]".

Report planning for the second time:
	say "[first custom style][bracket]Remember that you can move towards your goal locations with GO TO...[close bracket][roman type][paragraph break]";

To decide what number is the count of pending tasks:
	let N be the number of filled rows in the Table of Tasks Pending;
	decide on N.

After going to Fair for the first time:
	say "I'm glad to see you're feeling ready to face the wider world. [run paragraph on]";
	try planning;
	say "[first custom style][bracket]To go over our current goals, type GOALS at any time.[close bracket][roman type][paragraph break]";
	continue the action.

[Understand "schedule" or "summary" or "history" or "review" or "chapters" as scheduling.

Scheduling is an action out of world.

Report scheduling:
	say "We've managed the following: ";
	repeat through the Table of Tasks Complete:
		say "[line break]  [citation entry]";
	say "[paragraph break]";
	say "That leaves: ";
	repeat through the Table of Tasks Pending:
		say "[line break]  [citation entry]";
	say "[paragraph break]";]

[We don't need this because we have score.]

To show to-do list:
	say "[line break]So now [we] should probably ";
	repeat through the Table of Tasks Pending:
		say "[citation entry]; ";
	say "and, most of all, not get noticed by anyone who shouldn't notice us."

Section 4 - Achievements

[Achievement file handling is adapted from the Recorded Endings extension used in Alabaster.]

The File of Conclusions is called "monkeyac".

When play begins (this is the load conclusions when starting rule):
	read the achievements.

Last carry out restoring the game (this is the load conclusions when restoring rule):
	read the achievements.

To read the achievements:
	if the File of Conclusions exists:
		read File of Conclusions into the Table of Possible Achievements.

To record (slug - some text) as an achievement:
	read the achievements;
	let N be "[slug]";
	unless N is a used achievement:
		choose a blank row in the Table of Possible Achievements;
		now the achievement entry is N;
		unless the location is nautical:
			say "[first custom style][line break]Achievement accomplished: [N]![line break][roman type]";
	write File of Conclusions from the Table of Possible Achievements.

Table of Possible Achievements
achievement (some text)
with 40 blank rows.

Table of Final Question Options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"review the ACHIEVEMENTS you've reached so far"	false	"review/achievements"	list achievements rule	--
"learn about some of the SOURCES used in creating this game"	true	"sources/source/learn"	list sources rule	--

This is the list achievements rule:
	read the achievements;
	unless the number of filled rows in  the Table of Possible Achievements is 0:
		sort the table of Possible Achievements in achievement order;
		say "The achievements you have accomplished so far include: [paragraph break]";
		repeat through the Table of Possible Achievements:
			say "  [achievement entry][line break]".

To decide whether (chosen ending - text) is a used achievement:
	let N be "[chosen ending]";
	repeat through the Table of Possible Achievements:
		if N is achievement entry:
			yes;
	no.

This is the list sources rule:
	say "I started working in earnest on this game in 2008. Since that time, the US has undergone two presidential elections; for months, the Occupy Seattle protests filled a city block just a short stroll from my apartment; and the successes and failures of the Arab Spring were constantly in the news. These experiences introduced more serious themes into what was initially a purely silly game.

Gene Sharp's [i]From Dictatorship to Democracy[/i] and the documentary [i]How to Start a Revolution[/i] helped me think about peaceful revolutions and the communication of dissent within totalitarian regimes.

The history of Atlantis['] colon[ization] mirrors that of nearby Gibraltar, on the theory that the same powers would have been likely to take an interest. Wikipedia supplied most of the potted history I used for this.

Arika Okrent's [i]In the Land of Invented Languages[/i] and Mark Rosenfelder's [i]Language Construction Kit[/i] (first a website, subsequently a book) taught me a lot about existing constructed languages and helped me imagine what might interest Atlantean academics.

[i]Poor Economics[/i] (Abhijit Banerjee, Esther Duflo) provided some general background about different attempts to address global poverty, contributing to the Atlantean concept of utopian linguistics (and why it hadn't yet saved the world).

The Scrabble dictionary and the internet anagram server, among others, helped me map out the puzzle space systematically.

Hundreds of other small details came out of YouTube or Wikipedia, from the composition of classic cocktails to the mating behavior of pigs. Background for specific elements may be found in the game's source text."


Section 5 - Inventory Options

Inventory listing style is a kind of value. The inventory listing styles are tall, wide, and utilitarian. Current inventory listing style is an inventory listing style that varies. Current inventory listing style is utilitarian.

Understand "inventory [inventory listing style]" as requesting styled inventory. Requesting styled inventory is an action applying to an inventory listing style, out of world.

Carry out requesting styled inventory:
	now current inventory listing style is the inventory listing style understood.

Report requesting styled inventory:
	say "Inventory listing is now set to [current inventory listing style]."

[We begin by emulating the standard inventory listing style:]

Instead of taking inventory when current inventory listing style is tall:
	if the player is empty, say "[We] [are] empty-handed." instead;
	say "[We] [are] carrying: [line break]";
	list the contents of the player, with newlines, indented, giving inventory information, including contents, with extra indentation.

Instead of taking inventory when the current inventory listing style is wide:
	if the player is empty, say "[We] [are] empty-handed." instead;
	say "[We] [are] wearing ";
	now all things enclosed by the player are unmarked for listing;
	now all things worn by the player are marked for listing;
	if no things worn by the player are marked for listing, say "nothing special";
	otherwise list the contents of the player, as a sentence, listing marked items only;
	say ".[paragraph break]";
	say "[We] [are] carrying ";
	now all things carried by the player are marked for listing;
	now all things worn by the player are unmarked for listing;
	if no things carried by the player are marked for listing, say "nothing";
	otherwise list the contents of the player, as a sentence, tersely, giving brief inventory information, including contents, listing marked items only;
	say ".[paragraph break]".

Instead of taking inventory when the current inventory listing style is utilitarian:
	now everything is not marked for listing;
	let the packed count be 0;
	let the unpacked count be 0;
	let paragraph break needed be false;
	let the carried count be the number of things enclosed by the player that are not the restoration gel;
	[the restoration gel shouldn't be counted separately from the tub]
	if the carried count is 0, say "[We] [are] empty-handed." instead;
	now all essential things enclosed by the player are marked for listing;
	unless the number of marked for listing things is 0:
		if exactly one thing is marked for listing:
			say "[We] [are] equipped with [a list of marked for listing thing] [--] an essential [we] mustn't part with. ";
		otherwise:
			say "[We] [are] equipped with the following essentials: [a list of marked for listing things].[no line break]";
		now the packed count is the number of marked for listing things which are packed;
		now the unpacked count is the number of marked for listing things which are unpacked;
		now paragraph break needed is true;
	now everything is not marked for listing;
	now every not essential thing enclosed by the player is marked for listing;
	now everything that is part of something is not marked for listing;
	now the restoration gel is not marked for listing; [because the tub will already be a mentioned essential]
	unless no things are marked for listing:
		if paragraph break needed is true: [if we have already listed things]
			say "[paragraph break][We] [are] also carrying ";
		else:
			[if we are only carrying non-essential things and wearing them, just say that and skip the rest]
			if everything enclosed by the player is worn:
				 say "[We] [are] wearing [a list of worn things *in the player]." instead;
			else:
				say "[We] [are] carrying ";
		repeat with item running through marked for listing things:
			choose a blank row in the Table of Inventory Ordering;
			let N be "[item]";
			let N be "[N in lower case]";
			now the name appearance entry is N;
			now the referent entry is the item;
			if item is packed, increase the packed count by 1;
			else increase the unpacked count by 1;
		sort the Table of Inventory Ordering in name appearance order;
		let max be the number of filled rows in the Table of Inventory Ordering;
		let near-max be max minus 1;
		let count be 0;
		repeat through the Table of Inventory Ordering:
			say "[a referent entry]";
			increase count by 1;
			if count is max:
				say ".[no line break]";
				now paragraph break needed is true;
			otherwise if count is near-max:
				say ", and ";
			otherwise:
				say ", ";
			blank out the whole row;
	if the the backpack is enclosed by the player:
		if the packed count is greater than the unpacked count:
			if the unpacked count is 0:
				say "[paragraph break][if the packed count is less than 3][The list of packed things] [are][else]Everything [we] carry is[end if] in the backpack, which is [if backpack is closed]closed for greater concealment[else]gaping wide open so everyone can see what's inside[end if]. ";
			else:
				say "[paragraph break]Everything [we] carry is in the backpack except [the list of unpacked things which are enclosed by the player]. The backpack is [if backpack is closed]closed for greater concealment[else]gaping wide open so everyone can see what's inside[end if]. ";
		else:
			if the packed count is 0:
				if the carried count is greater than 2:
					say "[paragraph break]None of that is in the backpack. [no line break]";
					now paragraph break needed is true;
			else:
				say "[paragraph break]Of that collection, [the list of packed things] [are] packed away in the backpack, which is [if backpack is closed]closed for greater concealment[else]gaping wide open so everyone can see what's inside[end if]. ";
	if the player wears something:
		say "[paragraph break][We] [are] wearing [the list of worn things *in the player]. ";
		now paragraph break needed is true;
	if paragraph break needed is true:
		say paragraph break.

[TODO: fix tests]
Table of Ultratests
topic (a topic)	stuff (a list of objects)	setting (a room)
"newutility"	{ backpack, secret-plans, cate, lime, wig }	--

Test newutility with "tutorial off / i / put all in backpack / i / wave l-remover at plans / put pans in backpack / i / put all in backpack / i / close backpack / i / x backpack / open backpack / x backpack / i / wear wig / i / wear monocle / i / drop backpack / i / x me" [holding the backpack and the secret-plans and the lime and the cate and the wig.]

Definition: a thing is packed if it is enclosed by the backpack and it is not part of something.
Definition: a thing is unpacked if it is not packed and it is not part of something and it is not the backpack and it is not the restoration gel.

Table of Inventory Ordering
name appearance (some text)	referent (a thing)
with 100 blank rows.

After printing the name of something (called target) which is proffered by the secret-plans while taking inventory:
	if the current inventory listing style is utilitarian and the target is not secret-plans:
		say " (really the smuggled plans in disguise)".

After printing the name of the tub while taking inventory:
	if the current inventory listing style is utilitarian:
		say " of restoration gel".


Part 4 - Extras

Section 1 - Footnotes

[Once there were footnotes, using Stephen Granade's Footnotes extension. But I took them out. Most of what I wanted to explain seemed much better placed as comments in the source, where it wouldn't spoil anything that wasn't being spoiled anyway.]

Section 2 - Hard Mode

[ Counterfeit Monkey is designed to be fairly accessible -- this is a primary design concern for the puzzles and user interface. The implication of that, though, is that the game is likely to be easier than some hard-core puzzle aficionadoes are likely to prefer; and, of course, there are a lot of possible solutions that are substantially more obscure than others, which players are unlikely to find unless forced.

So we also provide a hard mode, to offer a more focused puzzle experience for the people, one that will hopefully still be fun if the player chooses to revisit it after having already finished easy mode. To that end, there are a few mild jokes that riff on easy-mode gameplay, and a few puzzles are swapped entirely for something new and harder.]

Understand "hard" or "hard mode" or "expert" or "harder" or "difficult" or "expert mode" or "harder mode" or "difficult mode" as selecting hard mode. Selecting hard mode is an action out of world.

Check selecting hard mode when the Fair is visited:
	say "It is now too late in the game to change modes. If you wish, you may restart the game and choose HARD any time before reaching the Fair." instead.

Hardness is a truth state that varies.

Check selecting hard mode when the Fair is not visited:
	if hardness is true:
		say "Hard mode is already on." instead;
	say "Once you've selected hard mode, you can't go back: certain puzzles with multiple solutions will be made more difficult and some puzzles will be altered entirely. Are you sure? >>";
	unless the player consents:
		say "Hard mode selection canceled." instead.

[Implementing hard mode is largely a matter of deleting a number of the most obviously useful items from the game, forcing the player to look for alternative options that may be more difficult to find. In a couple of cases, we replace the useful item with something else as a bit of a tease. The list of things we take out of play:

FUNNEL (FUEL)
STICKY (STICK)
BANANA (BANDANA)
WRAP (RAP)
SCREWDRIVER
PEAR (PEARL etc.)
WHEEL
TOMES
TWIG
FOSSIL (OIL)
GUM

CLOCK (still included, but it gains the adjective BROKEN after its first gelling, and is not useful for the Waterstone puzzle, forcing the player to work with ASS or MEMBER instead.)

Hard mode also changes the functionality of the vowel rotator in the late game, replacing it with a somewhat more challenging encryptor.]

Carry out selecting hard mode:
	now hardness is true;
	now the the gum is nowhere;
	now the funnel is nowhere;
	now the funnel is not buried;
	now the printed name of the twig is "bent twig";
	now the printed name of the fossil is "twisty fossil";
	now the printed name of the tomes is "dusty tomes";
	now the the sticky is nowhere;
	now the the banana is nowhere;
	move the pineapple to the large carton;
	now the the wrap is nowhere;
	now the the screwdriver is nowhere;
	now the the screwdrivers are nowhere;
	move the prickly-pear to the holder of the pear;
	now the the pear is nowhere;
	now the the wheel is nowhere;
	now the introduction of the clock is "It's stopped working sometime in the recent past, possibly thanks to its fall when we gelled it.";
	follow the initialize hash codes rule;
	now tutorial mode is false;

Report selecting hard mode:
	say "[story title] is now in 'hard' mode. Tutorials are off. The world is reconfigured against you. Good luck."

[TODO fix tests]
Table of Ultratests (continued)
topic	stuff
"hardnames"	{ twig, clock, tomes, members, army }

Test hardnames with "tutorial off / hard / y / drop all / look / look carefully / x bent twig / x broken clock / wave t-remover at twig / wave l-remover at clock / wave m-remover at tomes / wave s-remover at members / wave y-remover at army" [holding the twig and the clock and the tomes and the members and the army.]

Test hard2 with "tutorial off / hard / y / autoupgrade / wave p-remover at patron / wave m-remover at patron / z / wave m-remover at patron" in the drinks club.

Understand "model" as the members when hardness is true.
Understand "model" as the army when hardness is true.

Understand "bent" as the twig when hardness is true.
Understand "dusty" as the tomes when hardness is true.
Understand "twisty" as the fossil when hardness is true.

Before printing the name of the clock when hardness is true and printed name of the clock is not "broken clock":
	if the clock is in the repository:
		make no decision;
	otherwise:
		now the printed name of the clock is "broken clock";
		reset hash code of the clock;

Understand "broken" as the clock when hardness is true.

[We can't actually go back to easy mode once we're in hard mode, but we should react to the player's attempts to do so.]

Understand "easy" or "easy mode" or "mode" as selecting easy mode. Selecting easy mode is an action out of world.

Check selecting easy mode:
	if hardness is false:
		say "Easy mode is the default mode for [story title], and is already active." instead;
	otherwise:
		say "Once hard mode is selected, it cannot be turned off. Please restart if you would prefer to play the game in easy mode." instead.

Section 3 - About Menu

Include Basic Help Menu by Emily Short.

When play begins:
	choose row 1 in Table of Basic Help Options;
	now description entry is "[story title] is a puzzle game about word manipulation, with moderate plot complexity. It will probably take a seasoned IF player at least eight hours to complete.

This game is fairly gentle: it should not be possible to get stuck or make the game unexpectedly unwinnable; if an object you thought was useful goes away, odds are that you can live without it or that you'll have an opportunity to get it back.

There are a handful of timed situations in the story. When these occur, you will probably be well aware of the fact. If you feel threatened, save the game."

	Table of Basic Help Options (continued)
	title	subtable	description
	"Commands specific to this game"	--	"[story title] mostly uses commands standard in interactive fiction, so someone familiar with these should be at ease. The chief exceptions have to do with navigation and communicating with other characters.

INVENTORY TALL, INVENTORY WIDE and INVENTORY UTILITARIAN change the way inventory listing is presented. By default, the inventory list is set to utilitarian, presenting your possessions in two groups (tools and other things), and alphabetizing the output.

In a location, LOOK CAREFULLY will print the room description with object names in bold. If you would like to experience the whole game this way, try HIGHLIGHTING ON.

GO TO a location will take us to the place named, even if that's some distance away.

EXITS will list the currently available exits as text. You should also be able to see these in the compass rose of the graphical window, assuming you are using one.

Sometimes you will recollect things. MEMORIES will list currently available memories, and REMEMBER will play the results.

TALK TO GIRL or GIRL, HELLO will start a conversation with a person who isn't already talking to us.

ASK ABOUT or TELL ABOUT let us talk about subjects that interest us, once the conversation has started. ASK GIRL ABOUT CHECKERS or TELL GIRL ABOUT ME will work, as will the more abbreviated forms ASK ABOUT CHECKERS, TELL ABOUT ME, or even just A CHECKERS and T ME.

There will sometimes be prompts, like 'You could ask about whether margarine is better than butter.', in which case ASK WHETHER MARGARINE IS BETTER THAN BUTTER will work, but so will a shorter subset like ASK ABOUT BUTTER, as long as it uniquely identifies the question you want to ask. The topics listed during a conversation are not the complete list of available things to say, just the list of things that seem most relevant at the moment.

If you'd like to play in hard mode, with some alternate puzzle solutions removed and other puzzles changed entirely, type HARD during the first few rooms of the game. After that point, it is too late to qualify for hard mode, and you'll need to restart if you wish to activate it."
	"Testing Credits"	--	"I had a great team of testers to work over the gameplay: Sam Kabo Ashwell, Richard Evans, John Ferguson, Admiral Jota, Jacqueline A. Lott, Kate McKee, Jim Munroe, Mark Musante, Chris Nelson, Graham Nelson, Peter Nelson, Toby Nelson, Zach Samuels, and David Welbourn. As well as catching many errors, the team suggested additional responses and easter eggs, provided valuable help with puzzle design and story development, and offered moral support.

I am indebted to the following players for suggestions and bug reports that affected subsequent releases: Draconis, dydt, Guy, Joe, Josh, Matthias, Malor, Weeble, Bruce Addison, Lea Albaugh, Sam Barlow, Sasha Beker, Josiah Boning, Taus Brock-Nannestad, Matthew Carson, Liza Daly, Justin de Vesine, Jason Dyer, Dan Fabulich, Jeremy Freese, Stephen Granade, Admiral Jota, Jacqueline A. Lott, Chris Martens, Jason McIntosh, Megazver, Adam Milecki, Carl Muckenhoupt, Jim Munroe, William O'Neill, Greg Pallis, Karl Parakenings, Q. Pheevr, Sam Piip, Dan Q, Matthew Rees, Sean M. Shore, David Simon, Lucian P. Smith, Michael Sokolov, David Steltzer, Adam Thornton, Matt Weiner, David Welbourn, Matthias Wenigweiser.

Any remaining flaws are my fault alone."
	"Other Credits"	--	"Counterfeit Monkey uses Inform extensions by Graham Nelson, David Fisher, Aaron Reed, Jim Aikin, Gavin Lambert, Jon Ingold, and Jeff Sheets. To read a complete list of these extensions and their version information, type VERSION at the command line.

A number of other IF community members helped me trouble-shoot specific issues. Jason Dyer worked over one specific easter egg for me. Andrew Hunter and Andrew Plotkin diagnosed a problem running the game under Git. Dannii Willis and Ben Cressey helped with figuring out why UNDO wasn't working on Gargoyle. Graham Nelson provided a hashing solution that made object name comparisons run a great deal faster as the number of objects in the game climbed over 1500. Their assistance is much appreciated.

The in-game maps use a variety of readily available fonts. Some of the more esoteric of these came from the HP Lovecraft Historical Society Font Pack.

My sister created the Atlantida poster.

There are three cameo appearances by IF community members (or their alter egos). These people bid for the opportunity to appear, as part of a fundraiser for a heart surgery patient who was without medical insurance. They are Mark Musante, John Ferguson, and Kate McKee, and I wish to thank them again for their generosity."
	"Contacting the author"	--	"Emily Short can be reached at emshortif@gmail.com. Her website, at http://emshort.wordpress.com, contains more information about this and other interactive fiction.

Please report bugs at https://github.com/i7/counterfeit-monkey/issues"


Section 4 - Resurrection

[In versions 1-4 of the game, it was possible to die instantly in assorted ways. On an interpreter with working UNDO, it was possible to take this turn back, but a) some novice players may not realize this and b) some interpreters choked on trying to undo things given how very large the game state is.]

To undo a turn:
	(- Perform_Undo(); -).

When play ends when the story has not ended finally:
	wait for any key;
	say "That is, that's what would have happened if [we] had done something so foolish. Shall we suppose [we] didn't? >";
	if the player consents:
		if the turn count is greater than 1:
			say "[line break]";
			undo a turn;
		otherwise:
			resume the story;
		try looking.

Counterfeit Presentation Details ends here.