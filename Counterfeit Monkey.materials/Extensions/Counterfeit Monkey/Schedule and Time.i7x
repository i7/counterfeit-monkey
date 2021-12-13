Schedule and Time by Counterfeit Monkey begins here.

Use authorial modesty.


Book 5 - Schedule and Time

Chapter 1 - Time Model

Section 1 - Speed of Action

[This game is going to entail taking inventory constantly, as the player reviews what he has available to solve a particular problem. Similarly, looking and examining things in order to check the environment for dangerous or interesting content. Consequently, we want these actions to be timeless so that they don't pose too much of a challenge in timed portions. Besides, during a conversation or otherwise wordy scene, it tends to be unattractive to have a whole inventory list followed by the section of dialogue.

This code is yanked directly from the "Timeless" example in the manual.]

Examining something is acting fast. Looking is acting fast. Taking inventory is acting fast.

[Starting a conversation with someone about is acting fast. ]

The take visual actions out of world rule is listed before the every turn stage rule in the turn sequence rules.
This is the take visual actions out of world rule:
	if acting fast:
		rule succeeds.


Section 2 - Times of Day

Daytime is a kind of value. The daytimes are noon, early afternoon, mid afternoon, late afternoon, sunset, and evening.

The current daytime is a daytime that varies. The current daytime is noon.

To say sky-description:
	if the current daytime is:
		-- noon:
			say "The sun is so bright that it's hard to look straight up for long.[no line break]";
		-- early afternoon:
			say "The sun is no longer directly overhead, perhaps, but it's close.[no line break]";
		-- mid afternoon:
			say "It is still extremely bright overhead, though we're reaching the middle of the afternoon.[no line break]";
		-- late afternoon:
			say "The glare is decreasing as the sun falls toward the horizon, and the sky overhead is a darker shade of blue.[no line break]";
		-- sunset:
			say "There are no clouds to complicate the sunset, just a pure gradient of yellow to deepening blue.[no line break]";
		-- evening:
			say "The sky has cooled to a darkening blue, though [we] can't see any stars yet.[no line break]"

To say sun-description:
	if the current daytime is:
		-- sunset:
			say "It has dulled to a mere ruddy ball.[no line break]";
		-- otherwise:
			say "It's horribly bright and glaring just at the moment.[no line break]"

To say time-elsewhere:
	let hours be 12;
	if the current daytime is:
		-- noon:
			let hours be 12;
		-- early afternoon:
			let hours be 13;
		-- mid afternoon:
			let hours be 14;
		-- late afternoon:
			let hours be 16;
		-- sunset:
			let hours be 18;
		-- evening:
			let hours be 20;
	choose a random row in the Table of Time Differences;
	increase hours by difference entry;
	let am-pm be "[one of]in the morning[or]AM[or]o'clock[at random]";
	if hours is greater than 24:
		decrease hours by 24;
	otherwise if hours is 24:
		decrease hours by 12;
		now am-pm is "midnight";
	otherwise if hours is greater than 12:
		decrease hours by 12;
		if hours is less than 6:
			now am-pm is "[one of]in the afternoon[or]PM[or]o'clock[at random]";
		otherwise if hours is less than 10:
			now am-pm is "[one of]in the evening[or]PM[or]o'clock[at random]";
		otherwise if hours is less than 10:
			now am-pm is "[one of]at night[or]PM[or]o'clock[at random]";
	otherwise if hours is 12:
		now am-pm is "noon";
	if difference entry is less than 0:
		say "[one of]just [or]only [or]still only [or]roughly [or]around [or]about [at random]";
	if difference entry is greater than 0:
		say "[one of]already [or]nearly [or]around [or]about [at random]";
	if hours is:
		-- 12:
			if am-pm is "noon":
				say "[one of]noon[or]twelve noon[or]12[or]lunch time[or]midday[at random]";
			otherwise:
				say "[one of]twelve midnight[or]midnight[or]the middle of the night[at random]";
		-- otherwise:
			say "[one of][hours in words] [am-pm][or][hours in words][at random]";
	say " in [locale entry]".

To say random-spot:
	choose a random row in the Table of Time Differences;
	say "[locale entry]".


Table of Time Differences
difference (a number)	locale (a text)
11	"[one of]Sydney[or]Melbourne[or]Canberra[or]Vladivostok[at random]"
9	"[one of]Seoul[or]Tokyo[at random]"
8	"[one of]Perth[or]Hong Kong[or]Manila[or]Beijing[or]Taipei[or]Shanghai[at random]"
7	"[one of]Bangkok[or]Hanoi[or]Jakarta[at random]"
5	"[one of]Tashkent[or]Islamabad[or]Lahore[at random]"
4	"[one of]Moscow[or]Dubai[at random]"
3	"[one of]Minsk[or]Khartoum[or]Nairobi[or]Baghdad[at random]"
2	"[one of]Cape Town[or]Athens[or]Johannesburg[or]Helsinki[or]Bucharest[or]Cairo[or]Jerusalem[at random]"
1	"[one of]Budapest[or]Berlin[or]Paris[or]Algiers[or]Brussels[or]Kinshasa[or]Zagreb[at random]"
-3	"[one of]Santiago[or]Buenos Aires[at random]"
-4	"[one of]Halifax[or]La Paz[at random]"
-5	"[one of]Philadelphia[or]Atlanta[or]Indianapolis[or]Detroit[or]Columbus[or]Havana[or]Miami[or]Toronto[or]Ottawa[or]Kingston[or]DC[or]New York[or]Boston[at random]"
-6	"[one of]Winnipeg[or]Houston[or]Minneapolis[or]Chicago[or]New Orleans[or]San Salvador[at random]"
-7	"[one of]Denver[or]Edmonton[or]Phoenix[or]Salt Lake City[at random]"
-8	"[one of]San Francisco[or]San Fran[or]Portland[or]Seattle[or]Vancouver[or]LA[or]San Diego[at random]"
-9	"Anchorage"
-10	"[one of]Kiritimati[or]Honolulu[at random]"
-11	"[one of]Suva[or]Auckland[at random]"

Section 3 - Time Tests - Not for release

Test time-settings with "tempus / clock advance / tempus / clock advance / tempus / clock advance / tempus / clock advance / tempus / clock advance / tempus / clock advance".

Understand "Tempus" as time-testing. Time-testing is an action out of world.

Carry out time-testing:
	say "It's [time-elsewhere]."

Understand "clock advance" as advancing-clock. Advancing-clock is an action out of world.

Carry out advancing-clock:
	now the current daytime is the daytime after the current daytime.

Report advancing-clock:
	say "It is now [current daytime]."


Section 4 - Time since fix

[Workaround for the Inform 7 quirk that "time since" by default is negative for things that happened yesterday, which could make scenes never end.]

Include
(-

! ==== ==== ==== ==== ==== ==== ==== ==== ==== ====
! Time.i6t: Scene Questions (modified)
! ==== ==== ==== ==== ==== ==== ==== ==== ==== ====

[ SceneUtility sc task;
    if (sc <= 0) return 0;
    if (task == 1 or 2) {
	    if (scene_endings-->(sc-1) == 0) return RunTimeProblem(RTP_SCENEHASNTSTARTED, sc);
    } else {
	    if (scene_endings-->(sc-1) <= 1) return RunTimeProblem(RTP_SCENEHASNTENDED, sc);
    }
    switch (task) {
	    1:
		    if (the_time >= scene_started-->(sc-1)) ! current time is the same or later than scene starting time, so no change
			    return (the_time - scene_started-->(sc-1))%(TWENTY_FOUR_HOURS);
		    else ! current time is less than scene starting time, so add a day to current time
			    return ((the_time+TWENTY_FOUR_HOURS) - scene_started-->(sc-1))%(TWENTY_FOUR_HOURS);
	    2: return scene_started-->(sc-1);
	    3:
		    if (the_time >=scene_ended-->(sc-1)) ! current time is the same or later than scene ending time, so no change
			    return (the_time - scene_ended-->(sc-1))%(TWENTY_FOUR_HOURS);
		    else ! current time is less than scene ending time, so add a day to current time
			    return ((the_time+TWENTY_FOUR_HOURS) - scene_ended-->(sc-1))%(TWENTY_FOUR_HOURS);
	    4: return scene_ended-->(sc-1);
    }
];

-) instead of "Scene Questions" in "Time.i6t".


Chapter 2 - Scenes

Section 1 - Recovering Stowed Objects

Playing to plan is a scene. Playing to plan begins when play begins. Playing to plan ends when High Street is visited.

When playing to plan ends:
	now the current daytime is early afternoon;
	record "Finished tutorial mode" as an achievement;
	say "From a loudspeaker nearby comes the electronic sound of simulated bells ringing the hour after noon. It's later than I thought. [We][']d better get a move on."

Section 2 - Looking for Transport

Seeking transport is a scene. Seeking transport begins when playing to plan ends. Seeking transport ends when the Counterfeit Monkey is visited.

When seeking transport ends:
	now the farmer is nowhere;
	now the farmer's stall is nowhere; [We want to give the sense of change here, and also get the farmer out of the way before he can be transformed into a FAME abstraction.]
	repeat with item running through quips in quip-repository:
		if item is a location-questioning quip and item is not where there seems arbot:
			now item is nowhere;
	now the current daytime is mid afternoon;
	assign "Ask people around here if they've seen Slango";
	say "...and... Slango is not here.

This is bad. Even I can see this is bad. What happened to your confidence in your team? Where are the guys who are supposed to get us out of here?

Something must have gone wrong.";

Section 3 - Missing Slango

Seeking Slango is a scene. Seeking Slango begins when Seeking transport ends. Seeking Slango ends when Slango is seen.

When seeking Slango ends:
	[remove the protesters from play;]
	now the current daytime is late afternoon.

Section 4 - Academia

Seeking invite is a scene. Seeking invite begins when Seeking Slango ends. Seeking invite ends when the player carries the invitation.

When seeking invite ends:
	record "acquiring a sought-after invitation" as achieved;
[	say "[command prompt]";
	custom-wait for any key;
	say "[paragraph break]I'm not sure I can handle this. The university stuff is one thing. I know my way around here. But [we] could be about to get into some real trouble. And I can tell you don't believe my plan has a chance of doing much good. You don't, do you? >>";
	if the player consents:
		say "[line break]Heh. I don't think you mean that, but it's kind of you to humor me.";
	otherwise:
		say "[line break]No. But you're right: for good or ill, [we][']ll be out."]

Before going to University Oval:
	if "Trace Brock's movements at the antique shop" is completed:
		make no decision;
	if the number of entries in the path so far of the player is greater than 1:
		say "[path-walked so far][paragraph break]";
	otherwise:
		clear the path-walked for the player;
	now approach-destination is Samuel Johnson Hall;
	say "There are a couple of All-Purpose Officers standing not-that-inconspicuously around campus. I still think we could walk around in there if we wanted to, but you aren't all that keen. And I guess it is possible that they're looking for students associated with the protests today." instead.


Section 5 - Higgate's Arrest

[Because we need to stop you so that you see the scene if you're just passing through:]
After going to University Oval:
	if (the invitation is handled and higgate-arrested has not happened) or (activist is in University Oval and activist does not recollect at least three quips):
		let N be the number of entries in the path so far of the player;
		if N is greater than 0:
			say "[path-walked so far][paragraph break]";
		otherwise:
			clear the path-walked for the player;
		unless final destination is University Oval:
			now approach-destination is Samuel Johnson Hall; [Tricks the approaching verb into stopping here even if you're trying to reach someplace really far away.]
	continue the action.
		[custom-pause the game. ]

Higgate-arrested is a scene. Higgate-arrested begins when the location is University Oval and seeking invite has ended.


When Higgate-arrested begins:
	now officers are in the location;
	now Professor Higgate is not alert;
	now Professor Brown is not alert;
	move Professor Brown to the location;
	move Professor Higgate to the location;
	say "There are a couple of officers lounging by the university gate. We won't be able to go by without being seen.

As I'm taking this in, you notice hubbub behind us. We move out of the way as more officers escort Professor Higgate from the building.";


Some officers are a man. Understand "officer" or "police" as the officers. The description of the officers is "I don't see anyone I recognize. There are two escorting Higgate and two more at the oval gate, as backup [--] presumably in case she decided to make a run for it."

A dangerous destruction rule for the officers:
	say "The moment the officers change, two more come running through the gate. Might have known they wouldn't be operating without backup.

One of them fires a restoration gel rifle into the group, restoring the officers to their original form. The other has an authentication scope and sweeps the grounds for signs of anything suspicious. We're noticed and arrested almost at once.

'What is going on?' Higgate demands. Her glance skates over us. There's a look in her eyes that says she has a guess who we are and she's not at all eager to have that guess confirmed.";
	end the story saying "That was not the best moment to intervene"

Instead of saying hello to Higgate during Higgate-arrested:
	if we are forewarned:
		say "We approach Higgate, heart hammering. 'Professor Higgate, is everything all right?'

The officer nearest us turns on us, looking more startled than anything else [--] startled that anyone would be fool enough to intervene in a Bureau matter.

'She's a student,' Higgate says. 'I was just speaking with her earlier. I don't think she's close with Alex. I've never seen you two together, have I?' she concludes, looking at us.

This well-meant speech doesn't seem to clear suspicion as effectively as Higgate might have hoped, however, and soon we find ourselves being scooped up for questioning in the same van they sent for Higgate. It doesn't go well.";
		end the story saying "Perhaps silence would've been better"

Instead of saying hello to officers during Higgate-arrested:
	if we are forewarned:
		say "'Sir,' we begin.

'Back off, lady,' says the officer. [getting-caught]";
		end the story saying "That was not the most successful approach"

To say getting-caught:
	say "'Unless you know where to find Alex Rosehip. You a friend of his?'

We shake our head, but something about our appearance and demean[our] has the officer's attention. 'I see a little bit of a family resemblance, come to think of it,' he remarks.

'Everyone's related to everyone,' Higgate says. 'If you check into DNA studies of the island you'll find that it's extremely inbr[--]'

'Thank you, Professor Higgate, you can save the rest of your lecture for inside the van,' says the escorting officer. 'And you come too,' he adds, to us.";

higgate-arrest-warning is a truth state that varies.

To decide whether we are forewarned:
	if higgate-arrest-warning is true:
		decide yes;
	say "We might not want to attract attention if we can help it.";
	now higgate-arrest-warning is true;
	decide no.

Instead of approaching somewhere during Higgate-arrested:
	if we are forewarned:
		say "We start to stroll off. The officer nearest us notices. 'I'm going to have to ask you to stay where you are until we've completed our sweep of the area,' he says. [getting-caught]";
		end the story saying "Maybe standing still would have been better".
Instead of going somewhere during Higgate-arrested:
	if we are forewarned:
		say "We start to stroll off. The officer nearest us notices. 'I'm going to have to ask you to stay where you are until we've completed our sweep of the area,' he says. [getting-caught]";
		end the story saying "Maybe standing still would have been better".

Instead of examining Professor Brown during Higgate-arrested:
	say "He's standing some feet away but not actually walking off. It's not clear whether he expects the officers to ask him other questions, or whether he's lurking [--] guiltily? gleefully? [--] to discover the outcome of his little tip.

When we try to meet his eye, he stares away at a tree."

Instead of examining Professor Higgate during Higgate-arrested:
	if the number of filled rows in the Table of Arrest Events is 1:
		say "There's an empty look in her eyes, as though she'd just been diagnosed with an inoperable cancer. She's thinking about Cold Storage. Anyone would be.";
	otherwise:
		say "She mostly looks irritated, as though she thinks the Bureau has made an awkward mistake that will soon be set right. There's a bit of a flush in her cheeks."


Every turn during Higgate-arrested:
	repeat through the Table of Arrest Events:
		if there is a description entry:
			say "[description entry][paragraph break]";
			blank out the whole row;
			break;

Table of Arrest Events
description
"'There's been a mistake,' Higgate is saying coolly. 'That conversation was conducted under a special lic[ense] for research in constructed languages. I can produce a copy [--]'

The officer leading her says, 'We're acting on information.' He gives a quick, revealing glance in the direction of Professor Brown, who is also coming out of the building."
"'Alex Rosehip,' says the officer with Higgate. The back of my neck prickles. 'What can you tell me about his constructed language?'

Higgate stops moving forward and the officers stop with her. 'It really is a masterpiece [--] the root words are all based on resources common in the tropics. Dirt and mud are highly productive terms, as are many common pests. The syllables are consonant-dense but still relatively easy to pronounce. In my view, it's the most credible proposal ever put forward in utopian linguistics.'

The officer smiles faintly. 'Isn't that a bit like [']the world's most credible proposal for a perpetual motion engine[']?'"
"'Whether it works or not, I [i]am[/i] sure it's not intended as an attack on the Anglophone efficacy,' Higgate says. 'Alex has a fine mind but very little gumption. And he loves Atlantis.'

'As far as you're aware,' the officer replies.

'Obviously,' Higgate snaps. 'I can only tell you what I know of Alex from five years of close supervision.'

The officers look at one another, then back at her. 'We're going to need to continue this conversation in depth.'

A stricken expression crosses Higgate's face."
"'I'd like to make a call,' Higgate says.

'Not possible,' says the man at her elbow.

'I assert my right to a friendly witness,' she says firmly. They ignore her."

Instead of waiting during Higgate-arrested:
	say "Time crawls by[one of]. We're looking as harmless and inattentive as humanly possible[or][stopping]."

Higgate-arrested ends when the number of filled rows in the Table of Arrest Events is 0.

When Higgate-arrested ends:
	now the officers are nowhere;
	now Professor Higgate is nowhere;
	now Professor Brown is nowhere;
	say "The officers sweep Higgate away into a windowless van. 'Mobile Conversation Unit,' says the side of the van in bright cheery letters. 'The Bureau Is Listening to YOU!'

The van pulls away into traffic. Brown strolls away in the other direction, not meeting anyone's eye. It's not easy getting tenure around here."



Section 6 - Pinata Celebration

Pinata Celebration is a scene. Pinata Celebration begins when the player encloses the invitation. Pinata Celebration ends when the hanging Atlantida figure is not in Tall Street.

Rule for distantly describing Tall Street when Pinata Celebration is happening:
	say "The whole of Tall Street is crowded with families."

Instead of listening to Tall Street during Pinata Celebration:
	try listening to the assembled families.

Instead of listening to assembled families:
	say "[one of]'Mommmmmy,' whines one of the children. 'When does the candy come out?'[or]They are muttering about how solid the Atlantida figure seems to be this year.[or]'It just goes to show,' one of the bureau officials says to another. 'The spirit of the Atlantean people cannot be broken!'[at random]"

Instead of going south from Tall Street during Pinata Celebration:
	say "[if the player is hurrying][path-walked so far][report-followers][paragraph break]We get as far as Tall Street, but no further. [end if]The Bureau entrance is temporarily blocked by all the excited families on the stairs, trying to destroy the cardboard figure of Atlantida. ";
	unless the player is hurrying:
		say paragraph break;
	now the player is staid;

When Pinata Celebration begins:
	move the hanging Atlantida figure to Tall Street;
	move the assembled families to Tall Street;
	now the current daytime is sunset;
	now the description of Tall Street is "Tall Street is full of families, some reaching as far as the old park at the east end of the street.

They're gathered around [if boldening is true][bold type][end if]a hanging cardboard figure[roman type] in front of the Bureau of Orthography. The children, and a few of the adults, are taking turns hitting it with sticks, hoping for a shower of comma-shaped candy. This is a common holiday activity, but from the disgruntled comments and the petulant expressions of the children, it has already been going on longer than is strictly fun."

When Pinata Celebration ends:
	if the player is in Tall Street:
		say "The children gather their heaps of candy and a few scoops of glittery confetti as well, but eventually trickle away again with their parents, returning through the park or down side streets or to their cars.";
	now the assembled families are nowhere;
	record "breaking the Spirit of Atlantis (in cardboard form)" as achieved;
	now the description of Tall Street is "Tall Street has a distinctive post-party look, with confetti and glitter on the ground, and shreds of destroyed cardboard everywhere. It is quiet now, however.";
	move confetti mess to Tall Street.

A confetti mess is scenery. Understand "glitter" as the confetti mess. The description is "Blue, white, and silver glittery confetti is all over the place. The individual bits look like punctuation marks, commas and periods and the odd hash sign or ampersand."

The hanging Atlantida figure is a closed container. It is scenery. The description is "The figure is made of cardboard and papier-mâché, designed for children to hit with sticks until candy and treats fall out: it's what would be called a piñata, if that weren't a dangerous loan word.

This particular one is made in the shape of Atlantida. She wears Bureau blue and a surreal smile and her eyes have been painted on wrong."
Understand "piñata" as the hanging Atlantida figure.

Some assembled families are a plural-named man. They are scenery. The description is "There are children of all ages carrying sticks and blindfolds they brought from home, as well as bags to scoop up the candy when everything is over. Parents, looking variously indulgent or bored. A couple of bureau officials, come out from the Rotunda to make sure that everything goes well." Understand "family" or "parents" or "parent" or "child" or "children" or "officials" or "bureau officials" or "bored" or "crowd" or "people" or "person" as the assembled families.

Every turn during Pinata Celebration:
	if the location is Tall Street:
		if a random chance of 2 in 3 succeeds:
			say "[one of]Another child takes a whack at [if boldening is true][bold type][end if]the hanging figure[roman type]. She bounces away from the blow, but does not break[or]The latest child's attack swings wide of the figure[or]The next child doesn't seem to have been properly blindfolded and connects with surprising dexterity and sureness, but the thing doesn't break[or]Among a general rumble of assent, one of the fathers gives Atlantida a hard smack with a baseball bat. She doesn't crack[cycling].";
	if the location is Abandoned Park:
		if a random chance of 2 in 3 succeeds:
			say "[one of]From the west comes a sound of cheering and shouting[or]The crowd to the west boos as one[at random]."

Sanity-check cutting the hanging Atlantida figure with an edged thing:
	say "I believe that would be considered very poor sportsmanship; one should at least try to play along in the spirit of the game." instead.

Instead of listening to Abandoned Park during Pinata Celebration:
	say "The crowd to the west is noisy and getting noisier."

Instead of taking the hanging Atlantida figure:
	say "Stealing the figure would certainly go over badly with the assembled families."

Understand "blindfold" as a thing when the item described is blinding.


Definition: a thing is a blindfold:
	if it is not wearable:
		no;
	if it is not floppy:
		no;
	if the heft of it is 1:
		yes;
	no.

Instead of wearing a blindfold thing when the Atlantida figure is in location:
	try blindfolding the player with the noun instead.

After printing the name of something blinding while taking inventory:
	say "[roman type] (worn as a blindfold)";
	omit contents in listing.

Understand "blindfold [something] with [something preferably held]" as blindfolding it with. Blindfolding it with is an action applying to one thing and one carried thing.

Does the player mean blindfolding the player with a blindfold thing:
	it is very likely.

A thing can be blinding. A thing is usually not blinding.

Sanity-check blindfolding something which is not a person with something:
	say "[We] can only blindfold people." instead.
Sanity-check blindfolding someone with something which is not wearable:
	say "[The second noun] cannot be worn at all." instead.
Sanity-check blindfolding someone with something which is not floppy:
	say "[The second noun] [are] too stiff to wrap around one's face." instead.
Sanity-check blindfolding someone with something when the heft of the second noun is greater than 1:
	if the second noun is not wearable or the second noun is not floppy:
		make no decision;
	say "[The second noun] [are] too substantial to tie neatly around the eyes." instead.
Sanity-check blindfolding someone who is not the player with something:
	say "Better let people apply their own blindfolds, if they're so inclined." instead.

Sanity-check blindfolding the player with something when the player wears a blinding thing (called other strip):
	say "[We][']ve already got [the other strip] tied over our eyes." instead.

Check blindfolding the player with something when the player wears something which covers the face-area:
	while the player wears something (called blockage) which covers the face-area:
		try taking off the blockage;
		if the player wears the blockage:
			stop the action.

Check blindfolding the player with something when the player wears something which covers the head-area:
	while the player wears something (called blockage) which covers the head-area:
		try taking off the blockage;
		if the player wears the blockage:
			stop the action.

Carry out blindfolding the player with something:
	now the player wears the second noun;
	now the second noun is blinding.

Report blindfolding the player with something:
	say "[We] tie [the second noun] over our eyes. To be honest, it only partially obscures our vision; [we] still have a pretty good idea where everything is." instead.

Instead of going somewhere when the player wears a blinding thing:
	say "I'd prefer [we] didn't try to navigate in this half-sighted way. It's enough of a trick sharing the steering when we can both see."

Instead of looking when the player wears a blinding thing:
	let item be a random scenery thing in the location;
	say "[We] can only make out a little of our surroundings. I think the thing in front of [us] might be [an item]";
	if the hanging figure is in location and the hanging figure is not the item:
		say ". And the hanging figure is just in striking range.";
	otherwise:
		say "."

A first smarter parser rule when sp_normal:
	if input starts with "(attack|punch|destroy|kill|murder|hit|thump|break|smash|torture|wreck)" and the latest parser error is the can't see any such thing error:
		rule succeeds;
	if input starts with "blindfold" and the latest parser error is the can't see any such thing error:
		rule succeeds;
	if input starts with "wear" and input contains "blindfold" and the latest parser error is the can't see any such thing error:
		rule succeeds.

Carry out taking off something which is blinding:
	now the noun is not blinding.

Understand "wear [something] as a blindfold" or "wear [something] as blindfold" or "wear blindfold" as blindfold-wearing. Blindfold-wearing is an action applying to one carried thing.

Rule for supplying a missing noun when blindfold-wearing:
	if the player encloses a blindfold thing (called B):
		now the noun is B;
	otherwise:
		say "[We] don't seem to be carrying anything suitable." instead.

Check blindfold-wearing:
	try blindfolding the player with the noun instead.

Understand "remove blindfold" or "take off blindfold" as blindfold-removing. Blindfold-removing is an action applying to nothing.

Check blindfold-removing:
	if the player wears a blinding thing (called B):
		try taking off B instead;
	otherwise:
		say "[We] [are] not wearing a blindfold."

Instead of attacking the Atlantida figure with something when the player does not wear a blinding thing:
	say "It's not sporting to strike the figure unless [we] [are] blindfolded; it's part of the rules. If no official blindfold is forthcoming, [we] might be able to make do by wearing some appropriate strip of cloth."

Carry out attacking the hanging Atlantida figure with something:
	now the hanging Atlantida figure is nowhere;

Report attacking the hanging Atlantida figure with something:
	if the second noun is the arm:
		say "Someone in the audience gasps as we hold up the severed arm. A small child is crying. ";
	say "[We] take a good swing with [the second noun] and connect, finally, with [the noun].

There is a resounding crack!

The crowd roars with approval, and dozens of small bodies surge around us so that I almost lose our balance. [We] push our [random blinding thing] up out of our way.

The ground is covered with glitter and candy and confetti; the Atlantida has broken open at the torso.";
	now every blinding thing is not blinding;
	stop the action.



Section 7 - Fireworks

Fireworks is a scene. Fireworks begins when Pinata Celebration has ended and the time since Pinata Celebration ended is at least 2 minutes. Fireworks ends when the number of filled rows in the Table of Pyrotechnics is 0.

[Instead of going to a room during Fireworks:
	say "[We] [are] relishing the not moving for a moment."]

When Fireworks begins:
	now the firework display is part of the sky;
	[if the player can see the sky:
		say "The sky cracks with a tremendous boom, and you register a flash of golden fire overhead.";
	otherwise:
		say "There is a huge distant noise. Something is happening to the sky.";
	say "Slango takes one look at us and wraps us in a blanket. 'Stay here,' he says firmly. ";
	if the player encloses the rock or the roc is visible:
		now Brock is in Brock's Stateroom;
		now the rock is in the repository;
		now the roc is in the repository;
		say "He gels Brock back into existence and the two of them walk away.";
	otherwise:
		say "He walks away. A moment later, the ship engines start up.";
	now Slango is in the command chair;
	now Slango is seated.]



Every turn during Fireworks:
	repeat through the Table of Pyrotechnics:
		if the sky is in location:
			say "[description entry][paragraph break]";
		otherwise:
			say "[noise entry][paragraph break]";
		blank out the whole row;
		make no decision;

Table of Pyrotechnics
description	noise
"A silver rocket shoots up into the sky and bursts into a dozen tiny pinwheels like floating silver asterisks."	"There is a long whistle, a peppery burst. The fireworks must have started outside."
"Four red jets of fire appear over the old city turret. They shape into a cloud of red smoke, curling into very plausible quotation marks before dissipating."	"There is a distant roar like a hissing dragon."
"A thousand tiny golden double-dagger symbols material[ize] like stars and wink out."	"It sounds as though the sky is making popcorn."
"A delicate green flame leaps into the darkness and [--] elegant as a swimming fish [--] chases its own tail to form an @ overhead."	"The sky is temporarily very quiet."
"Something booms in the old city turret [--] something shot out of the deplural[izing] cannon! But it is not deplural[izing] shot. It is a ball of fire that arcs out over the harbor. At the height of its parabola it fragments and forms a gorgeous blue seriffed A over the water. The symbol and flag of Anglophone Atlantis."	"There is a deep boom of cannon fire."

Instead of examining the sky when firework display is part of the sky:
	say "Over the island, the fireworks are shooting off from the old city walls, in hon[our] of Serial Comma Day."

The firework display is a distant thing. The description is "The end of the last burst is fizzing into nothingness." Understand "fireworks" or "rockets" or "rocket" or "fire" or "flame" or "symbols" as the firework display.




Section 8 - Tracking Down Brock

Seeking Brock is a scene. Seeking Brock begins when Seeking invite ends. Seeking Brock ends when cold dilemma ends.

When Seeking Brock ends:
	now the current daytime is evening;
	now the sun is nowhere;

Section 9 - Escape

Landing is a scene. Landing begins when Seeking Brock ends. Landing begins when the location is the Precarious Perch. Landing ends when the location is nautical.

Definition: a thing is unoriginal if it is not original.

When Landing ends (this is the set us up on yacht rule):
	let b-target be nothing;
	if Brock is in the repository:
		repeat with item running through things proffered by Brock:
			if item is enclosed by location:
				now b-target is item;
	if b-target is not nothing:
		say "Slango gels [the b-target] easily enough. Then he and Brock turn the restoration gel on us. Slango ";
		move b-target to the repository;
	otherwise:
		say "Before we can really start a conversation, Slango has a rough go at us with a washcloth and a tub of restoration gel. He ";
	say "is determined to separate you from me before he has a real talk with either of us; and it's not until a number of swipes in that he realizes how wrong things are.

'This isn't working,' he remarks, tossing the gel and washcloth aside.

'We're fused,' [we] explain, not very coherently. 'Something happened. I don't know if it can be fixed.'[line break]";
	if Brock is in the repository:
		say "Brock looks at us for a long moment and then turns away. He vanishes into the galley.

'I'm sure he's just gone to get you a cup of tea,' Slango says. He takes a deep breath, stands. 'The T-inserter specs better be worth what Brock says they are.'[line break]";
	otherwise:
		say "'And Brock?' Slango demands. 'Have you got him?'

[We] shake our head. 'But he'll be released soon,' [we] say. 'I'm pretty sure I've seen to that.'

'Pretty sure,' Slango repeats.

[We] just look at him.

'Okay,' he says, though it isn't. 'Okay.' And he goes to the cockpit and fires up the engine, while we watch the lights of Atlantis get farther away and finally dim.";
	now Slango is not alert;
	now Brock is not alert; [we don't want them both asking questions constantly]
	now the initial appearance of Brock is "Brock is leaning against the railing, looking up at the town.";
	record "returning to the yacht" as achieved;
	complete "Return to yacht";
	rapidly set all contents of the player marked for listing;
	repeat with item running through marked for listing things:
		if the oil-paintings proffer the item:
			now the oil-paintings are stolen;
		if the item is part of something:
			next;
		otherwise if the item is the restoration gel:
			next;
		otherwise if the item is edible:
			now the item is in galley cabinet;
		otherwise if the item is wearable:
			now the item is in wardrobe;
		otherwise if the item is freaky:
			now the item is in the galley refrigerator;
		otherwise if the item is the roll of bills or the item is the flash drive:
			let the target be a random drawer which is part of your bed;
			now the item is in the target;
		otherwise if the item is long:
			now the item is in Sunning Deck;
		otherwise if the secret-plans proffer the item:
			now the item is on the built-in table;
		otherwise if the item is essential:
			now the item is in Brock's Stateroom;
		otherwise if the item is the plural-pots or the item is a pot:
			now the item is on the galley stove;
		otherwise:
			let the target be a random drawer which is part of your bed;
			now the item is in the target;
	rapidly set all things not marked for listing;
	now every thing is not essential;
	now the island is nowhere;
	now the the oar is nowhere;
	now the sun is part of the sky;
	now the current daytime is early afternoon;
	move cathedral-view backdrop to all outdoors nautical rooms; [change the scenery; we've gone to Mallorca]
	custom-pause the game;
	complete "Escape the Bureau";
	say "[dreams]";
	custom-pause the game;
	say "[i]72 hours later[/i][paragraph break]";
	now the player is in your bed;
	now the player is reclining;
	move Brock to the Sunning Deck;
	assign "Check out the paper and see what's going on";
	move the newspaper to the built-in table;
	now Slango is nowhere;
	follow the compass-drawing rule;


Table of Ultratests (continued)
topic	stuff	setting
"roc-flight"	{ rock, letter-remover }	Precarious Perch

Test roc-flight with "tutorial off / unmonkey / unslango / autoupgrade".

Rule for writing a topic sentence about the newspaper when the newspaper is on the built-in table:
	say "Today's [newspaper] is laid out prominently on [the built-in table]. [no line break]";

Understand "paper" as the newspaper.

The description of the newspaper is "It's the Chard-Farmer's Daily from Atlantis. A huge headline is splashed across the front:

'REFERENDUM ANNOUNCED!'

The picture on the front shows the Atlantida statue decked out with lights like a Christmas tree and people posing next to her for pictures.

My father has been promoted, apparently, to something called the Provisional Committee for Orthographic Reform. He is quoted as saying that the amnesty for Cold Storage prisoners is an important step forward. 'Of course, government by citizen referendum brings its own problems, and further constitutional work may be needed if we mean to bring Atlantis in line with the European Union.'"

[Before reading a command when Landing has happened:
	if Brock is enclosed by the location and Slango is enclosed by the location:
		now addressing everyone is true;
	otherwise:
		now addressing everyone is false;]

To say dreams:
	say "In the rocking boat, with the sound of the motor beneath us, you dream[paragraph break]";
	say "of a ceremony on a clifftop with our two families seated looking on, and us in a long white dress, carrying a bouquet of scrabble tiles, walking down an aisle alone to be formally unified with ourself[paragraph break]";
	if Brock recollects Brock-smoochies:
		say "of Brock painting the letter A between your breasts while you alternately laugh and tell him off for not using a seriffed letter form[paragraph break]";
	say "of wearing a suit and meeting with some very rich men to talk about how to bring my language to Africa, and Brock giving us advice about how to handle them[paragraph break]";
	say "of gathering all the indigenous languages, all the little dying languages, all the languages shoved aside because they lack linguistic efficacy, into a firefly bottle, where their letterforms flicker desperately[paragraph break]".


Section 10 - Goodbye

[Writing the end of this game was insanely hard and went through many revisions and even arguments. Originally the game was quite a bit shorter, didn't include the Atlantida confrontation, and did end with the characters returning to the yacht and successfully gelling themselves into two people. But that felt wrong and disappointing, because it meant that the characters winning the game were neither of them the person you'd played.

Then I tried a variation where you only realize Alexandra is fused at the very end, when trying to put on the gel and having it not work. That solved one problem, but introduced another. There was no fictive explanation for what had happened; and it felt like a cliff-hanger, like it was setting up for one or more sequels in which Alexandra runs around the Mediterranean stealing stuff and looking for a tool that can de-synthesize her. Very briefly I was even delusional enough to think such sequels could happen. Then I considered the fate of every series ever, and discarded that idea. I needed this game to work on its own.

Next up I added the choice where the player had to gel Brock or betray Alex's father, and that provided a fictive explanation for the fusion, but it was still weird having the results of the fusion explained only in the last move of the game. When the Atlantida scene came in, though, I realized I could incorporate that discovery into the action of her scene. Much better.

But we were not home free even when the endgame took on its current form. Graham argued that it should have an essentially happy ending: this is mostly an upbeat game, and the player has come through a lot and deserves a reward. I mostly agreed with this, especially when replaying it after some period away from the game. And Sam thought the rest of the game didn't really provide enough Alex v. Andra conflict to make that a major point of the ending. One of my testers, and I fear I can't remember who, said, 'look, this whole thing is basically a superhero origin story.' And at the end of a superhero origin story, the superhero is supposed to fire up her jet boots and fly off to the next world-saving adventure, right? So that made a lot of votes for putting a big smily face on the epilogue.

And yet. And yet. There are so many things that I felt were emotional loose ends, and it would be untruthful to just pretend they were fine. Alex and Andra are stuck with one another now, and while they may eventually work that out, it's got to be incredibly confusing and traumatic, especially given that they have different goals in life and that Alex, having been a straight cis-gendered male all his life, is not going to feel sexually at home in Alexandra's body. There's some possibility that they might be able to use linguistic tools to alter their gender back and forth if need be, but they're still going to be time-sharing in different bodies, rather than each having the one he or she would prefer.

What about Brock? Can he and Andra continue their relationship in some format, or is it just too weird now? Isn't any sexual experience involving Alexandra going to be effectively a threesome, and are all three of them okay with that?

Then there's the question of what's just happened. Brock and Andra successfully pulled off a big heist; do we morally approve? And Alex's utopian linguistic plans are very optimistic but full of issues when it comes to real-world application.

Finally what about Atlantida's replacement (assuming the player went that way)? Even if there's a new system that allows more frequent referenda, direct democracy of that kind tends to be pretty conservative. Most likely more major change is still needed.

So that's all a lot to worry about, some of it far too complex to wrap in a single scene. And then on top of that I wanted to do something that honored the choices that the player had made in the last portion of the game: it should matter to the ending whether we did or did not leave Brock behind, did or did not kiss him in the room with the T-inserter, did or did not replace Atlantida.

Finally, I knew that I did *not* want this to be an epilogue with puzzles. The puzzles should be over when the player finally reaches the yacht.

So then we had several drafts where the epilogue is that Brock effectively breaks up with Andra and Alex and Andra muse on how they're stuck with each other. These were gloomy! Then there was a try where Brock and Alexandra have a fairly enigmatic, truce-forming sort of conversation and then drive off into the waves. This was not very satisfying either.

Ultimately, I decided to back-load as ruthlessly as I could. Wherever possible, I took hints of future ambiguities or problems (how workable is Alex's plan? can it be afforded? would it wipe out or replace local cultures? would it be remotely welcomed by the people there? etc.) and moved them back into the main body of the game somewhere. Likewise, I dealt more extensively with Andra's sexual memories of Brock in order to set up that Alex is a bit uncomfortable with them, while trying to establish that Brock is a fairly patient guy who has already stuck with Andra through some sexual weirdness and might be willing to do so again, under the right circumstances.]

Farewell is a scene. Farewell begins when Landing ends.

Sanity-check going to the galley during Farewell:
	unless the player is wearing something which covers the legs-area:
		say "How about we put on some pants first?" instead;
	unless the player is wearing something which covers the torso-area:
		say "We should really be wearing something on top, don't you think?" instead.

Sanity-check taking off something which covers the legs-area during Farewell:
	unless the player is in your bunk or the player is in your head:
		say "I'd rather not disrobe in public. And this may not be public to you, but it is to me." instead.

Sanity-check taking off something which covers the torso-area during Farewell:
	unless the player is in your bunk or the player is in your head:
		say "I'd rather not disrobe in public. And this may not be public to you, but it is to me." instead.

When Farewell begins: now Brock is nowhere.

A ranking rule for Brock when Farewell is happening:
	decrease the description-rank of Brock by 100.

Farewell ends when the newspaper is examined.

When Farewell ends:
	pre-remove achievements option at game end;
	if atlantida-refreshed is seen:
		if the story viewpoint is first person plural or the story viewpoint is first person singular:
			say "[betrayed-outcome]";
		otherwise:
			say "[unbetrayed-outcome]";
	else:
		say "[no-atlantida-outcome]";
	end the story finally saying "The End";

To pre-remove achievements option at game end:
	read the achievements;
	if there is final response rule of list remaining achievements rule in Table of Final Question Options:
		let N be some text;
		let score be 0;
		if the new church is not visited:
			now N is "Priscilla Parsons award for winning the game without ever entering the church";
			unless N is a used achievement:
				increment score;
		if hardness is true:
			now N is "Andra award for completing the game in hard mode";
		else:
			now N is "Alex Rosehip award for completing the game in easy mode";
		unless N is a used achievement:
			increment score;
		if the oil-paintings are stolen:
			now N is "Roman 'Sticky' Fingerstain award for impromptu art theft";
			unless N is a used achievement:
				increment score;
		if score + the number of filled rows in Table of Possible Achievements >= number-of-achievements:
			choose row with final response rule of list remaining achievements rule in Table of Final Question Options;
			blank out the whole row.

To say no-atlantida-outcome:
	say "Brock comes down and hands us a coffee. You look like you could use this. We've hit Mallorca,' he says. 'Slango's in town resupplying.'

[We] nod.

'And the payment for our exploit is still coming through to the Swiss accounts, but we'll be millionaires.'

'All of us?'

'Well. Each of us, individually and severally.' He tips his head back and considers us. 'That may well be one of the most valuable technical heists in history, and you got a grand tour of the secret Atlantean bunker while you were at it. I'm only sorry I wasn't awake for that part.'

I know, me, that we could have done something more. That we could have left Atlantis with a new leader, one who'd open things up again. This way, there'll just be a bunch of infighting but the Bureau will remain how it always was. I wish—

You've pretty much stopped listening to me entirely, haven't you? And so I'm stuck here, just watching, while you pitch my flash drive and my monocle in a corner, and plot the fastest course to Portofino.

Still. I don't feel as homesick as I thought I would, because the one thing you can give me is this: you know how to put something behind you.".


To say unbetrayed-outcome:
	say "Brock comes down and hands us a coffee. 'You look like you could use this. We've hit Mallorca,' he says. 'Slango's in town resupplying. I guess you saw the paper?'

[We] nod.

'One for the history books,' he says, with a crooked smile. 'They're showing satellite clips. Big olive garland on the depluralizing tank. People dancing on cars. Some old guy belting out La Marseillaise in the Bureau Rotunda.'

Brock sits down opposite us. 'In other news,' he remarks, 'it looks like your cut of the T-inserter plans, with all the tests we ran, is going to come out to this.' He writes a number. The number has six zeroes.

He leans back and looks at us.

'So. Where do we go from here?'"


To say betrayed-outcome:
	say "Slango comes in, with Brock behind him. 'Bad news,' he says. 'We're going to have to split that payout three ways instead of two. The new Atlantida has a perverse sense of humor. She express-mailed Brock to Mallorca for us. In rock form.'

Brock bends down to massage his right thigh. 'Turns out it's not comfortable having spent the night in a cardboard box, even if you were petrified at the time. Things to know and learn.'

[We] study his face. It's the face he wears when he's reserving judgment about whether or not to be incredibly pissed off. You're the one who knows how to read that face, but I'm a little relieved to see it too.

'My father might've been inanimated instead,' I say.

'Slango mentioned,' Brock says.

'He's a lot older. I thought he might have some heart trouble or... or not deal with it well.'

Brock studies us for a moment more. Then he reaches into his pocket and pulls out a huge gummy candy shaped like a squid.

'Want one? They used them as packing material in my shipping box. We've got lots.'"


The print the final question rule response (A) is "[full-game achievements]Would you like to "

To say full-game achievements:
	if the story has ended finally:
		let line break needed be false;
		let N be some text;
		if the new church is not visited:
			now N is "Priscilla Parsons award for winning the game without ever entering the church";
			unless N is a used achievement:
				record N as an achievement;
				now line break needed is true;
		if hardness is true:
			now N is "Andra award for completing the game in hard mode";
		else:
			now N is "Alex Rosehip award for completing the game in easy mode";
		unless N is a used achievement:
			record N as an achievement;
			now line break needed is true;
		if the oil-paintings are stolen:
			record "Roman 'Sticky' Fingerstain award for impromptu art theft" as an achievement;
			now line break needed is true;
		if line break needed is true:
			say line break.


Schedule and Time ends here.
