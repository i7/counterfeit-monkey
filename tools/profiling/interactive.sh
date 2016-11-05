#!/bin/bash

echo
echo Example commands:
echo ">>> list_by('total_time')      # top 10 by total time including children"
echo ">>> list_by('total_ops')       # top 10 by total CPU cycles including children"
echo ">>> list_by('self_ops', 20)    # top 20 by CPU cycles excluding children"
echo
echo For more information, see profile-analyse.py source.
echo
python -i profile-analyze.py profile-raw "../../Counterfeit Monkey.inform/Build/gameinfo.dbg" --glk dispatch_dump.xml