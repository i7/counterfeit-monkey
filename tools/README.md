# Test scripts

The files in this folder have been useful to me in testing Counterfeit Monkey, and are included here in the hope that with some alterations they might be useful to others as well.

The large amount of randomized text in Counterfeit Monkey causes problems for automated testing. The in-game command RANDOM-SEED (number) is used in a couple of places in the scripts to alleviate this, but it would probably be a good idea to add it in more places. Resetting the random seed only helps to a degree, as any code change that involves randomness may shift the sequence of random numbers produced. Random numbers will also vary between interpreters and Inform versions.

I have used these scripts on OS X 10.11.6 with the Bash shell, the system default Python 2.7.10 and three different glulx interpreters: 

- Git with CheapGlk (by far the fastest one)

See https://github.com/DavidKinder/Git and https://github.com/erkyrath/cheapglk

- Glulxe compiled with CheapGlk and the VM_PROFILING compile time option (for performance profiling with the profile.sh script)

See https://github.com/erkyrath/glulxe

The line ”/\* #define VM_PROFILING (1) \*/” in the glulxe.h header file must be uncommented before compiling.

- Git compiled with RemGlk (for regression testing with RegTest)

See https://github.com/erkyrath/remglk

None of these are included here – you will have to compile them yourself and change the interpreter paths in the scripts accordingly. They expect a Counterfeit Monkey.gblorb file in Counterfeit Monkey.materials/Release, and the profiling script will also look for gameinfo.dbg in the Counterfeit Monkey.inform/Build folder.

## Simple tests: test.sh and rebuild_transcripts.sh

The shell scripts test.sh and rebuild_transcripts.sh will run simple regression tests that pipe commands from text files in the ”command scripts” folder and then compares the output to the corresponding files in ”comparison transcripts”, if any are found.

They expect to be run from inside the tools folder, and look for an interpreter binary named git in the same location.

The test.sh script will run the test_me.txt command script, creating a diff and a transcript of the output, while rebuild_transcripts.sh will go through every file in the ”command scripts” folder, run the test and copy the resulting output and diff to the ”comparison transcripts” folder, overwriting any files there with the same names. This will test all the three major alternative paths through the game (test_me, test_me2 and test_hard, named after the corresponding in-game test commands) and all achievements.

These will not echo any entered commands, so the resulting transcripts will only include the response text and might be hard to follow.

## Regression tests with RegTest

There are three regression test scripts in the regtest folder: regtest.sh, regtest2.sh and regtest-hard.sh, one for each major alternative path through the game. These might not be very useful in their current state: they try to account for some of the random variations of the text, but far from all. You will likely need to amend these a lot in order to get error-free runs on your system. When doing this, it will probably help to add the --verbose (or -v) switch to the regtest.py command line in the scripts.

These scripts expect to be run from inside the regtest folder, and look for a remglk-enabled interpreter binary named git-remglk and the regtest.py file in the same location, and gameinfo.dbg in the Counterfeit Monkey.inform/Build folder. They also require Python to be installed on your system.

You can get regtest.py from:
https://github.com/erkyrath/plotex

See the RegTest documentation at:
http://eblong.com/zarf/plotex/regtest.html

## Profiling with profile.sh

The profile.sh script will run the test_me test through a profiling-enabled Glulxe interpreter and run the results through profile-analyze.py. This will take several minutes.

Note that the Ultra Undo extension must be commented out of the Counterfeit Monkey source for profiling to work, i.e. the line ”Include version 1/160501 of Ultra Undo by Dannii Willis” in story.ni.

The script expects to be run from inside the tools folder, and looks for a profiling-enabled interpreter binary named gluxe and the files profile-analyze.py and dispatch_dump.xml in the same location. It will also look for gameinfo.dbg in the Counterfeit Monkey.inform/Build folder (The Inform IDE will usually create this file when compiling, but might delete it on quitting). Python needs to be installed on your system for this script to work.

profile-analyze.py:
https://github.com/erkyrath/glulxe

dispatch_dump.xml:
https://github.com/erkyrath/glk-dev/tree/master/dispatch_dump

Read the source of profile-analyze.py for full instructions on profiling:
https://raw.githubusercontent.com/erkyrath/glulxe/master/profile-analyze.py
