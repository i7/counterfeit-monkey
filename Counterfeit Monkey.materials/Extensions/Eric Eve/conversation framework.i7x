Version 12 of Conversation Framework by Eric Eve begins here.

"A framework for conversations that allows saying hello and goodbye, abbreviated forms of ask and tell commands for conversing with the current interlocutor, and asking and telling about things as well as topics."

Book 0 - Includes

Include Epistemology by Eric Eve.

Book  1 - Actions for asking and telling about things

Chapter  1 - Action Definitions

Section 1 - New actions and grammar

Requesting it for is an action applying to two visible things.
Imploring it for is an action applying to one visible thing and one topic.

Understand the command "ask" as something new.

Understand "ask [someone] about [text]" as asking it about.

Understand "ask [someone] for [any known thing]" as requesting it for.
Understand "ask [someone] for [text]" as imploring it for.

Quizzing it about is an action applying to two visible things.

Understand "ask [someone] about [any known thing]" as quizzing it about.

Informing it about is an action applying to two visible things.

Understand "tell [someone] about [any known thing]" as informing it about.

Section 2 - Specifications

The specification of the quizzing it about action is "This action responds to commands like ASK FRED ABOUT BOAT, where BOAT is a thing defined in the game, rather than a topic."

The specification of the informing it about action is "This action responds to commands like TELL FRED ABOUT BOAT, where BOAT is a thing defined in the game, rather than a topic."

The specification of the requesting it for action is "This action effectively replaces the library's asking it for action. Like asking it for it matches ASK BOB FOR SOMETHING, but unlike asking it for it makes no assumptions that this is equivalent to BOB, GIVE ME SOMETHING. Instead it can match any object known to the player, and the response can be anything we care to define."

The specification of the imploring it for action is "This action provides handling for ASK SOMEONE ABOUT SOMETHING where SOMETHING is a topic rather than a thing, e.g. ASK BILL FOR ADVICE."


Chapter  2 - Some useful default rules

Report informing someone about something (this is the block informing rule):
  say "[There] [are] no reply." (A).

Report quizzing someone about something (this is the block quizzing rule):
  say "[There] [are] no reply." (A).

Instead of asking a female person about "herself" (this is the asking a woman about herself rule):
  try quizzing the noun about the noun.

Instead of asking a male person about "himself" (this is the asking a man about himself rule):
  try quizzing the noun about the noun.


Book  2 - Abbreviated commands for addressing the current interlocutor

The current interlocutor is an object that varies.
The current interlocutor is nothing.

Implicit-asking is an action applying to one topic.

Understand "ask about [text]" or "a [text]" as implicit-asking.

implicit-telling is an action applying to one topic.

Understand "t [text]" as implicit-telling.

implicit-quizzing is an action applying to one visible thing.
  Understand "ask about [any known thing]" or "a [any known thing]" as implicit-quizzing.

implicit-informing is an action applying to one visible thing.
  Understand "t [any known thing]" or "talk about [any known thing]" as implicit-informing.

implicit-requesting is an action applying to one visible thing.
  Understand "ask for [any known thing]" as implicit-requesting.

implicit-imploring is an action applying to one topic.
  Understand "ask for [text]" as implicit-imploring.

implicit-asking is implicit-conversing. 
implicit-telling is implicit-conversing. 
implicit-quizzing is implicit-conversing. 
implicit-informing is implicit-conversing.
implicit-requesting is implicit-conversing.
implicit-imploring is implicit-conversing.

Before implicit-conversing when the current interlocutor is nothing (this is the implicit-conversing needs current interlocutor rule):
let np be the number of visible people who are not the player;
if np is 0,  say "[There's] no one [here] to talk to." (A);
if np > 1, say "You need to specify who you want to speak to." (B);
if np is not 1, stop the action;
let the interlocutor be a random visible person who is not the player;
 if the interlocutor is a person begin;
   say "(addressing [the interlocutor])" (C);
   let sn be the second noun;
   implicitly greet the interlocutor;
   if the current interlocutor is not the interlocutor, stop the action; 
   now the second noun is sn;
 otherwise ;
  say "[We] [aren't] talking to anyone." (D);
  stop the action;
end if.

Before implicit-conversing when the current interlocutor is not visible and the current interlocutor is not nothing  (this is the can't converse with absent interlocutor rule):
  say "[The current interlocutor] [aren't] [here]." (A);
  reset the interlocutor instead.

Instead of implicit-asking:
  try asking the current interlocutor about it.

Instead of implicit-telling:
  try telling the current interlocutor about it.

Instead of implicit-quizzing:
  try quizzing the current interlocutor about the noun.

Instead of implicit-informing:
  try informing the current interlocutor about the noun.

Instead of implicit-requesting:
  try requesting the current interlocutor for the noun.

Instead of implicit-imploring:
  try imploring the current interlocutor for it.

[
After reading a command when the player's command matches "a [thing]" and the current interlocutor is not a person:
  if the number of visible people who are not the player > 1 begin;
     say "Whom do you want to ask?";
     reject the player's command;
  end if.
]

Book 3 - Greeting Protocols

Chapter 0 - New Verbs

To say is a verb. 

Chapter 1 - Greeting Definitions

Asking someone about something is conversing.
Telling someone about something is conversing.
Quizzing someone about something is conversing.
Informing someone about something is conversing.
Answering someone that something is conversing.
Asking someone for something is conversing.
Requesting someone for something is conversing.
Imploring someone for something is conversing.

Asking someone about something is speaking.
Telling someone about something is speaking.
Quizzing someone about something is speaking.
Informing someone about something is speaking.
Answering someone that something is speaking.
Asking someone for something is speaking.
Requesting someone for something is speaking.
Imploring someone for something is speaking.


Saying yes is speaking.
Saying no is speaking.
Saying sorry is speaking.


Chapter  2 - Greeting

Before conversing when the noun is not the current interlocutor (this is the greet a new interlocutor rule):
  implicitly greet the noun;
  if the noun is not the current interlocutor, stop the action.

Before showing something to someone when the second noun is not the current interlocutor (this is the showing needs an interlocutor rule):        
  implicitly greet the second noun;
  if the second noun is not the current interlocutor,  stop the action.
 
Before giving something to someone when the second noun is not the current interlocutor (this is the giving needs an interlocutor rule):
  if the current interlocutor is not a person, abide by the implicit-conversing needs current interlocutor rule;
  implicitly greet the second noun;
  if the second noun is not the current interlocutor, stop the action.

Before asking someone to try doing something when the person asked is not the current interlocutor (this is the giving orders needs an interlocutor rule):
  implicitly greet the person asked;
  if the person asked is not the current interlocutor, stop the action.

To implicitly greet (character - a thing):
  now the greeting type is implicit;
  try saying hello to the character.


Saying hello to is an action applying to one visible thing.

Understand "greet [something]" or "say hello/hi to [something]" or "talk to [something]" as saying hello to.

Check saying hello to a person when the noun is the current interlocutor (this is the can't greet current interlocutor rule):
    if the noun is the player, say "Talking to [ourselves] [regarding nothing][are] unrewarding." (A) instead;
    say "[We] [are] already talking to [the noun]." (B) instead.

Check saying hello to the player (this is the can't greet yourself rule):
   say "Talking to [ourselves] [regarding nothing][are] likely to prove unrewarding." (A) instead.

Carry out saying hello to a person (this is the note current interlocutor when greeted rule):
  now the current interlocutor is the noun.

Report saying hello to something that is not a person (this is the can't greet inanimate objects rule):
  say "[The noun] [do not] respond."

Report saying hello to someone when the greeting type is explicit (this is the default greeting rule):
  say "[We] [say] hello to [the noun]." (A).

Hailing is an action applying to nothing.

Understand "hello" or "hi" or "say hello/hi" as hailing.

Before asking someone to try hailing (this is the change greeting command to greeting rule):  
  now the greeting type is explicit;
  try saying hello to the person asked;
  rule succeeds.

The change greeting command to greeting rule is listed before the giving orders needs an interlocutor rule in the before rules.

Check hailing (this is the check what's being hailed rule):
  if the current interlocutor is a visible person, 
    say "[We] [are] already talking to [the current interlocutor]." (A) instead;
  now the noun is a random visible person who is not the player;
  if the noun is a person and the noun is not yourself and the noun is not the player,  
    say "(addressing [the noun])" (B);
  otherwise say "[There's] no one [here] but [us]." instead.

Carry out hailing (this is the standard hailing rule):
  try saying hello to the noun.
  

Persuasion rule for asking people to try hailing (this is the allow hailing rule): persuasion succeeds.

A protocol type is a kind of value. The protocol types are implicit and explicit.

Greeting type is a protocol type that varies. Greeting type is explicit.

When play begins: reset the interlocutor.

Chapter 2  - Saying Goodbye

Farewell type is a protocol type that varies. Farewell type is explicit.

[ This is the only way I could figure to effectively change the current interlocutor to no one]

To reset the interlocutor:
  now the current interlocutor is nothing. [a random person who is not a person]

Leavetaking is an action applying to nothing.

Understand "bye" or "goodbye" or "cheerio" or "farewell" as leavetaking.

Saying goodbye to is an action applying to one visible thing.

Understand "say bye/goodbye/farewell/cheerio to [someone]" as saying goodbye to.

Check saying goodbye to something when the noun is not the current interlocutor (this is the can't say goodbye to someone you're not talking to rule):
  say "[We] [aren't] talking to [the noun]." (A) instead.

Carry out saying goodbye to something (this is the reset interlocutor on saying goodbye rule):   
  reset the interlocutor.

Check leavetaking when the current interlocutor is not a visible person (this is the don't allow saying goodbye to no-one rule):
  say "[We] [aren't] talking to anyone." (A) instead.

Carry out leavetaking (this is the standard leavetaking rule):
  try saying goodbye to the current interlocutor.

Persuasion rule for asking people to try leavetaking (this is the allow leavetaking rule): persuasion succeeds.

Carry out someone trying leavetaking (this is the convert npc leavetaking to player leavetaking rule):
  try saying goodbye to the person asked.

Report saying goodbye to someone when the farewell type is explicit (this is the default saying goodbye rule):
   say "[We] [say] goodbye to [the noun]."

This is the say goodbye when moving rule:
    if the current interlocutor is a person enclosed by the location begin;
        now the farewell type is implicit;
        try saying goodbye to the current interlocutor;
   end if.


The say goodbye when moving rule is listed first in the carry out going rules.

[
Before going from somewhere when the current interlocutor is a person in the location (this is the say goodbye when moving rule):
  change the farewell type to implicit;
  try saying goodbye to the current interlocutor.  

The say goodbye when moving rule is listed first in the before rules.
]

Chapter 3 - Reset protocol each turn

Every turn (this is the reset protocol rule):
  now the farewell type is explicit;
  now the greeting type is explicit.

Book 4 - Yes, No and Sorry

saying yes is implicit-conversing.
saying no is implicit-conversing.
saying sorry is implicit-conversing.

Before asking someone to try saying yes (this is the greet before saying yes rule):
  if the person asked is not the current interlocutor, implicitly greet the person asked;
  try saying yes instead.

Before asking someone to try saying no (this is the greet before saying no rule):
  if the person asked is not the current interlocutor, implicitly greet the person asked;
  try saying no instead.

Before asking someone to try saying sorry (this is the greet before saying sorry rule):
  if the person asked is not the current interlocutor, implicitly greet the person asked;
  try saying sorry instead.

Before answering someone that "yes" (this is the change answering yes to saying yes rule):
  try saying yes instead.

Before answering someone that "no" (this is the change answering no to saying no rule):
  try saying no instead.

Before answering someone that "sorry" (this is the change answering sorry to saying sorry rule):
  try asking the noun to try saying sorry instead.

Understand "tell [someone] [text]" as answering it that. Understand "tell [someone] that [text]" as answering it that.


Book 4 - Limiting what can be spoken about

Check quizzing someone about something unknown (this is the block asking about something unknown rule):
  abide by the block asking rule.

Check informing someone about something unknown (this is the block telling about something unknown rule):
  abide by the block telling rule.

To say make (obj - a thing) known/familiar:
  now obj is familiar.


Conversation Framework ends here.


---- DOCUMENTATION ----

Chapter: Overview

Section: Summary

This extension provides three main features: (1) implementing asking and telling about things as well as objects; (2) allowing players to use abbreviated forms of the ASK and TELL commands; and (3) some rudimentary greeting protocols (saying hello and goodbye).

Note that this extension uses the extension Epistemology by Eric Eve, which therefore also needs to be installed on your machine for this extension to work.

Section: Changes in Version 7

The global variable called "the default interlocutor" is now an object that varies (formerly it was a person that varies). These now allows it to take the value nothing when there is no current interlocutor. The phrase "reset the interlocutor" now sets the default interlocutor to nothing.

The say goodbye when moving rule, which triggers an implicit farewell when moving away from the location of the current interlocutor, is now triggered at the carry out stage instead of the before stage of going. This change prevents the triggering of an (inappropriate) implicit farewell when travel is attempted but not permitted.

Chapter: Asking and Telling about Things

Two new actions are provided: informing about it and quizzing about it (corresponding to TELL SOMEONE ABOUT A THING and ASK SOMEONE ABOUT A THING). By default this allows anything in the game world to be asked about (although this can be changed by imposing knowledge restrictions, as in the example that follows). Responses can be customised with rules like:

	After informing Fred about the golden goose:
 	say "'I've just seen a golden goose - out in the yard!' you exclaim.

            'You've been out in the sun too long,' he opines."

Chapter: Revised Ask For

The ASK FOR action in the library is rather restricted in its use. It assumes that the player is asking an NPC to hand over something in plain sight. But we might want to enable ASK BOB FOR INFORMATION or ASK FOR SYMPATHY or ASK BOB FOR GOLDEN KEY (even when the golden key is nowhere in sight).

This extension thus detaches the grammar ASK SOMEONE FOR SUCH-AND-SUCH from the ask it for action and attached to a new pair of actions, somewhat arbitrarily named requesting it for and imploring it for. Requesting it for matches "ask [someone] about [any known thing]", while imploring it for matches "ask [someone] about [text]". By default these actions do nothing at all, so it's up to us to write whatever handling we want for them in our game (including any default responses), or we can use Conversation Responses and Conversation Defaults, which provide some handling for them (if we use these two extensions we also don't need to remember the rather arbitrary action names, since we can then write rules likes 'response of Bob when asked for his hat' or 'response of Bob when asked for "sympathy"' or 'default ask-for response for Bob').


Chapter: Abbreviated ASK and TELL

Once a conversation is under way, commands such as TELL FRED ABOUT GOOSE and ASK BILL ABOUT JULIA can be abbreviated by the player to T GOOSE and A JULIA. If no conversation is under way when one of these command forms is used, the game will try to pick a random interlocutor, if one is available.

The author doesn't have to do anything to enable this feature, but it may be useful to know that the actions invoked by these actions are called implicit-asking, implicit-telling, implicit-quizzing and implicit-informing.

Similarly the player can use ASK FOR MONEY or ASK FOR FORGIVENESS, which trigger the implicit-requesting action (if the player asks for a thing) or the implicit-imploring action (if the player asks for a topic). These will be converted into the appropriate requesting it for/imploring it for actions.


Chapter: Greeting Protocols

Section: Hello and Goodbye

This extension provides commands like SAY HELLO TO FRED or SAY GOODBYE TO BILL to explicitly start and end conversations. The corresponding actions are Saying hello to someone and Saying goodbye to someone.

The commands FRED, HELLO and BILL, GOODBYE have the same effect as SAY HELLO TO FRED and SAY GOODBYE TO BILL respectively.

The command GOODBYE by itself will terminate the conversation with the current interlocutor (if there is one).

The command HELLO by itself will start a conversation with a randomly chosen interlocutor, if one is available to be spoken to.

In all these commands, GOODBYE may be abbreviated to BYE.

The actions corresponding to HELLO and GOODBYE are called hailing and leavetaking - but since these are usually rerouted to saying hello to and saying goodbye to, we probably shan't need to worry about them much.

The default responses to the commands aren't very interesting ("You say hello to Fred." and "You say goodbye to Bill") so you'll probably want to provide your own, e.g.:

	After saying hello to Fred:
	say "'Hi, there, Fred old fellow!' you exclaim

	'Well, hello there!' he grins."

	After saying goodbye to Jill:
	say "'Well, cheerio then,' you say.
      
	'Bye now - you take care!' she replies."

Section: Implicit Greetings

In addition to these explicit greetings, Conversation Framework also implements implicit greetings. Whenever we address a conversational command to someone who isn't already the current interlocutor, an implicit SAY HELLO TO the new interlocutor will be executed. Likewise, if we terminate a conversation by simply moving to another location, an implicit SAY GOODBYE TO is executed. If we have not defined any saying goodbye or saying hello rules of our own, nothing much will appear to happen with these implicit greetings, but if we have, we shall find our hello and goodbye rules being invoked.

We may want to distinguish between greetings that the player has explicitly commanded (through commands such as SAY HELLO TO, or BYE) and those he has triggered by using a conversational command (to start a conversation) or a movement command (to end one). To that end we can test whether the global variables greeting type and farewell type contain the values implicit or explicit, e.g.:

	After saying hello to Fred when the greeting type is explicit:
	say "'Hi, there, Fred old fellow!' you exclaim.

	'Well, hello there!' he grins."

	After saying hello to Fred when the greeting type is implicit:
	say "Fred looks up when you speak."

	After saying goodbye to Jill when the farewell type is explicit:
	say "'Well, cheerio then,' you say.
      
	'Bye now - you take care!' she replies."
	
	After saying goodbye to Jill when the farewell type is implicit:
            say "Jill waves vaguely and goes back to her reading."

Chapter: Yes, No and Sorry.

Conversation Framework converts commands like BOB, YES and SAY YES TO BOB to just YES (i.e. the saying yes action), and similarly with BOB, NO and BOB, SORRY or SAY NO TO BOB or SAY SORRY TO BOB.

It also treats all these commands as conversational, so that they will trigger greeting protocols, just like ASK and TELL.

Chapter: Conversations and Player Knowledge

Section: Player Knowledge

Conversation Framework includes the Epistemology extension in order to restrict conversational commands relating to objects (as opposed to topics) to things the player character knows about. Thus ASK BOB ABOUT DIAMOND RING or TELL BOB ABOUT DIAMOND RING or ASK BOB FOR DIAMOND RING will only match quizzing it about, informing it about, or requesting it for with a second noun of diamond ring if the player character already knows about the diamond ring (otherwise the command will match asking it about, telling it about, or imploring it about with a topic understood of "diamond ring").

Every thing in the game is either known or unknown, but this is not a property that can be set directly. A thing is known either if the player character has seen it or if it familiar: the familiar/unfamiliar property is one we can set directly (with 'now x is familiar/unfamiliar').

Since the player might well to come to know something in the course of conversation, we provide a convenient 'to say' phrase ('make something known' or 'make something familiar') which can be used to make an object familiar (and hence known) within a piece of text that's being said, e.g.:

	After quizzing Bob about Bob:
	say "'How are things?' you ask.

'Not too good, I've lost my wallet,' [make lost wallet known] he tells you."

This allows the player to refer to the lost wallet in subsequent conversational commands (whereas previously ASK BOB ABOUT WALLET would have been treated as asking him about some unknown topic).


Section: Subjects

We may sometimes want to ask characters about things that would not normally be implemented as objects in the game, such as life, liberty and the pursuit of happiness. To allow this the Epistemology defines the subject kind. So we could, for example, define:

	life is a subject.

Which then allows us to write rules like:

	Instead of quizzing Fred about life.

Note that a subject is familiar by default. If we want a subject to start out unfamiliar (because the player is not meant to know about it until he makes some discovery or another character tells him about it) we could define it as unfamiliar (and change it to familiar once it becomes known), for example:

	the secret formula is an unfamiliar subject.


Section: Disambiguation

One problem that can arise with allowing the player to ask (quiz) or tell (inform) about things in the game is that since all known things are in scope for the quizzing it about and informing it about actions, several things may match what the player types, leading to undesirable exchanges like:

	>ask bob about the ball
	Which do you mean, the rubber ball, the Bingleys' Ball, the ball gown, the ball or the ball?

To be sure, in some cases the player may have asked a genuinely ambiguous question for which a disambiguation prompt may be the best response. Often, though, players will find it annoying and inappropriate, and it would be better if the parser simply picked one of the alternatives.

There's more than one way of dealing this; the best one will depend on the precise nature of the game we're writing. One method might be to define a set of does the player mean statements:

	*: Does the player mean quizzing about something conversation-preferred: it is likely.

	Does the player mean informing about something conversation-preferred: it is likely.

	Does the player mean implicit-quizzing something conversation-preferred: it is likely.

	Does the player mean implicit-informing something conversation-preferred: it is likely.

We can then implement the conversation-preferred adjective in whatever way best suits us. We could define it as a property:

	A thing can be conversation-preferred. A thing is usually not conversation-preferred.

But we may feel this is a bit inefficient if we need only to pick out a few items that need rescuing from disambiguation prompts in this situation. An alternative might be to define an adjective that applies to a handful of objects:

	Definition: a thing is conversation-preferred:
	if it is the Bingley's Ball, decide yes;
	if it is the tall fence, decide yes;
	if it is the meaning of life, decide yes;
	decide no.

There are other ways of tackling this problem; not least, using Jon Ingold's Disambiguation Control extension would allow a finer degree of control. The main thing is to be alert to the potential problem and to come up with some way of dealing with it.


Chapter: Final Notes

Section: The Current Interlocutor

The global variable current interlocutor contains the person the player is currently talking to (or nothing, if no conversation is in progress).

If you want to end a conversation programmatically (bypassing the leavetaking protocols) use the statement

	reset the interlocutor;

Section: Other Conversation Extensions

As its name implies, Conversation Framework is intended to provide a framework for conversations: it is not a complete conversation system. If you need further functionality, you may want to use one or more of the following extensions in addition:

The extension Conversational Defaults provides an additional framework for handling default responses to all the conversational commands handled here.

The extension Conversation Responses provides a framework for handling conversational commands through rules like 'Response of Bob when asked about Mary'.

The extension Conversation Nodes provides a means of adding further structure to a conversation at particular points.

The extension Conversation Suggestions provides a means of suggesting topics of conversation to the player.

The extension Conversation Package uses all of the above and also includes code to make Conversation Suggestions work better with Conversation Nodes.


Example: ** The Ring, the Gardener and the the Maid - Putting Conversation Framework through its paces.

	*: "The Ring, the Gardener and the the Maid"

	Book 1 - Setup
	
	Include Conversation Framework by Eric Eve.

	Instead of giving something to someone, try showing the noun to the second noun.	

	jim-knows-ring is a truth state that varies. jim-knows-ring is false.

	Book 2 - Scenario

	Chapter  1 - The Dining Room

	The Dining Room is a room. "Most of the room is taken up with a large wooden dining table. The only way out is to the south."

	The large wooden dining table is a supporter in the Dining Room. It is scenery.

	On the large wooden dining table is a gold ring. It is wearable.

	Chapter 2 - Sarah

	Sarah is a woman in the Dining Room. "Sarah is [if Sarah is the current interlocutor]standing by the table, looking at you[otherwise]busily polishing the table[end if]." The description is "She's a pretty young brunette."

	Understand "pretty" or "young" or "woman" or "brunette" as Sarah.

	After saying hello to Sarah when the greeting type is explicit:
	say "'Hello there!' you say.[paragraph break]'Hello!' she replies with a grin."

	After saying hello to Sarah when the greeting type is implicit:
	say "'Excuse me', you say.[paragraph break]'Yes?' she asks."

	Asking Sarah about something is Sarah-chatting.
	Telling Sarah about something is Sarah-chatting.

	After quizzing Sarah about Sarah:
	  say "'How are you, Sarah?' you ask.[paragraph break]'I'm fine, thank you.' she assures you."

	After quizzing Sarah about the gold ring when the gold ring is on the table:
	 say "'Is that your ring?' you ask, nodding towards the table.[paragraph break]'No, I found it on the floor.' she tells you."

	After quizzing Sarah about the gold ring when the player has the gold ring:
	  say "'You don't mind if I take this ring then?' you ask.[paragraph break]'As long as you're only taking it to return it to its owner.' she replies."

	After Sarah-chatting when the topic understood matches "[weather]":
	  say "'Lovely weather today, don't you think?' you remark.[paragraph break]'Don't you have anything more interesting to talk about?' she complains."
  
	After quizzing Sarah about the dining table:
	  say "'Have you been polishing that table long?' you ask.[paragraph break]'Long enough.' she replies."

	After saying goodbye to Sarah when the farewell type is explicit:
	  say "Cheerio then,' you say.[paragraph break]'See you,' she replies."

	After quizzing Sarah about Jim:
	  say "'What do you think of Jim?' you ask.[paragraph break]'That's for me to know and you to find out,' she replies mysteriously."

	After informing Sarah about Jim when the Garden is visited:
	  say "'Well, Jim seems to be hard at work weeding,' you remark.[paragraph break]'He should try getting this table clean!' she replies."

	After informing Sarah about the flower beds:
	  say "'The flower beds are coming on nicely,' you remark.[paragraph break]'I'm sure Jim knows his job,' she replies."

	After saying goodbye to Sarah when the farewell type is implicit:
	  say "Sarah goes back to polishing the table."

	After conversing when the noun is Sarah:
	  say "She mutters something incomprehensible under her breath."

	Understand "weather" or "the weather" as "[weather]".

	Chapter 3 - The Hall

	The Hall is south of the Dining Room. "This large bare hall has exits to north and east."

	Chapter 4 - The Garden

	The Garden is east of the Hall. "The front lawn is surrounded by flower beds. The way back into the hall is to the west."

	Some flower beds are scenery in the Garden. The description is "They are shaping up nicely." 
	
	Chapter 5 - Jim

	Jim is a man in the Garden. "Jim is [if jim is the current interlocutor]standing by one of the flower beds, talking to you[otherwise]bent over over of the beds, busily weeding[end if]."

	After saying hello to Jim when the greeting type is explicit:
	  say "'Hello there, Jim!' you say.[paragraph break]Jim painfully straightens himself, hand on hip, then focus on you, grunting, 'Good afternoon!'"

	After saying hello to Jim when the greeting type is implicit:
	  say "You attract Jim's attention with a cough, and he straightens painfully to hear what you have to say."

	After informing Jim about the gold ring when the gold ring is on the dining table:
	  say "'I saw a gold ring on the dining table: is it yours?' you ask.[paragraph break]'It might be - can't say till I see it,' he grunts."

	Instead of informing Jim about the gold ring when the player has the gold ring:
	  try showing the gold ring to Jim.

	Instead of showing the gold ring to Jim:
	if jim-knows-ring is true begin;
		 say "'You're quite sure that ring isn't yours?' you ask.[paragraph break]'Quite sure,' he affirms.";
	otherwise;
	  	now jim-knows-ring is true;
	  	say "'Is this your ring?' you ask.[paragraph break]Jim takes one look at him and shakes his head, 'Nah, I wouldn't be seen dead wearing a poncy thing like that!' he declares.";
	end if.
		 

	Instead of quizzing Jim about the gold ring:
	  try informing Jim about the gold ring.

	After informing Jim about Sarah:
	  say "'Sarah seems to be hard at work in the dining room,' you remark.[paragraph break]'Aye, she's a hard-working girl is that one,' Jim concurs."

	After quizzing Jim about Sarah:
	  say "'What do you think of Sarah?' you inquire.[paragraph break]'She's a bonny lass, that one!' he declares."

	After telling Jim about "[weather]":
	  say "'Nice weather today!' you remark.[paragraph break]'Bit hot for working in, if you ask me,' he replies, mopping his brow."

	After asking Jim about "[weather]":
	  say "'Do you reckon this weather will hold?' you ask.[paragraph break]'Nah, there'll be storms tonight, you mark my words,' he tells you."

	After conversing when the noun is Jim:
	  say "Jim mutters darkly under his breath."

	After saying goodbye to Jim when the farewell type is explicit:
	  say "'Well, goodbye then!' you say.[paragraph break]'Goodbye,' he grunts, turning back to the flower bed."

	After saying goodbye to Jim when the farewell type is implicit:
	  say "Jim waves at you and then returns to his weeding."

	Book 3 - Testing - not for release

	Test sarah with "Sarah, hello/a table/a weather/a ring/a jim/a love/a herself/bye/s"

	Test jim with "e/ask jim about ring/ask jim about sarah/t sarah/a weather/t weather/w"

	Test end with "hello/n/t jim/take ring/a ring/s/e/hello/t ring/a ring/jim, bye"

	Test me with "test sarah/test jim/test end"
