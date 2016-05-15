Version 1/160515 of Ultra Undo (for Glulx only) by Dannii Willis begins here.

"Handles undo using external files for very big story files"

Use maximum file based undo count of at least 10 translates as (- Constant ULTRA_UNDO_MAX_COUNT = {N}; -). 

[ If the interpreter cannot perform an undo for us, store the state using external files. We can do this by hijacking VM_Undo and VM_Save_Undo. ]

Include (-

! Our undo counter
Global ultra_undo_counter = 0;
Global ultra_undo_needed = 0;

! Test if the VM is able to perform an undo. This is necessary because Git won't tell us that it can't.
[ Ultra_Undo_Test res;
	@saveundo res;
	if ( res == 1 ) ! Failure
	{
		ultra_undo_needed = 1;
		rfalse;
	}
	if ( res == -1 ) ! Success
	{
		ultra_undo_needed = 0;
		rfalse;
	}
	@restoreundo res;
	if ( res == 1 ) ! Failure
	{
		ultra_undo_needed = 1;
		rfalse;
	}
];

[ VM_Undo result_code;
	! If we are using external files
	if ( ultra_undo_needed )
	{
		return Ultra_Undo();
	}
	
	@restoreundo result_code;
	return ( ~~result_code );
];

[ VM_Save_Undo result_code;
	! Handle Undo being disabled by Undo Output Control
	if ( ~~(+ save undo state +) )
	{
		return -2;
	}
	
	! If we are using external files
	if ( ultra_undo_needed )
	{
		return Ultra_Save_Undo();
	}
	
	@saveundo result_code;
	! Check if it we have just restored
	if ( result_code == -1 )
	{
		GGRecoverObjects();
		return 2;
	}
	! Check if it failed
	if ( result_code == 1 )
	{
		ultra_undo_needed = 1;
		return Ultra_Save_Undo();
	}
	return ( ~~result_code );
];

[ Ultra_Undo fref res;
	! Restore from our file
	fref = glk_fileref_create_by_name( fileusage_SavedGame + fileusage_BinaryMode, Glulx_ChangeAnyToCString( Ultra_Undo_Filename ), 0 );
	if ( fref == 0 ) jump RFailed;
	gg_savestr = glk_stream_open_file( fref, $02, GG_SAVESTR_ROCK );
	glk_fileref_destroy( fref );
	if ( gg_savestr == 0 ) jump RFailed;
	@restore gg_savestr res;
	glk_stream_close( gg_savestr, 0 );
	gg_savestr = 0;
	.RFailed;
	Ultra_Undo_Delete_All();
	return 0;
];

[ Ultra_Save_Undo fref res;
	ultra_undo_counter++;
	fref = glk_fileref_create_by_name( fileusage_SavedGame + fileusage_BinaryMode, Glulx_ChangeAnyToCString( Ultra_Undo_Filename ), 0 );
	if ( fref == 0 ) jump SFailed;
	gg_savestr = glk_stream_open_file( fref, $01, GG_SAVESTR_ROCK );
	glk_fileref_destroy( fref );
	if ( gg_savestr == 0 ) jump SFailed;
	@save gg_savestr res;
	if ( res == -1 )
	{
		! The player actually just typed "undo". But first, we have to recover all the Glk objects; the values
		! in our global variables are all wrong.
		GGRecoverObjects();
		glk_stream_close( gg_savestr, 0 ); ! stream_close
		gg_savestr = 0;
		! Delete this save file
		Ultra_Undo_Delete( ultra_undo_counter );
		! Remember to decrement the counter!
		ultra_undo_counter--;
		return 2;
	}
	glk_stream_close( gg_savestr, 0 ); ! stream_close
	gg_savestr = 0;
	if ( res == 0 ) return 1;
	.SFailed;
	ultra_undo_counter--;
	return 0;
];

[ Ultra_Undo_Filename ix;
	print "undo-";
	for ( ix=8 : ix + 2 <= UUID_ARRAY->0 : ix++ )
	{
		print (char) UUID_ARRAY->ix;
	}
	! Take the mod of ultra_undo_counter to keep the number of files to ULTRA_UNDO_MAX_COUNT
	print "-", ( ultra_undo_counter % ULTRA_UNDO_MAX_COUNT );
];

[ Ultra_Undo_Delete val fref exists;
	@push ultra_undo_counter;
	ultra_undo_counter = val;
	fref = glk_fileref_create_by_name( fileusage_SavedGame + fileusage_BinaryMode, Glulx_ChangeAnyToCString( Ultra_Undo_Filename ), 0 );
	@pull ultra_undo_counter;
	if ( fref ~= 0 )
	{
		if ( glk_fileref_does_file_exist( fref ) )
		{
			glk_fileref_delete_file( fref );
			exists = 1;
		}
		glk_fileref_destroy( fref );
	}
	if ( exists == 0 && val == ultra_undo_counter )
	{
		ultra_undo_counter = 1;
	}
];

[ Ultra_Undo_Delete_All ix;
	for (ix=1 : ix <= ULTRA_UNDO_MAX_COUNT : ix++)
	{
		Ultra_Undo_Delete( ix );

	}
	ultra_undo_counter = 0;
];

-) instead of "Undo" in "Glulx.i6t".



Section - Tests

[ Test if the VM is able to perform an undo. This is necessary because Git won't tell us that it can't. ]

The Ultra Undo Test rule translates into I6 as "Ultra_Undo_Test".
The Ultra Undo Test rule is listed last in the startup rules.

[ Rerun the tests if we load a saved game. ]

Section (for use with Interpreter Sniffing by Friends of I7) 

The Ultra Undo Test rule is listed in the resniffing rules.

Section (for use without Interpreter Sniffing by Friends of I7) 

Include (-

[ SAVE_THE_GAME_R res fref;
	if (actor ~= player) rfalse;
	fref = glk_fileref_create_by_prompt($01, $01, 0);
	if (fref == 0) jump SFailed;
	gg_savestr = glk_stream_open_file(fref, $01, GG_SAVESTR_ROCK);
	glk_fileref_destroy(fref);
	if (gg_savestr == 0) jump SFailed;
	@save gg_savestr res;
	if (res == -1) {
		! The player actually just typed "restore". We're going to print
		!  GL__M(##Restore,2); the Z-Code Inform library does this correctly
		! now. But first, we have to recover all the Glk objects; the values
		! in our global variables are all wrong.
		Ultra_Undo_Test();
		GGRecoverObjects();
		glk_stream_close(gg_savestr, 0); ! stream_close
		gg_savestr = 0;
		RESTORE_THE_GAME_RM('B'); new_line;
		rtrue;
	}
	glk_stream_close(gg_savestr, 0); ! stream_close
	gg_savestr = 0;
	if (res == 0) { SAVE_THE_GAME_RM('B'); new_line; rtrue; }
	.SFailed;
	SAVE_THE_GAME_RM('A'); new_line;
];

-) instead of "Save The Game Rule" in "Glulx.i6t".



Section - Cleaning up

[ Clean up after ourselves when the player quits - delete all the external files ]

Include (-

[ QUIT_THE_GAME_R;
	if ( actor ~= player ) rfalse;
	QUIT_THE_GAME_RM('A');
	if ( YesOrNo()~=0 )
	{
		Ultra_Undo_Delete_All();
		quit;
	}
];

-) instead of "Quit The Game Rule" in "Glulx.i6t".

[ Clean up when the game first starts ]

The delete Ultra Undo savefiles rule is listed in the after starting the virtual machine rules.
The delete Ultra Undo savefiles rule translates into I6 as "Ultra_Undo_Delete_All".



[ Compatibility with Undo Output Control. If it's not included, add the variable we refer to. If it is, don't let it replace our Undo code. ]

Chapter (for use without Undo Output Control by Erik Temple) unindexed

Save undo state is a truth state that varies. Save undo state is usually true.

Chapter (for use with Undo Output Control by Erik Temple)

Section - Undo save control (in place of Section - Undo save control in Undo Output Control by Erik Temple)



Ultra Undo ends here.

---- DOCUMENTATION ----

Some interpreters have limitations which mean that for very large story files the Undo function stops working. So far the only known example of this is Emily Short's Counterfeit Monkey, for which this extension was written. Ultra Undo will keep Undo working when the interpreter cannot, by using external files. You do not need to do anything other than include the extension - it will take care of everything for you, including cleaning up after itself (i.e., deleting those files when the player quits or restarts.)

There is a use option "maximum file based undo count" which controls how many how many turns can be undone using external files. By default that number is 10.

This extension is compatible with Conditional Undo by Jesse McGrew and Undo Output Control by Erik Temple.

The latest version of this extension can be found at <https://github.com/i7/extensions>. This extension is released under the Creative Commons Attribution licence. Bug reports, feature requests or questions should be made at <https://github.com/i7/extensions/issues>.
