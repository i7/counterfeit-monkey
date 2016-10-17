Version 3/161003 of Graphic Links (for Glulx only) by Jeff Sheets begins here.

"Allows the author to set hyperlinks in the Simple Graphical Window and give instructions about what is to result from performing them."

Include version 10/161003 of Simple Graphical Window by Emily Short.

Part 1 - Glulx Gestalts

To decide whether glulx graphic-window hyperlinks are supported:
	(- ( glk_gestalt(gestalt_MouseInput, winType_Graphics) ) -)

Part 2 - Basic Input

The last when play begins rule (this is the start looking for graphlinks rule):
	start looking for graphlinks.

To start looking for graphlinks:
	(- SetGraphLink(); -)
	
A glulx mouse input rule (this is the default graphlink setting rule):
	perform glulx graphlink request.

To perform glulx graphlink request:
	(-  if (glk_gestalt(gestalt_MouseInput, winType_Graphics)) DoGraphLink(); -)

To cancel input in main window:
	(- 	glk_cancel_line_event(gg_mainwin, GLK_NULL); glk_cancel_char_event(gg_mainwin); -)

Include (-
 [ DoGraphLink;
	SetGraphLink(); 
	playGraphlink(gg_event-->2, gg_event-->3);
 ]; 

[ playGraphlink x y;
	(+ current graphlink x +) = x;
	(+ current graphlink y +) = y;
	FollowRulebook( (+ clicking graphlink rules +) );
];

[ SetGraphLink ;
	if ( GetEitherOrProperty( (+ graphics window +), (+ g-present +) ) )
	{
		if (glk_gestalt(gestalt_MouseInput, winType_Graphics)) glk_request_mouse_event( (+ graphics window +).(+ ref number +) );
	}
];

-)


Part 3 - Clicking Graphlink Rules

The clicking graphlink rules are a rulebook.

Current graphlink x is a number that varies.
Current graphlink y is a number that varies.

A clicking graphlink rule (this is the default command replacement by graphlinks rule):  
	repeat through the Table of Graphlink Glulx Replacement Commands in reverse order:
		if the current graphlink x >= p-left entry and the current graphlink x <= p-right entry and the current graphlink y >= p-top entry and the current graphlink y <= p-bottom entry:
			cancel input in main window;
			now the glulx replacement command is replacement entry;
			rule succeeds;
	now glulx replacement command is "".

Part 4a (for use without Graphical Window Sprites by Erik Temple)

To set a graphlink identified as (newlinkid - some text) from (gleft - a number) by (gtop - a number) to (gright - a number) by (gbottom - a number) as (linkaction - some text):
	if there is a linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands:
		choose row with linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now replacement entry is linkaction;
	otherwise if the number of blank rows in the Table of Graphlink Glulx Replacement Commands is greater than 0:
		choose a blank row in the Table of Graphlink Glulx Replacement Commands;
		now linkid entry is newlinkid;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now replacement entry is linkaction.

To clear the graphlink identified as (dellinkid - some text):
	if there is a linkid of dellinkid in the Table of Graphlink Glulx Replacement Commands:
		choose row with linkid of dellinkid in the Table of Graphlink Glulx Replacement Commands;
		blank out the whole row.

Table of Graphlink Glulx Replacement Commands
linkid	p-top	p-bottom	p-left	p-right	replacement
some text	a number	a number	a number	a number	some text
with 25 blank rows

Part 4b (for use with Graphical Window Sprites by Erik Temple)

To set a graphlink identified as (newlinkid - a sprite) from (gleft - a number) by (gtop - a number) to (gright - a number) by (gbottom - a number) as (linkaction - some text):
	if there is a linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands:
		choose row with linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now replacement entry is linkaction;
	otherwise if the number of blank rows in the Table of Graphlink Glulx Replacement Commands is greater than 0:
		choose a blank row in the Table of Graphlink Glulx Replacement Commands;
		now linkid entry is newlinkid;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now replacement entry is linkaction.

To clear the graphlink identified as (dellinkid - a sprite):
	if there is a linkid of dellinkid in the Table of Graphlink Glulx Replacement Commands:
		choose row with linkid of dellinkid in the Table of Graphlink Glulx Replacement Commands;
		blank out the whole row.

Table of Graphlink Glulx Replacement Commands
linkid (sprite)	p-top (a number)	p-bottom (a number)	p-left  (a number)	p-right (a number)	replacement (some text)
with 25 blank rows


Graphic Links ends here.

---- Documentation ----

Graphic Links allows us to apply actions to rectangular regions of the graphical window provided by Emily Short's Simple Graphical Window.  Two phrases can be used to maintain the list of graphlinks.

	set a graphlink identified as "myLink" from 0 by 0 to 10 by 10 as "wait";
	clear the graphlink identified as "myLink".

The first line adds a graphlink called "myLink" to the table of graphlinks.  This link will reproduce the wait command, and is active in the square area from 0,0 (the top left corner) to 10,10 (implying a size of 11 pixels by 11 pixels).  The order of the coordinates is Top by Left to Bottom by Right.

One can create much more complex graphlink rules by adding custom rules to the clicking graphlink rulebook.  The default, however, allows us to use the previously mentioned phrases to set up simpler graphlinks. As an example of how to construct such a rule, the following is provided:

	The first clicking graphlink rule (this is the up graphlink rule):  
		choose row with arrowcode of "U" in the Table of arrow offsets;
		if current graphlink x >= xoffset entry and current graphlink x <= xmax entry and current graphlink y >= yoffset entry and current graphlink y <= ymax entry
		begin;
			if the room up from the location is not nothing
			begin;
				now the glulx replacement command is "up";
				rule succeeds;
			end if;
		end if;
		now the glulx replacement command is "".

The system assumes that space for 25 graphlinks is sufficeint for most purposes, but one can always use something like the following to increase the number of graphlinks available:

	Table of Graphlink Glulx Replacement Commands (continued)
	linkid	p-top	p-bottom	p-left	p-right	replacement
	with 25 blank rows

This example would increase the number of available graphlinks to 50.  Note that this table has nothing to do with any custom rules added to the clicking graphlink rulebook.

