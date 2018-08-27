Conversation Speedups by Counterfeit Monkey begins here.

Use authorial modesty.

Section - The mentioning relation

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

To decide whether (q - a quip) is periphery: (- (IsPeripheral({q})) -).

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

	[ WriteSubjects quip idx i subject end;
		idx = quip.(+ mention-start-index +);
		if (idx == -1) rfalse;
		end = quip.(+ mention-stop-index +);
		for (i=idx: i<=end: i++ ) {
			subject = mentions_array --> i;
			subject_count++;
			if (subject_count > 70)
				print_ret "ERROR: More than 70 available subjects!^";

			((+ Table of Current Subjects +)-->1)-->(subject_count+COL_HSIZE) = subject;
		}
	];

	[ MyMentions quip item idx i end;
		idx = quip.(+ mention-start-index +);
		if (idx == -1) rfalse;
		end = quip.(+ mention-stop-index +);
		for (i=idx: i<=end: i++ )
			if (item == mentions_array --> i) rtrue;
		rfalse;
	];

	[ ViableQuipWhichMentions thing quip;
		for (quip=child((+quip-repository+)): quip : quip=sibling(quip))
			if (MyMentions(quip, thing))
				return quip;
		return nothing;
	];

	[ CompareSubjects x y i idx end ;
		idx = x.(+ mention-start-index +);
		end = x.(+ mention-stop-index +);
		if (idx == -1) rfalse;
		for (i=idx: i<=end: i++ )
			if ( MyMentions(y, mentions_array --> i) )
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
		if ( how_many_people_here > 0 ) {
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

	[ IsPeripheral quip;
		if (quip.(+ listed-plausible +)) rtrue;
		if (~~(quip.(+ flagged-ready +))) rfalse;
		if (quip ofclass (+ location-questioning quip +)) rfalse;
		if (quip ofclass (+ demonstration quip +)) rfalse;
		if (quip ofclass (+ purchasing quip +)) rfalse;
		if (quip ofclass (+ thanking quip +)) rfalse;
		if (quip == (+ greet-quip +)) rfalse;
		if ((real_location == (+ hesychius street +)) && (MyMentions(quip, (+ food +))))
			if (quip == (+ recommend other vegetables +)) rtrue;
			else rfalse;
		if ((real_location == (+ high street +)) && ((quip == (+ where there seems a car-2 +)) || (quip == (+ where oil might be +)) || (quip == (+ where fuel might be +))))
			rfalse;
		rtrue;
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

	[ MyMentionsIndex i;
		if (i < 0) return nothing;
		return mentions_array --> i;
	];

-).

To decide which thing is mentions-index (N - a number):
	(- MyMentionsIndex({N}) -).

Section - People present

Include (-

Global how_many_people_here = 0;

Array people_present --> 71; ! To simplify things, we don't use element 0

-) after "Definitions.i6t".

How-many-people-here is a number that varies.
The how-many-people-here variable translates into I6 as "how_many_people_here".

To decide which person is present-person (N - a number):
	(- people_present --> {N} -).

Include (-

[ MyCountPeople i;

	how_many_people_here = 0;
	MyCountPeopleLoop(real_location);
	if(how_many_people_here >= 71)
		print "^ERROR! More than 70 people in location!^";
];

[ MyCountPeopleLoop start o;

	!loop through everything in start object
	for (o=start : o : ) {

		if (o ofclass (+ person +) && o ~= (+ player +)) {

				how_many_people_here++;
				if(how_many_people_here >= 71) rfalse;
				people_present --> how_many_people_here = o;
				give o (+ marked-visible +);
		}

		!Check any components recursively
		if (o.component_child)
			MyCountPeopleLoop(o.component_child);

		if (o.component_sibling)
			MyCountPeopleLoop(o.component_sibling);

		if (child(o)) o = child(o);
		else
			while (o) {

				if (sibling(o)) { o = sibling(o); break; }

				o = parent(o);
				if ( o == parent(start)) rtrue;

			}
	}
	rtrue;
];

-).

Conversation Speedups ends here.
