Version 2/250424 of Before Processing a Command by Daniel Stelzer begins here.

Book - I7 Code

Before processing a command is a rulebook.

Book - I6 Code

Chapter - Default (for use without Unified Glulx Input by Andrew Plotkin)

Include (-
	if (held_back_mode) {
		held_back_mode = false; wn = hb_wn;
		if (verb_wordnum > 0) i = WordAddress(verb_wordnum); else i = WordAddress(1);
		j = WordAddress(wn);
		if (i<=j) for (: i<j : i++) i->0 = ' ';
		i = NextWord();
		if (i == AGAIN1__WD or AGAIN2__WD or AGAIN3__WD) {
			! Delete the words "then again" from the again buffer,
			! in which we have just realised that it must occur:
			! prevents an infinite loop on "i. again"

			i = WordAddress(wn-2)-buffer;
			if (wn > num_words) j = INPUT_BUFFER_LEN-1;
			else j = WordAddress(wn)-buffer;
			for (: i<j : i++) buffer3->i = ' ';
		}

		VM_Tokenise(buffer, parse);
		jump ReParse;
	}

  .ReType;

	cobj_flag = 0;
	actors_location = ScopeCeiling(player);
	BeginActivity(READING_A_COMMAND_ACT); if (ForActivity(READING_A_COMMAND_ACT)==false) {
		Keyboard(buffer,parse);
		num_words = WordCount(); players_command = 100 + num_words;
	} if (EndActivity(READING_A_COMMAND_ACT)) jump ReType;

  .ReParse;

	parser_inflection = name;

	! Initially assume the command is aimed at the player, and the verb
	! is the first word

	num_words = WordCount(); players_command = 100 + num_words;
	wn = 1; inferred_go = false;

	#Ifdef LanguageToInformese;
	LanguageToInformese();
	! Re-tokenise:
	VM_Tokenise(buffer,parse);
	#Endif; ! LanguageToInformese

	num_words = WordCount(); players_command = 100 + num_words;
	
	! CHANGED DMS
	FollowRulebook((+ before processing a command +));
	if(RulebookFailed()) jump ReType;
	! END CHANGE

	k=0;
	#Ifdef DEBUG;
	if (parser_trace >= 2) {
		print "[ ";
		for (i=0 : i<num_words : i++) {

			#Ifdef TARGET_ZCODE;
			j = parse-->(i*2 + 1);
			#Ifnot; ! TARGET_GLULX
			j = parse-->(i*3 + 1);
			#Endif; ! TARGET_
			k = WordAddress(i+1);
			l = WordLength(i+1);
			print "~"; for (m=0 : m<l : m++) print (char) k->m; print "~ ";

			if (j == 0) print "?";
			else {
				#Ifdef TARGET_ZCODE;
				if (UnsignedCompare(j, HDR_DICTIONARY-->0) >= 0 &&
					UnsignedCompare(j, HDR_HIGHMEMORY-->0) < 0)
					 print (address) j;
				else print j;
				#Ifnot; ! TARGET_GLULX
				if (j->0 == $60) print (address) j;
				else print j;
				#Endif; ! TARGET_
			}
			if (i ~= num_words-1) print " / ";
		}
		print " ]^";
	}
	#Endif; ! DEBUG
	verb_wordnum = 1;
	actor = player;
	actors_location = ScopeCeiling(player);
	usual_grammar_after = 0;

  .AlmostReParse;

	scope_token = 0;
	action_to_be = NULL;

	! Begin from what we currently think is the verb word

  .BeginCommand;

	wn = verb_wordnum;
	verb_word = NextWordStopped();

	! If there's no input here, we must have something like "person,".

	if (verb_word == -1) {
		best_etype = STUCK_PE; jump GiveError;
	}
	if (verb_word == comma_word) {
		best_etype = COMMABEGIN_PE; jump GiveError;
	}

	! Now try for "again" or "g", which are special cases: don't allow "again" if nothing
	! has previously been typed; simply copy the previous text across

	if (verb_word == AGAIN2__WD or AGAIN3__WD) verb_word = AGAIN1__WD;
	if (verb_word == AGAIN1__WD) {
		if (actor ~= player) {
			best_etype = ANIMAAGAIN_PE;
			jump GiveError;
		}
		#Ifdef TARGET_ZCODE;
		if (buffer3->1 == 0) {
			PARSER_COMMAND_INTERNAL_RM('D'); new_line;
			jump ReType;
		}
		#Ifnot; ! TARGET_GLULX
		if (buffer3-->0 == 0) {
			PARSER_COMMAND_INTERNAL_RM('D'); new_line;
			jump ReType;
		}
		#Endif; ! TARGET_
		for (i=0 : i<INPUT_BUFFER_LEN : i++) buffer->i = buffer3->i;
		VM_Tokenise(buffer,parse);
		num_words = WordCount(); players_command = 100 + num_words;
		jump ReParse;
	}

	! Save the present input in case of an "again" next time

	if (verb_word ~= AGAIN1__WD)
		for (i=0 : i<INPUT_BUFFER_LEN : i++) buffer3->i = buffer->i;

	if (usual_grammar_after == 0) {
		j = verb_wordnum;
		i = RunRoutines(actor, grammar); 
		#Ifdef DEBUG;
		if (parser_trace >= 2 && actor.grammar ~= 0 or NULL)
			print " [Grammar property returned ", i, "]^";
		#Endif; ! DEBUG

		if ((i ~= 0 or 1) && (VM_InvalidDictionaryAddress(i))) {
			usual_grammar_after = verb_wordnum; i=-i;
		}

		if (i == 1) {
			parser_results-->ACTION_PRES = action;
			parser_results-->NO_INPS_PRES = 0;
			parser_results-->INP1_PRES = noun;
			parser_results-->INP2_PRES = second;
			if (noun) parser_results-->NO_INPS_PRES = 1;
			if (second) parser_results-->NO_INPS_PRES = 2;
			rtrue;
		}
		if (i ~= 0) { verb_word = i; wn--; verb_wordnum--; }
		else { wn = verb_wordnum; verb_word = NextWord(); }
	}
	else usual_grammar_after = 0;
-) instead of "Parser Letter A" in "Parser.i6t".

Chapter - UGI (for use with Unified Glulx Input by Andrew Plotkin)

Section - Replacement (in place of Section - Parser__parse in Unified Glulx Input by Andrew Plotkin)

Include (-
	parser_results_set = false;

	if (held_back_mode) {
		held_back_mode = false; wn = hb_wn;
		if (verb_wordnum > 0) i = WordAddress(verb_wordnum); else i = WordAddress(1);
		j = WordAddress(wn);
		if (i<=j) for (: i<j : i++) i->0 = ' ';
		i = NextWord();
		if (i == AGAIN1__WD or AGAIN2__WD or AGAIN3__WD) {
			! Delete the words "then again" from the again buffer,
			! in which we have just realised that it must occur:
			! prevents an infinite loop on "i. again"
			
			i = WordAddress(wn-2)-buffer;
			if (wn > num_words) j = INPUT_BUFFER_LEN-1;
			else j = WordAddress(wn)-buffer;
			for (: i<j : i++) buffer3->i = ' ';
		}
		
		VM_Tokenise(buffer, parse);
		jump ReParse;
	}

  .ReType;

	cobj_flag = 0;
	actors_location = ScopeCeiling(player);
	
	BeginActivity(READING_A_COMMAND_ACT); if (ForActivity(READING_A_COMMAND_ACT)==false) {
		.ReParserInput;
		num_words = 0; players_command = 100;
		ParserInput( (+ primary context +), inputevent, buffer, parse);
		if (input_rulebook_data-->IRDAT_RB_CURRENT ~= 0) {
			print "(BUG) Reading-a-command called recursively!^";
		}
		parser_results_set = false;
		InputRDataInit( (+ handling input rules +), inputevent, buffer, parse);
		FollowRulebook((+ handling input rules +), (+ primary context +), true);
		InputRDataFinal();
		if (RulebookFailed()) {
			jump ReParserInput;
		}
		if (inputevent-->0 == evtype_LineInput) {
			num_words = WordCount(); players_command = 100 + num_words;
		}
		if (parser_results_set && parser_results-->ACTION_PRES ~= 0) {
			! If we're not parsing, reading a command shouldn't show the input.
			num_words = 0; players_command = 100;
		}
	} if (EndActivity(READING_A_COMMAND_ACT)) jump ReType;

  .ReParse;
  
	if (parser_results_set && parser_results-->ACTION_PRES ~= 0) {
		! The rulebook gave us an explicit action.
		rtrue;
	}
	
	num_words = 0; players_command = 100;
	if (inputevent-->0 == evtype_LineInput) {
		num_words = WordCount(); players_command = 100 + num_words;
	}
	
	if (num_words == 0) {
		! Either this was a blank line or it was not line input at all. Reject it.
		! (Blank line input could reach this point if the PASS_BLANK_INPUT_LINES option is set.)
		EmptyInputParserError();
		jump ReType;
	}

	parser_inflection = name;

	! Initially assume the command is aimed at the player, and the verb
	! is the first word

	wn = 1; inferred_go = false;

	#Ifdef LanguageToInformese;
	LanguageToInformese();
	! Re-tokenise:
	VM_Tokenise(buffer,parse);
	#Endif; ! LanguageToInformese

	num_words = WordCount(); players_command = 100 + num_words;
	
	! CHANGED DMS
	FollowRulebook((+ before processing a command +));
	if(RulebookFailed()) jump ReType;
	! END CHANGE

	k=0;
	#Ifdef DEBUG;
	if (parser_trace >= 2) {
		print "[ ";
		for (i=0 : i<num_words : i++) {

			#Ifdef TARGET_ZCODE;
			j = parse-->(i*2 + 1);
			#Ifnot; ! TARGET_GLULX
			j = parse-->(i*3 + 1);
			#Endif; ! TARGET_
			k = WordAddress(i+1);
			l = WordLength(i+1);
			print "~"; for (m=0 : m<l : m++) print (char) k->m; print "~ ";

			if (j == 0) print "?";
			else {
				#Ifdef TARGET_ZCODE;
				if (UnsignedCompare(j, HDR_DICTIONARY-->0) >= 0 &&
					UnsignedCompare(j, HDR_HIGHMEMORY-->0) < 0)
					 print (address) j;
				else print j;
				#Ifnot; ! TARGET_GLULX
				if (j->0 == $60) print (address) j;
				else print j;
				#Endif; ! TARGET_
			}
			if (i ~= num_words-1) print " / ";
		}
		print " ]^";
	}
	#Endif; ! DEBUG
	verb_wordnum = 1;
	actor = player;
	actors_location = ScopeCeiling(player);
	usual_grammar_after = 0;

  .AlmostReParse;

	scope_token = 0;
	action_to_be = NULL;

	! Begin from what we currently think is the verb word

  .BeginCommand;

	wn = verb_wordnum;
	verb_word = NextWordStopped();

	! If there's no input here, we must have something like "person,".

	if (verb_word == -1) {
		best_etype = STUCK_PE; jump GiveError;
	}
	if (verb_word == comma_word) {
		best_etype = COMMABEGIN_PE; jump GiveError;
	}

	! Now try for "again" or "g", which are special cases: don't allow "again" if nothing
	! has previously been typed; simply copy the previous text across

	if (verb_word == AGAIN2__WD or AGAIN3__WD) verb_word = AGAIN1__WD;
	if (verb_word == AGAIN1__WD) {
		if (actor ~= player) {
			best_etype = ANIMAAGAIN_PE;
			jump GiveError;
		}
		#Ifdef TARGET_ZCODE;
		if (buffer3->1 == 0) {
			PARSER_COMMAND_INTERNAL_RM('D'); new_line;
			jump ReType;
		}
		#Ifnot; ! TARGET_GLULX
		if (buffer3-->0 == 0) {
			PARSER_COMMAND_INTERNAL_RM('D'); new_line;
			jump ReType;
		}
		#Endif; ! TARGET_
		for (i=0 : i<INPUT_BUFFER_LEN : i++) buffer->i = buffer3->i;
		VM_Tokenise(buffer,parse);
		num_words = WordCount(); players_command = 100 + num_words;
		jump ReParse;
	}

	! Save the present input in case of an "again" next time

	if (verb_word ~= AGAIN1__WD)
		for (i=0 : i<INPUT_BUFFER_LEN : i++) buffer3->i = buffer->i;

	if (usual_grammar_after == 0) {
		j = verb_wordnum;
		i = RunRoutines(actor, grammar); 
		#Ifdef DEBUG;
		if (parser_trace >= 2 && actor.grammar ~= 0 or NULL)
			print " [Grammar property returned ", i, "]^";
		#Endif; ! DEBUG

		if ((i ~= 0 or 1) && (VM_InvalidDictionaryAddress(i))) {
			usual_grammar_after = verb_wordnum; i=-i;
		}

		if (i == 1) {
			parser_results-->ACTION_PRES = action;
			parser_results-->NO_INPS_PRES = 0;
			parser_results-->INP1_PRES = noun;
			parser_results-->INP2_PRES = second;
			if (noun) parser_results-->NO_INPS_PRES = 1;
			if (second) parser_results-->NO_INPS_PRES = 2;
			rtrue;
		}
		if (i ~= 0) { verb_word = i; wn--; verb_wordnum--; }
		else { wn = verb_wordnum; verb_word = NextWord(); }
	}
	else usual_grammar_after = 0;

-) instead of "Parser Letter A" in "Parser.i6t".

Before Processing a Command ends here.

---- DOCUMENTATION ----

This extension adds a new rulebook, "before processing a command", which is run before each iteration of the parser. In other words, if the player enters a command like "N. E. JUMP", this rulebook will run once with the player's command set to "N. E. JUMP", once with it set to "E. JUMP", and once with it set to "JUMP".

This is intended to avoid many of the headaches created by "after reading a command" rules, and acts similarly to them in as many respects as possible. In particular, it also allows you to "reject the player's command", which returns control to the keyboard, skipping any remaining commands.

Note that this is a single rulebook, not an activity. There are no "for processing a command" or "after processing a command" rules.

Example: * Echo - A basic demonstration of the extension.

"Echo"

Include Before Processing a Command by Daniel Stelzer.

Before processing a command: say "[player's command]".

Lab is a room.

Test me with "wait / jump then wait then wave / wave. jump".

Example: *** The Riddle of the Labyrinth - Cancelling a series of commands when something dramatic happens in the world.

"The Riddle of the Labyrinth"

Include Before Processing a Command by Daniel Stelzer.

[We want to interrupt ongoing commands if something dramatic has happened since the last time the player typed something on the keyboard.

We handle this with a flag: it gets set to false whenever the player has the opportunity to type, and set to true whenever dramatic changes happen in the world.

If the flag is true "before processing a command", then, we want to cancel all processing. This is where "reject the player's command" comes in.]

The interruption flag is initially false.
Before reading a command: now the interruption flag is false.
Before processing a command when the interruption flag is true:
	say "(Since something dramatic has happened, the remainder of your command---'[player's command]'---has been cut off.)[paragraph break]";
	now the interruption flag is false;
	reject the player's command.

To interrupt ongoing commands:
	now the interruption flag is true.

[Now we contrive a reason why the player would want to type a long sequence of commands on a single line, but might also get interrupted in the process.

This is a sort of maze that was very popular in the early 80s, where every wrong step leads back to the starting location. The intended result is that you need to know the correct path in advance. But what usually happened instead was that players would map it by brute force.]

Definition: a direction (called the way) is viable if the room-or-door (way) from the location is not nothing.
A maze is a kind of room. The printed name of a maze is "Labyrinth". The description of a maze is "Exits lead [list of viable directions]."

Start is a maze. The description of Start is "You've chalked a big X on the floor here to mark your starting point. Exits lead [list of viable directions]." North of Start is Start. East of Start is Maze1. West of Start is Start. South of Start is Start.

Maze1 is a maze. North of Maze1 is Maze2. East of Maze1 is Start. West of Maze1 is Start. South of Maze1 is Start.

Maze2 is a maze. North of Maze2 is Maze3. East of Maze2 is Start. West of Maze2 is Start. South of Maze2 is Start.

Maze3 is a maze. North of Maze3 is Start. East of Maze3 is Maze4. West of Maze3 is Start. South of Maze3 is Start.

Maze4 is a maze. North of Maze4 is Start. East of Maze4 is Maze5. West of Maze4 is Start. South of Maze4 is Start.

Maze5 is a maze. North of Maze5 is Start. East of Maze5 is Start. West of Maze5 is Start. South of Maze5 is Maze6.

Maze6 is a maze. North of Maze6 is Start. East of Maze6 is Start. West of Maze6 is Maze7. South of Maze6 is Start.

Maze7 is a maze. North of Maze7 is Start. East of Maze7 is Start. West of Maze7 is Start. South of Maze7 is Start. Southeast of Maze7 is End.

End is a room. The description of End is "That last passage dropped you in a dead end with no exits. How can you escape now?" Northeast of End is nothing.

[And our source of interruptions!]

The Minotaur is a man.
Instead of jumping in the presence of the Minotaur:
	say "You jump on the spot. The Minotaur is startled and flees!";
	now the Minotaur is nowhere.
Instead of doing anything in the presence of the Minotaur:
	say "The Minotaur charges. The results are unfortunately too gory to describe in text.";
	end the story saying "You have died".

Every turn:
	if a random chance of 1 in 5 succeeds:
		move the Minotaur to the location;
		say "The Minotaur lumbers into the room!";
		interrupt ongoing commands.

[We don't really want to make the player brute-force the maze.]

The player carries a clue. The description of the clue is "Instead of the traditional spool of thread, the king's daughter gave you this slip of paper. On the front it says: 'E. N. N. E. E. S. W. SE. Then say the magic word.' On the back it says: 'Jumping scares the Minotaur away.'"

[And the final magic word. SAY XYZZY will, by default, map to "answering yourself that xyzzy".]

Instead of answering yourself that a topic:
	say "You cry out, '[topic understood]'! But there is no answer."

[The correct path through the maze has drawn out this magic letter on the map.]

Instead of answering yourself that "r" when the location is End:
	say "As you call out the magic word, a hidden door swings open in the wall...";
	end the story finally saying "But what happens next?".
