Version 10/161003 of Simple Graphical Window (for Glulx only) by Emily Short begins here.

"Provides a graphics window in one part of the screen, in which the author can place images; with provision for scaling, tiling, or centering images automatically. Glulx only."

[ Version 10 updated by Dannii Willis to build off Flexible Windows ]

Use authorial modesty.

Include version 15/160929 of Flexible Windows by Jon Ingold.



Chapter - The graphics window

The graphics window is a graphics g-window.
The graphics window is spawned by the main window.

When play begins (this is the graphics window construction rule):
	if glulx graphics is supported:
		open the graphics window;

Rule for refreshing the graphics window (this is the automatic graphics window refreshing rule):
	follow the current graphics drawing rule;



Chapter - Graphics drawing rules

The current graphics drawing rule is a rule variable.
The current graphics drawing rule is the bland graphics drawing rule.

The currently shown picture is a figure-name variable.

[ These two rules fill with the background color ]
This is the bland graphics drawing rule:
	clear the graphics window;

This is the standard placement rule:
	clear the graphics window;
	draw the currently shown picture in the graphics window;

[ Don't fill the window, potentially overlapping previous images ]
This is the centered scaled drawing rule:
	draw the currently shown picture in the graphics window;

[ These two rules clear the window for the sake of performance ]
This is the fully scaled drawing rule:
	clear the graphics window;
	draw the currently shown picture in the graphics window, fully scaled;

This is the tiled drawing rule:
	tile the currently shown picture in the graphics window;



Chapter - Phrases for manually drawing images

To decide what number is the height of (image - a figure-name):
	(- SGW_ImageSize( {image}, 1 ) -).

To decide what number is the width of (image - a figure-name):
	(- SGW_ImageSize( {image}, 0 ) -).

Include (-  
[ SGW_ImageSize image index;
	glk_image_get_info( ResourceIDsOfFigures-->image, gg_arguments, gg_arguments + WORDSIZE );
	return gg_arguments-->index;
];
-).

To draw (image - a figure-name) in (win - a graphics g-window), fully scaled:
	[ Measure the image]
	let image height be the height of image;
	let image width be the width of image;
	[ Measure the window ]
	let window height be the height of win;
	let window width be the width of win;
	let x offset be 0;
	let y offset be 0;
	let final height be window height;
	let final width be window width;
	if not fully scaled:
		now final height is image height;
		now final width is image width;
		[ Check if the image will fit or scale it to fit ]
		if final height > window height:
			now final width is final width * ( ( 1.0 * window height ) / final height ) to the nearest whole number;
			now final height is window height;
		if final width > window width:
			now final height is final height * ( ( 1.0 * window width ) / final width ) to the nearest whole number;
			now final width is window width;
		now x offset is ( window width - final width ) / 2;
		now y offset is ( window height - final height ) / 2;
	draw image in win at x x offset and y y offset scaled to width final width and height final height;

To tile (image - a figure-name) in (win - a graphics g-window):
	[ Clear the window for performance sake ]
	clear the graphics window;
	[ Measure the image]
	let image height be the height of image;
	let image width be the width of image;
	[ Measure the window ]
	let window height be the height of win;
	let window width be the width of win;
	let x be 0;
	let y be 0;
	while x < window width:
		now y is 0;
		while y < window height:
			draw image in win at x x and y y;
			increase y by image height;
		increase x by image width;

To draw (image - a figure-name) in (win - a graphics g-window) at x (x - a number) and y (y - a number):
	(- glk_image_draw( {win}.(+ ref number +), ResourceIDsOfFigures-->( {image} ), {x}, {y} ); -).

To draw (image - a figure-name) in (win - a graphics g-window) at x (x - a number) and y (y - a number) scaled to width (width - a number) and height (height - a number):
	(- glk_image_draw_scaled( {win}.(+ ref number +), ResourceIDsOfFigures-->( {image} ), {x}, {y}, {width}, {height} ); -).



Chapter - Some deprecated phrases

To decide what number is current graphics window height (deprecated):
	decide on the height of the graphics window;

To decide what number is current graphics window width (deprecated):
	decide on the width of the graphics window;

To draw (image - a figure-name) from (x - a number) by (y - a number) to (width - a number) by (height - a number) (deprecated):
	(- glk_image_draw_scaled( (+ graphics window +).(+ ref number +), ResourceIDsOfFigures-->( {image} ), {x}, {y}, {width}, {height} ); -).



Simple Graphical Window ends here.



---- Documentation ----

Simple Graphical Window builds on Flexible Windows to provide some rules for different ways of drawing in graphics windows. This extension creates a window called the graphics window, which may be positioned as usual per Flexible Windows.

**** Rules for drawing in windows ****

Whenever Inform needs to re-fill the window -- at the start of the game, or when a saved game is restored, or when the player resizes the window manually -- Simple Graphical Window will follow a rule that varies, the "current graphics drawing rule". The author may set this to any of the following:

	(1) (The default) The bland graphics drawing rule. Blanks the window to the background color and does nothing else. 

	(2) The standard placement rule. The standard placement rule fills the window with a background color, then draws "the currently shown picture" (a figure-name that varies, and which the author can reset during the game). The picture is centered in the available screen space, unless it is too large, in which case it is scaled down proportionally to fit. A picture is never scaled up, on the grounds that upscaling images usually produces unattractively fuzzy results. Note that this and rules 2-4 will all behave incorrectly if we don't have at least one figure defined in our game source. In that case, see rule 5.

	(3) The centered scaled drawing rule. Same as the standard placement rule, except that it does not fill the window with a background color first. This means that if there is something previously printed in the graphics window, this may overlap it.

	(4) The fully scaled drawing rule. Fills the window completely with the currently shown picture, regardless of proportion. This is unlikely to look good with images of any complexity, but is included for the sake of completeness.

	(5) The tiled drawing rule. Tiles the currently shown picture to fill the available space horizontally and vertically.

To set this rule at the beginning, we would write a before starting the virtual machine rule:

	Before starting the virtual machine:
		now the current graphics drawing rule is the bland graphics drawing rule;

It is important to use the "starting the virtual machine" activity because this occurs before the first window drawing happens; where as a "when play begins" may run after the graphics window has already been opened.

If we need to redraw the image in the window, we can write 

	follow the current graphics drawing rule;

For instance if we were adding an image to the screen every time the player moved, we might write something like

	Carry out looking:
		now currently shown picture is the room illustration of the location;
		follow the current graphics drawing rule;

... where the room illustration is defined for each room in the game. (The extension "Location Images" implements this idea in full.)

The author may also create other drawing rules of his own devising and make any of these the current graphics drawing rule, as needed. It will probably be necessary to specify graphics drawing rules in Inform 6 unless the author intends a fairly simple combination of the rules already provided here; for more information about graphics drawing in Glulx, see

	http://adamcadre.ac/gull/

In writing these rules, it's worth bearing in mind that the rule should be able to reconstruct the entire contents of the graphics window every time it is called, rather than relying on things drawn there during previous moves; otherwise, the graphics window will not redraw properly when the game is reloaded or a turn is undone.



Example: * Mondrian - A strip of randomly varying color along the left edge of the screen 

	*: "Mondrian"

	Include Simple Graphical Window by Emily Short.

	Stark Room is a room.
	
	The measurement of the graphics window is 10. The position of the graphics window is g-placeleft.
	
	Before starting the virtual machine:
		now the current graphics drawing rule is the bland graphics drawing rule.
	
	Table of Common Color Values 
	name	value
	"red"	"$0000FF"
	"green"	"$00FF00"
	"yellow"	"$00FFFF"
	"cyan"	"$FFFF00"
	"magenta"	"$FF00FF"
	"blue"	"$FF0000"
	"royal blue"	"$AA0000"
	
	Every turn:
		if glulx graphics is supported:
			choose a random row in the Table of Common Color Values;
			now the background color of the graphics window is the value entry;
			follow the current graphics drawing rule.	
	
	Test me with "z / z / z / z / z / z".