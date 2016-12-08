Custom Speedups by Counterfeit Monkey begins here.

Use authorial modesty.

[ These are used to speed up Scope Caching ]

To rapidly set everything marked invisible:
	(- MyAllSetMarkedInvisible(); -).

To rapidly set (n - an object) marked visible:
	(- MySetMarkedVisible({n}); -).

To rapidly set everything marked-visible as seen:
	(- MySetAllMarkedVisibleAsSeen(); -).

Include (-

	[ MyAllSetMarkedInvisible obj;
		for (obj=IK2_First: obj: obj=obj.IK2_Link) {
			give obj ~(+ marked-visible +);
		}
	];

	[ MySetMarkedVisible obj;
		give obj (+ marked-visible +);
	];


	[ MySetAllMarkedVisibleAsSeen obj;
		for (obj=IK2_First: obj: obj=obj.IK2_Link) {
			if (obj has (+ marked-visible +) )
				give obj (+ seen +);
		}
	];

-) after "Output.i6t".


Custom Speedups ends here.