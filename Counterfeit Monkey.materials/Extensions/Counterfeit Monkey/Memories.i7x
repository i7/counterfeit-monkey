Memories by Counterfeit Monkey begins here.

Use authorial modesty.


Volume 3 - Memories

[Memories are not exactly cut scenes, but are intended to have limited interactions: no world model, just choices about what to reveal to Alex and what emotional approach to take to certain events, where Andra's real feelings are probably complex and ambivalent. The idea here is where possible to allow expressiveness and engagement with the events but not to make them seem subject to actual change.

These are a fairly late addition to the design, because Andra's personality is losing out to Alex's significantly, and thematically we would really like to give an impression of both of them.]

[Section 0 - Emotional Terminology for Later Parsing

Understand "angry/mad/pissed/furious/wrath/rage/enraged/offended/infuriated" as "[angry]".
Understand "jealous/envious" as "[jealous]".
Understand "annoyed/irritated/frustrated" as "[annoyed]".
Understand "bored/ennui/uninterested/disinterested/indifferent/uncaring/dull/yawn/tedious/tedium/apathy" as "[bored]".
Understand "scared/frightened/nervous/wary/timid/edgy/afraid" as "[scared]".
Understand "disappointed/sad/depressed" as "[sad]".
Understand "horrified/horror/disgust/contempt/disgusted/appalled/repelled/icky/ew" or "grossed out" as "[disgusted]".
Understand "ashamed/embarrassed/humiliated" as "[embarrassed]".
Understand "joy/joyous/pleased/happy/happiness/enthralled/enthused/uplifted/content" as "[happy]".]

Section 1 - Memory Terms

A memory is a kind of thing. A memory can be triggered, proto-triggered, or untriggered. A memory is usually untriggered. A memory is usually fixed in place.

A memory has a number called the uses.
A memory has a number called the max.
A memory has a number called the last trigger. The last trigger of a memory is usually 0.

Understand "remember" or "memories" or "memory" as listing memories. Listing memories is an action out of world.

Report listing memories:
	say "Currently on your mind [is-are a list of triggered memories][one of]. [paragraph break][first custom style][bracket]REMEMBER any memory to review it.[close bracket][roman type][or].[stopping]";

To trigger (new memory - a memory):
	let elapsed count be the turn count - last trigger of the new memory;
	if the turn count is less than 3:
		let elapsed count be 3 - last trigger of the new memory;
	if the uses of the new memory is less than the max of the new memory and elapsed count is greater than 2:
		now the new memory is proto-triggered;
		now the last trigger of the new memory is the turn count;

Before reading a command when a memory is proto-triggered:
	say "[one of]Something makes you think of[or]You have a fleeting thought of[or]You are reminded of[at random] [the list of proto-triggered memories].";
	now every proto-triggered memory is triggered;
	if we have not remembered:
		say "[line break][first custom style][bracket]MEMORIES will list your currently active memories[close bracket][roman type]";

Understand "remember [any triggered memory]" as remembering. Understand "think about [any triggered memory]" as remembering. Remembering is an action applying to one visible thing.

First carry out remembering a memory:
	increase the uses of the noun by 1.

Report remembering:
	say "Then we're back in the present.[line break]".

Sanity-check remembering when the location is Roundabout and the player is in a car:
	say "Hey! Now isn't the time for reveries! Watch the road." instead.

Remembering something is acting fast. Listing memories is acting fast.


Section 2 - First Recollection of the Yacht

lock-formation is a memory. The printed name is "making your lock". Understand "making" or "your/my" or "lock" as lock-formation. The max is 1.

Carry out examining the lock:
	trigger lock-formation.

Carry out remembering lock-formation:
	say "[b]Galley[/b][line break]You were going through the galley cupboards on the yacht. 'If you're looking for coffee, Slango forgot to resupply,' Brock said, descending the galley staircase in a wet Speedo.

'No, the first-letter razor,' you replied, holding up a portable clock. 'I need a lock that responds to restoration gel but nothing else.'

'Ah.' Brock toweled his hair. 'It's in my bunk, sorry. Want to come look for it?'

You smiled [--] a give-away smile. 'Wish I could, but we're on a deadline. Go put some pants on. And bring me the razor.'"

Section 3 - Childhood

Childhood-colonialism is a memory. The printed name is "my youthful pranks". The max is 1. Understand "my/your" or "youthful" or "youth" or "pranks" as childhood-colonialism.

Carry out looking in Old City Walls:
	trigger childhood-colonialism.

Carry out remembering childhood-colonialism:
	say "Oh, I used to play that I was an Atlantean guard defending the battlements against invading redcoats, armed only with a saber and an, uh, an o-removing musket. So they turned into red cats, you see. My mother explained later that letter removal hadn't ever taken the form of muskets and that I had my chronology wrong. So I do know better.

And my father gave me an even longer and even less interesting lecture about how the British colonial government wasn't entirely a bad thing and how it didn't do to be too gleeful about mentally shooting some young soldier who probably didn't have a choice about being there."

Childhood-bedroom is a memory. The printed name is "your austere childhood". The max is 3. Understand "my/your" or "childhood" or "austere" as childhood-bedroom.

Carry out examining the funnel:
	trigger childhood-bedroom. [Your youth in contrast with this privileged childhood]

Carry out examining the school:
	trigger childhood-bedroom.

Carry out remembering childhood-bedroom:
	if the uses of the noun is:
		-- 1:
			say "[b]Your Childhood Bedroom[/b][line break]A small white room with a free-standing wardrobe full of modest home-made clothes; a plain-hewn bookshelf with Bible, study guides, a dictionary and thesaurus; and a sampler on the far wall that reads, 'Our pursuit of perfection is our gift to God.' It's done in very exact cross-stitch.";
		-- 2: say "[b]Your Childhood Bedroom[/b][line break]You hung your newly ironed clothes in the wardrobe. Your clothes were frumpy foolish things. But they were made for you by your parents with great care. Your father made the wardrobe himself. Your mother sewed all your clothes. She had an eye for col[our] and detail. It shows in the neatness of the hems, the crisp piping on a pocket, the surprising yellow buttons on a pale blue cuff. [paragraph break]Every day you wore those clothes was like being arm[our]ed in love.";
		-- 3:
			say "[b]Your Kitchen[/b][line break]Your mother sits at the kitchen table sipping a strong tea while she coaches you through your routine. This is what informed your life, every day. Every morning, the hours of spelling practice. Your mother's words about how you must nurture your talent in gratitude to the deity who bestowed it on you.";
		-- otherwise:
			say "The recollections blur together now, rejected and useless.";


Section 3 - Back Alley

[This is something we know from the very beginning of the game.]

Carry out examining something in the Back Alley:
	trigger getting-here.

getting-here is a memory. The printed name is "how we got here". The max is 1. Understand "how" or "we" or "got" or "here" as getting-here.

Carry out remembering getting-here:
	say "[b]Cluttered Industrial Room[/b][line break]The synthes[ize]r was right at the cen[ter] of the room, and we were inside it. An unshaven man in a blue jumper was prodding us with his foot. 'Wake up! Wake up!'

But we couldn't move, even though you were half-conscious. So he panicked. We'd paid him to let us recover in comfort, but he wasn't about to risk having a corpse on his hands, even an unidentified one. He picked us up and dumped our body in the Back Alley and left."


Section 4 - Brock Goodnatured

Carry out examining protesters:
	trigger saving-rivka.

saving-rivka is a memory. The printed name is "your crew's heroism". The max is 1. Understand "your/my" or "crew" or "crew's" or "heroism" as saving-rivka.

Carry out remembering saving-rivka:
	say "[b]Galley[/b][line break]The scene is the kitchen aboard Slango's yacht: smaller than the kitchen in a comfortable house, but carefully and elegantly fitted. Brock and Slango were standing around, Slango with a lemonade and Brock with a chilled vodka. [paragraph break]The fourth person on the scene was Rivka Coutinho, a prisoner you'd sprung from Atlantean custody. She'd been caught running an illicit Hebrew school while nominally a visiting foreign employee of DCL.[paragraph break]";
	say "'To not being in Cold Storage,' said Rivka, lifting her own glass. She swallowed and her eyes watered a little. [paragraph break]Rivka had spent the previous seventeen years as an inanimate object in a Bureau warehouse.[paragraph break]'You'll be with them soon,' Brock said. 'But I took these for you.' Silently he passed across the table glossy prints of Rivka's daughter and granddaughter [--] a child she had never met."


Section 5 - Brock in Bed

Test Brock-bed with "x bed / remember brock / x bed / g / g / g / g / g / g / g / g / g / g / g / g / g / g / g / remember brock" in dormitory.
Test Brock-fully with "test Brock-bed / test Brock-bed / test Brock-bed / test Brock-bed / test Brock-bed / test Brock-bed / memories / remember brock".


Brock-bed is a memory. The max is 5. The printed name is "how it started with Brock". Understand "how" or "it" or "started" or "with" or "brock" as brock-bed.

Carry out discussing a Brock-mentioning quip:
	trigger Brock-bed.

Definition: a quip is Brock-mentioning:
	if it is whether she hath seen Brock-man:
		yes;
	if it is whether Brock-man seemed upset:
		yes;
	if it is what the trouble was:
		yes;
	if it is complain about Brock's recklessness:
		yes;
	if it is remind Brock that synthesis was necessary because of him:
		yes;
	if it is defend Alex:
		yes;
	if it is discover why Brock got stuck here:
		yes;
	if it is rejoice that brock seems okay:
		yes;
	if it is claim-to be fine:
		yes;
	if it is what buried command center he heard of:
		yes;
	no.

Carry out examining a bed:
	trigger Brock-bed.

Carry out examining a dorm bed:
	trigger Brock-bed.

Check remembering Brock-bed:
	if the uses of the noun is greater than 4:
		say "I get the idea. You don't need to show me more." instead.

Carry out remembering Brock-bed:
	if the uses of the noun is:
		-- 1: say "[b]Brock's Stateroom[/b][line break]It was early morning, almost a year ago now. A dim light came through the portholes. A four-thousand dollar mink blanket covered your hip.[paragraph break]You sat up and started fishing around beside the bed, in the dove-grey shadows, for your bra.[paragraph break]Brock put a hand on your thigh. It seems you woke him.

'That wasn't your first time,' he said.

'No.' You were still feeling for the underpants and the shirt, not looking at him.

'Well. You're made of human after all.' Brock stretched, grinned. 'After breakfast I'll clear you some drawer space.'

'This was a one-night event,' you said. 'You're familiar with the concept.'

He got very still. Then he got out of bed. Without looking at you, he got his trunks out of his drawer. 'I'm going for a swim.'";
		-- 2: say "[b]Navigation Area[/b][line break]Brock was sitting at the controls, with you leaning over him. He pushed you away. 'Cut it out. I'm not available every time you decide to go slumming.'[paragraph break]It was deep blue summer twilight. He was driving the yacht with one hand on the steering wheel and the other loosely in his lap. You turned to go.";
		-- 3: say "[b]Sunning Deck[/b][line break]Brock was sprawled out on the cushions with his sunglasses on. Pretending not to see you. You stood so that your shadow crossed his face and he had to look up.

'I've been a jerk and I'm sorry,' you said.

'I'm not the man-whore of Babylon,' he replied. 'I've had the odd fling. That's all.'

'I know.'

'I'm not James Bond here.'

You pulled your towel more tightly around you. 'I know.'

'And you have lost the right ever to give me crap about women again,' he said.

Your teeth were starting to chatter. 'Yes.'

'Okay. Apology accepted.' He lowered his sunglasses again.";
		-- 4: say "[b]Café, Marseilles[/b][line break]Brock was scowling into his drink. 'I don't know, Andra. Are you going to flip on me again if we try to be together? I'm not blaming you for your parents, and... honestly, I'm surprised how much you've been able to assemble yourself into someone new. But jeezus.'

'What happened to your thing about how everyone goes through life hurting everyone else a little bit, like radiation?' you asked. 'But mostly people heal, and it's worth it?'

'Yeah, that's true,' he said. 'But you still don't go into the reactor core with no suit, if you see what I mean.'

You tilted your head. 'You weathered it pretty well when you and Annalisa split up.'

He swirled the melted ice in the bottom of his glass. 'Is this what you're fishing for?' he said. 'For me to tell you you're special, you're different, I care about you more and therefore it would ruin everything if we ever broke up?'

You didn't answer.

'It [i]would[/i] ruin everything,' he says. 'Because you're on my crew. But as to the girlfriend thing, I have no idea. We don't know each other that way.'";
		-- 5: say "[b]Brock's Stateroom[/b][line break]Brock had tied your wrists to the headboard and your left ankle to the corner of the bed. He had a thesaurus open and was writing, with a paintbrush, across your stomach.

'Floozy?' he asked.

You giggled, so he painted the word above your navel, smiling, giving the Y a big flourishing curlicue.

'Let's see, what else. Fornicator?'

You drew in your breath sharply. Remembering an angry lesson read from the lectern.

'Okay,' he said. 'Not that one, yet,' and licked away the F he'd begun to paint.";
		-- otherwise: say "I get the idea. You don't need to show me more.";



Section 7 - Espionage Memories

Carry out looking in Roget Close:
	if Roget Close is introduced:
		trigger espionage-recollection;
	otherwise:
		now Roget Close is introduced.

Espionage-recollection is a memory. The max is 2. The printed name is "your crew's skill". Understand "your/my" or "crew's" or "crew" or "skill" as espionage-recollection.

Carry out looking in Fleur d'Or Lobby:
	if Fleur d'Or Lobby is introduced:
		trigger espionage-recollection;
	otherwise:
		now Fleur d'Or Lobby is introduced.

Carry out remembering espionage-recollection:
	if uses of the noun is greater than 1:
		say "[b]Fleur d'Or Guest Room[/b][line break]
A clean-lined, minimal room, but furnished expensively: fresh-cut tulips in a plain glass vase, high thread-count sheets, vast pillows suitable for the hibernation of giants. The closets feature safes, which is excellent for someone in your line of work, because it tends to persuade guests that their computers are being protected when they go out.

You were inside because you'd bribed a housekeeper, and were gathering information from a businessman's laptop while the businessman himself was downstairs at the bar.

But the Bureau also had an agent, also posing as a housekeeper in the hotel, also up to the same purposes. The business with the minibar vodka was clever, I grant.";
	else:
		say "[b]A Room in a Villa[/b][line break]The bed was draped with sheer salmon-col[our]ed fabric. The bedroom opened without doors straight onto the bathroom with a full view of the spotlit bathtub. The toilet was hidden by a frosted glass panel etched with leaping fish. It was the swankest place you'd ever seen, and it made you uncomfortable.

'Belongs to a seafood magnate,' your crew-mate Brock was explaining. He was in the middle of setting up a directional mike pointed out the window. The head of R&D at Sibilant Solutions lived right across the way. What you learned from his pillow-talk was enough to recover three missing marquesses.";


Section 8 - Breaking

Carry out looking in the bus station:
	trigger leaving-memory.

Leaving-memory is a memory. The max is 1. The printed name is "leaving your family for the last time". Understand "leaving" and "your" and "family" and "for" and "the last time" and "last" and "time" as leaving-memory.

Carry out remembering leaving-memory:
	say "[b]Bus Stop[/b][line break]Your suitcase was next to your leg. It was nearly three in the morning. There were thirty more minutes before the bus would take you to San Francisco. Your mother would have warned you not to be in a place like that alone so late at night, but it didn't feel, then, like anything that could happen to you would be worse than your mother's behavior and her anger."


Section 9 - Protesting Petty Laws

helping-Engeo is a memory. The max is 1. The printed name is "your crew's attitude to Atlantis law". Understand "your" or "crew's" or "crew" or "attitude" or "to" or "Atlantis" or "law" as helping-engeo.

Carry out going from Outdoor Cafe:
	trigger helping-engeo.

Carry out remembering helping-Engeo:
	say "[b]Galley[/b][line break]You, Brock, and Slango were sitting around the built-in table aboard Slango's yacht, using Brock's laptop to plan upcoming jobs. 'We've got time before Cairo,' Brock said. 'What do you think of this one?'

Slango grimaced. 'Pay's chickenshit. And what a job. Getting a name like [']Nexami['] past Atlantean border control? So some guy can do a concert tour? Come on. Where does that go on our résumé? Right after [']brought down international conspiracy by Sibilant Solutions'? It's hiring a neuro-oncologist to treat your pet gerbil.[']

'We got ourselves credentials,' Brock remarked. 'We're not exactly the most solid upstanding ordinary-named guys.'

'Because in our line of work it's useful not to be. Plus I would do a job for myself that I wouldn't do for anyone else. Obviously.'

'This is a job for a virtuoso,' Brock said. 'Pure challenge, no obvious social engineering solutions. Not to mention, if it turns out we can't deliver, what's this guy going to do about it? He's a musician.'

Slango still didn't look impressed.

'It's [i]breaking Atlantean law[/i],' Brock added temptingly. 'And there's no law that needs breaking [--]'

'[--] more than Atlantean law,' you and Slango chorused with him.

'Point taken,' said Slango. 'Okay. We plant evidence that [']Nexami['] is a traditional ethnic Basque name...'

'You know he was born in Glasgow.'";


Section 10 - Counterfeit Monkey Clue

category-memory is a memory. The max is 1. The printed name is "past experience playing games". Understand "past" or "experience" or "playing" or "games"  as category-memory.

Carry out an actor discussing how one might go about winning:
	trigger category-memory.

Carry out remembering category-memory:
	say "The three of you were watching the contest at Counterfeit Monkey. This time the prize was a bottle of Dove Wing Absinthe, and the latest contestant was trying to letter-remove her way to an object the size of a pebble.

Slango lifted his root beer. 'These guys are in a rut. It's all [']make a liquid['] and size-based challenges. I want to see some demanding categories. Strawberry-scented. Paisley. Pachyderm-themed.'

You shrugged. 'People L-remove tiles,' you said. 'You can get a letter-made tie any col[our] you want.'

'Import Category 5,' Brock said. 'Now that would be a strong challenge category.' Under Atlantean customs law, Import Category 5 means things that are edible, but not fruits or vegetables [--] everything from drugs to chicken breasts. 'Clear, but it rules out a lot of overly productive agriculture words.'"


tiles-memory is a memory. The max is 1. The printed name is "Brock's comment about anagramming". Understand "Brock's" or "comment" or "about" or "anagramming" as tiles-memory.

Carry out examining the anagramming gun for the first time:
	trigger tiles-memory.

Carry out remembering tiles-memory:
	say "[b]Galley[/b][line break]You and Brock were sitting at the galley table, Scrabble tiles in front of you. 'This is what I admire about you,' he said, touching your foot with his. 'Most kids raised by fundamentalist parents wind up the same way themselves, or they go off the deep end the other way. You just... rearranged the tiles you'd been dealt.'

More than he real[ize]d, in fact, now that you've added my tiles to yours."


Memories ends here.
