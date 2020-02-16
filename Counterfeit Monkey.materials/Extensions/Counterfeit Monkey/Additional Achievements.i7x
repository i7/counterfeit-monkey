Additional Achievements by Counterfeit Monkey begins here.

Use authorial modesty.

Fish-seen is a number that varies. Fish-seen is initially 0.

A dangerous construction rule for a fishy thing (called the product):
	if the product is an eel:
		choose the row with item of eel-sample in Table of Fishy Things;
	otherwise:
		if the product is a char:
			choose the row with item of char-sample in Table of Fishy Things;
		otherwise:
			if the product is a cod:
				choose the row with item of cod-sample in Table of Fishy Things;
			otherwise:
				if the product is a carp:
					choose the row with item of carp-sample in Table of Fishy Things;
				otherwise:
					choose the row with item of product in Table of Fishy Things;
	if made entry is false:
		now made entry is true;
		increment fish-seen;
		if fish-seen is greater than 4:
			record "Camilla Downdweller award for creating five types of fish in one playthrough" as an achievement.

The carp-sample is a thing. The char-sample is a thing. The cod-sample is a thing. The eel-sample is a thing.

Table of Fishy Things
item (a thing)	made (a truth state)
the sunlit ray	false
the complicit shark	false
the bass-fish	false
the ahi	false
the carp-sample	false
the char-sample	false
the cod-sample	false
the eel-sample	false

Definition: a thing is fishy:
	if it is an item listed in the Table of Fishy Things:
		yes;
	if it is an eel or it is a carp or it is a char or it is a cod:
		yes;
	no.

A dangerous construction rule for the rite:
	record "Lester Parsons award for discovering unspecified local rites" as an achievement.

Freaky-seen is a number that varies. Freaky-seen is initially 0.

A dangerous construction rule for a freaky thing (called the product):
	if the product is the toes:
		choose the row with item of the toe in Table of Freaky Things;
		[We count the toes and the toe as one]
	otherwise:
		choose the row with item of product in Table of Freaky Things;
	if made entry is false:
		now made entry is true;
		increment freaky-seen;
		if freaky-seen is greater than 4:
			record "Igor Rosehip award for creating at least five body parts in one playthrough" as an achievement with break before.


Table of Freaky Things
item (a thing)	made (a truth state)
the ear	false
the gam	false
the pate	false
the earlap	false
the toe	false
the toes	false
the armpit	false
the heel	false
the rash	false
the sword-arm	false
the arm	false
the alterna-tit	false
the tiptoe	false

Definition: a thing is freaky:
	if it is an item listed in the Table of Freaky Things:
		yes;
	no.

Additional Achievements ends here.
