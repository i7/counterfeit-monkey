Version 1/171025 of Glk Object Recovery (for Glulx only) by Dannii Willis begins here.

"A low level utility library for managing Glk references after restarting or restoring"

[ This extension was extracted from Glulx Entry points. See http://www.intfiction.org/forum/viewtopic.php?f=7&t=19605 for more discussion. ]

Use authorial modesty.



Section - Glk object recovery

[ These should technically all be called 'glk' rulebooks, but we'll keep them named 'glulx' for compatibility. ]
The glulx zeroing-reference rules is a rulebook.
The glulx resetting-windows rules is a rulebook.
The glulx resetting-streams rules is a rulebook.
The glulx resetting-filerefs rules is a rulebook.
The glulx resetting-channels rules is a rulebook.
The glulx object-updating rules is a rulebook.

Current glulx rock is a number that varies.
Current glulx rock-ref is a number that varies.



Section - GGRecoverObjects

[ Rather than intercepting IdentifyGlkObject() as GEP does, replace GGRecoverObjects(). This allows us to move the built in I6 variable management to rules which can be replaced by other extensions if needed. ]
Include (-
Replace GGRecoverObjects;
-) before "Glulx.i6t".

Include (-
! Replacement GGRecoverObjects from Glk Object Recovery by Dannii Willis
[ GGRecoverObjects ref;
	! Reset all Glk references as if none existed
	FollowRulebook( (+ glulx zeroing-reference rules +) );
	
	! Iterate through each of the windows, streams, file refs and sound channels
	while ( ref = glk_window_iterate( ref, gg_arguments ) )
	{
		(+ current glulx rock +) = gg_arguments-->0;
		(+ current glulx rock-ref +) = ref;
		FollowRulebook( (+ glulx resetting-windows rules +) );
	}
	ref = 0;
	while ( ref = glk_stream_iterate( ref, gg_arguments ) )
	{
		(+ current glulx rock +) = gg_arguments-->0;
		(+ current glulx rock-ref +) = ref;
		FollowRulebook( (+ glulx resetting-streams rules +) );
	}
	ref = 0;
	while ( ref = glk_fileref_iterate( ref, gg_arguments ) )
	{
		(+ current glulx rock +) = gg_arguments-->0;
		(+ current glulx rock-ref +) = ref;
		FollowRulebook( (+ glulx resetting-filerefs rules +) );
	}
	if ( glk_gestalt( gestalt_Sound, 0 ) )
	{
		ref = 0;
		while ( ref = glk_schannel_iterate( ref, gg_arguments ) )
		{
			(+ current glulx rock +) = gg_arguments-->0;
			(+ current glulx rock-ref +) = ref;
			FollowRulebook( (+ glulx resetting-channels rules +) );
		}
	}

	! Tell the game to tie up any loose ends
	FollowRulebook( (+ glulx object-updating rules +) );
	rfalse;
];
-) after "Starting Up" in "Glulx.i6t".



Section - The built in object recovery rules

[ The following code was extracted from the original GGRecoverObjects() ]
The built in object zeroing rule is listed first in the glulx zeroing-reference rules.
The built in object zeroing rule translates into I6 as "GOR_zeroing".
Include (-
[ GOR_zeroing;
	gg_mainwin = 0;
	gg_statuswin = 0;
	gg_quotewin = 0;
	gg_scriptfref = 0;
	gg_scriptstr = 0;
	gg_savestr = 0;
	statuswin_cursize = 0;
	gg_foregroundchan = 0;
	gg_backgroundchan = 0;
	gg_commandstr = 0;
	gg_command_reading = false;
	rfalse;
];
-).

The identify built in windows rule is listed first in the glulx resetting-windows rules.
The identify built in windows rule translates into I6 as "GOR_indentify_windows".
Include (-
[ GOR_indentify_windows;
	switch ( (+ current glulx rock +) )
	{
		GG_MAINWIN_ROCK:
			gg_mainwin = (+ current glulx rock-ref +);
		GG_STATUSWIN_ROCK:
			gg_statuswin = (+ current glulx rock-ref +);
		GG_QUOTEWIN_ROCK:
			gg_quotewin = (+ current glulx rock-ref +);
	}
	rfalse;
];
-).

The identify built in streams rule is listed first in the glulx resetting-streams rules.
The identify built in streams rule translates into I6 as "GOR_indentify_streams".
Include (-
[ GOR_indentify_streams;
	switch ( (+ current glulx rock +) )
	{
		GG_SAVESTR_ROCK:
			gg_savestr = (+ current glulx rock-ref +);
		GG_SCRIPTSTR_ROCK:
			gg_scriptstr = (+ current glulx rock-ref +);
		GG_COMMANDWSTR_ROCK:
			gg_commandstr = (+ current glulx rock-ref +);
			gg_command_reading = false;
		GG_COMMANDRSTR_ROCK:
			gg_commandstr = (+ current glulx rock-ref +);
			gg_command_reading = true;
	}
	rfalse;
];
-).

The identify built in file refs rule is listed first in the glulx resetting-filerefs rules.
The identify built in file refs rule translates into I6 as "GOR_indentify_filerefs".
Include (-
[ GOR_indentify_filerefs;
	switch ( (+ current glulx rock +) )
	{
		GG_SCRIPTFREF_ROCK:
			gg_scriptfref = (+ current glulx rock-ref +);
	}
	rfalse;
];
-).

The identify built in sound channels rule is listed first in the glulx resetting-channels rules.
The identify built in sound channels rule translates into I6 as "GOR_indentify_schannels".
Include (-
[ GOR_indentify_schannels;
	switch ( (+ current glulx rock +) )
	{
		GG_FOREGROUNDCHAN_ROCK:
			gg_foregroundchan = (+ current glulx rock-ref +);
		GG_BACKGROUNDCHAN_ROCK:
			gg_backgroundchan = (+ current glulx rock-ref +);
	}
	if ( gg_foregroundchan ~= 0 )
	{
		glk_schannel_stop( gg_foregroundchan );
	}
	if ( gg_backgroundchan ~= 0 )
	{
		glk_schannel_stop( gg_backgroundchan );
	}
	rfalse;
];
-).



Glk Object Recovery ends here.

---- Documentation ----

This extension is a low level utility library for managing Glk references. When a Glulx game restarts and restores, the current Glk IO state is not reset. All the old windows, sound channels etc. will be kept as they were, even though the game file might be expecting a different state. This extension allows Inform 7 game files to ensure that the IO state is as it should be. It does this in three stages:

1. The "glulx zeroing-reference rulebook" is run. Rules should be added to reset all Glk references as if none existed.

2. The "glulx resetting-windows rulebook" etc. are run. These rulebooks will be run once for each Glk IO object which does currently exist.

3. The "glulx object-updating rulebook" is run. Rules should be added to correct the Glk IO state by, for example, closing windows which shouldn't exist, and opening windows which should but currently do not.

See the extension Flexible Windows by Jon Ingold for a practical demonstration of how these rulebooks are used.

This extension is released under the Creative Commons Attribution licence. Bug reports, feature requests or questions should be made at <https://github.com/i7/extensions/issues>.
