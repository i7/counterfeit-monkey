#!/bin/bash

path_to_interpreter=../glulxe

if [ ! -f $path_to_interpreter ]; then
	echo
    echo "No interpreter binary found at $path_to_interpreter! This is not included in the Github repository. You will have to provide your own."
    echo
fi

rm monkeyac.glkdata

rm "Counterfeit Monkey-startup-data.glkdata"

touch testing.glkdata

if [ -s profile-report-df_old.txt ]; then
	mv -f profile-report-df_old.txt profile-report-df_older.txt
fi

if [ -s profile-report-df.txt ]; then
	mv -f profile-report-df.txt profile-report-df_old.txt
fi

time $path_to_interpreter -uo --profile profile-raw --profcalls "../../Counterfeit Monkey.materials/Release/Counterfeit Monkey.gblorb" <"../command scripts/test_me.txt" > profile-transcript.txt

python profile-analyze.py profile-raw "../../Counterfeit Monkey.inform/Build/gameinfo.dbg" --glk dispatch_dump.xml --dumbfrotz > profile-report-df.txt

echo

./difference.pl