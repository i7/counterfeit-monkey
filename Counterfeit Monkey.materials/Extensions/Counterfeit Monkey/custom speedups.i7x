Custom Speedups by Counterfeit Monkey begins here.

Use authorial modesty.

A description-priority rule (this is the new marking rule):
	rapidly set all things not marked for listing;
	call the new swift rule on everything in scope.

The new marking rule is listed instead of the marking rule in the description-priority rules.

A description-priority rule (this is the new mentioning tedious things rule):
	now the player is not marked for listing;
	rapidly set all contents of player not marked for listing;
	rapidly set all scenery not marked for listing.

The new mentioning tedious things rule is listed instead of the mentioning tedious things rule in the description-priority rules.

A scope processing rule for a thing (called n) (this is the new swift rule):
	rapidly set workflag of n.

The new swift rule is listed instead of the swift rule in the scope processing rules.

A description-concealing rule (this is the new concealing parts rule):
	rapidly set all components not marked for listing.

The new concealing parts rule is listed instead of the concealing parts rule in the description-concealing rules.

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

To rapidly set all immediate children of (n - an object) mentioned:
	(- MyAllNearChildrenSetMentioned({n}); -).

To rapidly set everything marked invisible:
	(- MyAllSetMarkedInvisible(); -).

To rapidly set (n - an object) marked visible:
	(- MySetMarkedVisible({n}); -).

To rapidly set everything marked-visible as seen:
	(- MySetAllMarkedVisibleAsSeen(); -).

To sort quips for (n - a person):
	(- MySortQuips({n}); -).


Include (-
  
	[ MySetWorkFlag obj;
		give obj workflag;
	];
	
	[ MyUnsetWorkFlag obj;
		give obj ~workflag;
	];

	[ MySetWorkFlagOfAllContents par;
	
		if (par provides component_child && par.component_child)
			MySetWorkFlagLoop(par.component_child);
			
		if (child(par))
			MySetWorkFlagLoop(child(par));
	];

	[ MySetWorkFlagLoop first o;
		for (o=first : o : ) {
			give o workflag;

			if (o provides component_child && o.component_child)
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

	[ MyUnsetWorkFlagOfAllContents par;

		if (par provides component_child && par.component_child)
			MyUnsetWorkFlagLoop(par.component_child);

		if (child(par))
			MyUnsetWorkFlagLoop(child(par));
	];

	[ MyUnsetWorkFlagLoop first o;
			
		for (o=first : o : ) {
			give o ~workflag;
			
			if (o provides component_child && o.component_child)
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
	
	[ lron obj;
		if ( obj == (+ letter-remover +)) {
			print "letter-remover";
			return;
		}
		if ( obj == nothing)
			print "nothing";
		else
			print (TEXT_TY_Say) obj.short_name;
	];
	
	[ MyAllSceneryUnsetWorkflag obj;
		for (obj=IK2_First: obj: obj=obj.IK2_Link) {
			if (obj has scenery)
				give obj ~workflag;
		}
	];

		!Array KindHierarchy --> K0_kind (0) K1_room (0) K2_thing (0) K3_direction (0) 		
		!K4_door (2) K5_container (2) K6_supporter (2) K7_backdrop (2) K8_person 

	[ MyAllSetMarkedInvisible obj;
		for (obj=IK2_First: obj: obj=obj.IK2_Link) {
			give obj ~(+ marked-visible +);
		}
	];

	[ MySetMarkedVisible obj;
		give obj (+ marked-visible +);
	];

	[ MyAllComponentsUnsetWorkflag obj;
		for (obj=IK2_First: obj: obj=obj.IK2_Link) {
			if (obj provides component_parent && obj.component_parent)
				give obj ~workflag;
		}
	];

	[ MySetAllMarkedVisibleAsSeen obj;
		for (obj=IK2_First: obj: obj=obj.IK2_Link) {
			if (obj has (+ marked-visible +) )
				give obj (+ seen +);
		}
	];


	[ MyAllNearChildrenSetMentioned obj c;
		c = child(obj);
		while (c) {
			give c mentioned;
			c = sibling(c);
		}
		if (obj provides component_child && obj.component_child) {
			c = obj.component_child;
			while (c) {
				give c mentioned;
	];

	[ MySortQuips interl q next;
		for (q = child((+backup-repository+)): q :q=next) {
			next = sibling (q);
			if (q provides (+ the quip-supplying relation storage +) && q.(+ the quip-supplying relation storage +) == interl)
				move q to (+ quip-repository +);
		}
		for (q = child((+quip-repository+)): q :q=next) {
			next = sibling (q);
			if (q provides (+ the quip-supplying relation storage +) && q.(+ the quip-supplying relation storage +) && q.(+ the quip-supplying relation storage +) ~= interl )
				move q to (+ backup-repository +);
		}

	];

	[ quipsay q;
		if (q provides short_name && q.short_name)
					print (TEXT_TY_Say) q.short_name;
				else
					if (q provides description && q.description)
						print (TEXT_TY_Say) q.description;
					else
						print q;
	];

-) after "Definitions.i6t".


Custom Speedups ends here.