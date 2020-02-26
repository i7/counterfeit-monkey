Intelligent Substitution by Counterfeit Monkey begins here.

Use authorial modesty.

To match-add (X - a thing):
	(- MyAddToMatches({X}); -).

To decide which thing is the best of all matches:
	(- MyIntelligentSubstitution(second, (+ letter-remover +) ) -).

To decide which thing is the best synthesis-match using (X - a thing):
	(- MyIntelligentSubstitution({X}, (+ synthesizer +) ) -).

Include (-

Array matches_array --> 51; ! For simplicity, we don't use element 0
Global matches_count = 0;

-) after "Definitions.i6t".

Include
(-

	[ MyAddToMatches x;
		matches_count++;
		matches_array --> matches_count = x;
	];

	[ MyIntelligentSubstitution source tool contender best_match highscore score i x;

		if (matches_count == 0)
		{
			return (+ letter-remover +);
		}

		if (matches_count == 1)
		{
			matches_count = 0;
			return matches_array --> 1;
		}

		best_match = nothing;
		highscore = 0;

		for (i = 1: i <= matches_count : i++)
		{
			contender = matches_array --> i;
			score = 500;

			! Real things should only be moved out of the repository by gelling
			if (~~contender.(+ fake +))
			{
				score = score - 250;
				!print (The)contender, ", match ", i, ", is not fake, so disfavor it.^";
			}

			! [repeat with X running through things that proffer contender:]
			! [if X is not contender and X does not proffer the source:]
			for (x = IK2_First: x : x = x.IK2_Link)
			{
				if (x ~= contender && Relation_TestVtoV(x, (+ the proffering relation +), contender, false))
				{
					!print (The)contender, ", match ", i, ", is proffered by ", (the)x;
					if (~~Relation_TestVtoV(x, (+ the proffering relation +), source, false))
					{
						! Something else is proffered by the contender.
						! Don't choose this.
						score = score - 250;
						!print ", which also does not proffer ", (the)source, ", so disfavor it.^";
						break;
					}
					!else
						!print ", but which also proffers ", (the)source, ".^";
				}
			}

			! The contender contains something. Prefer this.
				if (child(contender) ~= nothing)
			{
					score = score + 100;
			}

			! Prefer things we have already created.
			if (contender.(+ seen +))
			{
				score = score + 1;
			}

			! These checks are only relevant if we are using the letter-remover
			if (tool == (+ letter-remover +))
			{
				! The letter-remover is not upgraded to create this.
				! Don't choose this.
				if ( (~~contender.(+ r-concrete +)) && ~~(+ letter-remover +).(+ upgraded +))
				{
					score = score - 100;
				}

				!  The letter-remover is not upgraded to create this.
				!  Don't choose this.
				if (contender ofclass (+ person +) && ~~(+ letter-remover +).(+ creature-enabled +))
				{
					score = score - 100;
				}

				! Prefer fueled and oiled cars.
				if (contender ofclass (+ car +))
				{
					if (contender.(+ fueled +))
						score = score + 101;
					else if (contender.(+ operational +))
						score = score + 100;
				}
			}

			if (score > highscore)
			{
				highscore = score;
				best_match = contender;
			}
		}

		matches_count = 0;

		if (best_match ~= nothing)
		{
			return best_match;
		}
		else
		{
			return matches_array --> 1;
		}
	];

-).

Intelligent Substitution ends here.
