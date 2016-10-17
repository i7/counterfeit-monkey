#!/bin/bash

# Will loop through all files in command scripts, run them with test.sh and then move the resulting transcript properly renamed to comparison transcripts. Also keeps non-empty diff files.

OIFS="$IFS"
IFS=$'\n'
FILES=command\ scripts/*
for f in $FILES
do
	echo "Processing $f"
	./test.sh "$f"
	mv transcript.txt "$(echo "$f" | sed 's/command scripts\/test/comparison transcripts\/ideal/g')"
	if [ -s diff.txt ]; then
		mv diff.txt "$(echo "$f" | sed 's/command scripts\/test/comparison transcripts\/diff/g')"
	fi
done
IFS="$OIFS"