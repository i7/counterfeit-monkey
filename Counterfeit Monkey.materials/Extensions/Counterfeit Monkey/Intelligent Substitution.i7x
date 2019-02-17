Intelligent Substitution by Counterfeit Monkey begins here.

Use authorial modesty.

To match-add (X - a thing):
	(- MyAddToMatches({X}); -).

To decide which thing is the best of all matches:
	(- MyIntelligentSubstitution() -).

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

	[ MyIntelligentSubstitution contender best_match highscore score i x part_of_chain;

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

			part_of_chain = false;

			! [repeat with X running through things in repository that proffer contender:]
			! [if X is not contender and X does not proffer the second noun:]

			for (x = IK2_First: x : x = x.IK2_Link)
			{
				if (x ~= contender && Relation_TestVtoV(x, (+ the proffering relation +), contender, false))
				{
					!print (The)contender, " is proffered by ", (the)x;
					if (~~Relation_TestVtoV(x, (+ the proffering relation +), second, false))
					{
						part_of_chain = true;
						!print ", which also does not proffer ", (the)second, ", so disfavor it.^";
					}
					!else
						!print ", but which also proffers ", (the)second, ".^";
				}
			}

			if (part_of_chain == true)
				score = score - 250;

			!Something else proffers the contender. Don't choose this.

            if (child(contender) ~= nothing)
                score = score + 100;
			!The contender contains something. Prefer this.

            ! [if contender is r-abstract and the letter-remover is not upgraded]
            if ( (~~contender.(+ r-concrete +)) && ~~(+ letter-remover +).(+ upgraded +))
                score = score - 100;
            !The letter-remover is not upgraded to create this. Don't choose this.

            ! [if contender is a person and the letter-remover is not creature-enabled]
            if (contender ofclass (+ person +) && ~~(+ letter-remover +).(+ creature-enabled +))
                score = score - 100;
            !The letter-remover is not upgraded to create this. Don't choose this.

            if (contender.(+ seen +))
                score = score + 1;
            !Prefer things we have already created.

            if (contender ofclass (+ car +))
            {
                if (contender.(+ fueled +))
                    score = score + 101;
                else if (contender.(+ operational +))
                    score = score + 100;
            }
            !Prefer fueled and oiled cars.

            if (score > highscore)
            {
            	highscore = score;
                best_match = contender;
            }
        }

		matches_count = 0;
		if (best_match ~= nothing)
		{
			!print "Chose ",(the)best_match," with a score of ", highscore,".^";
        	return best_match;
        }
        else
        	return matches_array --> 1;
	];
-).

Intelligent Substitution ends here.
