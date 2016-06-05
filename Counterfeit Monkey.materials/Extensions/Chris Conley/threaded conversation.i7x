Version 5/150117 of Threaded Conversation by Chris Conley begins here.

"A conversation system tracking facts known, phrases spoken, and subjects of conversation."

"modified from Threaded Conversation by Emily Short and based on Alabaster by Emily Short, et. al."

Include Basic Screen Effects by Emily Short. 
Include Complex Listing by Emily Short.
Include version 11 of Conversation Framework by Eric Eve.

Definition: a person is other if he is not the player.

VOLUME ZERO - TROUBLE PROOFING - NOT FOR RELEASE

When play begins (this is the check for mis-defined items rule):
	let N be 0;
	repeat with item running through quips:
		if the item mentions the item:
			increment N;
			say "[line break][The item] mentions itself, which will cause the game to hang in play." (A);
	if N is positive:
		say "[paragraph break]ABORTING DUE TO BUGS FOUND. Would you like advice about how to fix these bugs? >";
		if the player consents, say "To resolve these, find where you've declared the listed items; notice where they mention subjects that are parts of their own names; and add a line such as 'Florble is a subject.' to your source *before* the quip appears for the first time. 

It is generally a good idea to declare all your conversation subjects towards the beginning of the source and before the quips appear. 

Similarly, if the named object is not a subject but something that actually appears in the game, make sure that the quips are all defined after the source code describing the world set-up." (B);
		stop game abruptly.

When play begins (this is the scan for unidentified subjects rule):
	repeat with item running through things which are mentioned by something:
		if the location of the item is nothing and the item is not a person and the item is not a backdrop: 
		[	People and backdrops might often begin the game out of play and be moved on and off;	]
		[	it's fair to assume that they're not secretly meant to be subjects.							]
			if the item is a subject:
				do nothing;
			otherwise:
				say "[The item] is a subject.[line break]" (A).


VOLUME ONE - QUIPS, FACTS, SUBJECTS

Book I - Definitions

Part One - Defining Subjects

A subject is a kind of object. The specification of a subject is "Something that quips can refer to, but which has no real-world presence or functionality."


Part Two - Defining Quips

A quip is a kind of thing. The specification of a quip is "A comment for the player to make. NPCs may respond in different ways."
	A quip has some text called the comment. [The PC's speech.]
	A quip has some text called the reply. [The NPC's response.]
	A quip has some text called the nag. 
	[	The nag is printed if the NPC expects an answer to this quip and isn't getting one.	]
	[	Unless the quip is a question or otherwise leading statement, it's probably best to leave this blank.	]
	A quip has some text called the true-name. The true-name of a quip is usually "[the printed name of the item described]". 
	[	This is the in-source name of the quip, if for some reason we've had to generate a different printed name for it.	]
	[	If we're using Conversation Builder, it will fill this in automatically.	]

A quip can be one-time or repeatable. A quip is usually one-time. 
[	A one-time quip can only be said once to each interlocutor; if it's restricted to a single person, then it can only be said once in the whole course of the game. 	]
[	Repeatable quips may be reused with each interlocutor, though it is recommended in that case to provide interesting alternate text in reply to them.	] 

A quip can be restrictive or unrestrictive. A quip is usually unrestrictive. [A restrictive quip means the player MUST say one of the things that directly follows it.]

A quip can be player-directed or NPC-directed. A quip is usually player-directed. 
[	An NPC-directed quip is one that an NPC might use to start a new line of conversation or to nudge the PC about something.	]
[	Accordingly, it has no comment property, only a reply -- the thing the NPC will say. Other quips may follow this quip, as usual.	]

A quip can be beat-opened or speech-opened. A quip is usually speech-opened. 
[	This is a kind of mark-up: does this quip start with a grounding beat, or simply speech?	]
[	The information is useful for advanced tweaking of conversational output; if we never use beat-opened, everything proceeds as normal.	] 

[Some quips are asking quips; others are telling quips; others are more vague sorts of conversational actions:] 
A quip can be performative or informative or questioning. A quip is usually performative.


The current quip is a quip that varies.
The previous quip is a quip that varies.
The grandparent quip is a quip that varies. 
[	Tracking previous discussion allows for better analysis of what conversation is currently plausible. 	]
[	This could have been done with a list, but in practice it is more efficient, and not significantly less useful, to track only the most recent three.	]


generic-quip is a quip. Availability rule for generic-quip: it is off-limits. [A starter quip, so that TC will compile even before any conversation has been defined.] 


Definition: a quip is viable if it is in the quip-repository.


Part Three - Defining Facts

A fact is a kind of object. Some facts are defined by the Table of All Known Facts.

Table of All Known Facts
fact	summary
generic-truth	"Life is hard."


Book II - Quip Relations

[Relations between quips are primarily used to create restrictions on when and how quips can be used.]

Part One - Quip Relations to Things

Mentioning relates various quips to various things. The verb to mention implies the mentioning relation. 

Understand "[something related by mentioning]" as a quip. 
[	This apparently humble line means that we can define a quip with the line "It mentions the queen." and then the player can use any vocabulary that pertains to the queen to raise this quip;	]
[	as in ASK ABOUT WOMAN, ASK ABOUT MONARCH, and so on.	]


Part Two - Quip Relations to Speakers

Quip-supplying relates various quips to various people. The verb to quip-supply (it quip-supplies, they quip-supply, it quip-supplied, it is quip-supplied) implies the quip-supplying relation.

Definition: a quip is character-tailored rather than universally-applicable if it quip-supplies someone.

Quip-awareness relates various people to various quips. The verb to recollect implies the quip-awareness relation. 
[This will be set when the characters learn things.]


Part Three - Quip Relations to Other Quips

[	Directly-following and indirectly-following are two standard ways of expressing how quips depend on one another. 	]
[	A quip that directly follows another can only occur as an immediate answer to it: this is suitable for identifying what replies are allowed only to certain questions.	]
[	A quip that indirectly follows another can be used at any time after the first quip has been spoken.	]

Directly-following-on relates various quips to various quips. 
The verb to directly-follow (it directly-follows, they directly-follow, it directly-followed, it is directly-followed) implies the directly-following-on relation.

Indirectly-following-on relates various quips to various quips. 
The verb to indirectly-follow (it indirectly-follows, they indirectly-follow, it indirectly-followed, it is indirectly-followed) implies the indirectly-following-on relation.

When play begins (this is the indirect-following initializing rule):
	repeat with item running through quips:
		now every quip which is directly-followed by the item is indirectly-followed by the item.
	
To decide whether immediately: 
[This convenient check allows us to vary quip text depending on whether we're following up on earlier conversation right away or belatedly.]
	decide on whether or not the current quip indirectly-follows the previous quip.


Part Four - Quip Relations to Scenes

[	We use a property here rather than a relation because it's slightly quicker; generally, quips will be restricted to just one scene, if at all.	]
[	If that proves to be too limiting, we could replace this section of code with a more generous one creating a various-to-various relation between quips and scenes.	]
A quip has a scene called proper scene. The proper scene of a quip is usually the Entire Game.


Book III - Fact Relations

[	Facts permit a different kind of gate-keeping between quips.	]
[	Some quips may require that the player know certain facts as a prerequisite to saying them; and facts can be learned from the surrounding world as well as from conversation.	]
[	This is useful for handling information that is present in multiple places in the model world.	]

Part One - Learning Facts

Fact-awareness relates various people to various facts. The verb to know implies the fact-awareness relation.

Before printing the name of a fact (called target) while an actor discussing something (this is the broadcast spoken facts rule):
	repeat with listener running through people who can see the person asked:
		now the listener knows the target;

Before printing the name of a fact (called target) (this is the player learns facts rule):
	now the player knows the target.

Rule for printing the name of a fact (this is the silence actual output of facts rule):
	do nothing instead.
	
To say forget (target - a fact): 
	repeat with listener running through people who can see the person asked:
		now the listener does not know the target.


Part Two - Thinking and Review of Known Facts

[This rule is provided here as an unused stub, which could be hooked up to the THINK action if needed.]

To know is a verb.

This is the recap of known facts rule:
	if the player does not know at least one fact:
		say "[We] [haven't] discovered much yet." (A) instead;
	say "[We] [think] back over the things that [we] [know]: [line break]  " (B);
	repeat with item running through facts:
		if the player knows the item:
			say "[summary of the item][line break]  (C)";


Book IV - Caching Dead Ends And Shallow Burials

Part One - Labeling Quips

[	Now that we've created a tree of relationships between quips, we're going to tag important features of each quip, indicating how it fits into the tree topology.	]
[	This requires some calculations at the start of play, but prevents many costly traversals through all quips from needing to be performed during play.	]
[	If this proves too time-consuming at start up, as in a very large game, then it might be worth disabling this rule and instead hard-coding the relation.	]
[	We used not to cache these things, which allowed greater flexibility, but in practice the flexibility was rarely needed, while the speed costs were considerable.	] 

A quip can be dead-ended or continuing. A quip is usually continuing.
A quip can be shallowly-buried or mid-thread. A quip is usually mid-thread.
A quip can be upwardly-restrictive or upwardly-free. A quip is usually upwardly-free.

When play begins (this is the caching thread position information rule):
	repeat with item running through quips:
		if the item directly-follows something:
			now the item is upwardly-restrictive;
		if the number of quips which indirectly-follow the item is 0:
			now the item is dead-ended;
		unless the item indirectly-follows something:
			now the item is shallowly-buried.
			[This is so that we can do thread-context searches through the indirect following tree, without having to explicitly define every direct following also to be an indirect following.]


Part Two - Cache-building

[	If the caching in Section 1 begins to introduce a noticeable lag at the startup of a new game, we may want some form of hard-code caching to circumvent it.	]
[	The following code will automatically build an appropriate cache when the game is run, which can then be copied and pasted back into the source.	]
[	To make the cache build again, delete the original cache from your source and re-compile the game.	]
[		]
[	To make this feature work, add the line	]
[		
	      Use hard cache.	
		]
[	to the main source of the game.	]

Use hard cache translates as (- Constant HARD_CACHE; -). 

Last when play begins (this is the cache reporting rule):
	unless the hard cache option is active:
		make no decision;
	say "The cache reporting rule is not listed in any rulebook. The caching thread position information rule is not listed in any rulebook. The check for mis-defined items rule is not listed in any rulebook. The scan for unidentified subjects rule is not listed in any rulebook. The indirect-following initializing rule is not listed in any rulebook.[paragraph break]" (A); 
	repeat with item running through cachable quips:
		say "[true-name of item] is [if item is upwardly-restrictive]upwardly-restrictive and[end if] [if item is dead-ended]dead-ended and[end if] [if item is shallowly-buried]shallowly-buried and[end if] a quip." (B); 
	repeat with item running through quips which directly-follow something:
		repeat with new running through quips which are directly-followed by item:
			say "[true-name of item] indirectly-follows [true-name of new]." (C); 

Definition: a quip is cachable
	if it is upwardly-restrictive
	or it is dead-ended
	or it is shallowly-buried.

	
	

VOLUME TWO - RECOMMENDING QUIPS TO THE PLAYER

Book I - Plausibility

The plausibility rules are an object-based rulebook. 
The plausibility rules have outcomes it is plausible (success), it is dubious (success), and it is implausible (failure).
[	Plausibility determines whether a given quip is something we should recommend at the moment.	]
[	How it is used could vary depending on the kind of game we're constructing.	]
[	In the case of a branching-menu conversation, it might be used to mark which menu branches are currently available to be selected; for ASK/TELL, it might mark especially relevant speech acts.	]

A plausibility rule for a quip (called target) (this is the implausible to repeat yourself rule):
	if the current interlocutor recollects the target, it is implausible.

A plausibility rule for a quip (called target) (this is the mid-thread plausibility rule): 
	unless the target is shallowly-buried or the target is quippishly-relevant, it is implausible.

A plausibility rule for a quip (called target) (this is the avoid topic-change where possible rule):
	if the current quip is a dead-ended quip, make no decision;
	if the current quip is mid-thread and the target is shallowly-buried, it is dubious;
	[In other words: we should not suggest to jump from the middle of one thread to the top of another thread, if we have other options.]

The last plausibility rule (this is the generic plausibility rule):
	it is plausible.
	
Chapter 1 - Quippish relevance

A quip can be marked-relevant or unmarked-relevant. [This has a crunchy name because it's a completely internal way of stashing information.]

Definition: a quip (called target) is quippishly-relevant:
	[say "checking quip-relevance of [the target][line break]";] 
	if the target indirectly-follows the current quip or the target indirectly-follows the previous quip: 
	[We don't need to test 'directly-follows', because we've set things up so that indirectly-follows also includes all directly-following cases.]
		now the target is marked-relevant;
		yes; 
	otherwise if the target indirectly-follows the grandparent quip and the previous quip indirectly-follows the grandparent quip and the current quip indirectly-follows the grandparent quip: 
	[We only want to admit great-aunts if we've been on more or less the same line of thought ever since; if we've changed the subject, these old floaters should be culled.]
		now the target is marked-relevant;
		yes;
	otherwise:
		now the target is unmarked-relevant;
		no.
		
Chapter 2 - 

Definition: a quip is recent
	if it is the current quip
	or it is the previous quip
	or it is the grandparent quip.

Definition: a quip is plausible:
	if the current interlocutor is not a person, no;
	if it is not flagged-ready, no;
	follow the plausibility rules for it;
	if the outcome of the rulebook is the it is plausible outcome, yes;
	no.


Book II - Availability

Availability rules are an object-based rulebook. The availability rules have outcomes it is available (success) and it is off-limits (failure).
[	Availability determines whether a given quip is even allowed to be used. Available quips are a superset of plausible quips, which are limited to those quips that are contextually relevant,	]
[	but (depending on the system) might not include everything that the player could reasonably choose to talk about at the moment.	]

Definition: a quip is available:
	follow the availability rules for it;
	if the outcome of the rulebook is the it is available outcome, yes.

The first availability rule (this is the don't talk to no one rule):
	if the current interlocutor is not a person:
		it is off-limits; [But this should never happen!]

A person can be currently listening. A person is usually not currently listening.

Addressing everyone is initially false.

A first availability rule when addressing everyone is true (this is the only local people are listening rule):
	now everyone is not currently listening;
	now every other person enclosed by the location is currently listening; 

Definition: a quip is scene-restricted unless the proper scene of it is the Entire Game.

An availability rule for a scene-restricted quip (called the target) (this is the restriction of quips to scenes rule): 
	if the proper scene of the target is happening, make no decision;
	otherwise it is off-limits.

An availability rule for a quip (called the target) (this is the prevention of off-topic answers for restrictive quips rule): 
	let the chosen quip be a quip;
	if the person asked is the player:
		let the chosen quip be the current quip;
	otherwise:
		let the chosen quip be the previous quip;
	if the chosen quip is restrictive:
		if the target directly-follows the chosen quip, make no decision;
		it is off-limits.

An availability rule for a quip (called the target) (this is the restriction of quips to special people rule):  
	if addressing everyone is true:
		unless the target is universally-applicable or someone quip-supplied by the target is currently listening,
			it is off-limits;
	otherwise if the target is character-tailored and the current interlocutor is not quip-supplied by the target:
		it is off-limits;
	make no decision;

An availability rule for a quip (called the target) (this is the restriction of one-time quips rule): 
	if addressing everyone is true:
		if the target is a one-time quip and the target is recollected by the player:
			it is off-limits;
	otherwise if the target is a one-time quip and the current interlocutor recollects the target: 
		it is off-limits;
	make no decision;

An availability rule for a upwardly-restrictive quip (called the target) (this is the restriction of quips to appropriate previous quips rule):  
	if the target directly-follows the current quip, make no decision;
	otherwise it is off-limits.

An availability rule for a mid-thread quip (called the target) (this is the restriction by indirect-following rule): 
	if addressing everyone is true and the target indirectly-follows something which is recollected by the player:
		make no decision; 
	if the target indirectly-follows something which is recollected by the current interlocutor:
		make no decision;
	otherwise:
		it is off-limits.

An availability rule for an NPC-directed quip (this is the player can't say NPC-directed quips rule):
	it is off-limits.

The last availability rule (this is the generic availability rule): 
	it is available.
	

Book III - Peripheral Quips

Definition: a quip (called the target quip) is peripheral:
	if the target quip is not flagged-ready, no;
	if addressing everyone is false and the current interlocutor is a person and the current interlocutor recollects the target quip, no;
	[if it is shallowly-buried, yes;]
	follow the plausibility rules for the target quip;
	if the outcome of the rulebook is the it is dubious outcome:
		yes;
	otherwise if the outcome of the rulebook is the it is plausible outcome and the target quip is shallowly-buried:
		yes;
	no.

Listing peripheral quips is an activity.

Rule for listing peripheral quips (this is the standard listing subject changes rule):
	prepare a list of peripheral quips; 
	say "[quip-suggestion-phrase][the prepared list delimited in disjunctive style]." (A).


Book IV - Offering Hints To The Player

[This is where we give the player a chance to pick from a list of available quips.]

Part One - Listing Plausible Quips Activity

Listing plausible quips is an activity.

A quip can be listed-plausible or unlisted-plausible.

Before listing plausible quips (this is the initialize quip plausibility before hinting rule):
	now every quip is unlisted-plausible.

Before asking which do you mean (this is the initialize quip plausibility before disambiguating rule):
	now every quip is unlisted-plausible.

After printing the name of a quip (called target) while asking which do you mean (this is the mark disambiguated quips plausible rule):
	now the target is listed-plausible. 
 
After printing the name of a quip (called target) while listing plausible quips (this is the mark printed plausible quips rule):
	now the target is listed-plausible.

After quip-introducing a quip (called target) (this is the mark special plausible quips rule):
	now the target is listed-plausible.

Rule for listing plausible quips (this is the standard quip plausibility rule):
	prepare a list of plausible quips; 
	unless the number of filled rows in the Table of Scored Listing is positive:
		rule succeeds;
	otherwise:
		repeat through the Table of Scored Listing:
			carry out the quip-introducing activity with the output entry;
		[This could have blanked some rows out, so we need to check again:]
		if the number of filled rows in the Table of Scored Listing is positive, 
			say "[quip-suggestion-phrase][the prepared list delimited in disjunctive style]." (A);

Before printing the name of a questioning quip while listing plausible quips or listing peripheral quips (this is the prefix-ask rule):
	say "ask " (A).

Before printing the name of an informative quip while listing plausible quips or listing peripheral quips (this is the prefix-say rule):
	say "say " (A).


Part Two - Customizing Listing Plausible Quips

[We can change the wording with which the hint is offered by changing the quip-suggestion phrase:]
quip-suggestion-phrase is some text that varies. The quip-suggestion-phrase is "[We] [could] ".

quip-introducing something is an activity. 

[And the following phrases make it more convenient to write our own rules for quip-introducing specific quips or quip-combinations.]

To list no other/more quips: 
	empty out Table of Scored Listing. 
	[We may add this to the end of a quip-introducing activity to say that we don't care what other quips may be queued because we've decided that we want to limit what we tell the player.]

To say list no other quips: 
	list no other quips.

To decide whether any/-- other quips remain:
	if the number of filled rows in the Table of Scored Listing is 0, no;
	yes.

To decide what number is the number of remaining quips:
	decide on the number of filled rows in the Table of Scored Listing.

After printing the name of a quip (called target) while quip-introducing (this is the remove hinted quips from the listing table rule):
	strip the target from the table.

To strip (chosen quip - a quip) from the/-- table:
	if the chosen quip is an output listed in the Table of Scored Listing:
		choose row with output of chosen quip in the Table of Scored Listing;
		blank out the whole row.
[	We use a table rather than a property of the objects to be listed in order to minimize time-consuming loops over the entire set of quips in the world.	]
[	We use a table rather than a list because this extension was started before lists existed in their current form (but this may be lower-overhead anyway).	]


Part Three - Offer Hint Quips Rule

[	This is what actually triggers the suggestion of hints. The offer hint quips rule happens quite late in the turn sequence,	]
[	after all other conversation has been cleared and all other events during the turn have been taken care of. 	]
[	This guarantees that nothing important will have changed between the hinting and the player's next command.	]

This is the offer hint quips rule: 
	if tc reparse flag is false: [We don't want to also display hints before conversation, if we have just implicitly greeted someone; only just before the player's next command.]
		carry out the listing plausible quips activity. [Hint about quips if there's anything in the table that's particularly unusual.]

The offer hint quips rule is listed after the adjust light rule in the turn sequence rules.

[	This rule is very important: it tags quips available before running a new turn. 	]
[	Thus, the game doesn't have to reassess availability on the fly, during plausibility tests or during parsing.	] 
[	On the other hand, it means that we should not test availability or plausibility on our own without first calling this rule.	]
This is the relabel available quips rule: 
	now every quip is flagged-unready; 
	repeat with item running through viable quips: 
		if item is available, now item is flagged-ready. 
[	Thus, we can also remove quips from the quip-repository in order to skip considering them;	]
[	if for instance we only want to consider quips which are relevant to the current scene, or to the current interlocutor.	]

A quip can be flagged-ready or flagged-unready.

The relabel available quips rule is listed after the adjust light rule in the turn sequence rules. 
[	The rule needs to appear late in the turn sequence so that if some event changes the identity of the current interlocutor, 	]
[	the quips are correctly labeled based on that information.	]

Last when play begins (this is the setting the stage for play rule): 
	now the current quip is generic-quip;
	follow the relabel available quips rule.


Book V - Disambiguation

Part One - Stripping Add-ons from Player's Command

After reading a command (this is the flatten ifs rule):
	if the player's command includes "ask if":
		replace the matched text with "ask whether".

After reading a command (this is the thrashing hopelessly rule):
	if the player's command matches "say" or the player's command matches "ask": 
	[These are for cases where the player has typed only a single command, with no specified direct object.]
		now thrashing-hopelessly is true;
	otherwise:
		now thrashing-hopelessly is false.

Thrashing-hopelessly is a truth state that varies. 
[	We want to avoid a case where the player just types SAY or ASK, and there's only one thing that follows the current quip,	]
[	so the game chooses that, even though the player exercised no will in selecting it (and it may not have even been suggested to the player as an option).	]


Part Two - Identifying Matched Quips

[Bland as these may seem, they're the result of a lot of testing about what produces the most sensible defaults. Modify with caution.]

Definition: a thing is parse-matched if it fits the parse list.

To decide whether (N - an object) fits the parse list:
	(- (FindInParseList({N})) -)

Include (-
#ifndef FindInParseList;
[ FindInParseList obj i k marker;
	marker = 0;
	for (i=1 : i<=number_of_classes : i++) {
	while (((match_classes-->marker) ~= i) && ((match_classes-->marker) ~= -i)) marker++;
	k = match_list-->marker;  
	if (k==obj) rtrue;
	}
	rfalse;
];
#endif;
-) 

Disambiguating quips is initially false.

Rule for asking which do you mean when everything parse-matched is a quip: 
	if the current interlocutor is not a person,
		say "[text of cannot talk without an interlocutor rule response (A)][line break]" instead; ['You're not talking to anyone right now']
	now disambiguating quips is true;
	carry out the listing matched quips activity.


Part Three - Listing Matched Quips to the Player

Listing matched quips is an activity.

Rule for listing matched quips (this is the standard quip disambiguation rule):
	let L be the list of parse-matched things;
	empty out the Table of Scored Listing;
	repeat with item running through L:
		choose a blank row in the Table of Scored Listing;
		now output entry is the item; 
		[There are easier ways to do this, but I've handcoded it for speed reasons.]
	say "What would [we] like to discuss: [the prepared list delimited in disjunctive style]?" (A).


Part Four - Preferring Quips Among Multiple Matches

Does the player mean discussing something that indirectly-follows the current quip (this is the obvious clarification rule):
	if thrashing-hopelessly is true, make no decision;
	otherwise it is very likely.

Does the player mean discussing something marked-relevant (this is the keep in thread where possible rule): 
	if thrashing-hopelessly is true, make no decision;
	otherwise it is likely. 
	[We can rely on the marked-relevance here, because we will have reset it just before reading the command which we're now trying to interpret: so the game-state will not have changed.]

Definition: a quip is content-relevant rather than content-irrelevant if it mentions something which is mentioned by the current quip.

Does the player mean discussing something content-irrelevant (this is the make most natural transitions rule):
	if thrashing-hopelessly is true, make no decision;
	otherwise it is unlikely. 
[	If we raise a new subject and there is a quip there which is about the new subject but also about one of our current subjects,	]
[	that should make it a better follow-on than one of the quips that is relevant *only* to the new subject.	]
	
Does the player mean discussing a subject (this is the subjects should not be parsed rule):
	it is very unlikely. [Subjects exist only to refer to quips.]
	
Does the player mean discussing something listed-plausible (this is the plausible quips are probably intended rule):
	it is likely.
	
Does the player mean discussing something flagged-ready (this is the available quips are probably intended rule):
	it is likely.
	
Does the player mean discussing something unlisted-plausible (this is the implausible quips are probably not intended rule):
	it is unlikely.
	
Does the player mean doing something with a flagged-unready quip (this is the unavailable quips are probably not intended rule):
	it is very unlikely.


Book VI - Clarifying the Parser's Choice

Rule for clarifying the parser's choice of a quip (this is the don't clarify quip choice rule): 
	do nothing instead. [As a rule, we avoid exposing the internals this way.]



VOLUME THREE - PERFORMING DISCUSSION

Book 1 - The Current Interlocutor

Understand "himself" as a man when the item described is the current interlocutor.
Understand "herself" as a woman when the item described is the current interlocutor.

Definition: a person is talk-eligible rather than talk-ineligible if it is the current interlocutor. 

Part One - The Discussing Action 

[(in place of Chapter  1 - Action Definitions in Conversation Framework by Eric Eve)]

[	TODO: Plug in different interfaces: one interface that allows a menu representation, one that allows topic-menus, one that's pure ask/tell.	]
[	This will need to manage the player input to allow different conversation actions, and to determine which quips are currently plausible (either to be put on the menu or to be recommended).	]

Chapter 1 - Understanding and basic definitions

Understand the commands "ask", "tell", "say",  "discuss", "answer", "a", "t" as something new.
	
To say regarding it: now the prior named object is nothing. [A useful shorthand.]

Definition: a quip is typable if it is listed-plausible or it is flagged-ready.

The quip-repository is a privately-named transparent closed unopenable container.
When play begins: now every quip is in the quip-repository.

After deciding the scope of the player while discussing, discussing something with (this is the quip scope handling rule):
	place the quip-repository in scope.
	[This is a bit of a hack, but the out-of-play container turns out to be a very convenient way to control the scope-limiting of quips.]
	
Understand "say bye/goodbye/cheerio/farewell" as leavetaking. [The system needs to recognize that this is not an attempt at conversation.]

Section 1a - discussing it with

Discussing it with is an action applying to two visible things. 

Understand
 	"discuss [a typable quip] with [someone]" or
	"say [a typable quip] to [someone]" as discussing it with
	when the current interlocutor is a person.
	
Understand 
	"tell [someone] [a typable informative quip]" or 
	"ask [someone] [a typable questioning quip]" or
	"tell [someone] that/about [a typable informative quip]" or 
	"ask [someone] that/about [a typable questioning quip]" as discussing it with (with nouns reversed)
	when the current interlocutor is a person.
	
After reading a command when the player's command includes "say/ask/answer/discuss/tell/a/t" and the player's command includes "about" and the player's command does not include "ask/tell/a/t about":
	if the player's command includes "[someone talk-eligible]":
		cut the matched text.
	 
Rule for supplying a missing noun when discussing something with and the player's command includes "[a quip]" (this is the interlocutor is assumed rule): 
	try discussing the second noun instead.
	
Check discussing something with a talk-ineligible person (this is the implicitly greet a named potential conversant rule):
	implicitly greet the second noun;
	if the second noun is the current interlocutor:
		follow the relabel available quips rule; [We need to ready the set of quips supplying this new interlocutor.]
	otherwise:
		say "[We] [aren't] talking to [the second noun]." (A) instead.
	
Carry out discussing it with:
	try discussing the noun.

Section 1b - discussing

Discussing is an action applying to one visible thing.  

Understand 
	"talk about/-- [a typable quip]" and
	"say [a typable quip]" and
	"discuss [a typable quip]" as discussing.

Understand
	"change the/-- subject to [a typable quip]" and
	"tell about [a typable informative quip]" and
	"ask about [a typable questioning quip]" and
	"tell [a typable informative quip]" and
	"ask [a typable questioning quip]" as discussing.
	
Understand the command "a" as "ask". 
Understand the command "t" as "tell".

Understand "[a typable quip]" as discussing. [This originally read "a typable perfomative quip"; let's see if this greater permissiveness breaks anything...]


Chapter 2 - Setting discussing variables

Break after reply is a truth state that varies. [If a character has multiple replies in a single turn, we don't want the final paragraph breaks to stack up.]

Setting action variables for an actor discussing: 
	now break after reply is true;
	if the current quip is not the noun and the noun is a quip: [Do not advance these records if an NPC is merely replying to a topic the PC introduced.]
		now the grandparent quip is the previous quip;
		now the previous quip is the current quip;
		now the current quip is the noun.
		
		
Chapter 3 - Tailored error messages
	
Discussing is verbalizing. Discussing something with is verbalizing.
	
Before doing something with a quip (this is the quips are not tangible rule):
	unless we are verbalizing, say "[text of  parser error internal rule response (A)][line break]" (A) instead; ['I didn't understand that sentence.']
	continue the action.

Rule for printing a parser error when the latest parser error is the can't see any such thing error (this is the quips are not visible rule):
	if the player's command includes "say/ask/answer/discuss/tell/a/t" or the player's command includes "[any quip]":
		if the current interlocutor is a person and tc reparse flag is false:
			say "That doesn't seem to be a topic of conversation at the moment." (A) instead;
		otherwise:
			say "[text of implicit-conversing needs current interlocutor rule response (D)][line break]" (B) instead; ['You aren't talking to anyone.']
	otherwise:
		make no decision.	
		
Rule for printing a parser error when the latest parser error is the noun did not make sense in that context error (this is the prevent context error rule):
	if the player's command includes "say/ask/answer/discuss/tell/a/t" or the player's command includes "[any quip]" or the current interlocutor is not a person:
		say "[text of parser error internal rule response (N)][line break]" (A) instead; ['Not a verb I recognize.']
	otherwise:
		make no decision.
		

Chapter 4 - The Player Discussing

Check discussing (this is the cannot talk without an interlocutor rule):
	unless the current interlocutor is a person:
		say "[We]['re not] talking to anyone right [now]." (A) instead.

Carry out discussing (this is the stop any planned casual follow-ups rule):
	unless addressing everyone is true:
		delete immediate optional conversation for the current interlocutor.

Carry out discussing (this is the prepare a reply rule):
	queue noun as immediate obligatory.

To mention is a verb.

Report discussing (this is the say the player's line rule): 
	if noun provides the property comment:
		say "[comment of the noun][paragraph break]" (A); 
	otherwise:
		say "[We] [mention] [the noun]." (B).


Chapter 5 - Other People Discussing
	
Carry out someone discussing (this is the everyone has heard rule):
	if the player can see the actor:
		now the player recollects the noun;
	now the actor recollects the noun. [This comes after the preceding line so that we can check the player has repeated themselves.]

Carry out someone discussing something which is not quippishly-relevant (this is the mark changes of subject rule): 
	if the noun is not NPC-directed:
		carry out the subject-changing activity. 
		[	This doesn't happen until the other party responds, so that the NPC has the option of ignoring our attempt to change the subject, and instead sticking to the existing thread.	]
		[	Only when the NPC takes up and responds in the new thread has the subject been successfully changed.	]

Carry out someone discussing a one-time character-tailored quip which quip-supplies the current interlocutor (this is the eliminate used quips rule):  
	now the noun is nowhere; [This is so that we are steadily whittling away single-use quips after they are discussed.]

Report someone discussing something (this is the interlocutor's reply rule):
[	This is a report, rather than a carry out rule, so that in theory characters can discuss things in another room, exchanging information behind the player's back.	]
[	It also means that we can override the report rule without messing up any of the other quip-machinery accounting that needs to happen during the action.	]
	if the noun provides the property reply:
		say "[reply of the noun]" (A);
		if break after reply is true and the noun is strongly-phrased, say paragraph break;
		if the noun is weakly-phrased, say " [run paragraph on]" (B);
		now break after reply is false. [Even if one reply recursively induces this character to perform another immediately after, we still only want to print one paragraph break at the end.]


Chapter 6 - Marking Changes of Subject

["Changing the subject" is triggered in the "mark changes of subject rule", and occurs when we have dramatically shifted out of one thread-in-progress to some other line of conversation.]

Subject-changing is an activity. 
[	When we change the subject, several things happen. First, we make note of how high up we had joined the new thread, so that we can use this information for future relevance calculations.	]
[	Second, we erase old queued conversation, if it was optional: the interlocutor might have been planning to follow up on something in the previous thread, 	]
[	but now that we've changed the subject, we don't want the interlocutor breaking flow by jumping back to the old topic.	]

Rule for subject-changing (this is the default changing of subject rule):
	if addressing everyone is true:
		repeat with listener running through other people:
			delete purgeable conversation for the listener;
	otherwise if the current interlocutor is a person:
		delete purgeable conversation for the current interlocutor;
	now the grandparent quip is the noun;

[Chapter 2 - TC Greeting definitions (in place of Chapter 1 - Greeting Definitions in Conversation Framework by Eric Eve)

Asking someone about something is conversing.
Telling someone about something is conversing.
Answering someone that something is conversing.
Asking someone for something is conversing.
Discussing something with someone is conversing.
Discussing something is conversing.

Asking someone about something is speaking.
Telling someone about something is speaking.
Answering someone that something is speaking.
Asking someone for something is speaking.
Discussing something is speaking.
Discussing something with someone is speaking.


Saying yes is speaking.
Saying no is speaking.
Saying sorry is speaking.]


[Chapter 3 (in place of Chapter  2 - Some useful default rules in Conversation Framework by Eric Eve)]



VOLUME FOUR - PLANNED CONVERSATION AND CHAT QUEUES

Book I - Queuing New Replies 

[	Here we handle the idea that NPCs have an assortment of things that they're going to say next. 	]
[	Replies to the player's commentary get put at the beginning of the list, so that they happen most immediately.	]

Part One - The Planned Conversation

A person has a list of objects called the planned conversation.

To decide which quip is the quip-next-queued:
[Note: quip-next-queued will not be meaningful if addressing everyone.]
	let next topic be entry 1 in the planned conversation of the current interlocutor;
	decide on next topic.

Definition: a person (called the chosen person) is eager-to-speak:
	if the number of entries in the planned conversation of the chosen person is greater than 0:
		let next topic be entry 1 in the planned conversation of the chosen person;
		if the quip-precedence of the next topic is immediate optional, yes;
	no.

Definition: a person (called the chosen person) is urgently eager-to-speak:
	if the number of entries in the planned conversation of the chosen person is greater than 0:
		let next topic be entry 1 in the planned conversation of the chosen person;
		if the quip-precedence of the next topic is immediate obligatory, yes;
	no.

Definition: a person (called the chosen person) is ready for transition:
[In other words, we don't need to add an intervening grounding beat: the subsequent quip already provides its own.]
	if the number of entries in the planned conversation of the chosen person is positive:
		let the next topic be entry 1 in the planned conversation of the chosen person;
		if the next topic is beat-opened, yes;
	no.

Definition: a person (called the chosen person) is likely to continue: 
[	This differs from the other definitions in that it can be used in a 'report someone discussing...' rule,	]
[	to check whether they're likely to proceed to the 'avoiding talking heads' rule and subsequent discussion phases.	]
	if the number of entries in the planned conversation of the chosen person is greater than 1 and the current quip is not restrictive:
		yes;
	if the current quip is restrictive and the nag of the current quip is not "":
		yes;
	no.

Definition: a person (called the chatterbox) is finished talking if the number of entries in the planned conversation of the chatterbox is 0.

To decide whether any conversation is queued for (chosen person - a person):
	if the number of entries in the planned conversation of the chosen person is greater than 0, yes;
	no.

To decide whether no conversation is queued for (chosen person - a person):
	if any conversation is queued for chosen person, no; 
	yes.


Part Two - Quip Precedences

A quip-precedence is a kind of value.
Immediate obligatory, immediate optional, postponed obligatory and postponed optional are quip-precedences.
Every quip has a quip-precedence.



[	"immediate obligatory" is appropriate for those things that must be said at once: these typically include answers to the player's questions. 	]
[		]
[	"postponed obligatory" are those things which may be infinitely deferred by the player's questions, but must occur sooner or later,	]
[	and which cannot be wiped away by the player's decision to change the subject. 	]
[		]
[	"postponed optional" are deferrable, casual comments that would become out of place if the player does change the subject. 	]
[		]
[	Finally, "immediate optional" are for casual things that the NPC might say on the turn after queuing if the player doesn't distract him,	]
[	but which should be discarded (because they will have become conversationally irrelevant) if any comment intervenes.	]
 
 
Part Three - The Queue

Chapter 1 - Clearing the queue

To clear a/the/-- (chosen quip - a quip) from queue:
	remove the chosen quip from the planned conversation of the current interlocutor, if present.

To clear a/the/-- (chosen quip - a quip) from queue of (chosen person - a person):
	remove the chosen quip from the planned conversation of the chosen person, if present.


Chapter 2 - Adding to the queue

Quip-triggering relates various quips to various quips. 
The verb to quip-trigger (it quip-triggers, they quip-trigger, it quip-triggered, it is quip-triggered) implies the quip-triggering relation. 
[This relation is used entirely for debugging purposes: it allows us to build more accurate schematic diagrams of the relationships between quips.]

To say conditionally queue a/the/-- (chosen quip - a quip):
	if the player does not recollect the chosen quip:
		say queue the chosen quip.

To say queue a/the/-- (chosen quip - a quip):
	queue chosen quip;
	now the current quip quip-triggers the chosen quip.

To say casually queue a/the/-- (chosen quip - a quip):
	casually queue the chosen quip.

To say queue a/the/-- (chosen quip - a quip) as (chosen precedence - a quip-precedence):
	now the current quip quip-triggers the chosen quip;
	queue chosen quip as the chosen precedence. 

To say queue a/the/-- (chosen quip - a quip) as (chosen precedence - a quip-precedence) for (chosen person - a person):
	now the current quip quip-triggers the chosen quip;
	queue the chosen quip as the chosen precedence for the chosen person. 

To say queue a/the/-- (chosen quip - a quip) for (bystander - a person):
	add the chosen quip at entry 1 in the planned conversation of the bystander, if absent.

To say queue a/the/-- (chosen quip - a quip) last for (bystander - a person):
	if the person asked is not the player and the person asked is not the current interlocutor:
		add the chosen quip to the planned conversation of the person asked, if absent;

To casually queue a/the/-- (chosen quip - a quip): 
[	This is designed to make it easier to have NPCs react to player actions with verbal replies. To ensure that their conversational asides won't disrupt required flow,	]
[	these remarks aren't queued if the current quip is something restrictive. We also guard against repetition and against queuing for someone who isn't the current interlocutor.	]
[	It won't do anything when "addressing everyone" because it won't know who should have the quip queued.	]
	unless addressing everyone is true: 
		if the current quip is not restrictive and the current interlocutor does not recollect the chosen quip:
			unless the chosen quip is character-tailored and the chosen quip does not quip-supply the current interlocutor:
				queue the chosen quip as immediate optional. 

To follow-up queue a/the/-- (chosen quip - a quip): 
	unless addressing everyone is true: 
		if the current quip is not restrictive and the current interlocutor does not recollect the chosen quip:
			unless the chosen quip is character-tailored and the chosen quip does not quip-supply the current interlocutor:
				queue the chosen quip as postponed optional. 

To queue a/the/-- (chosen quip - a quip):  
	if the current interlocutor is a person:
		add the chosen quip at entry 1 in the planned conversation of the current interlocutor, if absent.

To queue a/the/-- (chosen quip - a quip) last:
	if the current interlocutor is a person and the chosen quip is not listed in the planned conversation of the current interlocutor:
		add the chosen quip to the planned conversation of the current interlocutor.

To queue a/the/-- (chosen quip - a quip) for (bystander - a person):
	if the chosen quip is not listed in the planned conversation of the bystander:
		add the chosen quip at entry 1 in the planned conversation of the bystander.

To queue a/the/-- (chosen quip - a quip) last for (bystander - a person):
	if the chosen quip is not listed in the planned conversation of the bystander:
		add the chosen quip to the planned conversation of the bystander.

To queue a/the/-- (chosen quip - a quip) as (chosen precedence - a quip-precedence) for (bystander - a person): 
	now the quip-precedence of the chosen quip is the chosen precedence;
	if the chosen precedence is immediate obligatory or the chosen precedence is immediate optional:
		delete immediate optional conversation for the bystander; 
		[	If we have another, optional comment waiting in line, we want to get rid of that, because it's no longer relevant;	]
		[	otherwise we could find a character spooling out a stack of time-sensitive replies long after their moment has passed.	]
		queue the chosen quip for the bystander;
	otherwise:
		queue the chosen quip last for the bystander.

To queue a/the/-- (chosen quip - a quip) as (chosen precedence - a quip-precedence): 
	if the current interlocutor is a person:
		now the quip-precedence of the chosen quip is the chosen precedence;
		if the chosen precedence is immediate obligatory or the chosen precedence is immediate optional:
			delete immediate optional conversation for the current interlocutor;
			queue the chosen quip;
		otherwise:
			queue the chosen quip last;


Chapter 3 - Checking queue - Not for release

Understand "queue [someone]" as checking queue for. Checking queue for is an action out of world, applying to one thing.

Check checking queue for:
	if the number of entries in the planned conversation of the noun is 0:
		say "No conversation is planned for [the noun]." instead.

Carry out checking queue for:
	repeat with item running through the planned conversation of the noun:
		say "[item]: [quip-precedence of item][line break]";


Book II - Triggering Queued Conversation

Part One - Performance Phrases

To perform the/-- next queued conversation for (chosen person - a person):
	if the number of entries in the planned conversation of the chosen person is positive:
		let next topic be entry 1 in the planned conversation of the chosen person;
		clear the next topic from queue of the chosen person;
		try the chosen person discussing the next topic.

To perform the/-- (chosen precedence - a quip-precedence) conversation for every person:
	if the current interlocutor is a person and the current interlocutor is visible,
		perform the chosen precedence conversation for the current interlocutor;
	repeat with target running through visible people who are not the player:
		if the target is not the current interlocutor, perform the chosen precedence conversation for the target.

To perform the/-- (chosen precedence - a quip-precedence) conversation for (chosen person - a person):
	if the number of entries in the planned conversation of the chosen person is positive:
		let next topic be entry 1 in the planned conversation of the chosen person;
		if the quip-precedence of the next topic is the chosen precedence:
			clear the next topic from queue of the chosen person;
			try the chosen person discussing the next topic.
	 
To perform the/-- next queued conversation for every person:
	if the current interlocutor is a person and the current interlocutor is visible,
		perform the next queued conversation for the current interlocutor;
	repeat with target running through visible people who are not the player:
		if the target is not the current interlocutor, perform the next queued conversation for the target.


Part Two - Deletion Phrases

To delete all/-- purgeable conversation/quips for (chosen person - a person):
	delete postponed optional conversation for the chosen person;
	delete immediate optional conversation for the chosen person;

To delete all/-- queued conversation/quips for (chosen person - a person):
	truncate the planned conversation of the chosen person to 0 entries.

To delete (chosen precedence - a quip-precedence) conversation for (chosen person - a person):
	repeat with item running through the planned conversation of chosen person:
		if the quip-precedence of the item is the chosen precedence:
			remove the item from the planned conversation of the chosen person.


Part Three - Conversation Reply Rules

[	This is what makes the NPCs actually respond to things.	]
[	All answers to player conversation, and independent conversation on the NPCs' part, originates in the conversation reply rules.	]

Every turn (this is the active conversation rule):
	follow the conversation-reply rules.

The conversation-reply rules are a rulebook.

A person can be silent thus far or already-talking. A person is usually silent thus far.

A last conversation-reply rule (this is the free to speak again rule):
	now every person is silent thus far.

Carry out an actor discussing something (this is the register speech rule):
	now the actor is already-talking. 

A conversation-reply rule while doing something (this is the everyone speaks if queued rule):
	if the current quip is restrictive:
		perform immediate obligatory conversation for every person;
	otherwise:
		perform the next queued conversation for every person.

A conversation-reply rule when the player is already-talking (this is the character pursues own ideas rule):
	unless addressing everyone is true:
		if the current quip is dead-ended and the current interlocutor is a person who is not finished talking: 
			carry out the avoiding talking heads activity; 
			perform the next queued conversation for the current interlocutor.

A conversation-reply rule (this is the characters remind you if you are ignoring them rule):
	if the current interlocutor is silent thus far and the nag of the current quip is not "":
		carry out the avoiding talking heads activity;
		now the current interlocutor is already-talking;
		say "[nag of the current quip][paragraph break]" (A). 


Part Four - Avoiding Talking Heads

Avoiding talking heads is an activity. 
[This is where we put some trivial physical action, description, or other text to mark the passage of time and/or root our conversation more firmly in its surroundings.]


Part Five - Weak Phrasing

A quip can be strongly-phrased or weakly-phrased. A quip is usually strongly-phrased. 
[	A quip may be designated "weakly-phrased" if we want to allow the interlocutor to transition smoothly into a subsequent line of conversation without a paragraph break.	]
[	This is completely at the discretion of the author; if it's never used, nothing bad will result.	]

Rule for avoiding talking heads (this is the default pause-construction rule):
	[We want to fold a weak quip and its antecedent into one continuous paragraph, with an intervening beat.]
	if the current quip is weakly-phrased and the current interlocutor is a person and the current interlocutor is ready for transition:
		say "[if a random chance of 1 in 2 succeeds][run paragraph on][otherwise][paragraph break][end if]" (A);
	otherwise unless the current interlocutor is a person and the current interlocutor is ready for transition:
		say "[beat] [run paragraph on]" (B);
[	This generates text that is printed between lines of conversation when the conversation is supposed to pause for a bit.	]
[	The complexity of the structure is so that it can produce not-completely-predictable text structures. Specifically, a character's comment may be beat-opened.	]
[	If it is (meaning that the comment begins with its own special, handwritten beat), we don't need to generate a grounding beat every time before we print it.	]
[	But if instead the NPC's comment begins with quoted text, we do want to add a beat, to separate it from the quoted text that came before.	]

Report someone discussing a weakly-phrased dead-ended quip when the current interlocutor is a person and the current interlocutor is likely to continue and addressing everyone is false (this is the character takes the initiative rule):
	if the noun provides the property reply:
		say "[reply of the noun] [run paragraph on]" (A) instead.

Beat-producing is an activity.

To say beat:
	carry out the beat-producing activity.

The last for beat-producing rule (this is the default beat rule):
	say "[There's] a brief pause.[run paragraph on]" (A).  



VOLUME FIVE - CONVERSATIONAL PRAGMATICS

Book I - Asking An NPC To Discuss 

Before asking someone to try verbalizing (this is the correct indirect instructions rule):
	if the current interlocutor is not the person asked, implicitly greet the person asked;
	try discussing the noun instead.
		
[Before answering someone that something (this is the convert indirect instructions to discussing rule):
	if the noun is not the current interlocutor, implicitly greet the noun;
	if the noun is the current interlocutor:
		follow the relabel available quips rule;
		now tc reparse flag is true;
		if the topic understood matches "[a typable quip]":
			try discussing Q instead;
	otherwise:
		say "[text of implicit-conversing needs current interlocutor rule response (D)][line break]" (A) ['you aren't talking to anyone'];]

Book II - Ignorance 

Expressing ignorance by something is an activity.

To think is a verb.

Rule for expressing ignorance by the player (this is the no quip worth saying default rule):
	say "[We] [can't think] of anything appropriate to say. [run paragraph on]" (A).

Rule for expressing ignorance by someone (called the doofus) (this is the interlocutor ignorance default rule):
	say "'I don't know,' [regarding the doofus][say] [the doofus]. [run paragraph on]" (A).

Check asking someone about something (this is the catch fall-throughs of asking rule):
	carry out the expressing ignorance by activity with the player;
	say paragraph break instead.

Check telling someone about something (this is the catch fall-throughs of telling rule):
	carry out the expressing ignorance by activity with the player;
	say paragraph break instead.

[Check answering someone that something (this is the catch fall-throughs of answering rule):
	carry out the expressing ignorance by activity with the player;
	say paragraph break instead.]


Book III - Changing The Subject

[	Here we give the player a chance to get hints about other directions for the conversation if he doesn't like any of the currently suggested options.	]
[	This is not quite identical to TADS 3's topics list, but the idea is similar.	]

Understand "topics" or "change the subject" or "change subject" as changing the subject. Changing the subject is an action out of world.

Check changing the subject (this is the subject change default rule):
	if the number of peripheral quips is 0:
		say "[We] [can think] of no valid changes of subject right [now]." (A) instead.

Carry out changing the subject (this is the standard report other subjects rule):
	carry out the listing peripheral quips activity.


Book IV - Starting A Conversation

tc reparse flag is a truth state that varies. [True if we need to reparse the command after implicitly greeting someone and resetting quips' availability.]

Understand "ask [someone talk-ineligible] [text]" as starting a conversation with it about.
Understand "tell [someone talk-ineligible] [text]" as starting a conversation with it about.

Starting a conversation with it about is an action applying to one thing and one topic.

Carry out starting a conversation with it about (this is the implicitly greet a potential new conversant rule):
	implicitly greet the noun;
	if the noun is the current interlocutor:
		follow the relabel available quips rule;
		now tc reparse flag is true.

Rule for reading a command when tc reparse flag is true (this is the reset after retrying input rule):
	now tc reparse flag is false;
[	showme the current action;]

Book V - Conversing With No One

Non-speaking is an action applying to one visible thing.  

Understand 
	"talk about/-- [any quip]" and
	"say [any quip]" and
	"discuss [any quip]" as non-speaking
	 when the current interlocutor is not a person.

Understand
	"change the/-- subject to [any quip]" and
	"tell about [any informative quip]" and
	"ask about [any questioning quip]" and
	"tell [any informative quip]" and
	"ask [any questioning quip]" as non-speaking
	 when the current interlocutor is not a person.
	
Understand "[any quip]" as non-speaking.

Non-speaking is implicit-conversing.

Instead of non-speaking: try discussing the noun.

[Book 4  (in place of Book 4 - Limiting what can be spoken about in Conversation Framework by Eric Eve)]
 
Threaded Conversation ends here.

---- Documentation ----

NOTE: This extension depends upon the extension Conversation Framework by Eric Eve. The latest version should be available for download from the Inform website.

Chapter: What's new in Version 5

The only change authors should need to make for their old games to be compatible with this version is to replace all instances of the word "response" with "reply". I apologize, but 6L02 introduced a lot of new syntax, and 'responses' are a new central feature of the language. Otherwise:
	
	Compatibility with I7 6L02 (and 6L38)
	Responses made adaptive
	Cleaned up extensions, main code

Chapter: Introduction to Conversation in Interactive Fiction

Section: The challenge of context

Traditionally, conversation is one of the more difficult things to program in interactive fiction: while it's acceptable for >EXAMINE POT to produce the same reply every time the player types it, it's a bit less acceptable for >ASK JOE ABOUT HIS ADULTERY to make Joe react the same way every time. Conversation implementations often need to keep track of a lot of information: what else is going on in the model world, what the character knows, what plot phase we've reached, what mood the character is in, what else we've recently been talking about, whether we've said the same thing before (and how many times); and so on.

Threaded Conversation provides ways to keep track of conversation context: the person we're talking to, what he knows, what we've said to him most recently, what we've said to him in the more distant past. 

TC also makes some abstract calculations -- based on the structure of the conversation we've designed -- about whether a new comment or question relates to the things we were already talking about, or whether they constitute a change of subject.

This contextual information means that TC can have the parser sensibly guess which of several things the player wants to say, based on the current state of the conversation; let the player review what he already knows and which things he's already said during the course of the game; and give the player clues about what he might want to say next.

It also gives us the means to implement some special effects easily:

	- vary the exact text of conversation, depending on the mood that the character is in
	- block off certain topics of conversation until a certain point in the plot
	- have a character get distracted and refuse to answer questions some of the time
	- have characters ask questions that the player must answer before moving on
	- give a character things to say when the player stops moving the conversation forward
	- have a character react when the player changes the subject
	- allow a character to draw conclusions from the facts that have come up in conversation

Section: Types of interface; ASK/TELL, menus, and hybrid systems

Another challenge of conversation design is creating an interface that is both easy for the player to use and expressive enough to be interesting. Two common approaches are ASK/TELL conversation, where the player can ask or tell characters about keywords, as in

	>ask Jill about Jack
	>tell farmer about chicken coop

and menu-based conversation, where the player is offered a list of things to say and must pick one (often by number), as in

	1) Ask Jill where Jack went.
	2) Tell Jill that the chicken coop was robbed.

or, sometimes, 
	
	1) "Jill, have you seen your no-good layabout brother Jack anywhere?"
	2) "Look, Farmer Jill, I think a fox got into the chickens."

The problem with ASK/TELL conversation is that it can feel undirected -- if the player doesn't know which keywords to ask or tell about next, he gets stuck. It also doesn't always provide much sense of ongoing context or conversational flow, since the player can ask lots of unrelated questions and jump around a lot. What's more, sometimes the thing the player character asks isn't quite the question the player had in mind. If we type

	>ask Jill about Jack

Jill could wind up answering any of a number of questions -- where Jack is, how old Jack is, whether Jack committed the recent murder, and so on. The player doesn't have much fine control over the conversation.

Menu-based conversation solves most of these problems, but introduces another: it doesn't allow for very many surprises. The player can see all the conversation the game has to offer by working methodically through all the menu branches. (This problem is sometimes referred to as the "lawnmower effect", since the process of seeing all the conversation is like the process of running a lawnmower over every inch of the lawn.)

Since about 2001, more and more IF has used a sort of compromise method: the player is allowed to ask or tell about keywords, but he's sometimes given prompts about things to say that follow naturally on the conversation he was just having, as in

	You could ask where Jack is.

Moreover, when he asks about a topic where many comments are possible, he'll be allowed to clarify, as in

	>ask Jill about Jack
	Do you want to ask where Jack is, how old Jack is, or whether Jack committed the recent murder?

There are quite a few minor variations in how these options are presented; for instance, sometimes the player is given a menu of options after selecting his keyword, rather than a disambiguation question as shown. Nonetheless, the basic structure remains the same: there are keywords to talk about, but there are multiple things to say about each keyword (for greater expressiveness) and the player is guided (but not forced) into a conversation structure that flows naturally.

Threaded Conversation supports this kind of conversation interface, though there are also ways to alter its output to produce something closer to bare ASK/TELL or a menu system.

Section: Writing a conversation with Threaded Conversation

We start writing a conversation with Threaded Conversation by writing a number of quip objects. A quip is a thing which represents both halves of an exchange with a character: what the player says, and what the other character says back. For example, a rudimentary quip might look something like

	whether the moon is made of green cheese is a questioning quip.  
	The comment is "'Do you think the moon is really made of cheese?' you ask.".
	The reply is "'Of course!' exclaims [the current interlocutor].".

This isn't quite complete, though, because we need to tell Inform what keywords to associate this quip with. For this, we use the "mentions" relation: 

	whether the moon's made of green cheese is a questioning quip.  
	It mentions the moon, cheese.
	The comment is "'Do you think the moon is really made of cheese?' you ask.".
	The reply is "'Of course!' exclaims [the current interlocutor].".

Now we've established that the quip has to do with the moon and cheese objects elsewhere in the game. If the moon and the cheese are not represented physically in the game at all, we can make them abstract subjects, as in

	The moon is a subject.

Now if the player types

	>ASK ABOUT THE MOON

Threaded Conversation looks at its available quips that have to do with the moon, or have "moon" in their name, and picks the most relevant one (or asks the player which he'd like to use).

	>ASK ABOUT CHEESE

would turn up this same quip, but probably not any other quips that we might have written about the moon. The player can also be more specific; in this case, he could type

	>ASK WHETHER THE MOON'S MADE OF GREEN CHEESE

and make sure he gets this question rather than any other.

When we have some quips written, we add a bunch of rules about which quips the player may say under which circumstances. For instance, we may very often want to restrict quips to conditions such as

	- the player is talking to a specific person
	- the player has recently said another quip, and is now following up on it
	- the player has learned a particular fact
	- the player has never said this quip before
	- a particular scene is in progress

...and so on. Threaded Conversation provides shortcuts for writing many of the most common restrictions we might want to put into a conversation, but it also allows us to write our own, arbitrarily complex rules about when the player can say what. 

This may be a good time to play with the first example below, labeled "Very Simple", which shows some quips in action and demonstrates what the default output of Threaded Conversation looks like.

Section: Using this extension efficiently

One of the essential features of detailed character conversation is that one has to generate quite a large amount of text to arrive at remotely interesting or convincing results. To that end, the extension Conversation Builder provides some auto-code-generation facilities, producing source that compiles alongside the material provided in this extension. 

A reasonable way to learn Threaded Conversation would be to read through the Basic Structure and Concepts chapter, looking at the recommended examples along the way; then to try building on these with Conversation Builder; and only coming back to study the advanced features once familiar with the basic mechanisms.

Section: Related extensions

It may be fruitful to include Mood Variations by Emily Short: Mood Variations allows us to tag text alternatives so that the correct alternative will be chosen depending on the mood of the current interlocutor; it also has a "[set mood]" token that can be used to mark up quips to reflect the mood of the listener. The same things can be achieved in other ways more laboriously, but this shortcut may prove handy.


Chapter: Basic Structure and Concepts

Section: Quips

As we saw above, most important components of a conversation system built with TC are quips. Quips come in three kinds, the informative, the questioning, and the performative, depending on whether they are associated with TELL commands, with ASK commands, or stand on their own. A plausible quip of each kind:

	Lily looks well is an informative quip.  
	The comment is "'You look very well, Lily,' you say, winking.".
	The reply is "'Why, thank you!' Lily replies.".

	whether it will rain is a questioning quip.
	The comment is "'What do you think of the weather?' you ask. 'Will it rain?'"
	The reply is "'I really don't know,' says [the current interlocutor]."

	curse the fates is a performative quip.
	The comment is "Drawing on your prodigious knowledge of ancient norse profanities, you express your feelings about the whole cast of the universe that brought your life to this point."
	The reply is "The turtle does not reply."

Notice that quips should always be proper named, without an article preceding. Declaring "A silly digression is an informative quip" (for example) will result in the quip's name being improperly displayed during play.

Note also that the name of the quip should be something that could sensibly follow "say" (for an informative quip) or "ask" (for a questioning quip), or, in the case of the performative quip, stand on its own as a unique command:

	>say lily looks well
	>ask whether it will rain
	>curse the fates

If we want to ASK LILY ABOUT WEATHER, though, we'll also need the mentioning relation.

Section: The mentioning relation; subjects

Threaded Conversation defines a "mentioning" relation: 

	mentioning relates various quips to various things. 
	
A quip can mention one or more characters, props, or abstract subjects of conversation. Though it's not absolutely required, it is usually most convenient to explicitly make such abstract subjects belong to the "subject" kind, as in

	The weather is a subject. Understand "rain" or "sun" or "sunshine" or "clouds" or "cloudy" or "storms" as the weather.

Then, we could write

	whether it will rain is a questioning quip.
	It mentions the weather.
	The comment is "'What do you make of the weather?' you ask. 'Will it rain?'"
	The reply is "'I really don't know,' says [the current interlocutor].'"

And now (assuming that the quip is otherwise an appropriate thing to say at this juncture) the player can invoke this quip with any of 
	
	>ask fred about the weather
	>ask fred about rain
	>ask fred about storms
	>ask whether it will rain
	>a clouds

Making quips mention the objects they refer to means that all the alternative names of those objects will be recognized as ways to invoke the quip -- so we don't have to write lots of extra Understand rules for every quip we write about the weather.

Ensuring quips are well-stocked with all the appropriate nouns is also a courtesy to the player. It can provide redundancy in synonyms, helping prevent gaps in defining quips themeselves. Mentioning topics also allows players to reference quips by various topics they only tangentially reference: with appropriate subjects defined, for example, the quip "which artist might recieve royal favor" could be invoked (besides with any of the words constituting the name) by the player asking about 'the Queen', 'patronage', or 'art'.

Section: Directly-following and indirectly-following; restrictive quips and nags; the immediately condition

Quite frequently, the player will fall into a chain of conversation where each quip naturally follows on from the one previous; there may be opportunities for the conversation to split a bit, or for the player to go back and pick up a topic from earlier in this same thread of conversation. 

TC defines two kinds of threading relations for controlling which quips are available to the player at any given moment. A quip may be defined to directly-follow another quip, meaning it is available and suggested to the player *only* immediately after that quip; or to indirectly-follow another quip, which means that it becomes available for discussion at *any* time after the quip it follows. Note that a quip may follow or be followed by -- directly or indirectly -- any number of quips.

We generally want to use "indirectly-follows" when one quip pursues a line of thought introduced in another. We are more likely to want "directly-follows" if, for example, one quip answers a question asked in another, so that the follow-up would make no sense unless spoken in reply, immediately after the first, with no conversation intervening.

Often, when writing an indirectly-following quip, [a quip that becames available only after a particular previous quip has been discussed,] we want to vary the text depending on whether this quip has been chosen as soon as it was made available, or after some other topics of conversation have intervened. This is when the condition "immediately" proves useful: it is true when the current quip indirectly-follows the most recently discussed quip. For example:

	how to find the castle is a questioning quip. It indirectly-follows where she hath come from.
		The comment is "'[if immediately]How can I find it[otherwise]And how might I locate your castle[end if]?'"
		
If a character has nothing to say, the game will try the "expressing ignorance by" activity with that character. Thus, we could write

	Rule for expressing ignorance by Joe:
		say "'Uh,' says Joe, scratching his head."

By default, this rule doesn't describe any behavior at all for the other character; instead, it says that the player can't come up with any appropriate comment. This allows the conversation to go on as though nothing has happened.

There are times when we want to narrow the player's choice so that he can *only* say one of a handful of things in reply to a question asked in the previous turn. If we declare a quip to be "restrictive", that means that the player's next comment in that conversation must be a quip that directly-follows it. (It would also be possible for the player simply to walk away or ignore the character at this point; if we want to prevent that as well, we must add additional rules barring movement or doing other things while the current quip is restrictive.)

A related feature of quips is the "nag". This is some text printed on a turn when the player has not said anything to the interlocutor. Since a nag usually implies that the character is insistent on hearing some kind of reply from the player, it is most often defined for restrictive quips. Only the nag of the most recent quip will be printed on any given turn.

	request-help is a restrictive quip.
		The reply is "'Wilt thou accept this quest, hero?'".
		The nag is "'Thou must!'"
	
	yes to the quest is an informative quip.
		The comment is "'Yes.'".
		The reply is "'Truly, thou art brave!'".
		It directly-follows request-help and no to the quest.

	no to the quest is an informative quip.
		The comment is "'No.'".
		The reply is "'But thou must!'"
		The nag is "'Thou must!'"
		It directly-follows request-help and no to the quest.

This basic framework of linking quips using the directly- and indirectly-following relations, combined with the ability to define quips as one-time/repeatable and restrictive/unrestrictive, can provide a structure robust enough for the conversational needs of many works.

Section: Quips for one person and quips for many people; quip-supplying relation

By default, there are no limits determining to whom we may say a given quip. If we want to go all around town asking everyone we meet about a topic, we might write a quip like

	how to get to Carnegie Hall is a questioning quip.
	The comment is "'Do you know how to get to Carnegie Hall?' you ask [the current interlocutor]."
	The reply is "[one of]'No,'[or]'Practice!'[or]'Leave me alone, weirdo,'[or]'Walk north about three blocks,'[as decreasingly likely outcomes] says [the current interlocutor]."

The use of text variations means that the reply will vary a bit from person to person as we go around asking, and sooner or later someone is likely to give us the useful advice. Obviously, we could also just have every single person who answers reply in exactly the same words, but that's likely to become dull.

More often, though, we want to write a lot of dialogue just for a single person. For this scenario, TC defines the "quip-supplying" relation -- a quip is said to quip-supply a given person if it provides that person with something to say.

	Lily looks well is an informative quip.  
	The comment is "'You look very well, Lily,' you say, winking.".
	The reply is "'Why, thank you!' Lily replies.". 
	It quip-supplies Lily.

Or, if we want to be able to say the same quip to several specific people in the game:

	Lily looks well is an informative quip.  
	The comment is "'Lily is looking pretty good these days, isn't she?' you say.".
	The reply is "'[if the current interlocutor admires Lily]Yeah, she's turned into a real babe[otherwise]I guess[end if],' says [the current interlocutor].". 
	It quip-supplies Lucas, Peter, and Fred. 

This might be a good time to look at the second example, "Slightly Less Simple".

Section: Recollecting; repeatable and one-time quips

TC defines a recollecting relation. When the player says a quip to another character, that character thereafter recollects that quip; so we could write conditions such as

	if Lisa recollects whether it will rain, ...
	if someone recollects curse the fates, ...

and so on. 

By default, quips are defined to be "one-time", meaning that the player can only say them once to any given character. (He might say the same quip to *different* characters, if the quip is not defined to apply to a single character only; but the same exchange of words would only happen once with each person to whom it was said.) 

If we'd like to be able to say the same quip many times to the same character, we must instead make the quip "repeatable". If we do this, we may also want to take advantage of text variations to print something new the second and subsequent times he says the quip:

	where the treasure lies is a repeatable questioning quip.
	It mentions the Incan gold.
	The comment is "'Do you know where the treasure lies, Long John?' you ask [one of]brightly[or]again[or]yet again[stopping]."
	The reply is "[one of]'[or]'Ye make an 'orrible pirate. I told you already. [or]Long John merely sighs. '[stopping]It be buried under the crossed palms,' he replies."

The most common use for repeatable quips is when the player has a chance to ask a character for some really vital piece of information -- something that he might forget and need to ask again in order to solve the game. We don't want to force him to take notes while he plays, so we don't want to lock that information away after the first time he asks. On the other hand, if we want to prevent characters sounding mechanical, it's good to vary their replies when they're asked more than once (as shown above), or else have repeated replies provide a summary form, like 

	where the treasure lies is a repeatable questioning quip.
	It mentions the Incan gold.
	The comment is "'Do you know where the treasure lies, Long John?' you ask [one of]brightly[or]again[or]yet again[stopping]."
	The reply is "[one of]'Aye, it be buried under the crossed palms,' he replies[or]Long John reminds you, a little impatiently, that the treasure is buried under the crossed palms[stopping]."

(For another variation on this, see the "King of Everything" example below; or to simply get a look at the behavior of repeatable quips, see "Not So Simple".)

"Recollecting" would also allow us to write actions which let the player review what he's already talked about. For instance, suppose we wanted to add a "remember" action, so that remembering any conversation topic would list the quips that we've used that apply to that subject, and with whom we've discussed them. (This might come in handy in, say, a mystery game, in which we need to make sure that we ask all the suspects certain basic questions.)

We might implement such a system like this:

	Understand "remember [any subject]" or "remember [something]" as remembering. Remembering is an action applying to one visible thing.

	Check remembering:
		if the number of quips which are recollected by someone is 0, say "You have not yet had any conversations to remember." instead.
	
	Carry out remembering:
		let N be 0;
		repeat with item running through quips which mention the noun:
			if someone recollects the item:
				say "You have discussed '[the item]' with [the list of other people who recollect the item].";
				increment N;
		if N is 0, say "You haven't discussed [the noun] with anyone yet."
	
	Definition: a person is other if he is not the player.

With only those features that have been presented so far, we could already write a game in which the player can ask various characters about a wide range of topics, follow up with further quips, and review important questions that he's already asked. But there is much more that we can do by keeping track of the context of the conversation.

Chapter: Advanced Features for Customizing Conversation Flow

Section: Facts

Facts are used to track abstract information that might be conveyed by one or more quips. Unlike subjects and quips, facts are not things; they're values, defined by the grandiosely-titled Table of All Known Facts. To add our own facts, we might write

	Table of All Known Facts (continued)
	fact	summary
	footprints-found	"Size 12 footprints were found outside the library."
	bob-shoe-size	"Bob's shoe size is 8."
	...

Every character in the game is able to know or not know every fact. To start characters out with a base of knowledge, we might write

	The player knows bob-shoe-size.

or similarly

	Bob knows bob-shoe-size.

Moreover, facts don't have to be tied to quips. Characters might also find things out by seeing an event unfold in front of them:

	After opening the secret door:
		now every person who can see the player knows secret-door-in-shelves;
		continue the action.

But quite often, facts will be communicated in the flow of conversation. If we want to indicate that a given quip communicates a given fact, we simply include the fact in brackets in the quip text, like so:

	The reply is "Bob holds up his shoe for you to see. [bob-shoe-size]'Eight, like I told you, inspector,' he says grumpily."

Whenever someone says a quip with an embedded fact, everyone who is listening -- that is, the player, the current interlocutor, and any other characters in scope -- overhear the fact and come to know it as well. Conversely, "[forget bob-shoe-size]" will make everyone in scope stop knowing the fact any longer. (This is useful at those moments when some piece of popularly-believed information turns out to be false.)

See the example 'Conferences' for a demonstration of how other characters might respond to facts revealed during play.

TC provides a rule that will list off whatever the player knows at the moment; it is up to us to decide when and how to invoke that rule. If we wanted to let the player retrieve all his facts by thinking, we might write

	Instead of thinking, follow the recap of known facts rule. 

Note that there is no enforced requirement in TC that someone know a fact before they say a quip with that fact embedded in it; if we wish, it's up to us to add such availability rules closing off certain quips as needed. This is because, in practice, many games will not involve large transfers of factual information between characters; it is not worth burdening all other authors with the added complexity.

This brings us to the idea of the availability rules, which allow us to place arbitrarily complex restrictions on which quips are available under which conditions.

Section: The availability rules

The availability rules are an object-based-rulebook, consulted any time we want to decide whether something can possibly be said, no matter how likely. It has two possible outcomes: "it is available" and "it is off-limits". (If rulebooks and outcomes are unfamiliar, see the Rulebooks chapter of the Inform documentation.)

In fact, all the restrictions detailed so far in this documentation are enforced by the availability rulebook. The default set of availability rules includes these:

	don't talk to no one rule
	generic-quip 
	restriction of quips to scenes rule   
	player can't say NPC-directed quips rule
	prevention of off-topic answers for restrictive quips rule
	restriction of quips to special people rule
	restriction of one-time quips rule
	restriction by indirect-following rule
	restriction of quips to appropriate previous quips rule
	generic availability rule

The don't talk to no one rule protects against bugs (though it ideally shouldn't arise anyway) by forbidding any quips at all when there is no current interlocutor defined.

The availability rule for the generic-quip means that the (single, boring) quip defined by this extension is never available. It is useful to define this quip so that the extension will compile even when the author has not yet written any quips; but then we don't want the generic-quip to appear in any actual games.

The restriction of quips to scenes rule prevents a quip from appearing outside of the scene defined as its "proper scene". By default, this is the 'entire game'.

The player can't say NPC-directed quips rule prevents the player from accessing quips that we have defined as "NPC-directed": that is, they exist purely for other characters to bring up in conversation, not the player.

The prevention of off-topic answers... rule checks that, if the current quip is restrictive, the player is using one of the answers that directly follows it.

The restriction of quips to special people rule enforces the quip-supplying relation.

The restriction of one-time quips rule checks whether the current interlocutor recollects the quip, and if so, forbids using the quip unless it is marked as repeatable.

The restriction by indirect-following rule enforces indirect-following; the restriction of quips to appropriate previous quips enforces direct-following.

Finally, the generic availability rule is the last rule in the rulebook, and simply returns "it is available".

There are, as usual with rulebooks, numerous ways to tamper with all this. We may write our own availability rules applying only to a single quip or group of quips. For example, to offer a quip only when the player holds a vital item,

	An availability rule for accuse Lily:
		if the incriminating letter is not held, it is off-limits. 

...to use a quip only if the player knows a specific fact,
	
	An availability rule for what was cost of building ark:
		if the player does not know flood-imminent, it is off-limits.

...to make a whole thread of quips -- everything following from a significant remark -- off-limits *after* the player has learned some other fact,

	An availability rule for a quip which indirectly-follows how he healed Lily:
		if the player knows prince-gave-blood, it is off-limits.

...and so on. We might also selectively disable or entirely remove rules from the availability rulebook if we wish to alter the normal behavior of Threaded Conversation; see the section of the Inform documentation on listing rules explicitly.

A quip is defined to be "available" if it passes the availability rules, so we can use "an available quip" to assemble these quips in brief. This is used in the parsing rules of Threaded Conversation, which defines many of its commands in a structure such as

	Understand "discuss [any available quip] with [someone]" as discussing it with.

Section: The plausibility rules

In addition to knowing which quips *can* be said at any given time, TC also keeps track of which quips are *likely* to be said at any given time. The plausibility rules are used for hinting to the player and for resolving parser ambiguities.

For instance, the player is allowed to change the subject and ask about something new that isn't part of the current thread of discussion, but at any given time, he will only be encouraged to talk about plausible quips; all his other options will not be suggested. Similarly, if the player makes an ambiguous command that could be resolved either as a quip in this thread of conversation or as something totally unrelated, the in-thread quip will be chosen.

To decide these things, TC uses the plausibility rules, another object-based-rulebook, though this time with three possible outcomes: it is plausible, it is dubious, and it is implausible. By default, the plausibility rules are

	implausible to repeat yourself rule
	mid-thread plausibility rule
	avoid topic-change where possible rule
	generic plausibility rule

The implausible to repeat yourself rule says that, even if a quip happens to be repeatable, the player is unlikely to ask the same person the same question over again.

The mid-thread plausibility rule checks whether a quip falls outside the current thread, and, if so, marks it implausible. The criteria it follows are somewhat complex, but in brief: 

	If the most recently discussed quip indirectly-follows other quips, we're construed to be in the middle of a thread. If not, anything goes, so we skip the rest of the criteria. But if so:

	Any quip that belongs to the same thread -- that indirectly-follows one of the things we've just been talking about -- is not a change of subject. Such a quip is said to be "quippishly-relevant".  
	
	Any quip that doesn't indirectly-follow any other quips (defined as "shallowly-buried") is considered the start of its own new thread, so that's not necessarily marked as implausible, either.

	But we do mark as implausible a quip that indirectly-follows other quips -- in other words, it is deep in its own thread -- but that is not part of the thread we're currently on. 

The avoid topic-change where possible rule checks to see whether we're in the middle of a thread (as defined above) and whether there is more to be said following on from the current quip. If so, then "shallowly-buried" quips (quips that start their own threads) are considered to be "dubious". The idea is that we should not clue the player about how to change the subject while he's in the middle of a thread. If he does come to the end of what can be said about (for example) the weather, then it becomes reasonable to remind him of other conversation threads he might pursue.

Finally, the generic plausibility rule returns "it is plausible" for any quips that have made it this far.

The plausibility rules, like the availability rules, give us a lot of room for refinement and special casing. For example, say we have a puzzle where the player has to draw some inferences in order to ask a specific question. We want to let him ask this as soon as he thinks of it, but we don't want to suggest it to him before that point. We might then write

	A plausibility rule for whether Mr Hannigan eats people:
		it is implausible.

As a result, this quip will never be suggested to the player in any "You could..." statement.

A quip is defined to be "plausible" if it passes both the availability rulebook and the plausibility rulebook, in that order. Nothing can be plausible to say that cannot be said at all; moreover, the plausibility rules are the more computation intensive of the two, since they at some points involve tracing paths through the indirectly-follows relation. It is best to perform such checks only when we must, in the interests of optimizing run-time speed.

Chapter: Customizing the Player Interface

As we've seen, by default, Threaded Conversation uses a conversation interface in which the player may ASK or TELL about topics of interest, but if there is more than one thing to be said on that topic, he will be asked to clarify which of several remarks he would like to make. He will also receive cues every turn about what conversation quips are particularly appropriate at this juncture. This is not our only option, however; if we wish, we can implement other forms of interaction.

Section: Switching to other forms of ask/tell or menu-based interface

This behavior can be adjusted. If we want to achieve something more like an old-style ASK/TELL interface -- that is to say, one in which there are no cues, and the player is left to pick conversation clues out of the character's speech -- we can simply turn off the rule that supplies the cues. To do this, we would write

	The offer hint quips rule is not listed in any rulebook.

We could also substitute in its place a rule that offers hints only under specific conditions, or only suggests certain types of hints. 

More ambitiously, we could allow the player to determine for himself which play style he prefers, as a setting of the game. If we choose to do this, we must be sure to play-test all the options carefully. Performative quip commands, in particular, are not at all likely to be obvious to players unless we offer some other way of hinting at the special phrasing required.

Section: Modifying the "you could..." line; changing the subject

On a smaller scale, we can modify the output of the offer hint quips rule on a case by case basis. TC defines the activities

	listing matched quips
	listing plausible quips
	listing peripheral quips
	
Listing matched quips constructs the question Inform asks when disambiguating between several quips the player might have wanted to say.

Listing plausible quips constructs the "You could..." suggestion paragraph. 

Listing peripheral quips is a rarer item that responds to the command >CHANGE THE SUBJECT, and lists those quips that start new conversation threads, if the player wants to know.

Of these, listing plausible quips is the one that most obviously lends itself to frequent use, whenever we want to direct the flow of conversation unusually.

For instance, suppose that in one unusual circumstance we actually want to discourage the player from pursuing the thread he's on -- though he can if he wants to. We might write:

	Rule for listing plausible quips when lily looks well is the current quip and it was horrible finding Lily poisoned is plausible:
		say "It's on the tip of your tongue to tell her: it was horrible finding her poisoned. But you needn't. You could turn the conversation: ";
		prepare a list of peripheral quips which are not it was horrible finding Lily poisoned;
		say "[prepared list delimited in disjunctive style]. Something along those lines."

Less particularly, we might make an "unhinted" attribute identifying all the quips that we don't want to follow with conversation cues, and then write

	Rule for listing plausible quips when the current quip is unhinted:
		do nothing instead.

If we just want to change the words "You could " into something else (for example, in order to change the person, tense, or narrative language of the game), we can modify the text variable quip-suggestion-phrase, like so:

	When play begins:
		now the quip-suggestion-phrase is "I could ".

Chapter: Character Initiative and Action Queuing

Section: Overview of character actions under Threaded Conversation

So far we've talked entirely about a framework in which the player speaks and a character replies. This is not a bad system for the most part, but there are times when we want characters to be a bit more proactive.

The way the exchange of conversation currently works is as follows:

1) When the player asks a question, the player's comment is printed immediately as part of the "discussing" action, but nothing is printed for the current interlocutor. 

2) Instead, we add this same quip to a list of things that the current interlocutor wants to talk about. It is queued "immediately" -- that is, it has priority over everything else in that character's queue -- so if the character was also waiting to say something, he will first reply to the player.

3) The player's discussing action finishes; then an every turn rule fires (the "active conversation rule"), triggering the conversation-reply rules. The conversation-reply rulebook has four entries by default:

	the everyone speaks if queued rule
	the character pursues own ideas rule
	the characters remind you if you are ignoring them rule   
	the free to speak again rule

The everyone speaks if queued rule simply discusses the next queued topic for every character in the game. In a turn during which the player has spoken, the result is typically that the current interlocutor now discusses the current quip, completing the exchange. In a turn where the player has *not* spoken, but the character has something more in his queue to say, he will go ahead and do this.

The character pursues own ideas rule now considers whether the current interlocutor has something *more* to say and whether the thread we were on has come to a halt. If we are indeed at the end of a thread -- the current quip is "dead-ended", with nothing following it -- then the current interlocutor gets another turn: we run the avoiding talking heads activity, then perform the *next* queued conversation for the current interlocutor.

The avoiding talking heads activity is meant to be used to print out some sort of interstitial text -- whatever the author would like, really -- to indicate a pause between the current interlocutor's reply to the player's quip and the new thing that the current interlocutor says on his own.

The characters remind you if you are ignoring them rule is used to print the "nag" text of the current quip on any turn when the player has not said anything.

Finally, the free to speak again rule simply marks everyone as no longer speaking, to prepare for the next turn.

This structure means that most of the time the current interlocutor will not change the subject of conversation on his own, but he can do so if the current conversation is pretty much tapped out. Experiment suggests that this is about the level of initiative that players like in a character: if a character talks too often and directs the conversation too much, the player may feel that he's not really in control, but is merely watching a pre-programmed narrative unfold. If the character *never* takes the initiative, though, he starts to seem implausibly passive. 

But if this mechanic doesn't work for a specific game, it can easily be changed by modifications to the conversation-reply rules.

Very often, in the course of the conversation, we will want to add new items to a character's queue, to make him follow up a turn or two later on something the player has said. This helps give him a sense of agency and self-direction. To accomplish this, we can write

	queue (some quip)
	
for the character to say it at the next opportunity (equivalently, the quip may be queued "as immediate obligatory");

	queue (some quip) as immediate optional

to say it as soon as possible, but only if the player does not respond with another quip -- so it is a fleeting, off-hand remark;

	queue (some quip) as postponed obligatory
	
to say it after all the other things that may already be in the queue; or
	
	queue (some quip) as postponed optional
	
to say it after all the other things that may already be in the queue, but discard it if the player changes the subject; it is an unimportant add-on. 

Often, in the middle of a thread, we want to have the current interlocutor make a brief comment in reply to player speech, but only if certain conditions are met: 

	the current quip is not restrictive, 
	the character has not already discussed the quip under consideration, and 
	the quip under consideration quip-supplies the character.

As a shortcut, then, we may write

	casually queue (some quip)
	
to queue it as immediate optional, or
	
	follow-up queue (some quip)
	
to queue it as postponed optional -- but only if the above conditions hold. (The standard queue phrases do not check for any conditions before adding to a character's queue.)

All of these queue phrases can also be used within say tokens, as in 
	
	say "'The weather is fine,' says Captain Hook. [queue picnic-proposal]".
	
By default, the character's collection of optional quips to discuss is cleared when the player changes the subject, by moving to a new conversation thread that isn't quippishly-relevant. This behavior is controlled by the following rules:

	Carry out someone discussing something which is not quippishly-relevant (this is the mark changes of subject rule):
		carry out the subject-changing activity. 

	Subject-changing is an activity. 

	Rule for subject-changing (this is the default changing of subject rule):
		delete purgeable conversation for the current interlocutor;
		now the grandparent quip is the noun.

(The grandparent quip is used to keep track of where the player entered a thread, if re-entering a thread somewhere other than at the thread's natural beginning.)

This default behavior keeps a character from stubbornly reverting to earlier topics once the conversation has definitely moved on; but there may be times when this is not desirable, so we may wish to turn off the mark changes of subject rule or to write our own subject-changing rules.
	
Section: Adding dramatic grounding beats

Reading a series of plain alternating quotations can quickly become dull. An effective way to break up such monotony is to insert a short description, to describe a minor action, or even to convey important non-verbal information, either between two parts of an exchange or in the middle of one character's monologue. 

The beat-producing activity exists for exactly this purpose. It is called by the default rule in the avoiding talking heads rulebook; or we may call it explicitly, by using the "beat" text substitution, like so:

	the reply is "'So it is true, then.' [beat] 'But it doesn't change how I feel.'"
	
By default, the beat-producing rulebook contains only a single rule, which merely prints "There's a brief pause." We may add as many and as complex rules as we like. For example:

	rule for beat-producing when the current interlocutor is Hook:
		say "[one of]Hook gingerly scratches his nose[or]He twirls his moustache[at random]. [run paragraph on]"

Section: Interrupting between the comment and the reply

Because the current interlocutor's speech comes as a separate action after the player's speech, we have the opportunity to describe physical action between the question and the answer; to build special cases where a third party interrupts, if present; or to replace the standard reply under certain unusual circumstances.

If we want a character to respond atypically -- for instance, by ignoring all of the player's remarks and relentlessly pursuing his own line of thought -- we can intervene in the way that the replies are queued or in the way that they're carried out. One of many possibilities, for a scene where the character will talk about a specific thread but refuses to be gotten to talk about anything else:

	The distracted reply rule is listed instead of the prepare a reply rule in the carry out discussing rulebook.

	This is the distracted reply rule:
		 if Shadows is happening:
			 if the person asked is not the player, make no decision;
			 if the noun is not quippishly-relevant,
				 queue act-distracted as immediate obligatory;
			 otherwise queue noun as immediate obligatory;
		 otherwise:
			 queue noun as immediate obligatory.

	act-distracted is an NPC-directed performative quip. To continue is a verb. To ignore is a verb. To show is a verb.
	The reply is "[Regarding the person asked][They] [one of][continue] [possessive] own line of thought[or][ignore] your remark[or][are] looking somewhat past your head[or][don't] [show] signs of following what you just said[at random]. [run paragraph on][awkward segue]"

	 To say awkward segue:
		if any conversation is queued for the person asked,
			perform the next queued conversation for the person asked.

The possibilities are numerous, so we should check out the fuller examples to explore this further.

Section: Giving a character a whole script of things to discuss

We may particularly want to intervene and prevent subject-change from happening if we have a scene in which the character is meant to tell the player a certain number of things before moving on. 

We can set such a scene up by queueing a whole list of character comments at once, as in 

	When Shadows begins: 
		say "[pause]It is dangerous to give your frank opinion about a lady's fiancé, especially if you are yourself wildly in love with the lady in question. So you do not immediately speak."; 
		queue Lily finds herself crying;
		queue prince acts creepy.
		
(Note that because the default quip precedence is immediate obligatory, these quips will be said in the reverse order of how they are added!)

If we do this -- and prevent the player from changing the subject away from this thread -- we'll have a scene in which the player can ask as many or as few on-topic questions as he wants, but the important information the character needs to convey should always reach him, sooner or later. 

Section: Affecting the state of the world

For simplicity, TC exists as a standalone, verbal system, with little to tie any given conversation to the greater world model. Performative quips, for instance, are more often used for conversational effect rather than to induce some physical change. Any systematic link, so that conversation alters the state of things in the world model (or vice versa), would best be accomplished by crafting general-purpose rules governing this behavior, adding exceptions as necessary.

However, if there will be only a few of these events, an ad hoc approach may suffice:

	for the idol is a questioning quip.
		It mentions the idol.
		The comment is "'Give me the idol!' you yell."
		The reply is "'Uh, no problem.' Eli hands it over, eyes wide."
		It quip-supplies Eli.
		
	After Eli discussing for the idol:
		now the player carries the idol;
		continue the action. 

We must continue the action there, to allow the report discussing rules to print Eli's reply as usual.

Or, if the player will be making many such item requests:

	to buy Park Place is a questioning quip.
		It mentions Park Place.
		The comment is "'I'd like to buy Park Place.'"
		The reply is "'Here you go,' Eli says.[give the player Park Place]".
		It quip-supplies Eli.
		
	to say give the player (item - a thing):
		if the current interlocutor has the item,
			now the player holds the item.

Note also that the system does not ensure that the interlocutor is remains present. If the player or the other person may be moving around somehow during a conversation, we might want to set up an every turn rule to check this condition, and reset the interlocutor if it does not hold.

	Last every turn when the current interlocutor is a person and the current interlocutor is not in the location:
		reset the interlocutor.

Section: Advanced beat and formatting control

By default, when the conversational thread has been exhausted and the current interlocutor has something in her queue to say, the prevent talking heads activity will be called. This will print a grounding "[beat]" and a paragraph break before she discusses this new quip. 

There are a few properties of quips we can define to control this behavior. By default, a quip is considered "strongly-phrased"; we may mark it "weakly-phrased" instead if its reply text is suitable for folding into the paragraph of the subsequent quip, as a transitional phrase or minor comment, before the character then moves on to her topic of interest. This property generally works best if the reply itself does not end with a grounding beat. (Note that if a weakly-phrased, dead-ended quip is followed by a character's queued change of subject, the prevent talking heads activity will be bypassed entirely.)

Similarly, a quip may be defined as "beat-opened" rather than (the default) "speech-opened" when we want to craft a unique conversational beat at the start of this particular quip, rather than using the standard beat-producing rules. This property indicates that the quip's reply text begins with a grounding beat, rather than quoted speech. It is most useful for NPC-directed quips, as it does not affect text formatting unless the character has chosen the quip from her queue. 

There is some random variation, but this system ensures that two instances of quoted speech will never be printed side by side without an intervening beat or a paragraph break. Of course, we can alter or expand this behavior by changing the prevent talking heads activity. Or if we ignore both of these properties entirely, the system will still function well.

See the Blackened Blue example, below, for a demonstration of how the formatting of these types of quips may interact in printing NPC dialog.

Chapter: Trouble-shooting

Section: Debugging actions

	QUEUE (someone) 

will produce a list of the quips that person has queued, along with their quip-precedences. This is useful when an NPC seems not to be discussing the things planned for him to say.

Section: Built-in debugging functions

TC runs some checks at the beginning of any game compiled in debug mode. 

First, it checks for quips that mention themselves. This happens most often when a quip is defined along the lines of...

	where her stepmother went is a repeatable questioning quip.
		It mentions stepmother.

...when "stepmother" has not been previously defined as a subject. Quips that mention themselves cause the game to hang at runtime, so it is important to catch these; if TC finds such a cycle, it will list the violations and then quit without going further.

TC then checks for items that are probably subjects, but which are not declared to belong to the subject kind. It detects all items that are mentioned by quips but are not in a location (that is, not part of the game world at the start of play) and are not already of the subject kind. In the event that a character can talk about an object that starts the game out of play, TC may identify these falsely. All the same, it's good to catch things that are probably subjects, for two reasons:

 1) this helps to identify cases in which Inform has accidentally duplicated an existing subject, through misspelling or other similar error, and the subjects should be consolidated into one;

2) it encourages the author to make any appropriate free-floating conversation objects into subjects and perhaps, in the process, to generate additional understand rules and vocabulary for them. TC does not absolutely depend on objects being declared as subjects, but add-on extensions may do so.
	
Section: Caching

TC fills out some relations and properties automatically when the game begins, to reduce the number of complex calculations that must be carried out every turn. However, in especially large projects, even this startup time may prove prohibitive. In that case, we need only add the line

	Use hard cache.
	
to generate this hard-coded cache automatically, which can then be pasted back into the source. To rebuild the cache in the future, simply delete the old cache. 

Rebuilding needs to happen every time we add new quips or change the way quips relate to one another, so it's kind of tedious to wait on during serious development; but once we approach release and the content becomes fairly stable, we're going to want the cache in place, even if we still have to regenerate it sometimes.

Chapter: Release Notes

Section: Versions 4/5
	
	Compatibility with I7 6L02 (and 6L38)
		'response' of quips renamed to 'reply', to avoid collision with the new I7 responses system
	TC responses are now adaptive
	Cleaned up extensions and main code

Section: Version 3

	Minor comment cleanup and clarification throughout

Section: Version 2

	Backdrops no longer trigger the "X is a subject." notification at startup
	Corrected a syntax error in a rule name preventing compilation (oops!)

Section: Version 1

	Implicit greeting finally fully functional
	Documentation reworked
	Smarter Parser no longer accommodated for or against; all necessary code absorbed (mainly for implicit greeting handling) or altered

Chapter: Pre-Release Notes

Section: New in Beta Versions 5/6

	Discussing a quip with a non-interlocutor mistake message disabled when TC is used with Aaron Reed's Smarter Parser
	Bug fix: discussing it with (with nouns reversed) understand code now working as intended
	Reformatted, renumbered, and renamed many headings

Section: New in Beta Version 4

	Bug fixes
	Replaced the "context" error with one more appropriate when trying to discuss quips
	Correcting spacing of distracted reply sample code
	Change discussing action to handle only relevant quips, without using "[any]" token and provoking the "context" error
	Subjectifying action implemented to catch and process discussions before an interlocutor has been greeted
	"Obstinance" example replaced with "Blackened Blue" to demonstrate dialog queue and advanced quip formatting features
	
Chapter: Testers

	Matt Weiner
	Dannii Willis
	Björn Paulsen
	Melvin Rangasamy
	Johan Paz
	Hanon Ondricek
	Jason Ermer
	Susan Douglas
	Joseph Limbaugh
	David White
	Justin de Vesine
	Steve Robotnik
	Konstantin Koss
	John Large
	Amy Lear
	Matthew Stallter
	Blecki

Example: * Very Simple - A simple example to start with.

In this example, quips mention both things in the real world (the barmaid) and concepts (immortality, rumors, and old Garrick, who is theoretically a person but not one who is physically represented in our story). We are also careful to declare all these entities before we write the quips that involve them. This is not absolutely always required, but there are cases in which it avoids compiler confusions, so it is a good rule of thumb to follow: create objects and subjects first, then the quips that talk about them.

	* : "Very Simple"

	Include Threaded Conversation by Chris Conley.

	Section 1 - Model world
	
	When play begins:
		say "It is a long and riotous evening, full of unlikely stories and tall tales. But now most of the patrons have gone away to their rooms to sleep, or have passed out before the fire. Even the two black bitch pups are curled on the hearth-stone, snuffling through tiny wet noses, and pawing the air in sleep. Now is the time to find out whether the rumors that brought you to this neighborhood are true."

	The Inn is a room. "The light is low and red. Above the fireplace hangs a map of this part of the Empire, and on the adjacent wall is the crimson and silver banner of Richard the Rose."

	The barmaid is a woman in the Inn. "The barmaid works her way from table to table, clearing away dishes and mugs."

	Section 2 - Subjects

	Immortality is a subject. Understand "eternal life" and "immortal" as immortality.

	Rumors are a subject. Understand "stories/legends/story/legend/rumor/gossip" as rumors.

	Old Garrick is a subject. Understand "codger" as Old Garrick.

	Section 3 - Quips

	whether the rumors tell truly is a questioning quip. 
		It mentions immortality, rumors.
		The comment is "'Where I come from, over the black hills there, they say that men this side of the mountain live as old as Methuselah,' you remark. 'They say the secret of eternal life is here.'".
		The reply is "'Oh, do they?' she says, sweeping crumbs of cheese and crusty bread into her hand. 'The oldest codger around these parts is old Garrick, and I wouldn't put him beyond his four-score and ten.'".
	
	where Garrick lives is a questioning quip. 
		It mentions Old Garrick.
		The comment is "'Where does this old Garrick live?' you ask, trying not to seem too eager.".
		The reply is "'Down at the pig farm,' she says. 'The turn-off is just before you come to the river, on the main road west. You can find it by the smell.'".
		It indirectly-follows whether the rumors tell truly. 
		[This last line means that the player can't use this quip until after he's used 'whether the rumors tell truly'. We'll see more about indirectly-follows later.]

	where the barmaid comes from is a questioning quip. 
		It mentions the barmaid.
		The comment is "'What about yourself?' you ask. 'Are you from around these parts?'".
		The reply is "'If by these parts you mean between the black hills and the river, no,' she says. 'I was born just at the far side of the ford. But I came over here to work.'".
	
	whether she's heard the stories is a questioning quip. 
		It mentions immortality, rumors.
		The comment is "'Have you heard any stories of long-living men?' you press her.".
		The reply is "She purses her lips and scrubs at a circle-shaped stain on the table before her. 'If you're a fool come looking for a spring of life or a vein of immortal gold buried in the black hills, you'd do better to go back home where you come from.'".
		It indirectly-follows whether the rumors tell truly.

	Test me with "talk to barmaid / ask the barmaid about herself / ask the barmaid about stories / g".

Example: * Slightly Less Simple - The same inn as the previous example, but introducing a second character to talk to.

Now we add a second character, a wanderer who has stopped at the inn for the evening:

	*: "Slightly Less Simple"

	Include Threaded Conversation by Chris Conley.

	Section 1 - Model world
	
	When play begins:
		say "It is a long and riotous evening, full of unlikely stories and tall tales. But now most of the patrons have gone away to their rooms to sleep, or have passed out before the fire. Even the two black bitch pups are curled on the hearth-stone, snuffling through tiny wet noses, and pawing the air in sleep. Now is the time to find out whether the rumors that brought you to this neighborhood are true."

	The Inn is a room. "The light is low and red. Above the fireplace hangs a map of this part of the Empire, and on the adjacent wall is the crimson and silver banner of Richard the Rose."

	The barmaid is a woman in the Inn. "The barmaid works her way from table to table, clearing away dishes and mugs."

	The wanderer is a man in the Inn. "A wanderer in grubby trousers slouches at the seat nearest the fire."

	When play begins:
		now left hand status line is "Talking to [the current interlocutor]";
		now right hand status line is "[location]".

	Section 2 - Subjects

	Immortality is a subject. Understand "eternal life" and "immortal" as immortality.

	Rumors are a subject. Understand "stories" and "legends" and "story" and "legend" and "rumor" and "gossip" as rumors.

	Old Garrick is a subject.

	Section 3 - Quips

	whether the rumors tell truly is a questioning quip. 
		It mentions immortality, rumors.
		The comment is "'Where I come from, over the black hills there, they say that men this side of the mountain live as old as Methuselah,' you remark. 'They say the secret of eternal life is here.'".
		The reply is "[if the current interlocutor is the barmaid]'Oh, do they?' she says, sweeping crumbs of cheese and crusty bread into her hand. 'The oldest codger around these parts is old Garrick, and I wouldn't put him beyond his four-score and ten.'[otherwise]'That's true enough,' says [the current interlocutor]. 'Though there are plenty around here that will deny it.'[end if]". 
	
	where Garrick lives is a questioning quip. 
		It mentions Old Garrick.
		The comment is "'Where does this old Garrick live?' you ask, trying not to seem too eager.".
		The reply is "'Down at the pig farm,' [the current interlocutor] says. 'The turn-off is just before you come to the river, on the main road west. You can find it by the smell.'".
		It indirectly-follows whether the rumors tell truly.  
		It quip-supplies the barmaid.

	where the barmaid comes from is a questioning quip. 
		It mentions barmaid.
		The comment is "'What about yourself?' you ask. 'Are you from around these parts?'".
		The reply is "'If by these parts you mean between the black hills and the river, no,' she says. 'I was born just at the far side of the ford. But I came over here to work.'".
		It quip-supplies the barmaid.
	
	whether she's heard the stories is a questioning quip. 
		It mentions immortality, rumors.
		The comment is "'Have you heard any stories of long-living men?' you press her.".
		The reply is "She pinches her lips and scrubs at a circle-shaped stain on the table before her. 'If you're a fool come looking for a spring of life or a vein of immortal gold buried in the black hills, you'd do better to go back home where you come from.'".
		It indirectly-follows whether the rumors tell truly.
		It quip-supplies the barmaid.
	
	Test me with "talk to the barmaid / ask the barmaid about rumors / ask about garrick / talk to the wanderer / ask him about the rumors".

Notice how both the barmaid and the wanderer can answer the first quip (and, using text variations, answer it in different ways); but only the barmaid knows about the last three quips, thanks to the quip-supplying relation.

Example: * Not So Simple - The inn example a third time, now with an example of a repeatable quip.

Here we're going to let the player ask the wanderer the same question several times, in case he forgets the answer the first time. We're also going to give the wanderer a prop, a miniature.

	*: "Not So Simple"

	Include Threaded Conversation by Chris Conley.

	Section 1 - Model world
	
	When play begins:
		say "It is a long and riotous evening, full of unlikely stories and tall tales. But now most of the patrons have gone away to their rooms to sleep, or have passed out before the fire. Even the two black bitch pups are curled on the hearth-stone, snuffling through tiny wet noses, and pawing the air in sleep. Now is the time to find out whether the rumors that brought you to this neighborhood are true."

	The Inn is a room. "The light is low and red. Above the fireplace hangs a map of this part of the Empire, and on the adjacent wall is the crimson and silver banner of Richard the Rose."

	The barmaid is a woman in the Inn. "The barmaid works her way from table to table, clearing away dishes and mugs."

	The wanderer is a man in the Inn. "A wanderer in grubby trousers slouches at the seat nearest the fire." The wanderer carries a miniature. 

	When play begins:
		now left hand status line is "Talking to [the current interlocutor]";
		now right hand status line is "[location]".

	Section 2 - Subjects

	Immortality is a subject. Understand "eternal life" and "immortal" as immortality.

	Rumors are a subject. Understand "stories" and "legends" and "story" and "legend" and "rumor" and "gossip" as rumors.

	Old Garrick is a subject.

	Section 3 - Quips

	whether the rumors tell truly is a questioning quip. 
		It mentions immortality, rumors.
		The comment is "'Where I come from, over the black hills there, they say that men this side of the mountain live as old as Methuselah,' you remark. 'They say the secret of eternal life is here.'".
		The reply is "[if the current interlocutor is the barmaid]'Oh, do they?' she says, sweeping crumbs of cheese and crusty bread into her hand. 'The oldest codger around these parts is old Garrick, and I wouldn't put him beyond his four-score and ten.'[otherwise]'That's true enough,' says [the current interlocutor]. 'Though there are plenty around here that will deny it.'[end if]". 
	
	where Garrick lives is a questioning quip. 
		It mentions Old Garrick.
		The comment is "'Where does this old Garrick live?' you ask, trying not to seem too eager.".
		The reply is "'Down at the pig farm,' [the current interlocutor] says. 'The turn-off is just before you come to the river, on the main road west. You can find it by the smell.'".
		It indirectly-follows whether the rumors tell truly.  
		It quip-supplies the barmaid.

	where the barmaid comes from is a questioning quip. 
		It mentions barmaid.
		The comment is "'What about yourself?' you ask. 'Are you from around these parts?'".
		The reply is "'If by these parts you mean between the black hills and the river, no,' she says. 'I was born just at the far side of the ford. But I came over here to work.'".
		It quip-supplies the barmaid.
	
	whether she's heard the stories is a questioning quip. 
		It mentions barmaid, immortality, rumors.
		The comment is "'Have you heard any stories of long-living men?' you press her.".
		The reply is "She pinches her lips and scrubs at a circle-shaped stain on the table before her. 'If you're a fool come looking for a spring of life or a vein of immortal gold buried in the black hills, you'd do better to go back home where you come from.'".
		It indirectly-follows whether the rumors tell truly.
		It quip-supplies the barmaid.
	
	what he knows is a questioning quip. 
		It mentions rumors, wanderer.
		The comment is "[one of]'What do you know about those who live forever?' you ask[or]'Tell me more about the secrets of eternal life concealed here,' you plead[stopping].".
		The reply is "[one of]'I met last month a man that used to be a friend of my grandfather. My grandfather's long dead and in the ground, and this man looks younger than myself. I have a miniature painting of them two together, and I tell you he has not aged a moment.'[or]'I myself do not know how it is done,' he responds. 'They guard the secret carefully in these parts, as well they should.'[or]'I've told you all I know -- which is almost nothing,' he says. 'Only that I've met a man that has not aged since my grandfather's day, and maybe longer than that.'[or]He tells you again about his encounter with this implausibly young man, embellishing the story a little -- though not with any details that would help you find the fellow.[stopping]".
		It quip-supplies the wanderer.
		It indirectly-follows whether the rumors tell truly.
		It is repeatable.

	whether you may see the miniature is a questioning quip. 
		Understand "I" as whether you may see the miniature.
		It mentions miniature, yourself.
		The comment is "'May I see this miniature? I'm curious to see the man who has lived without aging.'".
		The reply is "'Why not?' He searches through the pockets of his coat, and then the pockets of his trousers, and finally -- looking surprised and much relieved -- finds what he was looking for tucked away in his boot. 'Here it is: have a look.' [paragraph break]And he extends for view an old-fashioned locket: painted on an ivory rectangle are the images of two young men. They are painted so small that it would be hard to guarantee that you would recognize them again.".
		It quip-supplies the wanderer.
		It indirectly-follows what he knows.
	
	Test me with "talk to the wanderer / ask him about the rumors / ask what he knows / g / g / g / ask whether I may see the miniature".

Notice that we are allowed to ask the "what he knows" quip a number of times, but that after the first time of asking, it stops being suggested to the player: the "you could ask..." sentence does not suggest things that the player has already tried. This is one of several reasons why we shouldn't hide new information in the later stages of the same quip. If we want to give the player more information about a subject, we should make separate quips. Having a repeatable quip is useful mostly in that it lets the player again hear information that he might have forgotten and that is vital to the progress of the game.

Note also that "whether you may see the miniature" becomes available after the first time we use the repeatable quip. "Indirectly-follows" (or its more fussy relative, "directly-follows") only require that the prerequisite quip has been used once, not that all of its text variations have been exhausted.

Example: ** The King of Everything - An example in which the player can re-ask all questions, but on the second and subsequent askings, the game replays the literal text of the first question.

Here let's say we want to modify Threaded Conversation to produce a conversation a bit more like older-style ASK/TELL conversations. The player is allowed to re-ask the same questions more or less as many times as he likes, though on the second time of asking he gets a reply like

	You remember your conversation as follows:

	"I was born on the underbelly of the moon," he replies. "But, growing tired of living there, and constantly able to see the beautiful colors of the earth, I took wing and flew down here."

We also do not provide any cues about special things to say, and we avoid using performative quips. 

	*: "The King of Everything"

	Include Threaded Conversation by Chris Conley.

	The Black Palace is a room. The King of Everything is here.
	
	Quips are usually repeatable.  The offer hint quips rule is not listed in any rulebook.

	Instead of discussing something which is recollected by the current interlocutor:
		say "You remember your conversation as follows: 
		
		[italic type][the reply of the noun][roman type][line break]".
	
	Who is a subject.

	[The following quip was automatically built with Conversation Builder, though we could have written it by hand. Notice that we use printed name to avoid having the word "is" as part of the quip name; this confuses Inform at compilation time.]
	
	who he seems is a questioning quip. 
		The printed name is "who he is". The true-name is "who he seems". 
		Understand "is" as who he seems. 
		It mentions king, who.
		The comment is "'Just who are you?' you ask, your pen poised over your notepad. 'We want to know everything.'".
		The reply is "'I was born on the underbelly of the moon,' he replies. 'But, growing tired of living there, and constantly able to see the beautiful colors of the earth, I took wing and flew down here.'".
		It quip-supplies King. 

	Test me with "talk to king / ask the king about the king / g".

We will, of course, want to add many more quips after this one.

Example: ** Conferences - An example in which eavesdropping third parties will react if they hear anything in the conversation that they find upsetting.

To keep this example simple, we will have just one piece of information that could be upsetting to the third-party listener, but we want him to react to it immediately, regardless of whether it is revealed by the player's speech or by the current interlocutor's reply.

To do this, we add a "characters think rule", which we call once before the active conversation rule (that is, before the current interlocutor has a chance to respond to us), and once at the end of the conversation-reply rules (after the current interlocutor has said anything she is going to say). We could write any amount of reasoning into the characters think rule, even allowing them to infer complex conclusions from facts.

The specific quips are once again generated by Conversation Builder.
	
	*: "Conferences"

	Include Threaded Conversation by Chris Conley.

	The Conference Chamber is a room.

	Thurg is a man in the Conference Chamber. Lavine is a woman in the Conference Chamber.

	The characters think rule is listed before the active conversation rule in the every turn rules. 
	
	This is the characters think rule:
		repeat with item running through people who are not the player:
			follow the thinking rules for the item.
	
	A conversation-reply rule:
		follow the characters think rule.	

	The thinking rules are an object-based rulebook.

	Table of All Known Facts (continued)
	fact	summary
	elf-human alliance	"Elves and humans are allying against the trolls."

	A thinking rule for Thurg:
		if Thurg knows elf-human alliance and the player can see Thurg:
			say "Thurg roars in fury and begins to choke the life out of you, shouting 'NO ELF-HUMAN ALLIANCE' again and again.";
			end the story saying "You have died".

	Meeting is a subject.

	why she hath come is a questioning quip. 
		The printed name is "why she has come". The true-name is "why she hath come". 
		Understand "have" or "has" as why she hath come. 
		It mentions Lavine, meeting.
		The comment is "'Why have you come?' you demand of Lavine urgently. You keep your voice as low as you are able, but Thurg nonetheless watches you with obvious comprehension.".
		The reply is "'Why, to see what it was you were saying to the trolls, of course,' she answers in a clear, bell-like tone. 'Our alliance [elf-human alliance]is still young, eh?'".
	 	It quip-supplies Lavine.

	this alliance will be a happy one is an informative quip. 
		It mentions Lavine, meeting.
		The comment is "'I am so glad to see you,' you tell Lavine. 'I am sure the alliance of our two peoples [elf-human alliance]will be a long and happy one.'".
		The reply is "'That is my hope as well,' she says musically.".
		It quip-supplies Lavine.

	Test me with "talk to Lavine / ask why she has come".

	Test again with "talk to Lavine / t alliance".
	
Example: *** Blackened Blue - An example that demonstrates conversation queueing, self-directed NPC conversation, and advanced quip formatting features.

This example demonstrates more advanced control of conversation formatting through various combinations of weakly- and strongly-phrased player-directed quips and beat- and speech-opened NPC-directed quips.

Character conversation queueuing and intentional conversation is also displayed, as well as some manipulation of physical objects through dialog.

	*: "Blackened Blue"
	
	Include Threaded Conversation by Chris Conley.
	
	Section 1 - Scene
	
	Chief's Office is a room. "Morning sunlight through the windows cuts yellow daggers across the Chief's desk. A single ceiling fan spins lazily, useless in the already mounting heat. Across from the door, a dart board is surrounded by newspaper clippings, and a clock ticks loudly from the wall behind you."
	
	Chief is a man in the Office. "The Chief [one of]nods as you enter[or]is seated behind his desk[stopping]."
		The description is "Worn down and worn out. Two decades in the city have not been kind to him."
		
	For beat-producing when the current interlocutor is Chief:
		say "[one of][The Chief] leans back in his chair[or][The Chief] rubs his chin[or][The Chief] stands, then thinks better of it and sits back down[or][The Chief] squints at you[or][The Chief] glances at some papers on his desk[at random].[run paragraph on]".
	For beat-producing when the current interlocutor is nothing and Chief is in the location:
		say "[one of][The Chief] clears his throat[or][The Chief] raises an eyebrow[at random].[run paragraph on]".
		
	For printing the name of the Chief while saying hello to: say "the Chief".
		
	Name printed is a truth state that varies. Every turn: now name printed is false.
	
	For printing the name of the Chief while an actor discussing, beat-producing:
		if a random chance of 1 in 2 succeeds and name printed is false:
			say "The Chief";
			now name printed is true;
		otherwise:
			say "He".
	
	The office door is an open scenery door, outside from the Office, inside from the Hall.
	
	Instead of going to Hall:
		say "'We're not finished here, McGorsky.' [run paragraph on]";
		carry out the avoiding talking heads activity;
	
	A scenery supporter called his desk is in the Office. Some papers are on the desk. A phone is fixed in place, on the desk.
	
	The window, a ceiling fan, the dart board, some newspaper clippings, and a clock are scenery in the office. Understand "morning/sunlight/daggers/yellow/dust/dusty/air" as the window.
	
	Section 2 - Quips
		
	first spiel is an NPC-directed beat-opened quip.
		the reply is "The Chief [unless we have closed the office door]shuts the door and [end if]sits down. 'Look, McGorsky. You're a good cop but you got a bad break. I'm moving you to North Division until things calm down in Chinatown.'"
		
	After Chief discussing first spiel:
		now the office door is closed;
		now the office door is locked;
		continue the action.
		
	about his family is a questioning quip, quip-supplying Chief.
		The comment is "'How's your family, Bob?'".
		The reply is "He shrugs. 'Can't complain, really.'".
		it mentions Chief.
		An availability rule for about his family: 
			if the player recollects first spiel, it is off-limits.
		
	what's up is a weakly-phrased questioning quip, quip-supplying Chief.
		The comment is "You decide to cut to the chase. 'So what's the damage, Chief?'".
		The reply is "'Bad. Real bad.'".
		It mentions Chief.
		An availability rule for what's up:
			if the player recollects first spiel, it is off-limits.
		
	protest is a performative quip, quip-supplying the Chief.
		The comment is "'There must be some other way!'".
		The reply is "He shakes his head. 'No. It's too hot right now, McGorsky.'".
		It directly-follows first spiel.
		
	argue further is a weakly-phrased performative quip, quip-supplying the Chief.
		The comment is "'Just give me another chance. I won't let you down again.'".
		The reply is "'Not happening.'".
		It directly-follows protest.
		
	you understand is an informative quip, quip-supplying the Chief.
		The comment is "'Yes, sir. I understand.'".
		The reply is "'Right. Glad to hear it, McGorsky. You're a good egg.'".
		It indirectly-follows first spiel and protest.
		Understand "I" or "I understand" as you understand.

	second spiel is an npc-directed quip.
		The reply is "'Now, McGorsky. I want you to meet your new partner.' [The Chief] picks up the phone, says 'You can send her in.'"

	Section 3 - Plot

	When play begins:
		say "What went down at the quay was harrowing. You were lucky to get out alive.

	So you weren't surprised when the Chief called you in to his office first thing Monday morning."

	After saying hello to Chief:
		we stock Chief's queue in 0 turns from now; [We want the player to have a chance to say something at the start, if desired]
		continue the action.
		
	At the time when we stock Chief's queue:
		queue first spiel as postponed obligatory;
		queue second spiel as postponed obligatory;
		
	Every turn when Chief is not the current interlocutor:
		now the current interlocutor is Chief;
		queue second spiel;
		queue first spiel.
		[The default queue behavior is actually first in, last out.]
				
	Endgame is a scene. Endgame begins when the player recollects second spiel.
		
	When Endgame begins: 
		say "The door opens...";
		end the story finally saying "To be continued".
		
	Test me with "greet Chief / ask about family / protest / argue".
	Test again with "greet Chief / ask what's up / say I understand".