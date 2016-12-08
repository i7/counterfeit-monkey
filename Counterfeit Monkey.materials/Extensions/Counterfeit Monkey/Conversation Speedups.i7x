Conversation Speedups by Counterfeit Monkey begins here.

Use authorial modesty.

To sort quips for (n - a person):
	(- MySortQuips({n}); -).
	
To rapidly relabel available quips:
	(- MyRelabelAvailableQuips(); -).

To rapidly set all unlisted-plausible:
	(- MySetUnlistedPlausible(); -).

To decide whether (q - a quip) mentions (t - a thing): (- (MyMentions({q},{t})) -).

To decide whether (t - a thing) is mentioned by (q - a quip): (- (MyMentions({q},{t})) -).

To decide which quip is repository-quip-which-mentions (t - a thing):
	(- (ViableQuipWhichMentions({t})) -).

To decide whether (x - a quip) shares a subject with (y - a quip):
	(- (CompareSubjects({x},{y})) -).

To decide which thing is subject-number (i - a number):
 	(- GetSubject({i}) -).

To populate subjects-table:
	(- PopulateSubjectsTable(); -).

Table of Current Subjects
viable-subject (a thing)
with 70 blank rows.



Subject count is a number that varies. 
The subject count variable translates into I6 as "subject_count".


Include (-

Global subject_count = 0;

-) after "Definitions.i6t".


Include (-

	[ PopulateSubjectsTable quip col;
		subject_count=0;
		for (quip = child((+quip-repository+)): quip :quip=sibling (quip))
			WriteSubjects(quip);
		TableSortPartial((+Table of Current Subjects +), subject_count, 1, 1);
		EliminateDuplicates();
	];
	
	[ WriteSubjects quip list i subject col no_items;
		list = quip.(+ mentions-list +);
		no_items = BlkValueRead(list, LIST_LENGTH_F);
		for (i=0: i<no_items: i++ ) {
			subject = BlkValueRead(list, i+LIST_ITEM_BASE);
			subject_count++;
			if (subject_count > 70)
				print_ret "ERROR: More than 70 available subjects!^";
				
			((+ Table of Current Subjects +)-->1)-->(subject_count+COL_HSIZE) = subject;
		}
	];

	[ MyMentions quip item list i no_items;
		list = quip.(+ mentions-list +);
		no_items = BlkValueRead(list, LIST_LENGTH_F);
		for (i=0: i<no_items: i++ )
			if (item == BlkValueRead(list, i+LIST_ITEM_BASE)) rtrue;
		rfalse;
	];
	
	[ ViableQuipWhichMentions thing quip;
		for (quip=child((+quip-repository+)): quip : quip=sibling(quip))
			if (MyMentions(quip, thing))
				return quip;
		return nothing;
	];
	
	[ CompareSubjects x y i list no_items ;
		list = x.(+ mentions-list +);
		no_items = BlkValueRead(list, LIST_LENGTH_F);
		for (i=0: i<no_items: i++ )
			if ( MyMentions(y, BlkValueRead(list, i+LIST_ITEM_BASE)) )
				rtrue;
		rfalse;
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
		PopulateSubjectsTable();
	];

	[ MyRelabelAvailableQuips q;
		if ((+ how-many-people-here +)) {
			for (q = child((+quip-repository+)): q :q=sibling (q)) {
				FollowRulebook ((+ the availability rules +), q, true);
				if ( ResultOfRule() == (+ the it is available outcome +))
					q.(+ flagged-ready +) = true;
				else
					q.(+ flagged-ready +) = false;

			}
		}
	];

	[ EliminateDuplicates i v last print_head;	

		last = TABLE_NOVALUE;
		print_head = 0;
		
		! Get a value from this row. Compare the new value to the last. If they don't match, write new value at print_head position and advance print_head.
		for (i = 1 : i <= subject_count : i++ ) {
			v = ((+ Table of Current Subjects +)-->1)-->(i+COL_HSIZE);
			!((+ Table of Current Subjects +)-->1)-->(i+COL_HSIZE)) = TABLE_NOVALUE;
			if (v ~= last) {
				print_head++;
				((+ Table of Current Subjects +)-->1)-->(print_head+COL_HSIZE) = v;
			}
			last = v;
		}
	
		subject_count = print_head;
		!print "Eliminated duplicate subjects. Current number: ",subject_count,".^";
	];

	[ GetSubject index col;
		return ((+ Table of Current Subjects +)-->1)-->(index+COL_HSIZE);
	];
	
	[ MySetUnlistedPlausible q;
		for (q = child((+quip-repository+)): q :q=sibling (q))
			q.(+ listed-plausible +) = false;
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


-).


Conversation Speedups ends here.