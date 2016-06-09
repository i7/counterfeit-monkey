Counterfeit Hashing by Emily Short begins here.

Use authorial modesty.

Book 2 - Hashing

[ While it is possible to do the object comparisons for this game entirely in Inform 7 native code, doing so becomes very computationally expensive, especially for ambitious tools such as the anagramming gun: we are manipulating indexed text and lists multiple times for each of hundreds of objects.

So to get around this, we start the game by caching information about each object in a way that allows us to filter later what comparisons we're going to need to make.

For each object, we assign a code that is a bitmap indicating which letters of the alphabet appear in that object. (Not how many times those letters appear or in what order or even how many letters there are -- so BED and BEDE would have the same hash code, as would ABED and BEAD, and so on. Moreover, bitwise comparisons allow us to and/or these lists of letters so that we can see that BEND with N removed does have the same letters as BED, all without having to manipulate any indexed text.)

The point of this is to be able to rapidly eliminate the majority of comparisons without ever having to do the more expensive analysis of specific letters.

Thanks to Graham Nelson for technical assistance on this. ]

A thing has a number called the hash code.
A room has a number called the hash code.

When play begins (this is the initialize hash codes rule):
	repeat with item running through things which are not facts:
		unless item is a quip:
			let T be "[item]";
			now the item is unseen;
			now the hash code of the item is letter-hash of T;
	repeat with item running through rooms:
		let T be "[item]";
		now the hash code of the item is letter-hash of T.

To reset hash code of (item - a thing):
	let T be "[item]";
	now the hash code of the item is letter-hash of T.

To say (N - number) as letter-hash:
	(- ShowLetterHash({N}); -).

To decide which number is the letter-hash of (T - text):
	(- LetterHash({T}) -).

To decide which number is the single-letter-hash of (T - text):
	decide on the hash corresponding to a character of T in the Table of single character hashes.

To decide which number is (X - number) with (Y - number) added:
	(- ({X} | {Y}) -).

To decide which number is (X - number) with (Y - number) removed:
	(- ({X} & (~{Y})) -).


To demonstrate letter-hash of (T - text):
	say "The hash of <[T]> is [letter-hash of T as letter-hash].";

[When play begins:
	demonstrate letter-hash of "bed";
	demonstrate letter-hash of "bede";
	demonstrate letter-hash of "temptress";
	demonstrate letter-hash of "empress";
	let t be the letter-hash of "temptress";
	let r be the letter-hash of "t";
	say "temptress with t removed: [t with r removed as letter-hash].";]

Include (-
Array m1 --> 1;
[ LetterHash T i n c d cp pk;
	cp = T-->0;
	pk = TEXT_TY_Temporarily_Transmute(T);
	n = TEXT_TY_CharacterLength(T);
	m1-->0 = 0;
	for (i=0: i<n: i++) {
		d = -1;
		c = BlkValueRead(T, i);
		if ((c >= 'a') && (c <= 'z')) d = c-'a';
		if ((c >= 'A') && (c <= 'Z')) d = c-'A';
		if (d >= 0) {
			@astorebit m1 d 1;
		}
	}
	TEXT_TY_Untransmute(T, pk, cp);
	return m1-->0;
];

[ ShowLetterHash h i j n b;
	for (i=0: i<26: i++) {
             n = (3 - i / 8) * 8 + i % 8;
             for (j=0, b=1: j < n: j++, b=b*2);
             if (h & b) print "1"; else print "0";
	}
];
-);

Table of single character hashes
character (a text)	hash (a number)
"a"	16777216
"b"	33554432
"c"	67108864
"d"	134217728
"e"	268435456
"f"	536870912
"g"	1073741824
"h"	-2147483648
"i"	65536
"j"	131072
"k"	262144
"l"	524288
"m"	1048576
"n"	2097152
"o"	4194304
"p"	8388608
"q"	256
"r"	512
"s"	1024
"t"	2048
"u"	4096
"v"	8192
"w"	16384
"x"	32768
"y"	1
"z"	2


Counterfeit Hashing ends here.