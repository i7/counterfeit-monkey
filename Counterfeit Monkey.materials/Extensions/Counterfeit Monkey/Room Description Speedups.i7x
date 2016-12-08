Room Description Speedups by Counterfeit Monkey begins here.

Use authorial modesty.

[ This is basically code from Room Description Control (along with one from Tailored Room Descriptions) rewritten in Inform 6 for speed reasons. I'm not sure if the fact that we still include the original extension but replace nearly all of its rules makes things more confusing or less. ]

[ Actually, the room descriptions were never had a lot of performance problems, but this was low hanging fruit. ]

When play begins (this is the new mark every thing as unmentioned when play begins rule):
	rapidly set all things not mentioned.

The new mark every thing as unmentioned when play begins rule is listed instead of the mark every thing as unmentioned when play begins rule in the when play begins rules.


Before reading a command (this is the new  mark everything unmentioned rule):
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


Rule for deciding whether all includes something (called special-target) while taking (this is the new excluding concealed items rule): 
	now special-target is marked for listing;
	follow the new mentioning tedious things rule;
	follow the determining concealment rule;
	if the special-target is not marked for listing, it does not;
	make no decision.

The new excluding concealed items rule is listed instead of the excluding concealed items rule in the for deciding whether all includes rules.


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


[ This one is from Tailored Room Descriptions ]

Rule for giving-surrounding-details-for something (called the special-target) (this is the new standard surroundings rule):
	while a surprising thing (called second special-target) is referenced by the current-paragraph:
		carry out the disclosing contents activity with the second special-target;
		rapidly set all immediate children of the second special-target mentioned.

The new standard surroundings rule is listed instead of the standard surroundings rule in the for giving-surrounding-details-for rulebook.


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


To rapidly set all immediate children of (n - an object) mentioned:
	(- MyAllNearChildrenSetMentioned({n}); -).
	

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
			
		if (child(par))
			MySetWorkFlagLoop(child(par));
	];
	
	
	[ MyUnsetWorkFlagOfAllContents par;

		if (par.component_child)
			MyUnsetWorkFlagLoop(par.component_child);

		if (child(par))
			MyUnsetWorkFlagLoop(child(par));
	];

	[ MySetWorkFlagLoop first o;
		for (o=first : o : ) {
			give o workflag;

			if (o.component_child)
				MySetWorkFlagLoop (o.component_child);

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
			if (sib.list_together == obj.list_together)
				give sib mentioned;
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

-) after "Output.i6t".


Room Description Speedups ends here.