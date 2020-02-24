Room Description Speedups by Counterfeit Monkey begins here.

Use authorial modesty.

[ This is basically code from Room Description Control (along with one from Tailored Room Descriptions) rewritten in Inform 6 for speed reasons. I'm not sure if the fact that we still include the original extension but replace nearly all of its rules makes things more confusing or less. ]


[When play begins (this is the new mark every thing as unmentioned when play begins rule):
	rapidly set all things not mentioned.

The new mark every thing as unmentioned when play begins rule is listed instead of the mark every thing as unmentioned when play begins rule in the when play begins rules.]

The mark every thing as unmentioned when play begins rule is not listed in any rulebook.

Before reading a command (this is the new mark everything unmentioned rule):
	rapidly set all things not mentioned.

The new mark everything unmentioned rule is listed instead of the mark everything unmentioned rule in the before reading a command rules.


A description-priority rule (this is the new marking rule):
	rapidly set all things not marked for listing;
	call the new swift rule on everything in scope.

The new marking rule is listed instead of the marking rule in the description-priority rules.


A description-priority rule (this is the new mentioning tedious things rule):
	now the player is not marked for listing;
	rapidly set all contents of player not marked for listing;
	rapidly set all scenery not marked for listing.

The new mentioning tedious things rule is listed instead of the mentioning tedious things rule in the description-priority rules.


A description-concealing rule (this is the new don't mention things out of play rule):
	rapidly set things out of play not marked for listing.

The new don't mention things out of play rule is listed instead of the don't mention things out of play rule in the description-concealing rules.


A description-concealing rule (this is the new ordinary-concealment rule):
	rapidly conceal possessions.

The new ordinary-concealment rule is listed instead of the ordinary-concealment rule in the description-concealing rules.


A scope processing rule for a thing (called n) (this is the new swift rule):
	rapidly set workflag of n.

The new swift rule is listed instead of the swift rule in the scope processing rules.


A description-concealing rule (this is the new concealing parts rule):
	rapidly set all components not marked for listing.

The new concealing parts rule is listed instead of the concealing parts rule in the description-concealing rules.

A description-concealing rule while entering a container (called special-target) (this is the hide possessions of followers when entering rule):
	rapidly hide possessions of followers in special-target.

Section 2 - New Entering and Leaving (in place of Section 2 - Entering and Leaving in Room Description Control by Emily Short)

The new describe contents rule is listed instead of the describe contents entered into rule in the report entering rulebook.

This is the new describe contents rule:
	if the person asked is the player, follow the description-priority rules.

A description-concealing rule while entering a thing (called special-target):
	rapidly set stuff outside special-target not marked for listing.

Section -

[ This one is from Tailored Room Descriptions ]

Rule for giving-surrounding-details-for something (called the special-target) (this is the new standard surroundings rule):
	while a surprising thing (called second special-target) is referenced by the current-paragraph:
		carry out the disclosing contents activity with the second special-target;
		rapidly set all immediate children of the second special-target mentioned.

The new standard surroundings rule is listed instead of the standard surroundings rule in the for giving-surrounding-details-for rulebook.


[ And these from the Standard Rules ]

The declare everything initially unmentioned rule is not listed in any rulebook.

The new declare everything unmentioned rule is listed instead of the declare everything unmentioned rule in the carry out looking rules.

Carry out looking (this is the new declare everything unmentioned rule):
	rapidly set all things not mentioned.

The new check light in new location rule is listed instead of the check light in new location rule in the carry out going rules.

Carry out an actor going (this is the new check light in new location rule):
	surreptitiously reckon darkness.

Include (-

[ OffersLight obj;
	rtrue;
];

[ HasLightSource i;
    rtrue;
];

[ ComponentHasLight o;
	rtrue;
];

[ HidesLightSource obj;
    rfalse;
];

-) instead of "Light Measurement" in "Light.i6t".


Include (-

[ ADJUST_LIGHT_R previous_light_condition;

    lightflag = true;
    location = real_location;
    rfalse;

]; -) instead of "Adjust Light Rule" in "Light.i6t".

Include (-

[ SilentlyConsiderLight;
    lightflag = true;
    location = real_location;
	rfalse;
];

-) instead of "Silent Light Consideration" in "Light.i6t".


To rapidly set workflag of (n - an object):
	(- MySetWorkFlag({n}); -).

To rapidly unset workflag of (n - an object):
	(- MyUnsetWorkFlag({n}); -).

To rapidly set all contents of (n - an object) marked for listing:
	(- MySetWorkFlagOfAllContents({n}); -).

To rapidly set all contents of (n - an object) not marked for listing:
	(- MyUnsetWorkFlagOfAllContents({n}); -).

To rapidly set all scenery not marked for listing:
	(- MyAllSceneryUnsetWorkflag(); -).

To rapidly set all components not marked for listing:
	(- MyAllComponentsUnsetWorkflag(); -).

To rapidly set things out of play not marked for listing:
	(- MyAllOutOfPlayUnsetWorkflag(); -).

To set clones of (n - an object) mentioned:
	(- MySetClonesMentioned({n}); -).

To rapidly conceal possessions:
	(- MyConcealPossessions(); -).

To rapidly set stuff outside (X - a thing) not marked for listing:
	(- MyHideExteriorStuff({X}); -).

To rapidly hide possessions of followers in (n - a container):
	(- MyFollowerStuffUnsetWorkflag({n}); -).

To rapidly mention possessions of followers in (n - a container):
	(- MyFollowerStuffSetMentioned({n}); -).

To rapidly set all immediate children of (n - an object) mentioned:
	(- MyAllNearChildrenSetMentioned({n}); -).


Seen count is a number that varies.
The seen count variable translates into I6 as "seen_count".

The lowest-rank variable translates into I6 as "lowest_rank".

The new loading table rule is listed instead of the loading table rule in the description-priority rules.

A description-priority rule (this is the new loading table rule):
	load seen-table.

To load seen-table:
	(- MyLoadSeenTable(); -).


The new description-ranking rule is listed instead of the description-ranking rule in the description-priority rules.

A description-priority rule (this is the new description-ranking rule):
	rank descriptions.

To rank descriptions:
	(- MyDescriptionRanking(); -).


The the new reporting descriptions rule is listed instead of the reporting descriptions rule in the description-priority rules.

A description-priority rule (this is the new reporting descriptions rule):
	report descriptions.

To report descriptions:
	(- MyReportDescriptions(); -).

Section - Debugging - Not for release

This is the new table-debugging rule:
	if paragraph-debug-state is 1:
		repeat with N running from 1 to seen count:
			choose row N from the Table of Seen things;
			if the output subject entry is unmentioned:
				say "[output subject entry]: rank [current rank entry][line break]";
				now output subject entry is unmentioned;
			otherwise:
				say "[output subject entry]: rank [current rank entry] (already mentioned)[line break]";
		say "[line break]".

The new table-debugging rule is listed instead of the table-debugging rule in the description-priority rules.

Section -


Include (-

	[ MySetWorkFlag obj;
		give obj workflag;
	];

	[ MyUnsetWorkFlag obj;
		give obj ~workflag;
	];

	[ MySetWorkFlagOfAllContents par;

		if (par.component_child)
			MySetWorkFlagLoop(par.component_child);

		if (par.component_sibling)
			MySetWorkFlagLoop(par.component_sibling);

		if (child(par))
			MySetWorkFlagLoop(child(par));
	];


	[ MyUnsetWorkFlagOfAllContents par;

		if (par.component_child)
			MyUnsetWorkFlagLoop(par.component_child);

		if (par.component_sibling)
			MyUnsetWorkFlagLoop(par.component_sibling);

		if (child(par))
			MyUnsetWorkFlagLoop(child(par));
	];

	[ MySetWorkFlagLoop first o;
		for (o=first : o : ) {
			give o workflag;

			if (o.component_child)
				MySetWorkFlagLoop (o.component_child);

			if (o.component_sibling)
				MySetWorkFlagLoop (o.component_sibling);

			if (child(o)) o = child(o);
			else
				while (o) {

					if (sibling(o)) { o = sibling(o); break; }
					o = parent(o);
					if ( o == parent(first) ) return;

				}
		}
		return;
	];

	[ MyUnsetWorkFlagLoop first o;

		for (o=first : o : ) {
			give o ~workflag;

			if (o.component_child)
				MyUnsetWorkFlagLoop (o.component_child);

			if (o.component_sibling)
				MyUnsetWorkFlagLoop (o.component_child);

			if (child(o))
				o = child(o);
			else
				while (o) {
					if (sibling(o)) {
						o = sibling(o);
						break;
					}
					o = parent(o);
					if ( o == parent(first) ) return;
				}
		}
		return;
	];

	[ MyAllSceneryUnsetWorkflag obj;
		for (obj=IK2_First: obj: obj=obj.IK2_Link) {
			if (obj has scenery)
				give obj ~workflag;
		}
	];


	[ MyAllComponentsUnsetWorkflag obj;
		for (obj=IK2_First: obj: obj=obj.IK2_Link) {
			if (obj.component_parent)
				give obj ~workflag;
		}
	];

	[ MyAllOutOfPlayUnsetWorkflag obj;
		for (obj=IK2_First: obj: obj=obj.IK2_Link) {
			if (~~parent(obj))
				give obj ~workflag;
		}
	];

	[ MyAllNearChildrenSetMentioned obj c;
		for (c=child(obj): c :c=sibling(c))
			give c mentioned;

		if (obj.component_child)
			for (c=obj.component_child: c :c = sibling(c))
				give c mentioned;
	];

	[ MySetClonesMentioned obj sib;
		sib=child(parent(obj));
		if (~~sib) sib = (obj.component_parent).component_child;
		for (: sib : sib=sibling(sib))
			if (sib.list_together == obj.list_together || Identical(obj, sib))
			{
				give sib mentioned;
				give sib ~workflag;
			}
	];

	[ MyConcealPossessions obj obj2;
		! class K8_person
		for (obj=IK8_First: obj: obj=obj.IK8_Link)
			if (obj has workflag)
				for (obj2=child(obj): obj2 : obj2=sibling(obj2)) {
					particular_possession = obj2;
					if (CarryOutActivity(DECIDING_CONCEALED_POSSESS_ACT, obj))
						give obj2 ~workflag;
				}
	];

	[ MyHideExteriorStuff car obj obj2;
		for (obj=IK2_First: obj : obj=obj.IK2_Link)
			if (obj has workflag) {
				give obj ~workflag;
				for (obj2 = parent(obj): obj2 : obj2 = parent (obj2)) {
					if (obj2 == car) {
						give obj workflag;
						break;
					}
				}
			}
	];

	[ MyFollowerStuffUnsetWorkflag car obj obj2;
		for (obj=child(car) : obj : obj=sibling(obj))
			if (obj ofclass (+ person +) && (obj.(+ fake +)))
				for (obj2=child(obj): obj2 : obj2=sibling(obj2))
					give obj2 ~workflag;
	];

	[ MyFollowerStuffSetMentioned car obj obj2;
		for (obj=child(car) : obj : obj=sibling(obj))
			if (obj ofclass (+ person +) && (obj.(+ fake +))) {
				give obj mentioned;
				for (obj2=child(obj): obj2 : obj2=sibling(obj2))
					give obj2 mentioned;
			}
	];


-) after "Output.i6t".


Include (-

Global seen_count = 0;
Global lowest_rank = 0;

-) after "Definitions.i6t".


Include (-

	[ MyLoadSeenTable obj col;
		seen_count = 0;

		col=TableFindCol((+ Table of Seen Things +), (+ output subject +), true);

		for (obj=IK2_First: obj : obj=obj.IK2_Link)
			if (obj has workflag && obj hasnt mentioned) {
				seen_count++;
				if (seen_count > 60) print_ret "ERROR: more than 60 mentionable things in room!^";
				((+ Table of Seen Things +)-->col)-->(seen_count+COL_HSIZE) = obj;
			}
	];


	[ MyDescriptionRanking i output output_col curr_rank_col;

		lowest_rank = 1000;

		output_col=TableFindCol((+ Table of Seen Things +), (+ output subject +), true);
		curr_rank_col=TableFindCol((+ Table of Seen Things +), (+ current rank +), true);

		for (i=1: i <= seen_count : i++ ) {
			output = ((+ Table of Seen Things +)-->output_col)-->(i+COL_HSIZE);

			output.(+ description-rank +) = 0;

			FollowRulebook ((+ the ranking rules +), output, true);

			((+ Table of Seen Things +)-->curr_rank_col)-->(i+COL_HSIZE) = output.(+ description-rank +);
			if (output.(+ description-rank +) < lowest_rank )
				lowest_rank = output.(+ description-rank +);
		}
		TableSortPartial((+Table of Seen Things +), seen_count, curr_rank_col, -1);
	];


	[ MyReportDescriptions col i output;

		col=TableFindCol((+ Table of Seen Things +), (+ output subject +), true);

		for (i=1: i <= seen_count : i++ ) {
			output = ((+ Table of Seen Things +)-->col)-->(i+COL_HSIZE);
			if (output hasnt mentioned)
				 CarryOutActivity((+ the writing a paragraph about activity +), output);
		}
	];
-).

Room Description Speedups ends here.
