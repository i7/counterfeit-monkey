Version 1/260822 of Glk Mapping (for Glulx only) by Dan Fabulich begins here.

"Exposes the Glk mapping extension (gestalt_Map): present image maps, overlays, hyperlinks, focus, and map events."

Use authorial modesty.

Include Glulx Entry Points by Emily Short.



Chapter - Constants and gestalt

Include (-
Constant gestalt_Map = $1104;
Constant mapflag_None = 0;
Constant mapflag_HasFocus = 1;
Constant mapflag_SuggestShow = 2;
Constant mapflag_UserRequestedShow = 4;
Constant evtype_Map = $1105;
Constant mapevent_Hyperlink = 1;
Constant mapevent_UserHide = 2;
Constant glk_map_present_svg_sel = $1203;
Constant glk_map_close_sel = $1204;
Constant glk_map_set_focus_sel = $1205;
Constant glk_map_clear_focus_sel = $1206;
Constant glk_request_map_event_sel = $1207;
Constant glk_cancel_map_event_sel = $1208;
Constant glk_map_present_image_sel = $1209;
Constant glk_map_set_hyperlinks_sel = $120A;
Constant glk_map_overlay_sel = $120B;
Constant glk_map_overlay_move_sel = $120C;
Constant glk_map_overlay_clear_sel = $120D;
Constant glk_map_overlay_clear_all_sel = $120E;
Constant glk_map_fill_rect_sel = $120F;
-).

A map flag is a kind of value. The map flags are map-has-focus, map-suggest-show, map-user-requested-show.

To decide what number is the glk bit of (F - a map flag):
	if F is map-has-focus, decide on 1;
	if F is map-suggest-show, decide on 2;
	if F is map-user-requested-show, decide on 4;
	decide on 0.

To decide what number is the combined glk map flags of (L - a list of map flags):
	let N be 0;
	repeat with F running through L:
		now N is N bit-or the glk bit of F;
	decide on N.

To decide what number is (A - a number) bit-or (B - a number):
	(- ({A} | {B}) -).

To decide whether glk mapping is supported:
	(- ( glk_gestalt( gestalt_Map, 0 ) ) -).

To decide what number is the object number of (O - an object):
	(- {O} -).



Chapter - Low-level @glk wrappers

Include (-
[ glk_map_close _vararg_count;
  @glk glk_map_close_sel _vararg_count 0;
  return 0;
];

[ glk_map_set_focus _vararg_count;
  @glk glk_map_set_focus_sel _vararg_count 0;
  return 0;
];

[ glk_map_clear_focus _vararg_count;
  @glk glk_map_clear_focus_sel _vararg_count 0;
  return 0;
];

[ glk_request_map_event _vararg_count;
  @glk glk_request_map_event_sel _vararg_count 0;
  return 0;
];

[ glk_cancel_map_event _vararg_count;
  @glk glk_cancel_map_event_sel _vararg_count 0;
  return 0;
];

[ glk_map_present_svg _vararg_count ret;
  @glk glk_map_present_svg_sel _vararg_count ret;
  return ret;
];

[ glk_map_present_image _vararg_count ret;
  @glk glk_map_present_image_sel _vararg_count ret;
  return ret;
];

! Flat array: (array, wordcount, nhyperlinks) or (0) to clear.
! Per link: id, npoints, x,y * npoints, labellen, labelbyte * labellen.
[ glk_map_set_hyperlinks _vararg_count;
  @glk glk_map_set_hyperlinks_sel _vararg_count 0;
];

[ glk_map_overlay_S _vararg_count ret;
  @glk glk_map_overlay_sel _vararg_count ret;
  return ret;
];

! Link label is a byte buffer + length (#Cn), not a Glulx string (S).
[ glk_map_overlay image left top width height zindex linkid linklabelbuf linklabellen;
  return glk_map_overlay_S(image, left, top, width, height, zindex, linkid,
    linklabelbuf, linklabellen);
];

[ glk_map_overlay_move _vararg_count ret;
  @glk glk_map_overlay_move_sel _vararg_count ret;
  return ret;
];

[ glk_map_overlay_clear _vararg_count ret;
  @glk glk_map_overlay_clear_sel _vararg_count ret;
  return ret;
];

[ glk_map_overlay_clear_all _vararg_count ret;
  @glk glk_map_overlay_clear_all_sel _vararg_count ret;
  return ret;
];

[ glk_map_fill_rect _vararg_count ret;
  @glk glk_map_fill_rect_sel _vararg_count ret;
  return ret;
];
-).



Chapter - Figure helpers

Include (-
[ GlkMapImageWidth fig;
  glk_image_get_info(ResourceIDsOfFigures-->fig, gg_arguments, gg_arguments + WORDSIZE);
  return gg_arguments-->0;
];

[ GlkMapImageHeight fig;
  glk_image_get_info(ResourceIDsOfFigures-->fig, gg_arguments, gg_arguments + WORDSIZE);
  return gg_arguments-->1;
];
-).

To decide what number is the image width of (F - a figure-name):
	(- GlkMapImageWidth( {F} ) -).

To decide what number is the image height of (F - a figure-name):
	(- GlkMapImageHeight( {F} ) -).



Chapter - Present and close

Section - Present Blorb image

To present map image (image - a figure-name) with flags (flags - a number) background color (bg - a number) focusing on left (fl - a number) top (ft - a number) width (fw - a number) height (fh - a number):
	(- glk_map_present_image( ResourceIDsOfFigures-->( {image} ), {flags}, {bg}, {fl}, {ft}, {fw}, {fh} ); -).

To present map image (image - a figure-name) with flags (flags - a number) focusing on left (fl - a number) top (ft - a number) width (fw - a number) height (fh - a number):
	present map image image with flags flags background color 4294967295 focusing on left fl top ft width fw height fh.

To present map image (image - a figure-name) with flags (flags - a number) background color (bg - a number):
	present map image image with flags flags background color bg focusing on left 0 top 0 width 0 height 0.

To present map image (image - a figure-name) with flags (flags - a number):
	present map image image with flags flags focusing on left 0 top 0 width 0 height 0.

To present map image (image - a figure-name):
	present map image image with flags 0.

To present map image (image - a figure-name) with (flaglist - a list of map flags) background color (bg - a number) focusing on left (fl - a number) top (ft - a number) width (fw - a number) height (fh - a number):
	present map image image with flags (the combined glk map flags of flaglist) background color bg focusing on left fl top ft width fw height fh.

To present map image (image - a figure-name) with (flaglist - a list of map flags) focusing on left (fl - a number) top (ft - a number) width (fw - a number) height (fh - a number):
	present map image image with flags (the combined glk map flags of flaglist) focusing on left fl top ft width fw height fh.

To present map image (image - a figure-name) with (flaglist - a list of map flags) background color (bg - a number):
	present map image image with flags (the combined glk map flags of flaglist) background color bg.

To present map image (image - a figure-name) with (flaglist - a list of map flags):
	present map image image with flags (the combined glk map flags of flaglist).

To decide whether we successfully present map image (image - a figure-name) with flags (flags - a number) background color (bg - a number) focusing on left (fl - a number) top (ft - a number) width (fw - a number) height (fh - a number):
	(- ( glk_map_present_image( ResourceIDsOfFigures-->( {image} ), {flags}, {bg}, {fl}, {ft}, {fw}, {fh} ) ) -).

To decide whether we successfully present map image (image - a figure-name) with flags (flags - a number) focusing on left (fl - a number) top (ft - a number) width (fw - a number) height (fh - a number):
	if we successfully present map image image with flags flags background color 4294967295 focusing on left fl top ft width fw height fh, yes;
	no.

[Optional room focus rectangle. Games may leave these at 0 (no focus).]
A room has a number called map marker left. The map marker left of a room is usually 0.
A room has a number called map marker top. The map marker top of a room is usually 0.
A room has a number called map marker width. The map marker width of a room is usually 0.
A room has a number called map marker height. The map marker height of a room is usually 0.

To present map image (image - a figure-name) with flags (flags - a number) background color (bg - a number) focusing on the map marker of (R - a room):
	let fl be the map marker left of R;
	let ft be the map marker top of R;
	let fw be the map marker width of R;
	let fh be the map marker height of R;
	let present-flags be flags;
	if fw > 0 and fh > 0:
		now present-flags is present-flags bit-or the glk bit of map-has-focus;
	else:
		now fl is 0;
		now ft is 0;
		now fw is 0;
		now fh is 0;
	present map image image with flags present-flags background color bg focusing on left fl top ft width fw height fh.

To present map image (image - a figure-name) with flags (flags - a number) focusing on the map marker of (R - a room):
	present map image image with flags flags background color 4294967295 focusing on the map marker of R.

To present map image (image - a figure-name) with (flaglist - a list of map flags) background color (bg - a number) focusing on the map marker of (R - a room):
	present map image image with flags (the combined glk map flags of flaglist) background color bg focusing on the map marker of R.

To present map image (image - a figure-name) with (flaglist - a list of map flags) focusing on the map marker of (R - a room):
	present map image image with flags (the combined glk map flags of flaglist) focusing on the map marker of R.

To present map SVG (svg - a text) with flags (flags - a number) background color (bg - a number) focusing on the map marker of (R - a room):
	let fl be the map marker left of R;
	let ft be the map marker top of R;
	let fw be the map marker width of R;
	let fh be the map marker height of R;
	let present-flags be flags;
	if fw > 0 and fh > 0:
		now present-flags is present-flags bit-or the glk bit of map-has-focus;
	else:
		now fl is 0;
		now ft is 0;
		now fw is 0;
		now fh is 0;
	present map SVG svg with flags present-flags background color bg focusing on left fl top ft width fw height fh.

To present map SVG (svg - a text) with flags (flags - a number) focusing on the map marker of (R - a room):
	present map SVG svg with flags flags background color 4294967295 focusing on the map marker of R.

To present map SVG (svg - a text) with (flaglist - a list of map flags) background color (bg - a number) focusing on the map marker of (R - a room):
	present map SVG svg with flags (the combined glk map flags of flaglist) background color bg focusing on the map marker of R.

To present map SVG (svg - a text) with (flaglist - a list of map flags) focusing on the map marker of (R - a room):
	present map SVG svg with flags (the combined glk map flags of flaglist) focusing on the map marker of R.

Section - Present SVG

Include (-
Array glk_map_svg_buf -> 65536;

[ GlkMapPresentSVGText txt flags bgcolor fl ft fw fh
  cp pk n i c len;
  if (txt == 0) return 0;
  cp = txt-->0;
  pk = TEXT_TY_Temporarily_Transmute(txt);
  n = TEXT_TY_CharacterLength(txt);
  if (n > 65535) n = 65535;
  for (i = 0: i < n: i++) {
    c = BlkValueRead(txt, i);
    if (c < 0 || c > 255) c = '?';
    glk_map_svg_buf->i = c;
  }
  TEXT_TY_Untransmute(txt, pk, cp);
  len = n;
  return glk_map_present_svg(glk_map_svg_buf, len, flags, bgcolor, fl, ft, fw, fh);
];
-).

To present map SVG (svg - a text) with flags (flags - a number) background color (bg - a number) focusing on left (fl - a number) top (ft - a number) width (fw - a number) height (fh - a number):
	(- GlkMapPresentSVGText( {svg}, {flags}, {bg}, {fl}, {ft}, {fw}, {fh} ); -).

To present map SVG (svg - a text) with flags (flags - a number) focusing on left (fl - a number) top (ft - a number) width (fw - a number) height (fh - a number):
	present map SVG svg with flags flags background color 4294967295 focusing on left fl top ft width fw height fh.

To present map SVG (svg - a text) with flags (flags - a number) background color (bg - a number):
	present map SVG svg with flags flags background color bg focusing on left 0 top 0 width 0 height 0.

To present map SVG (svg - a text) with flags (flags - a number):
	present map SVG svg with flags flags focusing on left 0 top 0 width 0 height 0.

To present map SVG (svg - a text):
	present map SVG svg with flags 0.

To present map SVG (svg - a text) with (flaglist - a list of map flags) background color (bg - a number) focusing on left (fl - a number) top (ft - a number) width (fw - a number) height (fh - a number):
	present map SVG svg with flags (the combined glk map flags of flaglist) background color bg focusing on left fl top ft width fw height fh.

To present map SVG (svg - a text) with (flaglist - a list of map flags) focusing on left (fl - a number) top (ft - a number) width (fw - a number) height (fh - a number):
	present map SVG svg with flags (the combined glk map flags of flaglist) focusing on left fl top ft width fw height fh.

To present map SVG (svg - a text) with (flaglist - a list of map flags) background color (bg - a number):
	present map SVG svg with flags (the combined glk map flags of flaglist) background color bg.

To present map SVG (svg - a text) with (flaglist - a list of map flags):
	present map SVG svg with flags (the combined glk map flags of flaglist).

To decide whether we successfully present map SVG (svg - a text) with flags (flags - a number) background color (bg - a number) focusing on left (fl - a number) top (ft - a number) width (fw - a number) height (fh - a number):
	(- ( GlkMapPresentSVGText( {svg}, {flags}, {bg}, {fl}, {ft}, {fw}, {fh} ) ) -).

To decide whether we successfully present map SVG (svg - a text) with flags (flags - a number) focusing on left (fl - a number) top (ft - a number) width (fw - a number) height (fh - a number):
	if we successfully present map SVG svg with flags flags background color 4294967295 focusing on left fl top ft width fw height fh, yes;
	no.

Section - Focus and close

To close the map:
	(- glk_map_close(); -).

To set map focus left (fl - a number) top (ft - a number) width (fw - a number) height (fh - a number):
	(- glk_map_set_focus( {fl}, {ft}, {fw}, {fh} ); -).

To clear map focus:
	(- glk_map_clear_focus(); -).

To request map events:
	(- glk_request_map_event(); -).

To cancel map events:
	(- glk_cancel_map_event(); -).



Chapter - Polygon hyperlinks

A map hyperlink is a kind of object.
A map hyperlink has a number called id. The id of a map hyperlink is usually 1.
A map hyperlink has a text called label. The label of a map hyperlink is usually "".
A map hyperlink has a list of numbers called vertices. [x,y pairs; length ≥ 6]

Include (-
Array glk_map_hyperlink_words --> 4096;
Global glk_map_hyperlink_wordcount = 0;
Global glk_map_hyperlink_count = 0;
Array glk_map_hyperlink_label_bytes -> 256;
Array glk_map_hyperlink_pointscratch --> 64;

[ GlkMapHyperlinkBegin;
  glk_map_hyperlink_wordcount = 0;
  glk_map_hyperlink_count = 0;
];

[ GlkMapHyperlinkAppendWord w;
  if (glk_map_hyperlink_wordcount >= 4095) return;
  glk_map_hyperlink_words-->glk_map_hyperlink_wordcount = w;
  glk_map_hyperlink_wordcount++;
];

[ GlkMapHyperlinkAdd id labellen labelbytes npoints pointwords
  i;
  if (glk_map_hyperlink_count >= 64) return;
  if (npoints < 3 || npoints > 32) return;
  if (glk_map_hyperlink_wordcount + 3 + npoints * 2 + labellen >= 4095) return;
  GlkMapHyperlinkAppendWord(id);
  GlkMapHyperlinkAppendWord(npoints);
  for (i = 0: i < npoints * 2: i++)
    GlkMapHyperlinkAppendWord(pointwords-->i);
  GlkMapHyperlinkAppendWord(labellen);
  for (i = 0: i < labellen: i++)
    GlkMapHyperlinkAppendWord(labelbytes->i);
  glk_map_hyperlink_count++;
];

[ GlkMapHyperlinkCommit;
  if (glk_map_hyperlink_count == 0)
    glk_map_set_hyperlinks(0);
  else
    glk_map_set_hyperlinks(glk_map_hyperlink_words, glk_map_hyperlink_wordcount, glk_map_hyperlink_count);
];

[ GlkMapHyperlinkAddFromText id txt point_list
  cp pk n i c ncoords npoints;
  if (txt == 0) {
    n = 0;
  } else {
    cp = txt-->0;
    pk = TEXT_TY_Temporarily_Transmute(txt);
    n = TEXT_TY_CharacterLength(txt);
    if (n > 255) n = 255;
    for (i = 0: i < n: i++) {
      c = BlkValueRead(txt, i);
      if (c < 0 || c > 255) c = '?';
      glk_map_hyperlink_label_bytes->i = c;
    }
    TEXT_TY_Untransmute(txt, pk, cp);
  }
  ncoords = LIST_OF_TY_GetLength(point_list);
  if (ncoords < 6 || (ncoords & 1)) return;
  npoints = ncoords / 2;
  if (npoints > 32) npoints = 32;
  for (i = 0: i < npoints * 2: i++)
    glk_map_hyperlink_pointscratch-->i = LIST_OF_TY_GetItem(point_list, i + 1);
  GlkMapHyperlinkAdd(id, n, glk_map_hyperlink_label_bytes, npoints, glk_map_hyperlink_pointscratch);
];
-).

To begin map hyperlinks:
	(- GlkMapHyperlinkBegin(); -).

To add map hyperlink id (id - a number) labeled (lab - a text) with points (pts - a list of numbers):
	(- GlkMapHyperlinkAddFromText( {id}, {lab}, {pts} ); -).

To add map hyperlink id (id - a number) with points (pts - a list of numbers):
	add map hyperlink id id labeled "" with points pts.

To commit map hyperlinks:
	(- GlkMapHyperlinkCommit(); -).

To clear map hyperlinks:
	(- glk_map_set_hyperlinks(0); -).

To set map hyperlinks to (L - a list of map hyperlinks):
	begin map hyperlinks;
	repeat with H running through L:
		add map hyperlink id (id of H) labeled (label of H) with points (vertices of H);
	commit map hyperlinks.



Chapter - Overlays

Include (-
Array glk_map_ovl_label -> 256;

[ GlkMapOverlayWithText image left top width height zindex linkid txt
  cp pk n i c;
  if (txt == 0)
    return glk_map_overlay(image, left, top, width, height, zindex, linkid,
      glk_map_ovl_label, 0);
  cp = txt-->0;
  pk = TEXT_TY_Temporarily_Transmute(txt);
  n = TEXT_TY_CharacterLength(txt);
  if (n > 255) n = 255;
  for (i = 0: i < n: i++) {
    c = BlkValueRead(txt, i);
    if (c < 0 || c > 255) c = '?';
    glk_map_ovl_label->i = c;
  }
  TEXT_TY_Untransmute(txt, pk, cp);
  return glk_map_overlay(image, left, top, width, height, zindex, linkid,
    glk_map_ovl_label, n);
];
-).

To decide what number is the map overlay of (image - a figure-name) at left (L - a number) top (T - a number) width (W - a number) height (H - a number) z-index (Z - a number) link id (id - a number) labeled (lab - a text):
	(- GlkMapOverlayWithText( ResourceIDsOfFigures-->( {image} ), {L}, {T}, {W}, {H}, {Z}, {id}, {lab} ) -).

To decide what number is the map overlay of (image - a figure-name) at left (L - a number) top (T - a number) width (W - a number) height (H - a number) z-index (Z - a number) link id (id - a number):
	decide on the map overlay of image at left L top T width W height H z-index Z link id id labeled "".

To decide what number is the map overlay of (image - a figure-name) at left (L - a number) top (T - a number) width (W - a number) height (H - a number) z-index (Z - a number):
	decide on the map overlay of image at left L top T width W height H z-index Z link id 0 labeled "".

To decide what number is the map overlay of (image - a figure-name) at left (L - a number) top (T - a number) z-index (Z - a number):
	decide on the map overlay of image at left L top T width 0 height 0 z-index Z.

To decide what number is the map overlay of (image - a figure-name) at left (L - a number) top (T - a number) width (W - a number) height (H - a number) z-index (Z - a number) linked to (obj - an object) labeled (lab - a text):
	decide on the map overlay of image at left L top T width W height H z-index Z link id (the object number of obj) labeled lab.

To decide what number is the map overlay of (image - a figure-name) at left (L - a number) top (T - a number) width (W - a number) height (H - a number) z-index (Z - a number) linked to (obj - an object):
	decide on the map overlay of image at left L top T width W height H z-index Z linked to obj labeled "".

[Void forms that discard the overlay id.]

To overlay (image - a figure-name) at left (L - a number) top (T - a number) width (W - a number) height (H - a number) z-index (Z - a number) link id (id - a number) labeled (lab - a text):
	(- GlkMapOverlayWithText( ResourceIDsOfFigures-->( {image} ), {L}, {T}, {W}, {H}, {Z}, {id}, {lab} ); -).

To overlay (image - a figure-name) at left (L - a number) top (T - a number) width (W - a number) height (H - a number) z-index (Z - a number) link id (id - a number):
	overlay image at left L top T width W height H z-index Z link id id labeled "".

To overlay (image - a figure-name) at left (L - a number) top (T - a number) width (W - a number) height (H - a number) z-index (Z - a number):
	overlay image at left L top T width W height H z-index Z link id 0 labeled "".

To overlay (image - a figure-name) at left (L - a number) top (T - a number) z-index (Z - a number):
	overlay image at left L top T width 0 height 0 z-index Z.

To overlay (image - a figure-name) at left (L - a number) top (T - a number) width (W - a number) height (H - a number) z-index (Z - a number) linked to (obj - an object) labeled (lab - a text):
	overlay image at left L top T width W height H z-index Z link id (the object number of obj) labeled lab.

To overlay (image - a figure-name) at left (L - a number) top (T - a number) width (W - a number) height (H - a number) z-index (Z - a number) linked to (obj - an object):
	overlay image at left L top T width W height H z-index Z linked to obj labeled "".

To move map overlay (O - a number) to left (L - a number) top (T - a number) width (W - a number) height (H - a number) z-index (Z - a number):
	(- glk_map_overlay_move( {O}, {L}, {T}, {W}, {H}, {Z} ); -).

To clear map overlay (O - a number):
	(- glk_map_overlay_clear( {O} ); -).

To clear all map overlays:
	(- glk_map_overlay_clear_all(); -).

To fill map rect color (C - a number) at left (L - a number) top (T - a number) width (W - a number) height (H - a number) z-index (Z - a number):
	(- glk_map_fill_rect( {C}, {L}, {T}, {W}, {H}, {Z} ); -).

To decide what number is the map fill rect color (C - a number) at left (L - a number) top (T - a number) width (W - a number) height (H - a number) z-index (Z - a number):
	(- glk_map_fill_rect( {C}, {L}, {T}, {W}, {H}, {Z} ) -).



Chapter - Map events

[evtype_Map is private ($1105), not a sequential g-event. Handle via a general
 input-handling rule that tests the raw event type.]

The map hyperlink command rules are a number based rulebook.
[The parameter is the link id (val2). Rules should set the glulx replacement command.]

The map user hide rules are a rulebook.

To decide whether the current event is a map event:
	(- ( GE_Event_Struct_type == evtype_Map ) -).

To decide what number is the current map event kind:
	(- GE_Event_Struct_val1 -).

To decide what number is the current map event payload:
	(- GE_Event_Struct_val2 -).

To decide whether the current map event is a hyperlink event:
	if the current event is a map event and the current map event kind is 1, yes;
	no.

To decide whether the current map event is a user-hide event:
	if the current event is a map event and the current map event kind is 2, yes;
	no.

To decide what number is the current map link id:
	decide on the current map event payload.

To re-request line input in the/-- main window:
	(- glk_request_line_event(gg_mainwin, buffer+WORDSIZE, INPUT_BUFFER_LEN-WORDSIZE, 0); -).

First glulx input handling rule when the current event is a map event (this is the handle map event rule):
	if the current map event is a hyperlink event:
		follow the map hyperlink command rules for the current map link id;
		rule succeeds;
	if the current map event is a user-hide event:
		[Line input is usually armed when the map is closed; printing then
		 lands on the ">" prompt. Cancel first, then message + fresh prompt.]
		cancel line input in the main window;
		cancel character input in the main window;
		say "[run paragraph on][line break]";
		follow the map user hide rules without linebreaks;
		print prompt;
		re-request line input in the main window;
		require input to continue;
	rule succeeds.



Glk Mapping ends here.

---- DOCUMENTATION ----

This extension wraps the Glk mapping API (gestalt_Map = $1104).

Section: Presenting maps

	present map image Figure of Overview with { map-suggest-show };
	present map image Figure of Overview with { map-has-focus, map-suggest-show }
		focusing on left 10 top 20 width 100 height 80;
	present map SVG "<svg xmlns='http://www.w3.org/2000/svg'>...</svg>" with { map-user-requested-show };

Section: Overlays

	overlay Figure of Marker at left 10 top 20 width 32 height 32 z-index 5;
	overlay Figure of North at left X top Y width G height G z-index 11
		linked to north labeled "north";
	let O be the map overlay of Figure of You at left 0 top 0 z-index 20;
	move map overlay O to left 50 top 60 width 0 height 0 z-index 20;
	clear map overlay O;

width/height 0 means natural image size. link id 0 (or omitted) is decorative.

Section: Polygon hyperlinks

	begin map hyperlinks;
	add map hyperlink id 100 labeled "dock" with points { 10, 20, 40, 20, 40, 50, 10, 50 };
	commit map hyperlinks;

Or declare map hyperlink objects and "set map hyperlinks to { ... }".

Section: Events

	request map events;

	A map hyperlink command rule for a number (called linkid): ...
	A map user hide rule: ...

Selectors: present_svg $1203, close $1204, focus $1205/$1206, map events $1207/$1208, present_image $1209, set_hyperlinks $120A, overlays $120B–$120E, fill_rect $120F.
