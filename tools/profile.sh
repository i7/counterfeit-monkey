#!/bin/bash

path_to_interpreter=./glulxe

rm monkeyac.glkdata

rm "Counterfeit Monkey-startup-data.glkdata"

touch testing.glkdata

time $path_to_interpreter -uo --profile profile-raw --profcalls "../Counterfeit Monkey.materials/Release/Counterfeit Monkey.gblorb" <"command scripts/test_me.txt" > profile_transcript.txt

python profile-analyze.py profile-raw "../Counterfeit Monkey.inform/Build/gameinfo.dbg" --glk dispatch_dump.xml > profile-report.txt