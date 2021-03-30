# Test scripts

The files in this folder have been useful to me in testing Counterfeit Monkey, and are included here in the hope that with some alterations they might be useful to others as well.

The large amount of randomized text in Counterfeit Monkey causes problems for automated testing. The in-game command RANDOM-SEED 1234 (1234 could be replaced by any integer) is used in a couple of places in the scripts to alleviate this, but it would probably be a good idea to add it in more places. Resetting the random seed only helps to a degree, as any code change that involves randomness may shift the sequence of random numbers produced in unexpected ways. Random numbers will also vary between interpreters and Inform versions.

I have used these scripts on OS X 10.11.6 with the Bash shell, the system default Python 2.7.10 and three different glulx interpreters: 

- Git (the fast Glulx interpreter, not the version control system) compiled with the Glk library CheapGlk 

See https://github.com/DavidKinder/Git and https://github.com/erkyrath/cheapglk

- Glulxe compiled with the Glk library CheapGlk and the VM_PROFILING compile time option (for performance profiling with the profile.sh script)

See https://github.com/erkyrath/glulxe and https://github.com/erkyrath/cheapglk

The line `/* #define VM_PROFILING (1) */` in the glulxe.h header file must be uncommented before compiling. And while you are editing that file, you can also make the running time of the test shorter by *commenting out* the line `#define VERIFY_MEMORY_ACCESS (1)`.

- Git compiled with the Glk library RemGlk (for regression testing with RegTest)

See https://github.com/erkyrath/remglk

None of these are included here – you will have to compile them yourself and change the interpreter paths in the scripts accordingly. They expect a `Counterfeit Monkey.gblorb` file in `Counterfeit Monkey.materials/Release`, and the profiling script will also look for `gameinfo.dbg` in the `Counterfeit Monkey.inform/Build` folder. For more detailed compilation instructions, keep reading.

## Simple tests: test.sh and rebuild_transcripts.sh

The shell scripts test.sh and rebuild_transcripts.sh will run simple regression tests that pipe commands from text files in the ”command scripts” folder, and it then compares the output to the corresponding files in ”comparison transcripts”, if any are found.

They expect to be run from inside the tools folder, and look for an interpreter binary named git in the same location.

The test.sh script will run the test_me.txt command script, creating a diff and a transcript of the output, while rebuild_transcripts.sh will go through every file in the ”command scripts” folder, run the test and copy the resulting output and diff to the ”comparison transcripts” folder, overwriting any files there with the same names. This will test all the three major alternative paths through the game (test_me, test_me2 and test_hard, named after the corresponding in-game test commands) and all achievements.

These will not echo any player commands, so the resulting transcripts will only include the response text and might be hard to follow.

## Regression tests with RegTest

There are four regression test scripts in the regtest folder: regtest.sh, regtest2.sh, regtest-hard.sh, and regtest-tests.sh. The first three are are for each major alternative path through the game, respectively. The regtest-tests.sh runs a large number of debugging commands and tests for specific bugs, and requires a debug build of the game (with the same name and location as the one expected by the other tests: Counterfeit Monkey.materials/Release/Counterfeit Monkey.gblorb.)

These might not be very useful in their current state: they try to account for some of the random variations of the text, but far from all. You will likely need to amend these a lot in order to get error-free runs on your system. When doing this, it will probably help to add the --verbose (or -v) switch to the regtest.py command line in the scripts.

These scripts expect to be run from inside the regtest folder, and they will look for a remglk-enabled interpreter binary (see above) named git-remglk and the regtest.py script in the same location.

You can get regtest.py from:
https://github.com/erkyrath/plotex

See the RegTest documentation at:
http://eblong.com/zarf/plotex/regtest.html

## Profiling with profile.sh and profiledf.sh

The profile.sh script will run the test_me test through a profiling-enabled Glulxe interpreter (see above and run the results through profile-analyze.py. This will take several minutes.

The script expects to be run from inside the folder tools/profiling, and needs the files profile-analyze.py and dispatch_dump.xml at the same location (included in the repository.) It also needs a profiling-enabled interpreter binary. (I'm using Glulxe with CheapGlk, see details above.) By default it looks for one named glulxe in the `tools` folder. It will also look for gameinfo.dbg in the `Counterfeit Monkey.inform/Build` folder. The Inform IDE will usually create this file when compiling, but might delete it on quitting unless the option `Clean build files before closing` is off in the IDE advanced preferences.

If you just want a single performance number to check whether a change made the code slower or faster, the script profiledf.sh will do this for you. (DF is for Dumbfrotz, because the script writes its reports in the Dumbfrotz format.) It works just like the profile.sh script and has the same prerequisites, but will automatically compare the number of VM cycles used this run to the last run and check if things have become slower or faster. It does this by writing and reading a file named profile-report-df.txt.

Read the source of profile-analyze.py for full instructions on profiling:
https://raw.githubusercontent.com/erkyrath/glulxe/master/profile-analyze.py

The included version of profile-analyze.py is taken from the Glulxe source:
https://github.com/erkyrath/glulxe

dispatch_dump.xml is taken from:
https://github.com/erkyrath/glk-dev/tree/master/dispatch_dump

## Building a profiling-enabled Glulxe on macOS

This is how I built Glulxe with profiling enabled on macOS 11 Big Sur. I will assume that you have Make and Clang (or another C compiler) installed. I got them through the Xcode command line tools.

1. Dowload the latest versions of [Glulxe](https://github.com/erkyrath/glulxe) and [CheapGlk](https://github.com/erkyrath/cheapglk) from Github. It is probably easier to download them as zip instead of cloning them.

2. Make sure that the Glulxe folder and the CheapGlk folder are in the same parent folder, and that the CheapGlk folder is named exactly `cheapglk`. It may be named `cheapglk-master` by default. If so, rename it.

3. Navigate to the cheapglk folder in Terminal and type `make`. This will hopefully build the CheapGlk library.

4. Edit the file `glulxe.h` in the glulxe folder using your text editor of choice. The line `/* #define VM_PROFILING (1) */` (at the time of writing, this is [line 57](https://github.com/erkyrath/glulxe/blob/master/glulxe.h#L57)) must be uncommented.

5. Navigate to the glulxe folder in Terminal and type `make`. This will hopefully detect the CheapGlk library automatically and build the Glulxe interpreter.

6. Move the Glulxe binary to `counterfeit-monkey/tools`

7. Done!

To compile Git (not the version control system!) with the RemGlk library, the process is pretty much the same. Download the Git source from https://github.com/DavidKinder/Git and the RemGlk source from https://github.com/erkyrath/remglk. Make sure that they share the same parent folder and that the RemGlk folder is named `remglk`. The main difference is that the [Git Makefile](https://github.com/DavidKinder/Git/blob/master/Makefile) must be edited so that line 8, `GLK = cheapglk`, is changed to `GLK = remglk`. And of course there is no `VM_PROFILING` line in Git to edit. The resulting binary should be renamed `git-remglk` and moved to the `tools/regtest` folder.
