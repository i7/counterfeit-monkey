#!/bin/bash

path_to_interpreter=./git
testfile="command scripts/test_minimal.txt"

rm monkeyac.glkdata
rm testing.glkdata
rm "Counterfeit Monkey-startup-data.glkdata"

$path_to_interpreter "../Counterfeit Monkey.materials/Release/Counterfeit Monkey.gblorb" <"$testfile"  > transcript.txt

echo "y" | python blorbtool.py "../Counterfeit Monkey.materials/Release/Counterfeit Monkey.gblorb" import Data 9998 IFZS "Counterfeit Monkey-startup-data.glkdata"