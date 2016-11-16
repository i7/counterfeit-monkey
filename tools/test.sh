#!/bin/bash

# Will run Counterfeit Monkey with the provided interpreter and given command file, then compare the resulting transcript to one with a corresponding name in comparison transcripts.

path_to_interpreter=./git

rm monkeyac.glkdata
rm "Counterfeit Monkey-startup-data.glkdata"

touch testing.glkdata

testfile=("$@")

if [ ! -f $path_to_interpreter ]; then
	echo
    echo "No interpreter binary found! This is not included in the Github repository. You will have to provide one yourself."
    echo
fi

# A default file name if none is given as parameter
if [ -z "$testfile" ]; then
	testfile="command scripts/test_me.txt"
fi

time $path_to_interpreter -uo "../Counterfeit Monkey.materials/Release/Counterfeit Monkey.gblorb" <"$testfile" > transcript.txt

# The comparison transcripts folder is in .gitignore, so we might have to recreate it
mkdir -p "comparison transcripts"

ideal=$(echo "$testfile" | sed 's/command scripts\/test/comparison transcripts\/ideal/g')

if [ -s "$ideal" ]; then
	diff transcript.txt "$ideal" > diff.txt
fi