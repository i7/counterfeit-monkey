Version 3/250315 of Subcommands by Daniel Stelzer begins here.

"Exposes the snippets referring to each noun."

An object has a snippet called the subcommand. The subcommand property translates into I6 as "parsed_snippet".

Include (-

Property parsed_snippet;
Constant EmptySnippet = 100;
Global dont_inject_pronoun;

-) after "Definitions.i6t".

Include (-

! ==== ==== ==== ==== ==== ==== ==== ==== ==== ====
! Parser.i6t: Noun Domain
! ==== ==== ==== ==== ==== ==== ==== ==== ==== ====

[ NounDomain domain1 domain2 context dont_ask
	first_word i j k l answer_words marker snip;
	#Ifdef DEBUG;
	if (parser_trace >= 4) {
		print "   [NounDomain called at word ", wn, "^";
		print "   ";
		if (indef_mode) {
			print "seeking indefinite object: ";
			if (indef_type & OTHER_BIT)	 print "other ";
			if (indef_type & MY_BIT)	 print "my ";
			if (indef_type & THAT_BIT)	 print "that ";
			if (indef_type & PLURAL_BIT) print "plural ";
			if (indef_type & LIT_BIT)	 print "lit ";
			if (indef_type & UNLIT_BIT)	 print "unlit ";
			if (indef_owner ~= 0) print "owner:", (name) indef_owner;
			new_line;
			print "   number wanted: ";
			if (indef_wanted == INDEF_ALL_WANTED) print "all"; else print indef_wanted;
			new_line;
			print "   most likely GNAs of names: ", indef_cases, "^";
		}
		else print "seeking definite object^";
	}
	#Endif; ! DEBUG

	match_length = 0; number_matched = 0; match_from = wn;

	SearchScope(domain1, domain2, context);

	#Ifdef DEBUG;
	if (parser_trace >= 4) print "   [ND made ", number_matched, " matches]^";
	#Endif; ! DEBUG

	wn = match_from+match_length;
	! === NEW ===
	if (match_length == 0) {
		snip = EmptySnippet;
	} else {
		snip = 100 * match_from + match_length;
	}
	! === END ===
	
	! If nothing worked at all, leave with the word marker skipped past the
	! first unmatched word...

	if (number_matched == 0) { wn++; rfalse; }

	! Suppose that there really were some words being parsed (i.e., we did
	! not just infer).  If so, and if there was only one match, it must be
	! right and we return it...

	if (match_from <= num_words) {
		if (number_matched == 1) {
			i=match_list-->0;
			! === NEW ===
			i.parsed_snippet = snip;
			! === END ===
			return i;
		}

		! ...now suppose that there was more typing to come, i.e. suppose that
		! the user entered something beyond this noun.  If nothing ought to follow,
		! then there must be a mistake, (unless what does follow is just a full
		! stop, and or comma)

		if (wn <= num_words) {
			i = NextWord(); wn--;
			if (i ~=  AND1__WD or AND2__WD or AND3__WD or comma_word
				   or THEN1__WD or THEN2__WD or THEN3__WD
				   or BUT1__WD or BUT2__WD or BUT3__WD) {
				if (lookahead == ENDIT_TOKEN) rfalse;
			}
		}
	}

	! Now look for a good choice, if there's more than one choice...

	number_of_classes = 0;

	if (number_matched == 1) {
		i = match_list-->0;
		if (indef_mode == 1 && indef_type & PLURAL_BIT ~= 0) {
			if (context == MULTI_TOKEN or MULTIHELD_TOKEN or
				MULTIEXCEPT_TOKEN or MULTIINSIDE_TOKEN or
				NOUN_TOKEN or HELD_TOKEN or CREATURE_TOKEN) {
				BeginActivity(DECIDING_WHETHER_ALL_INC_ACT, i);
				if ((ForActivity(DECIDING_WHETHER_ALL_INC_ACT, i)) &&
					(RulebookFailed())) rfalse;
				EndActivity(DECIDING_WHETHER_ALL_INC_ACT, i);
			}
		}
	}
	if (number_matched > 1) {
		i = true;
		if (number_matched > 1)
			for (j=0 : j<number_matched-1 : j++ ) {
				if (Identical(match_list-->j, match_list-->(j+1)) == false)
					i = false;
				! === NEW ===
				(match_list-->j).parsed_snippet = snip;
				! === END ===
			}
			! === NEW ===
			(match_list-->(number_matched-1)).parsed_snippet = snip;
			! === END ===
		if (i) dont_infer = true;
		i = Adjudicate(context);
		if (i == -1) rfalse;
		if (i == 1) rtrue;		!  Adjudicate has made a multiple
								!  object, and we pass it on
		dont_inject_pronoun = true; ! See bug I7-2115 for discussion of this
	}

	! If i is non-zero here, one of two things is happening: either
	! (a) an inference has been successfully made that object i is
	!     the intended one from the user's specification, or
	! (b) the user finished typing some time ago, but we've decided
	!     on i because it's the only possible choice.
	! In either case we have to keep the pattern up to date,
	! note that an inference has been made and return.
	! (Except, we don't note which of a pile of identical objects.)

	if (i ~= 0) {
		! === NEW ===
		i.parsed_snippet = snip;
		! === END ===
		if (dont_infer) return i;
		if (inferfrom == 0) inferfrom=pcount;
		pattern-->pcount = i;
		return i;
	}

	if (dont_ask) {
		! === NEW ===
		if (match_length == 0) {
			(match_list-->0).parsed_snippet = EmptySnippet;
		} else {
			(match_list-->0).parsed_snippet = 100 * match_from + match_length;
		}
		! === END ===
		return match_list-->0;
	}
	
	! If we get here, there was no obvious choice of object to make.  If in
	! fact we've already gone past the end of the player's typing (which
	! means the match list must contain every object in scope, regardless
	! of its name), then it's foolish to give an enormous list to choose
	! from - instead we go and ask a more suitable question...

	if (match_from > num_words) jump Incomplete;

	! Now we print up the question, using the equivalence classes as worked
	! out by Adjudicate() so as not to repeat ourselves on plural objects...

	BeginActivity(ASKING_WHICH_DO_YOU_MEAN_ACT);
	if (ForActivity(ASKING_WHICH_DO_YOU_MEAN_ACT)) jump SkipWhichQuestion;
	j = 1; marker = 0;
	for (i=1 : i<=number_of_classes : i++ ) {
		while (((match_classes-->marker) ~= i) && ((match_classes-->marker) ~= -i))
			marker++;
		if (match_list-->marker hasnt animate) j = 0;
	}
	if (j) PARSER_CLARIF_INTERNAL_RM('A');
	else PARSER_CLARIF_INTERNAL_RM('B');

	j = number_of_classes; marker = 0;
	for (i=1 : i<=number_of_classes : i++ ) {
		while (((match_classes-->marker) ~= i) && ((match_classes-->marker) ~= -i)) marker++;
		k = match_list-->marker;

		if (match_classes-->marker > 0) print (the) k; else print (a) k;

		if (i < j-1)  print ", ";
		if (i == j-1) {
			#Ifdef SERIAL_COMMA;
			if (j ~= 2) print ",";
			#Endif; ! SERIAL_COMMA
			PARSER_CLARIF_INTERNAL_RM('H');
		}
	}
	print "?^";

	.SkipWhichQuestion; EndActivity(ASKING_WHICH_DO_YOU_MEAN_ACT);

	! ...and get an answer:

  .WhichOne;
	#Ifdef TARGET_ZCODE;
	for (i=2 : i<INPUT_BUFFER_LEN : i++ ) buffer2->i = ' ';
	#Endif; ! TARGET_ZCODE
	answer_words=Keyboard(buffer2, parse2);

	! Conveniently, parse2-->1 is the first word in both ZCODE and GLULX.
	first_word = (parse2-->1);

	! Take care of "all", because that does something too clever here to do
	! later on:

	if (first_word == ALL1__WD or ALL2__WD or ALL3__WD or ALL4__WD or ALL5__WD) {
		if (context == MULTI_TOKEN or MULTIHELD_TOKEN or MULTIEXCEPT_TOKEN or MULTIINSIDE_TOKEN) {
			l = multiple_object-->0;
			for (i=0 : i<number_matched && l+i<MATCH_LIST_WORDS : i++ ) {
				k = match_list-->i;
				multiple_object-->(i+1+l) = k;
			}
			multiple_object-->0 = i+l;
			rtrue;
		}
		PARSER_CLARIF_INTERNAL_RM('C');
		jump WhichOne;
	}

	! Look for a comma, and interpret this as a fresh conversation command
	! if so:

	for (i=1 : i<=answer_words : i++ )
		if (WordFrom(i, parse2) == comma_word) {
			VM_CopyBuffer(buffer, buffer2);
			jump RECONSTRUCT_INPUT;
		}

	! If the first word of the reply can be interpreted as a verb, then
	! assume that the player has ignored the question and given a new
	! command altogether.
	! (This is one time when it's convenient that the directions are
	! not themselves verbs - thus, "north" as a reply to "Which, the north
	! or south door" is not treated as a fresh command but as an answer.)

	#Ifdef LanguageIsVerb;
	if (first_word == 0) {
		j = wn; first_word = LanguageIsVerb(buffer2, parse2, 1); wn = j;
	}
	#Endif; ! LanguageIsVerb
	if (first_word ~= 0) {
		j = first_word->#dict_par1;
		if ((0 ~= j&1) && ~~LanguageVerbMayBeName(first_word)) {
			VM_CopyBuffer(buffer, buffer2);
			jump RECONSTRUCT_INPUT;
		}
	}

	! Now we insert the answer into the original typed command, as
	! words additionally describing the same object
	! (eg, > take red button
	!      Which one, ...
	!      > music
	! becomes "take music red button".	The parser will thus have three
	! words to work from next time, not two.)

	#Ifdef TARGET_ZCODE;
	k = WordAddress(match_from) - buffer; l=buffer2->1+1;
	for (j=buffer + buffer->0 - 1 : j>=buffer+k+l : j-- ) j->0 = 0->(j-l);
	for (i=0 : i<l : i++ ) buffer->(k+i) = buffer2->(2+i);
	buffer->(k+l-1) = ' ';
	buffer->1 = buffer->1 + l;
	if (buffer->1 >= (buffer->0 - 1)) buffer->1 = buffer->0;
	#Ifnot; ! TARGET_GLULX
	k = WordAddress(match_from) - buffer;
	l = (buffer2-->0) + 1;
	for (j=buffer+INPUT_BUFFER_LEN-1 : j>=buffer+k+l : j-- ) j->0 = j->(-l);
	for (i=0 : i<l : i++ ) buffer->(k+i) = buffer2->(WORDSIZE+i);
	buffer->(k+l-1) = ' ';
	buffer-->0 = buffer-->0 + l;
	if (buffer-->0 > (INPUT_BUFFER_LEN-WORDSIZE)) buffer-->0 = (INPUT_BUFFER_LEN-WORDSIZE);
	#Endif; ! TARGET_

	! Having reconstructed the input, we warn the parser accordingly
	! and get out.

	.RECONSTRUCT_INPUT;

	dont_inject_pronoun = false;	! ADDED

	num_words = WordCount(); players_command = 100 + num_words;
	wn = 1;
	#Ifdef LanguageToInformese;
	LanguageToInformese();
	! Re-tokenise:
	VM_Tokenise(buffer,parse);
	#Endif; ! LanguageToInformese
	num_words = WordCount(); players_command = 100 + num_words;
	actors_location = ScopeCeiling(player);
	FollowRulebook(Activity_after_rulebooks-->READING_A_COMMAND_ACT);

	return REPARSE_CODE;

	! Now we come to the question asked when the input has run out
	! and can't easily be guessed (eg, the player typed "take" and there
	! were plenty of things which might have been meant).

  .Incomplete;

	if (context == CREATURE_TOKEN) PARSER_CLARIF_INTERNAL_RM('D', actor);
	else						   PARSER_CLARIF_INTERNAL_RM('E', actor);
	new_line;

	#Ifdef TARGET_ZCODE;
	for (i=2 : i<INPUT_BUFFER_LEN : i++ ) buffer2->i=' ';
	#Endif; ! TARGET_ZCODE
	answer_words = Keyboard(buffer2, parse2);

	! Look for a comma, and interpret this as a fresh conversation command
	! if so:

	for (i=1 : i<=answer_words : i++ )
		if (WordFrom(i, parse2) == comma_word) {
			VM_CopyBuffer(buffer, buffer2);
			jump RECONSTRUCT_INPUT;
		}

	first_word=(parse2-->1);
	#Ifdef LanguageIsVerb;
	if (first_word==0) {
		j = wn; first_word=LanguageIsVerb(buffer2, parse2, 1); wn = j;
	}
	#Endif; ! LanguageIsVerb

	! Once again, if the reply looks like a command, give it to the
	! parser to get on with and forget about the question...

	if (first_word ~= 0) {
		j = first_word->#dict_par1;
		if ((0 ~= j&1) && ~~LanguageVerbMayBeName(first_word)) {
			VM_CopyBuffer(buffer, buffer2);
			jump RECONSTRUCT_INPUT;
		}
	}

	! ...but if we have a genuine answer, then:
	!
	! (1) we must glue in text suitable for anything that's been inferred.

	if (inferfrom ~= 0) {
		for (j=inferfrom : j<pcount : j++ ) {
			if (pattern-->j == PATTERN_NULL) continue;
			#Ifdef TARGET_ZCODE;
			i = 2+buffer->1; (buffer->1)++; buffer->( i++ ) = ' ';
			#Ifnot; ! TARGET_GLULX
			i = WORDSIZE + buffer-->0;
			(buffer-->0)++; buffer->( i++ ) = ' ';
			#Endif; ! TARGET_

			#Ifdef DEBUG;
			if (parser_trace >= 5)
				print "[Gluing in inference with pattern code ", pattern-->j, "]^";
			#Endif; ! DEBUG

			! Conveniently, parse2-->1 is the first word in both ZCODE and GLULX.

			parse2-->1 = 0;

			! An inferred object.  Best we can do is glue in a pronoun.
			! (This is imperfect, but it's very seldom needed anyway.)

			if (pattern-->j >= 2 && pattern-->j < REPARSE_CODE) {
				if (~~dont_inject_pronoun) {
					PronounNotice(pattern-->j);
					for (k=1 : k<=LanguagePronouns-->0 : k=k+3)
						if (pattern-->j == LanguagePronouns-->(k+2)) {
							parse2-->1 = LanguagePronouns-->k;
							#Ifdef DEBUG;
							if (parser_trace >= 5)
								print "[Using pronoun '", (address) parse2-->1, "']^";
							#Endif; ! DEBUG
							break;
						}
				}
			}
			else {
				! An inferred preposition.
				parse2-->1 = VM_NumberToDictionaryAddress(pattern-->j - REPARSE_CODE);
				#Ifdef DEBUG;
				if (parser_trace >= 5)
					print "[Using preposition '", (address) parse2-->1, "']^";
				#Endif; ! DEBUG
			}

			! parse2-->1 now holds the dictionary address of the word to glue in.

			if (parse2-->1 ~= 0) {
				k = buffer + i;
				#Ifdef TARGET_ZCODE;
				@output_stream 3 k;
				 print (address) parse2-->1;
				@output_stream -3;
				k = k-->0;
				for (l=i : l<i+k : l++ ) buffer->l = buffer->(l+2);
				i = i + k; buffer->1 = i-2;
				#Ifnot; ! TARGET_GLULX
				k = Glulx_PrintAnyToArray(buffer+i, INPUT_BUFFER_LEN-i, parse2-->1);
				i = i + k; buffer-->0 = i - WORDSIZE;
				#Endif; ! TARGET_
			}
		}
	}

	! (2) we must glue the newly-typed text onto the end.

	#Ifdef TARGET_ZCODE;
	i = 2+buffer->1; (buffer->1)++; buffer->( i++ ) = ' ';
	for (j=0 : j<buffer2->1 : i++,j++ ) {
		buffer->i = buffer2->(j+2);
		(buffer->1)++;
		if (buffer->1 == INPUT_BUFFER_LEN) break;
	}
	#Ifnot; ! TARGET_GLULX
	i = WORDSIZE + buffer-->0;
	(buffer-->0)++; buffer->( i++ ) = ' ';
	for (j=0 : j<buffer2-->0 : i++,j++ ) {
		buffer->i = buffer2->(j+WORDSIZE);
		(buffer-->0)++;
		if (buffer-->0 == INPUT_BUFFER_LEN) break;
	}
	#Endif; ! TARGET_

	! (3) we fill up the buffer with spaces, which is unnecessary, but may
	!	  help incorrectly-written interpreters to cope.

	#Ifdef TARGET_ZCODE;
	for (: i<INPUT_BUFFER_LEN : i++ ) buffer->i = ' ';
	#Endif; ! TARGET_ZCODE

	jump RECONSTRUCT_INPUT;

]; ! end of NounDomain

[ PARSER_CLARIF_INTERNAL_R; ];
-) instead of "Noun Domain" in "Parser.i6t".

Include (-
[ ActionVariablesNotTypeSafe mask noun_kova second_kova at;
	at = FindAction(-1); if (at == 0) rfalse; ! For any I6-defined actions

	noun_kova = ActionData-->(at+AD_NOUN_KOV);
	second_kova = ActionData-->(at+AD_SECOND_KOV);

	!print "at = ", at, " nst = ", noun_kova, "^";
	!print "consult_from = ", consult_from, " consult_words = ", consult_from, "^";
	!print "inp1 = ", inp1, " noun = ", noun, "^";
	!print "inp2 = ", inp2, " second = ", second, "^";
	!print "sst = ", second_kova, "^";

	if (noun_kova == SNIPPET_TY or UNDERSTANDING_TY) {
		if (inp1 ~= 1) { inp2 = inp1; second = noun; }
		parsed_number = 100*consult_from + consult_words;
		inp1 = 1; noun = nothing; ! noun = parsed_number;
	}
	if (second_kova == SNIPPET_TY or UNDERSTANDING_TY) {
		parsed_number = 100*consult_from + consult_words;
		inp2 = 1; second = nothing; ! second = parsed_number;
	}

	mask = ActionData-->(at+AD_REQUIREMENTS);
	if (mask & OUT_OF_WORLD_ABIT) { meta = 1; rfalse; }
	meta = 0;

	if (inp1 == 1) {
		if (noun_kova == OBJECT_TY) {
			if (actor == player) { ACTION_PROCESSING_INTERNAL_RM('B'); new_line; }
			rtrue;
		}
	} else {
		if (noun_kova ~= OBJECT_TY) {
			if (actor == player) { ACTION_PROCESSING_INTERNAL_RM('C'); new_line; }
			rtrue;
		}
		if ((mask & NEED_NOUN_ABIT) && (noun == nothing)) {
			@push act_requester; act_requester = nothing;
			CarryOutActivity(SUPPLYING_A_MISSING_NOUN_ACT);
			@pull act_requester;
			if (noun == nothing) {
				if (say__p) rtrue;
				if (actor == player) { ACTION_PROCESSING_INTERNAL_RM('D'); new_line; }
				rtrue;
			}
			! === NEW ===
			noun.parsed_snippet = EmptySnippet;
			! === END ===
		}
		if (((mask & NEED_NOUN_ABIT) == 0) && (noun ~= nothing)) {
			if (actor == player) { ACTION_PROCESSING_INTERNAL_RM('E'); new_line; }
			rtrue;
		}
	}

	if (inp2 == 1) {
		if (second_kova == OBJECT_TY) {
			if (actor == player) { ACTION_PROCESSING_INTERNAL_RM('F'); new_line; }
			rtrue;
		}
	} else {
		if (second_kova ~= OBJECT_TY) {
			if (actor == player) { ACTION_PROCESSING_INTERNAL_RM('G'); new_line; }
			rtrue;
		}
		if ((mask & NEED_SECOND_ABIT) && (second == nothing)) {
			@push act_requester; act_requester = nothing;
			CarryOutActivity(SUPPLYING_A_MISSING_SECOND_ACT);
			@pull act_requester;
			if (second == nothing) {
				if (say__p) rtrue;
				if (actor == player) { ACTION_PROCESSING_INTERNAL_RM('H'); new_line; }
				rtrue;
			}
			! === NEW ===
			second.parsed_snippet = EmptySnippet;
			! === END ===
		}
		if (((mask & NEED_SECOND_ABIT) == 0) && (second ~= nothing)) {
			if (actor == player) { ACTION_PROCESSING_INTERNAL_RM('I'); new_line; }
			rtrue;
		}
	}

	rfalse;
];
-) instead of "Type Safety" in "Actions.i6t".

Subcommands ends here.

---- DOCUMENTATION ----

This extension exposes the snippet which refers to each individual object, as its 'subcommand'.

	the subcommand of (object) -> snippet

If the player types "take the wand", referring to the black rod with a rusty star on the end, then the subcommand of the rod is "wand". This can be useful in disambiguation, or in adapting a description to use the player's phrasing.

Example: ** Subcommand Laboratory - A simple demonstration of how subcommands affect the parser.

Include Subcommands by Daniel Stelzer.

Before doing anything:
	if the noun is not nothing:
		say "Noun subcommand: [the subcommand of the noun].";
	if the second noun is not nothing:
		say "Second noun subcommand: [the subcommand of the second noun].";
	continue the action.

The Laboratory is a room. A red apple, a green apple, a red pear, and a green pear are in the Laboratory.
A shiny wooden box is a container in the Laboratory. It is closed and locked. The player carries a silver metal key.

Does the player mean taking the red apple when the subcommand of the red apple includes "red": it is very likely.
Does the player mean taking the green apple when the subcommand of the green apple includes "apple": it is very likely.

Test fruit with "get red / drop it / get apple / get pear".
Test box with "unlock the shiny wooden box with the silver key".
