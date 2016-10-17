Version 1/160919 of Glulx Definitions (for Glulx only) by Dannii Willis begins here.

"Core definitions which other Glulx/Glk extensions depend on"

Use authorial modesty.



Chapter - Testing interpreter features (gestalts)

Include (-

[ GD_GlulxGestalt sel arg res;
	@gestalt sel arg res;
	return res;
];
-).

To decide what number is the glulx version:
	(- GD_GlulxGestalt( 0 ) -).

To decide what number is the interpreter version:
	(- GD_GlulxGestalt( 1 ) -).

To decide whether glulx memory resizing is supported:
	(- GD_GlulxGestalt( 2 ) -).

To decide whether glulx undo is supported:
	(- GD_GlulxGestalt( 3 ) -).

To decide whether glulx memory copying is supported:
	(- GD_GlulxGestalt( 6 ) -).

To decide whether glulx malloc is supported:
	(- GD_GlulxGestalt( 7 ) -).

To decide whether glulx function acceleration is supported:
	(- GD_GlulxGestalt( 9 ) -).

To decide whether glulx real numbers are supported:
	(- GD_GlulxGestalt( 11 ) -).



To decide what number is the glk version:
	(- glk_gestalt( gestalt_Version, 0 ) -).

To decide whether glk/glulx character input is supported:
	(- glk_gestalt( gestalt_CharInput, 0 ) -).

To decide whether glk/glulx line input is supported:
	(- glk_gestalt( gestalt_LineInput, 0 ) -).

To decide whether glk/glulx mouse input is supported:
	(- glk_gestalt( gestalt_MouseInput, 0 ) -).

To decide whether glk/glulx graphic-window mouse input is supported:
	(- glk_gestalt( gestalt_MouseInput, winType_Graphics ) -).

To decide whether glk/glulx text-grid mouse input is supported:
	(- glk_gestalt( gestalt_MouseInput, winType_TextGrid ) -).

To decide whether glk/glulx timekeeping is supported:
	(- glk_gestalt( gestalt_Timer, 0 ) -).

To decide whether glk/glulx graphics are/is supported:
	(- glk_gestalt( gestalt_Graphics, 0 ) -).

To decide whether glk/glulx text-buffer graphics are/is supported:
	(- glk_gestalt( gestalt_DrawImage, winType_TextBuffer ) -).

To decide whether glk/glulx graphic-window graphics are/is supported:
	(- glk_gestalt( gestalt_DrawImage, winType_Graphics ) -).

To decide whether glk/glulx basic/-- sounds/sound are/is supported:
	(- glk_gestalt( gestalt_Sound, 0 ) -).

To decide whether glk/glulx sound volume is supported:
	(- glk_gestalt( gestalt_SoundVolume, 0 ) -).

To decide whether glk/glulx sound notification is supported:
	(- glk_gestalt( gestalt_SoundNotify, 0 ) -).

To decide whether glk/glulx hyperlinks are supported:
	(- glk_gestalt( gestalt_Hyperlinks, 0 ) -).

To decide whether glk/glulx hyperlink input is supported:
	(- glk_gestalt( gestalt_HyperlinkInput, 0 ) -).

To decide whether glk/glulx mod sound is supported:
	(- glk_gestalt( gestalt_SoundMusic, 0 ) -).

To decide whether glk/glulx PNG transparency is supported:
	(- glk_gestalt( gestalt_GraphicsTransparency, 0 ) -).

To decide whether glk/glulx unicode is supported:
	(- glk_gestalt( gestalt_Unicode, 0 ) -).

To decide whether glk/glulx unicode normalization is supported:
	(- glk_gestalt( gestalt_UnicodeNorm, 0 ) -).

To decide whether glk/glulx line input echo suppression is supported:
	(- glk_gestalt( gestalt_LineInputEcho, 0 ) -).

To decide whether glk/glulx line input terminators are supported:
	(- glk_gestalt( gestalt_LineTerminators, 0 ) -).

To decide whether the/-- glk/glulx system clock is supported:
	(- glk_gestalt( gestalt_DateTime, 0 ) -).

To decide whether glk/glulx sounds are fully supported:
	(- glk_gestalt( gestalt_Sound2, 0 ) -).

To decide whether glk/glulx resource streams are supported:
	(- glk_gestalt( gestalt_ResourceStream, 0 ) -).

To decide whether glk/glulx graphics window character input is supported:
	(- glk_gestalt( gestalt_GraphicsCharInput, 0 ) -).



Chapter - Glulx and Glk kinds

Section - Events

A g-event is a kind of value.
The specification of a g-event is "The interpreter sends player actions as events".
The g-events are timer-event,
	char-event,
	line-event,
	mouse-event,
	arrange-event,
	redraw-event,
	sound-notify-event,
	hyperlink-event,
	volume-event.

[ Events which occur due to player actions are dependent on the player; all others are independent ]
Definition: a g-event is dependent on the player rather than independent of the player if
	it is char-event or
	it is line-event or
	it is mouse-event or
	it is hyperlink-event.

To decide which g-event is null-event:
	(- 0 -).



Glulx Definitions ends here.



---- Documentation ----

This extension is a low level utility library containing core defintions for the Glulx and Glk systems.

This extension is released under the Creative Commons Attribution licence. Bug reports, feature requests or questions should be made at <https://github.com/i7/extensions/issues>.



Chapter: Testing interpreter features (gestalts)

We can test whether the player's interpreter supports various multimedia features using the following phrases:

	Table of interpreter functions
	the glulx version	(a number) the version of the Glulx standard the interpreter implements
	the glk version	(a number) the version of the Glk standard the interpreter implements
	the interpreter version	(a number) the interpreter's own version number
	if glulx memory resizing is supported
	if glulx undo is supported
	if glulx memory copying is supported
	if glulx malloc is supported
	if glulx function acceleration is supported
	if glulx real numbers are supported
	if glk/glulx character input is supported
	if glk/glulx line input is supported
	if glk/glulx mouse input is supported	whether any clicks at all can be detected
	if glk/glulx graphic-window mouse input is supported
	if glk/glulx text-grid mouse input is supported
	if glk/glulx timekeeping is supported	whether the Glk timer can be set for one-off or periodic events
	if glk/glulx graphics are/is supported	whether any graphics at all are supported
	if glk/glulx text-buffer graphics are/is supported
	if glk/glulx graphic-window graphics are/is supported
	if glk/glulx basic sounds are supported	whether any sounds can be played
	if glk/glulx sound volume is supported	whether the volume can be controlled
	if glk/glulx sound notification is supported	whether an event will be raised when a sound finishes playing
	if glk/glulx hyperlinks are supported
	if glk/glulx hyperlink input is supported
	if glk/glulx mod sound is supported	whether mod sounds can be played
	if glk/glulx PNG transparency is supported	whether it is possible to layer PNG images with transparent alpha channels
	if glk/glulx unicode is supported
	if glk/glulx unicode normalization is supported
	if glk/glulx line input echo suppression is supported
	if glk/glulx line input terminators are supported
	if the glk/glulx system clock is supported	whether the current time can be obtained
	if glk/glulx sounds are fully supported
	if glk/glulx resource streams are supported
	if glk/glulx graphics window character input is supported	whether character input is supported in graphics windows

You can test these at the start of play to warn the player if their interpreter does not support something your story uses. It is highly recommended that you also test them each time you use one of these features, because the player may have restored a savefile in a different interpreter, and what used to be supported may not be any longer.