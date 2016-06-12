Multimedia by Counterfeit Monkey begins here.

Use authorial modesty.


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

Multimedia ends here.