Very Complex Listing by Counterfeit Monkey begins here.

[This is a Counterfeit Monkey-specific hack of Complex Listing by Emily Short with reduced functionality but improved performance.]

Use authorial modesty.

Table of Scored Listing
output item
an object
with 30 blank rows.

Special listing count is a number that varies.
The special listing count variable translates into I6 as "special_listing_count".

Include (-

Global special_listing_count = 0;

-) after "Definitions.i6t".


To prepare a/the/-- list of (selection - description of objects):
	now special listing count is 0;
	repeat with item running through members of the selection:
		increment special listing count;
		write item to row special listing count of special-list.

To write (O - a thing) to row (N - a number) of special-list:
	(- MyWriteRow({N},{O}); -).

Include (-

	[ MyWriteRow row item;
		((+ Table of Scored Listing +)-->1)-->(row+COL_HSIZE)=item;
	];


	[ MyStrip quip row row2;
		for (row = 1: row <= special_listing_count : row++)
			if (((+ Table of Scored Listing +)-->1)-->(row+COL_HSIZE) == quip) {
				! Move everything below the match up one row
				for ( row2 = row: row2 <= (special_listing_count-1) : row2++ )
					((+ Table of Scored Listing +)-->1)-->(row2+COL_HSIZE)=((+ Table of Scored Listing +)-->1)-->(row+COL_HSIZE+1);
				((+ Table of Scored Listing +)-->1)-->(special_listing_count+COL_HSIZE) = TABLE_NOVALUE;
				if (special_listing_count > 0)
					special_listing_count--;
				return;
			}
	];
-).

Articulation style is a kind of value. The articulation styles are bare, definite and indefinite. The current articulation style is an articulation style that varies.

To say is-are the prepared list:
	now current articulation style is definite;
	say tabled verb;
	say prepared list.

To say is-are a prepared list:
	now current articulation style is indefinite;
	say tabled verb;
	say prepared list.

To say is-are prepared list:
	now current articulation style is bare;
	say tabled verb;
	say prepared list.

To say tabled verb:
	if special listing count is greater than 1, say "are ";
	otherwise say "is ";

To say the prepared list:
	now current articulation style is definite;
	say prepared list.

To say a prepared list:
	now current articulation style is indefinite;
	say prepared list.

To say prepared list:
	if special listing count is 0:
		say "nothing";
		rule fails;
	now current articulation style is bare;
	dump list.

To say prepared list delimited in (chosen style - a list style) style:
	now current articulation style is indefinite;
	now current list style is the chosen style;
	say prepared list.

To say a prepared list delimited in (chosen style - a list style) style:
	now current articulation style is indefinite;
	now current list style is the chosen style;
	say prepared list.

To say the prepared list delimited in (chosen style - a list style) style:
	now current articulation style is definite;
	now current list style is the chosen style;
	say prepared list.

To say is-are prepared list delimited in (chosen style - a list style) style:
	now current articulation style is indefinite;
	now current list style is the chosen style;
	say tabled verb;
	say prepared list.

To say is-are a prepared list delimited in (chosen style - a list style) style:
	now current articulation style is indefinite;
	now current list style is the chosen style;
	say tabled verb;
	say prepared list.

To say is-are the prepared list delimited in (chosen style - a list style) style:
	now current articulation style is definite;
	now current list style is the chosen style;
	say tabled verb;
	say prepared list.

To dump list:
	say list of the Table of Scored Listing;
	now current list style is sequential.

[List arranging is an activity.

Rule for list arranging:
	sort Table of Scored Listing in assigned score order.

To invert scored list:
	sort Table of Scored Listing in reverse assigned score order.]

First delimiter is text that varies. Second delimiter is text that varies. Alternate second delimiter is text that varies. First delimiter is ", ". Second delimiter is ", and ". Alternate second delimiter is " and ".

List style is a kind of value. The list styles are defined by the Table of List Style Assignments.

Current list style is a list style that varies.

Table of List Style Assignments
list style	first delimiter	second delimiter	alternate second delimiter	indefinite name phrase	definite name phrase
sequential	", "	"[if the serial comma option is active],[end if] and "	" and "	"[a current listed object]"	"[the current listed object]"
disjunctive	", "	"[if the serial comma option is active],[end if] or "	" or "	"[a current listed object]"	"[the current listed object]"
semi-colon	"; "	"; "	" and "	"[a current listed object]"	"[the current listed object]"
comma	", "	", "	" and "	"[a current listed object]"	"[the current listed object]"
null	" "	" "	" and "	"[current listed object]"	"[current listed object]"
hyperconnective	" and "	" and "	" and "	"[a current listed object]"	"[the current listed object]"
fragmentary	". "	". "	". "	"[A current listed object]"	"[The current listed object]"
enumerated	"; "	"; "	"; "	"([current enumeration]) [a current listed object]"	"([current enumeration]) [the current listed object]"

To decide what number is the current enumeration:
	let N be 1 + current listing total;
	decrease N by current listing index;
	decide on N.

Current listing total is a number that varies. Current listing index is a number that varies. Current listed object is an object that varies.

To say a/the/-- list of (selected table - a table-name):
	now current listing total is special listing count;
	now current listing index is current listing total;
	repeat with N running from 1 to special listing count:
		[say "Saying row [N].";]
		choose row (special listing count - N + 1) from selected table;
		now current listed object is output item entry;
		let wording be "";
		if the current articulation style is definite:
			let wording be the definite name phrase corresponding to a list style of the current list style in the Table of List Style Assignments;
		otherwise:
			let wording be the indefinite name phrase corresponding to a list style of the current list style in the Table of List Style Assignments;
		if the current listed object is a direction:
			say "[current listed object]";
		otherwise if the current articulation style is bare:
			say "[current listed object]";
		otherwise:
			say "[wording]";
		decrease current listing index by 1;
		carry out the delimiting a list activity.

Delimiting a list is an activity.

Rule for delimiting a list (this is the standard delimiting rule):
	choose row with list style of current list style in the Table of List Style Assignments;
	if current listing index is 1:
		if current listing total > 2, say "[second delimiter entry]" (A);
		otherwise say "[alternate second delimiter entry]" (B);
	otherwise:
		if current listing index > 0, say "[first delimiter entry]" (C).

Very Complex Listing ends here.
