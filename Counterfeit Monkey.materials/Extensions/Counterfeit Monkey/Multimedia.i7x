Multimedia by Counterfeit Monkey begins here.

Use authorial modesty.

Include version 10 of Simple Graphical Window by Emily Short.
Include Graphic Links by Jeff Sheets.



Part 2 - Multimedia

Chapter - The graphics window

The background color of the graphics window is [000000] "0".
The measurement of the graphics window is 50.
A g-window has a number called maximum size.
The maximum size of the graphics window is 722.
The position of the graphics window is g-placeleft.

The graphics window construction rule is not listed in any rulebook.

Before refreshing the graphics window (this is the adjust the graphics window to accommodate the map rule):
	if glulx graphics is supported:
		adjust width of the graphics window;
	continue the activity.

[ The measuring window is used to measure to total width of the game window in pixels. This lets us adjust the width of the graphics window properly. ]
The measuring window is a graphics g-window spawned by the main window.
The position of the measuring window is g-placebelow.
The measurement of the measuring window is 0.

When play begins (this is the open the measuring window rule):
	if glulx graphics is supported:
		open the measuring window.

Map-ratio is a real number that varies.
Map-ratio is initially 0.8395. [I guess this is how we do "constants" in Inform 7.]

Ideal-width is a number that varies.

To force the size of (win - a g-window) to (size - a number ):
	(- glk_window_set_arrangement( glk_window_get_parent( {win}.(+ ref number +) ), {win}.(+ position +) + 14, {size}, GLK_NULL ); -).

To adjust width of the graphics window:
	let original width be the width of the graphics window;
	now ideal-width is the width of the measuring window / 2;
	if ideal-width > the maximum size of the graphics window:
		now ideal-width is maximum size of the graphics window;
	[ Currently maximum size of the graphics window is 722 pixels. This is large enough to never happen on most screens. ]
	let real-ideal be 0.0;
	now real-ideal is ideal-width;
	let ratio be real-ideal divided by the height of the graphics window;
	if ratio > map-ratio: [ Too low to show the entire map when scaled to window width ]
		now ideal-width is (height of graphics window * map-ratio) to the nearest whole number;
	if ideal-width is not original width: [ The width has changed ]
		force the size of graphics window to ideal-width.

When identification ends (this is the open the graphics window rule):
	if glulx graphics is supported:
		let main-width be the width of the main window;
		let measure-width be the width of the measuring window;
		unless graphics is disabled or main-width is less than 41 or measure-width is less than 405:
			now current graphics drawing rule is the compass-drawing rule;
			open the graphics window;
			start looking for graphlinks.

A glulx input handling rule for an arrange-event (this is the update the status line after arranging rule):
	update the status line.


Chapter 1 - Images

Section 1 - Compass Rose

[The aim of the graphics is to provide the player with visual orientation. We don't ever want the player to feel lost or to feel pressure to take notes. With a large game space, this is a challenge to achieve. Even though Bronze provided GO TO and FIND commands *and* came with a manual with a pre-drawn map, a number of players reported making maps of their own. This was a failure. Note-taking should be completely unnecessary unless the player happens to enjoy map-making for some reason.

The map concept borrows from commercial game minimaps that show goal locations as the player progresses.

Like the compass rose in Bronze, the compass rose here shows exits in different shades depending on whether the rooms in those directions have already been visited. The compass is also hyperlinked so that the player can click on it as an alternative to typing directions. ]

Figure of northwest is the file "white-nw.png" ("northwest").
Figure of north is the file "white-n.png" ("north").
Figure of northeast is the file "white-ne.png" ("northeast").
Figure of west is the file "white-w.png" ("west").
Figure of east is the file "white-e.png" ("east").
Figure of southwest is the file "white-sw.png" ("southwest").
Figure of south is the file "white-s.png" ("south").
Figure of southeast is the file "white-se.png" ("southeast").
Figure of up is the file "white-u.png" ("up").
Figure of down is the file "white-d.png" ("down").

Figure of new northwest is the file "blue-nw.png" ("unvisited northwest").
Figure of new north is the file "blue-n.png" ("unvisited north").
Figure of new northeast is the file "blue-ne.png" ("unvisited northeast").
Figure of new west is the file "blue-w.png" ("unvisited west").
Figure of new east is the file "blue-e.png" ("unvisited east").
Figure of new southwest is the file "blue-sw.png" ("unvisited southwest").
Figure of new south is the file "blue-s.png" ("unvisited south").
Figure of new southeast is the file "blue-se.png" ("unvisited southeast").
Figure of new up is the file "blue-u.png" ("unvisited up").
Figure of new down is the file "blue-d.png" ("unvisited down").

Figure of fore-port is the file "white-fp.png" ("fore-port").
Figure of fore is the file "white-f.png" ("fore").
Figure of fore-starboard is the file "white-fsb.png" ("fore-starboard").
Figure of port is the file "white-p.png" ("port").
Figure of starboard is the file "white-sb.png" ("starboard").
Figure of aft-port is the file "white-ap.png" ("aft-port").
Figure of aft is the file "white-a.png" ("aft").
Figure of aft-starboard is the file "white-asb.png" ("aft-starboard").

Figure of new fore-port is the file "blue-fp.png" ("unvisited fore-port").
Figure of new fore is the file "blue-f.png" ("unvisited fore").
Figure of new fore-starboard is the file "blue-fsb.png" ("unvisited fore-starboard").
Figure of new port is the file "blue-p.png" ("unvisited port").
Figure of new starboard is the file "blue-sb.png" ("unvisited starboard").
Figure of new aft-port is the file "blue-ap.png" ("unvisited aft-port").
Figure of new aft is the file "blue-a.png" ("unvisited aft").
Figure of new aft-starboard is the file "blue-asb.png" ("unvisited aft-starboard").

Figure of center-squiggle is the file "center-squiggle.png" ("center silcrow").


[The following is a hack. Originally the figure name associations were all properties of the direction objects, but some sort of memory bug happened when image properties were added to the nautical directions. The result was that the map itself was reconfigured weirdly -- for instance, Slango's Head was declared in source to be aft from Slango's Bunk, but in the game model it would be port of Slango's Bunk instead.]

A direction has a number called x-coordinate. A direction has a number called y-coordinate.

The compass width is a number that varies. The compass width is 120.

To establish compass graphlinks:
	let ZE be grid-margin;
	let D be grid-size;
	let DD be 2 * D;
	let DDD be compass width;
	let graphics window height be the height of the graphics window;
	let top-edge be graphics window height - (D * 4);
	let upper-mid be top-edge + D;
	let lower-mid be top-edge + DD;
	let bottom-edge be graphics window height - D;
	let super-top be graphics window height - (D * 5);
	let true-bottom be graphics window height;
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

Report looking (this is the update compass after looking rule):
	redraw the map and compass.

[We want the compass to stay down in a corner of the screen and not to scale up too huge if the screen is resized. One of the irritating things about Glulx window management is that it's impossible to force an aspect ratio on the player, so I have no idea whether they're going to go tall-and-skinny or short-and-wide. Testers playing in full-screen mode sometimes found that the compass got way too large and encroached on the upper part of the map if I just set the compass to be one quarter the width of the window.]

To decide what number is grid-size:
	let width-quarter be (ideal-width / 4);
	let height-quarter be (the height of the graphics window / 4);
	if width-quarter is greater than height-quarter:
		now compass width is height-quarter;
	else:
		now compass width is width-quarter;
	let D be compass width / 3;
	decide on D;

To decide what number is grid-margin:
	decide on grid-size / 2.

This is the compass-drawing rule:
	if the graphics window is g-present:
		clear compass graphlinks; [We need to reset the graphlinks every time the player resizes the window, because if the height of the screen changes, the compass may move vertically.]
		establish compass graphlinks;
		redraw the map and compass;

[Layer the image: a black background to fill in the top of the screen; blue for the bottom half so that if the map is too small, it will still look blue at the edges; then the map itself, proportionally scaled as large as it can reasonably be given the window dimensions; then the compass, built from the current circumstances.

In theory, it would have been possible to make the map images carry the compass directions as well. In practice, that presented several problems: more difficult to cope with minor map changes during final revisions, inability to indicate which directions have already been explored.]

Figure of background colour is the file "map-background-colour.png".

To redraw the map and compass:
	if the graphics window is g-present:
		let total height be height of the graphics window;
		let scaled height be (ideal-width / map-ratio) to the nearest whole number;
		draw the local map of the location in graphics window at x 0 and y ((total height - scaled height) / 2) scaled to width ideal-width and height scaled height;
		[ Draw the blue background below the map and add a pixel to the height to ensure that odd heights don't leave a 1 pixel black line ]
		let padding height be (total height - scaled height) / 2 + 1;
		draw figure of background colour in graphics window at x 0 and y (((total height - scaled height) / 2) + scaled height) scaled to width ideal-width and height padding height;
		[ Draw a black square at the top to cover any artifacts left over after changing height ]
		draw a rectangle of color "$000000" in graphics window at x 0 and y 0 of width ideal-width and height (total height - scaled height) / 2;
		determine compass coordinates with window height total height;
		draw compass.


To determine compass coordinates with window height (height - a number):
	(- DetermineCompassCoordinates({height}, (+ compass width +), (+ grid-size +)); -).

To draw compass:
	(- DrawCompass((+ graphics window +).(+ ref number +),(+ grid-size +)); -).


Section 2 - Full-window map

Include (-

[ DetermineCompassCoordinates graphwin_height compass_width grid_size grid_margin
	ze d dd ddd te um lm bee;

	grid_margin = grid_size / 2;
	ze = 0;
	ze = ze + grid_margin;

	d = grid_size;

	dd = 2 * d;

	ddd = compass_width;
	te = graphwin_height - d * 4;

	um = te + d;
	lm = te + dd;

	bee = graphwin_height - d;

	d = d + grid_margin;
	dd = dd + grid_margin;
	ddd = ddd + grid_margin;

	! [15: now x-coordinate of up is ze]
	WriteGProperty(10, (+ up +), (+ x-coordinate +),ze);
	! [16: now y-coordinate of up is bee]
	WriteGProperty(10, (+ up +),(+ y-coordinate +),bee);
	! [17: now x-coordinate of down is dd]
	WriteGProperty(10, (+ down +),(+ x-coordinate +),dd);
	! [18: now y-coordinate of down is bee]
	WriteGProperty(10, (+ down +),(+ y-coordinate +),bee);
	! [19: now x-coordinate of fore-port is ze]
	WriteGProperty(10, (+ fore-port +),(+ x-coordinate +),ze);
	! [20: now y-coordinate of fore-port is te]
	WriteGProperty(10, (+ fore-port +),(+ y-coordinate +),te);
	! [21: now x-coordinate of fore is d]
	WriteGProperty(10, (+ fore +),(+ x-coordinate +),d);
	! [22: now y-coordinate of fore is te]
	WriteGProperty(10, (+ fore +),(+ y-coordinate +),te);
	! [23: now x-coordinate of fore-starboard is dd]
	WriteGProperty(10, (+ fore-starboard +),(+ x-coordinate +),dd);
	! [24: now y-coordinate of fore-starboard is te]
	WriteGProperty(10, (+ fore-starboard +),(+ y-coordinate +),te);
	! [25: now x-coordinate of port is ze]
	WriteGProperty(10, (+ port +),(+ x-coordinate +),ze);
	! [26: now y-coordinate of port is um]
	WriteGProperty(10, (+ port +),(+ y-coordinate +),um);
	! [27: now x-coordinate of starboard is dd]
	WriteGProperty(10, (+ starboard +),(+ x-coordinate +),dd);
	! [28: now y-coordinate of starboard is um]
	WriteGProperty(10, (+ starboard +),(+ y-coordinate +),um);
	! [29: now x-coordinate of aft-port is ze]
	WriteGProperty(10, (+ aft-port +),(+ x-coordinate +),ze);
	! [30: now y-coordinate of aft-port is lm]
	WriteGProperty(10, (+ aft-port +),(+ y-coordinate +),lm);
	! [31: now x-coordinate of aft is d]
	WriteGProperty(10, (+ aft +),(+ x-coordinate +),d);
	! [32: now y-coordinate of aft is lm]
	WriteGProperty(10, (+ aft +),(+ y-coordinate +),lm);
	! [33: now x-coordinate of aft-starboard is dd]
	WriteGProperty(10, (+ aft-starboard +),(+ x-coordinate +),dd);
	! [34: now y-coordinate of aft-starboard is lm]
	WriteGProperty(10, (+ aft-starboard +),(+ y-coordinate +),lm);
	! [35: now x-coordinate of northwest is ze]
	WriteGProperty(10, (+ northwest +),(+ x-coordinate +),ze);
	! [36: now y-coordinate of northwest is te]
	WriteGProperty(10, (+ northwest +),(+ y-coordinate +),te);
	! [37: now x-coordinate of north is d]
	WriteGProperty(10, (+ north +),(+ x-coordinate +),d);
	! [38: now y-coordinate of north is te]
	WriteGProperty(10, (+ north +),(+ y-coordinate +),te);
	! [39: now x-coordinate of northeast is dd]
	WriteGProperty(10, (+ northeast +),(+ x-coordinate +),dd);
	! [40: now y-coordinate of northeast is te]
	WriteGProperty(10, (+ northeast +),(+ y-coordinate +),te);
	! [41: now x-coordinate of west is ze]
	WriteGProperty(10, (+ west +),(+ x-coordinate +),ze);
	! [42: now y-coordinate of west is um]
	WriteGProperty(10, (+ west +),(+ y-coordinate +),um);
	! [43: now x-coordinate of east is dd]
	WriteGProperty(10, (+ east +),(+ x-coordinate +),dd);
	! [44: now y-coordinate of east is um]
	WriteGProperty(10, (+ east +),(+ y-coordinate +),um);
	! [45: now x-coordinate of southwest is ze]
	WriteGProperty(10, (+ southwest +),(+ x-coordinate +),ze);
	! [46: now y-coordinate of southwest is lm]
	WriteGProperty(10, (+ southwest +),(+ y-coordinate +),lm);
	! [47: now x-coordinate of south is d]
	WriteGProperty(10, (+ south +),(+ x-coordinate +),d);
	! [48: now y-coordinate of south is lm]
	WriteGProperty(10, (+ south +),(+ y-coordinate +),lm);
	! [49: now x-coordinate of southeast is dd]
	WriteGProperty(10, (+ southeast +),(+ x-coordinate +),dd);
	! [50: now y-coordinate of southeast is lm]
	WriteGProperty(10, (+ southeast +),(+ y-coordinate +),lm);
	rfalse;
];

[ VisitedImageOf way;
	switch (way)
	{
		(+ fore-port +):
		return (+ figure of fore-port +);

		(+ fore +):
			return (+ figure of fore +);

		(+ fore-starboard +):
			return (+ figure of fore-starboard +);

		(+ port +):
			return (+ figure of port +);

		(+ starboard +):
			return (+ figure of starboard +);

		(+ aft-port +):
			return (+ figure of aft-port +);

		(+ aft +):
			return (+ figure of aft +);

		(+ aft-starboard +):
			return (+ figure of aft-starboard +);

		(+ northwest +):
			return (+ figure of northwest +);

		(+ north +):
			return (+ figure of north +);

		(+ northeast +):
			return (+ figure of northeast +);

		(+ west +):
			return (+ figure of west +);

		(+ east +):
			return (+ figure of east +);

		(+ southwest +):
			return (+ figure of southwest +);

		(+ south +):
			return (+ figure of south +);

		(+ southeast +):
			return (+ figure of southeast +);

		(+ up +):
			return (+ figure of up +);

		 (+ down +):
			return (+ figure of down +);
	}

	return (+ figure of cover +);
];

[ UnvisitedImageOf way;
	switch (way)
	{
		(+ fore-port +):
		return (+ figure of new fore-port +);

		(+ fore +):
			return (+ figure of new fore +);

		(+ fore-starboard +):
			return (+ figure of new fore-starboard +);

		(+ port +):
			return (+ figure of new port +);

		(+ starboard +):
			return (+ figure of new starboard +);

		(+ aft-port +):
			return (+ figure of new aft-port +);

		(+ aft +):
			return (+ figure of new aft +);

		(+ aft-starboard +):
			return (+ figure of new aft-starboard +);

		(+ northwest +):
			return (+ figure of new northwest +);

		(+ north +):
			return (+ figure of new north +);

		(+ northeast +):
			return (+ figure of new northeast +);

		(+ west +):
			return (+ figure of new west +);

		(+ east +):
			return (+ figure of new east +);

		(+ southwest +):
			return (+ figure of new southwest +);

		(+ south +):
			return (+ figure of new south +);

		(+ southeast +):
			return (+ figure of new southeast +);

		(+ up +):
			return (+ figure of new up +);

		 (+ down +):
			return (+ figure of new down +);
	}

	return (+ figure of cover +);
];


[ DrawCompass graphwin grid_size x y way room;
	glk_image_draw_scaled( graphwin, ResourceIDsOfFigures-->( (+ figure of center-squiggle +) ), GProperty(10, (+ north +),(+ x-coordinate +)), GProperty(10, (+ west +),(+ y-coordinate +)), grid_size, grid_size);
	! repeat with way running through directions

	! Class K3_direction

	for (way=IK3_First: way: way=way.IK3_Link)
	{
		if (way ~= in_obj && way ~= out_obj)
		{
			room = MapConnection(real_location, way);
			if (room ~= nothing)
			{
				x = GProperty(10, way,(+ x-coordinate +));
				y = GProperty(10, way,(+ y-coordinate +));
				if (room has visited)
				{
					glk_image_draw_scaled( graphwin, ResourceIDsOfFigures-->(VisitedImageOf(way)), x, y, grid_size, grid_size);
				} else {
					glk_image_draw_scaled( graphwin, ResourceIDsOfFigures-->(UnvisitedImageOf(way)), x, y, grid_size, grid_size);
				}
			}
		}
	}
];


[ WaitForInputInGraphWin win done;
	done = false;
	if (win == -1) {
		rfalse;
	}
	if (glk_gestalt(gestalt_GraphicsCharInput, 0))
	{
		glk_request_char_event(win);
	}

	glk_request_mouse_event(win);
	while (~~done) {
		glk_select(gg_event);

		switch (gg_event-->0)
		{
			evtype_Arrange:
				DrawBigMap(win);
			evtype_CharInput:
				done = true;
			evtype_MouseInput:
				done = true;
		}
	}
	glk_cancel_char_event(win);
];

[ GraphwinOnly graphwin;
	glk_window_close(gg_mainwin, GLK_NULL);

	graphwin = glk_window_open(0, 0, 0, wintype_Graphics, GG_MAINWIN_ROCK);
	if (graphwin == -1)
		rfalse;

	DrawBigMap(graphwin);
	WaitForInputInGraphWin(graphwin);

	!close the graphics window;
	glk_window_close(graphwin, GLK_NULL);
];


[ DrawBigMap graphwin
	map_top
	ideal_width
	real_ideal
	real_height
	ratio
	scaled_height
	scaled_height_real
	half_height
	fullwidth
	fullheight
	map_ratio
	compass_width
	grid_size
	width_quarter
	height_sixth
	vertical_offset
	;

	map_top = 0;

	! let real-ideal be the width of the graphics window

	! Get the graphics window width
	glk_window_get_size(graphwin, gg_arguments, 0);
	fullwidth = gg_arguments-->0;
	real_ideal = NUMBER_TY_to_REAL_NUMBER_TY(fullwidth);
	ideal_width = fullwidth;

	! Get the graphics window height
	glk_window_get_size(graphwin, 0, gg_arguments);
	fullheight = gg_arguments-->0;

	! let real-height be the height of the graphics window * 1.21

	! This value is hand tuned (along with the 0.02 vertical_offset below
	! to minimize wasteful space at the top and bottom of the map
	! while still looking reasonably good at all sizes and ratios.
	! Looks less good on the yacht maps, though.

	! REAL_NUMBER_TY_Divide(1210, 1000) is 1067114824
	real_height = REAL_NUMBER_TY_Times(NUMBER_TY_to_REAL_NUMBER_TY(fullheight), 1067114824);
	ratio = REAL_NUMBER_TY_Divide(real_ideal, real_height);

	! REAL_NUMBER_TY_Divide(722, 860) is 1062660473
	map_ratio = 1062660473;

	! Check if the window is wider than the map

	! if ratio > map_ratio
	if (REAL_NUMBER_TY_Compare(ratio, map_ratio) > 0)
	{
		real_ideal = REAL_NUMBER_TY_Times(real_height, map_ratio);
		ideal_width = REAL_NUMBER_TY_to_NUMBER_TY(real_ideal);
		map_top = -1;
	}

	scaled_height_real = REAL_NUMBER_TY_Divide(real_ideal, map_ratio);
	scaled_height = REAL_NUMBER_TY_to_NUMBER_TY(scaled_height_real);

	vertical_offset = 0;
	map_top = IntegerDivide(fullheight - scaled_height, 2);
	half_height = IntegerDivide(fullheight, 2) + 1;

	if (map_top <= 0)
	{
		! The window is wider than the map

		! 0.02 REAL_NUMBER_TY_Divide(2, 100) is 1017370378
		vertical_offset = REAL_NUMBER_TY_to_NUMBER_TY(REAL_NUMBER_TY_Times(scaled_height_real, 1017370378));

		map_top = map_top - vertical_offset;

		! fill window with blue background colour
		glk_image_draw_scaled(graphwin, ResourceIDsOfFigures-->( (+ figure of background colour +) ), 0, 0, fullwidth, fullheight);
	} else {

		! The window is narrower than the map

		! draw rectangle of blue background colour
		glk_image_draw_scaled(graphwin, ResourceIDsOfFigures-->( (+ figure of background colour +) ), 0, half_height, fullwidth, half_height );

		! draw black rectangle
		glk_window_fill_rect( graphwin, 0 , 0, 0, fullwidth, half_height );
	}

	! draw the local map of the location
	glk_image_draw_scaled(graphwin, ResourceIDsOfFigures-->( GProperty(OBJECT_TY, real_location, (+ local map +) ) ), IntegerDivide(fullwidth - ideal_width, 2), map_top, ideal_width, scaled_height);

	! Calculate a reasonable size for the compass rose

	width_quarter = ideal_width / 4;
	height_sixth = fullheight / 6;

	if (width_quarter > height_sixth)
		compass_width = height_sixth;
	else
		compass_width = width_quarter;

	grid_size = compass_width / 3;

	DetermineCompassCoordinates(fullheight, compass_width, grid_size);
	DrawCompass(graphwin, grid_size);
];

-).

Seen-map is a truth state that varies. Seen-map is initially false.

Understand "map" as big-map-showing. Big-map-showing is an action out of world.

Carry out big-map-showing:
	unless glulx graphics is supported:
		say "[first custom style][bracket]This interpreter does not support displaying graphics.[close bracket][roman type][paragraph break]" instead;
	close the status window;
	close the measuring window;
	let was-showing-map be false;
	if the graphics window is g-present:
		now was-showing-map is true;
		close the graphics window;
	close all but graphwin;
	open the measuring window;
	reopen status;
	if was-showing-map is true:
		open the graphics window;
		adjust width of the graphics window;
		redraw the map and compass;
		start looking for graphlinks;
		now seen-map is true;
	try looking;
	if seen-map is false:
		say "[first custom style][bracket]You can open the map in a split window by typing MAP ON.[close bracket][roman type][paragraph break]";
		now seen-map is true.


To close all but graphwin:
	(-	GraphwinOnly(); -).

To reopen status:
	(-	if (gg_statuswin == 0) gg_statuswin = glk_window_open(gg_mainwin, winmethod_Fixed + winmethod_Above, 1, wintype_TextGrid, GG_STATUSWIN_ROCK); -).


Understand "inline map" and "in-line map" as inline-map-showing. Inline-map-showing is an action out of world.

Carry out inline-map-showing:
	unless glulx graphics is supported:
		say "[first custom style][bracket]This interpreter does not support displaying graphics.[close bracket][roman type][paragraph break]" instead;
	let was-showing-map be false;
	if the graphics window is g-present:
		now was-showing-map is true;
		close the graphics window;
	let scaled width be the width of the measuring window;
	let result be the result of displaying the local map of the location scaled to width scaled width and height scaled width / map-ratio to the nearest whole number;
	if result is 0:
		say "[first custom style][bracket]Failed to display inline map.[close bracket][roman type][line break]";
	if was-showing-map is true:
		if result is not 0:
			custom-wait for any key;
			say line break;
		open the graphics window;
		adjust width of the graphics window;
		redraw the map and compass;
		start looking for graphlinks.

To decide which number is the result of displaying (image - a figure-name) scaled to width (width - a number) and height (height - a number):
	(- glk_image_draw_scaled( gg_mainwin, ResourceIDsOfFigures-->( {image} ), imagealign_InlineDown, 0, {width}, {height} ); -).



Section 3 - Enabling and disabling the map

Understand "map on" or "graphics on" or "enable graphics" or "graphics" or "graphics mode" as enabling graphics. Enabling graphics is an action out of world.


Include (-

Array graphics_disabled --> 1;

-) after "Definitions.i6t".

To set graphics disabled flag:
	(- if (arrayAsMillisecs(totalTestStartTime) == 0) @protect graphics_disabled 4;
	graphics_disabled-->0 = 1; -)

[We can only have one restore and restart protected variable at a time, so skip protecting the graphics_disabled flag if we are measuring total play time.]

To unset graphics disabled flag:
	(- graphics_disabled-->0 = 0; -)

To decide whether graphics is disabled:
	(- graphics_disabled-->0 -).


Carry out enabling graphics:
	unless glulx graphics is supported:
		say "[first custom style][bracket]This interpreter does not support displaying graphics.[close bracket][roman type][paragraph break]" instead;
	if the graphics window is g-present:
		say "[first custom style][bracket]The map is already enabled.[close bracket][roman type][paragraph break]";
	otherwise:
		unless the measuring window is g-present:
			open the measuring window;
		now current graphics drawing rule is the compass-drawing rule;
		open the graphics window;
		start looking for graphlinks;
		unset graphics disabled flag;
		say "[first custom style][bracket]The map is now enabled. Type MAP OFF to turn it off again.[close bracket][roman type][paragraph break]".

Understand "map off" or "graphics off" or "text only" or "text mode" as disabling graphics. Disabling graphics is an action out of world.

Carry out disabling graphics:
	unless glulx graphics is supported:
		say "[first custom style][bracket]This interpreter does not support displaying graphics.[close bracket][roman type][paragraph break]" instead;
	add the teach disabling graphics rule to the completed instruction list, if absent;
	if the graphics window is g-present:
		close the graphics window;
		set graphics disabled flag;
		say "[first custom style][bracket]The map is now disabled. Type MAP ON to turn it back on, or just MAP to show it at full window size.[close bracket][roman type][paragraph break]";
	otherwise:
		say "[first custom style][bracket]The map is already disabled.[close bracket][roman type][paragraph break]".


Chapter 2 - Sounds

[Once upon a time, when this was a much smaller and more comedic game, I was going to have sound effects communicating successes and failures with the various letter-manipulating instruments. But then the tone of the game changed and the game itself got a lot longer, and it felt like the cuteness of this would wear off long before hour eight or so of play.

Also, not all interpreters support Glulx sound, so I would have had to commit to a lot of extra testing work in order to get anything done in this line.

Ultimately it didn't seem worth it and the sounds were scrapped from the gameplay. I did have a fun afternoon once picking royalty-free sounds from a special effects database, though.]

[Sound of record scratch is the file "scratch14.aif".
Sound of sudden growth is the file "maximize04.aif".
Sound of scope success is the file "organic_nav_16.aif".
Sound of scope failure is the file "hi-tech_05.aif".
Sound of gel splort is the file "pop_15.aif". ]


Multimedia ends here.
