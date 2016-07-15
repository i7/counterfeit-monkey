#!/bin/bash

path_to_interpreter=./git

rm monkeyac.glkdata

rm "Counterfeit Monkey-startup-data.glkdata"

touch testing.glkdata

time $path_to_interpreter -uo "../Counterfeit Monkey.materials/Release/Counterfeit Monkey.gblorb" <"command scripts/test_me-me2-hard.txt" > transcript.txt

diff transcript.txt "comparison transcripts/ideal_me-me2-hard.txt" > diff.txt