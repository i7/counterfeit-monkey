Utilitarian inventory by Counterfeit Monkey begins here.

Use authorial modesty.

Section - Utilitarian inventory

Instead of taking inventory when the current inventory listing style is utilitarian:
	if the player is empty, say "[We] [are] empty-handed." instead;
	[We (ab)use a table here, for speed reasons and in order to simplify the I6 code further down.]
	[First, we fill it with everything listable we carry and sort it alphabetically]
	now inventory count is populate inventory table;
	repeat with R running from 1 to inventory count:
		choose row R in Table of Inventory Ordering;
		let N be the printed name of referent entry;
		now appearance entry is N in lower case;
	sort Table of Inventory Ordering up to row inventory count in appearance order;
	let paragraph break needed be false;
	[ List essentials ]
	unless essential count is 0:
		if essential count is 1:
			say "[We] [are] equipped with [essential-list] [--] an essential [we] mustn't part with. ";
		otherwise:
			say "[We] [are] equipped with the following essentials: [essential-list].[no line break]";
		now paragraph break needed is true;
	[ List non-essentials ]
	unless essential count is inventory count:
		if paragraph break needed is true: [if we have listed any essential things]
			say "[paragraph break][We] [are] also carrying ";
		else:
			[if we only have non-essential items and are wearing them, just say that and skip the rest]
			if all-is-worn:
				say "[We] [are] wearing [a list of worn things *in the player]." instead;
			else:
				say "[We] [are] carrying ";
		say "[non-essential-list].[no line break]";
		now paragraph break needed is true;
	[ List what is in the backpack and what is not ]
	if the player encloses the backpack:
		let unpacked count be (inventory count - packed count) - 1;
		if packed count is greater than unpacked count or (packed count is greater than 0 and packed count is less than 3):
			if the unpacked count is 0 or the packed count is less than 3:
				say "[paragraph break][if the packed count is less than 3][The packed-list are][else]Everything [we] carry is[end if] in the backpack, which is [if backpack is closed]closed for greater concealment[else]gaping wide open so everyone can see what's inside[end if]. ";
			else:
				say "[paragraph break]Everything [we] carry is in the backpack except [the unpacked-list]. The backpack is [if backpack is closed]closed for greater concealment[else]gaping wide open so everyone can see what's inside[end if]. ";
		else:
			if the packed count is 0:
				if unpacked count is greater than 1:
					say "[paragraph break]None of that is in the backpack. [no line break]";
					now paragraph break needed is true;
			else:
				say "[paragraph break]Of that collection, [the packed-list are] packed away in the backpack, which is [if backpack is closed]closed for greater concealment[else]gaping wide open so everyone can see what's inside[end if]. ";
	[ List any contents of other carried containers or supporters ]
	let listed container be next listable container;
	if listed container is not nothing:
		say paragraph break;
		while listed container is not nothing:
			say "[The inventory-container-list of listed container are] [in-on the listed container]. [no line break]";
			now listed container is next listable container;
		now paragraph break needed is true;
	[ List any worn things ]
	if the player wears something:
		say "[paragraph break][We] [are] wearing [the list of worn things *in the player]. ";
		now paragraph break needed is true;
	if paragraph break needed is true:
		say paragraph break.



Table of Inventory Ordering
appearance (text)	referent (a thing)	holder (a thing)	listable container (a thing)
with 100 blank rows.


Table of Ultratests
topic (a topic)	stuff (a list of objects)	setting (a room)
"newutility"	{ backpack, secret-plans, cate, lime, wig }	--

Test newutility with "tutorial off / i / put all in backpack / i / wave l-remover at plans / put pans in backpack / i / put all in backpack / i / close backpack / i / x backpack / open backpack / x backpack / i / wear wig / i / wear monocle / i / drop backpack / i / x me" [holding the backpack and the secret-plans and the lime and the cate and the wig.]

After printing the name of the derivate of the secret-plans while taking inventory:
	if the current inventory listing style is utilitarian and the derivate of the secret-plans is not the secret-plans:
		say "[roman type] (really the smuggled plans in disguise)".

After printing the name of the tub while taking inventory:
	if the current inventory listing style is utilitarian:
		say " of restoration gel".

To decide which number is populate inventory table:
	(- ( PopulateTableOfInventoryOrdering() ) -).

Include (-

! This routine traverses the object tree inside the player and writes everything carried into the table, but skips over any components, i.e. anything that is part of something else. I don't think this ever matters in practice.

[ PopulateTableOfInventoryOrdering o row real_parent;

	row = 1;
	essential_count = 0;
	packed_count = 0;
	for (o = child(player) : o : ) {
		if (IsInventoryListable(o)) {
			TableLookUpEntry((+ Table of Inventory Ordering +), (+ referent +), row, 1, o);
			if( ( o provides (+ essential +)) && (o.(+ essential +) ) )
				essential_count = essential_count + 1;

			real_parent = parent(o);

			! If current object is in a container other than the backpack, add parent to row 4 (listable container entry), then check if parent is in the backpack.

			if (real_parent ~= player or (+backpack+))
				TableLookUpEntry((+ Table of Inventory Ordering +), (+ listable container +), row, 1, real_parent);

			while (real_parent ~= player or (+backpack+))
				real_parent = parent(real_parent);

			if (real_parent == (+backpack+))
					packed_count = packed_count + 1;

			! Write backpack or player in holder entry

			TableLookUpEntry((+ Table of Inventory Ordering +), (+ holder +), row, 1, real_parent);
			row++;
			if (row > 100) { print "ERROR: more than 100 listable things in inventory!^"; return 100; }
		}
		if (child(o)) o = child(o);
		else {
			while (o) {
				if (sibling(o)) { o = sibling(o); break; }
				o = parent(o);
				if (o == player) return row - 1;
			}
		}
	}
	return row - 1;
];

-).

To say essential-list:
	(- MyWriteInventoryList (ENGLISH_BIT, ESSENTIALS); -).

To say non-essential-list:
	(- MyWriteInventoryList (ENGLISH_BIT, INESSENTIALS); -).

To say the unpacked-list:
	(- MyWriteInventoryList (ENGLISH_BIT+DEFART_BIT, UNPACKED); -).


To say The packed-list are:
	let length be the length of The packed-list;
	if length is greater than 1 or the prior named object is plural-named:
		say " are";
	otherwise:
		say " is".

To decide which number is the length of The packed-list:
	(- MyWriteInventoryList (ENGLISH_BIT+DEFART_BIT+CFIRSTART_BIT, PACKED) -).


To say the packed-list are:
	let length be the length of the lower-case packed-list;
	if length is greater than 1 or the prior named object is plural-named:
		say " are";
	otherwise:
		say " is".

To decide which number is the length of the lower-case packed-list:
	(- (MyWriteInventoryList (ENGLISH_BIT+DEFART_BIT, PACKED)) -).


To say The inventory-container-list of (N - a thing) are:
	let length be the length of The inventory-container-list of N;
	if length is greater than 1 or the prior named object is plural-named:
		say " are";
	otherwise:
		say " is".

To decide which number is the length of The inventory-container-list of (N - a thing):
	(- (MyWriteInventoryList (ENGLISH_BIT+DEFART_BIT+CFIRSTART_BIT, CONTAINERS, {N})) -).


Inventory count is a number that varies.
The inventory count variable translates into I6 as "inventory_count".

Packed count is a number that varies.
The packed count variable translates into I6 as "packed_count".

Essential count is a number that varies.
The essential count variable translates into I6 as "essential_count".


Include (-

Global inventory_count = 0;
Global packed_count = 0;
Global essential_count = 0;

Constant ESSENTIALS		= 1;
Constant INESSENTIALS		= 2;
Constant PACKED		= 3;
Constant UNPACKED		= 4;
Constant CONTAINERS		= 5;

-) after "Definitions.i6t".


[ It may seem inefficient to loop through the entire inventory every time we write a list, but I couldn't think of an obvious alternative that would not be even more complicated or use even more global arrays and table columns. ]

Include (-

[ MyWriteInventoryList style type par i o match length;

	if (inventory_count == 0) {
		LIST_WRITER_INTERNAL_RM('Y');
	} else {

		@push MarkedObjectArray; @push MarkedObjectLength;
		MarkedObjectArray = RequisitionStack(inventory_count);
		if (MarkedObjectArray == 0) return RunTimeProblem(RTP_LISTWRITERMEMORY);

		length = 0;

		for (i = 1 : i <= inventory_count : i++ ) {
				o = TableLookUpEntry((+ Table of Inventory Ordering +), (+ referent +),i);
				switch (type) {

					ESSENTIALS, INESSENTIALS:
						match = ((o provides (+ essential +)) && (o.(+ essential +)));
						if (type == INESSENTIALS) match = ~~(match);

					PACKED, UNPACKED:
						match = ( TableLookUpEntry((+ Table of Inventory Ordering +), (+ holder +), i) == (+ backpack +));
						! Don't list the backpack among unpacked things.
						if (type == UNPACKED && o ~= (+ backpack +)) match = ~~(match);

					CONTAINERS: match = (parent(o) == par);

					default: print "Error! No type given in MyWriteInventoryList!^";
				}

				if (match) MarkedObjectArray-->length++ = o;
		}

		MarkedObjectLength = length;
		WriteListFrom( MarkedObjectArray-->0 , style, 0, false, MarkedListIterator );

		FreeStack(MarkedObjectArray);
		@pull MarkedObjectLength; @pull MarkedObjectArray;
	}
	return length;
];

-) after "ListWriter.i6t".


To decide which thing is next listable container:
	(- ( FindContainerAndBlankOut() ) -).

Include (-

! Hacky but fast way to find all unique containers listed in the listable container column

[ FindContainerAndBlankOut i v col;
	v = TABLE_NOVALUE;

	col = (+ listable container +);
	if (col >= 100) col=TableFindCol((+ Table of Inventory Ordering +), (+ listable container +), true);

	! if we find a value, blank it out, then blank out the same value if we find it in other rows. Then return it.
	for (i = 1 : i <= inventory_count : i++ ) {
		if (v == TABLE_NOVALUE)
			v = ((+ Table of Inventory Ordering +)-->col)-->(i+COL_HSIZE);
		if (v ~= TABLE_NOVALUE)
			if (v == ((+ Table of Inventory Ordering +)-->col)-->(i+COL_HSIZE))
				((+ Table of Inventory Ordering +)-->col)-->(i+COL_HSIZE) = TABLE_NOVALUE;
  	}

  	! if we found no value, return nothing.
  	if (v == TABLE_NOVALUE) return nothing;
  	else return v;
];

-).


To decide whether (P - an object) is inventory-listable:
	(- (IsInventoryListable({P})) -).

To decide whether all-is-worn:
	(- ( EverythingCarriedIsWorn() ) -).


Include (-

[ IsInventoryListable p par prop;
	if (p == (+ restoration gel +) or nothing) rfalse; ! It is the restoration gel
	if (p provides component_parent && p.component_parent) rfalse; ! It is part of something
  	par = parent(p);
  	if (par ~= (+ player +) && par ~= nothing && par has animate) rfalse; ! It is worn by an animal
	rtrue;
];

[ EverythingCarriedIsWorn o;
	for (o=child(player) : o : ) {
		if (o hasnt worn)
			rfalse;
		if (child(o)) o = child(o);
		else
			while (o) {
				if (sibling(o)) { o = sibling(o); break; }
				o = parent(o);
				if (o == player) rtrue;
			}
	}
	rtrue;
];

-).

Utilitarian Inventory ends here.
