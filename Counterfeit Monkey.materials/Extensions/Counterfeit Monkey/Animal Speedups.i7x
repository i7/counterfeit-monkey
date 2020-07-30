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


	[ MyContainedPeopleExiting burden list no_items i row t;
		for (i=1: i<=how_many_people_here: i++ ) {
			burden = people_present --> i;
			if (~~(burden.(+ fake +)))
				continue;
			if (parent(burden) == parent((+ player +)) && real_location ~= (+ Open Sea +))
				continue;
			if (parent(burden) == real_location or player or (+ boulders +) or (+ repository +) or (+ display-platform +) )
				continue;
			if ( burden == (+ Brock +) or (+ mechanic +) or (+ pirate +) or (+ pirate-crew +) or (+ crew-group +))
				continue;
			TryAction(0, burden, ##Exit, 0, 0);
		}
	];


	[ MyFollowersEntering car traveler last row;
		LIST_OF_TY_SetLength((+ incoming-list +), 0, -1, 1);
		for (traveler = child(real_location): traveler : traveler = last) {
			last = sibling(traveler);
			if (traveler ofclass (+ person +) && traveler.(+ fake +) && traveler ~= (+ roc +) && traveler ~= (+ boar +)) {
				TryAction(0, traveler, ##Enter, car, 0);
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
