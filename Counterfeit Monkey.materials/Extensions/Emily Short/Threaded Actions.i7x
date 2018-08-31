Threaded Actions by Emily Short begins here.

Section 1 - Main Elements

[Include Threaded Conversation by Chris Conley.]

A stolen action is a kind of performative quip. The specification of a stolen action is "Any performative quip that is used to redirect the behavior of a standard command like KISS FRED or ATTACK CAT."

An offensive quip is a kind of stolen action.
A seductive quip is a kind of stolen action.
A purchasing quip is a kind of stolen action.

An offering quip is a kind of questioning quip.
A demonstration quip is a kind of questioning quip.

A plausibility rule for a stolen action:
	it is implausible. [Barring special instructions, these should never be suggested to the player.]

Understand the commands "buy" and "purchase" as something new.
Understand "buy [something] from [someone]" as buying it from. Understand the command "purchase" as "buy". Buying it from is an action applying to two visible things. Understand "order [something] from [someone]" as buying it from.

Does the player mean buying something from an animal:
	it is unlikely.

Does the player mean buying something from the current interlocutor:
	it is very likely.

Before buying something from someone who is not the current interlocutor (this is the implicitly greet before buying rule):
	try saying hello to the second noun;
	if the second noun is not the current interlocutor, stop the action.

[Before kissing someone who is not the current interlocutor (this is the implicitly greet before kissing rule):
	try saying hello to the noun;
	if the noun is not the current interlocutor, stop the action.

Before attacking someone who is not the current interlocutor  (this is the implicitly greet before attacking rule):
	try saying hello to the noun;
	if the noun is not the current interlocutor, stop the action. ]


Instead of kissing someone (this is the standard kiss redirection rule):
	[if a seductive quip (called target quip) is available
	begin;
		if the number of available seductive quips is 1, try discussing the target quip;
		otherwise recommend available seductive quips;
	otherwise;]
	carry out the refusing to kiss activity with the noun.
	[end if.]

Instead of attacking someone (this is the standard attack redirection rule):
	[if an offensive quip (called target quip) is available
	begin;
		if the number of available offensive quips is 1, try discussing the target quip;
		otherwise recommend available offensive quips;
	otherwise;]
	carry out the refusing to attack activity with the noun.
	[end if.]


Carry out buying something from someone (this is the standard purchasing rule):
	let N be a list of purchasing quips;
	repeat with Q running through purchasing quips in quip-repository:
		if Q mentions the noun and Q is available:
			add Q to N;
	if the number of entries in N is positive:
		if the number of entries in N is 1:
			try discussing entry 1 of N;
		otherwise:
			recommend N;
	otherwise:
		carry out the refusing to buy activity with the noun;

Listing recommended quips is an activity.

To recommend (chosen list - a list of things):
	let high-scorers be a list of things;
	let high-score be 0;
	repeat with contender running through chosen list:
		let scr be 0;
		if contender is listed-plausible:
			increase scr by 3;
		if contender is marked-relevant:
			increase scr by 1;
		if contender is content-relevant:
			increase scr by 1;
		if contender indirectly-follows the current quip:
			increase scr by 3;
		if contender is peripheral:
			increase scr by 1;
		if scr is high-score:
			add contender to high-scorers;
		otherwise:
			[This is the new highest score. Clean out the old ones.]
			now high-score is scr;
			now high-scorers is {};
			add contender to high-scorers;
	if the number of entries in high-scorers is 1:
		try discussing entry 1 of high-scorers instead;
	now special listing count is 0;
	repeat with item running through chosen list:
		increment special listing count;
		write item to row special listing count of special-list;
	carry out the listing recommended quips activity;
	now suppress-hint-quips is true;
	[We don't want to list conversation suggestions right after giving a recommendation]

After reading a command (this is the re-enable quip hints rule):
	now suppress-hint-quips is false.

Rule for listing recommended quips:
	say "What would you like to do: [the prepared list delimited in disjunctive style]?";

Refusing to buy something is an activity.

Rule for refusing to buy something (this is the default buy-refusal rule):
	say "[The noun] [do] not seem to be available for sale."

Refusing to kiss something is an activity.

Rule for refusing to kiss something (this is the default kiss-refusal rule):
	if the noun is an animal:
		say "[one of]Perhaps not.[or]Could you refrain while I'm trapped in the same body here?[at random]";
	otherwise:
		say "Now doesn't seem like the time."

Refusing to attack something is an activity.

Rule for refusing to attack something (this is the default attack-refusal rule):
	say "Now doesn't seem like the time."

Refusing comment by something is an activity.

Rule for refusing comment by something (called the viewer) (this is the default comment-refusal rule):
	if the viewer is an animal:
		say "[The viewer] [are] unlikely to have an opinion.";
	otherwise:
		say "This evokes no particular interest."

Instead of showing something to someone (this is the default commenting on shown objects rule):
	if the second noun is not the current interlocutor:
		stop the action;
	let N be a list of demonstration quips;
	repeat with Q running through demonstration quips in quip-repository:
		if Q mentions the noun and Q is available:
			add Q to N;
	if the number of entries in N is positive:
		if the number of entries in N is 1:
			try discussing entry 1 of N;
		otherwise:
			recommend N;
	otherwise:
		carry out the refusing comment by activity with the second noun.

Instead of giving something to someone (this is the default commenting on offered objects rule):
	if the second noun is not the current interlocutor:
		stop the action;
	let N be a list of offering quips;
	repeat with Q running through offering quips in quip-repository:
		if Q mentions the noun and Q is available:
			add Q to N;
	if the number of entries in N is positive:
		if the number of entries in N is 1:
			try discussing entry 1 of N;
		otherwise:
			recommend N;
	otherwise:
		carry out the refusing comment by activity with the second noun.

[Availability rule for an offering quip (called target) (this is the can't give if the mentioned thing is not possessed rule):
	unless mention-start-index of target is -1:
		repeat with N running from mention-start-index of target to mention-stop-index of target:
			if mentions-index N is enclosed by the player:
				make no decision;
	it is off-limits.]

Availability rule for an offering quip (called target) (this is the can't give if the mentioned thing is not possessed rule):
	if target mentions-possessed-thing:
		make no decision;
	otherwise:
		it is off-limits.

To decide whether (Q - a quip) mentions-possessed-thing:
	(- MyMentionsPossessed({Q}) -)

[Availability rule for a demonstration quip (called target) (this is the can't show if the mentioned thing is invisible rule):
	unless mention-start-index of target is -1:
		repeat with N running from mention-start-index of target to mention-stop-index of target:
			if mentions-index N is enclosed by the location:
				make no decision;
	it is off-limits.]

Availability rule for a demonstration quip (called target) (this is the can't show if the mentioned thing is invisible rule):
	if target mentions-present-thing:
		make no decision;
	otherwise:
		it is off-limits.

To decide whether (Q - a quip) mentions-present-thing:
	(- MyMentionsPresent({Q}) -)

Include (-

	[ MyMentionsPossessed quip idx end item i;
		idx = quip.(+ mention-start-index +);
		if (idx == -1) rfalse;
		end = quip.(+ mention-stop-index +);
		for (i=idx: i<=end: i++ ) {
			item = mentions_array --> i;
			for ( : item && item ~= real_location : item=parent(item) )
				if (item == player) rtrue;
		}
		rfalse;
	];

	[ MyMentionsPresent quip idx end item i;
		idx = quip.(+ mention-start-index +);
		if (idx == -1) rfalse;
		end = quip.(+ mention-stop-index +);
		for (i=idx: i<=end: i++ ) {
			item = mentions_array --> i;
			for ( : item : item=parent(item) )
				if (item == real_location) rtrue;
		}
		rfalse;
	];

-).


Threaded Actions ends here.

---- Documentation ----

Threaded Actions builds on Threaded Conversation: the idea here is that there are certain kinds of interactions with other characters (showing, giving, kissing and attacking) that may be best understood in the context of an on-going conversation. Attempts to

	>KISS FROG
	>HIT KING WENCESLAS
	>SHOW BARIUM TO DOCTOR

all check to see whether an appropriate quip is available and, if so, use that quip. If multiple appropriate quips exist at the moment, the player will be offered a specific choice that looks similar to the disambiguation questions otherwise asked by Threaded Conversation. (These are not, in fact, disambiguation questions, but this is for technical reasons -- functionally, they behave in a similar way.)

The basic concepts of this extension could be extended to provide more detailed replies to combat or to erotic encounters, where (e.g.) SHOOT BLOFELD should produce different results from STAB BLOFELD.

To define character reactions to ATTACK and KISS, we simply define offensive quips and seductive quips, respectively. These can be made subject to the same availability rules as any other kind of quip. For instance:

	slap the enemy is an offensive quip.
		The comment is "You slap [the current interlocutor]."
		The reply is "[The current interlocutor] howls."
		It is recurring.

will produce the result

	>HIT FRANK
	You slap Frank.

	Frank howls.

	>G
	You slap Frank.

	Frank howls.

as many times as we try it, because the quip is recurring and is not otherwise constrained.

So far this is no more exciting than what we could do with "Instead of attacking someone: ..."; but of course with quips we can make these into arbitrarily complex sequences. For instance, we might add another quip to make the enemy dodge a second attack:

	Availability rule for slap the enemy:
		if the current quip is slap the enemy, it is off-limits.

	try for a second slap is an offensive quip.
		The comment is "You try to smack [the current interlocutor] again, but find yourself flailing at air."
		The reply is "'I don't think so,' remarks [the current interlocutor]. 'Not twice in a row.'"
		It directly-follows slap the enemy.

If there is no appropriate quip available to respond to the player's ATTACK or KISS command, Inform will resort to  the refusing to kiss and refusing to attack activities. By default, these print "Now doesn't seem like the time." We can, of course, override these by supplying our own text, as in

	Rule for refusing to attack Bear:
		say "The bear looks too fierce. Better find a way to distract it first, so you can take it by surprise."

SHOW and GIVE are slightly more complex, in that they require an available demonstration or offering quip which mentions the thing that the player is attempting to give or show. Demonstration and offering quips are kinds of questioning quip. This means that

	ASK MAN ABOUT RADISH

will often (if we don't otherwise meddle with availability) turn up the same response as

	SHOW RADISH TO MAN

-- but this is usually what we want, in order to reduce guess-the-verb problems. If we want to make sure that the player actually has the object in hand in order to ask someone about it, we can achieve this by adding availability rules to the specific quips.

If no quip is provided for a given GIVE or SHOW action, the game will carry out the refusing comment by activity with the current interlocutor; we can customize with rules such as

	Rule for refusing comment by the king:
		say "The King turns up his nose. 'We are not interested in your petty offerings,' he says."

If we have included Conversation Builder, we might want to add a couple of rules allowing Threaded Actions to auto-build KISS and ATTACK actions, as follows:

	Rule for refusing to kiss someone when using conversation building option (this is the read all seductive quips rule):
	if the current interlocutor is nothing, make no decision;
	now the variable snippet is the player's command;
	store base quip text;
	say "That kiss is not implemented. Draft a new one? >";
	if the player consents
		now the currently open reference is the reference after opening file "NewConversation" for writing;
		say "	[message of the sample-quip]";
		close file "NewConversation" for writing;
		write " is a seductive quip." after file "NewConversation";
		if nominal-sample-quip is switched on, escape troubled quip-names;
		fill in standard quip.

Rule for refusing to attack someone when using conversation building option (this is the read all offensive quips rule):
	if the current interlocutor is nothing, make no decision;
	now the variable snippet is the player's command;
	store base quip text;
	say "That attack is not implemented. Draft a new one? >";
	if the player consents
		now the currently open reference is the reference after opening file "NewConversation" for writing;
		say "	[message of the sample-quip]";
		close file "NewConversation" for writing;
		write " is an offensive quip." after file "NewConversation";
		if nominal-sample-quip is switched on, escape troubled quip-names;
		fill in standard quip.

Example: * Produce Man - A simple example of reactions to shown objects.

	*: "Produce Man"

	Include Threaded Actions by Emily Short.

	The Vegetable Shop is a room. The Produce Man is a man in the Shop. The player carries a radish.

	ask what radishes seem good for is a demonstration quip.
		The printed name is "ask what radishes are good for".
		The true-name is "ask what radishes seem good for".
		Understand "are" as ask what radishes seem good for.
		It mentions radish.
		The comment is "'What are radishes good for?'".
		The reply is "'Radishes are good for salads.'"

	Test me with "talk to man / show radish to man".

Example: ** Last Meeting - A moderate-length conversation using KISS and ATTACK-based quips interwoven with standard quips.

	*: "Last Meeting"

	Include Threaded Actions by Emily Short.

	The Old Stone Bridge is a room. "[if conversation is happening]First built by the Romans, though often repaired since: the old bridge is quiet and lonely without being frightningly so. Now and then rowboats pass beneath, or sailboats with their sails tied down. Half a mile or so down river a dun-colored villa overlooks the water, but the inhabitants, if there are any, are too far away to see or hear you well[otherwise]The chief thing you notice -- and you notice it instinctively -- is that there is no one close by, no one watching you[end if]."

	A thing can be distant or close. A thing is usually close. Instead of doing something other than examining to a distant thing: say "You cannot reach from here."

	The dun-colored villa, the river, and the boats are distant scenery in Old Stone Bridge. The description of the villa is "Its windows are mostly shuttered (with striking pale-blue shutters) to keep out the high sun. Nothing stirs in that direction."

	The description of the boats is "Only occasional, and not at all interested in you." The description of the river is "Deep and swift-flowing, though later in the summer it may become shallow and brown."

	The Roman bridge is scenery in the Old Stone Bridge. Instead of examining the Roman bridge, try looking.

	The Grey Cat is a man in Old Stone Bridge. "[if Conversation is happening]The Grey Cat has come to meet you, and looks little different from a businessman in some ordinary, not-very-rich line of business[otherwise]The Grey Cat is more or less at your mercy[end if]."

	The description is "[if Conversation is happening]The Grey Cat is tense and wary[otherwise]You have the Grey Cat pinned so that he can barely struggle[end if]."

	The jewels are a subject. Understand "loot" or "jewelry" or "jewellery" or "jewel" as the jewels.

	Your collaboration is a subject. Understand "alliance" or "friendship" as the collaboration.

	Danger is a subject. Understand "risk" or "threat" as danger.

	Violence is a subject. Fence is a subject. Lies is a subject. Understand "lie" or "lying" or "false" or "falsehood" as lies.

	Retirement is a subject. Understand "age" and "retiring" and "old" and "quitting" and "pension" and "pensioner" as retirement.

	Table of All Known Facts (continued)
	fact	summary
	plans-retirement	"The Grey Cat plans retirement."

	When play begins:
		now the current interlocutor is the Grey Cat;
		say "The latest take will be your greatest yet, and you cannot fight down the sense of pleasure you have in your job, as you go to the rendez-vous. To do what you do, and do it well: this is not an easy profession, not for cowards or the idle. You are a good criminal, rarely violent, widely respected. Your men are loyal. Your information is reliable. Your fences are safe. If ordinary businesses ran so well, the world would be a very good place."

	Rule for listing plausible quips when where the jewels seem is available:
		say "You have the first line: to ask where the jewels are."

	where the jewels seem is a questioning quip.
		The printed name is "where the jewels are". The true-name is "where the jewels seem".
		Understand "are" as where the jewels seem.
		It mentions jewels.
		The comment is "'You've done well, old friend,' you say, even though the old man nearly got himself killed this time. 'Where are the jewels?'".
		The reply is "He takes a step backwards, towards the edge of the bridge. Below him the river is running fast and deep. 'I didn't bring them,' he says. 'I thought it was time to bring our little collaboration to an end[queue getting older].'".

	he should watch his footing is an informative quip.
		It mentions danger.
		The comment is "Ignoring his provocative remark, you say, 'Hey, there -- you're about to back over the edge of the bridge.'".
		The reply is "He looks irritated. 'I have nine lives,' he says, as though this piece of newspaper nonsense is likely to impress you. 'It's yourself you should be worried about.'".
		It directly-follows where the jewels seem.

	why he seems ending the collaboration is a questioning quip.
		The printed name is "why he is ending the collaboration". The true-name is "why he seems ending the collaboration".
		Understand "is" as why he seems ending the collaboration.
		It mentions your collaboration.
		The comment is "'Our collaboration, as you choose to call it, has been tremendously lucrative for us both,' you point out in your calmest voice. Such prima donnas, these high-end thieves. 'There's no reason to get hasty.'".
		The reply is "'Oh, believe me,' he says, keeping his distance from you. 'I've planned this down to the last detail.' What nonsense. He couldn't plan a trip on a bus without your help.".
		It indirectly-follows where the jewels seem.

	An availability rule for why he seems ending the collaboration:
		if the player knows plans-retirement, it is off-limits.

	Rule for avoiding talking heads during Conversation:
		say "[one of]Flashes of silver in the river: the water is full of fish, this time of year[or]The breeze lifts, rustling the pine trees on shore[or]A pitiless Provençal sun beats on the back of your neck[or]The sound of a tolling bell carries from some village down the river[or]A boat with lowered sails passes under the bridge and moves away down the river[as decreasingly likely outcomes].".

	Rule for avoiding talking heads during Fight:
		say "[one of]The sun seems to have gotten hotter and less pleasant[or]The light glaring from the river almost blinds you[or]An insect buzzes near to your ear, circles your head, and goes away again[as decreasingly likely outcomes].".

	getting older is an NPC-directed quip.
		The reply is "'I'm getting older, Poisson,' he says. 'It's time for me to retire[plans-retirement]. And when a thief retires, he doesn't need collaborators any more.'"

	Rule for listing plausible quips when even a retired thief is plausible and where he hid is plausible:
		say "Even a retired thief still needs friends, you reflect. But he's playing this conversation as though you were not yourselves, as though you were movie criminals, as though it were possible for him to double-cross you. He glares at you with all the force of will he has, as though to make you ask about the jewels again, and not trouble him with any more personal questions."

	even a retired thief still needs friends is an informative quip.
		It mentions collaboration, retirement.
		The comment is "He's not looking directly at you, and what you feel is a surge of something like pity: this last brush with death has clearly frightened him, and he is trying to end things before he screws up; before anyone has a chance to notice that he's losing his touch. [paragraph break]'A retired thief still needs friends,' you say gently. ".
		The reply is "'What will we do?' he demands, in what is nearly a croak. 'Drink pastis on the balcony, play boules and remember the exploits of our youth?' [paragraph break]'Yes, why not?' you ask, smiling. 'Not one old man in a hundred has such good war stories as we have.' [paragraph break]He sets his jaw and spits into the water.".
		It directly-follows getting older.

	where he hid the jewels is a questioning quip.
		It mentions jewels.
		The comment is "'Come on, don't be foolish. Where did you hide the jewels? I have a fence for them; you'll never get rid of them on your own; you know this.'".
		The reply is "'I don't care to divide the profits,' he replies harshly. 'This is my last job, my retirement job. I need a hundred percent of the take. You, my old fish, are out of it.'".
		It indirectly-follows getting older.
		It is restrictive.

	he can keep the full take is an informative quip.
		It mentions jewels, collaboration.
		The comment is "'If that is what you want, certainly, you may have the full take. Call it a retirement gift, if you like. But let me fence them for you; you won't know where to go, and this job, this job is too distinctive. Every jeweler in Europe will be watching for the set you lifted. I would not want my old friend to spend his retirement in prison.' His face works while you speak.".
		The reply is "'I have ways!' he says. 'Not that I would tell you about, naturally, but I know people who would buy these things.' [paragraph break]He is lying. If he weren't, he would say more -- details about when, where, how. There would be some truth and some lies in these details, just enough to throw you off the scent, but details there would be. ".
		It directly-follows where he hid the jewels.

	why he seems lying is a questioning quip.
		The printed name is "why he is lying". The true-name is "why he seems lying".
		Understand "is" as why he seems lying.
		It mentions lies, fence.
		The comment is "'You're lying,' you say. 'You don't have a fence. You possibly don't even mean to get rid of the jewels at all. What are you doing?'".
		The reply is "'You can fight me for them!' [queue npc-attack]he offers, his voice growing louder. If there were anyone on the river bank right now, they might well hear, with the air as hot and still as it is.".
		It directly-follows he can keep the full take.

	he cannot win so easily is an informative quip.
		It mentions danger, jewels.
		The comment is "'I'm afraid it is not as easy as that,' you say. 'I have a reputation to maintain, as you know. It would not do my business good for anyone to hear that the Grey Cat had double-crossed me. You will complete your end of the bargain, or you will float home. And you can test your nine lives then.'".
		The reply is "His back straightens and the old fire comes back into his eyes. 'Let us see, then!' he says[queue npc-attack].".
		It directly-follows where he hid the jewels.

	attack-1 is an offensive quip.
		It mentions violence.
		The comment is "You throw yourself at him, aiming your shoulder at his midriff. You did not come armed to this encounter, but he is older, smaller, slighter than yourself, and all you need do is throw him into the water. From here, the fall must kill him.".
		The reply is "He falls, and you fall on top of him. Together you skid a meter closer to the edge of the bridge. His face is twisted into a grimace of pain -- the small stones must be scraping into his back. He curses you.".

	An availability rule for attack-1:
		if grey cat does not recollect where the jewels seem, it is off-limits;
		if fight is happening, it is off-limits.

	Npc-attack is an npc-directed quip.
		The reply is "He throws himself in your direction. It is instinct to trip him, and in a moment he is pinned and not dangerous at all. He is breathing fast and shallowly."

	Conversation is a scene. Conversation begins when play begins. Conversation ends easily when the grey cat recollects attack-1. Conversation ends hard when the grey cat recollects npc-attack.

	Fight is a scene. Fight begins when conversation ends. When fight begins: queue almost-affection.

	Understand "get up" or "stand" or "let go" or "let grey cat go" or "let him go" or "let cat go" as a mistake ("You cannot go backward from this point.").

	Almost-affection is an npc-directed quip.
		The reply is "Neither of you says anything for a long time. He is looking at you with an odd expression, almost affectionate. After a moment, he says, 'You have hardly aged at all.' [paragraph break]This is not quite true. After all, there is grey at your temples now, and more fat around the middle of you. But you haven't withered as he has."

	kiss him is a seductive quip.
		It mentions collaboration.
		The comment is "You kiss him, lightly, on the mouth, and are aware that his breath is not the breath of a well man. ".
		The reply is "When you draw away, you see that there are tears running down from his eyes to his hair. Eventually he opens his eyes again, but not to look at you. All this is long past, very long past: it is twenty-one years since you have kissed anyone but your wife. For him, too, there have been plenty of others, as he told you in various ways; sleek, handsome young men, always just on the cusp of thirty. The age he prefers.".
		It directly-follows Almost-affection.

	where the jewels seem now is a questioning quip.
		The printed name is "where the jewels are now". The true-name is "where the jewels seem now".
		Understand "are" as where the jewels seem now.
		It mentions jewels.
		The comment is "'Let me ask this another time: where are the jewels?'".
		The reply is "'Won't. Say!' he gasps triumphantly. 'Kill me if you want: you won't find them.'".

	 you don't want to kill him is an informative quip.
		It mentions danger, retirement.
		The comment is "'I don't want to kill you,' you hiss, irritated. 'What gets into you?'".
		The reply is "Stubbornly he says nothing.".
		It directly-follows where the jewels seem now.

	Availability rule for where the jewels seem now:
		if fight is not happening, it is off-limits.

	attack-2 is an offensive quip.
		It mentions violence.
		The comment is "You shift your weight, giving yourself better purchase. It wouldn't be hard to kill him now, when you've got him pinioned in this position -- why, he has much less strength than you expected.".
		The reply is "An uneasy suspicion comes. He is watching you with breath held, eyes half-closed. He knows what may come next. His skin is thin as paper[queue just-finish].".

	Availability rule for attack-2:
		if fight is not happening, it is off-limits.

	just-finish is an npc-directed quip.
		The reply is "'Just finish it,' he whispers in your ear. 'For your reputation. Let them know I double-crossed you and wasn't seen again.'"

	why he seems doing this is a questioning quip.
		The printed name is "why he is doing this". The true-name is "why he seems doing this".
		Understand "is" as why he seems doing this.
		It mentions lies.
		The comment is "'Would it have been so bad, retiring?' you ask.".
		The reply is "He won't answer, but just shakes his head, over and over.".
		It indirectly-follows just-finish.

	attack-3 is an offensive quip.
		It mentions violence.
		The comment is "You snap his neck hard. [dump queue]There is no one watching you, no one at either end of the bridge, no one boating close on the river to see what you've done. He twitches and is still at once. ".
		The reply is "What follows is an unpleasant scramble. You search his clothing and find that the jewels are here after all, wrapped in a monogrammed linen handkerchief. One of yours, as it happens. [paragraph break]He has very little of anything else, save a hotel key. His other clothes are all new and generic and without marking, his hair and nails trimmed, everything about him dapper and designed to leave no memory and a minimum of fiber traces. But his skin under the shirt is marked with many unhealed bruises. [paragraph break]You roll the body over the lip of the bridge and watch as it splashes into the water. ".
		It indirectly-follows attack-2.

	To say dump queue:
		delete purgeable conversation for the current interlocutor.

	Fight ends when the grey cat recollects attack-3.

	When Fight ends:
		end the story saying "End of Part 1"
