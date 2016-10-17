#!/bin/bash

# Will run Counterfeit Monkey regtest

rm monkeyac.glkdata
rm "Counterfeit Monkey-startup-data.glkdata"

touch testing.glkdata
time python regtest.py --rem CM-regtest-hard --timeout 1.5 --game "../../Counterfeit Monkey.materials/Release/Counterfeit Monkey.gblorb" --terp ./git-remglk