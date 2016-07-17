#!/bin/bash

# Will run Counterfeit Monkey with the provided interpreter and given command file, then compare the resulting transcript to one with a corresponding name in comparison transcripts.

path_to_interpreter=./git

rm monkeyac.glkdata
rm "Counterfeit Monkey-startup-data.glkdata"

touch testing.glkdata

testfile=("$@")

#A default file name if none is given as parameter
if [ -z "$testfile" ]; then
	testfile="command scripts/test_me.txt"
fi

time $path_to_interpreter -uo "../Counterfeit Monkey.materials/Release/Counterfeit Monkey.gblorb" <"$testfile" > transcript.txt

diff transcript.txt "$(echo "$testfile" | sed 's/command scripts\/test/comparison transcripts\/ideal/g')" > diff.txt