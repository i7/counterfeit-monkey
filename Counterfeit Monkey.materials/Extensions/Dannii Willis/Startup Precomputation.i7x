Version 1/160621 of Startup Precomputation (for Glulx only) by Dannii Willis begins here.

"A system for precomputing slow startup code"

Use startup precomputation blorb chunk number of at least 9998 translates as (- Constant SP_Blorb_Chunk_Number = {N}; -).

[ We need ASR to ensure that the main window is always opened ]
Include version 1/140516 of Alternative Startup Rules by Dannii Willis.

The attempt to load a precomputation data file rule is listed in the after starting the virtual machine rules.
The attempt to load a precomputation data file rule translates into I6 as "SP_Attempt_Load".

The finalise startup precomputation rule is listed in the when play begins rules.
The finalise startup precomputation rule translates into I6 as "SP_Save".

Include (-

[ SP_Attempt_Load fref res;
	! Test if the interpreter supports resource streams
	if ( glk_gestalt( gestalt_ResourceStream, 0 ) )
	{
		! Open the blorb chunk if it exists
		gg_savestr = glk_stream_open_resource( SP_Blorb_Chunk_Number, GG_SAVESTR_ROCK );
	}
	! Otherwise check if an external precomputation savefile exists
	if ( gg_savestr == 0 )
	{
		fref = glk_fileref_create_by_name( fileusage_Data, Glulx_ChangeAnyToCString( SP_Filename ), GG_SAVESTR_ROCK );
		if ( fref )
		{
			gg_savestr = glk_stream_open_file( fref, filemode_Read, GG_SAVESTR_ROCK );
			glk_fileref_destroy( fref );
		}
	}
	! Try to restore
	if ( gg_savestr )
	{
		@restore gg_savestr res;
		glk_stream_close( gg_savestr, 0 );
		gg_savestr = 0;
	}
	rfalse;
];

[ SP_Save fref res;
	! Save to an external file
	fref = glk_fileref_create_by_name( fileusage_Data, Glulx_ChangeAnyToCString( SP_Filename ), GG_SAVESTR_ROCK );
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

[ SP_Filename ix;
	print (TEXT_TY_Say) Story, "-startup-data";
];

-).

Startup Precomputation ends here.

---- DOCUMENTATION ----

There are a few Inform stories which do so much in their "when play begins" rules that the interpreter pauses for a few seconds on the fastest computers. On slow computers it can take much longer. This extension provides a system for the results of the startup code to be saved and loaded the next time the story file is run. It is also possible to embed that precomputation data inside the blorb so that those who download your story don't even need to run the startup code once!

This extension adds two rules: the attempt to load a precomputation data file rule in the after starting the virtual machine rules, and the finalise startup precomputation rule in the when play begins rules. You must ensure that all of your slow startup rules run before the finalise startup precomputation rule, by using "listed before" statements as described in section 19.4 of the manual.

To embed the precomputation data inside the blorb, compile a release version of your story and run it once to produce the data file. Then use a blorb editing program to add the data file as a new blorb chunk. I recommend Andrew Plotkin's blorbtool.py (available at https://github.com/erkyrath/glk-dev/blob/master/blorbtool.py). This command will embed Story-startup-data.glkdata inside Story.gblorb:

	python blorbtool.py Story.gblorb import Data 9998 IFZS Story-startup-data.glkdata

This extension will by default use a blorb resource number of 9998. If for some reason you need to change it, you can use this command to set another (higher) number:
	
	Use startup precomputation blorb chunk number of at least 10000.

This extension is released under the Creative Commons Attribution licence. Bug reports, feature requests or questions should be made at <https://github.com/i7/extensions/issues>.