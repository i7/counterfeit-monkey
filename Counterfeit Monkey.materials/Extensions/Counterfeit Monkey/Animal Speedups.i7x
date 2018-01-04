Animal Speedups by Counterfeit Monkey begins here.

Use authorial modesty.

To rapidly check all contained people:
	(- MyContainedPeopleExiting(); -).

To rapidly make followers follow into (X - a vehicle):
	(- MyFollowersEntering({X}); -).

To rapidly make followers try exiting from (X - a container):
	(- MyFakePeopleExiting({X}); -).
	
To rapidly make followers try going (X - an object) from (Y - a room):
	(- MyFakePeopleGoing({Y},{X}); -).

To rapidly move followers to (R - a room):
	(- MyMoveFakePeopleTo({R}); -).

Include
(-
	[ MyMoveFakePeopleTo loc obj next;
		for (obj=child(real_location): obj: obj=next) {
			next = sibling(obj);
			if (obj ofclass (+ person +) && (obj.(+ fake +)))
				move obj to loc;
		}
	];


	[ MyContainedPeopleExiting burden list no_items i row;
		list = (+ people-present +);
		no_items = BlkValueRead(list, LIST_LENGTH_F);
		for (i=0: i<no_items: i++ ) {
			burden = BlkValueRead(list, i+LIST_ITEM_BASE);
			if (~~(burden.(+ fake +)))
				continue;
			if (parent(burden) == real_location or player or (+ boulders +))
				continue;
			if ( burden == (+ pirate +))
				continue;
			if ( burden == (+ pirate-crew +))
				continue;
			if ( burden == (+ crew-group +))
				continue;
			if ( burden == (+ Brock +))
				continue;
			if ( burden == (+ mechanic +))
				continue;
			if (ExistsTableRowCorr((+ Table of voluntary entry +),(+ enterer +),burden)) {
				![choose the row with enterer of burden in Table of voluntary entry;]
				row = TableRowCorr((+ Table of voluntary entry +), (+ enterer +), burden);
				![if box entry is holder of burden:]
				if (TableLookUpEntry((+ Table of voluntary entry +),(+ holder box +),row) == parent(burden))
					![if entrance time entry is time of day:]
					if (TableLookUpEntry((+ Table of voluntary entry +),(+ entrance time +),row) == the_time)
						continue;
					else
						![if a random chance of 1 in 10 succeeds:]
						if (random(10) <= 1)
							![blank out the whole row;]
							TableBlankOutRow((+ Table of voluntary entry +), row);
						else
							continue;
				else TableBlankOutRow((+ Table of voluntary entry +), row);

			}
			TryAction(0, burden, ##Exit, 0, 0);
		}
	];


	[ MyFollowersEntering car traveler last row;
		LIST_OF_TY_SetLength((+ incoming-list +), 0, -1, 1);
		for (traveler = child(real_location): traveler : traveler = last) {
			last = sibling(traveler);
			if (traveler ofclass (+ person +) && traveler.(+ fake +) && traveler ~= (+ roc +)) {
				TryAction(0, traveler, ##Enter, car, 0);
				if ( parent(traveler) == car) {
					if (ExistsTableRowCorr((+ Table of voluntary entry +),(+ enterer +),traveler))
						row = TableRowCorr((+ Table of voluntary entry +), (+ enterer +), traveler);
					else
						row = TableBlankRow((+ Table of voluntary entry +));
					! [ now enterer entry is traveler]
					TableLookUpEntry((+ Table of voluntary entry +),(+ enterer +), row, 1, traveler);
					! [ now box entry is noun]
					TableLookUpEntry((+ Table of voluntary entry +),(+ holder box +), row,1,car);
					! [ now time entry is time of day]
					TableLookUpEntry((+ Table of voluntary entry +),(+ entrance time +), row, 1, the_time);
				}
			}
		}
	];

	[ MyFakePeopleGoing room dir traveler last;
        LIST_OF_TY_SetLength((+ incoming-list +), 0, -1, 1);
		for (traveler = child(room): traveler : traveler = last) {
			last = sibling(traveler);
			if (traveler ofclass (+ person +) && traveler.(+ fake +) && traveler ~= (+ roc +))
				TryAction(0, traveler, ##Go, dir, 0);
		}
	];

	[ MyFakePeopleExiting holder traveler last;
		LIST_OF_TY_SetLength((+ incoming-list +), 0, -1, 1);
		for (traveler = child(holder): traveler : traveler = last) {
			last = sibling(traveler);
			if (traveler ofclass (+ person +) && traveler.(+ fake +) )
				TryAction(0, traveler, ##Exit, 0, 0);
		}
	];
-).

Animal Speedups ends here.
