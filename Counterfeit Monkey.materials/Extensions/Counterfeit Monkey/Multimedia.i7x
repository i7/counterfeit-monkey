Multimedia by Counterfeit Monkey begins here.

Use authorial modesty.

Include version 10 of Simple Graphical Window by Emily Short.
Include Graphic Links by Jeff Sheets.



Part 2 - Multimedia

Chapter - The graphics window

The background color of the graphics window is [000000] "0".
The measurement of the graphics window is 50.
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
		unless graphics is disabled:
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

Figure of dim northwest is the file "grey-nw.png" ("dim northwest").
Figure of dim north is the file "grey-n.png" ("dim north").
Figure of dim northeast is the file "grey-ne.png" ("dim northeast").
Figure of dim west is the file "grey-w.png" ("dim west").
Figure of dim east is the file "grey-e.png" ("dim east").
Figure of dim southwest is the file "grey-sw.png" ("dim southwest").
Figure of dim south is the file "grey-s.png" ("dim south").
Figure of dim southeast is the file "grey-se.png" ("dim southeast").
Figure of dim up is the file "grey-u.png" ("dim up").
Figure of dim down is the file "grey-d.png" ("dim down").

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

Figure of dim fore-port is the file "grey-fp.png" ("dim fore-port").
Figure of dim fore is the file "grey-f.png" ("dim fore").
Figure of dim fore-starboard is the file "grey-fsb.png" ("dim fore-starboard").
Figure of dim port is the file "grey-p.png" ("dim port").
Figure of dim starboard is the file "grey-sb.png" ("dim starboard").
Figure of dim aft-port is the file "grey-ap.png" ("dim aft-port").
Figure of dim aft is the file "grey-a.png" ("dim aft").
Figure of dim aft-starboard is the file "grey-asb.png" ("dim aft-starboard").

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

To determine compass coordinates:
	let ZE be 0;
	increase ZE by grid-margin;
	let D be grid-size;
	let DD be 2 * D;
	let DDD be compass width;
	let graphics window height be the height of the graphics window;
	let TE be graphics window height - (D * 4);
	let UM be TE + D;
	let LM be TE + DD;
	let BEE be graphics window height - D;
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
		determine compass coordinates;
		draw Figure of center-squiggle in graphics window at x x-coordinate of north and y y-coordinate of west scaled to width grid-size and height grid-size;
		repeat with way running through directions:
			if the way is a listable exit and the way is not inside and the way is not outside:
				let X be the x-coordinate of way;
				let Y be the y-coordinate of way;
				if the room way from the location is visited:
					draw the visited image of the way in graphics window at x X and y Y scaled to width grid-size and height grid-size;
				otherwise:
					draw the unvisited image of the way in graphics window at x X and y Y scaled to width grid-size and height grid-size;

Understand "graphics on" or "enable graphics" or "graphics" or "graphics mode" as enabling graphics. Enabling graphics is an action out of world.

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
		say "[first custom style][bracket]Graphics are already enabled.[close bracket][roman type][paragraph break]";
	otherwise:
		unless the measuring window is g-present:
			open the measuring window;
		now current graphics drawing rule is the compass-drawing rule;
		open the graphics window;
		start looking for graphlinks;
		unset graphics disabled flag;
		say "[first custom style][bracket]Graphics are now enabled.[close bracket][roman type][paragraph break]".

Understand "graphics off" or "text only" or "text mode" as disabling graphics. Disabling graphics is an action out of world.

Carry out disabling graphics:
	unless glulx graphics is supported:
		say "[first custom style][bracket]This interpreter does not support displaying graphics.[close bracket][roman type][paragraph break]" instead;
	add the teach disabling graphics rule to the completed instruction list, if absent;
	if the graphics window is g-present:
		close the graphics window;
		set graphics disabled flag;
		say "[first custom style][bracket]Graphics are now disabled.[close bracket][roman type][paragraph break]";
	otherwise:
		say "[first custom style][bracket]Graphics are already disabled.[close bracket][roman type][paragraph break]".

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
