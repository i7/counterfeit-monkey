Startup Snapshots by Counterfeit Monkey begins here.

Use authorial modesty.

Section - Not for release

[ Startup rules ]
The alternative virtual machine startup rule does nothing if we should skip the alternative virtual machine startup rule after snapshotting.
The new declare everything initially unmentioned rule does nothing if we should skip the new declare everything initially unmentioned rule after snapshotting.
The when play begins stage rule does nothing if we should skip the when play begins stage rule after snapshotting.

[ Starting the virtual machine rules ]
The alternative initialise memory rule does nothing if we should skip alternative initialise memory rule after snapshotting.
The Flexible Windows sort the Table of User Styles rule does nothing if we should skip the Flexible Windows sort the Table of User Styles rule after snapshotting.
The alternative position player in model world rule does nothing if we should skip the alternative position player in model world rule after snapshotting.
The enable Glulx acceleration rule does nothing if we should skip the enable Glulx acceleration rule after snapshotting.
The alternative seed random number generator rule does nothing if we should skip the alternative seed random number generator rule after snapshotting.
The check for Glk rule does nothing if we should skip the check for Glk rule after snapshotting.
The recover objects rule does nothing if we should skip the recover objects rule after snapshotting.
The sound channel initialisation rule does nothing if we should skip the sound channel initialisation rule after snapshotting.
The open the built-in windows using Flexible Windows rule does nothing if we should skip the open the built-in windows using Flexible Windows rule after snapshotting.
The initial whitespace rule does nothing if we should skip the initial whitespace rule after snapshotting.
The alternative start in the correct scenes rule does nothing if we should skip the alternative start in the correct scenes rule after snapshotting.
The delete Ultra Undo savefiles rule does nothing if we should skip the delete Ultra Undo savefiles rule after snapshotting.
The alternative update chronological records rule does nothing if we should skip the alternative update chronological records rule after snapshotting.
The attempt to load a precomputation data file rule does nothing if we should skip the attempt to load a precomputation data file rule after snapshotting.
The apologise for a slow start rule does nothing if we should skip the apologise for a slow start rule after snapshotting.
The automated testing rule does nothing if we should skip the automated testing rule after snapshotting.

[ When play begins rules ]
The initially list contents rule does nothing if we should skip the initially list contents rule after snapshotting.
The set status line alignment depth rule does nothing if we should skip the set status line alignment depth rule after snapshotting.
The load conclusions when starting rule does nothing if we should skip the load conclusions when starting rule after snapshotting.
The adjust the basic help options rule does nothing if we should skip the adjust the basic help options rule after snapshotting.
The set story viewpoint rule    does nothing if we should skip the set story viewpoint rule    after snapshotting.
The indirect-following initializing rule    does nothing if we should skip the indirect-following initializing rule    after snapshotting.
The caching thread position information rule    does nothing if we should skip the caching thread position information rule    after snapshotting.
The move all quips to the quip-repository rule    does nothing if we should skip the move all quips to the quip-repository rule    after snapshotting.
The set official grounds police rule    does nothing if we should skip the set official grounds police rule    after snapshotting.
The new mark every thing as unmentioned when play begins rule    does nothing if we should skip the new mark every thing as unmentioned when play begins rule    after snapshotting.
The customise tailored room description rule    does nothing if we should skip the customise tailored room description rule    after snapshotting.
The make threaded conversations viewpoint sensitive rule    does nothing if we should skip the make threaded conversations viewpoint sensitive rule    after snapshotting.
The change smarter parse messages rule    does nothing if we should skip the change smarter parse messages rule    after snapshotting.
The initialize route-finding rule does nothing if we should skip the initialize route-finding rule after snapshotting.
The fix staircases rule    does nothing if we should skip the fix staircases rule    after snapshotting.
The nothing-to-see-that-way rule    does nothing if we should skip the nothing-to-see-that-way rule    after snapshotting.
The move backdrops to the outdoors rule    does nothing if we should skip the move backdrops to the outdoors rule    after snapshotting.
The move busy streets backdrop rule    does nothing if we should skip the move busy streets backdrop rule    after snapshotting.
The pre-drawer rule does nothing if we should skip the pre-drawer rule after snapshotting.
The initialize drawers rule    does nothing if we should skip the initialize drawers rule    after snapshotting.
The toilet postures rule    does nothing if we should skip the toilet postures rule    after snapshotting.
The bed postures rule    does nothing if we should skip the bed postures rule    after snapshotting.
The chair and desk postures rule    does nothing if we should skip the chair and desk postures rule    after snapshotting.
The search engines rule    does nothing if we should skip the search engines rule    after snapshotting.
The setting proffered rule    does nothing if we should skip the setting proffered rule    after snapshotting.
The setting real and fake rule    does nothing if we should skip the setting real and fake rule    after snapshotting.
The brown tree rule    does nothing if we should skip the brown tree rule    after snapshotting.
The setting up my apartment rule   does nothing if we should skip the setting up my apartment rule   after snapshotting.
The setting up the language studies seminar room rule  does nothing if we should skip the setting up the language studies seminar room rule  after snapshotting.
The setting up Higgate's office rule  does nothing if we should skip the setting up Higgate's office rule  after snapshotting.
The setting up Waterstone's office rule  does nothing if we should skip the setting up Waterstone's office rule  after snapshotting.
The forbidding nautical rooms rule  does nothing if we should skip the forbidding nautical rooms rule  after snapshotting.
The setting up the galley rule    does nothing if we should skip the setting up the galley rule    after snapshotting.
The setting up the linens rule    does nothing if we should skip the setting up the linens rule    after snapshotting.
The setting up your bunk rule    does nothing if we should skip the setting up your bunk rule    after snapshotting.
The setting up the natuical bathrooms rule    does nothing if we should skip the setting up the natuical bathrooms rule    after snapshotting.
The initialize hash codes rule    does nothing if we should skip the initialize hash codes rule    after snapshotting.
The setting up it and tit rule    does nothing if we should skip the setting up it and tit rule    after snapshotting.
The start looking for graphlinks rule    does nothing if we should skip the start looking for graphlinks rule    after snapshotting.
The cache reporting rule    does nothing if we should skip the cache reporting rule    after snapshotting.
The setting the stage for play rule    does nothing if we should skip the setting the stage for play rule    after snapshotting.
The finalise startup precomputation rule    does nothing if we should skip the finalise startup precomputation rule    after snapshotting.

To decide whether we should skip (R - a rule) after snapshotting:
	(- SS_Save( {R} ) -).

Include (-

Global SS_Rule_Count = 0;
Global SS_Current_Rule;

[ SS_Save rule fref res;
	! Save to an external file
	SS_Rule_Count++;
	SS_Current_Rule = rule;
	fref = glk_fileref_create_by_name( fileusage_Data, Glulx_ChangeAnyToCString( SS_Filename ), GG_SAVESTR_ROCK );
	if ( fref )
	{
		gg_savestr = glk_stream_open_file( fref, filemode_Write, GG_SAVESTR_ROCK );
		glk_fileref_destroy( fref );
		if ( gg_savestr )
		{
			@save gg_savestr res;
			! We are successfully loading from a precomputation savefile!
			if ( res == -1 )
			{
				GGRecoverObjects();
			}
			glk_stream_close( gg_savestr, 0 );
			gg_savestr = 0;
		}
	}
	rfalse;
];

[ SS_Filename ix;
	print "Snapshot-";
	if ( SS_Rule_Count < 100 )
	{
		print "0";
	}
	if ( SS_Rule_Count < 10 )
	{
		print "0";
	}
	print SS_Rule_Count, "-", (RulePrintingRule) SS_Current_Rule;
];

-).

Startup Snapshots ends here.
