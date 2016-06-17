Version 1/160617 of Load Data on Start (for Glulx only) by Counterfeit Monkey begins here.

"Actually almost entirely written by Andrew Plotkin."

Use authorial modesty

[ Load save file on startup, if it exists and the interpreter supports it. ]


To decide whether we need to initialize hash codes:
	(- SetUpOrLoad() -).

Include (-

[ SetUpOrLoad val name len fref;
    val = glk($0004, 22, 0); ! gestalt_ResourceStream
    if (~~val) {
        print "(This interpreter does not support resource streams.)^";
        return true;
    }

    ! Look in chunk 9998. Why 9998? Because in an unrelated sample game,
    ! I used chunk 9999 for I6 debug data. None of this has to be standardized
    ! but it's nice to be consistent.
    gg_savestr = glk($0049, 9998, GG_SAVESTR_ROCK); ! stream_open_resource
    if (~~gg_savestr) {
        print "(No autorestore resource chunk.)^";
        return true;
    }

    val = glk($0090, gg_savestr); ! get_char_stream
    if (val < 0) {
       print "(The autorestore chunk is empty, which is the signal to create a new autorestore file on disk.)^";
        glk($0044, gg_savestr, 0); ! stream_close (close the empty chunk)
        gg_savestr = 0;
        return true;

        ! Set up the filename in a handy buffer
        name = "autorestore.dat";
        len = name.print_to_array(buffer, INPUT_BUFFER_LEN-4);
        buffer->3 = $E0;
        buffer->(4+len) = 0;
        fref = glk($0061, 0, buffer+3, 0); ! fileref_create_by_name
        ! (This is a type-data, binary file.)
        if (~~fref) {
        	print "(Oops, couldn't create a fileref. Skip this.)^";
            return true;
        }
        gg_savestr = glk($0042, fref, 1, GG_SAVESTR_ROCK); ! stream_open_file
        if (~~gg_savestr) {
            print "(Oops, couldn't create a new file. Skip this.)^";
            glk($0063, fref); ! fileref_destroy
            return true;
        }
        
        @save gg_savestr val;
        if (val == -1) {
            ! We actually just *restored* the auto-restore file.
            ! We now have to recover all the Glk objects; the values
            ! in our global variables are all wrong.
            GGRecoverObjects();
            glk($0044, gg_savestr, 0); ! stream_close
            gg_savestr = 0;
            print "(The autorestore file has been restored successfully.)^";
            return false;
        }
        
        glk($0044, gg_savestr, 0); ! stream_close
        gg_savestr = 0;
        if (val == 0) {
            print "(The autorestore file has been created successfully.)^";
            return false;
        }

        print "(We tried to create the autorestore file, but it didn't work.)^";
        return true;
    }
    else {
        print "(The autorestore chunk exists. We'll restore it now.)^";
        glk($0045, gg_savestr, 0, 0); ! stream_set_position (rewind to start)
        @restore gg_savestr val;
        
        ! If we got to this point, the restore must have failed.
        glk($0044, gg_savestr, 0); ! stream_close
        gg_savestr = 0;
        
        print "(We tried to load the autorestore file, but it didn't work.)^";
        return true;
    }
];

-)

Load Data on Start ends here.