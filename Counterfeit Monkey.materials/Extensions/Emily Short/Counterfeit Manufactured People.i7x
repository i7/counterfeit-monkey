Counterfeit Manufactured People by Emily Short begins here.

Use authorial modesty.

Part 2 - Individual Conversation

Chapter 1 - Manufactured People

Section 1 - The Mechanic

The greeting of the mechanic is "The mechanic nods at us."
The generic positive of the mechanic is "yup".
The generic negative of the mechanic is "nope".
The generic adversative of the mechanic is "um".
The generic confrontational of the mechanic is "hey".

[To reproduce and then verify the correction of a bug whereby the mechanic would half-way fix the car when given the oil even if the car was not in fact present.]
[TODO: fix test]
Table of Ultratests (continued)
topic	stuff	setting
"mechanicbug"	{ tub, funnel, foil, chard }	high street
"mech2"	{ tub, funnel, foil, chard }	high street

Test mechanicbug with "tutorial off / wave b-remover at garbage / test car-series / wave h-remover at chard / wave d-remover at card / test car-series / open tub / gel car / wave f-remover at foil / test car-series / wave d-remover at chard / wave h-remover at char / test car-series / wave n-remover at funnel / test car-series / put fuel in car / test car-series" [holding the tub and the funnel and the foil and the chard in high street.]

[And a second test in the other order, doing the fuel before the oil.]
[TODO: fix test]
Test mech2 with "tutorial off / wave b-remover at garbage / test car-series / wave h-remover at chard / wave d-remover at card / test car-series / open tub / gel car / wave n-remover at funnel / test car-series / wave d-remover at chard / wave h-remover at char / test car-series / put fuel in car / test car-series / wave f-remover at foil / test car-series" [holding the tub and the funnel and the foil and the chard in high street.]

Test car-series with "ask mechanic to fix car / show fuel to mechanic / ask mechanic about fuel / show gas to mechanic / ask mechanic about gas / show oil to mechanic / ask mechanic about oil / ask mechanic about car / show car to mechanic / get in car / start car / switch on car / switch on ignition / get out".

Instead of showing an operational car to the mechanic:
	say "We signify the car by pointing.";
	try the mechanic discussing whether car be fixed.


Availability rule for whether car be fixed:
	if an operational car is in the location:
		make no decision;
	it is off-limits.


whether car be fixed is a questioning quip.
	The printed name is "whether the car is fixed".
	Understand "is" or "if" as whether car be fixed.
	It mentions oil1, oil2.
	The comment is "'Is the car fixed now?' we ask."
	The reply is "'The oil is in,' the mechanic says[if at least one car is fueled]. 'Should run all right[otherwise]. 'Might be it's out of fuel, though[end if].'".
 It quip-supplies the mechanic.
 It is repeatable.
 Every car is mentioned by whether car be fixed.

Instead of showing a damaged car to the mechanic:
	say "We indicate the car with gestures.";
	try the mechanic discussing why the car does not run.

Instead of asking the mechanic to try doing something when a car is the noun or a car is the second noun:
	if the noun is oil or the second noun is oil:
		try discussing whether the oil will work;
	otherwise if no car is operational:
		try discussing why the car does not run;
	otherwise:
		say "The mechanic just looks confused."

Availability rule for why the car does not run:
	if a damaged car is in the location:
		make no decision;
	it is off-limits.

 why the car does not run is a questioning quip.
Understand "work" or "doesn't" as why the car does not run.
 The comment is "'There appears to be something wrong with my car,' you tell the mechanic.".
 The reply is "[one of]He has the somewhat cow-like expression of all fake people, but he nods gravely and has a look. 'It hasn't been maintained,' he says, on inspection. 'You got any motor oil?'[or]Showing no sign of having had this conversation before, he checks over the car, then asks us if we have oil.[stopping]".
 It quip-supplies the mechanic.
 It is repeatable.
 Every car is mentioned by why the car does not run.

Carry out the mechanic discussing why the car does not run:
	assign "Get oil for the mechanic" at High Street.

Instead of showing some oil to the mechanic, try giving the noun to the mechanic.

Carry out the mechanic discussing whether the oil will work:
	complete "Get oil for the mechanic";
	record "repairing our car" as achieved.

An availability rule for whether the oil will work:
	if the player encloses an oil and a damaged car is in location:
		it is available;
	otherwise:
		it is off-limits.

whether the oil will work is an unlisted offering quip.
 It mentions oil1, oil2.
 The comment is "'Will this work?' [We] hold out the oil."
 The reply is "'Should do,' he says. Rolling up his sleeves, he goes to work on the car. There is no small amount of banging and muttering, but finally he stands back and announces that he believes it is now in working condition."
 It indirectly-follows why the car does not run.
 It quip-supplies the mechanic.
Understand "if" as whether the oil will work.



Availability rule for check out this oil:
	if the player encloses an oil and at least one car is operational:
		make no decision;
	it is off-limits.

check out this oil is an unlisted demonstration quip.
 It mentions oil1, oil2.
 The comment is "We show off the additional oil."
 The reply is "'Probably don't need that now,' he says, with a thoughtful nod."
 It quip-supplies the mechanic.


An availability rule for where oil might be:
	if the player encloses an oil:
		it is off-limits;
	make no decision.

where oil might be is an unlisted questioning quip.
	It mentions oil1, oil2.
	The comment is "'Do you have any oil? Or do you know where we could find some?'"
	The reply is "[one of]He looks stumped for a minute, then offers, 'Comes in a can.'[or]'Yup, likely there's a source of oil around somewhere.'[stopping]".
	It quip-supplies the mechanic.
	It is repeatable.


An availability rule for where fuel might be:
	if the player encloses fuel or player encloses gas:
		it is off-limits;
	make no decision.

where fuel might be is an unlisted questioning quip.
	It mentions gas and fuel.
	The comment is "'Do you have any [one of]gas[or]fuel[at random]? Or do you know where we could find some?'"
	The reply is "He chews on his tongue a couple of times and then notes that he heard [one of]gas comes from old plants[or]fuel was usually found by digging in the ground[at random]."
	It quip-supplies the mechanic.
	It is repeatable.


Availability rule for we'll find some:
	if the player encloses an oil:
		it is off-limits;
	unless a damaged car is in location:
		it is off-limits;
	make no decision.

we'll find some is an unlisted weakly-phrased informative quip.
 It mentions oil1, oil2.
 The comment is "'I don't have any oil now,' we say. 'I'll look for some.'"
 The reply is "'Okay, then.'"
 It indirectly-follows why the car does not run.
 It quip-supplies the mechanic.


Instead of saying no when the current quip is why the car does not run:
	if whether the oil will work is available:
		say "That seems like a pointless lie if we want him to help us.";
	otherwise:
		try discussing we'll find some.

Instead of saying yes when the current quip is why the car does not run:
	if whether the oil will work is available:
		try discussing whether the oil will work;
	otherwise:
		say "But we don't."

Availability rule for whether the oil will work:
	if the number of cars in location is 0:
		it is off-limits;
	if the player does not carry an oil:
		it is off-limits;
	make no decision.

Carry out the mechanic discussing whether the oil will work:
	let chosen-oil be a random oil enclosed by the player;
	now the chosen-oil is nowhere;
	let target be a random car in location;
	now the target is operational.

Instead of answering the mechanic that "thank you":
	try discussing thank the mechanic.

 thank the mechanic is a performative quip.
 It mentions transportation.
 Understand "him" or "thank you" or "thanks" as thank the mechanic.
 The comment is "'Thank you, that was a great help,' we say.".
 The reply is "He nods.".
 It quip-supplies the mechanic.
 It directly-follows whether the oil will work.

Section 2 - The Bard

The greeting of the bard is "The bard bows deeply and with a flourish."
The generic positive of the bard is "aye".
The generic negative of the bard is "nay".
The generic adversative of the bard is "ah".
The generic confrontational of the bard is "fair lady".

where he comes from is a questioning quip. The comment is "'Where [i]do[/i] you come from?'".
 It mentions bard.
 The reply is "He looks at us, cocks his head, and begins singing a song about some fair isle over the sea. I don't recognize the words.".
 It quip-supplies the bard.

Section 3 - Picard

The greeting of Picard is "'Hello,' says Picard."
The generic positive of Picard is "yes".
The generic negative of Picard is "no".
The generic adversative of Picard is "er".
The generic confrontational of Picard is "ensign".

Rule for refusing comment by Picard when the noun is the as:
	say "'Curious,' he says, tugging his shirt back into place.

Picard was supposed to be interested in archaeology, now I recall. But alien stuff, right? Yeah."

[Sam suggested some reference to http://www.youtube.com/watch?v=g3rFNbSKpEE .]



Section 4 - The Pict

Rule for refusing comment by the Pict when the noun is the as:
	say "He makes a disdainful face. Then he coughs up some phlegm and spits dramatically.

Possibly he isn't a fan of Romans."



Section 5 - The cad

The greeting of the cad is "The cad looks us up and down in a very personal way."
The generic positive of the cad is "of course".
The generic negative of the cad is "no".
The generic adversative of the cad is "ahem".
The generic confrontational of the cad is "[one of]my very dear young lady[or]light of my eyes[or]dearest[or]poppet[or]delight of my life[at random]".

The cad exhibits courtesy and vanity.

Rule for refusing comment by the cad when the noun is a sin:
	say "'I prefer a different style of vice,' he says, with a warm look."

Counterfeit Manufactured People ends here.