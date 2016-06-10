Counterfeit Scenic Characters by Emily Short begins here.

Use authorial modesty.

Chapter 3 - Scenic Characters

[These characters are seen entirely or mostly within a specific scene or context. They usually have something specific to accomplish or convey.]

Section 1 - The Activist

[The scene with the activist is not a puzzle in any meaningful sense: we can walk on past the activist at any time. However, it does serve as a pacing device, slowing down access to SJ Hall. It also provides some useful exposition about what Alex is working on.

We can end the scene in three ways: by leaving, by donating money to the cause (which Alex won't like, since he considers it culpably naive), and by explaining to her at length why her idea is flawed.

Once the activist has left the area, her sign will be available for us to take, and we can make it into a sin or a sig if we're so inclined. (It is one of four signs we can affect, not including the sign on Atlantida's neck.)]

The greeting of the activist is "'[one of]Hi![or]Hello again![or]Hi there![stopping]'".
The generic positive of the activist is "yeah".
The generic negative of the activist is "[one of]no[or]no way[at random]".
The generic adversative of the activist is "buut".
The generic confrontational of the activist is "come on".

Report the activist saying hello to the player when the activist does not recollect environment-offer:
	queue environment-offer instead.

Rule for avoiding talking heads when the current interlocutor is activist:
	if the current interlocutor is ready for transition:
		if the current quip is strongly-phrased and a random chance of 1 in 2 succeeds:
			say "[beat][paragraph break]";
	otherwise:
		say "[beat] [run paragraph on]".

Rule for beat-producing when the current interlocutor is the activist:
	if the activist carries the yellow sign:
		say run paragraph on;
		try the activist trying dropping the yellow sign;
	otherwise:
		if a random chance of 1 in 3 succeeds:
			say run paragraph on;
			try the backpacking girl trying examining the player;
		otherwise:
			say "[one of]She touches our arm[or]She channels all her rhetorical power through her eyebrows, which rise towards her hairline at moments of greatest earnestness[at random].[run paragraph on]";

Report the activist trying dropping the yellow sign:
	say "She sets down the sign in order to free her hands for more expressive argument.[run paragraph on]" instead.

environment-offer is an NPC-directed quip.
	The reply is "'Do you have a minute to help save the environment?' the activist asks brightly."

Instead of saying no when no is available:
	try discussing no.

 no is an informative quip.
 It mentions environment.
 The comment is "'I'm sorry, I'm in a hurry,' we say. ".
 The reply is "Evidently she has a greater than usual flair for drama, because she refuses to be brushed off that easily. 'You're in a hurry now,' she says, 'but in a few short decades, you'll be much too late. Please, for the good of your planet.'".
 It quip-supplies the activist.
 It directly-follows environment-offer.

Instead of saying yes when yes is available:
	try discussing yes.

 yes is an informative quip.
 It mentions environment.
 The comment is "'Sure: why not?' we say.".
 The reply is "'Wonderful!' she beams. ".
 It quip-supplies the activist.
 It directly-follows environment-offer.

Carry out the activist discussing something when the activist does not recollect further-enviro-stuff: queue further-enviro-stuff.

further-enviro-stuff is an NPC-directed quip.
	The reply is "'Listen, we're trying to gain financial support to make a major advertising campaign pushing the concept of [i]toxi waste[/i] throughout the anglophone world. If you know anything about linguistic efficacy, I'm sure you can imagine the implications.' [paragraph break]I can, in fact, imagine the implications, probably a little better than she would like."

Rule for avoiding talking heads when the current interlocutor is the activist:
	say "[one of]She steps closer to us. If I were in my regular body I would find this intrusion into my personal space intriguing.[or]She is swinging the sign back and forth by its stick while she talks. I try not to let this distract me too much.[or]She bites her lower lip.[or]She taps the sign against her boot.[stopping]".

 encourage the activist to elaborate on the implications is a performative quip.
 It mentions environment, activist.
 The comment is "'Oh?' we say neutrally. This is all it takes.".
 The reply is "'[i]Toxi waste[/i] would be, in concept, a completely harmless, safe, and neutral substance that would have no detrimental impact on the surrounding environment. By raising awareness of [i]toxi waste[/i] throughout the Anglophone world, we would put the collective consciousness to work for the environment! It would then be possible for volunteer workers to convert large stocks of dangerous toxic waste into the safe, neutral [i]toxi waste[/i] using minimal energy.'".
 It quip-supplies the activist.
 It directly-follows further-enviro-stuff.

First report smiling when the current interlocutor is the activist and the current quip is further-enviro-stuff:
	say "We smile in a blandly interested fashion.";
	queue encourage the activist as immediate obligatory instead.

Sanity-check listening when the current interlocutor is the activist and the current quip is further-enviro-stuff:
	say "We put on our most attentive expression.";
	queue encourage the activist as immediate obligatory instead.

An availability rule for how consciousness will be raised:
	if the activist recollects bid-for-cash, it is off-limits;
	make no decision.

 how consciousness will be raised is a questioning quip.
 It mentions environment.
 The comment is "'And, er, how do you plan to raise awareness of [i]toxi waste[/i] to sufficient levels to achieve linguistic efficacy?' we ask. Well, that was mostly me. But I'm curious.".
 The reply is "'That's where people like you come in,' she admits, with a sweet little smile.".
 It quip-supplies the activist.
 It indirectly-follows encourage the activist to elaborate on the implications.

how the campaign will address problems of visualization is a questioning quip.
 It mentions environment, activist.
 The comment is "'Studies have shown that linguistic efficacy is drastically harder to achieve when the body of speakers does not have a consensus about how to visual[ize] the object in question,' we point out, settling into our element. I've had so many undergraduates with ideas just like this one, all eager to tell me how they're going to change the world. I suppose I have exactly the same problem, only on a grander scale. [paragraph break]My comment seems to have gotten her a little lost, though, so I add, 'People need to have some image to attach to the term you're inventing for them. Otherwise, it will be much harder to achieve functional awareness levels.'".
 The reply is "'Oh! Yes, I left that part out,' she says. 'Our ad campaign will include extensive imagery of what we envision [i]toxi waste[/i] to look like [--] that is, a clear, od[our]less liquid.'".
 It indirectly-follows encourage the activist to elaborate on the implications.
 It quip-supplies the activist

 whether this liquid will be water is a questioning quip.
 It mentions environment.
 The comment is "'Is the role of [i]toxi waste[/i] by any chance going to be played by, say, filtered water?' we ask.".
 The reply is "Her eyebrows crinkle together. 'Yes [--] well, maybe,' she says. 'Why?'".
 It quip-supplies the activist.
 It is restrictive.
 It indirectly-follows how  campaign will address problems of visualization.
Understand "if" as whether this liquid will be water.

 ask whether this liquid will also be flavorless is a performative quip.
Understand "flavor" or "flavour" or "flavourless" or "if" as ask whether this liquid will also be flavorless.
 It mentions environment.
 The comment is "'[if immediately]Will it[otherwise]Will your proposed toxi waste liquid[end if] be flavorless, too?' you ask. I didn't come up with this one.".
 The reply is "'Huh?' [paragraph break]'I think,' you go on maliciously, 'that toxi waste should have a catchy flavor. Maybe spearmint.' [paragraph break]The furrow between her brows deepens as she tries to work out whether we are joking and, if so, what response would be appropriate. Finally she settles for, 'The ads are going to be on TV, so it's hard to show any flavors on television.'".
 It quip-supplies the activist.
 It indirectly-follows how the campaign will address problems of visualization

Report scoffing when the current interlocutor is the activist and the current quip is whether this liquid will be water:
	say "We snort rudely. ";
	try discussing warn the activist about term-reassignment instead.

Report laughing when the current interlocutor is the activist and the current quip is whether this liquid will be water:
	say "We chuckle darkly. ";
	try discussing warn the activist about term-reassignment instead.

 warn the activist about term-reassignment is a performative quip.
 It mentions environment.
 The comment is "'Because,' we say, 'if you show people pictures of what is obviously water, they will continue thinking of it [i]as[/i] water [--] not as [i]toxi waste[/i], or whatever you want them to call it. Studies have shown that people's word concepts are very persistent in that way [--] and anyway there are a variety of reasons why even if you could do it, it would be very bad to overwrite the linguistic efficacy of [']water['].'".
 The reply is "She purses her lips. 'You're in Language Studies, aren't you?' she asks. 'I was warned about people from your department. You can be very negative.'".
 It quip-supplies the activist.
 It directly-follows whether this liquid will be water.

After reading a command when point out that being from language studies is available:
	if the player's command includes "point out" or the player's command includes "point":
		replace the matched text with "language".

 point out that being from Language Studies does not make us wrong is a performative quip.
 It mentions environment, research.
 The comment is "'Negative or not, it is true,' we say. 'If you try to teach people a new word for an existing substance, you have to fight with their preconceptions about how to categor[ize] that substance. If, on the other hand, you try to make them think of a new and as-yet-non-existent substance, you have less control over what happens when it reifies [--] the result might not be quite what you wanted.'".
 The reply is "'All right,' she says belligerently. 'How would you do it?' [paragraph break]At this precise moment I feel myself fall for this girl. She's still naive and earnest and probably too young for me, but there is something about the determination and assertion and the spirit of I-dare-you-to-think-of-one-better that makes me want to drag her off to a coffee shop and enlighten her for four or five hours.

But I bet you wouldn't like to play gooseberry to that expedition.".
 It quip-supplies the activist.
 It is restrictive.
 It directly-follows warn the activist about term-reassignment.

 explain about our plans is a performative quip.
 It mentions environment.
 The comment is "'To do this really right,' I say, under our breath so that no one will overhear us, 'you have to think even bigger than you have been. Forget English. Forget Mandarin Chinese. Forget Spanish, Hindi, Russian, Arabic. You have to make a [i]new language[/i] to resolve these difficulties, and you have to teach it on an epic scale.'".
 The reply is "She has been leaning in, breathlessly, to listen to this explanation, but now she backs up and looks at us like we've sprouted a second head, which, all things considered, would not be all that unnatural. [paragraph break]'That would take forever!' she exclaims. (I had calculated maybe fifty or a hundred years to the first significant successes, but I suppose that is not unlike forever if you're sufficiently short-sighted.) 'And you'd need a huge amount of money!' [paragraph break]I sigh. 'All the same,' we say, a little sadly. 'It would work better than what you're proposing here. I'm sorry. I wish I thought it would work.'".
 It quip-supplies the activist.
 It directly-follows point out that being from Language Studies does not make us wrong.

Report smiling when the current interlocutor is the activist and  the current quip is not explain about our plans:
	say "[We] smile, a little more broadly than usual[one of][or]. So I think she's cute[stopping]." instead.

Report smiling when the current quip is explain about our plans and the current interlocutor is the activist:
	say "[We] smile, a little bit apologetically.

She doesn't smile back. [run paragraph on]" instead.

Report laughing when the current quip is explain about our plans and the current interlocutor is the activist:
	say "[We] laugh ruefully. 'Look, don't worry. No one believes my idea. Yours is simpler to explain.'

She smiles weakly. [run paragraph on]" instead.

Report frowning when the current quip is explain about our plans and the current interlocutor is the activist:
	say "[We] frown. 'Look, there's no point in your getting annoyed at me because I'm telling you something you don't [i]want[/i] to be true. It's not my fault linguistic science works the way it does. But if you're going to try to make a change in the world, there's absolutely no point going at it without bothering to learn what works and what doesn't.'

She scowls at us." instead.

Report shrugging when the current quip is explain about our plans and the current interlocutor is the activist:
	say "[We] shrug. 'Look, you don't have to believe what I'm saying.'" instead.

Before doing something when the current quip is explain about our plans and the current interlocutor is the activist:
	casually queue better-go.

better-go is an NPC-directed quip.
	The reply is "'I'd better go,' she says. 'There are other people, I should try to [--] I've got a quota.'

She turns and heads across the quad, head down. Halfway there she stops and looks back at us, then walks on, more quickly."

After the activist discussing better-go:
	reset the interlocutor;
	now the activist is nowhere;
	continue the action.

Carry out the activist discussing something when the activist recollects further-enviro-stuff and the activist does not recollect bid-for-cash:
	queue bid-for-cash.

Carry out going to Samuel Johnson Hall:
	now the activist is nowhere.

bid-for-cash is an NPC-directed quip.
	The reply is "'The next few months are critical to our operation,' the activist says. 'We need to be able to blitz multiple countries simultaneously with an intense and outrageous advertising campaign that will garner further media coverage from news sources and provoke discussion on the internet and in the workplace. But in order to do that, we need the funding to place high profile advertisements in a variety of places. That's why donations from people like yourself are going to be so very necessary.'"

donate is a performative quip.
 Understand "cash" or "money" as donate.
 donate mentions the roll of bills.
 The comment is "Oh, you're not seriously going to [--] oh, god, you are. You know, this is never going to work. There are sound scientific reasons why [--] oh FINE.

We hand over some of your money [--] I guess I should console myself that it is yours [--] to the girl."
The reply is "'Thanks!' she says brightly. Tucking the bill into her pocket, she gives a little skip and heads off across the oval to accost some other innocent.

You just enriched some random television network, you understand. That money won't do a lick of good to anyone else."
 It quip-supplies the activist.
 It indirectly-follows bid-for-cash.

After the activist discussing donate:
	reset the interlocutor;
	now the activist is nowhere;
	continue the action.

Test activist with "tutorial off / z / x activist / yes / encourage / ask how consciousness / a campaign / donate / look" in Oval.

Test activist2 with "tutorial off / z / x activist / yes / listen / ask how consciousness / a campaign / a flavorless / a water / warn / point out / explain / smile" in Oval.

Test activist3 with "tutorial off / z / x activist / yes / smile / smile / ask how consciousness / a campaign / a water / laugh / point out / explain / frown" in Oval.

Section 2 - The Barman

[Parker the barman has two critical functions:

-- to guide us towards Lena as our next contact
-- to let us play the game that wins the origin paste.

Once these things have occurred, he fades into the background somewhat; after Slango appears at Counterfeit Monkey, Parker's description in the room is partially suppressed to reflect the fact that the protagonist's attention has moved elsewhere.

Conceptually, the game-playing trick sort of recapitulates the bit with the barker at the very beginning of the game, except that this time the challenge is considerably more difficult and at the same time Andra provides more coaching on it.

Another way to look at it is that tests and games are a narratively lazy excuse to introduce puzzles. This is a valid criticism. However, there are a couple of compensating advantages that made me think it was worth using them anyway. First, these games create a sense of playfulness in Atlantean culture about the effects of letter-removal; otherwise, we mostly see it being used either to exert authoritarian power (when used by the Bureau) or to conduct criminal activities (when used by the smugglers and others). Second, this particular game demonstrates the funny way that the Counterfeit Monkey skirts illegality using technically permissible activities.]

Understand "ask [barman] for [any barman-carried thing]" as requesting it from (with nouns reversed).

Definition: a thing is barman-carried if it is carried by the barman.

The barman is criminal and alert. Understand "man" or "bar man" as the barman.

The greeting of the barman is "[one of]'Help you?' asks Parker the barman unenthusiastically[or]Parker acknowledges our return with a nod[stopping]."

whether he hath seen slango is a questioning quip.
 The printed name is "whether he has seen Slango". The true-name is "whether he hath seen slango".
 Understand "has" or "if" or "parker" or "barman" or "bartender" as whether he hath seen slango.  The comment is "'I wonder whether you've seen an associate of mine,' we say to Parker. 'Name of Slango.'".
 It mentions Slango.
 The reply is "Parker looks over the bar at us. 'He comes in here from time to time,' he says. 'Very regular customer. Always has about three rum and cokes.' [paragraph break]This is a lie, and therefore a test. Slango doesn't drink alcohol himself and doesn't permit drunkenness in his crew.".
 It quip-supplies the barman.
 It is restrictive.

 challenge Parker about the rum is a performative quip. The comment is "'Must be a different Slango,' we say. 'Mine is more of a root beer man. Thanks anyway though[slango-friendship].'".
 It mentions Slango.
 The reply is "'Oh, [i]that[/i] Slango,' Parker says[if the origin paste is marked-visible and the origin paste is not seen], thoughtfully moving [the origin paste] sitting on the bar[end if]. 'He's been around town the last couple of days, but not today. If you know his lady friend[lena-needed], you might try her.' [paragraph break]Lady friend? [if the Aquarium is visited]Lena, presumably, but you didn't real[ize] she and Slango had progressed to quite that status[otherwise]This can only mean Lena, she being the only female native with whom Slango spends much time socially. But you wouldn't have guessed that she'd advanced to the status of [i]lady friend[/i]. Either way, Lena is a rather odd woman who keeps a used bookstore off Deep Street[end if].".
 It quip-supplies the barman.
 It directly-follows whether he hath seen slango.
Understand "barman" or "him" or "bartender" as challenge Parker about the rum.

[check up on Lena is a performative quip. The comment is "'Lena at home, then?'".
 It mentions Lena.
 The reply is "He shrugs. 'Lena's got a lot of different projects going on. I don't keep track.'".
 It quip-supplies the barman.
 It directly-follows challenge Parker about the rum. ]


Carry out barman discussing challenge Parker about the rum:
	complete "Ask people around here if they've seen Slango";
	assign "Talk to Lena at the Aquarium Bookstore" at Aquarium Bookstore.

Availability rule for whether we can hath origin paste:
	if the origin paste is not seen or the origin paste is not on the bar-top or the origin paste is won:
		it is off-limits.

Instead of asking the barman for the origin paste:
	if the barman recollects whether we can hath the origin paste:
		say "We've already established that the Origin Paste has to be won rather than bought or given away.";
	otherwise:
		try discussing whether we can hath the origin paste.

whether we can hath the origin paste is a questioning quip.
 The printed name is "whether we can have the origin paste". The true-name is "whether we can hath origin paste".
 Understand "have" or "if" as whether we can hath origin paste.  The comment is "'That Origin Paste for sale?' ".
 It mentions origin paste.
 The reply is "'Well now,' he says, grinning, 'that would surely be illegal, would it not? Origin Paste is after all a controlled substance in this country, due to its unhappy association with fraudulent activities. On the other hand there is no law against someone [i]winning[/i] the Origin Paste in a completely legitimate game of chance or skill.'".
 It quip-supplies the barman.


Availability rule for how one might go about winning:
	if the origin paste is not on the bar-top or the origin paste is won:
		it is off-limits.

how one might go about winning is a questioning quip. Understand "prize" or "game" or "competition" as how one might go about winning. The comment is "'Explain this game as though I have no idea what you're talking about,' you say, leaning on the bar in an interested fashion. Are you flirting with Parker? No? Okay. Good to know.".
 It mentions origin paste.
 The reply is "'It's a designated challenge game,' says Parker. You've seen this played before, but he explains the rules anyway. [paragraph break]'There are two contestants, one challenger and one defender.

'The challenger chooses any object he likes and shows it to the moderator ahead of time.

'The defender, without seeing the object, stipulates a general category. The challenger has five minutes to turn his designated object into an item that fits the defender's category, or he forfeits his ante.'".
 It quip-supplies the barman.
 It indirectly-follows whether we can hath the origin paste.

Every turn when play the game is available and barman does not recollect barman-nudge and barman does not recollect play the game:
	casually queue barman-nudge.

barman-nudge is an NPC-directed quip.
The reply is "'What do you think? You up for a try at the Origin Paste?'"

A plausibility rule for play the game:
	it is plausible.

An availability rule for play the game:
	if the origin paste is won:
		it is off-limits;
	if game is in progress:
		it is off-limits.

After printing the name of play the game when play the game is recollected by the player:
	say " again".

 play the game is a performative quip. The comment is "'I'd like to play [if immediately]that[otherwise if the barman recollects play the game]again[otherwise]for the Origin Paste[end if],' we say.".
 It mentions origin paste, entertainment.
 Understand "again" as play the game.
 The reply is "'[one of]Excellent. Oh, I did mention the small matter of the entry fee?'[paragraph break]I get out the roll of bills and he peels off two twenties.[paragraph break]'Thank you. [or]Paying again, are you? Very good then. [or]You are a glutton for punishment, but I don't mind taking your money for nothing. [stopping]Now, you pick your entry article, and I'll ask one of these good gentlemen to suggest a def[ense] category.'".
 The nag is "[game-coaching][line break]".
 It quip-supplies the barman.
 It indirectly-follows how one might go about winning.
 It is repeatable.

Instead of going from the Counterfeit Monkey when the game is in progress:
	say "We've got an ante down for this game and our time isn't up yet. Do we really want to leave? >>";
	if the player consents:
		continue the action;
	otherwise:
		say "That seems sensible to me too."

To decide whether game is in progress:
	if origin paste is won:
		no;
	if the wager is not yourself:
		yes;
	if the current quip is play the game:
		yes;
	no.

[An availability rule for give up:
	if game is in progress:
		make no decision;
	otherwise:
		it is off-limits.

 give up is a performative quip. The comment is "'Argh, mulligan,' you say. 'I don't think this wager is going to work out for me.'".
 It mentions yourself, origin paste.
 The reply is "He grins and shrugs sympathetically. 'Bad luck.'".
 It quip-supplies the barman ]

To say game-coaching:
	if the wager is the player:
		say "[one of]'Just pick something you've got on you and show it to me to establish your bet.'[no line break][or]'Have you picked a wager object yet?'[no line break][or]The barman waits for you to show him your wager object.[no line break][stopping][run paragraph on]";
	otherwise:
		say "The barman keeps an eye on our remaining time."

The wager is an object that varies. The wager is yourself.
The proposed solution is an object that varies.
The wager-name is some text that varies.
The wager-judging rule is a rule that varies. The wager-judging rule is the liquid wager rule.
The wager-index is a number that varies.

Setting action variables for giving something to the barman when play the game is the current quip and the wager is yourself:
	try showing the noun to the barman instead.

Understand "choose [something]" as showing it to when play the game is the current quip.

Rule for supplying a missing second noun while showing something to:
	if the current interlocutor is a person:
		now the second noun is the current interlocutor;
	otherwise if the number of marked-visible other people is 1:
		implicitly greet a random marked-visible person who is not the player;
		now the second noun is the current interlocutor;
	otherwise:
		say "You must show [the noun] to someone specific."

Instead of showing something (called the item) to the barman when play the game is the current quip and the wager is yourself:
	if the item is yourself:
		say "'No no no,' he says. 'No suicides or self-inanimations in my bar today, thanks.'" instead;
	now the wager-name is "[The item]";
	now the wager is the item;
	now the proposed solution is the item;
	make wager choice;
	while something (called the wager-parent) which is not the wager proffers the wager:
		now the wager is the wager-parent;
	try the barman discussing wager-accepted;
	game concludes in five turns from now.

Instead of showing something (called the item) to the barman when the wager is not the player:
	if the item is not proffered by the wager:
		say "'Sorry,' he says, 'but I know that didn't come from [the wager-name in lower case] you bet on.'" instead;
	now the proposed solution is the item;
	follow the wager-judging rule;
	if the rule succeeded:
		now the Origin Paste is won;
		record "winning a barroom bet" as achieved;
		try the barman discussing wager-won;
		now the wager is the player;
	otherwise:
		choose a row with a selected rule of wager-judging rule in the Table of Wager Suggestions;
		say "'[one of]That doesn't fit the category[or][personal no][or][awkward no][at random],' says [the barman]. [summary entry][paragraph break]".

Every turn when the location is Counterfeit Monkey and the wager is not the player:
	carry out the caching scope activity with the barman;
	repeat with item running through things which are proffered by the wager:
		if the item is marked-visible:
			now the proposed solution is the item;
			follow the wager-judging rule;
			if the rule succeeded:
				now the Origin Paste is won;
				record "winning a barroom bet" as achieved;
				try the barman discussing wager-won;
				now the wager is the player.

wager-accepted is an NPC-directed quip.
	The reply is "'Right,' says [the barman]. '[The wager-name] it is.' [paragraph break]He turns towards the group assembled around the dartboard. 'Anyone want to defend against this character?' (with a nod at you). [paragraph break][wager-choice]".

wager-won is an NPC-directed quip.
	The reply is "'A winner!' says the barman, straightening up. 'What do you know? The Origin Paste is all yours, darling.'[paragraph break]This produces a squawk of surprise and irritation from the defendant, and you get the impression that this game has been agreeably fleecing tourists all day. Pity you had to come along and spoil it.";

To make wager choice:
	let N be the wager-index plus 1;
	if N is greater than the number of filled rows in the Table of Wager suggestions:
		now N is 1;
	let selection be false;
	while selection is false:
		choose row N in the Table of Wager Suggestions;
		follow the selected rule entry;
		if the rule failed:
			now the wager-judging rule is the selected rule entry;
			now the wager-index is N;
			now selection is true;
		otherwise:
			increase N by 1;
			if N is greater than the number of filled rows in the Table of Wager suggestions:
				now N is 1;

To say wager-choice:
	say "[run paragraph on]";
	choose a row with a selected rule of wager-judging rule in the Table of Wager Suggestions;
	say "[description entry]";

Sanity-check drinking the wager when the wager-judging rule is the tiny wager rule:
	say "You know from experience that a quantity of liquid smaller than a pebble is not deemed to count." instead.

Table of Wager Suggestions
description	summary (a text)	selected rule (a rule)
"'Something smaller than a pebble!' suggests a woman in the front row. She passes forward her own ante to the bar, and the game is on."	"'[one of]I know the definition of 'small' is a bit vague, but think smaller than that. Pebble-sized or smaller.[or]That's not quite within the range of small as I understand it.[at random]'"	tiny wager rule
"'A liquid,' says a gruff man. ('You always say liquid!' complains one of the others. 'It's his fav[our]ite thing!' says a third.) But the ante is submitted and the challenge set."	"'It has to be a liquid [--] any kind.'"	liquid wager rule
"'Import Category 5!' shouts a voice. [paragraph break]The barman raises his eyebrows apologetically and says, 'It's a well-defined category, so I have to allow it: any kind of edible consumable object, be that food or beverage, that does not fall under the botanical import category. So no fruits or vegetables.'"	"[if the noun is a vegetable]'[The noun] is an agricultural import, so it's outside category 5. You need something consumable but not a fruit or vegetable.'[otherwise]'It has to be some kind of consumable thing but not a vegetable or fruit.'[end if]"	import wager rule


The wager-assessment rules are an object-based rulebook.

A wager-assessment rule (this is the liquid wager rule):
	if the proposed solution is fluid:
		rule succeeds;
	rule fails.

A wager-assessment rule (this is the tiny wager rule):
	if the proposed solution is nothing:
		say "Error: wager-assessment tested with nothing!";
		rule fails;
	if the heft of the proposed solution is 1:
		rule succeeds;
	rule fails.

A wager-assessment rule (this is the import wager rule):
	if the proposed solution is edible and the proposed solution is not a vegetable:
		rule succeeds;
	rule fails.

At the time when game concludes:
	if the Origin Paste is won:
		make no decision;
	otherwise:
		now the wager is the player;
		try the barman discussing time up;

Time up is an NPC-directed quip.
	The reply is "'Your time is up, I'm afraid,' says the barman. 'No luck this time, eh? Pity.' He divides your cash ante in half: half for the house, half to the defender who bet against you."

 complain that the game seems unfair is a performative quip.
 The printed name is "complain that the game is unfair". The true-name is "complain that the game seems unfair".
 Understand "is" as complain that the game seems unfair.  The comment is "'This game is unfair,' we say. 'You're the moderator, but you have a vested interest in the defender continuing to win, because you get half the ante every time!'".
 It mentions origin paste.
 The reply is "'The house puts up the stakes, remember,' he says. 'But the Counterfeit Monkey has been running this game for years, and would people keep coming back to play if it were rigged?' [paragraph break]Of course, the regulars usually play def[ense] and newcomers offense, which makes the game into a device for fleecing strangers for the benefit of the bar and its usual patrons. But sometimes someone is allowed to win, if they're clever.".
 It quip-supplies the barman.
 It indirectly-follows Time up.

The carrying requirements rule does nothing when the action name part of the current action is the showing it to action.

The can't show what you haven't got rule is not listed in any rulebook.
The block showing rule is not listed in any rulebook.

Availability rule for whether he hath any other games going:
	if the origin paste is unwon:
		it is off-limits.

whether he hath any other games going is a questioning quip.
 The printed name is "whether he has any other games going". The true-name is "whether he hath any other games going".
 Understand "if" or "has" or "parker/barman" as whether he hath any other games going.  The comment is "'So, is there anything else I can win? Any other games going?'".
 It mentions paste.
 The reply is "Parker laughs. 'Not until tomorrow, kid,' he says. 'We only run one game a day.'".
 It quip-supplies the barman.

how long he hath worked at  bar is a questioning quip.
 The printed name is "how long he has worked at the bar". The true-name is "how long he hath worked at  bar".
 Understand "has" as how long he hath worked at  bar.  The comment is "'How long have you been working at this pub?' we ask. 'And do you like it?'".
 It mentions employment.
 The reply is "He wrinkles his nose. 'Word of advice: don't go around asking questions like that down here,' he says.".
 It quip-supplies the barman.
 It is background-information.

what he thinks about the Bureau is a questioning quip. The comment is "'What's your opinion on the Bureau of Orthography?'".
Understand "parker/barman" as what he thinks about the Bureau.
 It mentions Bureau, barman.
 The reply is "'I think it's just that little bit more corrupt and oppressive than usual for a governmental body,' he says. 'I'm not in fav[our], but I don't fool myself that everything would be wine and roses everywhere else, either.'".
 It quip-supplies the barman.
 It is background-information.

whether he hates customs officials is a performative quip. The comment is "'Do you hate Customs officials?' we ask.".
 Understand "parker/barman" or "if" as whether he hates customs officials.
 It mentions immigration, barman.
 The reply is "'Naw. Not running anything myself, am I?'".
 It quip-supplies the barman.
 It is background-information.

Instead of the barman discussing a civic quip when the barman does not know slango-friendship:
	say "[one of]He just laughs and shakes his head[or]He grins, but doesn't answer[or]'What do you think?' he asks. I don't think we're going to get answers on this kind of question. Not while he doesn't trust us. But it hardly matters[at random]."

whether he believes in god 2 is a questioning quip. The comment is "'Where do you stand on God?' we ask[you-are-religious].". The printed name is "whether he believes in God".
 It mentions religion.
 The reply is "'Don't give it much thought,' he says. 'Please don't tell me you're here with a pamphlet . I won't read it.'".
 It quip-supplies the barman.
 It is background-information.
Understand "if" or "parker/barman" as whether he believes in god 2.

Test tobarman with "test act1 / test chard / test car / test Slango-missed / go to outdoor / open backpack / look / wave p-remover at spill / get sill / go to counterfeit monkey".

Test barman with "tutorial off / talk to barman / x barman / a slango / a rum / look / a paste / a whether we can have / ask how / play / z / z" in counterfeit monkey.


Section 3 - Slango

[ Slango is our first live encounter with anyone out of Andra's past; he's significant because he introduces the first really serious setback of the plot.

In conversation with Slango, we see Andra's personality surfacing a little bit more and coming into conflict with Alex's. Because she's comfortable with Slango, Andra becomes brasher, a little cruder, and more outspoken; more like the self she's become in the company of the smugglers. (Some of the same characteristics surface with Lena.)

This scene can only end in one way -- with the player agreeing to pursue clues about Brock -- because otherwise we'd be missing the whole rest of the game.

Given all this, the chief design problems are to maximize expressiveness during this part of the plot and help the player feel it's something other than completely railroaded. (That is to say, most of the available choices are expressive and reflective choices, but that doesn't make them wholly meaningless.) We can choose to push Slango or to go along with him, and emotive options are more richly implemented in this scene than in many of the other scenes of the game.]

The greeting of Slango is "'Hiya,' Slango says."

Rule for beat-producing during consulting-Slango:
	if the barman does not know slango-friendship:
		now the barman knows slango-friendship;
		say "Out of the corner of our eye, we see the barman looking steadily at us[if the barman recollects whether he hath seen slango]. Concluding that we know Slango after all, perhaps[otherwise]. We turn deliberately back to Slango[end if].[run paragraph on]";
	otherwise:
		say "[one of]Over the voices of the crowd comes the sound of the barman setting out another round[or]Raised voices near the bar interrupt you for a moment[or]We're all silent as the door of the pub opens and closes and a large man walks past us[or]A squabble breaks out over by the darts board[or]A dart bounces off the dart board and lands near your foot. A gruff man retrieves it with muttered apologies[as decreasingly likely outcomes]. [run paragraph on]".

consulting-Slango is a scene. consulting-Slango begins when the current interlocutor is Slango. consulting-Slango ends when "Finally find Slango at Counterfeit Monkey" is completed.

Instead of saying hello to Slango when Slango does not recollect who we seem:
	try discussing who we seem.


 who we seem is an informative quip.
 The printed name is "who we are". The true-name is "who we seem".
 Understand "are" as who we seem.
 Understand "I am" as who we seem.
 It mentions yourself.
 The comment is "'Slango,' you say. 'Lena gave me a totally unwanted visual about your yaklike proportions. Guess you also got a yak's sense of clock time?'".
 The reply is "'It was an emergency. I figured you'd go to Lena, and I was right.'[queue whether we can leave now]

'You were lucky. I knew her a little, but I had no idea you two were making the yak with two humps.'

'No such thing as a bactrian yak,' Slango replies. 'My apologies. I assumed that what Brock knows, he passes on to you, and he certainly knows about me and Lena.' He scowls into his root beer. 'Nearly gave himself a hernia laughing,' Slango adds under his breath.".
 It quip-supplies Slango.
 The proper scene is consulting-Slango.

After laughing when the current interlocutor is Slango and the current quip is who we seem:
	say "'Heh.' It's easy for you to picture [--] and thus for me to picture [--] the way Brock laughs: the startled loud crack of a laugh at the beginning, like a thunderclap, and then the rest of the laugh following after a pause. It's like for a moment he's too surprised by the awesomeness of the joke to keep going.";
	try discussing explain Brock's probable reasons.

 explain Brock's probable reasons is a performative quip. The comment is "'She's old enough to be your spinster aunt and flaky enough to tell your fortune with half a tarot deck and a couple of Uno cards,' you say. 'We haven't got a lot of clues about what your type is, but I doubt Brock would have guessed Lena.'".
 It mentions Lena.
 The reply is "'She's thirty-two,' says Slango crisply. 'She runs Radio Free Atlantida single-handed with electronics she built herself. And if she [i]were[/i] old enough to be my spinster aunt, that would still be my business.'

'So, uh, I guess you guys are pretty serious, then,' you say.

'I'd give her and me better odds than you and Brock.'".
 It quip-supplies Slango.
 It directly-follows who we seem.
 The proper scene is consulting-Slango.

mutter darkly is a performative quip. It directly-follows explain Brock's probable reasons.
	The comment is "I grumble under our breath about people who are hung up on their personal issues when there are useful jobs to be done."
	The reply is "Slango pretends not to hear."

Report smiling when the current interlocutor is Slango and the current quip is explain Brock's probable reasons:
	say "We smile crookedly. You aren't enjoying the imputation about you and Brock because you're pretty much afraid it's right, and I'm anxious to get on to the part of this encounter where we head down to the yacht and put Atlantis behind us. So it's not the most sincere smile we've ever smiled." instead.

Report laughing when the current interlocutor is Slango and the current quip is explain Brock's probable reasons:
	say "We laugh. No, well, more like I laugh. At you. It's funny how weird that feels, innit?" instead.

Report crying when the current interlocutor is Slango and the current quip is explain Brock's probable reasons:
	say "You give a little choky half-sob and then suppress it, hard and fast. I'm not sure Slango really noticed, and if he did, he doesn't acknowledge anything just happened. But that caught you on the raw. More than you were expecting. I guess things with Brock mean a lot to you." instead.

Report yawning when the current interlocutor is Slango and the current quip is explain Brock's probable reasons:
	say "You yawn elaborately to show that this sally didn't land.

Which it sort of did, actually: you're jam-packed full of worries about whether Brock and you are going to last, and what you'll do if everything goes wrong, and how long and hard it was just getting to the point that you're at now. But Slango doesn't need a display of those neuroses." instead.

Report shrugging when the current interlocutor is Slango and the current quip is explain Brock's probable reasons:
	say "We shrug. 'None of our business, I guess,' I put in.

'Not so much,' says Slango." instead.

Report frowning when the current interlocutor is Slango and the current quip is explain Brock's probable reasons:
	say "We frown. Slango doesn't apologize. Well, but you guys are like that.

He takes another swig of root beer." instead.

 whether we can leave now is a weakly-phrased questioning quip.
 It mentions transportation.
 The comment is "'So talk to me,' we say. 'Is everything ready? Can we leave?'

Slango looks dyspeptic. 'Yeah, about that,' he says gruffly. You know better than to push him, and wait.".
 The reply is "'Brock's run into a little trouble pursuing a profitable opportunity[queue what the trouble was][queue cant-leave-without as postponed obligatory][queue modifying-letter as postponed obligatory].'".
 It quip-supplies Slango.
 It indirectly-follows who we seem.
 The proper scene is consulting-Slango.
Understand "if" as whether we can leave now.

After frowning when the current interlocutor is Slango and the current quip is whether we can leave now:
	say "You're frowning, practically scowling. [run paragraph on]";
	try discussing what the trouble was.

After scoffing when the current interlocutor is Slango and the current quip is whether we can leave now:
	say "'Nice,' I say. 'Very practical of him to go looking for a new score when he knew we had something going down.'

Slango continues looking into his root beer. You, however, are [i]not[/i] pleased. Your thoughts boil out. Thoughts about how breaking one person off Atlantis is a petty-cash deal, about how you wouldn't have taken me on at all if it weren't for your own need for a bit of incognito. About how clueless I am, and how valuable the things are that Brock likes to steal. It's a big old seething cauldron of contempt.

And then you put the lid back on it, [i]click[/i], and go back to being cool and far away like you mostly have been all afternoon. 'What happened?' you ask.

Jeebus.";
	queue what the trouble was as immediate obligatory instead.

Report laughing when the current interlocutor is Slango and the current quip is whether we can leave now:
	say "I giggle sharply, a nervous little titter that makes Slango look at us distrustfully. This is not what we need now." instead.

Report smiling when the current interlocutor is Slango and the current quip is whether we can leave now:
	say "I smile uncomfortably, hoping 'a little trouble' is meant literally and isn't a euphemism for 'got arrested and is in cold storage right this minute.'" instead.

Report crying when the current interlocutor is Slango and the current quip is whether we can leave now:
	say "Our eyes water treacherously. It's hard to say just which of us is generating that emotion. You, because you're worried? Or me because my nerves are stretched too far already, and I just want this day over with?" instead.

 what the trouble was is a [weakly-phrased] questioning quip.
 It mentions Brock.
 The comment is "'Define trouble.'".
 The reply is "'I had a pick-up arranged to get him off the island shore all the way down by Maiana last night, but he didn't make it, and sent no messages. I checked a contact in Bureau Processing, but no arrest file has gone through, so Brock hasn't been caught. He's just... missing.'".
 It quip-supplies Slango.
 It directly-follows whether we can leave now.
 The proper scene is consulting-Slango.

After frowning when the current interlocutor is Slango and the current quip is what the trouble was:
	say "You form our face into a frown, and I don't fight it. [run paragraph on]";
	try discussing what the trouble was.

Report smiling when the current interlocutor is Slango and the current quip is what the trouble was:
	say "We try for a comforting smile, as though to say that everything [i]must[/i] be fine. You're certainly trying to persuade yourself of that." instead.

Report scoffing when the current interlocutor is Slango and the current quip is what the trouble was:
	say "I roll our eyes. 'Not very professional,' I say, while you think daggers at me." instead.

Report laughing when the current interlocutor is Slango and the current quip is what the trouble was:
	say "We giggle nervously and uncomfortably." instead.

Report crying when the current interlocutor is Slango and the current quip is what the trouble was:
	say "Our eyes water, but you manage to repress the instinct. This isn't the time to give way to floods of emotion, even if both of us are feeling fragile, even if this is a very bad sign for your boyfriend.

Slango reaches out as though he's going to put a hand on our shoulder, but he stops and drinks some more root beer instead.";
	clear cant-leave-without from queue instead.

cant-leave-without is an NPC-directed quip.
	The reply is "'We can't leave without Brock,' Slango says, as though you needed persuading.

Or maybe he's saying that to the me half of us. Right now, it's true that I'm not keen on the prospect of hanging out in Atlantis. We're already way behind the plan."


 complain about the inefficiency of this scheme is a performative quip. The comment is "Sorry, but I have to get this out there. 'I was really expecting a smoother escape plan when I arranged to work with your operation,' I say.".
 It mentions plans, myself.
 The reply is "Slango eyes us with disfav[our]. 'Andra, you got a moron up in your head. Kid [--] Alex [--] we aren't travel agents.'".
 It quip-supplies Slango.
 It directly-follows cant-leave-without.
 The proper scene is consulting-Slango.

modifying-letter is an NPC-directed quip.
	The reply is "'I've got to get back to the yacht; it's empty,' Slango says. 'And I would prefer not to let the Bureau get a good look at me, while your current face is, shall we say, disposable. The trick is, we don't know where Brock is. If he left a message for us, it'll be at the dead drop.'

That's a spot at the public convenience by the town bus station where the three of you leave messages for one another when necessary. Usually quiet, yet anonymous. 'We're on it,' we say.

'Glad to hear it,' says Slango. 'Now stop referring to yourself as [']we['] in company.'"

Carry out Slango discussing modifying-letter:
	assign "Check the dead drop at the public convenience" at Public Convenience;
	complete "Finally find Slango at Counterfeit Monkey" instead.

Report waiting during consulting-Slango:
	say "We wait for Slango to go on." instead.

Sanity-check going during consulting-Slango:
	say "We can't just walk out before we've found out from Slango what's going on." instead.

Instead of saying goodbye to Slango during consulting-Slango:
	say "We need a plan before we can end this conversation."

When consulting-Slango ends:
	say "This gives us something to go on, anyway. We give Slango what I intend as a reassuring nod of solidarity.";
	record "meeting Slango" as achieved;
	if Slango is marked-visible:
		if Slango is the current interlocutor:
			try Slango saying goodbye to the player;
			say "He heads out towards the docks and quickly disappears from view [--] returning to the yacht to wait for us to arrive with Brock.";
		otherwise:
			say "Slango gets up, gives us a final nod of acknowledgement, and heads back toward the yacht to wait for us to arrive with Brock.";
	move Slango to Sunning Deck;
	now root beer is nowhere;
	now the initial appearance of Slango is "Slango hovers nearby, obviously concerned to make sure we got back completely safe.".

Report Slango saying goodbye to the player:
	say "'Back to the yacht for me,' Slango says. 'Don't let the other half of your head do anything you wouldn't do.'

'Which of us are you talking to?' I ask smartly.

'Both.'";
	now brock-bed is triggered.


Test Slango with "tutorial off / deparker / z / t who / laugh / snicker / snicker"  in the Counterfeit Monkey.

Test Slango2 with "tutorial off / deparker / z / t who / explain / snicker / snicker"  in the Counterfeit Monkey.



Section 4 - Lena

The as is a thing. The description of the as is "[one of]It appears to be an as, a [or]A [stopping]Roman coin of very low denomination[one of]. (Your knowledge, not mine. Should I ask how you know such things?)[or].[stopping] It is made of copper and has the letters S C stamped on one side." Understand "roman" or "coin" or "copper" as the as. The heft of the as is 1.

Instead of searching or looking under the as:
	say "We inspect both obverse and reverse, but come away none the wiser."
Instead of buying the as:
	say "We're much too late for speculation in this particular currency."
Instead of touching or squeezing or rubbing the as:
	say "The metal surface is dull and weathered, skin-temperature, all smooth edges."

The greeting of Lena is "'[one of]Happy Serial Comma Day[or]Greetings[or]Hi there[stopping],' she says."
The generic negative of Lena is "[one of]nope[or]nope nope[at random]".
The generic positive of Lena is "[one of]yeeeah[or]mmhmm[or]uh huh[or]sure[at random]".

Instead of Lena discussing something which mentions Slango when Lena does not know trust-me:
	say "[one of][lena-distrusts]'Slango?' she asks blankly, for all the world as though she'd had a lobotomy. 'Is that a board game?'[or]'Maybe a Slango is a kind of juice drink?' she suggests.[or]'I have no idea what you're talking about,' she says. Stonewalling.[or]She just shrugs. We're going to have to convince her to trust us first, it appears. How unutterably tedious.[stopping]".

Instead of saying goodbye to Lena when whether she hath seen slango is available and Lena knows trust-me:
	say "No, don't! I'm [i]sure[/i] she's about to tell us where Slango's gotten to, and if you've forgotten about getting off this island, I have not."

A plausibility rule for whether she hath seen slango when the player knows lena-distrusts and the player does not know trust-me:
	it is implausible.

whether she hath seen slango is a questioning quip.
 The printed name is "whether she has seen Slango". The true-name is "whether she hath seen slango".
 Understand "has" or "if" or "Lena" as whether she hath seen slango.  The comment is "[one of]'You wouldn't happen to have seen Slango about recently?' we ask.[or][if Lena does not know trust-me]'I'm still curious about Slango. Seen him?'[otherwise]'Now, you owe me one Slango,' you say. 'Where'd he get to?'[end if][stopping]".
 It mentions Slango.
 The reply is "'Slango and I were catching up. Bless that man, he's hung like a yak,' she says. 'But he got bad news and had to hurry back to the yacht. Said something about not being able to keep an appointment. I take it you're the appointment? I can try reaching him for you, if you want.'".
 It quip-supplies Lena.

[Your faithful researcher investigated the length of yak endowments when writing this passage. It turns out that there's an Asian restaurant that serves various species of phallus, whose website was most informative. THINGS YOU LEARN FROM THE INTERNET.]

who we seem 3 is an informative quip.
 The printed name is "who we are". The true-name is "who we seem 3".
 Understand "are" as who we seem 3.  The comment is "'Lena, it's Andra. And company. Maybe Slango mentioned that I was auditioning a new silent partner.'".
 It mentions yourself.
 The reply is "'I don't know what you're talking about,' she says. 'But since you're here, whoever you are, I wonder whether you'd like to have a look at some merchandise of mine that could use a spruce.' [paragraph break]Aha. She wants us to prove our identity; probably has contraband that needs concealing, and wants us to do the deed as proof of trustworthiness[queue offer-contraband as immediate obligatory].".
 It quip-supplies Lena.

offer-contraband is an NPC-directed quip.
	The reply is "Lena goes off into a corner and rummages among the suspicious piles of books, and uncovers a box. 'C'mere,' she says; and obediently I wander over to that area of the store, which incidentally happens to be tucked away and half-hidden by shelves.

'[prepare contraband]See here,' she says. 'See what you can do with it, eh?'"

[where contraband came from is a questioning quip. The comment is "'Where did this stuff come from?' I ask, before you can shut me down.".
 It mentions contraband box.
 The reply is "Lena just gives us a cold glare. Evidently we don't ask this sort of question.".
 It quip-supplies Lena.
 It indirectly-follows offer-contraband ]

To say prepare contraband:
	move the contraband box to the location.

[A further thoughts rule for Lena:
	if Lena can see an undisguised single ream or Lena can see an undisguised odes:
		casually queue needs-disguise; [She'll only say this once.]
	if Lena can see an undisguised single ream and Lena can see an undisguised odes and Lena recollects needs-disguise:
		casually queue still-needs-pasting. ]

A first conversation-reply rule when the current interlocutor is Lena:
	carry out the caching scope activity with Lena;
	[say "STARTING: ";
	try checking queue for Lena;]
	let needs more conversation be true;
	if Lena is urgently eager-to-speak:
		let needs more conversation be false;
	if (the single ream is undisguised and the single ream is marked-visible) or (the odes-book is undisguised and the odes-book is marked-visible):
		if Lena does not recollect needs-disguise:
			queue needs-disguise as postponed optional; [She'll only say this once.]
	if (the single ream is undisguised and the single ream is marked-visible) or (the odes-book is undisguised and the odes-book is marked-visible) and Lena recollects needs-disguise:
		if Lena does not recollect still-needs-pasting or a random chance of 1 in 3 succeeds:
			queue still-needs-pasting as postponed optional;
	if needs more conversation is false:
		make no decision;
	[positive feedback before negative...]
	if the single ream is marked-visible and Lena does not recollect ream-approval:
		queue ream-approval as immediate obligatory;
	if the odes-book is marked-visible and Lena does not recollect odes-approval:
		queue odes-approval as immediate obligatory;
	if the origin paste is marked-visible:
		casually queue nice-paste;
	if the odes-book is marked-visible and the ream is marked-visible and the ream is disguised and the odes-book is disguised and Lena does not know trust-me:
		queue that-does-it as immediate obligatory;
	if the modem is marked-visible and Lena is not urgently eager-to-speak:
		if Lena does not recollect modem-complaint or a random chance of 1 in 3 succeeds:
			queue modem-complaint as immediate obligatory;
	if an ode is marked-visible and Lena is not urgently eager-to-speak:
		if Lena does not recollect ode-complaint:
			queue ode-complaint as immediate obligatory;
		otherwise if Lena does not recollect second-ode-complaint or a random chance of 1 in 3 succeeds:
			queue second-ode-complaint as immediate obligatory;
	if the preamp is marked-visible and Lena is not urgently eager-to-speak:
		if Lena does not recollect preamp-complaint or a random chance of 1 in 3 succeeds:
			queue preamp-complaint as immediate obligatory;
	if the reams are marked-visible and Lena is not urgently eager-to-speak:
		if Lena does not recollect reams-complaint or a random chance of 1 in 3 succeeds:
			queue reams-complaint as immediate obligatory;
	if the reams are marked-visible and the modems are marked-visible and Lena is not urgently eager-to-speak:
		if Lena does not recollect task-reminder or a random chance of 1 in 3 succeeds:
			queue task-reminder;
	if the modems are marked-visible and Lena is not urgently eager-to-speak:
		if Lena does not recollect modems-complaint or a random chance of 1 in 3 succeeds:
			queue modems-complaint as immediate obligatory;
	if the preamps are marked-visible and Lena is not urgently eager-to-speak:
		if Lena does not recollect preamps-complaint or a random chance of 1 in 3 succeeds:
			queue preamps-complaint as immediate obligatory;
	if the monocle is marked-visible and Lena is not urgently eager-to-speak and lena recollects who we seem 3:
		if Lena does not recollect monocle-remark:
			queue monocle-remark;
	carry out the caching scope activity with the player.
	[say "NMC True: ";
	try checking queue for Lena;]

A last conversation-reply rule when the current interlocutor is Lena:
	delete postponed optional conversation for Lena.

monocle-remark is an NPC-directed quip.
	The reply is "'Nice monocle, by the way! You do have all the good toys. Suppose it means you can check your work and see whether you've really got enough paste on things.'"

task-reminder is an NPC-directed quip.
	The reply is "[one of]Lena looks from us to [the list of things *in the contraband box]. 'So maybe you could do something with these,' she says, looking at us sidelong. I can tell she's starting to wonder whether we're legitimate[or]'If you need to get some tools or something, I'll still be here,' Lena comments. Honestly I am surprised she's so patient about our slowness on her little test[or]Lena looks us up and down as though trying to reconfigure our face into your face, the one she knows[or]Lena is waiting for us to do something to change [the list of things *in the contraband box].[stopping]."

modems-complaint is an NPC-directed quip.
	The reply is "[one of][if the odes is seen]'Let's go back to the odes,' Lena suggests.[otherwise if the preamps are marked-visible]'Try doing something with the modems,' Lena suggests.[otherwise]'Now the modems,' says Lena. 'Unless you're too tired.'[end if][or]Lena awaits your attention to the modems.[stopping]".

modem-complaint is an NPC-directed quip.
	The reply is "[one of]Lena regards the solitary modem unsympathetically. 'Well, it's shrunk,' she says. 'But that doesn't make it look like what it isn't.'[or]Lena continues to look at the modem with distaste.[stopping]".

ode-complaint is an NPC-directed quip.
	The reply is "'Well, it's portable, and it doesn't look like much, but then again, it doesn't look like much. I mean, I could easily lose it, couldn't I? Just one sheet. And if someone were to ask me why I was carrying it around that would be a little hard to explain. It's not like it's a whole book of [']em, is it?'"

second-ode-complaint is an NPC-directed quip.
	The reply is "'Could you make that ode plural? A whole book of them would be safer, I think. Look less suspicious.'"

odes-approval is an NPC-directed quip.
	The reply is "Lena touches the binding appreciatively. 'You've even got that little bit of creasing in the spine that makes it look used,' she says. 'This is perfect. Only risk is customers wanting to buy it. I've got a couple this would be right up their alley.'"


preamps-complaint is an NPC-directed quip.
	The reply is "[one of]'I'm looking forward to what you do with the preamps,' Lena says. 'They should look... innocent.'[or]Lena awaits our attention to the preamps.[stopping]".

preamp-complaint is an NPC-directed quip.
	The reply is "[one of]'I was hoping you'd make the preamp look less like electronics,' she offers, evidently forgetting the fake off-handedness with which she started this transaction[or]'If you can get the preamp to look like something I might have in the shop, that would be best,' she says[or]Lena nudges the offending preamp with her toe[or]Lena mutters to herself about the preamp still being obviously a problem[stopping]."

reams-complaint is an NPC-directed quip.
	The reply is "[one of]Lena considers the heap of reams contemplatively. 'That's inconvenient, isn't it,' she says. 'And I have a book store, not an office supply shop.'[or]'You don't have a depluralizer, do you?' Lena asks. 'No, I suppose not. But it would be better if there weren't so many of these reams.'[or]'Let's do something with the reams,' Lena says.[or]Lena reminds you that the reams are still stacked up consuming space in her shop. In contrast with the regular merchandise, one supposes.[stopping]"

ream-approval is an NPC-directed quip.
	The reply is "'That works. Kind of thing I might have around for printing invoices on. I was a little afraid there you were going to go for a ram just to spite me. Don't know where I'd put one of those around here.'"

Availability rule for calm Lena:
	if the player recollects ream-approval and the player recollects odes-approval:
		it is off-limits;

calm Lena is a performative quip. The comment is "'Chill and let the master work,' you say. 'Anyone could pick a few letters out of your contraband. Trick is coming up with output that won't disrupt the Feng Shui of this flea market you've got going on.'".
 It mentions Lena, modem, reams, ode, preamp.
 The reply is "Lena visibly relaxes. 'It's a privilege is what it is,' she says. 'Me letting you [if the player wears the Britishizing goggles]practise[otherwise]practice[end if] on my stuff. And no one said anything about contraband. Contraband's a bad word. Very hard to manipulate.'".
 It quip-supplies Lena.
 It directly-follows modem-complaint, ode-complaint, preamp-complaint, reams-complaint.

tease Lena about selling office supplies is a performative quip. The comment is "'May I recommend that you branch out into office supply?' you ask. 'It's a lucrative business. Pamphlet-printing is very popular with the subversive element.'".
 It mentions reams.
 The reply is "'Not as lucrative as untariffed electronics,' she says out of the corner of her mouth.".
 It quip-supplies Lena.
 It directly-follows reams-complaint.

back-to-start is an NPC-directed quip.
	The reply is "'Back to the beginning,' says Lena philosophically. She sucks in a long breath as though she were taking a drag on a cigarette."

Rule for beat-producing when the current interlocutor is Lena and the contraband box is in location:
	say "[one of]Someone comes up to the front door of the shop. Lena goes over, wrenches the door open, and leans out. 'We're closed!' she shouts. 'It's #&@%ing Serial Comma Day!'

The door slams behind her and she comes back over[or]Lena taps her finger against her upper lip[or]Abruptly a phone rings [--] though in this mess I can't see where it could be. Lena ignores it[or]Lena wanders around, impatiently rearranging books on the shelves though it is not at all clear that they are more orderly afterward[stopping].[run paragraph on]";
	rule succeeds.

needs-disguise is an NPC-directed quip.
	The reply is "'Of course,' she says, contemplating [the list of undisguised fake disguisable marked-visible things], 'this will be pointless unless we can also fool an authentication scope.'"

what she kens about authentication scopes is an unlisted repeatable questioning quip. The printed name is "what she knows about authentication scopes". Understand "knows" or "know" as what she kens about authentication scopes.
	It mentions monocle, regulation authentication scope.
	The comment is "'Tell me more about authentication scopes,' [we] say.".
	The reply is "'Main thing I know is that there are more of them in use every day,' she says. 'Keeping our streets and shops clear of fakes. Or so they say.'"
	It quip-supplies Lena.

still-needs-pasting is an NPC-directed quip.
	The reply is "[one of]'What those need now is just a touch of paste to obscure [the random undisguised thing in the contraband box] to the authentication scopes, and [they] will be ready,' she says[or]'Of course, Origin Paste is expensive and hard to get around here, but [the random undisguised thing in the contraband box] [are] worth it,' she comments[or][if the player does not enclose Origin Paste]'Someone at the Counterfeit Monkey might be able to hook you up with a fresh supply of Origin Paste,' she suggests[otherwise]'Fortunate you've already got some paste,' she remarks[end if][or]Lena reflects once more on how useful it would be to put some Origin Paste on [the random undisguised thing in the contraband box][stopping]."

excellent-work is an NPC-directed quip.
	The reply is "'Excellent,' Lena mutters under her breath."

nice-paste is an NPC-directed quip.
	The reply is "'Glad to see you've got plenty of origin paste,' Lena remarks. 'It's such a useful thing to have. Smells so nice.'"

An availability rule for quip-about-paste:
	if Lena does not recollect who we seem 3:
		it is off-limits;
	make no decision.

quip-about-paste is a weakly-phrased performative quip. The printed name is "quip about paste". Understand "quip" or "about" or "paste" as quip-about-paste.
	It mentions Origin Paste.
	The comment is "'Makes a great facial scrub,' you say. 'I slather the stuff on.'"
	The reply is "'Well, honey, all I can say is, you look so real.'"
	It quip-supplies Lena.
	It directly-follows nice-paste.


that-does-it is an NPC-directed quip.
	The reply is "'Perfect,' Lena says, regarding her contraband possessions with satisfaction[trust-me]. 'Welcome back, Andra and Guest[queue whether she hath seen slango].'"

Instead of saying yes when encourage Lena to contact slango is available:
	try discussing  encourage Lena to contact slango;

Instead of saying no when encourage Lena to contact slango is available:
	say "Are you mad? That's exactly what we need her to do.";

 encourage Lena to contact Slango is a performative quip. The comment is "'[if immediately]That would be extremely helpful[otherwise]It would be very useful if you could contact Slango[end if],' we say. Perhaps we can finally get off this island and back into our separate skins, which would not be one minute too soon for me.".
 It mentions Slango.
 The reply is "'Very good,' she says. She goes over to one of the free-standing shelves and takes out copies of [a random book which is part of merchandise] and [i]Seventy Ways to Disable an Authentication Scope[/i]. Behind these works of literature she finds what looks like a cellular phone; but it mustn't be one, or at least not of the usual variety, because the Bureau tightly controls such items. [paragraph break]We hear half a conversation. 'It's me. There's someone to see... yes, I had her do the contraband... I don't know, a little taller and a lot less mean... Oh! I see. She looks healthy enough... I'm not running a restaurant! Okay. Okay. I'll talk to you later, sweetie. Bye.' [paragraph break]Without meeting our eye, she buries the phone back in its previous location. Then she says, 'He's coming in direct. He says go over to Counterfeit Monkey and he'll be right over as originally planned, and he's sorry about the wait.'[paragraph break]'Oh! And.' She tosses us a coin. 'Have a drink on me.'".
 It quip-supplies Lena.
 It indirectly-follows whether she hath seen slango.

Carry out Lena discussing encourage Lena to contact Slango:
	move the as to the location;
	if the player does not carry the as:
		[follow the considerate player's holdall rule;]
		move the as to the player;
	assign "Finally find Slango at Counterfeit Monkey" at Counterfeit Monkey;
	complete "Talk to Lena at the Aquarium Bookstore";
	record "arranging contact with Slango through his lady friend" as achieved;
	summon Slango.

Instead of answering Lena that "thank you":
	try discussing thank Lena.

 thank Lena is a performative quip.
 It mentions as.
 Understand "her" or "thank you" or "thanks" as thank Lena.
 The comment is "'Thank you,' we say. 'We owe you one.'".
 The reply is "She smirks. 'I get my money's worth out of Slango, don't worry.'".
 It quip-supplies Lena.
 It directly-follows encourage Lena to contact Slango.

[TODO: fix test]
Table of Ultratests (continued)
topic	stuff	setting
"Lena"	{ tub, origin paste }	the Aquarium

Test Lena with "tutorial off / z / open tub / ask about slango / say who we are / z / z / wave m-remover at modems / wave s-remover at odes / gel ode / wave m-remover at modems / wave p-remover at preamps / wave s-remover at reams / put paste on odes / put paste on ream / ask whether / encourage" [in the Aquarium holding tub and the origin paste.]

Section 5 - Professor Brown

The greeting of professor brown is "He grunts."
The generic positive of professor brown is "yes".
The generic negative of professor brown is "no".
The generic confrontational of professor brown is "uh".

 what he seems doing is a questioning quip.
 The printed name is "what he is doing". The true-name is "what he seems doing".
 Understand "is" as what he seems doing.
 It mentions research and Professor Brown.
 The comment is "'What are you up to there?' we ask. Asking Brown questions when he's working is a bit of a crap-shoot, I tell you now.".
 The reply is "He wiggles his nose back and forth. I knew him for three months before I figured out what the wiggle is: it is his hands-free way of working his spectacles back up his nose when they start to slide down. [paragraph break]Without looking at us, he says, 'I'm getting ready to do a new calibration run on [']love['].' [paragraph break]This is a fav[our]ite of his, because you can get it so easily from a glove, so the materials are inexpensive.".
 It quip-supplies Professor Brown.

 what love looks like is a questioning quip.
 It mentions research.
 The comment is "'What does love look like, then?' we ask, as though I hadn't seen this a bunch of times already.".
 The reply is "[long love answer]".
 It quip-supplies Professor Brown.
 It indirectly-follows what he seems doing.

To say long love answer:
	say "'It varies,' Professor Brown replies. 'The manifestation of a complex concept depends on a variety of circumstances; by default if multiple concepts are available, the letter tool will produce whichever concept requires least energy to produce, but in cases where several concepts are indistinguishably popular, the results are apparently random.

'Recent research suggests that the outcome can be influenced by the language community surrounding the operation and even by the intention of the tool's user (to a limited degree); but I am not interested in pursuing those angles at present.' [paragraph break]There: Professor Brown in a nutshell. Did he tell you anything you wanted to know? No.[paragraph break]";
	say "The deal is that manifestations of 'love' tend to look like stuff you'd find on a greeting card: roses, hearts, kiss symbols. Every once in a while you get something a little more platonic. But it's a let-down, if you want to know the truth. Most significant abstracts are like that: all you get by reifying them is a popular visual[ization]. "

 what he thinks of Higgate is a questioning quip.
 It mentions Professor Higgate.
 The comment is "'What do you think of Professor Higgate?' we ask..".
 The reply is "He gives a convulsive jerk of the shoulders. 'She's okay,' he says. 'She comes down here a lot and she keeps trying to get me to join her Conversational Lojban Tea, and I don't much see the point of her research, but I don't hate her or anything.'".
 It quip-supplies Professor Brown.
 It is background-information.

 what he thinks of you is a questioning quip.
 It mentions yourself.
 The comment is "'So... There's a guy who I think is a graduate student here [--] Matthew Rosehip? Do you know him?'".
 The reply is "This startles Brown enough that he turns around and looks at us. There is a curiously wary look in his eyes, and it hits me: He's worried. [paragraph break]See, about a month ago I was down here talking to Brown and I let slip some general hints about what I've been working on, and I had the impression that for once he was listening. When I was done with the very rough outlines, he told me to be careful, really really careful [--] not just on the island, but in the outside world, too, because there were a lot of people who wouldn't want a plan like that to succeed. [paragraph break]'I know all the graduate students,' he replies, turning another knob until his equipment gives a high-pitched whine. There is no functional purpose to that knob, he confessed once, other than to make strangers and idiots think they're interrupting a dangerous test. 'I'm not supervising his research, if that's what you mean. His advisor is Professor Waterstone.'".
 It quip-supplies Professor Brown.
 It is background-information.

 what he thinks of Waterstone is a questioning quip.
 It mentions Professor Waterstone.
 The comment is "'Do you get along with Professor Waterstone?' we ask.".
 The reply is "He is silent for a minute. Then he says, 'Once Professor Waterstone gave me a conch shell. He said I could s-remove it and settle the dispute about the afterlife once and for all.'

This is not an anecdote I've heard before, but that sounds like a typically Waterstonian way of sending someone to blazes. 'What did you say?' I make us ask.

'I pointed out that in the phrase [']conch shell['], [']conch['] is a strongly-adhering adjective, so that actually you can't make a conch shell into much of anything, and moreover that reifications merely represent an amalgam of the most common beliefs about an abstract, rather than having any essential truth value.'

Brown sniffs. 'He didn't have a come-back to that.'".
 It quip-supplies Professor Brown.
 It is background-information.

why Waterstone gave him the conch shell is a questioning quip.
 It mentions Professor Waterstone.
 The comment is "'Do you have any idea why Professor Waterstone, er, offered you the conch shell?'".
 The reply is "Brown twitches. 'I was just in his office talking to him. Suddenly he got testy and sarcastic and gave me the shell. Some of the department here don't have very good people skills.'".
 It quip-supplies Professor Brown.
 It indirectly-follows what he thinks of Waterstone.

 what Professor Brown thinks of the academic job market is a questioning quip.
 Understand "he" as what Professor Brown thinks of the academic job market.
 It mentions Employment.
 The comment is "'How is the job search going?' we ask. 'Are you still considering moving?'".
 The reply is "He looks confused, so I have us hastily add, 'I heard from one of the graduate students that you were on the market.' [paragraph break]'Yes well,' he replies, in a tortoise-like voice you have heard often before. 'Under recent circumstances it is unlikely that I would receive a visa to work elsewhere. Nonetheless, I do send out the applications every fall, just in case the contract does not get renewed. Sometimes I even get a telephone interview or two.'".
 It quip-supplies Professor Brown.
 It is background-information.

 wish Professor Brown luck is a performative quip.
 Understand "wish him luck" as wish Professor Brown luck.
 It mentions employment, Professor Brown.
 The comment is "'Well, good luck with that.'".
 The reply is "'At this point I need some kind of major change in the universe more than I need lu[--]' He stops and stares into the middle distance through the green spectacles. Then he bends over the work table and scribbles something in tiny writing on one of the scraps of paper there. [paragraph break]'Sorry!' he says. 'Had a thought.'".
 It quip-supplies Professor Brown.
 It directly-follows what Professor Brown thinks of the academic job market.

 how Professor Brown makes abstracts is a questioning quip.
 Understand "he" as how Professor Brown makes abstracts.
 It mentions research.
 The comment is "'What equipment do you use to make your abstracts?' we ask.".
 The reply is "'It's an ordinary letter-remover with a few adjustments,' Brown says. 'The department's computer can lift some of the legal overrides on standard letter tools. The job would be easier if I had access to higher-powered machinery, but...'".
 It quip-supplies Professor Brown.
 It indirectly-follows what he seems doing.

Availability rule for whether he can fix the letter-remover:
	if the letter-remover is marked invisible, it is off-limits.

Plausibility rule for whether he can fix the letter-remover:
	if Professor Brown does not recollect how Professor Brown makes abstracts, it is dubious.

Instead of Professor Brown discussing whether he can fix the letter-remover when the letter-remover is not touchable:
	say "'I'd need access to it first, obviously,' he says, as though speaking to a freshman."

whether he can fix the letter-remover is a demonstration quip.
 It mentions the letter-remover.
 The comment is "'Could you fix my letter-remover to make abstract objects as well?'"
 The reply is "'It's not difficult, you just[--] oh, stay here, I'm not supposed to bring students into the rectification room.'

He takes the letter-remover and steps out into the hallway. I can hear him using his keycard on the door, going into the little room west of the hallway, doing something there. (Don't bother thinking we're going to cosh him and take the keycard. I'm sure there's a better way, and I don't cosh people.)

He comes back in a minute.

'There,' he says. 'Should be abstract-enabled now.'"
 It quip-supplies Professor Brown.
 Understand "if" as whether he can fix the letter-remover.

what he thinks of the letter-remover is a demonstration quip.
 It mentions the letter-remover.
 The comment is "[one of]'Is there anything else that could be done to upgrade my letter-remover?' we ask naively.[or]'Anything else I should know about the letter-remover?' we ask.[stopping]".
 The reply is "[one of]'Nothing I can help you with, I'm afraid,' he says. 'There are some safety overrides that could be programmed out, allowing you to make living creatures, but that's...' He does his spasmodic shrug. 'One of those things where I think the laws have a point. It's dangerous and possibly even cruel.'[or]'That's as good as I can make it for you,' he says. 'As I said, I think the law is right to prohibit living creatures.'[stopping]".
 It quip-supplies Professor Brown.
 It is repeatable.
 It indirectly-follows whether he can fix the letter-remover.

Carry out Professor Brown discussing whether he can fix the letter-remover:
	record "lifting abstraction limits on the letter-remover" as achieved;
	now the letter-remover device is upgraded.

why reifying living creatures seems cruel is a questioning quip.
 The printed name is "why reifying living creatures is cruel". The true-name is "why reifying living creatures seems cruel".
 Understand "is" as why reifying living creatures seems cruel.  The comment is "'Why would it be cruel to make a living creature?' you ask.".
 It mentions letter-remover.
 The reply is "'We don't know whether such creations have awareness and sensation like other creatures,' he says. 'If they do, it is horrible to bring them into existence only to send them out again.'".
 It quip-supplies Professor Brown.
 It indirectly-follows what he thinks of the letter-remover.

 thank Professor Brown is a performative quip.
 It mentions Professor Brown.
 The comment is "'That's wonderful [--] thank you!'".
 The reply is "'Yes well,' he says. 'Don't show it to anyone. Technically you shouldn't have that.'".
 It quip-supplies Professor Brown.
 It indirectly-follows whether he can fix the letter-remover.


Rule for refusing comment by Professor Brown when the noun is r-abstract:
	say "We show off [the noun]. ";
	if the noun is proffered by a person:
		say "Brown frowns. '[regarding the noun][those] [are] made from a living being,' he remarks. 'That's against policy [--] I recommend you put it back.'";
	otherwise if the noun is noisy:
		say "[one of]'These audio abstracts are always tuned in to what people have in mind at the moment. Like an all-time Top 40. In fact I think they use abstracts to DJ Island Radio 95.5 FM.' He might be joking, but it's plausible enough[or]He waves us off. Audio abstracts aren't really his thing[stopping].";
	otherwise if the noun is verbal:
		say "[one of]'Yeees,' says Brown wearily. 'These verbals are notoriously changeable and unstable. The name of a name.'[or]'I've seen the type before,' he remarks.[stopping]";
	otherwise if the noun is proffered by the ring:
		say "'Ah! inventive. Not an item of great cultural significance, but an unusual choice, I grant you.'";
	otherwise:
		say "'[one of]Mmhmm[or]Very nice[or]Not bad[at random],' he says, but he's obviously still focused on his own work."

what he thinks about the word is a demonstration quip.
 It mentions the word.
 The comment is "We demonstrate the word."
 The reply is "'It's odd, isn't it? You'd think this would somehow reveal something about the nature of words, but all it does is point to other words.'"
 It quip-supplies Professor Brown.

what he thinks about the pasts is a demonstration quip.
 It mentions the pasts.
 The comment is "We demonstrate the pasts."
 The reply is "'Yes,' says Brown, interested. 'This is good, very nice example of how an object can be affected by the creator and local environment. It appears to be a record of your own behavi[our] alone, but with the right laboratory conditions it ought to be possible to produce a past abstract referring to someone else, or to a place.'"
 It quip-supplies Professor Brown.

Definition: a thing is verbal:
	if it is the lie:
		yes;
	if it is the adage:
		yes;
	if it is the passage:
		yes;
	if it is the alterna-letter:
		yes;
	if it is proffered by the word:
		yes;
	no.




Rule for refusing comment by Brown when the noun is r-abstract:
	if the current interlocutor is an animal:
		make no decision;
	say "'Hm, yes. A common specimen.'"

Rule for refusing comment by Brown when the noun is an age:
	say "[one of]'I've done a bunch of runs of that, since the supplies are cheap,' he comments. 'It's pretty well-documented territory. Around Atlantis, you'll find it almost always resolves to a particular part of our history that children study in school.'[or]'Uh huh.' He barely looks up from his work.[stopping]".

Rule for refusing comment by Brown when the noun is an r-abstract noisy thing:
	say "[one of]'There's some useful literature on which abstracts have to come with sound,' Brown says, checking out [the noun].[or]'Uh huh.' He barely looks up from his work.[stopping]"

Rule for refusing comment by Brown when the noun is a lie:
	say "[one of]'Those can be dangerous,' he remarks. 'I wouldn't show it around [--] it might give away something important.'[or]'Uh huh.' He barely looks up from his work.[stopping]";

Rule for refusing comment by Brown when the noun is a pi-object:
	say "[one of]'Well,' he says, 'that's not unattractive. I often wind up with just a string of numbers when I reify pi.'[or]'Yes, I saw.' He doesn't seem to have much further interest in the thing.[stopping]".

Rule for refusing comment by Brown when the noun is the climate:
	say "[one of]'Synthetic, but really very elegant,' he says approvingly. 'It would be interesting as a side project to investigate how climate manufacture changed as a reflection of civic concern about global weather patterns. But I don't have time for such an involved research project. Perhaps you should consider it.'[or]Brown's already suggested we launch a research project about the climate.[stopping]".

Rule for refusing comment by Brown when the noun is r-abstract and the noun is proffered by at least two things:
	say "'Synthesized,' he says, looking over it. 'It's interesting, but I have to be consistent in the instruments I use for my calibration runs. Synthesizers have different energy profiles than letter-removers.'"



Section 6 - Professor Higgate

[ The professors were perhaps the easiest and most enjoyable characters to write. There are elements of caricature about each -- just as with the backpacking girl at the hostel -- but they're much more important figures in the plot and in Alex's life.

Professor Higgate is my favorite: genuinely and deeply committed to her subject, fond of her students, and so deeply part of her own academic culture that it's not always easy for her to see things as the world outside might. She's humane and well-meaning, she sees the pursuit of knowledge as a true and worthy calling in its own right, and yet she doesn't always understand what is happening to the world outside her doors, and that's what makes her defenseless in the end.

Higgate's dearness (to me) made her an obvious sacrificial candidate for the end of Act 3. I wanted to have something happen that would alarm Alex and make him feel that his world was under a true threat -- something more personal than the repressive but basically anonymous protest scene at the Roundabout. And the person Alex cares about most in an uncomplicated way is Higgate: she's supported and guided him through his career, almost another parent, except without the slightly stifling associations that his actual parents bring to bear. ]

The generic positive of Professor Higgate is "I suppose".
The generic negative of Professor Higgate is "[one of]not exactly[or]not really[at random]".
The generic adversative of Professor Higgate is "erm".
The generic confrontational of Professor Higgate is "er".

lojban-greeting is an NPC-directed quip.
	The reply is "She looks up when we come in. '.i xu do se bangu la lojban.' Higgate asks. She's asking whether we speak Lojban. For the present, I think it will raise fewer questions if we say no.".
	It is restrictive.


english-greeting is an NPC-directed quip.
	The reply is "[one of]'Hello again,' says Higgate, obviously disappointed to see another non-Lojban speaker.[or]'You're back,' Higgate says[one of] flatly[or], putting aside her novel[or][at random].[stopping]".

Every turn when the current quip is lojban-greeting:
	say "Higgate is still looking at us expectantly, so I jump in. ";
	try discussing that we do not speak Lojban;
	try Higgate discussing that we do not speak Lojban.

Instead of saying no when that we do not speak lojban is available:
	try discussing that we do not.

Instead of saying yes when that we do not speak lojban is available:
	say "I could, of course, but she'd then wonder where we picked it up. Better not.";
	now that we do not speak lojban is listed.


Every turn when the current interlocutor is Professor Higgate and we do not speak lojban is available:
	try discussing  we do not speak lojban.

 that we do not speak Lojban is an unlisted informative quip. Understand "no" as  that we do not speak Lojban.
 It mentions constructed language.
 The comment is "'I'm afraid I don't understand,' we say, smiling faintly.".
 The reply is "Her face falls. 'Ah! I was hoping you'd be here for Conversational Lojban Tea.' The room is conspicuously lacking other Lojban conversationalists.[queue cucumber regret]".
 It quip-supplies Professor Higgate.
 It directly-follows lojban-greeting.

cucumber regret is an NPC-directed quip.
	The reply is "'I'd offer you some cucumber sandwiches,' Professor Higgate says. 'But I'm afraid I ate them all.'"

 how Professor Higgate seems doing is a questioning quip.
 The printed name is "how Professor Higgate is doing". The true-name is "how Professor Higgate seems doing".
 Understand "is" or "she" as how Professor Higgate seems doing.
 It mentions Professor Higgate.
 The comment is "'How are you?' we ask.

Forgive me these irrelevant questions, but I haven't seen Professor Higgate for a few days, and she's one of my fav[our]ite people in the department. I worry about her a little.".
 The reply is "She looks taken aback, as though trying to figure out whether she knows us. Then she shrugs this off and decides to proceed as though she does.

'Oh, you know,' she says. 'It's that time of year when the energy's run out and the students have to be prodded with an electric rod to get them to do any work. And then I've got this book I've got to write, and Professor Waterstone keeps talking about how next year he would like to take a break from being Director of Graduate Studies...'".
 It quip-supplies Professor Higgate.
 It indirectly-follows that we do not speak Lojban.

 what would be so bad about directing graduate studies is a questioning quip.
 It mentions employment.
 The comment is "'What would be so bad about being director of graduate studies?' I ask, a little surprised. I always thought she liked graduate students.".
 The reply is "'Nothing, nothing! It's just that I have this book I should be writing, and Professor Waterstone has done the job for so many years that he's[--]'

She pulls up short, apparently remembering that she doesn't, actually, know us at all. 'He's very experienced, and I am not sure he would enjoy watching someone else do it differently,' she concludes tactfully. 'Our personal styles are not very similar.'".
 It quip-supplies Professor Higgate.
 It indirectly-follows how Professor Higgate seems doing.

An availability rule for what the romance novel might be:
	if heart to heart is marked invisible:
		it is off-limits.

 what the romance novel might be is a questioning quip.
 It mentions heart to heart.
 The comment is "'What are you reading there?' we ask, in our best earnest undergraduate voice.".
 The reply is "She blushes very faintly. 'It's a novel in Láadan,' she says. 'A relatively little-spoken language, but I'm trying to master it. It was designed as a language for women, which has interesting sociological implications, though I fear it was not as widely taken up as the designer might have hoped.'".
 It quip-supplies Professor Higgate.
It is background-information.

[Originally the novel was in Fukhian, which I picked off a webpage on constructed languages because I liked the look of the script. But later, reading Arika Okrent's In the Land of Invented Languages as research, I ran across Láadan, which — with its highly elaborated vocabulary of body parts, and the sentence modifiers that mean things like 'I say the following in a loving fashion' — seemed a more likely language for constructed romance novels.]

whether Professor Higgate would translate part of the novel is a questioning quip.
 Understand "she" or "if" as whether Professor Higgate would translate part of the novel.
 It mentions constructed language, heart to heart.
 The comment is "'Would you translate part of it for me?' we ask.".
 The reply is "The blush deepens. 'Well, some of the ideas are hard to express in single words of English. This suffix, for instance, has a pejorative meaning, so when it is attached to, ah, the word for experiencing a sexual act, that may suggest that the act was unsatisfactory.'".
 It quip-supplies Professor Higgate.
 It directly-follows what the romance novel might be.

 whether she encountered activists is a questioning quip.
 Understand "if" as whether she encountered activists.
 It mentions activist, environment.
 The comment is "'Did you by any chance encounter some activists on the way into the building?' we ask. 'I had a hard time getting in here because they wanted to talk to me about toxi waste.'".
 The reply is "'[i]Yes[/i],' she says. 'Now those kids! If we needed proof of the social value of what we're doing here, they're a perfect example. I admire their enthusiasm, don't get me wrong, but the whole idea of single-term manipulation is hopelessly wrong-headed, and if they spent a semester or two in a Language Studies class, they'd understand why.'".
 It quip-supplies Professor Higgate.
 It is background-information.

An availability rule for whether she might let us into the language studies seminar room:
	if the seminar room is visited:
		it is off-limits.

whether she might let us into the language studies seminar room is a questioning quip. The comment is "'Could you possibly let me into the Language Studies Seminar Room?' we ask. 'There's something I'd like to do in there.'".
 Understand "higgate" or "her" or "professor" or "if" as whether she might let us into the language studies seminar room.
 It mentions seminar door, key.
 The reply is "'Er... Do you have some student ID or something? You see, and this is a little embarrassing, I'm afraid I'm not quite placing you at the moment, and I'm not supposed to allow students into that room unless they have some affiliation with the department.'

Of course we don't have any ID, and no prospect of getting any. But she might be persuaded by some other evidence of affiliation[if the player does not enclose the Problem of Adjectives]. Maybe a book to return[end if].".
 It quip-supplies Professor Higgate.

An availability rule for how we might return a book:
	if the player does not enclose Problem of Adjectives:
		it is off-limits.

how we might return a book is a demonstration quip. The comment is "'I need to return this book to the department library,' we say, holding out [Problem of Adjectives].".
 Understand "can" or "could" or "might" as how we might return a book.
 It mentions Problem of Adjectives.
 The reply is "'Oh! Yes, all right,' she says. 'Did you like it? It's a good overview of the subject, didn't you think? I'm afraid the author once annoyed Professor Waterstone at a conference, or we might have had her around to speak at one of our colloquia...'".
 It quip-supplies Professor Higgate.

Instead of looking in Samuel Johnson Hall when Higgate is in Samuel Johnson Hall:
	follow the room description heading rule;
	say "We stand politely a few paces back from the southeast door, which is currently occupying Higgate's attention. [run paragraph on]"

Report approaching Samuel Johnson Hall when Higgate is in Samuel Johnson Hall:
	say "We walk a little behind Higgate, who has a very long businesslike stride despite her heels." instead.

Rule for listing exits when looking in Samuel Johnson Hall when Higgate is in the location:
	do nothing instead.

Report Higgate unlocking the seminar door with something:
	say "She fiddles with her keys for a moment before finding the right one. [run paragraph on]" instead.

Report Higgate opening the seminar door:
	say "'Here we you go,' she says, pushing the door open." instead.

Report Higgate getting off the chair:
	say "Higgate stands, patting herself down as though worried she has forgotten something." instead.

Report Higgate going a direction when the location is Higgate's Office:
	say "She walks past us through the office door." instead.

Report Higgate going southwest to the Seminar Room:
	say "She steps inside." instead.

Report Higgate going a direction (called way):
	say "She waves and heads back [way]." instead.

[From early on in the game, PAINT was an available object, since it's very linguistically productive, offering PANT, PINT, PIN, PAN, PAT, etc. At one point, the player got this paint from Professor Higgate's office, a remnant of the redecoration in progress there.

But ultimately, PAINT didn't fit too well into the puzzle structure I was building, and many of the things it offered could be created from other objects sooner or later. So I cut the object and commented out the associated dialogue passages.]

[An availability rule for whether she needs the paint:
	if the paint is not visible or the paint is released:
		it is off-limits.

whether she needs the paint is an unlisted questioning quip. The comment is "'Looks like you've got some paint left over from the trim job. Very pretty, by the way.'".
 Understand "higgate" or "professor" as whether she needs the paint.
 It mentions paint.
 The reply is "'Oh! Yes, I never got around to disposing of it, I'm afraid. The regulations have gotten so strict lately. It might be toxic, so you're not supposed to just throw it away, and of course I could transform it into something else but they look askance on the disposal even of transformed chemicals.'".
 It quip-supplies Professor Higgate.

Instead of asking Professor Higgate to try giving the paint to yourself:
	try discussing if we can take the paint.

Instead of asking Professor Higgate for the paint:
	if the paint is released:
		say "She has already said we could have it.";
	otherwise:
		try discussing if we can take paint.

if we can take the paint is a questioning quip. The comment is "'I'd be happy to dispose of the paint for you,' we say. 'It would be no trouble.'".
 It mentions paint.
 The reply is "'Oh! Well, that's very kind of you. Make sure you do it properly!'".
 It quip-supplies Professor Higgate.
 It indirectly-follows whether she needs  paint.

Carry out Higgate discussing if we can take the paint:
	now the paint is released.

Before discussing if we can take paint when the player does not recollect whether she needs paint:
	try discussing whether she needs paint;
	follow the conversation-reply rules.

availability rule for whether she seems sure she doesn't want the pint:
	if the player does not carry the pint:
		it is off-limits.

whether she seems sure she doesn't want the pint is a weakly-phrased questioning quip.
 The printed name is "whether she is sure she doesn't want the pint". The true-name is "whether she seems sure she doesn't wantthe  pint".
 Understand "is" as whether she seems sure she doesn't want the pint.  The comment is "'You're sure I can't tempt you with this nice pint?'".
 It mentions pint.
 The reply is "'Perfectly,' she says. 'Tea and water for me.'".
 It quip-supplies Professor Higgate.

Before going from Higgate's office when the paint is released and the player does not enclose the paint:
	try Higgate discussing paint-recycling instead.

paint-recycling is an NPC-directed quip.
	The reply is "[one of]'Wait [--] weren't you going to dispose of the paint for me?'[or]'Do take the paint with you now if you want it,' she says. 'I may be gone later.'[or]'You're forgetting the paint again,' she says.[stopping]". Before going from Higgate's office when the paint is released and the player does not carry the paint:
	try Higgate discussing paint-recycling instead. ]

which conlangs she kens is a questioning quip.
 The printed name is "which conlangs she knows". The true-name is "which conlangs she kens".
 Understand "knows" or "what" or "languages" or "language" as which conlangs she kens.  The comment is "'Which conlangs do you know, then?'".
 It mentions constructed language.
 The reply is "'Esperanto, Volapük, and Lojban, naturally,' she says. 'Interlingua, a bit of Fukhian,' (she is careful to pronounce the h sound), '...Quenya, Klingon, Royeship, Toki Pona... and several others in which I am not fluent enough to speak, but know well enough for the purposes of study.'".
 It quip-supplies Professor Higgate.

Section 7 - Professor Waterstone

W-identifies is an NPC-directed quip.
	The reply is "He looks up at us gravely. 'I don't believe we've met,' he says. 'Can I help you?'"

A first conversation-reply rule when the current interlocutor is professor Waterstone:
	if the player does not recollect please-get-out and please-get-out is not listed in the planned conversation of Professor Waterstone and Professor Waterstone recollects at least two quips:
		queue please-get-out as postponed obligatory.

After reading a command when make up some excuse is available:
	if the player's command includes "make":
		replace the matched text with "excuse".

Instead of saying yes when make up some excuse is available:
	try discussing make up some excuse.

 make up some excuse is a performative quip.
 It mentions yourself.
 The comment is "'I'm a prospective student,' we say. Immediately I regret it: we look too old to be an undergraduate prospective, and Waterstone would know all the graduate prospectives personally.".
 The reply is "He raises an eyebrow. 'At your age?' [paragraph break]'I took some time off school,' we remark. [paragraph break]Some professors would greet this with warmth or sensitivity or at least good manners. Waterstone says, 'Well, in that case, it is to be hoped that you spent those wasted years on [i]some[/i] valuable activity. What did you need from me?'".
 It quip-supplies Professor Waterstone.
 It is restrictive.
 It directly-follows W-identifies.

 that we just dropped by to meet him is an informative quip.
 It mentions Waterstone.
 The comment is "'I just dropped by to meet you,' we say. 'I had heard good things about your teaching.'".
 The reply is "'I rarely teach undergraduates,' he remarks. 'You would spend your time more profitably by making the acquaintance of the teaching assistants or perhaps' [--] and here he enunciates the name with distaste [--] 'Professor Brown.'".
 It quip-supplies Professor Waterstone.
 It directly-follows make up some excuse.

 where to find Professor Brown is a questioning quip.
 It mentions Professor Brown.
 The comment is "'Where might I find Professor Brown?' we ask.".
 The reply is "'He is most likely in the basement,' says Professor Waterstone exactly. '[one of]L-removing POOL[or]R-removing DOOR[or]N-removing TENANTS[or]L-removing TILT[or]A-removing SODA[cycling], no doubt.'".
 It quip-supplies Professor Waterstone.
 It is repeatable.
 It is background-information.

 whether he met the activists is a questioning quip.
 It mentions environment.
 The comment is "'Did you run into those activists outside?'".
 The reply is "'Sadly, it is our misfortune constantly to encounter people with no concept of what language manipulation can and cannot do,' Waterstone says. He really seems to be in a bad mood today, even for him: maybe a fight with the wife, or a nasty letter from the dean.".
 It quip-supplies Professor Waterstone.
Understand "if" as whether he met the activists.

what he kens about me is an unlisted questioning quip.
 The printed name is "what he knows about me". The true-name is "what he kens about me".
 Understand "knows" as what he kens about me.  The comment is "'Actually, I did wonder: do you have a student named Alex Rosehip? One of the teaching assistants, I think?'".
 It mentions yourself.
 The reply is "He looks at us with an unusually keen stare. 'He is an advisee of mine,' says Waterstone. 'A bright scholar, but I fear that he has taken on board some dubious ideas about the [i]applications[/i] of what we study. I would suggest that you take anything he may have said to you with a grain of salt.'".
 It quip-supplies Professor Waterstone.

Availability rule for why he seems working on Serial Comma Day:
	if the player knows carpets-shampooed:
		it is off-limits.

why he seems working on Serial Comma Day is a questioning quip.
 The printed name is "why he is working on Serial Comma Day". The true-name is "why he seems working on Serial Comma Day".
 Understand "is" or "professor" or "waterstone" as why he seems working on serial comma day.  The comment is "'Why are you in today?' we ask. 'Isn't it a holiday?'".
 It mentions Waterstone, celebration.
 The reply is "'The pursuit of knowledge does not occur according to the calendar,' he says. Then he adds, 'And my wife is having the carpets shampooed[carpets-shampooed] and kicked me out of the house.'".
 It quip-supplies Professor Waterstone.


Availability rule for why he doesn't go to the demonstration:
	if the player does not know waterstone-invited:
		it is off-limits.

why he doesn't go to the demonstration is a questioning quip. The comment is "'I'm surprised you're not at this demonstration,' we say, gesturing towards the invitation on his desk. 'It looks interesting.'".
 Understand "professor" or "waterstone" as why he doesn't go to the demonstration.
 It mentions invitation.
 The reply is "'Does it?' he asks wearily. 'It sounds like a dead bore to me. Unfortunately, I can be neither at the demonstration nor at home at the moment. I have this blasted presentation to finish[if the player does not know carpets-shampooed], and my wife is having the carpets shampooed[carpets-shampooed] [--] on a holiday! [--] and won't let me work in my own study[otherwise] and thanks to the carpets I can't work in my own study[end if].'".
 It quip-supplies Professor Waterstone.

Please-get-out is an NPC-directed quip.
	The reply is "'Look, I really must work on this,' says Waterstone, chasing us to the door. 'Perhaps someone else in the department can answer a few of your questions. I believe I saw Professor Higgate earlier, and Professor Brown is usually in his lab downstairs. I'm sure he's not working on anything too urgent. Goodbye!'"

Report someone discussing please-get-out:
	say "[reply of please-get-out][paragraph break]";
	reset the interlocutor;
	try going south;
	shut the office instead.

[At the time when Waterstone gets annoyed:
	if the location is not Waterstone's Office:
		shut the office. ]

To shut the office:
	try Waterstone closing office-door-1;
	try Waterstone locking office-door-1 with od-key;
	carry out the caching scope activity with the player;
	if the department printer is marked-visible and the department printer is switched on:
		say "A moment later the printer whirs thoughtfully.";
	now the draft document is pending;
	rule succeeds.



Section 8 - Brock

[ Brock underwent several major character revisions over the course of development. Rescuing him was always a major goal of the game (though in earlier versions, the goal was to rescue him from inside the Customs House, where he'd been captured trying to escape through the standard channels).

In the first draft, he was a love interest for Andra but one whose feelings for her were still undeclared. But as I wrote, that scenario began to feel increasingly childish and contrived. Here were two adults who had been living together in very close quarters for years. Imagining that their feelings had somehow gone unspoken and unexplored required that they either be people with major hangups about love and relationships, or that they conform to that television logic that dictates that people will postpone starting any new relationship until right at the end of the story, even when they've been perfect for one another for all seven seasons.

So I decided to revise.

Next I recast Brock as a significantly less-nice figure, one who mildly harassed Andra and bossed her around without having any genuinely romantic feelings for her. In this version, Andra was motivated almost as strongly as Alex by a sense of being trapped in circumstances, unable to do what she wanted to do or be who she wanted to be. Though she felt bound by duty and circumstance to help rescue Brock, she was really very angry at him. The dynamic here was about Andra's need to develop a more assertive sense of self, against the background of a domineering family and a present-day environment in which she was used and taken for granted.

But as I worked on this, I started to feel that I'd made Andra too unsympathetic as a character: bullied by her family and then her colleagues, she was a resentful survivor. But there wasn't really enough time in the story to explore her struggle to define herself, so what came across was mostly someone embittered and miserable. We rarely saw any indication of warm feelings from her, and the dialogue written from 'her' voice tended to be anodyne and devoid of personality, or just plain sour.

In light of that, I decided to revise Brock yet again. While I'd still like to write a story like the one I originally envisioned for Andra, there isn't room for that story to be inside Counterfeit Monkey. Instead, I made Brock a cocky character but one that Andra does love and with whom she has a history. I added the various memories about their relationship, to establish that they've grown together and that Brock helped Andra through some weird stuff.

That puts a lot of weight on this one scene. Though we've heard from and about Brock all game long, we never meet him until now, and we won't be allowed to interact with him again until the denouement. Moreover, we've just come through a somewhat tense and very linear passage. So the goals here are:

-- provide a less-linear gameplay sequence in which the player has several simple challenges doable in any order, something that feels like a relaxing oasis between the tense bureau entry and the even-tenser conflict with Alex's father
-- sketch in as rapidly as possible the emotional landscape between Brock and Andra: mutual affection and respect, some joking around, and a few not-too-buried resentments on Andra's part about the trouble he's caused -- though their relationship is healthy enough that she can bring those up without spiking the whole thing
-- present Brock as a fairly playful figure who reacts to a number of the things Andra does in his presence, so that even the mechanical puzzle-solving bits feel a bit expressive and communicative
-- let Brock earn a little of the player's goodwill (as well as Andra's) by having him be actively helpful -- turning up props to use, getting things out of the t-inserter when they're in our way, and so on. This is a fine line to walk, because we don't really want Brock to actually solve the puzzles for us, certainly not before the player has had a chance to do so
-- to make Brock seem sufficiently human, present, and likeable that the choice about whether to betray him seems like a genuine concern
]

Brock is a man in the repository.
The initial appearance is "Brock is preternaturally still."
The current mood of Brock is neutral.

Brock is alert. The description of Brock is "He looks a bit haggard to me, but I don't think anything too horrible has happened to him[one of]. So perhaps you can stop worrying[or][stopping]."

Brock-argument is a scene. Brock-argument begins when the location is the Equipment Testing Room and Brock is in the location.


When Brock-argument begins:
	if the location does not enclose an it-derivative:
		now Brock carries the last-sign.

Definition: a thing is it-derivative:
	if it is the spill or it is the pita or it is the piece or it is a sign:
		yes;
	if it is proffered by the spill or it is proffered by the pita or it is proffered by the piece or it is proffered by a sign:
		yes;
	no.

Brock-argument ends when Brock is not in the location.

Before inserting something into the t-inserter when Brock is in the location and the t-inserter contains something (called target):
	say "'[one of]Here, [the target] [are] in your way[or]Let me get that for you[or]Here[or]I've got that[at random].' [run paragraph on]";
	try Brock taking the target;
	if Brock is carrying the target:
		try Brock dropping the target.

Report Brock taking something:
	say "Brock fishes [the noun] out of the T-inserter. [run paragraph on]" instead.

Report Brock dropping something:
	say "He tosses [regarding the noun][them] in the corner." instead.


Rule for beat-producing when Brock is the current interlocutor:
	say "[one of]He pauses, listening for noises outside[or]He stands back, regarding the T-inserter thoughtfully[or]He runs a hand over [the random thing which is part of the t-inserter][or]He knocks on the top of the T-inserter[or]He runs his fingers over the surface of the machine, checking for hot spots[or]He cranes to look around at the back of the machine, but doesn't find anything interesting[as decreasingly likely outcomes]. [run paragraph on]".

Report Brock saying hello to the player for the first time:
	now the player knows brock-found;
	complete "Find Brock";
	assign "Test T-inserter on making creatures" at Sensitive Equipment Testing Room;
	assign "Test T-inserter on making abstracts" at Sensitive Equipment Testing Room;
	assign "Test T-inserter on situations where it could build more than one thing" at Sensitive Equipment Testing Room;
	assign "Escape the Bureau" at Abandoned Shore;
	queue weird-you-look as postponed optional instead;

First conversation-reply rule when the current interlocutor is Brock:
	[if suggest we get out of here is available:
		make no decision;]
	if the location is Cold Storage:
		make no decision;
	if Brock is not urgently eager-to-speak and Brock does not recollect what-day:
		queue what-day;
	otherwise if Brock is not urgently eager-to-speak and "Test T-inserter on making abstracts" is completed and "Test T-inserter on making creatures" is completed and "Test T-inserter on situations where it could build more than one thing" is completed:
		queue getting-out-now;
	otherwise if Brock is not urgently eager-to-speak and "Test T-inserter on making abstracts" is completed and Brock does not recollect good-abstracts and an r-abstract thing is in the T-inserter:
		casually queue good-abstracts;
	otherwise if Brock is not urgently eager-to-speak and "Test T-inserter on making creatures" is completed and Brock does not recollect seems-lifelike:
		casually queue seems-lifelike;
	otherwise if Brock is not urgently eager-to-speak and  "Test T-inserter on situations where it could build more than one thing" is completed and Brock does not recollect stability-results:
		casually queue stability-results.

The random-commentary rule is listed after the character pursues own ideas rule in the conversation-reply rules.

This is the random-commentary rule:
	if the current interlocutor is not Brock:
		make no decision;
	follow the Brock-suggestion rules.

The Brock-suggestion rules are a rulebook.

First Brock-suggestion rule:
	carry out the caching scope activity with Brock;
	if Brock-argument is not happening:
		rule succeeds;
	if the time since Brock-argument began is less than 1 minute:
		rule succeeds;
	if Brock carries the last-sign:
		say "Brock roots around in his pockets and fishes out a sign. 'I picked this up in the hallway, if it's any use,' he says. [run paragraph on]";
		try Brock dropping the last-sign;
		rule succeeds.


A Brock-suggestion rule when Brock does not recollect suggest we get out of here:
	try Brock discussing suggest we get out of here;
	rule succeeds.

A Brock-suggestion rule when Brock does not recollect test-abstracts or a random chance of 1 in 3 succeeds:
	unless "Test T-inserter on making abstracts" is completed:
		carry out the beat-producing activity;
		try Brock discussing test-abstracts;
		rule succeeds.

A Brock-suggestion rule when "Test T-inserter on making abstracts" is completed:
	if Brock does not recollect test-creatures or a random chance of 1 in 3 succeeds:
		unless "Test T-inserter on making creatures" is completed:
			carry out the beat-producing activity;
			try Brock discussing test-creatures;
			rule succeeds.

A Brock-suggestion rule when  "Test T-inserter on making abstracts" is completed and "Test T-inserter on making creatures" is completed:
	if Brock does not recollect test-stability or a random chance of 1 in 3 succeeds:
		unless "Test T-inserter on situations where it could build more than one thing" is completed:
			carry out the beat-producing activity;
			try Brock discussing test-stability;
			rule succeeds;
		otherwise:
			try Brock discussing still-cool;
			rule succeeds.

A Brock-suggestion rule when a noisy thing is enclosed by location:
	try Brock discussing interference-gelling;
	rule succeeds.

A Brock-suggestion rule when a self-object is marked-visible and Brock does not recollect surprisingly-handsome:
	try Brock discussing surprisingly-handsome;
	rule succeeds.

A Brock-suggestion rule when a fake person is marked-visible:
	if Brock does not recollect getting-crowded or the number of people in the location is greater than 3 or a random chance of 1 in 4 succeeds:
		if a random chance of 1 in 3 succeeds:
			say "[creepy stare][run paragraph on]";
		otherwise:
			say "[The random marked-visible fake person] [stare] at us. [run paragraph on]";
		try Brock discussing getting-crowded;
		rule succeeds.

A Brock-suggestion rule when a naughty-sounding thing which is not the cock-ring is marked-visible:
	if Brock does not recollect naughty-remark:
		try Brock discussing naughty-remark;
		rule succeeds.


A Brock-suggestion rule when Brock does not recollect half-a-mind:
	say "[creepy stare][run paragraph on]";
	try Brock discussing half-a-mind;
	rule succeeds.

Last Brock-suggestion rule:
	if a random chance of 1 in 3 succeeds:
		say "[creepy stare][run paragraph on]";
		say "[one of]I look away again[or]This is like a very surreal blind date[or]I take some comfort from the idea that he wouldn't hit on me if I were in my own body[or]Your boyfriend is starting to creep me out[or]If you don't mind, when I get my body back, I think I'm going to avoid him[or]I can feel us blushing[or]This is weird[stopping].".

To say creepy stare:
	if Brock recollects brock-smoochies:
		say "[one of]When he thinks we're not looking, he ogles our backside. [or]He catches us looking at him and smiles wryly. [or]I look at Brock. He looks away from us. [or]You try to give Brock what I can only describe as a lustful stare, which I manage to interrupt. I think he notices. [at random][run paragraph on]";
	otherwise:
		say "[one of]He watches us with a slightly disturbing intentness in his eyes. [or]He's looking at us, but when I look back, he cuts his eyes away. [or]He's studiously looking around the room. [or]Brock is looking at everything but us. [at random][run paragraph on]";

To say Next:
	say "[one of]First[or]Next[or]As our next trick[or]After that[or]Next[stopping]".

what-day is an NPC-directed quip.
	The reply is "Brock stands, dusting himself off. He looks us up and down without expression, without any sign of recognition. 'What day is it?' he asks.

'Still Serial Comma Day,' you say. 'Brock, it's me. And Alex, but I'm here.'

The waxen look melts and he grins. 'Thank god. It's harder than you'd expect being a rock.'"

weird-you-look is an NPC-directed quip. The reply is "'It's weird [--] you have a different face but the expressions are still yours. It's like you have a really good rubber mask on.'"

 suggest we get out of here is a performative quip. The comment is "'You've been a lump of igneous all day,' you say. 'It's getting dark out there. If we don't get out now, we're going to get caught by some janitor with a privative affixer.'".
 It mentions yourself, bureau, security.
 The reply is "'I didn't have time to run the tests I wanted to run on the T-inserter. It'll take three minutes and then we can go. We need to do abstracts, animates, and a stability check.'".
 It quip-supplies Brock.
 It is restrictive.

 insist on leaving immediately is a performative quip. The comment is "I say, 'If we get caught down here, we'll all be put on trial, my father could lose his job, the professor who helped me get in here might face prosecution...'

'Not to mention the part,' you cut in, 'where we all get stuck on a shelf to eternally contemplate the spelling of [']knickknack['].'".
 It mentions yourself, bureau, family, security.
 The reply is "'Four consonants in a row, baby,' he murmurs. 'You know what makes me hot.'

'Brock.' The warning tone in your voice gets through to him, whereas apparently he has zero interest in the welfare of my entire social circle.

'Three minutes. The value of that data could be in the millions.'".
 It quip-supplies Brock.
 It directly-follows suggest we get out of here.

 accept Brock's lunacy is a performative quip. The comment is "'I suppose it's pointless to argue,' you say. I'm glad this makes [i]you[/i] feel warm and fuzzy. 'Let's do this thing and get out.'".
 It mentions t-inserter, yourself, plans.
 The reply is "'You know it.'".
 It quip-supplies Brock.
 It directly-follows suggest we get out of here.

An availability rule for complain about Brock's recklessness:
	if Brock-argument is not happening:
		it is off-limits;
	if the time since Brock-argument began is greater than 4 minutes:
		it is off-limits;
	make no decision.

 complain about Brock's recklessness is a performative quip. The comment is "'This was rash, even for you,' you say. 'Wandering into the heart of the Bureau with no back-up and no escape plan, when we had a timed extraction to complete? You could've taken me and Slango down with you.'".
 It mentions Brock, yourself, bureau.
 The reply is "'Sweetheart, don't,' Brock says. 'Don't do this now. You're not yourself.'".
 It quip-supplies Brock.

 remind Brock that synthesis was necessary because of him is a performative quip. The comment is "'Not myself,' you repeat coldly. 'I wouldn't need to be synthesized if Andra's face hadn't been caught on film. And whose fault was [i]that[/i]?'".
 It mentions Brock, yourself.
 The reply is "Silence. 'I'm sorry that that happened,' he says, very deliberately. 'But you're not breaking up with me down here, with a spy inside your head. We'll do this later if we do it at all.'".
 It quip-supplies Brock.
 It directly-follows complain about Brock's recklessness.

 defend Alex is a performative quip. The comment is "'Alex is not a spy,' you say. 'He's naive and[--]' I make us stop talking right there, thanks very much.".
 It mentions Brock, yourself.
 The reply is "'He's us,' Brock replies. 'Come on, let's just get this over with and get out of here. We can talk this all out when we're all feeling more like ourselves, okay?'".
 It quip-supplies Brock.
 It directly-follows remind brock that  synthesis was necessary because of him.

 accept his advice is a performative quip. The comment is "'Fine.' I can feel the adrenaline from your anger coursing through us. It makes me want to take a swing at something, but you have it under control.".
 It mentions yourself.
 The reply is "'Okay[casually queue you-okay].'".
 It quip-supplies Brock.
 It directly-follows remind Brock that synthesis was necessary because of him.

An availability rule for discover why Brock got stuck here:
	if the number of quips recollected by Brock is less than 2:
		it is off-limits;
	make no decision.

An availability rule for  discover why Brock got stuck here:
	if Brock-argument is not happening:
		it is off-limits;
	if the time since Brock-argument began is greater than 4 minutes:
		it is off-limits;
	make no decision.

 discover why Brock got stuck here is a performative quip. The comment is "'How did this happen?'".
 It mentions Brock, yourself, security, bureau.
 The reply is "'How do you think? I hung back after a demonstration earlier, trying to collect the extra information I needed, but before I could finish, they'd noticed I was missing from the group and sent someone back to look for me. And better to go inanimate than to be definitely caught in human form.'".
 It quip-supplies Brock.

 rejoice that brock seems okay is a performative quip.
 The printed name is "rejoice that Brock is okay". The true-name is "rejoice that brock seems okay".
 Understand "is" as rejoice that brock seems okay.  The comment is "'That was a lot narrower than I like,' you say. To my horror, we are tearing up a little. 'I thought you might be in Cold Storage already.'".
 It mentions yourself, Brock.
 The reply is "'Hey, hey. I'm here.' He puts an arm around our shoulder, hugs uncertainly[casually queue you-okay].".
 It quip-supplies Brock.
 It is restrictive.
 It directly-follows what-day.

you-okay is a weakly-phrased NPC-directed quip.
 The reply is "'You okay?'"

Report smiling when the current quip is you-okay:
	say "[We] smile a little wistfully[casually queue weird-you-look]."

Report shrugging when the current quip is you-okay:
	say "[We] shrug. He watches us thoughtfully for a moment, then says, 'Right, okay.'"

Instead of saying yes when the current quip is you-okay:
	try discussing claim-to be fine.

 claim-to be fine is a performative quip. The comment is "'Fine,' you say. 'It's like running in a three-legged race all day, and I don't welcome the interference, but I'll be fine.'". The printed name is "claim to be fine". The true-name is "claim-to be fine".
Understand "claim" or "to" as claim-to be fine.
 It mentions yourself, Brock.
 The reply is "'Good.' He pauses. 'New you is kind of hot, but I miss the old version.'".
 It quip-supplies Brock.
 It directly-follows rejoice that brock seems okay

test-abstracts is an NPC-directed quip.
	The reply is "[one of]'[Next] we should see whether this thing can reify abstracts.'[or]'If it can't do abstracts, the market value is going to be a lot lower because of the limited-depth trees.'[or]Brock goes on about the importance of abstracts.[stopping]".

test-creatures is an NPC-directed quip.
	The reply is "[one of]'[Next] it would be good to see if this thing can build animates.'[or]'If it can't do animates, that might be down to a legal restriction, of course, rather than a technical one, but I imagine that they'd be demo'ing a fully-capable product in this context.'[or]'Have you got anything that's just a T away from being a living animal?'[or]Brock mentions again that he'd like to see whether the machine can do an animate.[stopping]".

test-stability is an NPC-directed quip.
	The reply is "[one of]'[Next] we need to look at the stabil[ization] performance,' Brock says. 'Inserters sometimes run into trouble if there's a case where the same base word could be expanded to multiple derivatives [--] for instance, if you S-inserted CREAM, it wouldn't know whether to make CREAMS or SCREAM or SCREAMS.'[or]'Some inserters,' Brock goes on, 'have controls to let you insert the minimum or maximum possible number of letters.'[or]'Of course,' he says, 'even min-max controls don't completely disambiguate, since as in the example of CREAMS and SCREAM, you might have two one-letter insertions that are possible.'[or]'What really makes a machine like this valuable is the combination of power and flexibility with control. An anagramming gun has a great deal of power but almsot no control, which is the problem with it.'[or]Brock's lecture on the technology of insertion continues.[stopping]".

good-abstracts is NPC-directed quip.
	The reply is "'[if Brock recollects test-abstracts]Right. It's good on abstracts, then[otherwise]Hm, an abstract. That was something I wanted to check[end if],' Brock says[if an r-abstract thing is in the T-inserter], contemplating [the random marked-visible thing in the T-inserter][end if][if the tattle is in the T-inserter]. 'Lord, that thing is annoying.'[otherwise].[end if]"

seems-lifelike is an NPC-directed quip.
	The reply is "'No problem creating creatures,' Brock says judiciously."

stability-results is an NPC-directed quip.
	The reply is "'The fact that it made [the list of multiply-made things] means that the stabil[ization] is inconsistent at best,' Brock says. 'And I don't see any min-max calibrator on the outside. Remind me to check the plans again when we get back to the yacht. They may not have tried to handle that problem at all.'"

still-cool is an NPC-directed quip.
	The reply is "He puts his hand on the surface of the machine. 'Still cool,' he comments. 'Must have an efficient heat-sink.'"

half-a-mind is an NPC-directed quip.
	The reply is "'I've half a mind to explore a little while we're down here just about unsupervised,' Brock says reflectively.

I glare at him.

'I know there's no time,' he says. 'But there are supposed to be all sorts of things in the Bureau sub-basement that have never seen the light of day. DCL projects that went wrong, secret government experiments, possibly a buried command cen[ter].'"

what buried command center he heard of is a weakly-phrased questioning quip. The comment is "'Buried command cen[ter]?' you ask. 'Isn't there a pretty unsecret command center above-ground?'".
 It mentions Bureau, Brock.
 The reply is "'Sure. But you hear rum[our]s that the instructions come up from the sub-basement. Their chief leader, maybe.'".
 It quip-supplies Brock.
 It directly-follows half-a-mind.


Instead of showing a self-object to Brock:
	say "'Tell me what you see,' we say. ";
	try Brock discussing surprisingly-handsome.

surprisingly-handsome is an NPC-directed quip.
	The reply is "He cocks his head to look at [the random marked-visible self-object]. 'I have surprisingly good hair for someone who has just been a rock.'

'Objects in mirror may appear more attractive than they are,' we remark."

getting-out-now is an NPC-directed quip.
	The reply is "'Check,' says Brock. 'And that's all we need here. Now...' He hesitates. 'One person escaping is easier than two, I suppose.'

You start to object, but I say, 'Yes, you'd better return to petrified form.' You know I'm right. He'll be easier to carry.

A little grimly, he produces his own letter-remover and repeats the B-removal that made him in the first place[if a fake person is marked-visible]. We're alone with [the list of marked-visible fake people][otherwise]. Once again we're alone in a room with a rock[end if]."

interference-gelling is an NPC-directed quip.
	[The reply is "'[one of]Just in case anyone out there is listening[or]Let's try to keep the noise to a minimum[or]That's more peaceful[at random].'"]

naughty-remark is an NPC-directed quip.
	The reply is "He eyes [the random naughty-sounding marked-visible thing which is not the cock-ring]. 'Oh for a homonym paddle.'"

getting-crowded is an NPC-directed quip.
	The reply is "[one of]Brock steps to the side to make room for [the list of marked-visible fake people][or]'We're going to need to install stadium seating in here,' Brock comments, nodding at [the list of marked-visible fake people][or]'If any guards come, we can use [the random marked-visible fake person] as a decoy,' Brock remarks[at random]."

After Brock discussing interference-gelling:
	let interference be a random noisy thing enclosed by the location;
	say "[if the prior named object is Brock]He[otherwise]Brock[end if] touches some gel to [the interference]. '[one of]Just in case someone out there is listening[or]In the spirit of keeping the peace[at random].' [run paragraph on]";
	gel-convert the interference;

Report Brock discussing getting-out-now:
	move Brock to the repository;
	now the rock is not proffered by anything;
	now the rock is proffered by Brock;
	reset the interlocutor;
	record "profiling the T-inserter" as achieved;
	move the rock to the location.

Instead of putting gel on something which is proffered by Brock when Brock recollects getting-out-now and the location is not Cold Storage:
	say "Brock seems to have learned all he wants to know at the moment."

Sanity-check touching or squeezing or rubbing Brock:
	try kissing Brock instead.

Instead of asking Brock to try kissing the player:
	try kissing Brock.

Instead of kissing Brock:
	if Brock does not recollect Brock-smoochies:
		try discussing Brock-smoochies;
	otherwise:
		say "That is not happening again."

Brock-smoochies is an unlisted questioning quip.
	The printed name is "ask Brock to kiss you".
	The comment is "You put our arms around Brock. He looks surprised, then pulls us in."
	The reply is "'I thought we would leave this kind of thing until you were gelled,' Brock comments after a moment, pushing a bit of [if the player is wearing the wig or the player is wearing the hairpiece]fake [end if]hair out of our eyes. 'Does your passenger not mind?'

I mind, for the record. I totally mind. And the fact that this body is enthusiastic about kissing Brock just makes it weirder.

He reads the expressions crossing our face and lets go. 'Come to think of it, maybe [i]I[/i] mind.'

An awkward pause."
	It quip-supplies Brock.

Test kpbug with "tutorial off / talk to girl / topics" in dormitory room.

Rule for listing peripheral quips during Brock-argument:
	if a quip is peripheral:
		prepare a list of peripheral quips;
		say "[quip-suggestion-phrase][the prepared list delimited in disjunctive style][get-to-work]."

Rule for listing plausible quips during Brock-argument:
	if a quip is plausible:
		prepare a list of plausible quips;
		say "[quip-suggestion-phrase][the prepared list delimited in disjunctive style][get-to-work]."

To say get-to-work:
	say "[one of]. Then again, we could just get to work so we can be out of here faster[or]. Maybe it's not worth it, though[or]. Or, then again, there's always finishing the job[stopping]".

Test Brockscene with "tutorial off / autoupgrade / unmonkey / open tub /  gel rock / suggest we get out / insist / ask about buried command / wave g-remover at sign / put sin in the t-inserter / gel stint / wave g-remover at sign / wave s-remover at sin / i / put sin in t-inserter / wave s-remover at stint / wave n-remover at tint / wave t-remover at tit / put i in t-inserter / wave t-remover at tit / put i in t-inserter / get rock / i" holding the tub in the Equipment Testing.

[TODO: fix test]
Table of Ultratests (continued)
topic	stuff	setting
"Misdirection"	{ tub, apple, roll of bills, piece }	Bureau Secret Section
"BrockAlt"	{ tub, seer automaton, chard, roll }	Equipment Testing

Test Misdirection with "tutorial off / autoupgrade /unmonkey / sw / n / w / e / open tub / gel rock / e" [holding the tub and the apple and the roll of bills and the piece in Bureau Secret Section.]

Test BrockAlt with "tutorial off / autoupgrade / unmonkey / open tub /  gel rock / put seer in t-inserter / x automaton / turn on automaton / gel automaton / put seer in t-inserter / x automaton / turn on automaton/ x automaton / put the roll in the t-inserter / gel the troll / wave d-remover at chard / put char in t-inserter / wave c-remover at chart / wave r-remover at hart / get hat / x hat / wear hat / remove hat / put hat in t-inserter" [holding the tub and the seer automaton and the chard and the roll in the Equipment Testing.]

 Instead of putting gel on the rock when Brock-argument has happened and Brock-argument has ended and Cold Dilemma has not happened:
	say "No, we leave him in rock form for now. One of us will have an easier time slipping out than two."




Section 9 - Mother

[ Mother has only this one brief scene, but she's an important influence in Alex's life: a source of cosmopolitan and slightly subversive ideas, more in touch with the world outside than Alex's father, and source of the unquestioned privilege of his upbringing. ]

My mother is a woman.
Understand "mom" or "ma" or "mum" or "mommy" as mother.
The initial appearance is "My mother is here, looking around as though she would like to comment on my housekeeping."
The description of my mother is "She is a tall woman with short brown hair expertly cut, and a tailored suit."
The introduction is "She has in addition a certain air which is very rare on this island: the air of seeming not to care whether anyone is watching her, or whether she is exhibiting the proper respect for authority."

Sanity-check kissing my mother:
	say "Save the skeezy Oedipal reenactments for when you're inhabiting your own body, eh?" instead.

Instead of waiting in the presence of my mother:
	say "[beat][line break][paragraph break]".

Definition: a thing is apartmental if it is in my apartment.

Rule for beat-producing when the current interlocutor is my mother:
	carry out the caching scope activity with my mother;
	say run paragraph on;
	let N be a random refrigerator which is in my apartment;
	if the player wears the monocle and the player does not recollect monocle-comment:
		try my mother examining the monocle;
		casually queue monocle-comment;
	otherwise if the N is open:
		try my mother closing N;
	otherwise if the pot-of-yogurt is not seen:
		try my mother opening N;
	otherwise if something (called impediment) is on the futon:
		try my mother clearing the futon;
	otherwise if my mother carries something (called impediment):
		let goal be a random furniture counter which is in my apartment;
		try my mother dumping inventory on the goal;
	otherwise if a switched on thing (called danger) is marked-visible:
		try my mother switching off the danger;
	otherwise:
		let target be a random apartmental thing which is not a person ;
		if target is something:
			try my mother examining the target;
		else:
			say "Mother looks faintly bewildered.";
	carry out the caching scope activity with the player;
	say run paragraph on.

[TODO: fix test]
Table of Ultratests (continued)
topic	stuff	setting
"mom-beats"	{ my mother, backpack }	my apartment

Test mom-beats with "drop mother / open backpack / say we're / z / close backpack / z / z / z" [holding my mother and the backpack in my apartment.]

Report my mother switching off something:
	if the noun is a switch which is part of a stove:
		casually queue no-open-flame;
	if the noun is a tap which is part of a sink:
		casually queue no-water-waste;
	say "She goes to [the noun] and turns it off.[run paragraph on]" instead.

Dumping inventory on is an action applying to one thing.

The dumped objects is a list of objects that varies;

Setting action variables for an actor dumping inventory on something:
	truncate the dumped objects to 0 entries;
	repeat with item running through things carried by the actor:
		add the item to the dumped objects.

Carry out an actor dumping inventory on:
	now everything carried by the actor is on the noun.

Report an actor dumping inventory on:
	say "[The actor] puts [the dumped objects with definite articles] down on [the noun]."

Report my mother dumping inventory on:
	say "[The actor] puts [the dumped objects with definite articles] down on [the noun].[run paragraph on]" instead.

Clearing is an action applying to one thing.

The cleared objects is a list of objects that varies.

Setting action variables for an actor clearing something:
	truncate the cleared objects to 0 entries;
	repeat with item running through things on the noun:
		add the item to the cleared objects.

Carry out an actor clearing:
	now the actor carries everything which is on the noun;

Report an actor clearing:
	say "[The actor] [pick] up [the cleared objects with definite articles] carefully."

Report my mother clearing:
	say "[The actor] [pick] up [the cleared objects with definite articles] from [the noun].[run paragraph on]" instead.

Report my mother opening a refrigerator:
	say "Mother picks her way to the refrigerator, which she opens, revealing only [a list of things *in the noun][queue not-planning-dinner].[run paragraph on]" instead.

Report my mother closing a refrigerator:
	say "She gives the refrigerator door a little push and it swings closed.[run paragraph on]" instead.

Report my mother taking a book:
	say "Mother rather absently picks up [the noun] and smooths its pages.[run paragraph on]" instead.

Report my mother examining a book which is not enclosed by the player:
	say "Mother pages through [the noun], eyebrows raised.[run paragraph on]" instead.

Report my mother examining something:
	say "Mother [one of]stares absently at [the noun] for a moment[or]spaces out a bit, contemplating [the noun][or]appears to be meditating about [the noun][at random].[run paragraph on]" instead.

Sanity-check going from My Apartment when confrontation-with-mother has not happened:
	move my mother to the location instead.

Sanity-check going from My Apartment during confrontation-with-mother:
	say "I don't quite dare just walk out on Mother. Partly it's habit, partly the sense that she's more upset than she's letting on, and that if we push her the wrong way she'll contact the authorities."

Confrontation-with-mother is a scene. Confrontation-with-mother begins when my mother is in the location.

When confrontation-with-mother begins:
	say "We're about to, when the door to the street opens and my mother walks into the room. She shuts it behind her and puts away her key before she notices us. Then she stands very still. For about a quarter second she considers calling the police, but I can see that worry passing away again as she takes in our clothing, age, and general demean[our].";
	set the current interlocutor to my mother;
	try my mother discussing hi-there-Im;
	queue final-goodbye as postponed obligatory.

hi-there-Im is an NPC-directed quip.
	The reply is "'Hi there,' she says, coming forward to take our hand. 'I'm [Mrs] Rosehip. Alex Rosehip's mother. You must be a friend of his?'"
	The nag is "Mother just stands there with an arched eyebrow. Any minute now I'm going to blurt something out through sheer force of habit."
	It is restrictive.

Instead of saying no when we're his girlfriend is available:
	say "What are the other options, really? Shall we claim to be burgling my apartment? To be a roommate she's never heard of, who is living with furniture that obviously isn't here? To be the gas man, a fire inspector, the police? None of that has a hope of working."

Instead of saying yes when we're his girlfriend is available:
	try discussing we're his girlfriend.

 we're his girlfriend is an informative quip. The comment is "'Yes [--] sort of. We've been... I mean, we've been on a few dates.' That's you, and I have to say you don't sound as keen on dating ourself as you might.".
 Understand "we are" or "to be" as we're his girlfriend.
 It mentions romance, yourself.
 The reply is "She raises her eyebrows. 'I see. How secretive of him not to bring you around. And where is Alex now? I need to speak with him. He's been hard to reach lately[queue how-well-do-you as immediate obligatory].'

I know you think it's a bit sketchy that my mother just walks into my apartment when I'm not around, but I swear to you she's never done that before. She must be more worried about something than she's letting on.".
 It quip-supplies My mother.
 It is restrictive.
 The nag is "[one of]'Come, dear, it's not a difficult question,' she says[or]She's still waiting for us to answer[stopping]."
 It directly-follows hi-there-Im.

 claim to hath seen him this morning is a performative quip.
 The printed name is "claim to have seen him this morning". The true-name is "claim to hath seen him this morning".
 Understand "have" as claim to hath seen him this morning.  The comment is "'He went out to, ah, do some research, I think. He left before I was completely awake.' (Thanks, now you've given my mother the impression that I'm a cad.)".
 It mentions romance.
 The reply is "She looks at the dissheveled futon[if the futon is non-empty], with [the list of things *in the futon] still arranged on it[end if], and her expression becomes even more unreadable. 'I did think I'd taught my son better manners,' she remarks. 'I apolog[ize] on his behalf.'".
 It quip-supplies My mother.
 It directly-follows we're his girlfriend.

Instead of shrugging when we don't ken is available:
	try discussing we don't ken.

we don't ken is an informative quip.
 The printed name is "we don't know". The true-name is "we don't ken".
 Understand "know" as we don't ken.  The comment is "'I don't know,' we say.".
 It mentions yourself.
 The reply is "'A communicative couple, then,' she says dryly. My mother has never been very nice to girlfriends she considered stupid.".
 It quip-supplies My mother.
 It directly-follows we're his girlfriend.

how-well-do-you is an NPC-directed quip.
	The reply is "'How well do you know him?' Mother asks. She immediately catches herself, and adds: 'I'm not inquiring into the details of your relationship. But I am concerned about him. He has seemed very unhappy recently about his work. Has he said anything to you about that? Wanting to leave the program, or change careers, or... anything?' [paragraph break]I didn't think she'd noticed."

 reassure Mother is a performative quip. The comment is "'I think it's graduate school getting to him a bit,' we lie. I am pretty sure this is what my mother thinks: she has little time for whining or sulking, and I believe she considers any ideological queasiness I may have exhibited to be just malingering about research that is not going well.".
 It mentions yourself, education.
 The reply is "'Really?' she says. 'Hm.' [paragraph break]I would like her to go on, but she doesn't: because it would be indiscreet, because she doesn't trust us.".
 It quip-supplies my mother.
 It directly-follows how-well-do-you.

suggest the truth is a performative quip. The comment is "'I think he feels that there are things linguistic studies could accomplish if we were less hampered by local laws and corporate interests,' we say. 'Big improvements to quality of life for the poor, for instance.'".
 It mentions constructed language.
 The reply is "She looks at us keenly. 'Did he say what he intended to do about that?'".
 It quip-supplies my mother.
 It is restrictive.
 It directly-follows how-well-do-you.

we wouldn't do anything dangerous is an informative quip.
Understand "danger" as we wouldn't do anything dangerous.
The comment is "'I'm sure he wouldn't do anything dangerous,' we lie. 'After all, his ideas wouldn't be useful to anyone if he were arrested.'".
 It mentions bureau, yourself.
 The reply is "'No, of course!' But I think she knows we're lying about something, even if she is not sure what that something is.".
 It quip-supplies my mother.
 It directly-follows suggest the truth.

Instead of saying no when probably nothing is available:
	try discussing probably nothing.

probably nothing is an unlisted weakly-phrased informative quip. The comment is "'No, no. Probably nothing,' we say.".
 It mentions yourself.
 The reply is "'Hm.'".
 It quip-supplies my mother.
 It directly-follows suggest the truth

not-planning-dinner is an NPC-directed quip.
	The reply is "'Evidently not planning to have dinner at home this evening,' she comments."

Instead of saying no or saying yes when explain we might go out is available:
	try discussing explain we might go out.

 explain we might go out is a performative quip. The comment is "'We were thinking of going out.'".
 It mentions food, yourself.
 The reply is "'Were you?' she says lightly. 'Then you're definitely going to see him this evening. Where do you have reservations?' [paragraph break]There, see: I wish you wouldn't embellish on your own.".
 It quip-supplies my mother.
 It is restrictive.
 It directly-follows not-planning-dinner.

Instead of shrugging when  claim he didn't say  is available:
	try discussing  claim he didn't say .

 claim he didn't say is a weakly-phrased performative quip. The comment is "'Er... he didn't tell me. I assume he'll explain later.'".
Understand "did" or "not" or "alex" as claim he didn't say.
 It mentions food.
 The reply is "'...Mm.'".
 It quip-supplies my mother.
 It directly-follows explain we might go out.

monocle-comment is an NPC-directed quip.
	The reply is "'He must like you,' she says, 'if he lets you wear his monocle. He's very proud of that. But do be careful with it [--] it would be a little embarrassing if someone were to catch you with it. Alex's father was technically not supposed to remove it from the Bureau.'"

 agree to take care of the monocle is a weakly-phrased performative quip. The comment is "'I'll be very careful with it.'".
 It mentions monocle.
 The reply is "'I knew you would.'".
 It quip-supplies my mother.
 It directly-follows monocle-comment

no-open-flame is an NPC-directed quip.
	The reply is "'It's not a good idea leaving the gas stove on when you're not cooking anything,' she comments. 'It catches fire even more easily than electric.'"

no-water-waste is an NPC-directed quip.
	The reply is "'There's no point in wasting water when we're already facing shortages.'"

final-goodbye is an NPC-directed quip.
	The reply is "'Well,' Mother says. 'I had better go. If you do see Alex, tell him to call me, please. It isn't an emergency, but you can tell him there's a bit of Bureau business I'd like to discuss with him.'"

Confrontation-with-mother ends when my mother recollects final-goodbye.

When confrontation-with-mother ends:
	say "We nod";
	if my mother carries something:
		say ". [run paragraph on]";
		let goal be a random furniture counter in my apartment;
		try my mother dumping inventory on goal;
		say " She's going,";
	otherwise:
		say ",";
	say " and suddenly it is borne in on me that this may be the last I see of my mother in a lifetime: and I'm trying to memor[ize] the exact cut of her hair and the way her expensive Italian heels tap on the floor, and meanwhile she is going out completely indifferent to the moment. I could have stood for our previous meeting to be the last one [--] we had dinner and she hugged me goodbye then. This makes it all much much worse.

And you, you're nattering at me in our head, asking what she meant about the Bureau. It might be, I guess, that they've been watching me and that she got wind of it. That would be likely. But if so it doesn't matter, not any more.

She's not even visible through the window any longer.";
	now my mother is nowhere;

Section 10 - Father

After going from the Sensitive Equipment Testing Room:
	set the current interlocutor to father;
	continue the action.

Confrontation-with-father is a scene. Confrontation-with-father begins when the current interlocutor is father.

Instead of going somewhere during confrontation-with-father:
	say "I can't walk away on him. Not until I know what he means to do."

When confrontation-with-father begins:
	move father to the location;
	try father discussing hey-alex;
	queue dont-say as postponed obligatory;
	queue what-are-you as postponed obligatory;
	queue new-friends as postponed obligatory;
	queue almost-dad-goodbye as postponed obligatory;
	queue final-dad-goodbye as postponed obligatory;

Confrontation-with-father ends when the player recollects final-dad-goodbye.

When confrontation-with-father ends:
	try approaching cold storage.

Father is a man.
The initial appearance is "My father stands a few feet away, his posture oddly askew, as though the situation takes him aback so much that he can't stand up straight. His arms are crossed over his chest. Through your eyes, he looks older than he is."
The indefinite article is "my".
The description is "He's in his mid-fifties, tall, thin but not excessively so. His hair is going white at the temples. His manner has always been mild and unimposing, but he is actually a capable manager, and more highly placed in the Bureau than he likes to let on.

Right now he looks both exhausted and fiery, as though he's been called up for a difficult and possibly fatal duty."

Instead of kissing father:
	say "That is a super-creepy idea."

Rule for beat-producing when the current interlocutor is father:
	say "[one of]Somewhere down the hall a clock ticks loudly[or]No one speaks for a moment. The silence is almost eerie[or]Footsteps sound far away down the hall, but no one comes this way[or]We all say nothing for a moment[or]We stare at each other, breathing hard[at random].[run paragraph on]";

hey-Alex is an NPC-directed quip.
	The reply is "'Alex.' [paragraph break]I can't help it: I stop and turn. It's too ingrained in me. And it's my father's voice.

He's wearing his ordinary work clothes, but he looks strained to the point of fracture. And someone could come out of any of these doors at any moment."

 deny everything is a performative quip. The comment is "'You must have me confused with someone else.'".
 It mentions yourself.
 The reply is "He sighs. Not deceived even a little; weary that we tried.".
 It quip-supplies father.
 It directly-follows dont-say.

dont-say is an NPC-directed quip.
	The reply is "'Your mother told me about meeting your supposed girlfriend at your apartment. She was puzzled by that, but I knew what must have happened,' my father says, in a very low voice[if a noisy thing is enclosed by the location], just barely audible to us over the sound of [the random noisy thing enclosed by the location][end if]. 'I deleted the record of your unauthor[ize]d synthes[ize]r draining the power grid, which, by the way, could get me dismissed.'"

what-are-you is an NPC-directed quip.
	The reply is "'I didn't tell your mother what I suspected, but when it comes out you've… defected… I won't be able to keep this from her. And you're giving up your career. Mine too, possibly; we'll all be under suspicion, I suppose.

'It's pointless. You could have done a great deal for the Bureau from within. I was trying to help you see that.'"

lay out our reasons is a performative quip. The comment is "'I want to do something that matters,' I say. 'I don't see my work making a speck of difference here.'".
 It mentions immigration, yourself.
 The reply is "'You mean you don't see [i]my[/i] work as important,' he says. 'Got that from your mother, I imagine.'".
 It quip-supplies father.
 It directly-follows what-are-you.

Instead of saying no when be comforting is available:
	try discussing be comforting.

Instead of saying sorry when be comforting is available:
	try discussing be comforting.

be comforting is a weakly-phrased performative quip. Understand "comfort" as be comforting. The comment is "'It did matter to me that you tried to help,' we say. 'But no one here is ever going to try my solution. I have to leave if I want to, well, to take my shot at saving the world, essentially.'".
 It mentions yourself, research.
 The reply is "'That's not—' He bangs his fist into the wall and pulls it away with a wince. 'That's not how it works. Jesus. Saving the world is boring and incremental and institutional. I mean, it will be for you too — if you want to do your crazy project the first thing you're going to need to do is spend hours in meetings with NGOs.'".
 It quip-supplies Father.
 It directly-follows what-are-you

new-friends is an NPC-directed quip.
	The reply is "'So your partners in crime are, what, smugglers? Industrial saboteurs? That's wonderful. Finally some [i]role models[/i].'"

 quibble is a weakly-phrased performative quip. The comment is "'We prefer to think of it as ensuring that important technology does not remain the sole property of a restrictive hegemony,' we say. ".
 It mentions yourself.
 The reply is "'Okay, around here we still call that theft,' Father says.".
 It quip-supplies father.
 It directly-follows new-friends.

 deny being a spy is a weakly-phrased performative quip. The comment is "'The law doesn't work unless it's got a few human beings outside of it,' you say [--] drawing on one of Slango's sayings. 'Every tyranny creates its own balancing force.'".
 It mentions yourself.
 The reply is "Father's expression goes extremely dry. 'Oh, yes, we tried that theory around here too. I regret to give away the ending, but it's a risky idea.'".
 It quip-supplies father.
 It directly-follows new-friends.

almost-dad-goodbye is an NPC-directed quip.
	The reply is "'You've left enough traces that people will know someone came in here today.'"

final-dad-goodbye is an NPC-directed quip.
	The reply is "'Here's what we're going to do, Alex. You're going in there[--]' (he points at a door to the southwest) '[--]and I'm going to call for backup to arrest the first person that comes out. That could be Alex, it could be whoever-else-you-are, it could be both of you in this same body.

'If it is Alex who comes back out, I can't possibly save your university career, but we might be able to make a case for clemency.' What he means by that[--] oh. Yes. I understand now.

He gives us a hard shove. We're half inside the room when we hear his last remark:

'Alex... don't try to escape back through the Rotunda. If you really can't come home, then head north. I've never seen it, but supposedly there's an emergency exit up there.'

Then he's gone."

Report shrugging during Confrontation-with-father:
	say "[one of][We] shrug. It feels like being a teenager again[or]Another shrug. I wish he'd stop talking[stopping]." instead.

Report smiling during Confrontation-with-father:
	say "[We] try for a placating smile. It doesn't seem to help." instead.

Report crying during Confrontation-with-father:
	say "Okay, maybe my eyes are a little wet, but you didn't need to point it out." instead.

Report laughing during Confrontation-with-father:
	say "[one of]You laugh. The sound is out of place, and it makes me uncomfortable. Father, too, to judge by his expression[or]'Ha,' you say[stopping]." instead.

Report scoffing during Confrontation-with-father:
	say "[one of][We] roll our eyes[or]'Tch,' [we] say[at random]." instead.

Test father with "test Brockscene / get rock / e / shrug / g / g / g / g".

Section 11 - Nexami

Carry out waving a letter-remover at the spill creating something in the presence of Nexami:
	queue nice-clean-up as immediate optional.

nice-clean-up is an NPC-directed quip.
	The reply is "'Nice clean-up method,' [Nexami] comments. 'Beats using a rag.' At least, I think that's what he said."

say thanks for pointing out  spill is a performative quip. The comment is "'Hey, thanks.'".
 It mentions spill.
 The reply is "He makes a you're-welcome gesture and goes back to contemplating the sea view.".
 It quip-supplies Nexami Engeo.


 that it's one of those things atlanteans learn is an informative quip. The comment is "'I'm afraid you wouldn't be impressed if you were from around here,' we say. 'It's one of those things most Atlanteans learn early. Main reason why paper towels don't have much of a market here.'".
 It mentions spill.
 The reply is "'Hm!' Not the most talkative tourist ever, is he?".
 It quip-supplies Nexami Engeo.
 It directly-follows nice-clean-up.

what-atlantis is a questioning quip.
 The printed name is "what he is doing in Atlantis". The true-name is "what-atlantis".
 Understand "what" or "he" or "nexami" or "engeo" or "is" or "doing" or "Atlantis" or "in Atlantis" as what-atlantis.  The comment is "'So, what are you doing in Atlantis?'".
 It mentions Nexami.
 The reply is "'Doing a show tonight,' he says. 'Up on the City Walls.' This is only partly a lie: you know that his main business in town is some sort of computer science contract, and that it's largely cover that his band is playing in the Serial Comma Day festivities.".
 It quip-supplies Nexami Engeo.

Section 12 - The Mean Atlantida

The greeting of atlantida-woman is "'I suppose we were bound to meet in person sooner or later,' Atlantida remarks."

Atlantida chat is a scene. Atlantida chat begins when atlantida-woman is in the location. Atlantida chat ends when atlantida-woman is in the repository.

When Atlantida chat ends:
	now the atlantida-woman is nowhere;
	move the atlantida-refreshed to the repository.

After examining Atlantida-woman when the Atlantida-woman carries something:
	say "Atlantida is carrying [the list of not worn things *in the Atlantida-woman]."

Rule for writing a topic sentence about the infertile astrologer:
	say "[The infertile astrologer] is [one of]idly [or][at random]";
	let toy be a random mentionable thing;
	if toy is:
		-- the stack of files:
			say "sifting through [the toy]";
		-- the rubber stamp:
			say "pressing [the toy] into a few documents";
		-- the inlaid desk:
			say "admiring the craftsmanship of [the toy]";
		-- otherwise:
			say "[one of]check out[or]examining[or]toying with[at random] [the toy]";
	say ". Her wanderings are gradually moving her closer to us. ";

A description-concealing rule:
	if Atlantida chat is not happening:
		now Atlantida-woman is not marked for listing;
		now restoration-gel rifle is not marked for listing.

Rule for writing a topic sentence about Atlantida-woman:
	say "[Atlantida-woman] stands between us and the eastern exit, backlit by sunlight[if the player is gelled and atlantida-woman carries the rifle]. [The rifle] hangs loose in her hand[otherwise if the player is not gelled and the atlantida-woman carries the rifle]. She has [the rifle] trained on our torso[end if]. ";
	if Atlantida-woman does not carry the restoration-gel rifle:
		say "She dwarfs [the inlaid desk] and all the other furnishings in the room. ";
		now the inlaid desk is mentioned;
		now the stack of files is mentioned;
		now the rubber stamp is mentioned.

Rule for listing exits while looking in Personal Apartment when atlantida-woman is in the location:
		do nothing instead.


Atlantida-patience is a number that varies.

After doing something when the location is Personal Apartment and Personal Apartment is visited and atlantida chat has not happened:
	increase atlantida-patience by 1;
	if atlantida-patience is greater than 1:
		move atlantida-woman to the location.

[atlantida-woman carries the restoration-gel rifle.]

Rule for beat-producing when atlantida-woman is the current interlocutor and atlantida-woman does not recollect gel-shot:
	say "Her grip tightens on the [restoration-gel rifle].[run paragraph on]"

When Atlantida chat begins:
	[move atlantida-woman to the location;]
	pause the game;
	set the current interlocutor to atlantida-woman;
	queue stop-there as immediate obligatory;
	queue gel-shot as postponed obligatory;
	[queue how fusion happens as postponed obligatory;]
	queue thing-about-democracy as postponed obligatory;
	queue summoning-guards as postponed obligatory;

Report taking something which is proffered by the restoration-gel rifle when atlantida chat is happening:
	say "We sidle over and casually pick up [the noun] as though we were just curious. Or maybe had an insatiable urge to tidy up." instead.

stop-there is an NPC-directed quip.
	The reply is "'Don't move, Alexandra, or I'll split you in two.'

A very tall woman with Bureau-blue eyes steps into the room from the east, carrying [a restoration-gel rifle]. Her face is ageless, her mouth full-lipped but proud. We've never met, but [we] recognize her at once[if the player wears the monocle]. The monocle sees her as a fake, a fossilized shellfish[end if].

[Atlantida-woman] moves the rifle a fraction and fires through the portcullis at [the random thing on the pulley]. [pulley-fall]".
	It quip-supplies atlantida-woman.

To say pulley-fall:
	let target be a random thing on the pulley;
	gel-convert the target;
	follow the portcullis empty rule;
	follow the portcullis fall rule;
	say "[run paragraph on]".

Before shooting the restoration-gel rifle with the anagramming gun when the player is not gelled:
	say "She sees us moving the gun into position, and our reflexes are slower than hers." instead.


gel-shot is an NPC-directed quip.
	The reply is "She fires again. The pellet hits us, cold and hard, in the shoulder. It stings like hell and for a moment I think our clavicle is broken. [We] put our hand over the wounded spot.

Our hand.

Atlantida lowers the rifle, surprised. 'Fused,' she says. 'Isn't that interesting. And so recently, too. If the gel rifle won't separate you, nothing will.' She smiles, not warmly. 'Pity. You would have been easier to deal with separately. Cold Storage for Andra, house arrest for Alex.'"
	It quip-supplies atlantida-woman.

summoning-guards is an NPC-directed quip.
	The reply is "[if the restoration-gel rifle is enclosed by location and the restoration-gel rifle is not carried by Atlantida-woman]Atlantida real[ize]s that [the restoration-gel rifle] is now a couple of me[ter]s away from her. [otherwise]'And now it's time for you to go,' Atlantida says. [end if]

She presses a button on something in her hand. Far away, a high-pitched bell rings.

'Did you have anything else you wanted to ask me? I so rarely get to talk with ordinary citizens. Only ones with clearance, and those about to go into Cold Storage. A last interview with Saint Peter.'"

Instead of saying yes when the player carries the restoration-gel rifle and the current quip is summoning-guards:
	say "'Oh, I have lots of questions,' [we] say.";
	try shooting atlantida with the restoration-gel rifle.

Instead of saying no when the player carries the restoration-gel rifle and the current quip is summoning-guards:
	say "'Not really,' [we] say.";
	try shooting atlantida with the restoration-gel rifle.

not-long-now is an NPC-directed quip.
	The reply is "'I see,' says Atlantida. 'You have the rifle. Clever, but do think. You might do some damage with that thing, but you won't escape. So why hurt anyone unnecessarily?'"

Waiting for guards is a scene. Waiting for guards begins when atlantida-woman recollects summoning-guards.

Waiting for guards ends in capture when the time since waiting for guards began is 2 minutes.

Report waiting during waiting for guards:
	say "[one of]I don't think we have much time left[or]Time is slipping past, time when we could be doing something[or]It can't be much longer now[at random]." instead.

Waiting for guards ends in diversion when atlantida-woman is not in location.

When waiting for guards ends in capture:
	say "There are noises in the next room, and a moment later a couple of All-Purpose Officers burst into the room, gel rifles and real rifles drawn.

'You're slow,' Atlantida says, seating herself on the ridiculous bed. 'I thought we had trained for this eventuality.'

The officer nearest the door turns red. 'This has been a busy day, madam,' he says. As though she were a queen.";
	end the story saying "We have been caught".

Before shooting the atlantida-woman with the rifle:
	if the player is not carrying the rifle:
		try taking the rifle;
	say "Her eyes follow the gesture. 'Don't you dare, you little traitor,' she says. 'I have been your mother, your father, your waking up and your going to sleep, your teachers and your lovers and your friends. I am the integrity of this island. Change me and you change Atlantis forever.'

'Maybe it's time,' I say. 'Maybe part of the business of democracy is having the arguments[--]'

You don't let me finish. [run paragraph on]"


Instead of showing something to Atlantida-woman:
	say "You know better than to give away any unnecessary information, any advantage."

Rule for quip-introducing how fusion happens:
	say "Fused? We should be two pieces by now. Maybe she has an explanation? But you seem to be focused on her gun hand. How can you be so calm?";
	strip how fusion happens from the table.

how fusion happens is a questioning quip. The comment is "'Fused?' [we] repeat.".
It mentions yourself.
The reply is "'Sometimes a synthetic person gets broken,' Atlantida says. 'Forced into a choice [if the story viewpoint is second person singular]he[otherwise]she[end if] would never have made on [if the story viewpoint is second person singular]his[otherwise]her[end if] own. Impossible to separate because you aren't two whole people any more.'".
It quip-supplies Atlantida-woman.
It directly-follows gel-shot.
Understand "fused" or "what has happened" or "what happened" or "happened" or "chance" or "explanation" or "separation" or "us" or "ourselves" or "stuck" or "gel rifle" as how fusion happens.

thing-about-democracy is an NPC-directed quip.
	The reply is "Atlantida smiles with half a mouth. 'You've arrived on a difficult day. In the ordinary course of things, I keep things quiet: the spirit of democracy, but none of the sordid wrangling and bribes and corruption and compromise. It's only when the spirit of the island itself is threatened, that we have to resort to such extreme measures[casually queue more-about-democracy][if the infertile astrologer is marked-visible].'

The infertile astrologer sidles closer to us, smiling and making hand signs that I think are supposed to represent Aries. Old bat.[otherwise].'[end if]"

After examining the infertile astrologer when Atlantida-woman does not recollect thing-about-democracy:
	say "She's investigating the room and muttering to herself, but Atlantida seems to be ignoring her for the most part. She'll have worked her way over by us soon."

After examining the infertile astrologer when Atlantida-woman recollects thing-about-democracy:
	say "She's standing within arm's reach now."

Instead of putting restoration gel on the infertile astrologer when Atlantida-woman does not recollect thing-about-democracy:
	say "The astrologer is still a little too far away to reach. She's moving towards us, though. If we wait, perhaps..."

more-about-democracy is an NPC-directed quip.
	The reply is "'Do you think the protesters would feel happier if there had been a citizen referendum where their position had been voted down? The outcome would have been just the same, but they would feel much more responsible for it; surely an unpleasant position for them to be in, considering their moral objections.'"


whether the protesters feel the same way is a questioning quip. The comment is "'What about the protesters?' [we] ask. 'They don't like your policy. Are you sure you're really representing the spirit of Atlantis, or have you gone some other way of your own?'".
 It mentions security, bureau.
 The reply is "Atlantida shrugs off our question. 'A vocal minority. Most people are content to keep what they have. Imagine the chaos if everyone had free access to the Bureau's complete range of letter tools, and if there were no laws about how to use them[casually queue more-about-democracy].'".
 It quip-supplies Atlantida-woman.
 It directly-follows thing-about-democracy.
Understand "if" as whether the protesters feel the same way.

Carry out Atlantida-woman discussing gel-shot:
	now the player is gelled.

Carry out taking the anagramming gun: [Once we've decided we need it, we need to keep carrying it]
	now the anagramming gun is essential.

Before putting restoration gel on the infertile astrologer:
	if Atlantida-woman does not recollect summoning-guards:
		queue summoning-guards as immediate obligatory;
	otherwise:
		queue not-long-now as immediate obligatory.

Instead of throwing the tub at the Atlantida-woman:
	say "We fling the tub at her. Unfortunately, the gel is sticky enough that it doesn't, as I had sort of hoped, spill out all over her. She dodges, then hurls it back at us [--] and she has better aim[casually queue anti-gel comment]."

Instead of going somewhere in the presence of Atlantida-woman:
	say "'I don't think so,' says Atlantida. As she's physically about twice our mass, I think she'll win this one."

Every turn when atlantida-woman is carrying something (called target) which is not the restoration-gel rifle:
	try Atlantida-woman dropping the target.

Report atlantida-woman dropping the infertile astrologer:
	say "The infertile astrologer falls awkwardly to earth and looks around in confusion[casually queue cutting-remark]." instead.

cutting-remark is an NPC-directed quip.
	The reply is "'Oh, bravo,' says Atlantida. 'Could you possibly have made a less useful ally?'"


Before putting restoration gel on Atlantida-woman:
	say "[We] dab a bit on our finger and approach, but she is far too large, far too spry. She catches our wrist and forces us aside, until the gel is harmlessly absorbed into our own skin[casually queue anti-gel comment]." instead.

anti-gel comment is an NPC-directed quip.
	The reply is "'Oh, no, my dear,' Atlantida says. 'They could remake me, but it wouldn't be the [i]same[/i] me, would it? It would be some new construct. The Atlantida of today. And that's not the way to a consistent policy, is it?'"

Check shooting Atlantida-woman with the anagramming gun:
	casually queue anti-anagram comment.

anti-anagram comment is an NPC-directed quip.
	The reply is "'I'm not so vulnerable,' she remarks. 'They chose my name carefully.'"

that the outside world matters is an unlisted informative quip. The comment is "'We have important things to do in the outside world. Atlantis can't keep all of its power to itself.'".
 It mentions yourself.
 The reply is "'And do you know what would happen if Atlantean power were to spread beyond our borders? The rest of the world would become just like us. The incentive to wipe out every diversity, every variation of language would be too great.'".
 It quip-supplies Atlantida-woman.

how she justifies cold storage is an unlisted questioning quip. The comment is "'How do you excuse putting people in Cold Storage? It's a human rights violation.'".
 It mentions crime, legislation.
 The reply is "Atlantida makes a motion as though brushing away an insect. 'The laws of Atlantis are special. They keep us strong; they keep the rest of the world safe.'".
 It quip-supplies Atlantida-woman.

[Carry out shooting the anagramming gun at something in the presence of ]


[Test oracle with "tutorial off / autoupgrade / unmonkey / wave h-remover at power chord / open tub" in the Oracle holding the anagramming gun and the power chord and the pastis and the tub.]

[Her reactions to gunning down other objects...]

After shooting something with the anagramming gun in the presence of atlantida-woman when the detritus is the sickest offal :
	queue is-it-commentary as immediate obligatory;
	continue the action.

Is-it-commentary is an NPC-directed quip.
	The reply is "She makes a disgusted face. 'I hope you're planning to clean that up.'"

Instead of Atlantida-woman discussing is-it-commentary when atlantida-woman carries the restoration-gel rifle and the sickest offal is marked-visible:
	say "She looks annoyed and shoots the offal. ";
	gel-convert the offal;
	say "[one of]'As political commentary, that wasn't very well-conceived.'[or]'I have plenty of ammunition in this rifle,' she remarks.[or]This time she doesn't bother to comment.[stopping]".

After shooting something with the anagramming gun in the presence of atlantida-woman when the detritus is the intaglio-pins:
	queue not-so-bad-pins as immediate obligatory;
	continue the action.

not-so-bad-pins is an NPC-directed quip.
	The reply is "[one of]'Hm,' Atlantida comments, remarking the intaglio pins. 'Makes a change from the paintings, I suppose. I don't mean to complain [--] they did go to quite some effort over these chambers [--] but one gets tired of the same scenery after a while, don't you think?'[or]Her glance flickers towards the pins but she doesn't seem to think they deserve any further remark.[stopping]"

After shooting something with the anagramming gun in the presence of atlantida-woman when the detritus is the kind ladies :
	queue barely-acknowledges as immediate obligatory;
	continue the action.

barely-acknowledges is an NPC-directed quip.
	The reply is "Atlantida's glance flickers towards the ladies, but she barely acknowledges them."

Instead of atlantida-woman discussing barely-acknowledges when atlantida-woman carries the restoration-gel rifle and the kind ladies are marked-visible:
	say "[one of]'Is [--] is there anything I could do to assist?' asks one of the ladies. 'It looks as though you two are having a bit of a disagreement. Maybe if we all sat down together and talked about what we are feeling [--]'[or]This time one of the ladies offers a muffin.[no line break][or]The ladies back nervously against the wall, except one who says, 'I still think we could work this out.'[no line break][or]The ladies are cowed but regard us with mute hope.[no line break][stopping]

Atlantida [one of]rolls her eyes and fires the weapon, hitting the lady speaking neatly in the middle of the forehead. She doesn't seem much bothered by the idea that these fake people are essentially her own kind, really[or]casually shoots the speaker again[or]picks off the ladies with her rifle[stopping]. [run paragraph on]";
	gel-convert the kind ladies.


[And some ways of attacking her...]

Sanity-check going east in the presence of atlantida-woman:
	say "[We] would have to get through her first." instead.

After attacking atlantida-woman  with something when Atlantida-woman carries the restoration-gel rifle:
	if the second noun is proffered by Brock:
		continue the action;
	if the second noun is proffered by something which is not the second noun:
		say "Atlantida raises the rifle and fires with certain aim before the blow has a chance to land. [run paragraph on]";
		gel-convert the second noun;
	otherwise:
		say "[We] leap forward and slash with [the second noun][one of]. She parries the blow with the body of [the restoration-gel rifle]. It doesn't even look damaged[or]. She wards us off with the rifle[or]. She dodges[at random]."

Report attacking atlantida-woman with the leaf:
	say "[We] wield the leaf like a dagger[one of] and slice across her arm, drawing blood. She recoils, angry but not deterred[or]. This time [we] don't manage to land another blow[stopping]." instead.

Report attacking atlantida-woman  with something:
	say "[one of][We] swing [the second noun] at her, but can't quite reach. She's keeping her distance[or]Closing some of the distance, [we] try a slash of [the second noun]. She leaps backward[or][We] lunge with [the second noun], but she dodges[cycling]." instead.

Instead of throwing something at atlantida-woman:
	if the noun is r-abstract:
		say "[The noun] wouldn't make much impact, other than perhaps notionally. And Atlantida doesn't look like she's open to persuasion, even if the concept of [the noun] were one that carried weight in this situation.";
	otherwise if the noun is floppy and the noun is long:
		say "[The noun] [make] a poor projectile and land[s] back near our own feet.";
		move the noun to the location;
	otherwise if the noun is long:
		say "[We] cast [the noun], javelin-like, at Atlantida's heart, but [one of]she dodges[or][we] undercalculate the amount of force required and [the noun] clatter[s] to the ground instead[or]miss[at random]. Her expression is disdainful.";
		move the noun to the location;
	otherwise if the heft of the noun is less than 3:
		let random-destiny be a random supporter which is in the location;
		say "[We] fling [the noun] at Atlantida, but [one of][they] bounce[s] off unexcitingly and land[s] on[or]with a swipe of her arm she deflects [them] to[at random] [the random-destiny].";
		move the noun to the random-destiny;
	otherwise if the heft of the noun is greater than 3:
		say "[The noun] [are] too heavy for us to throw at all effectively.";
	otherwise:
		say "[We] chuck [the noun] at Atlantida. [They] strike[s] her hard enough to elicit an outraged 'Oof!', but that doesn't seem to have substantially impaired her."


Understand "gun hand" as the restoration-gel rifle when the restoration-gel rifle is carried by Atlantida-woman.

[TODO: fix test]
Table of Ultratests (continued)
topic	stuff	setting
"oracle"	{ anagramming gun, bullets, power chord, pastis, the tub }	The Oracle
"missiles"	{ rock, page, sword, secret-plans, iron-pans, ire }	--
"attacks"	{ sword, foil, stick, sill, leaf, slat, track, warm rods, wand batch, swordstick, crosspiece }	--

Test oracle with "tutorial off / autoupgrade / unmonkey / load gun / wave h-remover at power chord / open tub / look / x paintings / x charts / x fable / gel paperweight / gel fable / look up 1942 in cabinet / look up 1982 in cabinet / look up 1962 in cabinet / look up 1958 / look up 1964 / look up 2003 / look up 1983 in cabinet / x paper / x weight / get weight / e / e / e / put pastis in bucket / go to workshop / plug in cord / go to surveillance / d / get counter / go to workshop / put counter and weight on dais / turn switch / pull lever / get counterweight / go to tunnel / put counterweight on hook / pull counterweight / e" [in the Oracle holding the anagramming gun and the bullets  and the power chord and the pastis and the tub.]

Test missiles with "establish / throw rock at Atlantida / throw paper at atlantida / throw plans at atlantida / throw sword at atlantida / throw tub at atlantida / throw pans at atlantida / throw ire at atlantida" [holding the rock and the page and the sword and the secret-plans and the iron-pans and the ire.]

Test attacks with "establish / hit atlantida with sword / hit atlantida with foil / hit atlantida with stick / hit atlantida with sill / hit atlantida with leaf / hit atlantida with slat / hit atlantida with track / hit atlantida with warm rods / hit atlantida with wand batch / hit atlantida with swordstick / hit atlantida with crosspiece" [holding the sword and the foil and the stick and the sill and the leaf and the slat and the track and the warm rods and the wand batch and the swordstick and the crosspiece.]

Section 13 - Scene Interlude with Guards


Sanity-check going through the tall window when Atlantida-refreshed is off-stage:
	if story viewpoint is second person singular: [TODO:][Is this right? Tes!]
		say "[We] could do that. [We] could climb out that window and not look back. It would be faster, easier, unquestionably safer. But what about the people we're leaving behind? What about my father and Professor Higgate? What about the protesters who got arrested today?

We'll only know they're safe if we leave this island with a new, improved Atlantida. Someone the Bureau will have to listen to. The one they were afraid of creating. One who will put power back in the hands of the citizen referendum.

So you tell me how it's going to be. Are you going to stay and see to things? >>";
		if the player consents:
			extend scene time;
			say "[line break]That's what I thought." instead;
		otherwise:
			say "[line break]Should've known. Well, I suppose I can't stop you.";
			now the description of the newspaper is "It's the Chard-Farmer's Daily from Atlantis. It describes in glowing terms the delightful festival that was Serial Comma Day. There is no reference at all to the protests and mass depluralization, much less to anything that might have happened to my father or Professor Higgate.";
	otherwise:
		extend scene time;
		say "Maybe you would do that. I've got a little more on the line, and you've lost most of your vote, so we're going to do things my way. We're going to reinstate Atlantida in her new form. Someone the Bureau will have to listen to. Someone who will be merciful to Brock and Higgate and all those protesters, who'll put the power back in the hands of the citizen referendum." instead;


[At the point where we decide not to escape, we want to give the player an extension on time to complete the transformation of Atlantida to make sure there's no loss.]
To extend scene time:
	while the number of filled rows in the Table of Guard Warnings is less than 10:
		choose a blank row in the Table of Guard Warnings;
		now description entry is "[one of]Strangely quiet out there[or]No signs of anyone coming for us quite yet[or]The lull continues[at random]."

Further guards is a scene. Further guards begins when atlantida chat has ended and the time since atlantida chat ended is 2 minutes.

When further guards begins:
	say "There's a distant sound of movement. Someone is looking for us."

Further guards ends in escape when the location is Precarious Perch. Further guards ends in imminence when guard-imminence begins.

Report waiting during further guards:
	say "[one of]I don't think we have much time left[or]Time is slipping past, time when we could be doing something[or]It can't be much longer now[at random]." instead.

When further guards ends in escape:
	say "Whoever is looking for us, we should be out of their way now."

Every turn during Further Guards:
	repeat through the Table of Guard Warnings:
		if there is a description entry:
			unless the description entry is "":
				say "[description entry][paragraph break]";
			blank out the whole row;
			break.

Table of Guard Warnings
description
""
""
""
""
""
""
""
""
""
"Maybe those noises we heard earlier were nothing. It's quiet now."
"Our ears are straining for something far away."
""
"The silence is eerie."
""
"A distant alarm bell is ringing."
""
"The faint ringing continues."



Guard-imminence is a scene. Guard-imminence begins when the programmable dais is in location and the atlantida-shellfish is enclosed by location. Guard-imminence ends in postponement when atlantida-refreshed is enclosed by location. [The design principle here is that the player is on a timer, but every time he succeeds at moving the plot forward, that timer is stopped and a new one starts. So it's never possible to fail a late-stage scene because of having taken too long in an earlier stage.]

Every turn during Guard-imminence:
	repeat through the Table of Severe Guard Warnings:
		if there is a description entry:
			unless the description entry is "":
				say "[description entry][paragraph break]";
			blank out the whole row;
			break.

Table of Severe Guard Warnings
description
"I definitely hear footsteps. And voices."
""
""
"There's a percussive explosion sound from the west."
""
"Banging. More percussion."
""
""
"Whoever is coming, they're not trying to be stealthy."

Guard-imminence ends in capture when the number of filled rows in the Table of Severe Guard Warnings is 0.

When guard-imminence ends in capture:
	say "There are noises in the next room, a couple of All-Purpose Officers burst into the room, gel rifles and real rifles drawn.

'Where is she?' asks a commanding voice. A man we haven't met comes in and surveys the area. 'What have you done with Atlantida?'

We say nothing.";
	end the story saying "We have been caught".

[TODO: fix test]
Table of Ultratests (continued)
topic	stuff	setting
"almostlast"	{ anagramming gun, bullets, tub, counterweight }	The Tunnel
"lastmeeting"	{ anagramming gun, tub }	Personal Apartment

Test almostlast with "tutorial off / load gun / put counterweight on hook / open tub / open portcullis / go through portcullis / x files / a cold storage / look / shoot anagramming gun at gel rifle / look / gel astrologer / shoot gel rifle at atlantida" [in the Tunnel  holding the anagramming gun and the bullets and the tub and the counterweight.]

Test lastmeeting with "tutorial off / open tub / x files / a cold storage / look / shoot anagramming gun at gel rifle / look / gel astrologer / shoot gel rifle at atlantida" [in the Personal Apartment holding the anagramming gun and the tub.]

Section 14 - The Nicer Atlantida

Atlantida-refreshed is a woman. "Atlantida stands nearby, urging us to hurry out via the Private Solarium[one of]. I think she's enjoying her role as conspiratorial heroine[or][stopping]." The printed name of atlantida-refreshed is "Atlantida". Understand "atlantida" as atlantida-refreshed. The description of Atlantida-refreshed is "She looks very similar to her earlier self, but the differences are there. The eyes are grey now. A tattoo of a writhing squid encircles her left wrist. Her face is younger."

Atlantida-shooing is a scene. Atlantida-shooing begins when guard-imminence ends in postponement.

When Atlantida-shooing begins:
	set the current interlocutor to Atlantida-refreshed;
	say "She gets to her feet.";
	now atlantida-refreshed is in Workshop;
	queue you-had-better-leave as immediate obligatory;
	queue really-go-now as postponed obligatory.

Atlantida-shooing ends when the location is Personal Apartment  and the portcullis is open.

you-had-better-leave is an NPC-directed quip.
	The reply is "'You'd better leave, quickly,' she says. 'I'll make sure your friends get out, but it will be easier if we don't have to explain you as well.'"

how to fix the fusion is a questioning quip.
	The comment is "'The two of us, Alex and Andra, we seem to be stuck together permanently. You don't happen to know how to remove our fusion?'"
	The reply is "She shakes her head. 'We've never found a way to undo that effect completely,' she says. 'I'm sorry. But try to listen to both your voices. One may be the weaker now, but if you try to kill that self entirely, it tends to cause a severe mental illness.'"
	It quip-supplies atlantida-refreshed.

what Atlantida kens concerning synthesis is a questioning quip.
	The printed name is "what Atlantida knows about synthesis".
	Understand "knows" or "she" or "about" as what Atlantida kens concerning synthesis.
	It directly-follows how to fix the fusion.
	The comment is "'Wait, what do you know about synthes[ize]d people?' If we don't find out now, will there be a better time?"
	The reply is "'There have been experiments. They didn't end well, though most didn't collapse into a single dominant personality as quickly as you. You've been under unusual stress.'"
	It quip-supplies atlantida-refreshed.

really-go-now is an NPC-directed quip.
	The reply is "'Hurry!' she says. 'Take the window in the Solarium, climb down the beach. Don't look back.'"

Instead of showing the rifle to atlantida-refreshed:
	try discussing return the rifle.
Instead of giving the rifle to atlantida-refreshed:
	try discussing return the rifle.

Carry out someone discussing return the rifle:
	now atlantida-refreshed carries the restoration-gel rifle;
	now restoration-gel rifle is not essential.

An availability rule for return the rifle:
	if the player does not carry the restoration-gel rifle:
		it is off-limits;
	make no decision.

return the rifle is an unlisted performative quip.
	The comment is "'Here,' we say, handing the restoration gel rifle over. 'I imagine you should have this now.'"
	The reply is "'Thanks,' she says, looking actually rather touched. 'But come on! There's no time to waste.'"
	It mentions the restoration-gel rifle.
	It quip-supplies atlantida-refreshed.

Carry out going to the Surveillance Room during Atlantida-shooing:
	now Atlantida-refreshed is in the Surveillance Room;
	if the player is staid:
		say "Atlantida follows, looking around sharply. Her expression when she sees the computers and television screens is wry, but she doesn't say anything. No time now, perhaps."

Carry out going to the Tunnel during Atlantida-shooing:
	now Atlantida-refreshed is in the Tunnel;
	if the player is staid:
		say "Atlantida accompanies us, close on our heels in the narrow space."

Carry out going to the Personal Apartment during Atlantida-shooing:
	now Atlantida-refreshed is in the Personal Apartment;
	if the player is staid:
		say "Atlantida comes along with us."

Carry out going to the Private Solarium when Atlantida-shooing is happening or Portcullis-breaking is happening:
	now Atlantida-refreshed is in the Private Solarium;
	if the player is staid:
		say "She follows. 'Go, go,' she says. 'You've done good work today. Atlantis is grateful.'"

Carry out going through the tall window:
	now the tall window is closed;
	now the tall window is locked;
	if Atlantida-refreshed is in the Private Solarium:
		say "As soon as we're through, Atlantida closes the window behind us, and we hear it lock. No evidence that we came through here, now.";
	otherwise:
		say "[We] close the window behind us.";

Portcullis-threat is a scene. Portcullis-threat begins when Atlantida-shooing ends. Portcullis-threat ends in delay when the portcullis is closed. Portcullis-threat ends in capture when the time since Portcullis-threat began is 4 minutes.

When Portcullis-threat begins:
	say "Someone is coming into the workshop upstairs. There's at most a few seconds before they'll be down the tunnel.";

When Portcullis-threat ends in capture:
	say "The guards arrive. [We] [are] captured and taken away for interrogation, and it's some time before Atlantida is able to arrange for our release.";
	end the story saying "That could have gone better"

When Portcullis-threat ends in delay:
	say "The portcullis should at least slow down anyone coming after us. Though that's only moderately comforting."

Portcullis-breaking is a scene. Portcullis-breaking begins when Portcullis-threat ends in delay.

Portcullis-breaking ends in stupidity when the portcullis is open. Portcullis-breaking ends in final-threat when the location is the Solarium.

When Portcullis-breaking ends in stupidity:
	say "Reopening the portcullis turns out to have been a poor idea, because it means there's nothing to delay the guards storming down from above. [We] [are] captured and taken away for interrogation, and it's some time before Atlantida is able to arrange for our release.";
	end the story saying "That could have gone better"

When Portcullis-breaking ends in final-threat:
	say "From the other room, the noises make it sound as though someone is using a metal torch to dismantle the portcullis bar by bar.";

Guard-capture is a scene. Guard-capture begins when Portcullis-breaking ends in final-threat. Guard-capture ends in capture when the time since Guard-capture began is 5 minutes.

Guard-capture ends in freedom when the location is Precarious Perch.

When Guard-capture ends in capture:
	say "Despite the admonishments of the new Atlantida, the Bureau officers who get through the door are not inclined to stop and chat.

[We] [are] captured and taken away for interrogation, and it's some time before Atlantida is able to arrange for our release.";
	end the story saying "That could have gone better"
			
Counterfeit Scenic Characters ends here.