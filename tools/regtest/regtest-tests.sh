#!/bin/bash

# Will run Counterfeit Monkey regtest "tests"

rm monkeyac.glkdata
rm "Counterfeit Monkey-startup-data.glkdata"

touch testing.glkdata
time python regtest.py --rem CM-regtest-tests --timeout 1 --game "../../Counterfeit Monkey.materials/Release/Counterfeit Monkey.gblorb" --terp ./git-remglk tests --verbose
