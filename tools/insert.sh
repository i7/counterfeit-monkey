#!/bin/bash

path_to_interpreter=./git
testfile="command scripts/minimal.txt"

$path_to_interpreter "../Counterfeit Monkey.materials/Release/Counterfeit Monkey.gblorb" <"$testfile"  > transcript.txt

echo "y" | python blorbtool.py "../Counterfeit Monkey.materials/Release/Counterfeit Monkey.gblorb" import Data 9998 IFZS "Counterfeit Monkey-startup-data.glkdata"