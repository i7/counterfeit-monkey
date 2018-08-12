Version 1/160919 of Glk Events (for Glulx only) by Dannii Willis begins here.

"A low level event handling system"

Use authorial modesty.

Include version 1/160919 of Glulx Definitions by Dannii Willis.



Chapter - Basic event handling

Section - Event result variables

Include (-
Global GE_Event_Struct_type;
Global GE_Event_Struct_win;
Global GE_Event_Struct_val1;
Global GE_Event_Struct_val2;
-) before "Glulx.i6t".

The glk event type is a g-event variable.
The glk event type variable translates into I6 as "GE_Event_Struct_type".
The glk event window ref is a number variable.
The glk event window ref variable translates into I6 as "GE_Event_Struct_win".
The glk event value 1 is a number variable.
The glk event value 1 variable translates into I6 as "GE_Event_Struct_val1".
The glk event value 2 is a number variable.
The glk event value 2 variable translates into I6 as "GE_Event_Struct_val2".



Section - The glulx input handling rules

The glulx input handling rules are a g-event based rulebook.



Section - Intercepting glk_select()

[ Rather than implementing HandleGlkEvent() as GEP did, we will intercept glk_select(). This allows us to intercept events before the Inform 7 template starts processing them. ]
Include (-
Replace glk_select;
-) before "Glulx.i6t".

Include (-
! Replacement function from Glk Events by Dannii Willis
[ glk_select event_struct;
	! Call the real glk_select
	@push event_struct;
	@glk 192 1 0;

	! Copy values to our variables
	GE_Event_Struct_type = event_struct-->0;
	GE_Event_Struct_win = event_struct-->1;
	GE_Event_Struct_val1 = event_struct-->2;
	GE_Event_Struct_val2 = event_struct-->3;

	! Run the glulx input handling rules
	!FollowRulebook( (+ the glulx input handling rules +), GE_Event_Struct_type, true );

	! Copy back to the original event structure
	event_struct-->0 = GE_Event_Struct_type;
	event_struct-->1 = GE_Event_Struct_win;
	event_struct-->2 = GE_Event_Struct_val1;
	event_struct-->3 = GE_Event_Struct_val2;
	return 0;
];
-) after "Infglk" in "Glulx.i6t".



Glk Events ends here.
