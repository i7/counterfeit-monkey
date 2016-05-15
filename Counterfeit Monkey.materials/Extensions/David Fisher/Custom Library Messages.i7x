Version 28/100614 of Custom Library Messages by David Fisher begins here.

"Enables the standard messages printed by the Inform library
to be replaced with custom messages, including changes to
tense, number, person and gender." 

[
   Contents ...

   1. Definitions

   1.1. Library Message values
   1.2. Defaults
   1.3. Before and After rules
   1.4. Altering Messages

   2. Message rules

   2.1. End of game messages
   2.2. Descriptions
   2.3. Prompts and Input
   2.4. Undo
   2.5. Oops
   2.6. Again
   2.7. Syntax Errors
   2.8. Illegal Commands
   2.9. Multiple Objects
   2.10. Implicit Actions
   2.11. Carrying Capacity
   2.12. Disambiguation
   2.13. Pronouns
   2.14. Commanding People
   2.15. File Operations
   2.16. Transcripts
   2.17. Scoring
   2.18. Inventory
   2.19. Darkness
   2.20. Take
   2.21. Remove
   2.22. Drop
   2.23. Insert
   2.24. Put On
   2.25. Give
   2.26. Show
   2.27. Enter
   2.28. Exit, Get Off
   2.29. Go
   2.30. Brief, Super Brief, Verbose
   2.31. Look
   2.32. Examine
   2.33. Search
   2.34. Look Under
   2.35. Open
   2.36. Close
   2.37. Lock
   2.38. Unlock
   2.39. Switch On
   2.40. Switch Off
   2.41. Wear
   2.42. Take Off
   2.43. Eating And Drinking, Senses
   2.44. Touching
   2.45. Rhetorical Commands
   2.46. Body Movement
   2.47. Physical Interaction
   2.48. Push, Pull, Turn
   2.49. Speech / Interpersonal Actions
   2.50. Mental Actions
   2.51. Sleep And Waiting

   3. Implementation

   3.1. Kinds
   3.2. The current object
   3.3. "Say object" rules
   3.4. Decision rules
   3.5. Grammatical tables
   3.6. Table operations
   3.7. "Say word" rules
   3.8. "Say suffix" rules
   3.9. Irregular verbs
   3.10. "Say symbol" rules
   3.11. Miscellaneous "say" rules
   3.12. Miscellaneous decision rules

   4. Inform 6 interface

   5. Rule handling

   5.1. Rule substitutions
   5.2. Internal rules
   5.3. LibraryMessages fix
]

Part 1 - Definitions

Section 1.1 - Library Message values

Library message id is a kind of value.
The library message ids are defined by the table of library messages.

The main object is an object that varies.
The secondary object is an object that varies.
The numeric amount is a number that varies.
The library-message-id is a library message id that varies.
The before library messages rule is a rule that varies.
The after library messages rule is a rule that varies.

Tense is a kind of value. The tenses are past tense and present tense.
Grammatical number is a kind of value. The grammatical numbers are singular and plural.
Grammatical person is a kind of value. The grammatical persons are first person, second person and third person.
Gender is a kind of value. The genders are gender masculine, gender feminine and gender neuter.

The library message tense is a tense that varies.
The library message grammatical number is a grammatical number that varies.
The library message person is a grammatical person that varies.
The library message gender is a gender that varies.
Library_message_debug is a thing. Library_message_debug can be on or off.

Section 1.2 - Defaults

The library message tense is present tense.
The library message grammatical number is singular.
The library message person is second person.
The library message gender is gender masculine.
Library_message_debug is off.

Table of custom library messages
Message Id			Message Text
library message id		text

Section 1.3 - Before and After rules

[ called just before and just after a library message is printed ]

The before library messages rule is the empty rule.
The after library messages rule is the empty rule.

This is the empty rule:
   do nothing.

Section 1.4 - Altering messages

When play begins:
   init library messages;
   add the custom library messages.

To add the custom library messages:
   repeat through the table of custom library messages begin;
      set the message id entry to the message text entry;
   end repeat.

To set (id_ - library message id) to (msg_ - text):
   update the row with id of id_ to msg_.

[ perform a binary search to quickly find the message id
  (table is guaranteed to be sorted) ]

To update the row with id of (id_ - library message id) to (msg_ - text):
   let n1 be 1;
   let n2 be the number of rows in the table of library messages;
   while n1 <= n2 begin;
      let mid be n1 plus n2;
	  change mid to mid divided by 2;
	  choose row mid in the table of library messages;
	  if the message id entry is id_ begin;
	     change the message text entry to msg_;
		 change n1 to n2 + 1;	[ to force the loop to stop ]
	  end if;
	  if the message id entry < id_, change n1 to mid plus 1;
      if the message id entry > id_, change n2 to mid minus 1;
   end while.

libmsg_3ps_changed is a number that varies. libmsg_3ps_changed is 0.

To set the library message third person text to (name_ - text):
	set the library message third person text to name_ / name_ / name_.

To set the library message third person text to (upper_ - text) / (lower_ - text):
   set the library message third person text to upper_ / lower_ / lower_.

To restore the library message third person text:
   set the library message third person text to "He" / "he" / "him";
   change libmsg_3ps_changed to 0.

To set the library message third person text to (upper_ - text) / (lower_ - text) / (dobj_ - text):
   change libmsg_3ps_changed to 1;
   repeat through the table of 'you' forms begin;
      if Gramm Person entry is third person and
	     Gramm Number entry is singular begin;
		 if Case entry is upper-case, change Word entry to upper_;
         otherwise change Word entry to lower_;
	  end if;
   end repeat;
   repeat through the table of 'you' dobj forms begin;
      if Gramm Person entry is third person and
	     Gramm Number entry is singular then
      change Word entry to dobj_;
   end repeat.

Part 2 - Messages

Section 2.1 - End of game messages

Table of library messages
Message Id				Message Text
LibMsg <you have died>			" [You] [have+] died "
LibMsg <you have won>			" You have won "

Section 2.2 - Descriptions

[ The following rule supercedes LibMsg <player self description> (left in for backwards compatibility, but has no effect) ]

Rule for printing the name of the player: say "[yourself]".

Table of library messages (continued)
Message Id				Message Text
LibMsg <player self description>		"[yourself]"
LibMsg <unimportant object>		"[That's|they're] not something you need to refer to in the course of this game."

[
   Removed "LibMsg <player description>"
   - use "The description of the player is ..." instead.
]

Section 2.3 - Prompts and Input

Table of library messages (continued)
Message Id				Message Text
LibMsg <empty line>			"I beg your pardon?"
LibMsg <confirm Quit>			"Are you sure you want to quit? "
LibMsg <yes or no prompt>		"Please answer yes or no."
LibMsg <restrict answer>		"Please give one of the answers above."
LibMsg <page prompt>			"[/n][bracket]Please press SPACE[dot][close bracket]"
LibMsg <menu prompt>			"[/n]Type a number from 1 to [numeric amount], 0 to redisplay or press ENTER."
LibMsg <comment recorded>		"[bracket]Comment recorded[dot][close bracket]"
LibMsg <comment not recorded>		"[bracket]Comment NOT recorded[dot][close bracket]"

Section 2.4 - Undo

Table of library messages (continued)
Message Id				Message Text
LibMsg <undo succeeded>		"[bracket]Previous turn undone[dot][close bracket]"
LibMsg <undo failed>			"[apostrophe]Undo[apostrophe] failed. [bracket]Not all interpreters provide it[dot][close bracket]"
LibMsg <undo not provided>		"[bracket]Your interpreter does not provide [apostrophe]undo[apostrophe]. Sorry[ExMark][close bracket]"
LibMsg <cannot undo nothing>		"[bracket]You can't [apostrophe]undo[apostrophe] what hasn't been done[ExMark][close bracket]"
LibMsg <cannot undo twice in a row>	"[bracket]Can't [apostrophe]undo[apostrophe] twice in succession. Sorry[ExMark][close bracket]"
LibMsg <undo forbidden>			"The use of UNDO is forbidden in this game."

Section 2.5 - Oops

Table of library messages (continued)
Message Id				Message Text
LibMsg <oops failed>			"Sorry, that can't be corrected."
LibMsg <oops too many arguments>	"[apostrophe]Oops[apostrophe] can only correct a single word."
LibMsg <oops no arguments>		"Think nothing of it."

Section 2.6 - Again

Table of library messages (continued)
Message Id				Message Text
LibMsg <cannot do again>		"[You] [can] hardly repeat that."
LibMsg <again usage>			"To repeat a command like [apostrophe]frog, jump[apostrophe], just say [apostrophe]again[apostrophe], not [apostrophe]frog, again[apostrophe]."

Section 2.7 - Syntax Errors

Table of library messages (continued)
Message Id				Message Text
LibMsg <command not understood>	"I didn't understand that sentence."
LibMsg <command partly understood>	"I only understood you as far as wanting to "
LibMsg <command badly ended>		"I didn't understand the way that finished."
LibMsg <command incomplete>		"You seem to have said too little!"
LibMsg <command cut short>		"(Since something dramatic has happened, your list of commands has been cut short.)"
LibMsg <number not understood>	"I didn't understand that number."
LibMsg <cannot begin at comma>	"You can't begin with a comma."
LibMsg <extra words before comma>	"To talk to someone, try [apostrophe]someone, hello[apostrophe] or some such."

Section 2.8 - Illegal Commands

Table of library messages (continued)
Message Id					Message Text
LibMsg <unknown object>			"[You] [can't] see any such thing."
LibMsg <object not held>			"[You] [aren't] holding that!"
LibMsg <unknown verb>				"That's not a verb I [if using the American dialect option]recognize.[otherwise]recognise."
LibMsg <verb cannot have inanimate object>	"[You] [can] only do that to something animate."
LibMsg <noun needed>				"You must supply a noun."
LibMsg <noun not needed>			"You may not supply a noun."
LibMsg <object needed>				"You must name an object."
LibMsg <object not needed>			"You may not name an object."
LibMsg <second object needed>			"You must name a second object."
LibMsg <second object not needed>		"You may not name a second object."
LibMsg <second noun needed>			"You must supply a second noun."
LibMsg <second noun not needed>		"You may not supply a second noun."
LibMsg <something more substantial needed>	"You must name something more substantial."

Section 2.9 - Multiple Objects

Table of library messages (continued)
Message Id					Message Text
LibMsg <verb cannot have multiple objects>	"You can't use multiple objects with that verb."
LibMsg <too many multiple objects>		"You can only use multiple objects once on a line."
LibMsg <not that many available>		"[if the numeric amount is 0]None of those are[otherwise]Only [numeric amount in words] of those [is|are for numeric amount][end if] available."
LibMsg <no objects available>			"There are none at all available!"
LibMsg <zero multiple objects>			"Nothing to do!"
LibMsg <first N objects>				"(considering the first sixteen objects only)"
LibMsg <excepted object not included anyway>	"You excepted something not included anyway!"

Section 2.10 - Implicit Actions

To say entering|getting onto-into:
   if main object is not a supporter and main object is not a container,
      say "entering";
   otherwise say "getting [onto|into]".

Table of library messages (continued)
Message Id						Message Text
LibMsg <report implicit take>				"(first taking [the % dobj])"
LibMsg <report npc implicit take>				"([the actor] first taking [the % dobj])"
LibMsg <implicitly pass outwards through other barriers>	"(getting [off|out of] [the % dobj])"
LibMsg <implicitly pass inwards through other barriers>	"([entering|getting onto-into] [the % dobj])"
LibMsg <cannot drop clothes being worn>		"(first taking [the % dobj] off)"
LibMsg <cannot insert clothes being worn>		"(first taking [it|them] off)"
LibMsg <cannot put clothes being worn>			"(first taking [it|them] off)"

Section 2.11 - Carrying Capacity

Table of library messages (continued)
Message Id						Message Text
LibMsg <cannot exceed carrying capacity>		"[You're] carrying too many things already."
LibMsg <use holdall to avoid exceeding carrying capacity>	"(putting [the % dobj] into [the player's holdall] to make room)"
LibMsg <cannot insert if this exceeds carrying capacity>	"There [is|was] no more room in [the % dobj]."
LibMsg <cannot put if this exceeds carrying capacity>	"There [is|was] no more room on [the % dobj]."

Section 2.12 - Disambiguation

Table of library messages (continued)
Message Id				Message Text
LibMsg <who disambiguation>		"Who [do] [you] mean, "
LibMsg <which disambiguation>		"Which [do] [you] mean, "
LibMsg <whom disambiguation>		"Whom [do] [you] want[if main object is not the player] [the %][end if] to [the last command]?"
LibMsg <what disambiguation>		"What [do] [you] want[if main object is not the player] [the %][end if] to [the last command]?"
LibMsg <single object disambiguation>	"Sorry, you can only have one item here. Which exactly?"

Section 2.13 - Pronouns

To say <space> at the moment:
   if lm_present, say " at the moment"

Table of library messages (continued)
Message Id				Message Text
LibMsg <pronoun not set>		"I'm not sure what [apostrophe][pronoun word][apostrophe] refers to."
LibMsg <pronoun absent>		"[You] [can't] see [apostrophe][pronoun word][apostrophe] ([the %])[<space> at the moment]."
LibMsg <Pronouns initial text>		"At the moment, "
LibMsg <Pronouns -means- text>		"means"
LibMsg <Pronouns -unset- text>		"is unset"
LibMsg <no pronouns known>		"no pronouns are known to the game."

Section 2.14 - Commanding People

Table of library messages (continued)
Message Id				Message Text
LibMsg <person ignores command>	"[The %] [has|have] better things to do."
LibMsg <cannot talk to absent person>	"[You] seem[-s] to want to talk to someone, but I [can't] see whom."
LibMsg <cannot talk to inanimate object>	"[You] [=> present tense][can't][=> default tense] talk to [the % dobj]."
LibMsg <npc unable to do that>		"[The actor] [is|are] unable to do that."

Section 2.15 - File Operations

Table of library messages (continued)
Message Id				Message Text
LibMsg <confirm Restart>			"Are you sure you want to restart? "
LibMsg <Restart failed>			"Failed."
LibMsg <Restore failed>			"Restore failed."
LibMsg <Restore succeeded>		"Ok."
LibMsg <Save failed>			"Save failed."
LibMsg <Save succeeded>		"Ok."
LibMsg <Verify succeeded>		"The game file has verified as intact."
LibMsg <Verify failed>			"The game file did not verify as intact, and may be corrupt."

Section 2.16 - Transcripts

Table of library messages (continued)
Message Id				Message Text
LibMsg <transcript already on>		"Transcripting is already on."
LibMsg <transcript already off>		"Transcripting is already off."
LibMsg <start of transcript>		"Start of a transcript of"
LibMsg <end of transcript>		"[/n]End of transcript."
LibMsg <transcript failed>		"Attempt to begin transcript failed."
LibMsg <end transcript failed>		"Attempt to end transcript failed."

Section 2.17 - Scoring

Table of library messages (continued)
Message Id				Message Text
LibMsg <Score command>		"[if game over]In that game you[otherwise]You have so far[end if] scored [the score] out of a possible [maximum score], in [turn count] turn[s]"
LibMsg <score changed>		"Your score has just gone [if numeric amount >= 0]up by [the numeric amount in words][otherwise]down by [0 minus the numeric amount in words][end if] point[s]"
LibMsg <score notification turned on>	"Score notification on."
LibMsg <score notification turned off>	"Score notification off."
LibMsg <no scoring>			"There is no score in this story."
LibMsg <score rank>			", earning you the rank of "

Section 2.18 - Inventory

Table of library messages (continued)
Message Id					Message Text
LibMsg <report npc taking inventory>	"[The actor] look[-s] through [his] possessions."
LibMsg <Inventory initial text>			"[You] [are] carrying"
LibMsg <Inventory no possessions>		"[You] [are] carrying nothing."

Section 2.19 - Darkness

Table of library messages (continued)
Message Id					Message Text
LibMsg <entering darkness>			"[if lm_past]It suddenly became pitch dark.[otherwise]It is now pitch dark in here![end if]"
LibMsg <dark description>			"It [is|was] pitch dark, and [you] [can't] see a thing."
LibMsg <examine while dark>			"Darkness, noun. An absence of light to see by."
LibMsg <search while dark>			"But [it's] dark."
LibMsg <look under while dark>			"But [it's] dark."
LibMsg <dark room name>				"Darkness"

Section 2.20 - Take

Table of library messages (continued)
Message Id					Message Text
LibMsg <report player taking>			"Taken."
LibMsg <report npc taking>			"[The actor] pick[-s] up [the % dobj]."
LibMsg <cannot take yourself>			"[You] [are] always self-possessed."
LibMsg <cannot take other people>		"I don't suppose [the %] would [if lm_past]have cared[otherwise]care[end if] for that."
LibMsg <cannot take something you are within>	"[You][apostrophe]d have to get [=> %][off|out of] [the % dobj] first."
LibMsg <cannot take something already taken>	"[You] already [have] [that|those]."
LibMsg <cannot take possessions of others>	"[=> noun][That|those] seem[-s] to belong to [the % dobj]."
LibMsg <cannot take component parts>		"[=> noun][That|those] seem[-s] to be a part of [the % dobj]."
LibMsg <cannot take hidden parts>		"[That|those] [isn't|aren't] available."
LibMsg <cannot reach within closed containers>	"[The %] [isn't|aren't] open."
LibMsg <cannot take scenery>			"[That's|they're] hardly portable."
LibMsg <cannot take something fixed>		"[That's|they're] fixed in place."
LibMsg <cannot reach within other places>	"[You] [=> present tense][can't][=> default tense] reach into [the % dobj]."

[ See also:
  	LibMsg <cannot exceed carrying capacity>
	LibMsg <use holdall to avoid exceeding carrying capacity> ]

Section 2.21 - Remove

Table of library messages (continued)
Message Id					Message Text
LibMsg <report player removing>		"Removed."
LibMsg <report npc removing>			"[The actor] remov[e-s] [the % dobj] from [the second noun]."
LibMsg <cannot remove from closed containers>	"[It|they] [is|are] unfortunately closed."
LibMsg <cannot remove something not within>	"But [it|they] [isn't|aren't] there [if lm_past]any more[otherwise]now[end if]."

Section 2.22 - Drop

Table of library messages (continued)
Message Id						Message Text
LibMsg <report player dropping>				"Dropped."
LibMsg <report npc dropping>				"[The actor] [puts*] down [the % dobj]."
LibMsg <cannot drop something already dropped>	"[The %] [is|are] already [here]."
LibMsg <cannot drop not holding>			"[You] [if lm_past][didn't] have[otherwise][haven't+] got[end if] [that|those]."
LibMsg <cannot drop if this exceeds carrying capacity>	"There [is|was] no more room [on|in] [the %]."

[ See also:
  	LibMsg <cannot drop clothes being worn> ]

Section 2.23 - Insert

Table of library messages (continued)
Message Id						Message Text
LibMsg <report player inserting>				"[if there are multiple objects]Done[otherwise][You] [puts*] [the % dobj] into [the second noun][end if]."
LibMsg <report npc inserting>				"[The actor] [puts*] [the % dobj] into [the second noun]."
LibMsg <cannot insert something not held>		"[You] [=> present tense]need[-s][=> default tense] to be holding [the % dobj] before [you] can put [it|them] into something else."
LibMsg <cannot insert into something not a container>	"[That|those] can't contain things."
LibMsg <cannot insert into closed containers>		"[The %] [is|are] closed."
LibMsg <need to take off before inserting>		"[You][apostrophe]ll need to take [it|them] off first."
LibMsg <cannot insert something into itself>		"[You] [=> present tense][can't][=> default tense] put something inside itself."

[ See also:
  	LibMsg <cannot insert if this exceeds carrying capacity>
	LibMsg <cannot insert clothes being worn> ]

Section 2.24 - Put On

To say would achieve:
   say "would [if lm_past]have achieved[otherwise]achieve"

Table of library messages (continued)
Message Id						Message Text
LibMsg <report player putting on>			"[if there are multiple objects]Done[otherwise][You] [puts*] [the % dobj] on [the second noun][end if]."
LibMsg <report npc putting on>				"[The actor] [puts*] [the % dobj] on [the second noun]."
LibMsg <cannot put something not held>			"[You] [=> present tense]need[-s][=> default tense] to be holding [the % dobj] before [you] can put [it|them] on top of something else."
LibMsg <cannot put something on it-self>			"[You] [=> present tense][can't][=> default tense] put something on top of itself."
LibMsg <cannot put onto something not a supporter>	"Putting things on [the % dobj] [would achieve] nothing."
LibMsg <cannot put onto something being carried>	"[You] lack[-s] the dexterity."

[ See also:
  	LibMsg <cannot put if this exceeds carrying capacity>
	LibMsg <cannot put clothes being worn> ]

Section 2.25 - Give

Table of library messages (continued)
Message Id					Message Text
LibMsg <report player giving>		"[You] [give*] [the % dobj] to [=> second noun][the $ dobj]."
LibMsg <report npc giving to player>	"[The actor] [gives*] [the % dobj] to [you dobj]."
LibMsg <report npc giving to npc>		"[The actor] [gives*] [the % dobj] to [=> second noun][the $ dobj]."
LibMsg <cannot give what you have not got>	"[You] [aren't] holding [the % dobj]."
LibMsg <cannot give to yourself>			"[You] juggl[e-s] [the % dobj] for a while, but [don't] achieve much."
LibMsg <block giving>				"[The %] [doesn't|don't] seem interested."
LibMsg <unable to receive things>		"[The %] [isn't|aren't] able to receive things."

Section 2.26 - Show

Table of library messages (continued)
Message Id					Message Text
LibMsg <cannot show what you have not got>	"[You] [aren't] holding [the % dobj]."
LibMsg <block showing>				"[The %] [is|are] unimpressed."

Section 2.27 - Enter

To say appropriate action for enter verb:
   (-
       if (verb_word == 'stand') print "stand on";
       else if (verb_word == 'sit') print "sit down on";
       else if (verb_word == 'lie') print "lie down on";
       else print "enter";
   -).

Table of library messages (continued)
Message Id						Message Text
LibMsg <report player entering>			"[You] [get*] [=> %][onto|into] [the % dobj]."
LibMsg <report npc entering>				"[The actor] [gets*] [=> %][onto|into] [the % dobj]."
LibMsg <cannot enter something already entered>	"But [you're] already [=> %][on|in] [the % dobj]."
LibMsg <cannot enter something not enterable>		"[That's|they're] not something [you] [=> present tense][can][=> default tense] [appropriate action for enter verb]."
LibMsg <cannot enter closed containers>			"[You] [=> present tense][can't][=> default tense] get into the closed [% dobj]."
LibMsg <cannot enter something carried>		"[You] [=> present tense][can][=> default tense] only get into something free-standing."

[ See also:
	LibMsg <implicitly pass outwards through other barriers>
	LibMsg <implicitly pass inwards through other barriers> ]

Section 2.28 - Exit, Get Off

Table of library messages (continued)
Message Id						Message Text
LibMsg <report player exiting>				"[You] [get*] [=> %][off|out of] [the % dobj]."
LibMsg <report npc exiting>				"[The actor] [gets*] [=> %][off|out of] [the % dobj]."
LibMsg <cannot exit when not within anything>		"But [you] [aren't] in anything[<space> at the moment]."
LibMsg <cannot exit closed containers>			"[You] [can't] get out of the closed [% dobj]."
LibMsg <cannot get off things>				"But [you] [aren't] on [the % dobj][<space> at the moment]."
LibMsg <cannot exit thing not within>			"But [you] [aren't] [=> %][on|in] [the % dobj]."

Section 2.29 - Go

Table of library messages (continued)
Message Id						Message Text
LibMsg <cannot go that way>				"[You] [can't] go that way."
LibMsg <cannot travel in something not a vehicle>	"[You][apostrophe]ll have to get [=> %][off|out of] [the % dobj] first."
LibMsg <cannot go through concealed doors>		"[You] [can't] go that way."
LibMsg <cannot go up through closed doors>		"[You] [are] unable to climb [the % dobj]."
LibMsg <cannot go down through closed doors>		"[You] [are] unable to descend by [the % dobj]."
LibMsg <cannot go through closed doors>		"[You] [can't], since [the %] [is|are] in the way."
LibMsg <nothing through door>				"[You] [can't], since [the %] [leads*] nowhere."
LibMsg <block vaguely going>				"You[apostrophe]ll have to say which compass direction to go in.[/r]"
LibMsg <say npc goes>					"[The actor] [goes*] [%]"
LibMsg <say npc arrives>					"[The actor] arriv[e-s] [from the main object]"
LibMsg <say npc arrives from unknown direction>		"[The actor] arriv[e-s]"
LibMsg <say npc arrives at>				"[The actor] arriv[e-s] at [the %] [from the secondary object]"
LibMsg <say npc goes through>				"[The actor] [goes*] through [the %]"
LibMsg <say npc arrives from>				"[The actor] arriv[e-s] from [the %]"
LibMsg <say npc vehicle>					"[on|in] [the %]"
LibMsg <say npc pushing in front with player>		", pushing [the %] in front, and [you] along too"
LibMsg <say npc pushing in front>				", pushing [the %] in front"
LibMsg <say npc pushing away>				", pushing [the %] away"
LibMsg <say npc pushing in>				", pushing [the %] in"
LibMsg <say npc taking player along>			", taking you along"

To say from (dir - a direction):
    say "from ";
    if dir is down, say "below";
    if dir is up, say "above";
    if dir is not down and dir is not up, say "the [dir]".

Section 2.30 - Brief, Super Brief, Verbose

Table of library messages (continued)
Message Id						Message Text
LibMsg <brief look mode>				" is now in its normal 'brief' printing mode, which gives long descriptions of places never before visited and short descriptions otherwise."
LibMsg <superbrief look mode>				" is now in its 'superbrief' mode, which always gives short descriptions of locations (even if [you] [haven't+] been there before)."
LibMsg <verbose look mode>				" is now in its 'verbose' mode, which always gives long descriptions of locations (even if [you've+] been there before)."

Section 2.31 - Look

Table of library messages (continued)
Message Id				Message Text
LibMsg <report npc looking>	"[The actor] look[-s] around."
LibMsg <top line what on>		" (on [the % dobj])"
LibMsg <top line what in>		" (in [the % dobj])"
LibMsg <top line what as>		" (as [inform 6 short name of %])"
LibMsg <say things within>		"[what's inside % part 1] [what's inside % part 2]"
LibMsg <say things also within>		"[what's inside % part 1] also [what's inside % part 2]"
LibMsg <say things on>			"On [the main object] [what's on %].[line break]"

To say what's on %:
   list the contents of the main object, prefacing with is/are, as a sentence,
     including contents, giving brief inventory information,
	tersely, not listing concealed items.

To say what's inside % part 1:
   if main object is the location, say "[You]";
   otherwise say "[On|In] [the main object] [you]";
   say " [can]"

To say what's inside % part 2:
   say "see ";
   list the contents of the main object, as a sentence, including contents,
     listing marked items only, giving brief inventory information,
	tersely, not listing concealed items;
   if the main object is the location, say " [here]";
   say "."

Section 2.32 - Examine

Table of library messages (continued)
Message Id					Message Text
LibMsg <report npc examining>		"[The actor] look[-s] closely at [the % dobj]."
LibMsg <examine undescribed things>		"[You] [see*] nothing special about [the % dobj]."
LibMsg <examine direction>			"[You] [see*] nothing unexpected in that direction."
LibMsg <examine devices>			"[The %] [is|are][if lm_present] currently[end if] switched [if the main object is switched on]on[otherwise]off[end if]."

[ See also:
	LibMsg <examine in darkness> ]

Section 2.33 - Search

Table of library messages (continued)
Message Id						Message Text
LibMsg <report npc searching>			"[The actor] search[-es] [the % dobj]."
LibMsg <cannot search unless container or supporter>	"[You] find[-s] nothing of interest."
LibMsg <cannot search closed opaque containers>	"[You] [can't] see inside, since [the %] [is|are] closed."
LibMsg <nothing found within container>			"[The %] [is|are] empty."
LibMsg <nothing found on top of>			"There is nothing on [the % dobj]."

[ See also:
	LibMsg <search in darkness> ]

Section 2.34 - Look Under

Table of library messages (continued)
Message Id						Message Text
LibMsg <report npc looking under>		"[The actor] look[-s] under [the % dobj]."
LibMsg <look under>					"[You] [find*] nothing of interest."

[ See also:
	LibMsg <look under in darkness> ]

Section 2.35 - Open

Table of library messages (continued)
Message Id						Message Text
LibMsg <report player opening>				"[You] open[-s] [the % dobj]."
LibMsg <report npc opening>				"[The actor] open[-s] [the % dobj]."
LibMsg <report unseen npc opening>			"[The %] opens."
LibMsg <cannot open unless openable>			"[That's|they're] not something [you] [can] open."
LibMsg <cannot open something locked>			"[It|they] seem[-s] to be locked."
LibMsg <cannot open something already open>		"[That's|they're] already open."
LibMsg <reveal any newly visible exterior initial text>	"[You] open[-s] [the % dobj], revealing "
LibMsg <no newly visible exterior>			"nothing."

Section 2.36 - Close

Table of library messages (continued)
Message Id						Message Text
LibMsg <report player closing>				"[You] clos[e-s] [the % dobj]."
LibMsg <report npc closing>				"[The actor] clos[e-s] [the % dobj]."
LibMsg <report unseen npc closing>			"[The %] closes."
LibMsg <cannot close unless openable>			"[That's|they're] not something [you] [can] close."
LibMsg <cannot close something already closed>		"[That's|they're] already closed."

Section 2.37 - Lock

Table of library messages (continued)
Message Id						Message Text
LibMsg <report player locking>				"[You] lock[-s] [the % dobj]."
LibMsg <report npc locking>				"[The actor] lock[-s] [the % dobj]."
LibMsg <cannot lock without a lock>			"[That|they] [doesn't|don't] seem to be something [you] [can] lock."
LibMsg <cannot lock something already locked>		"[That's|they're] locked[<space> at the moment]."
LibMsg <cannot lock something open>			"First [you][apostrophe]ll have to close [the % dobj]."
LibMsg <cannot lock without the correct key>		"[That|those] [doesn't|don't] seem to fit the lock."

Section 2.38 - Unlock

Table of library messages (continued)
Message Id						Message Text
LibMsg <report player unlocking>			"[You] unlock[-s] [the % dobj]."
LibMsg <report npc unlocking>				"[The actor] unlock[-s] [the % dobj]."
LibMsg <cannot unlock without a lock>			"[That|they] [doesn't|don't] seem to be something [you] [can] unlock."
LibMsg <cannot unlock something already unlocked>	"[That's|they're] unlocked[<space> at the moment]."
LibMsg <cannot unlock without the correct key>		"[That|those] [doesn't|don't] seem to fit the lock."

Section 2.39 - Switch On

Table of library messages (continued)
Message Id						Message Text
LibMsg <report player switching on>			"[You] switch[-es] [the % dobj] on."
LibMsg <report npc switching on>			"[The actor] switch[-es] [the % dobj] on."
LibMsg <cannot switch on unless switchable>		"[That's|they're] not something [you] [can] switch."
LibMsg <cannot switch on something already on>		"[That's|they're] already on."

Section 2.40 - Switch Off

Table of library messages (continued)
Message Id						Message Text
LibMsg <report player switching off>			"[You] switch[-es] [the % dobj] off."
LibMsg <report npc switching off>				"[The actor] switch[-es] [the % dobj] off."
LibMsg <cannot switch off unless switchable>		"[That's|they're] not something [you] [can] switch."
LibMsg <cannot switch off something already off>		"[That's|they're] already off."

Section 2.41 - Wear

Table of library messages (continued)
Message Id					Message Text
LibMsg <report player wearing>		"[You] [put*] on [the % dobj]."
LibMsg <report npc wearing>			"[The actor] [puts*] on [the % dobj]."
LibMsg <cannot wear something not clothing>	"[You] [=> present tense][can't][=> default tense] wear [that|those]!"
LibMsg <cannot wear not holding>		"[You're] not holding [that|those]!"
LibMsg <cannot wear something already worn>	"[You're] already wearing [that|those]!"

Section 2.42 - Take Off

Table of library messages (continued)
Message Id					Message Text
LibMsg <report player taking off>		"[You] [take*] off [the % dobj]."
LibMsg <report npc taking off>			"[The actor] [takes*] off [the % dobj]."
LibMsg <cannot take off something not worn>	"[You're] not wearing [that|those]."

Section 2.43 - Eating And Drinking, Senses

Table of library messages (continued)
Message Id					Message Text
LibMsg <report player eating>			"[You] [eats*] [the % dobj]. Not bad."
LibMsg <report npc eating>			"[The actor] [eats*] [the % dobj]."
LibMsg <cannot eat unless edible>		"[That's|they're] plainly inedible."
LibMsg <block drinking>				"[There's] nothing suitable to drink [here]."
LibMsg <block tasting>				"[You] tast[e-s] nothing unexpected."
LibMsg <block smelling>				"[You] smell[-s] nothing unexpected."
LibMsg <block listening>				"[You] [hear*] nothing unexpected."

Section 2.44 - Touching

To say keep your hands to yourself:
   say "[Keep] [your] hands to [yourself]"

To say Keep:
   say "[=> player]";
   if lm_p2 and lm_sing, say "Keep";
   otherwise say "[You] should keep"

Table of library messages (continued)
Message Id					Message Text
LibMsg <report player touching things>		"[You] [feel*] nothing unexpected."
LibMsg <report npc touching things>		"[The actor] touch[-es] [the % dobj]."
LibMsg <report player touching self>		"If [you] [=> present tense]think[-s][=> default tense] that[apostrophe]ll help."
LibMsg <report npc touching self>		"[The actor] touch[-es] [himself]."
LibMsg <report player touching other people>	"[Keep your hands to yourself][if lm_p2 and lm_sing]![otherwise].[end if]"
LibMsg <report npc touching other people>	"[The actor] touch[-es] [the % dobj]."

Section 2.45 - Rhetorical Commands

Table of library messages (continued)
Message Id					Message Text
LibMsg <block saying yes>			"That was a rhetorical question."
LibMsg <block saying no>			"That was a rhetorical question."
LibMsg <block saying sorry>			"Oh, don't [if using the American dialect option]apologize[otherwise]apologise[end if]."
LibMsg <block swearing obscenely>		"Real adventurers do not use such language."
LibMsg <block swearing mildly>			"Quite."

Section 2.46 - Body Movement

Table of library messages (continued)
Message Id					Message Text
LibMsg <block climbing>				"I don't think much [if lm_past]would have been[otherwise]is to be[end if] achieved by that."
LibMsg <block jumping>				"[You] jump[-s] on the spot, fruitlessly."
LibMsg <block swinging>			"[There's] nothing sensible to swing [here]."
LibMsg <block waving hands>			"[You] wav[e-s], feeling foolish."

Section 2.47 - Physical Interaction

Table of library messages (continued)
Message Id					Message Text
LibMsg <block attacking>			"Violence [isn't|wasn't] the answer to this one."
LibMsg <block burning>				"This dangerous act [would achieve] little."
LibMsg <block cutting>				"Cutting [that|those] up [would achieve] little."
LibMsg <block rubbing>				"[You] achiev[e-s] nothing by this."
LibMsg <block setting to>			"No, [you] [=> present tense][can't][=> default tense] set [that|those] to anything."
LibMsg <block tying>				"[You] [would achieve] nothing by this."
LibMsg <report player waving things>		"[You] look[-s] ridiculous waving [the % dobj]."
LibMsg <report npc waving things>		"[The actor] wav[e-s] [the % dobj]."
LibMsg <cannot wave something not held>	"But [you] [aren't] holding [that|those]."
LibMsg <squeezing people>			"[Keep your hands to yourself]."
LibMsg <report player squeezing>		"[You] achiev[e-s] nothing by this."
LibMsg <report npc squeezing>			"[The actor] squeez[e-s] [the % dobj]."
LibMsg <block throwing at>			"[You] lack[-s] the nerve when it [comes|came] to the crucial moment."
LibMsg <throw at inanimate object>	"Futile."

Section 2.48 - Push, Pull, Turn

To say nothing obvious happens:
   say "Nothing obvious happen[-s|ed][dot]"

To say it is fixed in place:
   say "[It|those] [is|are] fixed in place[dot]"

To say you are unable to:
   say "[You] [are] unable to[dot]"

To say that would be less than courteous:
   say "That would [if lm_past]have been[otherwise]be[end if] less than courteous."

Table of library messages (continued)
Message Id					Message Text
LibMsg <report player pushing>			"[nothing obvious happens]"
LibMsg <report npc pushing>			"[The actor] push[-es] [the % dobj]."
LibMsg <report player pulling>			"[nothing obvious happens]"
LibMsg <report npc pulling>			"[The actor] pull[-s] [the % dobj]."
LibMsg <report player turning>			"[nothing obvious happens]"
LibMsg <report npc turning>			"[The actor] turn[-s] [the % dobj]."
LibMsg <block pushing in directions>		"[The %] [if lm_past]could not[otherwise]cannot[end if] be pushed from place to place."
LibMsg <not pushed in a direction>		"That's not a direction."
LibMsg <pushed in illegal direction>		"Not that way [you] [=> present tense][can't][=> default tense]."
LibMsg <cannot push something fixed in place>	"[It is fixed in place]"
LibMsg <cannot pull something fixed in place>	"[It is fixed in place]"
LibMsg <cannot turn something fixed in place>	"[It is fixed in place]"
LibMsg <cannot push scenery>			"[You are unable to]"
LibMsg <cannot pull scenery>			"[You are unable to]"
LibMsg <cannot turn scenery>			"[You are unable to]"
LibMsg <cannot push people>			"[That would be less than courteous]"
LibMsg <cannot pull people>			"[That would be less than courteous]"
LibMsg <cannot turn people>			"[That would be less than courteous]"

Section 2.49 - Speech / Interpersonal Actions

Table of library messages (continued)
Message Id					Message Text
LibMsg <block answering>			"There [is|was] no reply."
LibMsg <block asking>				"There [is|was] no reply."
LibMsg <block buying>				"Nothing [is|was] on sale."
LibMsg <block kissing>				"[Keep] [your] mind on the game."
LibMsg <block singing>				"[Your] singing [is|was] abominable."
LibMsg <block telling>				"This provok[-es|ed] no reaction."
LibMsg <telling yourself>			"[You] talk[-s] to [yourself] a while."

Section 2.50 - Mental Actions

Table of library messages (continued)
Message Id				Message Text
LibMsg <block thinking>			"What a good idea."
LibMsg <block player consulting>		"[You] discover[-s] nothing of interest in [the % dobj]."
LibMsg <block npc consulting>		"[The actor] look[-s] at [the % dobj]."

Section 2.51 - Sleep And Waiting

Table of library messages (continued)
Message Id				Message Text
LibMsg <block sleeping>			"[You] [aren't] feeling especially drowsy."
LibMsg <block waking up>		"The dreadful truth is, this [is|was] not a dream."
LibMsg <block waking other>		"That seem[-s|ed] unnecessary."
LibMsg <report player waiting>		"Time pass[-es|ed]."
LibMsg <report npc waiting>		"[The actor] wait[-s]."

Part 3 - Implementation

Section 3.1 - Kinds - unindexed

[ upper and lower case ]

Letter case is a kind of value.
The letter cases are lower-case and upper-case.

Section 3.2 - The current object - unindexed

curr_obj is an object that varies.
curr_obj_inform6_value is an object that varies.

[ The current tense, number, person and gender for curr_obj;
  if curr_obj = the player, these are equal to the library message values,
  otherwise curr_obj_number is third person and the number and gender are
  determined by the object. ]

temporary_tense is a tense that varies.
use_temporary_tense is a truth state that varies.
use_temporary_tense is false.
curr_obj_number is a grammatical number that varies.
curr_obj_person is a grammatical person that varies.
curr_obj_gender is a gender that varies.

[ the subject of the sentence, initially assumed to be the actor ]

curr_subject is an object that varies.

[ change the current object ]

To set the current object to (x_ - an object) / (dbg_msg - text):
   if the main object is nothing, change the main object to the noun;
   if x_ is_nothing, change curr_obj to main object;	[ make sure it is always valid ]
   otherwise change curr_obj to x_;
   if curr_obj is_nothing, change curr_obj to the player; [last resort]
   if library_message_debug is on begin;
      say "{[dbg_msg]:obj=";
      if curr_obj is the player, say "player"; [infinite recursion if prints player!]
      otherwise say "[curr_obj]";
      say "}";
   end if;
   if curr_obj is the player or curr_obj is_nothing, use the player's GNP;
   otherwise use the object's GNP.

To use the player's GNP:
   change curr_obj_person to the library message person;
   change curr_obj_number to the library message grammatical number;
   change curr_obj_gender to the library message gender.

To use the object's GNP:
   change curr_obj_person to third person;
   if curr_obj acts plural, change curr_obj_number to plural;
   otherwise change curr_obj_number to singular;
   change curr_obj_gender to the gender of curr_obj.

To decide which gender is the gender of (x_ - an object):
   if x_ acts feminine, decide on gender feminine;
   if x_ acts neuter, decide on gender neuter;
   decide on gender masculine.

To decide whether (x_ - an object) is_nothing:
   (- {x_} == nothing -).

This is the get the curr_obj from Inform 6 rule:
   set the current object to curr_obj_inform6_value / "I6".

To say current object is (x_ - an object):
   set the current object to x_ / "say curr obj".

To make sure main object is set / (dbg_msg - text):
   if main object is nothing, change main object to the noun;
   set the current object to the main object / dbg_msg.

[ called from Inform 6 ]

This is the internal make main object the current object rule:
  set the current object to the main object / "internal".

Include (-
[ set_curr_obj x;
  (+curr_obj_inform6_value+) = x;
  (+get the curr_obj from Inform 6 rule+)();   ! notify Inform 7 about the change
];
-)

Section 3.3 - "Say object" rules

To say => present tense:
   change temporary_tense to present tense;
   change use_temporary_tense to true.

To say => past tense:
   change temporary_tense to past tense;
   change use_temporary_tense to true.

To say => default tense:
   change temporary_tense to the library message tense;
   change use_temporary_tense to false.

To say => %:
   set the current object to the main object / "=>%".

To say => actor:
   set the current object to the person asked / "=>actor".

[ same as saying "[current object is ...]" ]

To say => (obj_ - an object):
   set the current object to obj_ / "=>".

To say % => (obj_ - an object):
   change the main object to obj_;
   set the current object to the main object / "%=>".

To say %:
   make sure main object is set / "%";
   if the main object is the player, say "[you]";
   otherwise say "[main object]".

To say the %:
   make sure main object is set / "the %";
   if the main object is the player, say "[you]";
   otherwise say "[the main object]".

To say The %:
   make sure main object is set / "The %";
   if the main object is the player, say "[You]";
   otherwise say "[The main object]";
   change curr_subject to the main object.

To say the % dobj:
   make sure main object is set / "the % dobj";
   if the main object is the player, say "[you|yourself]";
   otherwise say "[the main object]".

To say % dobj:
   make sure main object is set / "% dobj";
   if the main object is the player, say "[you|yourself]";
   otherwise say "[main object]".

To say inform 6 short name of %:
   make sure main object is set / "I6 %";
   if the main object is the player, say "[you]";
   otherwise say "[main object]".   [ probably wrong; Inform 6 uses print_obj to print this ]

To say The $:
   if curr_obj is the player, say "[You]";
   otherwise say "[The curr_obj]";
   change curr_subject to curr_obj.

To say the $:
   if curr_obj is the player, say "[you]";
   otherwise say "[the curr_obj]".

To say $:
   if curr_obj is the player, say "[you]";
   otherwise say "[curr_obj]".

To say $ dobj:
   if curr_obj is the player, say "[you|yourself]";
   otherwise say "[curr_obj]".

To say the $ dobj:
   if curr_obj is the player, say "[you|yourself]";
   otherwise say "[the curr_obj]".

To say The actor:
   say "[=> actor][The $]".
To say the actor:
   say "[=> actor][the $]".

Section 3.4 - Decision rules - unindexed

[ The following rule was taken from Emily Short's "Plurality" extension ]

To decide whether (x_ - an object) acts plural:
   (- ({x_} has pluralname) -).

To decide whether (x_ - an object) does not act plural:
   if x_ acts plural, decide no;
   otherwise decide yes.

To decide whether (x_ - an object) acts feminine: 
   (- ({x_} has female) -).

To decide whether (x_ - an object) acts neuter: 
   (- {x_} has neuter || ({x_} hasnt animate && {x_} hasnt female) -).

To decide whether (x_ - an object) is nothing:
   (- {x_} == nothing -).

To decide whether lm_present:
	if use_temporary_tense is true:
   		if temporary_tense is present tense, decide yes;
		decide no;
	otherwise:
   		if library message tense is present tense, decide yes;
		decide no;

To decide whether lm_past:
	if use_temporary_tense is true:
		if temporary_tense is past tense, decide yes;
		decide no;
	otherwise:
		if library message tense is past tense, decide yes;
		decide no.

To decide whether lm_plu:
   if curr_obj_number is plural, decide yes;
   otherwise decide no.
To decide whether lm_sing:
   if curr_obj_number is singular, decide yes;
   otherwise decide no.

To decide whether lm_p1:
   if curr_obj_person is first person, decide yes;
   otherwise decide no.
To decide whether lm_p2:
   if curr_obj_person is second person, decide yes;
   otherwise decide no.
To decide whether lm_p3:
   if curr_obj_person is third person, decide yes;
   otherwise decide no.

To decide whether lm_masc:
   if curr_obj_gender is gender masculine, decide yes;
   otherwise decide no.
To decide whether lm_not_masc:
   if curr_obj_gender is gender masculine, decide no;
   otherwise decide yes.
To decide whether lm_fem:
   if curr_obj_gender is gender feminine, decide yes;
   otherwise decide no.
To decide whether lm_neut:
   if curr_obj_gender is gender neuter, decide yes;
   otherwise decide no.

Section 3.5 - Grammatical tables

Table of 'you' forms 
Gramm Person	Gramm Number	Case	Word
first person	singular		upper-case 	"I"
second person	singular		upper-case	"You"
third person	singular		upper-case	"He"
first person	plural		upper-case	"We"
second person	plural		upper-case	"You"
third person	plural		upper-case	"They"
first person	singular		lower-case 	"I"
second person	singular		lower-case	"you"
third person	singular		lower-case	"he"
first person	plural		lower-case	"we"
second person	plural		lower-case	"you"
third person	plural		lower-case	"they"

Table of 'you' dobj forms
Gramm Person	Gramm Number	Word
first person	singular		"me"
second person	singular		"you"
third person	singular		"him"
first person	plural		"us"
second person	plural		"you"
third person	plural		"them"

Table of 'your' forms
Gramm Person	Gramm Number	Case	Word
first person	singular		upper-case 	"My"
second person	singular		upper-case	"Your"
third person	singular		upper-case	"His"
first person	plural		upper-case	"Our"
second person	plural		upper-case	"Your"
third person	plural		upper-case	"Their"
first person	singular		lower-case 	"my"
second person	singular		lower-case	"your"
third person	singular		lower-case	"his"
first person	plural		lower-case	"our"
second person	plural		lower-case	"your"
third person	plural		lower-case	"their"

Table of 'yourself' forms
Gramm Person	Gramm Number	Case	Word
first person	singular		upper-case 	"Myself"
second person	singular		upper-case	"Yourself"
third person	singular		upper-case	"Himself"
first person	plural		upper-case	"Ourselves"
second person	plural		upper-case	"Yourselves"
third person	plural		upper-case	"Themselves"
first person	singular		lower-case 	"myself"
second person	singular		lower-case	"yourself"
third person	singular		lower-case	"himself"
first person	plural		lower-case	"ourselves"
second person	plural		lower-case	"yourselves"
third person	plural		lower-case	"themselves"

Table of 'he' forms
Gender			Gramm Number	Case	Word
gender masculine	singular		upper-case	"He"
gender feminine		singular		upper-case	"She"
gender neuter		singular		upper-case	"It"
gender masculine	plural		upper-case	"They"
gender feminine		plural		upper-case	"They"
gender neuter		plural		upper-case	"They"
gender masculine	singular		lower-case	"he"
gender feminine		singular		lower-case	"she"
gender neuter		singular		lower-case	"it"
gender masculine	plural		lower-case	"they"
gender feminine		plural		lower-case	"they"
gender neuter		plural		lower-case	"they"

Table of 'his' forms
Gender			Gramm Number	Case	Word
gender masculine	singular		upper-case	"His"
gender feminine		singular		upper-case	"Her"
gender neuter		singular		upper-case	"Its"
gender masculine	plural		upper-case	"Their"
gender feminine		plural		upper-case	"Their"
gender neuter		plural		upper-case	"Their"
gender masculine	singular		lower-case	"his"
gender feminine		singular		lower-case	"her"
gender neuter		singular		lower-case	"its"
gender masculine	plural		lower-case	"their"
gender feminine		plural		lower-case	"their"
gender neuter		plural		lower-case	"their"

Table of 'him' forms
Gender				Gramm Number	Case	Word
gender masculine	singular		upper-case	"Him"
gender feminine		singular		upper-case	"Her"
gender neuter		singular		upper-case	"It"
gender masculine	plural		upper-case	"Them"
gender feminine		plural		upper-case	"Them"
gender neuter		plural		upper-case	"Them"
gender masculine	singular		lower-case	"him"
gender feminine		singular		lower-case	"her"
gender neuter		singular		lower-case	"it"
gender masculine	plural		lower-case	"them"
gender feminine		plural		lower-case	"them"
gender neuter		plural		lower-case	"them"

Table of 'himself' forms
Gender				Gramm Number	Case	Word
gender masculine	singular		upper-case	"Himself"
gender feminine		singular		upper-case	"Herself"
gender neuter		singular		upper-case	"Itself"
gender masculine	plural		upper-case	"Themselves"
gender feminine		plural		upper-case	"Themselves"
gender neuter		plural		upper-case	"Themselves"
gender masculine	singular		lower-case	"himself"
gender feminine		singular		lower-case	"herself"
gender neuter		singular		lower-case	"itself"
gender masculine	plural		lower-case	"themselves"
gender feminine		plural		lower-case	"themselves"
gender neuter		plural		lower-case	"themselves"

Table of 'you're' endings
Gramm Person	Gramm Number	Word
first person	singular	"[apostrophe]m"	
second person	singular	"[apostrophe]re"	
third person	singular	"[apostrophe]s"
first person	plural		"[apostrophe]re"
second person	plural		"[apostrophe]re"
third person	plural		"[apostrophe]re"

Table of 'you've' endings
Gramm Person	Gramm Number	Word
first person	singular		"[apostrophe]ve"
second person	singular		"[apostrophe]ve"
third person	singular		"[apostrophe]s"
first person	plural			"[apostrophe]ve"
second person	plural			"[apostrophe]ve"
third person	plural			"[apostrophe]ve"

Table of 'are' forms
Gramm Person	Gramm Number	Case	Word	Negative
first person	singular		upper-case 	"Am"	"Am not"
second person	singular		upper-case	"Are"	"Aren't"
third person	singular		upper-case	"Is"	"Isn't"
first person	plural		upper-case	"Are"	"Aren't"
second person	plural		upper-case	"Are"	"Aren't"
third person	plural		upper-case	"Are"	"Aren't"
first person	singular		lower-case 	"am"	"am not"
second person	singular		lower-case	"are"	"aren't"
third person	singular		lower-case	"is"	"isn't"
first person	plural		lower-case	"are"	"aren't"
second person	plural		lower-case	"are"	"aren't"
third person	plural		lower-case	"are"	"aren't"

Table of 'were' forms
Gramm Person	Gramm Number	Case	Word	Negative
first person	singular		upper-case 	"Was"	"Wasn't"
second person	singular		upper-case	"Were"	"Weren't"
third person	singular		upper-case	"Was"	"Wasn't"
first person	plural		upper-case	"Were"	"Weren't"
second person	plural		upper-case	"Were"	"Weren't"
third person	plural		upper-case	"Were"	"Weren't"
first person	singular		lower-case 	"was"	"wasn't"
second person	singular		lower-case	"were"	"weren't"
third person	singular		lower-case	"was"	"wasn't"
first person	plural		lower-case	"were"	"weren't"
second person	plural		lower-case	"were"	"weren't"
third person	plural		lower-case	"were"	"weren't"

Table of 'do' forms
Gramm Person	Gramm Number	Case	Word	Negative
first person	singular		upper-case 	"Do"	"Don't"
second person	singular		upper-case	"Do"	"Don't"
third person	singular		upper-case	"Does"	"Doesn't"
first person	plural		upper-case	"Do"	"Don't"
second person	plural		upper-case	"Do"	"Don't"
third person	plural		upper-case	"Do"	"Don't"
first person	singular		lower-case 	"do"	"don't"
second person	singular		lower-case	"do"	"don't"
third person	singular		lower-case	"does"	"doesn't"
first person	plural		lower-case	"do"	"don't"
second person	plural		lower-case	"do"	"don't"
third person	plural		lower-case	"do"	"don't"

Table of 'did' forms
Gramm Person	Gramm Number	Case	Word	Negative
first person	singular		upper-case 	"Did"	"Didn't"
second person	singular		upper-case	"Did"	"Didn't"
third person	singular		upper-case	"Did"	"Didn't"
first person	plural		upper-case	"Did"	"Didn't"
second person	plural		upper-case	"Did"	"Didn't"
third person	plural		upper-case	"Did"	"Didn't"
first person	singular		lower-case 	"did"	"didn't"
second person	singular		lower-case	"did"	"didn't"
third person	singular		lower-case	"did"	"didn't"
first person	plural		lower-case	"did"	"didn't"
second person	plural		lower-case	"did"	"didn't"
third person	plural		lower-case	"did"	"didn't"

Table of 'have' forms
Gramm Person	Gramm Number	Case	Word	Negative
first person	singular		upper-case 	"Have"	"Haven't"
second person	singular		upper-case	"Have"	"Haven't"
third person	singular		upper-case	"Has"	"Hasn't"
first person	plural		upper-case	"Have"	"Haven't"
second person	plural		upper-case	"Have"	"Haven't"
third person	plural		upper-case	"Have"	"Haven't"
first person	singular		lower-case 	"have"	"haven't"
second person	singular		lower-case	"have"	"haven't"
third person	singular		lower-case	"has"	"hasn't"
first person	plural		lower-case	"have"	"haven't"
second person	plural		lower-case	"have"	"haven't"
third person	plural		lower-case	"have"	"haven't"

[ This table is for the verb "have", not the auxiliary eg. "have eaten" ]

Table of 'had' forms
Gramm Person	Gramm Number	Case	Word	Negative
first person	singular		upper-case 	"Had"	"Didn't have"
second person	singular		upper-case	"Had"	"Didn't have"
third person	singular		upper-case	"Had"	"Didn't have"
first person	plural		upper-case	"Had"	"Didn't have"
second person	plural		upper-case	"Had"	"Didn't have"
third person	plural		upper-case	"Had"	"Didn't have"
first person	singular		lower-case 	"had"	"didn't have"
second person	singular		lower-case	"had"	"didn't have"
third person	singular		lower-case	"had"	"didn't have"
first person	plural		lower-case	"had"	"didn't have"
second person	plural		lower-case	"had"	"didn't have"
third person	plural		lower-case	"had"	"didn't have"

Table of 'can' forms
Gramm Person	Gramm Number	Case	Word	Negative
first person	singular		upper-case 	"Can"	"Can't"
second person	singular		upper-case	"Can"	"Can't"
third person	singular		upper-case	"Can"	"Can't"
first person	plural		upper-case	"Can"	"Can't"
second person	plural		upper-case	"Can"	"Can't"
third person	plural		upper-case	"Can"	"Can't"
first person	singular		lower-case 	"can"	"can't"
second person	singular		lower-case	"can"	"can't"
third person	singular		lower-case	"can"	"can't"
first person	plural		lower-case	"can"	"can't"
second person	plural		lower-case	"can"	"can't"
third person	plural		lower-case	"can"	"can't"

Table of 'could' forms
Gramm Person	Gramm Number	Case	Word	Negative
first person	singular		upper-case 	"Could"	"Couldn't"
second person	singular		upper-case	"Could"	"Couldn't"
third person	singular		upper-case	"Could"	"Couldn't"
first person	plural		upper-case	"Could"	"Couldn't"
second person	plural		upper-case	"Could"	"Couldn't"
third person	plural		upper-case	"Could"	"Couldn't"
first person	singular		lower-case 	"could"	"couldn't"
second person	singular		lower-case	"could"	"couldn't"
third person	singular		lower-case	"could"	"couldn't"
first person	plural		lower-case	"could"	"couldn't"
second person	plural		lower-case	"could"	"couldn't"
third person	plural		lower-case	"could"	"couldn't"

Section 3.6 - Table operations - unindexed

[ get the "Word" entry from a grammatical table ]

To find (c_ - letter case) & (p_ - grammatical person) & (n_ - grammatical number)
  in (t_ - table-name):
  let r_ be 1;
  let num_ be the number of rows in t_;
  while r_ <= num_ begin;
     choose row r_ in t_;
     if Case entry is c_ and
	    Gramm Person entry is p_ and
	    Gramm Number entry is n_
	 begin;
	    say Word entry;
	    change r_ to num_ + 1;	[ to force the loop to end ]
	 otherwise;
	    change r_ to r_ + 1;
     end if;
  end while.

[ get the "Negative" entry from a grammatical table ]

To find negative (c_ - letter case) & (p_ - grammatical person) & (n_ - grammatical number)
  in (t_ - table-name):
  let r_ be 1;
  let num_ be the number of rows in t_;
  while r_ <= num_ begin;
     choose row r_ in t_;
     if Case entry is c_ and
	    Gramm Person entry is p_ and
	    Gramm Number entry is n_
	 begin;
	    say Negative entry;
	    change r_ to num_ + 1;	[ to force the loop to end ]
	 otherwise;
	    change r_ to r_ + 1;
     end if;
  end while.

[ for tables with gender instead of person, eg. 'he' ]

To find (c_ - letter case) & (g_ - gender) & (n_ - grammatical number)
  in (t_ - table-name):
  let r_ be 1;
  let num_ be the number of rows in t_;
  while r_ <= num_ begin;
     choose row r_ in t_;
     if Case entry is c_ and
	    Gender entry is g_ and
	    Gramm Number entry is n_
	 begin;
	    say Word entry;
	    change r_ to num_ + 1;	[ to force the loop to end ]
	 otherwise;
	    change r_ to r_ + 1;
     end if;
  end while.

[ for tables without "Case" columns ]

To find (p_ - grammatical person) & (n_ - grammatical number)
  in (t_ - table-name):
  let r_ be 1;
  let num_ be the number of rows in t_;
  while r_ <= num_ begin;
     choose row r_ in t_;
     if Gramm Person entry is p_ and
	    Gramm Number entry is n_
	 begin;
	    say Word entry;
	    change r_ to num_ + 1;	[ to force the loop to end ]
	 otherwise;
	    change r_ to r_ + 1;
     end if;
  end while.

Section 3.7 - "Say word" rules

To say (the_case - letter case) 'you':
   set the current object to the player / "'you'";
   if lm_p3 and lm_sing and libmsg_3ps_changed is 0, say the_case 'he';
   otherwise find the_case & curr_obj_person & curr_obj_number
     in the table of 'you' forms.

To say (the_case - letter case) 'your':
   set the current object to the player / "'your'";
   if lm_p3 and lm_sing, say the_case 'his';
   otherwise find the_case & curr_obj_person & curr_obj_number
     in the table of 'your' forms.

To say (the_case - letter case) 'you're':
   say the_case 'you';
   if lm_past, say " [are]";    [ will become "you were", etc ]
   otherwise find curr_obj_person & curr_obj_number
     in the table of 'you're' endings.

To say (the_case - letter case) 'you've' auxiliary:
   say the_case 'you';
   find curr_obj_person & curr_obj_number
     in the table of 'you've' endings.

To say (the_case - letter case) 'yourself':
   set the current object to the player / "'yourself'";
   if lm_p3 and lm_sing, find the_case & curr_obj_gender & curr_obj_number
     in the table of 'himself' forms;
   otherwise find the_case & curr_obj_person & curr_obj_number
     in the table of 'yourself' forms.

To say (the_case - letter case) 'himself':
   set the current object to main object / "'himself'";
   find the_case & curr_obj_gender & curr_obj_number
     in the table of 'himself' forms.

[ "you" as the direct object (always lower case), eg. "He saw you" ]

To say you dobj:
   set the current object to the player / "you dobj";
   if lm_p3 and lm_sing and libmsg_3ps_changed is 0, say "[him]";
   otherwise find curr_obj_person & curr_obj_number
     in the table of 'you' dobj forms.

To say you|yourself:
   if curr_subject is the player,    [ if the player is doing the action ]
      say "[yourself]";
   otherwise say you dobj.

To say (the_case - letter case) 'he':
   find the_case & curr_obj_gender & curr_obj_number
     in the table of 'he' forms.

To say (the_case - letter case) 'his':
   find the_case & curr_obj_gender & curr_obj_number
     in the table of 'his' forms.

To say (the_case - letter case) 'him':
   find the_case & curr_obj_gender & curr_obj_number
     in the table of 'him' forms.

To find (the_case - letter case) verb in (t_present - table-name) / (t_past - table-name):
   if lm_present, find the_case & curr_obj_person & curr_obj_number
     in t_present;
   otherwise find the_case & curr_obj_person & curr_obj_number
     in t_past.

To find (the_case - letter case) negative in (t_present - table-name) / (t_past - table-name):
   if lm_present, find negative the_case & curr_obj_person & curr_obj_number
     in t_present;
   otherwise find negative the_case & curr_obj_person & curr_obj_number
     in t_past.

To say (the_case - letter case) 'did' for (obj_ - object):
   set the current object to obj_ / "'did'";
   find the_case & curr_obj_person & curr_obj_number
     in the table of 'did' forms.

To say (the_case - letter case) 'didn't' for (obj_ - object):
   set the current object to obj_ / "'didn't'";
   find negative the_case & curr_obj_person & curr_obj_number
     in the table of 'did' forms.

To say (the_case - letter case) 'do' for (obj_ - object):
   set the current object to obj_ / "'do'";
   find the_case verb in the table of 'do' forms /
     the table of 'did' forms.

To say (the_case - letter case) 'don't' for (obj_ - object):
   set the current object to obj_ / "'don't'";
   find the_case negative in the table of 'do' forms /
     the table of 'did' forms.

To say (the_case - letter case) 'are' for (obj_ - object):
   set the current object to obj_ / "'are'";
   find the_case verb in the table of 'are' forms /
     the table of 'were' forms.

To say (the_case - letter case) 'aren't' for (obj_ - object):
   set the current object to obj_ / "'aren't'";
   find the_case negative in the table of 'are' forms /
     the table of 'were' forms.

To say (the_case - letter case) 'have' for (obj_ - object):
   set the current object to obj_ / "'have'";
   find the_case verb in the table of 'have' forms /
     the table of 'had' forms.

To say (the_case - letter case) 'haven't' for (obj_ - object):
   set the current object to obj_ / "'haven't'";
   find the_case negative in the table of 'have' forms /
     the table of 'had' forms.

To say (the_case - letter case) 'can':
   find the_case verb in the table of 'can' forms /
       the table of 'could' forms.

To say (the_case - letter case) 'can't':
   find the_case negative in the table of 'can' forms /
       the table of 'could' forms.

To say (the_case - letter case) 'have' auxiliary for (obj_ - object):
   set the current object to obj_ / "'have' aux";
   find the_case & curr_obj_person & curr_obj_number
     in the table of 'have' forms.

To say (the_case - letter case) 'haven't' auxiliary for (obj_ - object):
   set the current object to obj_ / "'haven't' aux";
   find negative the_case & curr_obj_person & curr_obj_number
     in the table of 'have' forms.

To say You: say upper-case 'you'; change curr_subject to the player.
To say Your: say upper-case 'your'.
To say You're: say upper-case 'you're'.
To say You've+: say upper-case 'you've' auxiliary.
To say Yourself: say upper-case 'yourself'.
To say He: say upper-case 'he'; change curr_subject to curr_obj.
To say His: say upper-case 'his'.
To say Him: say upper-case 'him'.
To say Himself: say upper-case 'himself'.

To say you: say lower-case 'you'; change curr_subject to the player.
To say your: say lower-case 'your'.
To say you're: say lower-case 'you're'.
To say you've+: say lower-case 'you've' auxiliary.
To say yourself: say lower-case 'yourself'.
[ To say you dobj: defined above ]
[ To say you|yourself: defined above ]
To say he: say lower-case 'he'; change curr_subject to curr_obj.
To say his: say lower-case 'his'.
To say him: say lower-case 'him'.
To say himself: say lower-case 'himself'.

[ 'do', 'are' and 'have' assume the player is the subject; if some other
  thing is the subject, use 'do|does' / 'is|are' / 'has|have' instead ]

To say Are: say upper-case 'are' for the player; change curr_subject to the player.
To say Aren't: say upper-case 'aren't' for the player; change curr_subject to the player.
To say Did: say upper-case 'did' for the player; change curr_subject to the player.
To say Didn't: say upper-case 'didn't' for the player; change curr_subject to the player.
To say Do: say upper-case 'do' for the player; change curr_subject to the player.
To say Don't: say upper-case 'don't' for the player; change curr_subject to the player.
To say Have: say upper-case 'have' for the player; change curr_subject to the player.
To say Haven't: say upper-case 'haven't' for the player; change curr_subject to the player.
To say Have+: say upper-case 'have' auxiliary for the player; change curr_subject to the player.
To say Haven't+: say upper-case 'haven't' auxiliary for the player; change curr_subject to the player.

To say are: say lower-case 'are' for the player.
To say aren't: say lower-case 'aren't' for the player.
To say did: say lower-case 'did' for the player.
To say didn't: say lower-case 'didn't' for the player.
To say do: say lower-case 'do' for the player.
To say don't: say lower-case 'don't' for the player.
To say have: say lower-case 'have' for the player.
To say haven't: say lower-case 'haven't' for the player.
To say have+: say lower-case 'have' auxiliary for the player.
To say haven't+: say lower-case 'haven't' auxiliary for the player.

To say Can: say upper-case 'can'.
To say Can't: say upper-case 'can't'.
To say can: say lower-case 'can'.
To say can't: say lower-case 'can't'.

To say It's: say "[/r]"; follow the upper-case 'it's' rule.
To say it's: say "[/r]";  follow the lower-case 'it's' rule.
To say There's: say "[/r]";  follow the upper-case 'there's' rule.
To say there's: say "[/r]";  follow the lower-case 'there's' rule.
To say comes|came: say "[/r]";  follow the lower-case 'comes' rule.

[ here/there, for contexts like "A dog is here" or "A dog was there" ]
To say here: say "[if lm_past]t[end if]here".

This is the upper-case 'it's' rule:
   say "It[if lm_present][apostrophe]s[otherwise] was".
This is the lower-case 'it's' rule:
   say "it[if lm_present][apostrophe]s[otherwise] was".
This is the upper-case 'there's' rule:
   say "[if lm_present]There's[otherwise]There was".
This is the lower-case 'there's' rule:
   say "[if lm_present]there's[otherwise]there was".
This is the lower-case 'comes' rule:
   say "[if lm_present]comes[otherwise]came".

To say Is|Are: say upper-case 'are' for curr_obj; change curr_subject to curr_obj.
To say Has|Have: say upper-case 'have' for curr_obj; change curr_subject to curr_obj.
To say Does|Do: say upper-case 'do' for curr_obj; change curr_subject to curr_obj.
To say Isn't|Aren't: say upper-case 'aren't' for curr_obj; change curr_subject to curr_obj.
To say Hasn't|Haven't: say upper-case 'haven't' for curr_obj; change curr_subject to curr_obj.
To say Doesn't|Don't: say upper-case 'don't' for curr_obj; change curr_subject to curr_obj.

To say is|are: say lower-case 'are' for curr_obj.
To say has|have: say lower-case 'have' for curr_obj.
To say does|do: say lower-case 'do' for curr_obj.
To say isn't|aren't: say lower-case 'aren't' for curr_obj.
To say hasn't|haven't: say lower-case 'haven't' for curr_obj.
To say doesn't|don't: say lower-case 'don't' for curr_obj.

To say Is|Was:
   if lm_present, find upper-case & third person & singular in the table of 'are' forms;
   otherwise find upper-case & third person & singular in the table of 'were' forms.
To say Isn't|Wasn't:
   if lm_present, find negative upper-case & third person & singular in the table of 'are' forms;
   otherwise find negative upper-case & third person & singular in the table of 'were' forms.
To say is|was:
   if lm_present, find lower-case & third person & singular in the table of 'are' forms;
   otherwise find lower-case & third person & singular in the table of 'were' forms.
To say isn't|wasn't:
   if lm_present, find negative lower-case & third person & singular in the table of 'are' forms;
   otherwise find negative lower-case & third person & singular in the table of 'were' forms.

To print (word1_ - text) for singular or (word2_ - text) for plural:
   if curr_obj is the player, say "[if lm_p3 and lm_sing][word1_][otherwise][word2_]";
   otherwise say "[if curr_obj acts plural][word2_][otherwise][word1_]".

To say It|They:
   print "It" for singular or "They" for plural; change curr_subject to curr_obj.
To say It|Those:
   print "It" for singular or "Those" for plural; change curr_subject to curr_obj.
To say That|Those:
   print "That" for singular or "Those" for plural; change curr_subject to curr_obj.
To say That|They:
   print "That" for singular or "They" for plural; change curr_subject to curr_obj.
To say That's|They're:
   print "That's" for singular or "They're" for plural; change curr_subject to curr_obj.

[ for the following group of "say" rules, assume main object is being referred to ]

To say it|they:
   set the current object to main object / "it|they";
   print "it" for singular or "they" for plural. 
To say it|them:
   set the current object to main object / "it|them";
   print "it" for singular or "them" for plural.
To say it|those:
   set the current object to main object / "it|those";
   print "it" for singular or "those" for plural. 
To say that|those:
   set the current object to main object / "that|those";
   print "that" for singular or "those" for plural.

To say is|are for (n_ - a number):
    if n_ is 1, say "is";
    otherwise say "are".

To say off|out of:
  if curr_obj is a supporter, say "off";
  otherwise say "out of".
To say onto|into:
  if curr_obj is a supporter, say "onto";
  otherwise say "into".
To say on|in:
  if curr_obj is a supporter, say "on";
  otherwise say "in".
To say On|In:
  if curr_obj is a supporter, say "On";
  otherwise say "In".

Section 3.8 - "Say suffix" rules

[ for words like "walk[-s]" ]

To say -s:
   say "[/r]";
   follow the '-s' rule.

[ for words like "switch[-es]" ]

To say -es:
   say "[/r]";
   follow the '-es' rule.

[ for words ending in "e" like "typ[e-s]" ]

To say e-s:
   say "[/r]";
   follow the 'e-s' rule.

[ for sentences like "Nothing happen[-s|ed]", etc ]

To say -s|ed:
   say "[/r]";
   follow the '-s|ed' rule.
To say -es|ed:
   say "[/r]";
   follow the '-es|ed' rule.

This is the '-s' rule:
   if lm_present, say -s present;
      otherwise say "ed".
This is the '-es' rule:
   if lm_present, say -es present;
   otherwise say "ed".
This is the 'e-s' rule:
   if lm_present, say "e[-s]";
   otherwise say "ed".
This is the '-s|ed' rule:
   say "[if lm_present]s[otherwise]ed".
This is the '-es|ed' rule:
   say "[if lm_present]es[otherwise]ed".

To say -s present:
   if curr_obj is the player, say "[if lm_p3 and lm_sing]s";
   otherwise say "[if curr_obj does not act plural]s".

To say -es present:
   if curr_obj is the player, say "[if lm_p3 and lm_sing]es";
   otherwise say "[if curr_obj does not act plural]es".

Section 3.9 - Irregular verbs

[ the "[/r]" is to avoid an I7 bug which prints a newline
  if the "say" text is empty ]

To say eats*: say "[/r]"; follow the 'eats*' rule.
To say feels*: say "[/r]"; follow the 'feels*' rule.
To say finds*: say "[/r]"; follow the 'finds*' rule.
To say gets*: say "[/r]"; follow the 'gets*' rule.
To say gives*: say "[/r]"; follow the 'gives*' rule.
To say hears*: say "[/r]"; follow the 'hears*' rule.
To say leads*: say "[/r]"; follow the 'leads*' rule.
To say puts*: say "[/r]"; follow the 'puts*' rule.
To say sees*: say "[/r]"; follow the 'sees*' rule.
To say takes*: say "[/r]"; follow the 'takes*' rule.
To say goes*: say "[/r]"; follow the 'goes*' rule.

To say eat*: say "[=> player][eats*]".
To say feel*: say "[=> player][feels*]".
To say find*: say "[=> player][finds*]".
To say get*: say "[=> player][gets*]".
To say give*: say "[=> player][gives*]".
To say hear*: say "[=> player][hears*]".
To say lead*: say "[=> player][leads*]".
To say put*: say "[=> player][puts*]".
To say see*: say "[=> player][sees*]".
To say take*: say "[=> player][takes*]".
To say go*: say "[=> player][goes*]".

This is the 'eats*' rule: say "[if lm_past]ate[otherwise]eat[-s]".
This is the 'feels*' rule: say "[if lm_past]felt[otherwise]feel[-s]".
This is the 'finds*' rule: say "[if lm_past]found[otherwise]find[-s]".
This is the 'gets*' rule: say "[if lm_past]got[otherwise]get[-s]".
This is the 'gives*' rule: say "[if lm_past]gave[otherwise]giv[e-s]".
This is the 'hears*' rule: say "[if lm_past]heard[otherwise]hear[-s]".
This is the 'leads*' rule: say "[if lm_past]led[otherwise]lead[-s]".
This is the 'puts*' rule: say "[if lm_past]put[otherwise]put[-s]".
This is the 'sees*' rule: say "[if lm_past]saw[otherwise]se[e-s]".
This is the 'takes*' rule: say "[if lm_past]took[otherwise]tak[e-s]".
This is the 'goes*' rule: say "[if lm_past]went[otherwise]go[-es]".

Section 3.10 - "Say symbol" rules

[ Some conventient abbreviations to prevent spurious line breaks
  from occurring in some messages ]

To say dot:
   say "[unicode 46]".
To say ExMark:
   say "[unicode 33]".
To say QMark:
   say "[unicode 63]".

Section 3.11 - Miscellaneous "say" rules

To say /n: say "[line break][run paragraph on]".
To say /p: say paragraph break.
To say /r: say run paragraph on.

To say the player's holdall:
   (- print (the) SACK_OBJECT; set_curr_obj(SACK_OBJECT); -)

To say story name:
   (- print (string) Story; -).

To say pronoun word:
   (- print (address) pronoun_word; -).

To say the last command:
    (- PrintCommand(); -).

Section 3.12 - Miscellaneous decision rules

To decide if game over:
   (- deadflag -).

To decide whether noun is living:
   (- noun has animate -).

To decide whether noun is doing the action:
   (- noun == actor -).

To decide whether noun is not doing the action:
   (- noun ~= actor -).

To decide whether player is doing the action:
   (- actor == player -).

To decide whether player is not doing the action:
   (- actor ~= player -).

[
To decide whether player can see the actor:
   (- I7_CanSee(player, actor) -).
]

To decide whether there are multiple objects:
   (- multiflag == 1 -).

To decide whether there are not multiple objects:
   (- multiflag ~= 1 -).

[ perform a binary search to quickly find the message id in the
  table of library messages (assumes the table has been sorted) ]

This is the print library message rule:
   change libmsg-was-empty to 1;
   let n1 be 1;
   let n2 be the number of rows in the table of library messages;
   while n1 <= n2 begin;
      let mid be n1 plus n2;
	  change mid to mid divided by 2;
	  choose row mid in the table of library messages;
	  if the message id entry is library-message-id begin;
	     if the message text entry is not "" begin;
		    say the message text entry;
			change libmsg-was-empty to 0;
	     end if;
		 change n1 to n2 + 1;	[ to force the loop to stop ]
	  end if;
	  if the message id entry < library-message-id, change n1 to mid plus 1;
      if the message id entry > library-message-id, change n2 to mid minus 1;
   end while.

libmsg-was-empty is a number that varies.

Part 4 - Inform 6 interface - unindexed

To init library messages:
(- InitLibraryMessages(); -)

[
  The following I6 code (in InitLibraryMessages) does not compile under
  Glulx (it says "Illegal backpatch marker in forward-declared symbol").

  It was originally added in version 6 to prevent infinite
  recursion when pushing an object between rooms; the Standard Rules
  file says:

     Include (- with before [; PushDir: AllowPushDir(); rtrue; ]
     ... -) when defining a thing

  - which caused problems when defining the I7_LibraryMessages
  object, and so the code below removed all "befores" other than
  LibraryMessagesBefore.

  To make a long story short ... the original PushDir problem seems
  to have gone away, but I am still suspicious, so I'll leave it in
  when compiling to Z code.
]

Include (-
  Constant LibraryMessages = (+I7_LibraryMessages+);

[ InitLibraryMessages n;

#Ifndef TARGET_GLULX;
  if ((+I7_LibraryMessages+).&before)
  {
      ! get rid of any other "before" routines
      for (n = 0 : n < (+I7_LibraryMessages+).#before / WORDSIZE : n++)
      {
          if ((+I7_LibraryMessages+).&before --> n ~= LibraryMessagesBefore)
              (+I7_LibraryMessages+).&before --> n = nothing;
      }
  }
#Endif; ! TARGET_GLULX
];
-) after "Definitions.i6t".

I7_LibraryMessages is a thing.
Include (-
  with before LibraryMessagesBefore,
-) when defining I7_LibraryMessages.

Include (-
[ LibraryMessagesBefore id temp isImplicitAction after_text;
    (+the numeric amount+) = lm_o;
    (+main object+) = lm_o;
    (+secondary object+) = lm_o2;
    (+curr_subject+) = actor;

    if (actor ~= player) { set_curr_obj(actor); }
    else if (lm_o > 0) { set_curr_obj(lm_o); }
    else { set_curr_obj(player); }

    id = -1;
    isImplicitAction = 0;
    after_text = "^";
-)

[ Note that there is no "Prompt:" section, since Inform 7 handles
  the prompt specially; see "Changing the command prompt" in the I7 manual ]

[*** Miscellany ***]

Include (-
Miscellany:
    switch (lm_n) {
       1: id = (+LibMsg <first N objects>+); after_text = "";
       2: id = (+LibMsg <zero multiple objects>+);
       3: id = (+LibMsg <you have died>+); after_text = "";
       4: id = (+LibMsg <you have won>+); after_text = "";
     ! 5 is "Would you like to restart ...", handled specially by Inform 7
       6: id = (+LibMsg <undo not provided>+);
       7: id = (+LibMsg <undo failed>+);
       8: id = (+LibMsg <restrict answer>+); after_text = "";
       9: id = (+LibMsg <entering darkness>+);
       10: id = (+LibMsg <empty line>+);
       11: id = (+LibMsg <cannot undo nothing>+);
       12: id = (+LibMsg <cannot undo twice in a row>+);
       13: id = (+LibMsg <undo succeeded>+);
       14: id = (+LibMsg <oops failed>+);
       15: id = (+LibMsg <oops no arguments>+);
       16: id = (+LibMsg <oops too many arguments>+);
       17: id = (+LibMsg <dark description>+);
       18: id = (+LibMsg <player self description>+); after_text = "";
     ! 19 was LibMsg <player description>, "As good-looking as ever"
	 ! - use "The description of the player is ..." instead.
       20: id = (+LibMsg <again usage>+);
       21: id = (+LibMsg <cannot do again>+);
       22: id = (+LibMsg <cannot begin at comma>+);
       23: id = (+LibMsg <cannot talk to absent person>+);
       24: id = (+LibMsg <cannot talk to inanimate object>+);
       25: id = (+LibMsg <extra words before comma>+);
       26: id = (+LibMsg <report implicit take>+);
       27: id = (+LibMsg <command not understood>+);
       28: id = (+LibMsg <command partly understood>+); after_text = "";
       29: id = (+LibMsg <number not understood>+);
       30: id = (+LibMsg <unknown object>+);
-)

Include (-
       31: id = (+LibMsg <command incomplete>+);
       32: id = (+LibMsg <object not held>+);
       33: id = (+LibMsg <verb cannot have multiple objects>+);
       34: id = (+LibMsg <too many multiple objects>+);
       35: id = (+LibMsg <pronoun not set>+);
       36: id = (+LibMsg <excepted object not included anyway>+);
       37: id = (+LibMsg <verb cannot have inanimate object>+);
       38: id = (+LibMsg <unknown verb>+);
       39: id = (+LibMsg <unimportant object>+);
       40: (+main object+) = pronoun_obj;
	 (+internal make main object the current object rule+)();
	 id = (+LibMsg <pronoun absent>+);
       41: id = (+LibMsg <command badly ended>+);
       42: id = (+LibMsg <not that many available>+);
       43: id = (+LibMsg <zero multiple objects>+); ! same as Miscellany #2 (?)
       44: id = (+LibMsg <no objects available>+);
       45: id = (+LibMsg <who disambiguation>+); after_text = "";
       46: id = (+LibMsg <which disambiguation>+); after_text = "";
       47: id = (+LibMsg <single object disambiguation>+);
       48: (+main object+) = actor;
	 (+internal make main object the current object rule+)();
	 id = (+LibMsg <whom disambiguation>+);
       49: (+main object+) = actor;
	 (+internal make main object the current object rule+)();
	 id = (+LibMsg <what disambiguation>+);
       50: id = (+LibMsg <score changed>+); after_text = "";
       51: id = (+LibMsg <command cut short>+);
       52: id = (+LibMsg <menu prompt>+); after_text = "";
       53: id = (+LibMsg <page prompt>+); after_text = "";
       54: id = (+LibMsg <comment recorded>+);
       55: id = (+LibMsg <comment not recorded>+);
     ! 56 = ".^"
     ! 57 = "?^"
       58: id = (+LibMsg <npc unable to do that>+);
       59: id = (+LibMsg <noun needed>+);
       60: id = (+LibMsg <noun not needed>+);
       61: id = (+LibMsg <object needed>+);
       62: id = (+LibMsg <object not needed>+);
       63: id = (+LibMsg <second object needed>+);
       64: id = (+LibMsg <second object not needed>+);
       65: id = (+LibMsg <second noun needed>+);
       66: id = (+LibMsg <second noun not needed>+);
       67: id = (+LibMsg <something more substantial needed>+);
       68: id = (+LibMsg <report npc implicit take>+);
       69: id = (+LibMsg <report implicit take>+);
       70: id = (+LibMsg <undo forbidden>+);
       71: id = (+LibMsg <dark room name>+);
       72: id = (+LibMsg <person ignores command>+);
            default: jump not_handled; }
    jump handled;
-)

[ The ListMiscellany rules ("providing light", etc) can be handled OK by Inform 7 ]

[*** Quit, Restart ***]

Include (-
Quit:
    switch (lm_n) {
       1: id = (+LibMsg <yes or no prompt>+); after_text = "";
       2: id = (+LibMsg <confirm Quit>+); after_text = "";
       default: jump not_handled; }
    jump handled;

Restart:
    switch (lm_n) {
       1: id = (+LibMsg <confirm Restart>+); after_text = "";
       2: id = (+LibMsg <Restart failed>+);
       default: jump not_handled; }
    jump handled;
-)

[*** File Operations ***]

Include (-

Restore:
    switch (lm_n) {
       1: id = (+LibMsg <Restore failed>+);
       2: id = (+LibMsg <Restore succeeded>+);
       default: jump not_handled; }
    jump handled;

Save:
    switch (lm_n) {
       1: id = (+LibMsg <Save failed>+);
       2: id = (+LibMsg <Save succeeded>+);
       default: jump not_handled; }
    jump handled;

Verify:
    switch (lm_n) {
       1: id = (+LibMsg <Verify succeeded>+);
       2: id = (+LibMsg <Verify failed>+);
       default: jump not_handled; }
    jump handled;
-)

[*** Transcripts ***]

Include (-
ScriptOn:
    switch (lm_n) {
       1: id = (+LibMsg <transcript already on>+);
       2: id = (+LibMsg <start of transcript>+); after_text = "";
       3: id = (+LibMsg <transcript failed>+);
       default: jump not_handled; }
    jump handled;

ScriptOff:
    switch (lm_n) {
       1: id = (+LibMsg <transcript already off>+);
       2: id = (+LibMsg <end of transcript>+);
       3: id = (+LibMsg <end transcript failed>+);
       default: jump not_handled; }
    jump handled;
-)

[*** Scoring ***]

Include (-
NotifyOn:
     id = (+LibMsg <score notification turned on>+);
     jump handled;

NotifyOff:
     id = (+LibMsg <score notification turned off>+);
     jump handled;

Score:
    switch (lm_n) {
       1: id = (+LibMsg <Score command>+); after_text = "";
       2: id = (+LibMsg <no scoring>+);
       3: id = (+LibMsg <score rank>+); after_text = "";
       default: jump not_handled; }
     jump handled;
-)

[*** Listing ***]

Include (-
Pronouns:
    switch (lm_n) {
       1: id = (+LibMsg <Pronouns initial text>+); after_text = "";
       2: id = (+LibMsg <Pronouns -means- text>+); after_text = " ";
       3: id = (+LibMsg <Pronouns -unset- text>+); after_text = "";
       4: id = (+LibMsg <no pronouns known>+);
       default: jump not_handled; }
    jump handled;

Inv:
    switch (lm_n) {
       1: id = (+LibMsg <Inventory no possessions>+);
       2: id = (+LibMsg <Inventory initial text>+); after_text = "";
     ! 3 is ":^" (used for list style NEWLINE_BIT)
     ! 4 is ".^" (used for list style ENGLISH_BIT)
       5: id = (+LibMsg <report npc taking inventory>+);
       default: jump not_handled; }
    jump handled;
-)

[*** Take, Remove ***]

Include (-
Take:
    switch (lm_n) {
       1: id = (+LibMsg <report player taking>+);
       2: id = (+LibMsg <cannot take yourself>+);
       3: id = (+LibMsg <cannot take other people>+);
       4: id = (+LibMsg <cannot take something you are within>+);
       5: id = (+LibMsg <cannot take something already taken>+);
       6: id = (+LibMsg <cannot take possessions of others>+);
       7: id = (+LibMsg <cannot take component parts>+);
       8: id = (+LibMsg <cannot take hidden parts>+);
       9: id = (+LibMsg <cannot reach within closed containers>+);
       10: id = (+LibMsg <cannot take scenery>+);
       11: id = (+LibMsg <cannot take something fixed>+);
       12: id = (+LibMsg <cannot exceed carrying capacity>+);
       13: id = (+LibMsg <use holdall to avoid exceeding carrying capacity>+);
             isImplicitAction = 1;
       14: id = (+LibMsg <cannot reach within other places>+);
     ! 15 doesn't seem to be produced anywhere ("You cannot carry ...")
       16: id = (+LibMsg <report npc taking>+);
       default: jump not_handled; }
    jump handled;

Remove:
    switch (lm_n)
    {  1: id = (+LibMsg <cannot remove from closed containers>+);
       2: id = (+LibMsg <cannot remove something not within>+);
       3: id = (+LibMsg <report player removing>+); ! TODO - not printed any more? ("Taken" instead)
      ! TODO (maybe): need 4 = LibMsg <report npc removing>
       default: jump not_handled; }
    jump handled;
-)

[*** Drop, Insert, Put ***]

Include (-
Drop:
    switch (lm_n) {
       1: id = (+LibMsg <cannot drop something already dropped>+);
       2: id = (+LibMsg <cannot drop not holding>+);
       3: id = (+LibMsg <cannot drop clothes being worn>+);
           isImplicitAction = 1;
       4: id = (+LibMsg <report player dropping>+);
       5,6: id = (+LibMsg <cannot drop if this exceeds carrying capacity>+);   ! 5 = supporter, 6 = container
       7: id = (+LibMsg <report npc dropping>+);
       default: jump not_handled; }
    jump handled;

Insert:
    switch (lm_n) {
       1: id = (+LibMsg <cannot insert something not held>+);
       2: id = (+LibMsg <cannot insert into something not a container>+);
       3: id = (+LibMsg <cannot insert into closed containers>+);
       4: id = (+LibMsg <need to take off before inserting>+);   ! (unused ?)
       5: id = (+LibMsg <cannot insert something into itself>+);
       6: id = (+LibMsg <cannot insert clothes being worn>+);
           isImplicitAction = 1;
       7: id = (+LibMsg <cannot insert if this exceeds carrying capacity>+);
       8,9: id = (+LibMsg <report player inserting>+);  ! 8 is for multiple objects
       10: id = (+LibMsg <report npc inserting>+);
       default: jump not_handled; }
    jump handled;

PutOn:
    switch (lm_n) {
       1: id = (+LibMsg <cannot put something not held>+);
       2: id = (+LibMsg <cannot put something on it-self>+);
       3: id = (+LibMsg <cannot put onto something not a supporter>+);
       4: id = (+LibMsg <cannot put onto something being carried>+);
       5: id = (+LibMsg <cannot put clothes being worn>+);
           isImplicitAction = 1;
       6: id = (+LibMsg <cannot put if this exceeds carrying capacity>+);
       7,8: id = (+LibMsg <report player putting on>+);  ! 7 is for multiple objects
       9: id = (+LibMsg <report npc putting on>+);
       default: jump not_handled; }
    jump handled;
-)

[*** Give, Show ***]

Include (-
Give:
    switch (lm_n) {
       1: id = (+LibMsg <cannot give what you have not got>+);
       2: id = (+LibMsg <cannot give to yourself>+);
       3: id = (+LibMsg <block giving>+);
       4: id = (+LibMsg <unable to receive things>+);
       5: id = (+LibMsg <report player giving>+);
       6: id = (+LibMsg <report npc giving to player>+);  
       7: id = (+LibMsg <report npc giving to npc>+);
      default: jump not_handled; }
    jump handled;

Show:
    switch (lm_n) {
       1: id = (+LibMsg <cannot show what you have not got>+);
       2: id = (+LibMsg <block showing>+);
       default: jump not_handled; }
    jump handled;
-)

[*** Enter, Exit, GetOff ***]

Include (-
Enter:
    switch (lm_n) {
       1: id = (+LibMsg <cannot enter something already entered>+);
       2: id = (+LibMsg <cannot enter something not enterable>+);
       3: id = (+LibMsg <cannot enter closed containers>+);
       4: id = (+LibMsg <cannot enter something carried>+);
       5: id = (+LibMsg <report player entering>+);
       6: id = (+LibMsg <implicitly pass outwards through other barriers>+);
          isImplicitAction = 1;
       7: id = (+LibMsg <implicitly pass inwards through other barriers>+);
           isImplicitAction = 1;
       8,9: id = (+LibMsg <report npc entering>+);  ! 8 = container, 9 = supporter
       default: jump not_handled; }
    jump handled;

Exit:
    switch (lm_n) {
       1: id = (+LibMsg <cannot exit when not within anything>+);
       2: id = (+LibMsg <cannot exit closed containers>+);
       3: id = (+LibMsg <report player exiting>+);
       4: id = (+LibMsg <cannot exit thing not within>+);
       5,6: id = (+LibMsg <report npc exiting>+);
       default: jump not_handled; }
    jump handled;

GetOff:
    id = (+LibMsg <cannot get off things>+);
    jump handled;
-)

[*** Go ***]

Include (-
Go:
    switch (lm_n) {
       1: id = (+LibMsg <cannot travel in something not a vehicle>+);
       2: id = (+LibMsg <cannot go that way>+);
          (+main object+) = noun;   ! the direction
       3: id = (+LibMsg <cannot go up through closed doors>+);
       4: id = (+LibMsg <cannot go down through closed doors>+);
       5: id = (+LibMsg <cannot go through closed doors>+);
       6: id = (+LibMsg <nothing through door>+);
       7: id = (+LibMsg <block vaguely going>+);
       8: id = (+LibMsg <say npc goes>+);
          (+main object+) = (+ up +);
       9: id = (+LibMsg <say npc goes>+);
          (+main object+) = (+ down +);
       10: id = (+LibMsg <say npc goes>+);
       11: id = (+LibMsg <say npc arrives>+);
          (+main object+) = (+ up +);
       12:  id = (+LibMsg <say npc arrives>+);
          (+main object+) = (+ down +);
       13:  id = (+LibMsg <say npc arrives>+);
       14: id = (+LibMsg <say npc arrives from unknown direction>+);
       15: id = (+LibMsg <say npc arrives at>+);
          (+secondary object+) = (+ up +);
       16: id = (+LibMsg <say npc arrives at>+);
          (+secondary object+) = (+ down +);
       17: id = (+LibMsg <say npc arrives at>+);
          ! secondary object already defined
       18: id = (+LibMsg <say npc goes through>+);
       19: id = (+LibMsg <say npc arrives from>+);
       20,21: id = (+LibMsg <say npc vehicle>+);
       22: id = (+LibMsg <say npc pushing in front with player>+);
       23: id = (+LibMsg <say npc pushing in front>+);
       24: id = (+LibMsg <say npc pushing away>+);
       25: id = (+LibMsg <say npc pushing in>+);
       26: id = (+LibMsg <say npc taking player along>+);
       default: jump not_handled; }
    if (lm_n >= 8) { after_text = ""; }   ! sentence fragment
    jump handled;
-)

[*** Verbosity Level ***]

Include (-
LMode1:
    id = (+LibMsg <brief look mode>+);
    jump handled;

LMode2:
    id = (+LibMsg <verbose look mode>+);
    jump handled;

LMode3:
    id = (+LibMsg <superbrief look mode>+);
    jump handled;
-)

[*** Look ***]

Include (-
Look:
    after_text = "";
    switch (lm_n) {
       1: id = (+LibMsg <top line what on>+);
       2: id = (+LibMsg <top line what in>+);
       3: id = (+LibMsg <top line what as>+);
       4: id = (+LibMsg <say things on>+);
       5: id = (+LibMsg <say things also within>+);
       6: id = (+LibMsg <say things within>+);
       7: id = (+LibMsg <examine direction>+);
       8: if (lm_o has supporter) id = (+LibMsg <top line what on>+);
          else id = (+LibMsg <top line what in>+);
       9: id = (+LibMsg <report npc looking>+);
       default: jump not_handled; }
    jump handled;
-)

[*** Examine, Search, LookUnder ***]

Include (-
Examine:
    switch (lm_n) {
       1: id = (+LibMsg <examine while dark>+);
       2: id = (+LibMsg <examine undescribed things>+);
       3: id = (+LibMsg <examine devices>+);
       4: id = (+LibMsg <report npc examining>+);
       5: id = (+LibMsg <examine direction>+);
       default: jump not_handled; }
    jump handled;

Search:
    switch (lm_n) {
       1: id = (+LibMsg <search while dark>+);
       2: id = (+LibMsg <nothing found on top of>+);
     ! 3 prints what is on a supporter; use I6 default behaviour
       4: id = (+LibMsg <cannot search unless container or supporter>+);
       5: id = (+LibMsg <cannot search closed opaque containers>+);
       6: id = (+LibMsg <nothing found within container>+);
     ! 7 prints the contents of a container; use I6 default behaviour
       8: id = (+LibMsg <report npc searching>+);
       default: jump not_handled; }
    jump handled;

LookUnder:
   switch (lm_n) {
       1: id = (+LibMsg <look under while dark>+);
       2: id = (+LibMsg <look under>+);
       3: id = (+LibMsg <report npc looking under>+);
       default: jump not_handled; }
    jump handled;
-)

[*** Open, Close, Lock, Unlock ***]

Include (-
Open:
    switch (lm_n) {
       1: id = (+LibMsg <cannot open unless openable>+);
       2: id = (+LibMsg <cannot open something locked>+);
       3: id = (+LibMsg <cannot open something already open>+);
       4: id = -2; ! reveal any newly visible exterior
       5: id = (+LibMsg <report player opening>+);
       6: id = (+LibMsg <report npc opening>+);
       7: id = (+LibMsg <report unseen npc opening>+);
       default: jump not_handled; }
    jump handled;

Close:
    switch (lm_n) {
       1: id = (+LibMsg <cannot close unless openable>+);
       2: id = (+LibMsg <cannot close something already closed>+);
       3: id = (+LibMsg <report player closing>+);
       4: id = (+LibMsg <report npc closing>+);
       5: id = (+LibMsg <report unseen npc closing>+);
       default: jump not_handled; }
    jump handled;

Lock:
    switch (lm_n) {
       1: id = (+LibMsg <cannot lock without a lock>+);
       2: id = (+LibMsg <cannot lock something already locked>+);
       3: id = (+LibMsg <cannot lock something open>+);
       4: id = (+LibMsg <cannot lock without the correct key>+);
       5: id = (+LibMsg <report player locking>+);
       6: id = (+LibMsg <report npc locking>+);
       default: jump not_handled; }
    jump handled;

Unlock:
    switch (lm_n) {
       1: id = (+LibMsg <cannot unlock without a lock>+);
       2: id = (+LibMsg <cannot unlock something already unlocked>+);
       3: id = (+LibMsg <cannot unlock without the correct key>+);
       4: id = (+LibMsg <report player unlocking>+);
       5: id = (+LibMsg <report npc unlocking>+);
       default: jump not_handled; }
    jump handled;
-)

[*** Switch On / Off ***]

Include (-
SwitchOn:
    switch (lm_n) {
       1: id = (+LibMsg <cannot switch on unless switchable>+);
       2: id = (+LibMsg <cannot switch on something already on>+);
       3: id = (+LibMsg <report player switching on>+);
       4: id = (+LibMsg <report npc switching on>+);
       default: jump not_handled; }
    jump handled;

SwitchOff:
    switch (lm_n) {
       1: id = (+LibMsg <cannot switch off unless switchable>+);
       2: id = (+LibMsg <cannot switch off something already off>+);
       3: id = (+LibMsg <report player switching off>+);
       4: id = (+LibMsg <report npc switching off>+);
       default: jump not_handled; }
    jump handled;
-)

[*** Wear, Disrobe ***]

Include (-
Wear:
    switch (lm_n) {
       1: id = (+LibMsg <cannot wear something not clothing>+);
       2: id = (+LibMsg <cannot wear not holding>+);
       3: id = (+LibMsg <cannot wear something already worn>+);
       4: id = (+LibMsg <report player wearing>+);
       5: id = (+LibMsg <report npc wearing>+);
       default: jump not_handled; }
    jump handled;

Disrobe:
    switch (lm_n) {
       1: id = (+LibMsg <cannot take off something not worn>+);
       2: id = (+LibMsg <report player taking off>+);
       3: id = (+LibMsg <report npc taking off>+);
       default: jump not_handled; }
    jump handled;
-)

[*** Eating, Drinking, Senses ***]

Include (-
Eat:
    switch (lm_n) {
       1: id = (+LibMsg <cannot eat unless edible>+);
       2: id = (+LibMsg <report player eating>+);
       3: id = (+LibMsg <report npc eating>+);
       default: jump not_handled; }
    jump handled;
Drink:
    id = (+LibMsg <block drinking>+);
    jump handled;
Taste:
    id = (+LibMsg <block tasting>+);
    jump handled;
Smell:
    id = (+LibMsg <block smelling>+);
    jump handled;
Listen:
    id = (+LibMsg <block listening>+);
    jump handled;
Touch:
    switch (lm_n) {
       1: id = (+LibMsg <report player touching other people>+);
       2: id = (+LibMsg <report player touching things>+);
       3: id = (+LibMsg <report player touching self>+);
       4: id = (+LibMsg <report npc touching self>+);
	   ! 5 is for touching the player, 6 is for another NPC
       5,6: id = (+LibMsg <report npc touching other people>+);
       default: jump not_handled; }
    jump handled;
-)

[*** Rhetorical Commands ***]

Include (-
Yes:
    id = (+LibMsg <block saying yes>+);
    jump handled;
No:
    id = (+LibMsg <block saying no>+);
    jump handled;
Sorry:
    id = (+LibMsg <block saying sorry>+);
    jump handled;
Strong:
    id = (+LibMsg <block swearing obscenely>+);
    jump handled;
Mild:
    id = (+LibMsg <block swearing mildly>+);
    jump handled;
-)

[*** Body Movement  ***]

Include (-
Climb:
    id = (+LibMsg <block climbing>+);
    jump handled;
Jump:
    id = (+LibMsg <block jumping>+);
    jump handled;
Swing:
    id = (+LibMsg <block swinging>+);
    jump handled;
WaveHands:
    id = (+LibMsg <block waving hands>+);
    jump handled;
-)

[*** Physical Interaction ***]

Include (-
Attack:
    id = (+LibMsg <block attacking>+);
    jump handled;
Burn:
    id = (+LibMsg <block burning>+);
    jump handled;
Cut:
    id = (+LibMsg <block cutting>+);
    jump handled;
Rub:
    id = (+LibMsg <block rubbing>+);
    jump handled;
SetTo:
    id = (+LibMsg <block setting to>+);
    jump handled;
Tie:
    id = (+LibMsg <block tying>+);
    jump handled;

Wave:
    switch (lm_n) {
       1: id = (+LibMsg <cannot wave something not held>+);
       2: id = (+LibMsg <report player waving things>+);
       3: id = (+LibMsg <report npc waving things>+);
       default: jump not_handled; }
    jump handled;

Squeeze:
    switch (lm_n) {
       1: id = (+LibMsg <squeezing people>+);
       2: id = (+LibMsg <report player squeezing>+);
       3: id = (+LibMsg <report npc squeezing>+);
       default: jump not_handled; }
    jump handled;

ThrowAt:
    switch (lm_n) {
       1: id = (+LibMsg <throw at inanimate object>+);
       2: id = (+LibMsg <block throwing at>+);
       default: jump not_handled; }
    jump handled;
-)

[*** Push, Pull, Turn ***]

Include (-
Push:
    switch (lm_n) {
       1: id = (+LibMsg <cannot push something fixed in place>+);
       2: id = (+LibMsg <cannot push scenery>+);
       3: id = (+LibMsg <report player pushing>+);
       4: id = (+LibMsg <cannot push people>+);
     ! 5 does not apply to Push
       6:  id = (+LibMsg <report npc pushing>+);
       default: jump not_handled; }
    jump handled;

PushDir:
    switch (lm_n) {
       1: id = (+LibMsg <block pushing in directions>+);
       2: id = (+LibMsg <not pushed in a direction>+);
       3: id = (+LibMsg <pushed in illegal direction>+);
       default: jump not_handled; }
    jump handled;

Pull:
    switch (lm_n) {
       1: id = (+LibMsg <cannot pull something fixed in place>+);
       2: id = (+LibMsg <cannot pull scenery>+);
       3: id = (+LibMsg <report player pulling>+);
       4: id = (+LibMsg <cannot pull people>+);
       5: id = (+LibMsg <report npc pulling>+);
       default: jump not_handled; }
    jump handled;

Turn:
    switch (lm_n) {
       1: id = (+LibMsg <cannot turn something fixed in place>+);
       2: id = (+LibMsg <cannot turn scenery>+);
       3: id = (+LibMsg <report player turning>+);
       4: id = (+LibMsg <cannot turn people>+);
     ! 5,6 do not apply to Turn
       7: id = (+LibMsg <report npc turning>+);
       default: jump not_handled; }
    jump handled;
-)

[*** Speech / Interpersonal Actions ***]

Include (-
Answer:
    id = (+LibMsg <block answering>+);
    jump handled;
Ask:
    id = (+LibMsg <block asking>+);
    jump handled;
Buy:
    id = (+LibMsg <block buying>+);
    jump handled;
Kiss:
    id = (+LibMsg <block kissing>+);
    jump handled;
Sing:
    id = (+LibMsg <block singing>+);
    jump handled;
Tell:
    switch (lm_n) {
       1: id = (+LibMsg <telling yourself>+);
       2: id = (+LibMsg <block telling>+);
       default: jump not_handled; }
    jump handled;
-)

[*** Mental Actions ***]

Include (-
Think:
    id = (+LibMsg <block thinking>+);
    jump handled;
Consult:
    switch (lm_n) {
       1: id = (+LibMsg <block player consulting>+);
       2: id = (+LibMsg <block npc consulting>+);
    default: jump not_handled; }
    jump handled;
-)

[*** Sleep And Waiting ***]

Include (-
Sleep:
    id = (+LibMsg <block sleeping>+);
    jump handled;
Wait:
    switch (lm_n) {
       1: id = (+LibMsg <report player waiting>+);
       2: id = (+LibMsg <report npc waiting>+);
    default: jump not_handled; }
    jump handled;
Wake:
    id = (+LibMsg <block waking up>+);
    jump handled;
WakeOther:
    id = (+LibMsg <block waking other>+);
    jump handled;
-)

Include (-
default:
.not_handled;
    (+main object+) = nothing;
    rfalse;
.handled;
	if (id == -2)  {
        (+custom_internal_i6 reveal any newly visible exterior rule+)();
    }
    else {
		(+library-message-id+) = id;

        if ( (+before library messages rule+)() == 0)
        {
            (+print library message rule+)();

            if (isImplicitAction)
			{ say__p = 0; }

            if (after_text ~= nothing && (+libmsg-was-empty+) == 0)
			{ print (string) after_text; }

            (+after library messages rule+)();
        }
    }

    (+main object+) = nothing;
    rtrue;
];
-)


Part 5 - Rule handling - unindexed

Section 5.1 - Reporting rules - unindexed

To display (id_ - a library message id):
   display_part_1 for id_;
   follow the after library messages rule;
   display_part_2.

To display (id_ - a library message id) without 'after library messages':
   display_part_1 for id_;
   display_part_2.

To display_part_1 for (id_ - a library message id):
   change curr_subject to the person asked;	[ "actor" in Inform 6 ]
   change main object to the noun;
   set the current object to the main object / "set up";
   change library-message-id to id_;
   abide by the before library messages rule;
   follow the print library message rule.

To display_part_2:
   set_to_nothing main object;
   if libmsg-was-empty is 0 begin;
      if library-message-id is not LibMsg <reveal any newly visible exterior initial text>,
         say "[if there are not multiple objects][/n]";
   end if.

To set_to_nothing (x_ - an object):
   (- {x_} = nothing; -).

Section 5.2 - Internal rules - unindexed

[ the following rule is called from the i6 code ]

This is the custom_internal_i6 reveal any newly visible exterior rule:
   display LibMsg <reveal any newly visible exterior initial text> without 'after library messages';
   if there is no newly visible exterior begin;
       follow the after library messages rule;
       display LibMsg <no newly visible exterior>;
   otherwise;
       say ".[/r]";
       follow the after library messages rule;
       say "[/n]";
   end if.

[ need to test the return value of WriteListFrom(); not sure how to do this in Inform 7 ]
To decide whether there is no newly visible exterior:
   (- WriteListFrom(child(lm_o), ENGLISH_BIT+TERSE_BIT+CONCEAL_BIT) == 0 -).

[ Special handling for "go" without a direction ]

The block vaguely going rule is not listed in the for supplying a missing noun rules.

Rule for supplying a missing noun while going:
   display LibMsg <block vaguely going>;
   say " ".		[ if this isn't here, it says "You must supply a noun" ! ]

Section 5.3 - Locale description - unindexed

[ The following code was supplied by Emily Short ]

The you can see more rule is listed instead of the you-can-also-see 
rule in the for printing the locale description rules. 


For printing the locale description (this is the you can see more 
rule): 
	let the domain be the parameter-object; 
	let the mentionable count be 0; 
	repeat with item running through things: 
		now the item is not marked for listing; 
	repeat through the Table of Locale Priorities: 
		[say "[notable-object entry] - [locale description priority 
entry].";] 
		if the locale description priority entry is greater than 0, 
			now the notable-object entry is marked for listing; 
		increase the mentionable count by 1; 
	if the mentionable count is greater than 0: 
		repeat with item running through things: 
			if the item is mentioned: 
				now the item is not marked for listing; 
		begin the listing nondescript items activity with the domain; 
		if the number of marked for listing things is 0: 
			abandon the listing nondescript items activity with the domain; 
		otherwise: 
			if handling the listing nondescript items activity: 
				if the domain is a room: 
					if the domain is the location, say "[You] "; 
					otherwise say "In [the domain] [you] "; 
				otherwise if the domain is a supporter: 
					say "On [the domain] [you] "; 
				otherwise: 
					say "In [the domain] [you] "; 
				say "[can] [if the locale paragraph count is greater than 0]also [end if]see "; 
				let the common holder be nothing; 
				let contents form of list be true; 
				repeat with list item running through marked for listing things: 
					if the holder of the list item is not the common holder: 
						if the common holder is nothing, 
							now the common holder is the holder of the list item; 
						otherwise now contents form of list is false; 
					if the list item is mentioned, now the list item is not marked for listing; 
				filter list recursion to unmentioned things; 
				if contents form of list is true and the common holder is not nothing, 
					list the contents of the common holder, as a sentence, including contents, giving brief inventory information, tersely, not listing concealed items, listing marked items only; 
				otherwise say "[a list of marked for listing things including contents]"; 
				if the domain is the location, say " here"; 
				say ".[paragraph break]"; 
				unfilter list recursion; 
			end the listing nondescript items activity with the domain; 
	continue the activity. 


Custom Library Messages ends here.

---- DOCUMENTATION ----

Chapter: How To Use This Extension

Section: New Messages In Version 25

The following new messages were added in the previous version of Custom Library Messages (v25, April 2008):

	LibMsg <cannot drop if this exceeds carrying capacity>
	LibMsg <cannot exit thing not within>
	LibMsg <comment recorded>
	LibMsg <comment not recorded>
	LibMsg <no scoring>
	LibMsg <score rank>
	LibMsg <noun needed>
	LibMsg <noun not needed>
	LibMsg <object needed>
	LibMsg <object not needed>
	LibMsg <second object needed>
	LibMsg <second object not needed>
	LibMsg <second noun needed>
	LibMsg <second noun not needed>
	LibMsg <something more substantial needed>
	LibMsg <undo forbidden>
	LibMsg <dark room name>
	LibMsg <report unseen npc closing>
	LibMsg <report unseen npc opening>
	LibMsg <report npc implicit take>
	LibMsg <npc unable to do that>
	LibMsg <say npc arrives at>
	LibMsg <say npc arrives from unknown direction>
	LibMsg <say npc arrives from>
	LibMsg <say npc arrives>
	LibMsg <say npc goes through>
	LibMsg <say npc goes>
	LibMsg <say npc pushing away>
	LibMsg <say npc pushing in front with player>
	LibMsg <say npc pushing in front>
	LibMsg <say npc pushing in>
	LibMsg <say npc taking player along>
	LibMsg <say npc vehicle>

In addition, LibMsg <report npc giving> was split into:

	LibMsg <report npc giving to npc>
	LibMsg <report npc giving to player>

And the "report npc opening/closing" messages were split into:

	LibMsg <report npc opening>
	LibMsg <report unseen npc opening>
	LibMsg <report npc closing>
	LibMsg <report unseen npc closing>

Section: Overview

This extension allows you to replace the default Inform library messages in a simple and consistent way. It is also possible to change the point of view of the PC (to "I" instead of "you", for example).

A cut-down version called "Default Messages" is also available which contains no custom messages at all; all replacement library messages must be supplied. If you are using the standard PC point of view ("you") and do not need all of the functionality provided here, that extension may be preferable for you to use.

(See the Change History section below for a list of changes between versions).

Section: A Little Grammar

It is possible to change the tense, person, number and gender of
the standard library messages with this extension. A reminder of
what each of these terms mean:

"Tense" is to do with time. "He eats" is in the present tense;
"He ate" is in the past tense. Future tense is not handled in
this extension.

"Person" is to do with the point of view of the speaker. Some examples:

	First person - "I eat", "We eat"
	Second person - "You eat"
	Third person - "He/she/it eats", "They eat"

"Number" is either singular (one thing) or plural (more than one).

"Gender" is either masculine, feminine or neuter. This only makes
a difference for the third person singular ("he/she/it eats").

Changing these values is simple:

	When play begins:
   		change the library message tense to past tense;
   		change the library message person to third person;
   		change the library message grammatical number to singular;
   		change the library message gender to gender feminine.

This will cause the library message "You can't go that way" to become
"She couldn't go that way", and so on.

These values may be changed at any time during the game, not just at the beginning.

Section: Setting The Character's Name

As well as changing the library messages to say "you", "they", etc. it is also possible to set this text to the name of the character:

	When play begins:
		change the library message person to third person;
		set the library message third person text to "George".

If there are different forms for upper and lower case, say the following instead:

	When play begins:
		change the library message person to third person;
		set the library message third person text to "The mouse" / "the mouse".

You may also want to add a line like the following, just in case the player refers to the PC by name:

	Understand "George" as yourself.

For a female or neuter character, you should also say something like:

	change the library message gender to gender feminine

If it is ever necessary to change the library messages back to normal ("he", "him", etc), say:

	restore the library message third person text

Section: The "Examine me" Text

The response to "examine me" is not controlled by this extension (it used to be, before version 16). To set the "x me" text, do the following:

	The description of the player is "A small grey toad."

Section: Changing Library Messages

This extension has at its heart a table of library messages.

Including something like the following somewhere in your code will
automatically change the library messages to your own definitions:

	Table of custom library messages (continued)
	Message Id							Message Text
	LibMsg <confirm Quit>				"Really quit...?"
	...

You can also change a library message after the game has already started:

	set LibMsg <confirm Quit> to "Really quit...?"

For a complete list of messages and their initial values, see the
section "Messages" at the end of this documentation. The example in
the section "Before And After Library Messages" below may also be
helpful for identifying the id for a particular message.

Although only a single string is permitted for the Message Text,
it is still possible to add more lengthy conditions by defining
a special "say" rule:

	set LibMsg <confirm Quit> to "[quit msg]"

	To say quit msg:
		...
		...

Section: More Complex Messages

Most of the library messages refer to the player and/or an object;
for example:
	
	"You can't go that way."
	"The box isn't open."
	"First you'll have to close the box."

The above messages are defined as follows:

	"[You] [can't] go that way."
	"[The %] [isn't|aren't] open."
	"First [you]'ll have to close [the % dobj]."

"[You]" prints the appropriate pronoun for the player, which is usually
just "you", but can also be changed to "I", "he", "they", etc.

"[can't]" prints the word "can't" in the present tense or "couldn't" in
the past tense.

"%" represents the main object being talked about. "[The %]" will print
the same kind of thing as "[The x]" in standard Inform. You can also
say "[the %]" or just "[%]". If it is not the subject of the sentence -
as in the third example above - say "[% dobj]" or "[the % dobj]" instead
(dobj stands for "direct object", the alternative to being the subject
of the sentence).

"[isn't|aren't]" prints the appropriate word for the last thing mentioned
in the sentence. In the second example above, the last thing mentioned was
"%" (the main object), so it will say "isn't" if the main object is singular
or "aren't" if it is plural.

As well as "[the %]", it is possible to say "[The actor]" / "[the actor]",
which refers to the person doing the action (usually the player).

A list of commands is given below (see the section on
Auxiliary Verbs below for an explanation of "+" after a command).

	% ... ^The % ... the % ... % dobj ... the % dobj
	$ ... ^The $ ... the $ ... $ dobj ... the $ dobj ... ^The actor ... the actor
	^Are ... ^Aren't ... ^Can ... ^Can't ... ^Do ... ^Doesn't|Don't ... ^Does|Do ...  ^Don't
	^Hasn't|Haven't ... ^Has|Have ... ^Have ... ^Have+ ... ^Haven't ... ^Haven't+
	^He ... here ... ^Him ... ^Himself ... ^His ...
	^Isn't|Aren't ... ^Isn't|Wasn't ... ^Is|Are ... ^Is|Was
	^It's ... ^It|They ... ^It|Those ... ^That's|They're ... ^That|They ... ^That|Those
	^There's ... ^You ... ^You're ... ^You've+ ... ^Your ... ^Yourself
	are ... aren't ... can ... can't ... comes|came ... did ... didn't ... do ... doesn't|don't
	does|do ... don't ... hasn't|haven't ... has|have ... have ... have+ ... haven't ... haven't+
	he ... him ... himself ... -his ... is ... isn't|aren't ... isn't|wasn't ... is|are ... is|was
	it's ... it|them ... it|they ... it|those ... that|those ... there's ... you ... you dobj
	you|yourself ... you're ... you've+ ... your ... yourself

(Note that as of version 12, "[-his]" is used instead of "[his]"; see Change History).

The following commands are used to distinguish between a
supporter and a container:

	^On|In ... off|out of ... onto|into ... on|in

Section: Handling Verbs

In English, verb endings change depending on the subject; for example,
"He eats" vs "I eat".

To handle this properly in a library message, use the "[-s]", "[-es]"
or "[e-s]" commands:

	"[You] lack[-s] the dexterity."
	"[The actor] search[-es] [the % dobj]."
	"[You] tast[e-s] nothing unexpected."

"[-s]" will add an "s" if necessary (or "ed" for past tense);
similarly for "[-es]". 

"[e-s]" is used for verbs already ending in "e".

You can also say "[-s|ed]" or "[-es|ed]" when the subject is fixed:

	"Time pass[-es|ed]."

Some English verbs do not form their past tense by adding "ed"; for
example, the past tense of "eat" is "ate". These verbs have their own
special commands for printing, and are in the form "[eats*]" or "[eat*]"
("[eat*]" assumes the player is the subject):

	"[You] [see*] nothing special about [the % dobj]."

The full list of irregular verbs known to this extension is:

	eat*, feel*, find*, get*, give*, hear*, lead*, put*, see*, take*.

Section: Auxiliary Verbs: "You have eaten"

The verb "have" is used in two different ways in English. In the sentence
"You have an apple", "have" is a verb meaning "own, carry". In the sentence
"You have eaten the apple", the main verb is "eaten" - "have" is just
an auxiliary verb that goes with the main verb.

To indicate that "have" is an auxiliary verb, put a "+" after it:

	" [You] [have+] died "
	... "even if [you] [haven't+] been there before"
	... "even if [you've+] been there before"

Section: The Current Object

In order to print the appropriate verb endings and so on, this extension
must keep track of the current object (the player, the "%" object,
the person doing the action, etc). Usually this is the last mentioned
object in the message.

However, sometimes a library message must refer to an object which has not
yet been mentioned. It is possible to set the current object explicitly
with "=>" (see below), but usually the extension can figure out which
object was meant. For example:

	"[That's|they're] hardly portable."

In this case, "[That's|they're]" is assumed to refer to the main object;
it will print "That's" for singular or "They're" for plural.

Similarly:

	"Which [do] [you] mean, " ...

In this case, "[do]" is assumed to refer to the player, and will print
"do" or "does" as appropriate.

To explicitly set the thing being referred to, the following commands
may be embedded in the text (none of which actually print anything):

	"[=> %]"
	"[=> actor]"  -- the person doing the action (usually the player)
	"[=> noun]"  -- usually the same as "%"
	"[=> ...]"  --- any other object, eg. "[=> the janitor]" 

For example:

	"[=> noun][That|those] seem[-s] to belong to [the % dobj]."

(This is a rare case when "%" and "the noun" are two different objects).

It is also possible to force the tense to be past or present (note that
each "[=> present tense]" should have a matching "[=> default tense]").

	"[You] [=> present tense]need[-s][=> default tense] to be holding [the % dobj] before [you] can put [it|them] into something else."

If it is ever necessary to print the current object explicitly, the symbol "$" may be used.
This acts just like "%", so you can say:

	"[The $]"
	"[the $]"
	"[$]"
	"[the $ dobj]"
	"[$ dobj]"

Section: Conditions

Many messages print different things depending on special conditions, such as
whether the player or another character is doing the action, or whether
multiple objects are involved in the player's command.

The following definitions are included in this extension:

	if the gender of <object> is <gender> ...
	if the player is doing the action ...
	if the player is not doing the action ...
	if the player can see the actor ...
	if there are multiple objects ...
	if noun is living ...
	if game over ...

There are also some shorthand ways of checking the tense, person or number:

	if lm_present ...
	if lm_past ...
	if lm_p1 ...
	if lm_p2 ...
	if lm_p3 ...
	if lm_sing ...
	if lm_plu ...

Section: Numbers

Some library messages refer to a particular number. For these messages only,
a number called "the numeric amount" may be used to access the number.
For example:

	"Your score has just gone
	[if numeric amount >= 0]up by [the numeric amount]
	[otherwise]down by [0 minus the numeric amount]
	[end if] point[s]"

A special command is available to print either "is" or "are" for a number:

	"[if the numeric amount is 0]None of those are
	[otherwise]Only [numeric amount in words] of those [is|are for numeric amount]
	[end if] available."

Section: Special Characters

Certain characters such as "." and "!" are special to Inform, and can
cause unexpected effects when printed (such as causing a paragraph break).
A few commands have been defined in this extension to allow these symbols
to be printed normally:

	"." -- "[dot]"
	"!" -- "[ExMark]"
	"?" -- "[QMark]"

As a convenience, the following abbreviations are also defined:

	"[/p]" -- same as "[paragraph break]"
	"[/n]" -- same as "[line break]" (newline)
	"[/r]" -- same as "[run paragraph on]"

Section: Before And After Library Messages

Two "hooks" are provided to allow something to be done before and after
a library message is printed:

	the before library messages rule
	the after library messages rule

Note that Inform prints some kinds of text before library messages are
printed; in particular, room names and descriptions. These cases may
be handled using the standard Inform 7 rule books.

During the "before library messages" rule, the special value 
"library-message-id" is set to the id of the message which is about to
be displayed. This may be changed to another message id if desired.
A "stop the action" command will also work here (but will only prevent
a message from being printed, not the action from taking place).

For example, to see the message id of each library message before it is printed:

	This is the id printing rule:
		say "{ [library-message-id] }[line break]"
	
	When play begins:
		change the before library messages rule to the id printing rule.

Section: The Player And The PC

Certain library messages address the player directly (as opposed to the
Player Character). These messages always print a literal "you" instead
of "[you]". For example:

	" You have won "

Section: Using Commands Outside The Library

The commands like "[you]", "[the $]", etc. may be used outside of the
library messages with some care. The current object may need to be
set with "[=> ...]" several times during a paragraph. For example:

	say "[=> nasty creature][The $] glar[e-s] at [you dobj].
		[You] stumbl[e-s] backwards towards the cliff edge,
		almost losing [your] footing.
		[=> nasty creature][He] start[-s] to advance towards [you dobj]."

Depending on what the "nasty creature" is and the tense/person/number/gender
settings, the above command may produce something like the following:

	The wolves glared at me. I stumbled backwards towards the cliff edge, almost losing my footing. They started to advance towards me.

It is also possible to change what "%" refers to with "[% => ...]"; for example:

	say "[% => nasty creature][You] [can] [see*] [the % dobj] crouching among the rocks. "

Section: Debugging

The current object may be displayed whenever it changes by turning on
debugging:

	change library_message_debug to on.

The current object will be displayed in curly brackets like this:

	"{<debug text>:obj=rock}"

Section: Known Bugs And Limitations

The rules for contents listing ("providing light", "which is open", etc)
have not been replaced. It should be possible to modify these messages
via the appropriate rule books.

Contents listing for past tense has a more difficult problem; the "is/are" in things
like "On the table is a key" and "In the box are a cat and a dog" is difficult to change
to "was/were" without replacing several core Inform 6 routines (which is possible, but
slightly risky). If the game stays in past tense for the whole time, here is a way to
fix this problem manually:

Edit the file "Inform 7/Library/Natural/English.h" with a normal text editor, and
search for "IS__TX" (about line 365). There are several quoted strings containing
"is" and "are". Change these to "was" and "were". Note that this will need to be
repeated each time you update your version of Inform 7.

Bug reports and suggestions may be sent to "davidfisher@australiaonline.net.au"
(with a meaningful subject line, such as "[I7 library messages] ...") or posted
to the "rec.arts.int-fiction" newsgroup.

Section: Acknowledgements

Apart from the obvious person with the initials GN (and other letters raham elson),
thanks to the "rec.arts.int-fiction" newsgroup for suggestions and encouragement,
and to Emily Short for her inspirational Plurality extension, some of which
I have borrowed (OK, stolen) for this extension.

Thanks also to Jesse McGrew for a way to avoid having to change the standard library files.

Section: Change History

Version 1 (June 6th, 2006)

	* Initial version, plenty of bugs.

Version 2 (June 8th, 2006)

	* Added Parts and Sections + contents listing.
	* Improved documentation (added numbering to Messages section).
	* Added "[$]" (prints the current object).
	* Fixed handling of various messages (too many to remember :-)

Version 3 (June 13th, 2006)

	* Replaced message rules with a table of message ids & text (using binary search to look up message ids).
	* Added section "Using Commands Outside The Library" to documentation.
	* Added abbreviations "[/p]", "[/n]" and "[/r]".
	* Added "[you|yourself]" command for situations where player is both the subject and the object (rarely needed, since "[.. dobj]" will usually handle automatically).
	* Renamed the "case" kind to "letter case" to avoid conflicts with any objects named "case".
	* Renamed arguments to "say" rules from "x" to "x_", etc. to avoid conflicts (possibly a bug in Inform 7 that local arguments don't always take precedence over globals).
	* Renamed the "vague go" rule to "block vaguely going" for consistency with the	existing Inform library, and made it work properly.
	* Fixed rules for printing 'did' / 'didn't' (was not setting the current object).
	* Fixed the rules about newly visible exteriors.
	* Small improvement to Thee and Thou example (handle doubling of "t": put -> putteth, etc)

Version 4 (June 14th, 2006)

	* Made sure "try silently" doesn't print anything if the action fails.
	* Handle messages defined as "" (empty string) properly (sometimes printed a spurious newline).
	* If there is more than one reporting rule defined in the Standard Rules for an action, made sure the others are still followed (eg. the "don't report successful implicit takes" rule).
	* Gave all appropriate messages separate "report player ..." and a "report npc ..." messages.
	* Changed "report other person ..." messages to "report npc ..." for consistency.
	* Renamed LibMsg <check life property for giving> to LibMsg <unable to receive things> for clarity.
	* Renamed LibMsg <futile to throw things at inanimate objects> to LibMsg <throw at inanimate object>.

Version 5 (June 28th, 2006)

	* Removed need for library change "#IFNDEF LibraryMessagesProvided" in Verblib.h (thanks to Jesse McGrew).
	* Changed "lower" and "upper" to "lower-case" and "upper-case" respectively to avoid potential conflicts.
	* Added references to alternate, smaller extension "Default Messages".
	* Made sure extension works with I7 build 3R85.

Version 6 (July 7th, 2006)

	* Fixed bug causing stack overflow when pushing objects (in a compass direction).
	* Added disclaimer to "Thee and Thou" example.

Version 7 (July 17th, 2006)

	* Added "set the library message 'he' text" functionality to make changing third person singular form of "[you]" to some other word (eg. "the gunfighter") easy to do.
	* Changed definition of "To say you" and "To say you dobj" to make the above possible.
	* Added "Setting The Character's Name" section.

Version 8 (July 20th, 2006)

	* Changed "set the library message 'he' text" to "set the library message third person text" and allowed library message gender to be changed when this is used.

Version 9 (July 24th, 2006)

	* Fixed the "before/after library messages" rules; these are now rules that vary (since it is no longer possible to override a rule just by redefining it). Thanks to Jeff Nyman for noticing this problem.
	* Altered the "Out of World" example accordingly.
	* Also added a space to some messages (LibMsg <top line what on>, etc).

Version 10 (July 28th, 2006)

	* Fix to bug introduced in V9; crashed when trying to go in a disallowed direction instead of saying "You can't go that way" (thanks again to Jeff Nyman for noticing this).

Version 11 (August 15th, 2006)

	* Removed extraneous newline after <who disambiguation>, <which disambiguation> and <score command> messages (thanks again Jeff!)

Version 12 (August 22nd, 2006)

	* Changed "[his]" rule to "[-his]" to avoid bizarre conflict with another extension (Scheduled Activities by John Clemens).
	* Fixed up plural forms for "his".

Version 13 (August 29th, 2006)

	* Removed "[Story name]" from the text of "LibMsg <verbose look mode>", etc. since Inform already prints it (thanks to Arnel Legaspi for this one).

Version 14 (November 14th, 2006)

	* Made sure the extension compiles for Glulx (by disabling the I6 code that fixes the bug described in Version 6, which no longer seems to happen in I7 version 4B91 anyway).

Version 15 (January 28th, 2007)

	* Current object was not being set properly the very first time (thanks to Jeff Nyman again for pointing this out).
	* Added a note about verbs which have been removed from Inform 7 ("swim", etc).

Version 16 (March 26th, 2007)

	* Updated for I7 version 4S08 (removed comments from inside tables and modified definition of "[/n]").

Version 17 (March 27th, 2007)

	* Replaced the last remaining procedurual rule with a static ordering statement (thanks to Stephen Granade).
	* Removed the LibMsg <player description> rule ("As good-looking as ever"), and added new section "The 'Examine me' Text" to explain how to set this value.

Version 18 (June 23rd, 2007)

	* Updated to work with I7 version 4U65.
	* Added LibMsg <examine direction>.
	* Removed "Thee and Thou" example (too many issues to update).

Version 19 (August 9th, 2007)

	* Made sure "(in/on ...)" is printed correctly after the room name.

Version 20 (August 24th, 2007)

	* Fixed past tense of "You get off the {supporter} ..."
	* Added past tense contents description bug to Known Bugs and Limitations section.

Version 21 (August 25th, 2007)

	* Change "here" to "there" in past tense for things like "You can see a dog here / You could see a dog there".

Version 22 (September 1st, 2007)

	* Made "yourself" print the right thing for first and third person (thanks to J. J. Lawless and Syzygy).

Version 23 (November 21st, 2007)
	* Fixed problem with saying "[pronoun word]" (eg. "I'm not sure what 'it' refers to") (thanks to Juhana
Leinonen for finding this).
	* Added paste icons to examples (thanks, Emily).
	* Added "section:" headings to documentation.

Version 24 (January 13th, 2008)
	* In the "custom report exiting rule", temporarily set the noun to the "container exited from" (ie. the action variable for the exiting action) (thanks to Mike Tarbert for pointing out this issue).
	* Renamed "Library message debug" variable to "Library_message_debug" to avoid potential conflicts (eg. objects with the word "library" in their name).
	* Fixed bizarre infinite recursion when trying to print the name of the current object if it equals the player.

Version 25 (April 20th, 2008)
	* Changes to I7 required a major update - many changes.
	* Library message number changed to Library message grammatical number to avoid clashing with new I7 libraries.
	* Removed "^" from upper case "to say" rules (eg. "[The %]" instead of "[^The %]").
	* Added new messages (see New Messages In This Version, above).
	* Removed references to I6 actions which do not exist in I7: Order, FullScore, Places, Objects, EmptyT, VagueGo, JumpOver, Swim, Blow, Dig, Fill, Set and Pray.
	* Updated the "block pushing in directions" message to match the new standard message.

Version 26 (August 29th, 2008)
	* Added section 5.3 (Locale description), containing code by Emily Short to make the standard "you can see" message call this extension.

Version 27 (October 5th, 2008)
	* Tense was being treated as "past" by default in some situations unless preceeded by "[you]"; now fixed (thanks to Jeff Nyman for pointing this out). Note that "[=> default tense]" is now required after "[=> present tense]" to revert to the current tense.

Section: Important Kinds and Values

Kinds

	The tenses are past tense and present tense.
	The grammatical numbers are singular and plural.
	The grammatical persons are first person, second person and third person.
	The genders are gender masculine, gender feminine and gender neuter.

Initial Values
	
	The library message tense is present tense.
	The library message grammatical number is singular.
	The library message person is second person.
	The library message gender is gender masculine.

	The before library messages rule is the empty rule.
	The after library messages rule is the empty rule.

	Library_message_debug is off.

Chapter: Messages

Section: End of game messages

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <you have died>			" [You] [have+] died "
	LibMsg <you have won>			" You have won "

Section: Descriptions

Note that LibMsg <player self description> is not used, and is left in only for backwards compatibility; the "rule for printing the name of the player" is used instead (which prints "[yourself]" => myself, herself, etc).

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <player self description>		"[yourself]"			
	LibMsg <unimportant object>		"[That's|they're] not something you need to refer to in the course of this game."

    The old "LibMsg <player description>", "As good-looking as ever.", has been removed. Use "The description of the player is ..." instead.

Section: Prompts and Input

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <empty line>			"I beg your pardon?"
	LibMsg <confirm Quit>			"Are you sure you want to quit? "
	LibMsg <yes or no prompt>		"Please answer yes or no."
	LibMsg <restrict answer>		"Please give one of the answers above."
	LibMsg <page prompt>			"[/n][bracket]Please press SPACE[dot][close bracket]"
	LibMsg <menu prompt>			"[/n]Type a number from 1 to [numeric amount], 0 to redisplay or press ENTER."
	LibMsg <comment recorded>		"[bracket]Comment recorded[dot][close bracket]"
	LibMsg <comment not recorded>		"[bracket]Comment NOT recorded[dot][close bracket]"

Section: Undo

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <undo succeeded>		"[bracket]Previous turn undone[dot][close bracket]"
	LibMsg <undo failed>			"[apostrophe]Undo[apostrophe] failed. [bracket]Not all interpreters provide it[dot][close bracket]"
	LibMsg <undo not provided>		"[bracket]Your interpreter does not provide [apostrophe]undo[apostrophe]. Sorry[ExMark][close bracket]"
	LibMsg <cannot undo nothing>		"[bracket]You can't [apostrophe]undo[apostrophe] what hasn't been done[ExMark][close bracket]"
	LibMsg <cannot undo twice in a row>	"[bracket]Can't [apostrophe]undo[apostrophe] twice in succession. Sorry[ExMark][close bracket]"
	LibMsg <undo forbidden>			"The use of UNDO is forbidden in this game."

Section: Oops

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <oops failed>			"Sorry, that can't be corrected."
	LibMsg <oops too many arguments>	"[apostrophe]Oops[apostrophe] can only correct a single word."
	LibMsg <oops no arguments>		"Think nothing of it."

Section: Again

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <cannot do again>		"[You] [can] hardly repeat that."
	LibMsg <again usage>			"To repeat a command like [apostrophe]frog, jump[apostrophe], just say [apostrophe]again[apostrophe], not [apostrophe]frog, again[apostrophe]."

Section: Syntax Errors

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <command not understood>	"I didn't understand that sentence."
	LibMsg <command partly understood>	"I only understood you as far as wanting to "
	LibMsg <command badly ended>		"I didn't understand the way that finished."
	LibMsg <command incomplete>		"You seem to have said too little!"
	LibMsg <command cut short>		"(Since something dramatic has happened, your list of commands has been cut short.)"
	LibMsg <number not understood>	"I didn't understand that number."
	LibMsg <cannot begin at comma>	"You can't begin with a comma."
	LibMsg <extra words before comma>	"To talk to someone, try [apostrophe]someone, hello[apostrophe] or some such."

Section: Illegal Commands

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <unknown object>			"[You] [can't] see any such thing."
	LibMsg <object not held>			"[You] [aren't] holding that!"
	LibMsg <unknown verb>				"That's not a verb I [if using the American dialect option]recognize.[otherwise]recognise."
	LibMsg <verb cannot have inanimate object>	"[You] [can] only do that to something animate."
	LibMsg <noun needed>				"You must supply a noun."
	LibMsg <noun not needed>			"You may not supply a noun."
	LibMsg <object needed>				"You must name an object."
	LibMsg <object not needed>			"You may not name an object."
	LibMsg <second object needed>			"You must name a second object."
	LibMsg <second object not needed>		"You may not name a second object."
	LibMsg <second noun needed>			"You must supply a second noun."
	LibMsg <second noun not needed>		"You may not supply a second noun."
	LibMsg <something more substantial needed>	"You must name something more substantial."

Section: Multiple Objects

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <verb cannot have multiple objects>	"You can't use multiple objects with that verb."
	LibMsg <too many multiple objects>		"You can only use multiple objects once on a line."
	LibMsg <not that many available>		"[if the numeric amount is 0]None of those are[otherwise]Only [numeric amount in words] of those [is|are for numeric amount][end if] available."
	LibMsg <no objects available>			"There are none at all available!"
	LibMsg <zero multiple objects>			"Nothing to do!"
	LibMsg <first N objects>				"(considering the first sixteen objects only)"
	LibMsg <excepted object not included anyway>	"You excepted something not included anyway!"

Section: Implicit Actions

	To say entering|getting onto-into the %:
	if main object is not a supporter and main object is not a container,
		say "entering [the % dobj])";
	otherwise say "getting [onto|into] [the % dobj])".

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <report implicit take>				"(first taking [the % dobj])"
	LibMsg <implicitly pass outwards through other barriers>	"(getting [off|out of] [the % dobj])"
	LibMsg <implicitly pass inwards through other barriers>	"([entering|getting onto-into the %])"
	LibMsg <cannot drop clothes being worn>		"(first taking [the % dobj] off)"
	LibMsg <cannot insert clothes being worn>		"(first taking [it|them] off)"
	LibMsg <cannot put clothes being worn>			"(first taking [it|them] off)"

Section: Carrying Capacity

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <cannot exceed carrying capacity>		"[You're] carrying too many things already."
	LibMsg <use holdall to avoid exceeding carrying capacity>	"(putting [the % dobj] into [the player's holdall] to make room)"
	LibMsg <cannot insert if this exceeds carrying capacity>	"There [is|was] no more room in [the % dobj]."
	LibMsg <cannot put if this exceeds carrying capacity>	"There [is|was] no more room on [the % dobj]."

Section: Disambiguation

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <who disambiguation>		"Who [do] [you] mean, "
	LibMsg <which disambiguation>		"Which [do] [you] mean, "
	LibMsg <whom disambiguation>		"Whom [do] [you] want[if main object is not the player] [the %][end if] to [the last command]?"
	LibMsg <what disambiguation>		"What [do] [you] want[if main object is not the player] [the %][end if] to [the last command]?"
	LibMsg <single object disambiguation>	"Sorry, you can only have one item here. Which exactly?"

Section: Pronouns

	To say <space> at the moment:
	if lm_present, say " at the moment"

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <pronoun not set>		"I'm not sure what [apostrophe][pronoun word][apostrophe] refers to."
	LibMsg <pronoun absent>		"[You] [can't] see [apostrophe][pronoun word][apostrophe] ([the %])[<space> at the moment]."
	LibMsg <Pronouns initial text>		"At the moment, "
	LibMsg <Pronouns -means- text>		"means"
	LibMsg <Pronouns -unset- text>		"is unset"
	LibMsg <no pronouns known>		"no pronouns are known to the game."

Section: Commanding People

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <person ignores command>	"[The %] [has|have] better things to do."
	LibMsg <cannot talk to absent person>	"[You] seem[-s] to want to talk to someone, but I [can't] see whom."
	LibMsg <cannot talk to inanimate object>	"[You] [=> present tense][can't][=> default tense] talk to [the % dobj]."
	LibMsg <npc unable to do that>		"[The actor] [is|are] unable to do that."

Section: File Operations

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <confirm Restart>		"Are you sure you want to restart? "
	LibMsg <Restart failed>			"Failed."
	LibMsg <Restore failed>			"Restore failed."
	LibMsg <Restore succeeded>		"Ok."
	LibMsg <Save failed>			"Save failed."
	LibMsg <Save succeeded>		"Ok."
	LibMsg <Verify succeeded>		"The game file has verified as intact."
	LibMsg <Verify failed>			"The game file did not verify as intact, and may be corrupt."

Section: Transcripts

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <transcript already on>		"Transcripting is already on."
	LibMsg <transcript already off>		"Transcripting is already off."
	LibMsg <start of transcript>		"Start of a transcript of"
	LibMsg <end of transcript>		"[/n]End of transcript."
	LibMsg <transcript failed>		"Attempt to begin transcript failed."
	LibMsg <end transcript failed>		"Attempt to end transcript failed."

Section: Scoring

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <Score command>		"[if game over]In that game you[otherwise]You have so far[end if] scored [the score] out of a possible [maximum score] in [turn count] turn[s]"
	LibMsg <score changed>		"Your score has just gone [if numeric amount >= 0]up by [the numeric amount][otherwise]down by [0 minus the numeric amount][end if] point[s]"
	LibMsg <score notification turned on>	"Score notification on."
	LibMsg <score notification turned off>	"Score notification off."
	LibMsg <no scoring>			"There is no score in this story."
	LibMsg <score rank>			", earning you the rank of "

Section: Inventory

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <report npc taking inventory>	"[The actor] look[-s] through [-his] possessions."
	LibMsg <Inventory initial text>			"[You] [are] carrying"
	LibMsg <Inventory no possessions>		"[You] [are] carrying nothing."

Section: Darkness

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <entering darkness>			"[if lm_past]It suddenly became pitch dark.[otherwise]It is now pitch dark in here![end if]"
	LibMsg <dark description>			"It [is|was] pitch dark, and [you] [can't] see a thing."
	LibMsg <examine while dark>			"Darkness, noun. An absence of light to see by."
	LibMsg <search while dark>			"But [it's] dark."
	LibMsg <look under while dark>			"But [it's] dark."
	LibMsg <dark room name>				"Darkness"

Section: Take

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <report player taking>			"Taken."
	LibMsg <report npc taking>			"[The actor] pick[-s] up [the % dobj]."
	LibMsg <cannot take yourself>			"[You] [are] always self-possessed."
	LibMsg <cannot take other people>		"I don't suppose [the %] would [if lm_past]have cared[otherwise]care[end if] for that."
	LibMsg <cannot take something you are within>	"[You][apostrophe]d have to get [off|out of] [the % dobj] first."
	LibMsg <cannot take something already taken>	"[You] already [have] [that|those]."
	LibMsg <cannot take possessions of others>	"[=> noun]library message grammatical numberThat|those] seem[-s] to belong to [the % dobj]."
	LibMsg <cannot take component parts>		"[=> noun]library message grammatical numberThat|those] seem[-s] to be a part of [the % dobj]."
	LibMsg <cannot take hidden parts>		"[That|those] [isn't|aren't] available."
	LibMsg <cannot reach within closed containers>	"[The %] [isn't|aren't] open."
	LibMsg <cannot take scenery>			"[That's|they're] hardly portable."
	LibMsg <cannot take something fixed>		"[That's|they're] fixed in place."
	LibMsg <cannot reach within other places>	"[You] [=> present tense][can't][=> default tense] reach into [the % dobj]."

See also:

	LibMsg <cannot exceed carrying capacity>
	LibMsg <use holdall to avoid exceeding carrying capacity>

Section: Remove

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <report player removing>		"Removed."
	LibMsg <report npc removing>			"[The actor] remov[e-s] [the % dobj] from [the second noun]."
	LibMsg <cannot remove from closed containers>	"[It|they] [is|are] unfortunately closed."
	LibMsg <cannot remove something not within>	"But [it|they] [isn't|aren't] there [if lm_past]any more[otherwise]now[end if]."

Section: Drop

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <report player dropping>				"Dropped."
	LibMsg <report npc dropping>				"[The actor] [puts*] down [the % dobj]."
	LibMsg <cannot drop something already dropped>	"[The %] [is|are] already [here]."
	LibMsg <cannot drop not holding>			"[You] [if lm_past][didn't] have[otherwise][haven't+] got[end if] [that|those]."

See also:

	LibMsg <cannot drop clothes being worn>

Section: Insert

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <report player inserting>				"Done."
	LibMsg <report npc inserting>				"[The actor] [puts*] [the % dobj] into [the second noun]."
	LibMsg <cannot insert something not held>		"[You] [=> present tense]need[-s][=> default tense] to be holding [the % dobj] before [you] can put [it|them] into something else."
	LibMsg <cannot insert into something not a container>	"[That|those] can't contain things."
	LibMsg <cannot insert into closed containers>		"[The %] [is|are] closed."
	LibMsg <need to take off before inserting>		"[You]'ll need to take [it|them] off first."
	LibMsg <cannot insert something into itself>		"[You] [=> present tense][can't][=> default tense] put something inside itself."

See also:

	LibMsg <cannot insert if this exceeds carrying capacity>
	LibMsg <cannot insert clothes being worn>

Section: Put On

	To say would achieve:
	say "would [if lm_past]have achieved[otherwise]achieve"

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <report player putting on>			"[if there are multiple objects]Done[otherwise]library message grammatical numberYou] [puts*] [the % dobj] on [the second noun][end if]."
	LibMsg <report npc putting on>				"[The actor] [puts*] [the % dobj] on [the second noun]."
	LibMsg <cannot put something not held>			"[You] [=> present tense]need[-s][=> default tense] to be holding [the % dobj] before [you] can put [it|them] on top of something else."
	LibMsg <cannot put something on it-self>			"[You] [=> present tense][can't][=> default tense] put something on top of itself."
	LibMsg <cannot put onto something not a supporter>	"Putting things on [the % dobj] [would achieve] nothing."
	LibMsg <cannot put onto something being carried>	"[You] lack[-s] the dexterity."

See also:

	LibMsg <cannot put if this exceeds carrying capacity>
	LibMsg <cannot put clothes being worn>

Section: Give

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <report player giving>		"[You] [give*] [the % dobj] to [=> second noun][the $ dobj]."
	LibMsg <report npc giving>				"[The actor] [gives*] [the % dobj] to [=> second noun][the $ dobj]."
	LibMsg <cannot give what you have not got>	"[You] [aren't] holding [the % dobj]."
	LibMsg <cannot give to yourself>			"[You] juggl[e-s] [the % dobj] for a while, but [don't] achieve much."
	LibMsg <block giving>				"[The %] [doesn't|don't] seem interested."
	LibMsg <unable to receive things>		"[The %] [isn't|aren't] able to receive things."

Section: Show

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <cannot show what you have not got>	"[You] [aren't] holding [the % dobj]."
	LibMsg <block showing>				"[The %] [is|are] unimpressed."

Section: Enter

	To say appropriate action for enter verb:
	"(-"
		if (verb_word == 'stand') print "stand on";
		else if (verb_word == 'sit') print "sit down on";
		else if (verb_word == 'lie') print "lie down on";
		else print "enter";
	"-)".

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <report player entering>			"[You] [get*] [=> %][onto|into] [the % dobj]."
	LibMsg <report npc entering>				"[The actor] [gets*] [=> %][onto|into] [the % dobj]."
	LibMsg <cannot enter something already entered>	"But [you're] already [=> %][on|in] [the % dobj]."
	LibMsg <cannot enter something not enterable>		"[That's|they're] not something [you] [=> present tense][can][=> default tense] [appropriate action for enter verb]."
	LibMsg <cannot enter closed containers>			"[You] [=> present tense][can't][=> default tense] get into the closed [% dobj]."
	LibMsg <cannot enter something carried>		"[You] [=> present tense][can][=> default tense] only get into something free-standing."

See also:

	LibMsg <implicitly pass outwards through other barriers>
	LibMsg <implicitly pass inwards through other barriers>

Section: Exit, Get Off

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <report player exiting>				"[You] [get*] [=> %][off|out of] [the % dobj]."
	LibMsg <report npc exiting>				"[The actor] [gets*] [=> %][off|out of] [the % dobj]."
	LibMsg <cannot exit when not within anything>		"But [you] [aren't] in anything[<space> at the moment]."
	LibMsg <cannot exit closed containers>			"[You] [can't] get out of the closed [% dobj]."
	LibMsg <cannot get off things>				"But [you] [aren't] on [the % dobj][<space> at the moment]."
	LibMsg <cannot exit thing not within>			"But [you] [aren't] [=> %][on|in] [the % dobj]."

Section: Go

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <cannot go that way>				"[You] [can't] go that way."
	LibMsg <cannot travel in something not a vehicle>	"[You]'ll have to get [=> %][off|out of] [the % dobj] first."
	LibMsg <cannot go through concealed doors>		"[You] [can't] go that way."
	LibMsg <cannot go up through closed doors>		"[You] [are] unable to climb [the % dobj]."
	LibMsg <cannot go down through closed doors>		"[You] [are] unable to descend by [the % dobj]."
	LibMsg <cannot go through closed doors>		"[You] [can't], since [the %] [is|are] in the way."
	LibMsg <nothing through door>				"[You] [can't], since [the %] [leads*] nowhere."
	LibMsg <block vaguely going>				"You'll have to say which compass direction to go in.[/r]"
LibMsg <say npc goes>					"[The actor] [goes*] [%]"
LibMsg <say npc arrives>					"[The actor] arriv[e-s] [from the main object]"
LibMsg <say npc arrives from unknown direction>		"[The actor] arriv[e-s]"
LibMsg <say npc arrives at>				"[The actor] arriv[e-s] at [the %] [from the secondary object]"
LibMsg <say npc goes through>				"[The actor] [goes*] through [the %]"
LibMsg <say npc arrives from>				"[The actor] arriv[e-s] from [the %]"
LibMsg <say npc vehicle>					"[on|in] [the %]"
LibMsg <say npc pushing in front with player>		", pushing [the %] in front, and [you] along too"
LibMsg <say npc pushing in front>				", pushing [the %] in front"
LibMsg <say npc pushing away>				", pushing [the %] away"
LibMsg <say npc pushing in>				", pushing [the %] in"
LibMsg <say npc taking player along>			", taking you along"

To say from (dir - a direction):
    say "from ";
    if dir is down, say "below";
    if dir is up, say "above";
    if dir is not down and dir is not up, say "the [dir]".

Section: Brief, Super Brief, Verbose

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <brief look mode>				" is now in its normal 'brief' printing mode, which gives long descriptions of places never before visited and short descriptions otherwise."
	LibMsg <superbrief look mode>				" is now in its 'superbrief' mode, which always gives short descriptions of locations (even if [you] [haven't+] been there before)."
	LibMsg <verbose look mode>				" is now in its 'verbose' mode, which always gives long descriptions of locations (even if [you've+] been there before)."

Section: Look

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <report npc looking>	"[The actor] look[-s] around."
	LibMsg <top line what on>		" (on [the % dobj])"
	LibMsg <top line what in>		" (in [the % dobj])"
	LibMsg <top line what as>		" (as [inform 6 short name of %])"
	LibMsg <say things within>		"[what's inside % part 1] [what's inside % part 2]"
	LibMsg <say things also within>		"[what's inside % part 1] also [what's inside % part 2]"
	LibMsg <say things on>			"On [the main object] [what's on %]."

	To say what's on %:
	list the contents of the main object, prefacing with is/are, as a sentence,
		including contents, giving brief inventory information,
		tersely, not listing concealed items.

	To say what's inside % part 1:
	if main object is the location, say "[You]";
	otherwise say "[On|In] [the main object] [you]";
	say " [can]"

	To say what's inside % part 2:
	say "see ";
	list the contents of the main object, as a sentence, including contents,
		listing marked items only, giving brief inventory information,
		tersely, not listing concealed items;
	if the main object is the location, say " [here]";
	say "."

Section: Examine

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <report npc examining>		"[The actor] look[-s] closely at [the % dobj]."
	LibMsg <examine undescribed things>		"[You] [see*] nothing special about [the % dobj]."
	LibMsg <examine direction>			"[You] [see*] nothing unexpected in that direction."
	LibMsg <examine devices>			"[The %] [is|are][if lm_present] currently[end if] switched [if the main object is switched on]on[otherwise]off[end if]."

See also:

	LibMsg <examine in darkness>

Section: Search

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <report npc searching>			"[The actor] search[-es] [the % dobj]."
	LibMsg <cannot search unless container or supporter>	"[You] find[-s] nothing of interest."
	LibMsg <cannot search closed opaque containers>	"[You] [can't] see inside, since [the %] [is|are] closed."
	LibMsg <nothing found within container>			"[The %] [is|are] empty."
	LibMsg <nothing found on top of>			"There is nothing on [the % dobj]."

See also:

	LibMsg <search in darkness>

Section: Look Under

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <report npc looking under>		"[The actor] look[-s] under [the % dobj]."
	LibMsg <look under>					"[You] [find*] nothing of interest."

See also:

	LibMsg <look under in darkness>

Section: Open

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <report player opening>				"[You] open[-s] [the % dobj]."
	LibMsg <report npc opening>				"[The actor] open[-s] [the % dobj]."
	LibMsg <report unseen npc opening>			"[The %] opens."
	LibMsg <cannot open unless openable>			"[That's|they're] not something [you] [can] open."
	LibMsg <cannot open something locked>			"[It|they] seem[-s] to be locked."
	LibMsg <cannot open something already open>		"[That's|they're] already open."
	LibMsg <reveal any newly visible exterior initial text>	"[You] open[-s] [the % dobj], revealing "
	LibMsg <no newly visible exterior>			"nothing."

Section: Close

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <report player closing>				"[You] clos[e-s] [the % dobj]."
	LibMsg <report npc closing>				"[The actor] clos[e-s] [the % dobj]."
	LibMsg <report unseen npc closing>			"[The %] closes."
	LibMsg <cannot close unless openable>			"[That's|they're] not something [you] [can] close."
	LibMsg <cannot close something already closed>		"[That's|they're] already closed."

Section: Lock

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <report player locking>				"[You] lock[-s] [the % dobj]."
	LibMsg <report npc locking>				"[if the player can see the actor]library message grammatical numberThe actor] lock[-s] [the % dobj]."
	LibMsg <cannot lock without a lock>			"[That|they] [doesn't|don't] seem to be something [you] [can] lock."
	LibMsg <cannot lock something already locked>		"[That's|they're] locked[<space> at the moment]."
	LibMsg <cannot lock something open>			"First [you]'ll have to close [the % dobj]."
	LibMsg <cannot lock without the correct key>		"[That|they] [doesn't|don't] seem to fit the lock."

Section: Unlock

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <report player unlocking>			"[You] unlock[-s] [the % dobj]."
	LibMsg <report npc unlocking>				"[if the player can see the actor]library message grammatical numberThe actor] unlock[-s] [the % dobj]."
	LibMsg <cannot unlock without a lock>			"[That|they] [doesn't|don't] seem to be something [you] [can] unlock."
	LibMsg <cannot unlock something already unlocked>	"[That's|they're] unlocked[<space> at the moment]."
	LibMsg <cannot unlock without the correct key>		"[That|they] [doesn't|don't] seem to fit the lock."

Section: Switch On

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <report player switching on>			"[You] switch[-es] [the % dobj] on."
	LibMsg <report npc switching on>			"[The actor] switch[-es] [the % dobj] on."
	LibMsg <cannot switch on unless switchable>		"[That's|they're] not something [you] [can] switch."
	LibMsg <cannot switch on something already on>		"[That's|they're] already on."

Section: Switch Off

	Table of custom library messages (continued)
	Message Id						Message Text
	LibMsg <report player switching off>			"[You] switch[-es] [the % dobj] off."
	LibMsg <report npc switching off>				"[The actor] switch[-es] [the % dobj] off."
	LibMsg <cannot switch off unless switchable>		"[That's|they're] not something [you] [can] switch."
	LibMsg <cannot switch off something already off>		"[That's|they're] already off."

Section: Wear

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <report player wearing>		"[You] [put*] on [the % dobj]."
	LibMsg <report npc wearing>			"[The actor] [puts*] on [the % dobj]."
	LibMsg <cannot wear something not clothing>	"[You] [=> present tense][can't][=> default tense] wear [that|those]!"
	LibMsg <cannot wear not holding>		"[You're] not holding [that|those]!"
	LibMsg <cannot wear something already worn>	"[You're] already wearing [that|those]!"

Section: Take Off

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <report player taking off>		"[You] [take*] off [the % dobj]."
	LibMsg <report npc taking off>			"[The actor] [takes*] off [the % dobj]."
	LibMsg <cannot take off something not worn>	"[You're] not wearing [that|those]."

Section: Eating And Drinking, Senses

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <report player eating>			"[You] [eats*] [the % dobj]. Not bad."
	LibMsg <report npc eating>			"[The actor] [eats*] [the % dobj]."
	LibMsg <cannot eat unless edible>		"[That's|they're] plainly inedible."
	LibMsg <block drinking>				"[There's] nothing suitable to drink [here]."
	LibMsg <block tasting>				"[You] tast[e-s] nothing unexpected."
	LibMsg <block smelling>				"[You] smell[-s] nothing unexpected."
	LibMsg <block listening>				"[You] [hear*] nothing unexpected."

Section: Touching

	To say Keep your hands to yourself:
	say "[Keep] [your] hands to [yourself]"

	To say Keep:
	say "[=> player]";
	if lm_p2 and lm_sing, say "Keep";
	otherwise say "[You] should keep"

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <report player touching things>		"[You] [feel*] nothing unexpected."
	LibMsg <report npc touching things>		"[The actor] touch[-es] [the % dobj]."
	LibMsg <report player touching self>		"If [you] [=> present tense]think[-s][=> default tense] that'll help."
	LibMsg <report npc touching self>		"[The actor] touch[-es] [himself]."
	LibMsg <report player touching other people>	"[Keep your hands to yourself][if lm_p2 and lm_sing]![otherwise].[end if]"
	LibMsg <report npc touching other people>	"[The actor] touch[-es] [the % dobj]."

Section: Rhetorical Commands

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <block saying yes>			"That was a rhetorical question."
	LibMsg <block saying no>			"That was a rhetorical question."
	LibMsg <block saying sorry>			"Oh, don't [if using the American dialect option]apologize[otherwise]apologise[end if]."
	LibMsg <block swearing obscenely>		"Real adventurers do not use such language."
	LibMsg <block swearing mildly>			"Quite."

Section: Body Movement

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <block climbing>				"I don't think much [if lm_past]would have been[otherwise]is to be[end if] achieved by that."
	LibMsg <block jumping>				"[You] jump[-s] on the spot, fruitlessly."
	LibMsg <block swinging>			"[There's] nothing sensible to swing [here]."
	LibMsg <block waving hands>			"[You] wav[e-s], feeling foolish."

Section: Physical Interaction

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <block attacking>			"Violence [isn't|wasn't] the answer to this one."
	LibMsg <block burning>				"This dangerous act [would achieve] little."
	LibMsg <block cutting>				"Cutting [that|those] up [would achieve] little."
	LibMsg <block rubbing>				"[You] achiev[e-s] nothing by this."
	LibMsg <block setting to>			"No, [you] [=> present tense][can't][=> default tense] set [that|those] to anything."
	LibMsg <block tying>				"[You] [would achieve] nothing by this."
	LibMsg <report player waving things>		"[You] look[-s] ridiculous waving [the % dobj]."
	LibMsg <report npc waving things>		"[The actor] wav[e-s] [the % dobj]."
	LibMsg <cannot wave something not held>	"But [you] [aren't] holding [that|those]."
	LibMsg <squeezing people>			"[Keep your hands to yourself]."
	LibMsg <report player squeezing>		"[You] achiev[e-s] nothing by this."
	LibMsg <report npc squeezing>			"[The actor] squeez[e-s] [the % dobj]."
	LibMsg <block throwing at>			"[You] lack[-s] the nerve when it [comes|came] to the crucial moment."
	LibMsg <throw at inanimate object>	"Futile."

Section: Push, Pull, Turn

	To say nothing obvious happens:
	say "Nothing obvious happen[-s|ed][dot]"

	To say it is fixed in place:
	say "[It|those] [is|are] fixed in place[dot]"

	To say you are unable to:
	say "[You] [are] unable to[dot]"

	To say that would be less than courteous:
	say "That would [if lm_past]have been[otherwise]be[end if] less than courteous."

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <report player pushing>			"[nothing obvious happens]"
	LibMsg <report npc pushing>			"[The actor] push[-es] [the % dobj]."
	LibMsg <report player pulling>			"[nothing obvious happens]"
	LibMsg <report npc pulling>			"[The actor] pull[-s] [the % dobj]."
	LibMsg <report player turning>			"[nothing obvious happens]"
	LibMsg <report npc turning>			"[The actor] turn[-s] [the % dobj]."
	LibMsg <block pushing in directions>		"[The %] [if lm_past]could not[otherwise]cannot[end if] be pushed from place to place."
	LibMsg <not pushed in a direction>		"That's not a direction."
	LibMsg <pushed in illegal direction>		"Not that way [you] [=> present tense][can't][=> default tense]."
	LibMsg <cannot push something fixed in place>	"[It is fixed in place]"
	LibMsg <cannot pull something fixed in place>	"[It is fixed in place]"
	LibMsg <cannot turn something fixed in place>	"[It is fixed in place]"
	LibMsg <cannot push scenery>			"[You are unable to]"
	LibMsg <cannot pull scenery>			"[You are unable to]"
	LibMsg <cannot turn scenery>			"[You are unable to]"
	LibMsg <cannot push people>			"[That would be less than courteous]"
	LibMsg <cannot pull people>			"[That would be less than courteous]"
	LibMsg <cannot turn people>			"[That would be less than courteous]"

Section: Speech / Interpersonal Actions

	Table of custom library messages (continued)
	Message Id					Message Text
	LibMsg <block answering>			"There [is|was] no reply."
	LibMsg <block asking>				"There [is|was] no reply."
	LibMsg <block buying>				"Nothing [is|was] on sale."
	LibMsg <block kissing>				"[Keep] [your] mind on the game."
	LibMsg <block singing>				"[Your] singing [is|was] abominable."
	LibMsg <block telling>				"This provok[-es|ed] no reaction."
	LibMsg <telling yourself>			"[You] talk[-s] to [yourself] a while."

Section: Mental Actions

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <block thinking>			"What a good idea."
	LibMsg <block player consulting>		"[You] discover[-s] nothing of interest in [the % dobj]."
	LibMsg <block npc consulting>		"[The actor] look[-s] at [the % dobj]."

Section: Sleep And Waiting

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <block sleeping>			"[You] [aren't] feeling especially drowsy."
	LibMsg <block waking up>		"The dreadful truth is, this [is|was] not a dream."
	LibMsg <block waking other>		"That seem[-s|ed] unnecessary."
	LibMsg <report player waiting>		"Time pass[-es|ed]."
	LibMsg <report npc waiting>		"[The actor] wait[-s]."

Example: * Jeans & Rock - Some small changes to the standard messages.

	*: "Jeans & Rock" by Ibid

	Include Custom Library Messages by David Fisher.

	The Small Chamber is a room. "A small, nondescript chamber".
	The Large Chamber is a room. "A large chamber, otherwise nondescript."
	North of the Small Chamber is the Large Chamber.
	In the Small Chamber is a rock and some jeans.

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <cannot go that way>		"You don't seem to be able to go [%] from here."
	LibMsg <block listening>			"Absolute silence ..."
	LibMsg <block attacking>		"[The %] just sit[-s] there. As you expected."
	LibMsg <examine undescribed things>	"[It|they] look[-s] pretty normal to you."

	Test me with "listen / x rock / x jeans / hit rock / hit jeans / s / nw / n".

Note that in LibMsg <cannot go that way>, "[%]" is a direction like "south".

Example: * Jeans & Rock II - Different points of view.

	*: "Jeans & Rock II" by Ibid

	Include Custom Library Messages by David Fisher.

	The Small Chamber is a room. "A small chamber, totally nondescript.".
	The Large Chamber is a room. "A large chamber which is thoroughly nondescript."

	North of the Small Chamber is the Large Chamber.

	In the Small Chamber is a rock and some jeans.

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <cannot go that way>		"[You] [don't] seem to be able to go [%] from here."
	LibMsg <block attacking>		"[The %] just sit[-s] there. As [you] expected."
	LibMsg <examine undescribed things>	"[It|they] look[-s] pretty normal to [you dobj]."

	When play begins:
   		change the library message person to third person;
   		change the library message grammatical number to singular;
   		change the library message gender to gender feminine.

	Test me with "x rock / x jeans / hit rock / hit jeans / s".

Example: * Jeans & Rock III - Past tense messages.

	*: "Jeans & Rock III" by Ibid

	Include Custom Library Messages by David Fisher.

	The Small Chamber is a room. "A small chamber - nondescript.".
	The Large Chamber is a room. "A large, nondescript looking chamber."

	North of the Small Chamber is the Large Chamber.

	In the Small Chamber is a rock and some jeans.

	To say sit*:
   		if the library message tense is past tense, say "sat";
   		otherwise say "sit[-s]".

	Table of custom library messages (continued)
	Message Id				Message Text
	LibMsg <cannot go that way>		"[You] [don't] seem to be able to go [%] from here."
	LibMsg <block attacking>		"[The %] just [sit*] there. As [you] expected."
	LibMsg <examine undescribed things>	"[It|they] look[-s] pretty normal to [you dobj]."

	When play begins:
   		change the library message person to third person;
   		change the library message grammatical number to singular;
   		change the library message gender to gender feminine;
   		change the library message tense to past tense.

	Test me with "x rock / x jeans / hit rock / hit jeans / s / jump / listen to rock".

Example: * Out of World - Printing "out of world" messages in italic.

	*: "Out of World" by Ibid

	Include Custom Library Messages by David Fisher

	Space is a room.
	The meteor is in space.

	This is the start-italic rule:
		if there is a message id of library-message-id 
			in the Table of out of world message ids,
				say "[line break][italic type]".

	This is the end-italic rule:
		if there is a message id of library-message-id
			in the Table of out of world message ids,
				say "[roman type]".
	
	When play begins:
		change the before library messages rule to the start-italic rule;
		change the after library messages rule to the end-italic rule.

	Table of out of world message ids
	Message id
	LibMsg <undo succeeded>
	LibMsg <undo failed>
	LibMsg <undo not provided>
	LibMsg <cannot undo nothing>
	LibMsg <cannot undo twice in a row>
	LibMsg <oops failed>
	LibMsg <oops too many arguments>
	LibMsg <cannot do again>
	LibMsg <again usage>
	LibMsg <command not understood>
	LibMsg <command partly understood>
	LibMsg <command badly ended>
	LibMsg <command incomplete>
	LibMsg <command cut short>
	LibMsg <number not understood>
	LibMsg <cannot begin at comma>
	LibMsg <extra words before comma>
	LibMsg <unknown object>
	LibMsg <unknown verb>
	LibMsg <verb cannot have multiple objects>
	LibMsg <too many multiple objects>
	LibMsg <not that many available>
	LibMsg <no objects available>
	LibMsg <zero multiple objects>
	LibMsg <first N objects>
	LibMsg <excepted object not included anyway>
	LibMsg <Restart failed>
	LibMsg <Restore failed>
	LibMsg <Restore succeeded>
	LibMsg <Save failed>
	LibMsg <Save succeeded>
	LibMsg <Verify succeeded>
	LibMsg <Verify failed>
	LibMsg <transcript already on>
	LibMsg <transcript already off>
	LibMsg <start of transcript>
	LibMsg <end of transcript>
	LibMsg <transcript failed>
	LibMsg <end transcript failed>

	Test me with "x meteor / blah blah / jump / oops".

