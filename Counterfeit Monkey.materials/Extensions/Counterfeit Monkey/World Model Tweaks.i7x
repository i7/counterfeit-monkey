World Model Tweaks by Counterfeit Monkey begins here.

Use authorial modesty.


Book 4 - Default World Model Tweaks

Part 1 - Parsing and Verb Handling

Section 1 - Smarter Parser

[These libraries by Aaron Reed are designed to make life a little easier on the novice player, and sometimes even on the advanced player, by looking for common errors when there's a parser failure, and by giving the player a greater range of control when disambiguating items with related names.]

Include Smarter Parser by Aaron Reed.
Include Numbered Disambiguation Choices by Aaron Reed.

A command-string altering rule when the number of entries in list of disambiguables > 0 (this is the New Numbered Disambiguation Choices reset disambiguation id when no numbers in command rule):
	let disam-cmd be player-command-substitute;
	replace the text ")" in disam-cmd with " ";
	unless disam-cmd matches the regular expression ".*\d.*":
		follow the Numbered Disambiguation Choices reset disambiguables rule;
	otherwise:
		now player-command-substitute is disam-cmd.

The Numbered Disambiguation Choices reset disambiguation id when no numbers in command rule is not listed in any rulebook.

[For some reason the normal Does the player mean rule in NDC does not work when disambiguating quips, so we have to add this.]
Does the player mean discussing a quip (called target quip) when the player's command includes "1":
	if the disambiguation id of target quip is s1:
		it is very likely;
	otherwise:
		it is very unlikely.

[Use empty Smarter Parser rulebook.]

To announce the reparsed command:
	unless reborn command is empty:
		say "[first custom style]([unless saved Smarter Parser error is empty][saved Smarter Parser error] Retrying that as '[reborn command]'.)[roman type][command clarification break]".

To explain the reborn command:
	say "[first custom style][saved Smarter Parser error][roman type][line break]".

The unnecessary movement rule is not listed in any rulebook.
The too many words rule is not listed in any rulebook. [conversation commands can be quite long.]

The generic surroundings rule is not listed in any rulebook. [We don't want the left and right pans to trigger this.]

The stripping body parts rule is not listed in any rulebook. [We don't want the cardboard cutout to trigger this.]

[And we want to make sure that we're not listing tutorial prompts in the middle of command reparses:]

The offer new prompt rule is not listed in any rulebook.

Before reading a command when tutorial mode is true (this is the alternate new prompt rule):
	if sp reparse flag is false and identification is not happening:
		follow the instructional rules.

The new stripping adverbs rule is listed instead of the stripping adverbs rule in the Smarter Parser rulebook.

A smarter parser rule when sp_normal (this is the new stripping adverbs rule):
	if stripping "\w*ly" is fruitful and the number of words in the reborn command > 1 and the player's command does not include "apply/family":
		identify error as stripping adverbs rule;
		reparse the command.

The new signs of frustration rule is listed instead of the signs of frustration rule in the Smarter Parser rulebook.

A smarter parser rule when sp_normal (this is the new signs of frustration rule):
	if input contains "(dumb|moron|idiot|lame|duh|retard|suck|blow)(ic|ed|s)?" or input contains "(_swear|stupid|bored|boring|die|suicide|death|hate)":
		identify error as signs of frustration rule;
		reject the command.

The stripping failed with rule is not listed in any rulebook. [There are too many actions in the game where "with" IS fruitful, so this often gives a misleading response.]

The Smarter Parser simplify punctuation rule is not listed in any rulebook.

The scandalous standardize swears rule is not listed in any rulebook.

When play begins (this is the change smarter parse messages rule):
	choose row with SP rule of asking unparseable questions rule in the Table of Smarter Parser Messages;
	now the message entry is "[one of]If you're trying to converse with other characters, the suggestions in the text provide possible phrasings; so if you read 'I might ask about lentils.', you might phrase your command ASK ABOUT LENTILS. Introducing other words or variant phrasings that weren't part of the suggestion may confuse the game.

Alternatively, if you just want to take an action in the game world, try giving a direct command, such as EXAMINE THE ASP or WAVE THE P-REMOVER AT THE PHONEY[or]That does not seem to be a topic of conversation at the moment[stopping]."

Section 2 - Additional Parsing Lines for USE

[Wherever possible, we want USE THING to fall through to a plausible default behavior, which we do with a bunch of additional grammar lines:]

Understand "use [an edible thing]" as eating.

Understand "use [a wearable thing]" as wearing.

Understand "use [a closed openable container]" as opening. Understand "use [an open openable container]" as closing.

Understand "use [something preferably held] on [a locked lockable thing]" as unlocking it with (with nouns reversed). Understand "use [something preferably held] on [an unlocked lockable thing]" as locking it with (with nouns reversed).

Understand "use [a locked lockable thing]" as unlocking keylessly.
Understand "use [an unlocked lockable thing]" as locking keylessly.

Understand "use [a switched off device]" as switching on.

Understand "use [something]" as using. Using is an action applying to one thing. Carry out using: say "You will have to be more specific about your intentions."

Understand "use [paste] on/with [something]" as putting it on.

Understand "use [gel] on/with [something]" as putting it on.

Understand "use [tub] on/with [something]" as putting it on.

Understand "use [pistol] on [something]" as shooting it with (with nouns reversed).

Understand "use [a door]" as opening. Understand "use [an open door]" as entering.

Understand "use [something] on/with [something]" as using it on. Using it on is an action applying to two things. Carry out using it on: say "I'm not sure what you mean; maybe you could pick a more specific verb." instead.

Section 3 - Miscellaneous Verbs

[And by a similar token, these create preferences in the parser so that the game will try the most obvious items first:]

Understand the commands "revive" or "resuscitate" as "wake".

Understand the command "kick" as "attack".

Understand the command "ransack" as "search".

Understand the command "brush" as "clean".

Understand "brush off [something]" as rubbing.

Understand "eat [an edible thing]" as eating. Understand "wear [a wearable thing]" as wearing. Understand "open [something closed]" as opening. Understand "close [something open]" as closing. Understand "enter [something enterable]" as entering. Understand "enter [a door]" as entering.

Understand the command "chew" as "eat". [to cover the gum situation]

Understand "climb on/onto [something]" as climbing.

To abut is a verb. To back is a verb. To become is a verb. To blink is a verb. To bounce is a verb. To cease is a verb. To clamber is a verb. To clatter is a verb. To cock is a verb. To decide is a verb. To drip is a verb. To exclaim is a verb. To fall is a verb. To feature is a verb. To flee is a verb. To flicker is a verb. To flutter is a verb. To fold is a verb. To frown is a verb. To gag is a verb. To hop is a verb. To keep is a verb. To land is a verb. To leak is a verb. To leap is a verb. To make is a verb. To meet is a verb. To nod is a verb. To peer is a verb. To ping is a verb. To recite is a verb. To recoalesce is a verb. To recoil is a verb. To reform is a verb. To regard is a verb. To remark is a verb. To rest is a verb. To revolve is a verb. To scrabble is a verb. To scramble is a verb. To shake is a verb. To shatter is a verb. To shift is a verb. To shy is a verb. To slip is a verb. To stare is a verb. To strike is a verb. To wish is a verb. To withdraw is a verb.

[Before eating something which is not carried by the player:
	try taking the noun;
	if the player does not have the noun, stop the action. ]

The basic accessibility rule does nothing when wearing something which is in the backpack.

Before wearing something which is not carried by the player:
	if the noun is worn:
		continue the action;
	try taking the noun;
	if the player does not have the noun:
		stop the action.

The basic accessibility rule does nothing when waving the letter-remover at something and the letter-remover is in the backpack.

Before waving the letter-remover at something when the letter-remover is not carried by the player:
	try taking the letter-remover;
	if the player does not have the letter-remover:
		stop the action.

Understand "plugh" or "xyzzy" or "frotz" or "plover" as a mistake ("What [we] do isn't magic. It's science.").

Understand "vomit" or "throw up" or "puke" or "barf" as a mistake ("[We] may feel a bit ill, but I don't think that's necessary.").

Section 4 - Miscellaneous Class Vocabulary

Understand "man" or "gentleman" or "guy" or "dude" or "boy" as a man. Understand "girl" or "gal" or "woman" or "lady" as a woman.

Section 5 - Sanity and Accessibility

The sanity-check rules are a rulebook.

This is the sanity-check stage rule:
	abide by the sanity-check rules.

The sanity-check stage rule is listed before the before stage rule  in the action-processing rules.

To decide whether (item - a thing) must be touched:
    if the item is the noun and the action requires a touchable noun, yes;
    if the item is the second noun and the action requires a touchable second noun, yes;
    no.

An accessibility rule (this is the no touching NPC stuff rule):
	if the touch-goal is enclosed by someone (called the owner) who is not the actor and the touch-goal must be touched:
		if the person reaching is the player:
			if the owner is distant:
				say "[The owner] is too far away.";
			otherwise:
				say "[We] don't dare invade the personal space of [the owner].";
		rule fails;
	make no decision.

A first accessibility rule (this is the go to location rule):
	if the location of the touch-goal is not the location of the player:
		let the target room be the location of the touch-goal;
		repeat with way running through directions:
			if the room way from location is target room:
				try going way;
				if the location is not target room:
					rule fails;
	make no decision.

Rule for reaching outside a car (called C) (this is the can't reach outside car rule):
	unless listening:
		try exiting;
		if the player is in C:
			deny access;
		make no decision.

To decide what object is the touch-goal:
	(- (untouchable_object) -).

Sanity-check inserting something (called the holder) into something which is enclosed by the holder:
	say "[We] can't put [the holder] into [themselves]." instead.

Sanity-check putting something (called the holder) on something which is enclosed by the holder:
	say "[We] can't put [the holder] on [themselves]." instead.

Sanity-check inserting something (called the target) into the target:
	say "[We] can't put [the target] into [themselves]." instead.

Sanity-check inserting something in a container (called the target) into the target:
	say "[The noun] [are] in [the target] already." instead.

Sanity-check putting something (called the source) on a supporter (called the target) when the source is on the target:
	say "[The source] [are] on [the target] already." instead.

Before taking something which is in a closed container (called the source):
	abide by the try reaching rules for the noun.

Check an actor inserting something into (this is the new can't insert what's not held rule):
	if the actor is carrying the noun:
		continue the action;
	if the actor is wearing the noun:
		continue the action;
	if the second noun is not a container:
		continue the action;
	carry out the implicitly taking activity with the noun;
	if the actor is carrying the noun:
		if the second noun is closed:
			abide by the try opening rules for the second noun;
		continue the action;
	stop the action.

The new can't insert what's not held rule is listed instead of the can't insert what's not held rule in the check inserting it into rulebook.

Instead of inserting something into a supporter which incorporates a drawer (called target drawer):
	try inserting the noun into target drawer.

Instead of inserting something into a supporter which incorporates an oven (called target oven):
	try inserting the noun into target oven.

Before inserting something held into a container which is in a closed container (called the source):
	abide by the try opening rules for the source;

Before inserting something held into a closed container (called the source):
	abide by the try opening rules for the source;

The try opening rules is an object-based rulebook.
The try reaching rules is an object-based rulebook.

A try opening rule for a container (called the box):
	unless the action is not silent:
		say "(opening [the box])";
	if the player is not in the box:
		if the box is not openable:
			say "[The box] [aren't] open.";
		otherwise:
			unless the box is locked:
				try opening the box;
			otherwise:
				say "[The box] [are] locked.";
		if the box is closed:
			abide by the cancel multiple rule.

A try reaching rule for something (called the target):
	let the outer-box be the holder of the holder of the target;
	let the box be the holder of the target;
	if the outer-box is a closed container:
		abide by the try opening rules for the outer-box;
	if the box is a closed container:
		abide by the try opening rules for the box;
	if the target is not touchable:
		say "[We] cannot reach [the second noun] from here.";
		abide by the cancel multiple rule.

Check inserting something heavy into something when the carrying capacity of the second noun is 1:
	unless the second noun is the t-inserter:
		say "[The noun] [are] too big to fit into [the second noun]." instead.

After opening an opaque container (called the box):
	if the box is open:
		mark contents of box visible;
		continue the action.

After closing an opaque container (called the box):
	if the box is closed:
		mark contents of box invisible;
		continue the action.

Sanity-check giving something held by someone (called the target) to the target:
	say "[The target] already [have] [the noun]." instead.

Sanity-check giving someone (called the target) to the target:
	say "[The target] [are] already self-possessed." instead.

Before inserting something which is worn into a container:
	try taking off the noun;
	if the noun is worn:
		stop the action.

Sanity-check eating an inedible thing:
	say "[The noun] wouldn't agree with [us] even if [we] were feeling better." instead.

Sanity-check wearing something which is not wearable:
	say "[one of]I don't see how you plan to do that, short of tying [the noun] to our head. (Hint: no.)[or][The noun] [aren't] wearable.[at random]" instead.

Sanity-check pushing someone to a direction:
	say "Only very small children are so easily steered." instead.

Sanity-check pushing a bird to a direction:
	say "[The noun] would just flutter out of shoving range." instead.

Instead of switching on or switching off or entering a person:
	say "Depending on what you mean by that, I either don't understand or else wish you wouldn't make those suggestions while we're sharing this body."

Sanity-check throwing a heavy thing at someone:
	if the second noun is attackable:
		say "That would certainly be a mighty blow if [we] could heft [the noun] in the first place." instead;
	else:
		say "Even if I were keen to throw things, [the second noun] is too heavy for flinging." instead.

Sanity-check throwing something at someone who is not attackable:
	if the second noun is an animal:
		say "I am not going to throw things at animals. I also don't like bb guns or slingshots." instead;
	say "I generally avoid flinging things at people." instead.

Sanity-check swinging a person:
	say "[one of]What, by the feet or something?[or]If you're thinking dance moves, I have two left feet. And so do you now, I suspect.[at random]" instead.

Sanity-check rubbing a person:
	if the noun is an animal:
		continue the action;
	say "[We] should keep our hands to ourselves." instead.

Instead of burning a person:
	try attacking the noun.

Sanity-check rebooting a person:
	say "[The noun] [are] not obviously a cyborg, so I'm not clear on how that would work." instead.

Sanity-check eating a person:
	say "You're just messing about with what I'll let our body do, aren't you?" instead.

Instead of smelling a person:
	if the scent-description of the noun is "":
		say "No particular od[our] is coming our way, which is fine by me." instead;
	otherwise:
		continue the action.

Sanity-check tying a person to something fixed in place:
	if the noun is an animal:
		say "I doubt whether it will help to hitch [the noun] to [the second noun]." instead;
	say "Maybe you're big on tying people up in your line of work, but I try to avoid the kidnapping, assault, and bondage charges." instead.
Sanity-check tying something fixed in place to a person:
	if the noun is an animal:
		say "I doubt whether it will help to hitch [the second noun] to [the noun]." instead;
	say "Maybe you're big on tying people up in your line of work, but I try to avoid the kidnapping, assault, and bondage charges." instead.

Sanity-check tying a person to something portable:
	say "I don't see the point of that suggestion." instead.
Sanity-check tying something portable to a person:
	say "I don't see the point of that suggestion." instead.

Sanity-check waving a person:
	say "That doesn't even make sense." instead.

Sanity-check buying a person:
	if the noun is an animal:
		say "This isn't a livestock sale." instead;
	otherwise:
		say "Slavery has never been legal on the island." instead.

Sanity-check searching a person:
	say "That might well be resented." instead.

Sanity-check opening a person:
	say "I'm not sure what you're imagining, but I at least am no surgeon." instead.

Sanity-check closing a person:
	say "I don't understand how that could be a meaningful action." instead.

Sanity-check wearing a person:
	say "Did we watch a little too much Silence of the Lambs at some point? I don't fancy wearing a suit made of [noun], thanks." instead.

Sanity-check searching the player:
	try taking inventory instead.

Sanity-check mounting a person which is not an animal:
	say "[The noun] [aren't] a ride-giving animal." instead.

Sanity-check climbing a person:
	say "[The noun] [aren't] [one of]a ladder[or]a tree[or]a staircase[or]a wall[at random]." instead.

Instead of searching or looking under or touching or rubbing or squeezing something which is worn by a person (called the proprietor):
	if the proprietor is the player:
		continue the action;
	otherwise:
		say "[The proprietor] might object."

Instead of searching or looking under or pushing or turning or pulling or touching or rubbing or waving or squeezing a floppy wearable thing which is not worn by a person:
	say "Nothing interesting turns up [--] no hidden pockets or unnoticed scraps of paper or the like."

Instead of looking under a person:
	if the noun is in the location:
		try facing down;
	otherwise:
		carry out the disclosing exterior activity with the noun;
		say paragraph break.

Instead of drinking something which is not fluid:
	if the noun is edible:
		say "I could see eating [regarding the noun][them], but no more.";
	otherwise:
		say "[one of]Even if [the noun] were liquid, [they] would still not be nice to drink[or]I don't fancy [noun] smoothie[at random]."

Understand "apply pressure to [something]" as pushing.
Understand "lean on [something]" as pushing.

Section 5 - Input string modification

[Changing the text of the player's command will re-run the tokenisation step. In order to make this happen less frequently and save some cycles, we have a custom rulebook, "the command-string altering rules" that runs at the beginning of the After reading a command stage, copies the player's command to a global string (player-command-substitute), operates on this instead of on the "player's command" array and then changes the text of the player's command once after the changes are done.

The reason we do it as a custom rulebook is to make sure that they run before any other After reading a command rules.]

Player-command-substitute is some text that varies. Player-command-substitute is initially "".

The command-string altering rules is a rulebook. The command-string altering rules have outcomes parsing fails (failure) and parsing continues (success).

A last command-string altering rule:
	parsing continues.

A first after reading a command rule (this is the alter the command-string rule):
	now player-command-substitute is the player's command;
	now player-command-substitute is player-command-substitute in lower case;
	follow the command-string altering rules;
	if the outcome of the rulebook is the parsing fails outcome:
		now player-command-substitute is "";
		reject the player's command;
	otherwise:
		change the text of the player's command to player-command-substitute;
		now player-command-substitute is "".

Part 2 - Senses

Section 1 - Smell and Taste

A thing has some text called the scent-description.

The scent-description of a person is usually "deod[our]ant".

A thing has some text called the flavor-description.

Instead of tasting something:
	if the flavor-description of the noun is "":
		if the noun is r-abstract:
			say "There's not enough there to provide much flav[our].";
		else:
			say "[regarding the noun][They] [taste] as I would have expected.";
	otherwise:
		say "[flavor-description of the noun].[paragraph break]".

Instead of smelling something:
	if the scent-description of the noun is "":
		if the noun is r-abstract:
			say "There's hardly any od[our] to [the noun].";
		else:
			say "[regarding the noun][They] [smell] as I would have expected.";
	otherwise:
		say "[regarding the noun][They] [smell] like [scent-description of the noun].[paragraph break]".

Instead of tasting something which is not edible:
	if the noun is a person:
		say "That would be unpleasantly intimate.";
	otherwise:
		say "[one of]I have an aversion to licking things that aren't meant for human consumption.[or]Doesn't that seem kind of germy?[or]Ew.[at random]".

Understand "bite [someone]" as attacking.

Understand "bite [something]" as tasting.

Instead of eating something:
	say "[one of]I don't think our nausea makes [if noun is fluid]drinking[otherwise]eating[end if] such a great idea.[or]I really couldn't.[or]I'm still feeling pretty sick to our stomach.[or]Let's not tempt fate.[cycling]"


Part 3 - Travel and the Map

Chapter 1 - Moving Between Places

Section 1 - Listing Exits

Include Exit Lister by Gavin Lambert.

The darkness hides exits rule is not listed in any rulebook.

Instead of going nowhere:
	carry out the listing exits activity.

Rule for listing exits when looking in a dead-end room:
	do nothing.

Definition: a room is dead-end if the number of exit-listable directions is 1.

To say no obvious exits: say "You can see no obvious exits."

The standard exit listing rule is not listed in the for listing exits rulebook.

The new generate exit list rule is listed in the for listing exits rulebook.

This is the new generate exit list rule:
	let exits be the number of exit-listable directions;
	if exits is 0, say "[no obvious exits]";
	otherwise say "[We] can go [list of exit-listable directions] from here.".

The describe room emerged into rule is not listed in any rulebook.
The describe room stood up into rule is not listed in any rulebook.
[Don't print a room description after getting up from or out of an object.]

Section 2 - Finding

Understand "find [any seen thing]" as finding. Understand the command "seek" or "approach" as "find". Understand "look for [any seen thing]" as finding. Understand "go to [any seen thing]" as finding.

Finding is an action applying to one visible thing.

Check finding something that is in the repository:
	say "Who knows where [the noun] went?" instead.

Check finding something that is enclosed by the player:
	say "[We]['re] carrying [the noun]." instead.

Check finding a backdrop:
	say "[The noun] [aren't] in one specific location." instead.

Check finding something that is enclosed by the location:
	say "[The noun] should be close by." instead;

Carry out finding:
	let place be the location of the noun;
	if place is not a room and the noun is a door:
		let place be the front side of the noun;
		if place is not visited:
			let place be the back side of the noun;
	if place is a room and place is not the location:
		try approaching place;
	otherwise:
		say "I'm a little confused about how to find [the noun]."

Sanity-check finding a door which is in the location:
	try entering the noun instead.

Section 3 - Approaches and Describing Distance Travel

Include Approaches by Emily Short. Use slow route-finding.

Include Approaching Speedups by Counterfeit Monkey.

A room can be nonsecret or forbidden. A room is usually nonsecret.

A room can be nonsouthern or southern. A room is usually nonsouthern.

["Southern" rooms are those you reach by walking east or south from the roundabout]


Path description count is a number that varies. [let's count how many times we've invoked this activity this turn!]

Every turn (this is the reset path description count rule):
	now path description count is 0.

Rule for describing path of the player:
	let N be the number of entries in the described motion of the player;
	let C be some text;
	if N is greater than 0:
		if path description count is greater than 0:
			let C be "[one of]Then[or]Next[or]From there[or]After that[as decreasingly likely outcomes] [one of][we] [or][we] have a [walk-length for N][or][we] make the [optional walk-length for N][or]it's a [walk-length for N][at random]";
		otherwise:
			let C be "[one of][We] [or][We] have a [walk-length for N][or][We] make the [optional walk-length for N][or]It's a [walk-length for N][at random]";
		say "[C][walk-drive]";
		if the intervening regions of the player is not empty:
			say "[through the intervening regions]";
		if the location is not the final destination:
			say " [one of]to[or]over to[or]as far as[at random] [the location]. [run paragraph on]";
		otherwise:
			say ". ";
	increase path description count by 1;
	clear path-walked for player.

To say optional walk-length for (N - a number):
	if the player is in a car:
		let N be N divided by 2; [distances should be adjusted to mode of transport]
	if N is less than 5:
		say "[one of][one of]short[or]brief[or]quick[at random] [or][cycling]";
	otherwise if N is less than 8:
		say "[one of][one of]fair[or]healthy[at random] [or][cycling]";
	otherwise:
		say "[one of][one of]long[or]lengthy[or]rather tiring[at random] [or][cycling]";

To say walk-length for (N - a number):
	if the player is in a car:
		let N be N divided by 2; [distances should be adjusted to mode of transport]
	if N is less than 5:
		say "[one of]short[or]brief[or]quick[at random] ";
	otherwise if N is less than 8:
		say "[one of]fair[or]healthy[at random] ";
	otherwise:
		say "[one of]long[or]lengthy[or]rather tiring[at random] ";

[The rather odd cycling guarantees that we don't repeat a word.]

To say walk-drive:
	if the player is in a vehicle:
		say "drive";
	otherwise:
		say "[one of]walk[or]hike[as decreasingly likely outcomes]".

To say through the intervening regions:
	repeat through the Table of Region Descriptions:
		if the intervening regions of the player is the intervening entry:
			say " [description entry]";

Table of Region Descriptions
intervening (list of regions)	description (some text)
{Marina}	"through the marina district"
{Walltop}	"along the top of the walls"
{Open-Air}	"[one of]pushing through the dense crowds[or]among the crowds[or]among the booths of the fair[at random]"
{Open-Air, Walltop}	"away from the crowds and the fair and over the top of the old walls"
{Open-Air, Walltop, Wealthy District}	"from the kitschy splend[our] of the fair along the old walls and into the placid sunlight among the villas of the rich"
{Walltop, Open-Air}	"back into the crowded area of the fair"
{Walltop, Wealthy District}	"down from the walls and through the wide peaceful streets where the rich live"
{Wealthy District, Walltop}	"through the residential streets and up onto the old wall"
{Wealthy District, Walltop, Open-Air}	"out of the cocooning silence of the wealthy streets and back among the fair booths"
{Marina, Busy Streets}	"[one of]through the heart of the city[or][--] only [i]almost[/i] dying at the roundabout when you didn't yield at the right moment [--][or]up the steep switchback of Deep Street[if the location is not the roundabout] and through the perilous traffic of the roundabout[end if][at random]"
{Marina, Busy Streets, Official Grounds}	"away from the smugglers['] territory by the docks, into the shadow of officialdom"
{Marina, Busy Streets, Campus}	"up through the shadowy corridor of Deep Street, around the roundabout, and then down the palm-lined avenue that is Long Street"
{Official Grounds, Busy Streets}	"away from the Bureau and back into the streets"
{Official Grounds, Busy Streets, Campus}	"out of the Bureau building, around the roundabout [--] always a menace to drivers and pedestrians alike [--] and down Long Street"
{Official Grounds, Busy Streets, Marina}	"out of the Bureau and down into the shadows of Deep Street"
{Campus, Busy Streets}	"out from under the sycamores in the Oval and up Long Street"
{Campus, Busy Streets, Marina}	"from my native territory through yours"
{Campus, Busy Streets, Official Grounds}	"[one of][--]the trip gets more uncomfortable as [we] go, leaving my own neighb[our]hood, fighting the inevitable snarl of traffic at the roundabout, and then heading down Tall Street, which always feels menacingly silent to me. But [we] do get in[or]away from the familiar bustle of campus, up Long Street, around the roundabout, along Tall Street[stopping]"

A person has a list of regions called the intervening regions.

[Carry out going somewhere while hurrying (this is the new creating a path history rule):]
This is the new creating a path history rule:
	if the map region of the location is a region:
		add the map region of the location to the intervening regions of the player, if absent.

To clear all/the/-- path-walked for (worker - yourself):
	truncate the intervening regions of the worker to 0 entries;
	truncate the described motion of the worker to 0 entries;
	truncate the path so far of the worker to 0 entries.

[Rule for describing path of the player:
	if the number of entries in the path so far of the player is greater than 0:
		if the location is not the noun:
			let N be the number of entries in the described motion of the player;
			let last movement be entry N in the described motion of the player;
			truncate the described motion of the player to (N - 1) entries;
			if N is 1:
				say "We [if the player is in a vehicle]drive[otherwise]go[end if]";
			otherwise:
				say "We [if the player is in a vehicle]drive[otherwise]go[end if] [described motion of the player]";
				if N is greater than 2:
					say ", before heading";
				otherwise:
					say ", then head";
			say " [the last movement]. [run paragraph on]";
		otherwise:
			say "We go [described motion of the player]. [run paragraph on]";
	clear path-walked for player. ]


[There are some places that are inappropriate to enter at certain times. We want to block both going and approaching these rooms; otherwise the parser will might let us walk halfway there before blocking progress, which is unclassy.]

Sanity-check going to a room (called target) when the player is staid:
	abide by the room-restriction rules for the target.

Sanity-check approaching a room (called target):
	abide by the room-restriction rules for the target.

The room-restriction rules are an object-based rulebook.

A first room-restriction rule for a room (called destination) that is not Starting Area:
	if backpack is not handled:
		say high-street refusal;
		rule fails;
	if secret-plans are not seen:
		say plans-search refusal;
		rule fails.

Definition: a room is Starting Area:
	if it is Monumental Staircase:
		no;
	if it is Back Alley:
		yes;
	if it is Sigil Street:
		yes;
	if it is Ampersand Bend:
		yes;
	if it is New Church:
		yes;
	if it is Cathedral Gift Shop:
		yes;
	if it is Church Garden:
		yes;
	if it is Cinema Lobby:
		yes;
	if it is The Screening Room:
		yes;
	if it is Projection Booth:
		yes;
	if it is Hostel:
		yes;
	if it is Dormitory Room:
		yes;
	if it is in Open-Air:
		yes.

A room-restriction rule for a southern room (called destination):
	if the Counterfeit Monkey is unvisited:
		say "Don't [we] have an appointment at the Counterfeit Monkey? [We] should be heading northeast up Deep Street.";
		rule fails;
	if Slango is not seen and Counterfeit Monkey is visited:
		say "That would take us more towards my part of the world, not help us find Slango.";
		rule fails;
	if destination is legend-restricted:
		say square-refusal;
		rule fails.

Definition: a room is legend-restricted:
	if legend is introduced:
		no;
	if it is Palm Square:
		yes;
	if it is My Apartment:
		yes;
	if it is Apartment Bathroom:
		yes;
	if it is Babel Café:
		yes;
	if it is in Campus:
		yes.

A room-restriction rule for a before-security-door room when cold dilemma has happened:
	say "[if Precarious Perch is visited][We] don't know how to get there from here[otherwise]The way through the Bureau will be guarded. If [we] [are] going to get out, it will have to be by some back way[end if].";
	the rule fails;

Definition: a room is before-security-door:
	if it is nautical:
		no;
	if it is Precarious Perch:
		no;
	if it is Abandoned Shore:
		no;
	if it is Open Sea:
		no;
	if it is Beside Slango's Ship:
		no;
	if it is Private Solarium:
		no;
	if it is Personal Apartment:
		no;
	if it is Tunnel through Chalk:
		no;
	if it is not in Official Grounds:
		yes;
	if it is The Antechamber:
		yes;
	if it is Rotunda:
		yes;
	if it is Tools Exhibit:
		yes;
	if it is All-Purpose Office:
		yes;
	if it is Bureau Hallway:
		yes;
	if it is Bureau Basement South:
		yes;
	if it is Bureau Basement Middle:
		yes.

A room-restriction rule for Tall Street when Counterfeit Monkey is unvisited:
	say "Don't [we] have an appointment at the Counterfeit Monkey? [We] should be heading northeast up Deep Street.";
	rule fails.

A room-restriction rule for Wonderland when Brock-argument has not happened:
	say "Best to start looking for Brock where we know he went: the equipment testing room.";
	rule fails.

A room-restriction rule for Cold Storage when Brock-argument has not happened:
	say "Best to start looking for Brock where we know he went: the equipment testing room.";
	rule fails.

[A room-restriction rule for the Customs House:
	say "Isn't our purpose exactly to avoid the attention of immigration officials, customs officers, and the like?";
	rule fails. ]

After going a direction for the third turn:
	unless we have approached:
		if the location is visited:
			say "[first custom style][bracket]If you're traveling far, you can always type GO TO (location name) to get there automatically.[close bracket][roman type][paragraph break]";
	continue the action.


Section 4 - Going Back and Going Vaguely

Understand "go back" as retreating. Understand "back" or "return" or "retreat" as retreating.

The former direction is a direction that varies.

Carry out going:
	if the noun is a direction:
		now the former direction is the noun.

Retreating is an action applying to nothing.

Carry out retreating:
	let new direction be the opposite of the former direction;
	say "(heading [new direction])[line break]";
	try going the new direction.

Understand "leave [any room]" or "go outside [any room]" or "exit [any room]" as departing. Departing is an action applying to one thing.

Check departing: if the noun is not the location, say "You aren't in [the noun]." instead.

Carry out departing:
	if location is dead-end:
		let chosen way be a random exit-listable direction;
		say "(heading [chosen way], since that is the only direction available)[line break]";
		try going chosen way;
	otherwise:
		say "Any particular direction? ";
		carry out the listing exits activity.


Chapter 2 - Looking Towards Other Areas

Section 1 - Far Away Things and Facades

Include Far away by Jon Ingold.

Instead of throwing something at something distant:
	say "Our aim isn't nearly good enough."

suppress-exit-listing is a truth state that varies.

A facade is a kind of thing. A facade is usually fixed in place. A facade has some text called the closure notice. The closure notice of a facade is usually "[The item described] [are] [one of]closed[or]shut[or]not open[or]locked up[purely at random] [one of]for[or]during[or]on[purely at random] [one of]the holiday[or]Serial Comma Day[purely at random]. ".

Instead of pushing or pulling or turning or taking a facade, say "[We] aren't super-powered."
Instead of looking under a facade, say "[The noun] will not just peel back like a stage curtain, you know.".
Instead of searching a facade, say "[We] would have to go [random direction fronted by the noun] in order to see what is there."

Fronting relates various facades to one direction. The verb to front (it fronts, they front, it fronted, it is fronted) implies the fronting relation.

Before an actor entering a facade:
	let chosen way be a random direction which is fronted by the noun;
	try the actor going the chosen way instead.

Instead of going nowhere when the noun is fronted by a facade (called blockage) in the location:
	say "[closure notice of the blockage][run paragraph on]";
	carry out the listing exits activity.

Instead of going nowhere when the noun is not fronted by a facade in the location (this is the handle can't-go-that-way rule):
	now suppress-exit-listing is false;
	if the noun is inside:
		follow the attempt going in rule instead;
	otherwise if the noun is outside:
		follow the attempt going out rule instead;
	otherwise if the noun is up:
		say "There is no way upwards. [run paragraph on]";
		silently try facing up;
	otherwise:
		try facing the noun;
	unless suppress-exit-listing is true:
		carry out the listing exits activity;
		now suppress-exit-listing is false.

[The parser would sometimes misinterpret commands such as GO TO CINEMA as FIND CINEMA-EXTERIOR and leave the player in from of the cinema rather than inside it. This gets around this by making sure that we always try to walk through any facade that we are "finding".]

Instead of finding a facade:
	let the-direction be a random direction fronted by the noun;
	let the goal be the room the-direction from the holder of the noun;
	if the goal is a room:
		try approaching the goal;
	otherwise:
		continue the action.

A down-staircase is a kind of facade. Understand "step" or "steps" or "stairs" or "stairwell" or "staircase" as a down-staircase. A down-staircase is usually scenery.

An up-staircase is a kind of facade. Understand "step" or "steps" or "stairs" or "stairwell" or "staircase" as an up-staircase. An up-staircase is usually scenery.

Instead of climbing an up-staircase, try going up.
Instead of climbing a down-staircase, try going down.

Does the player mean finding a facade:
	it is very unlikely.

Does the player mean finding a scenery thing:
	it is very unlikely.

Section 2 - LOOK AT LOCATION as LOOK

Definition: a room is locally-present if it is the location.

Understand "here" or "surroundings" as a room when the item described is the location.

Understand "examine [thing]" or "look [thing]" or "look at [thing]" as examining.

Understand "examine [room]" or "look at [room]" or "look [room]" as local looking. Understand "look around" as looking.

Local looking is an action applying to one thing.

After deciding the scope of the player while local looking:
	place the location in scope.

Carry out local looking:
	try looking.


Section 3 - Facing

Include Facing by Emily Short.

Instead of examining a direction:
	try facing the noun.

Rule for distantly describing a proper-named room (called target) (this is the new distant description rule):
	say "[We] make out [the target] that way."

The default distant description rule is not listed in any rulebook.

Rule for distantly describing a room (called target):
	let N be the printed name of the target;
	unless the target is proper-named:
		now N is N in lower case;
	say "[We] can make out [N] that way."

Rule for distantly describing a room (called target) which encloses someone when the location is indoors:
	let N be the printed name of the target;
	unless the target is proper-named:
		now N is N in lower case;
	say "That way [we] can see [N], in which [is-are a list of people enclosed by the target]."

When play begins (this is the nothing-to-see-that-way rule):
	now nothing-to-see-that-way is "[We] can't see anything interesting in that direction."

Screening relates various backdrops to various directions. The verb to screen (it screens, they screen, it screened, it is screened) implies the screening relation.

Check facing when the location contains a backdrop (this is the face backdrops rule):
	repeat with the item running through backdrops in the location:
		if the item screens the noun:
			if the noun is not up and the noun is not down:
				say "To the [noun] [regarding the item][are] [an item]. [run paragraph on]";
			try examining the item instead. [We want to be able to fill in what's that way.]

Check facing when the location contains a facade (this is the face facades rule):
	repeat with item running through facades in the location:
		if the item fronts the noun:
			if the noun is not up and the noun is not down:
				say "To the [noun] [regarding the item][are] [an item]. [run paragraph on]";
			try examining the item instead. [We want to be able to fill in what's that way.]

A direction has a direction called left-alt. A direction has a direction called right-alt.

The left-alt of north is northwest. The right-alt of north is northeast.
The left-alt of northwest is west. The right-alt of northwest is north.
The left-alt of west is southwest. The right-alt of west is northwest.
The left-alt of southwest is south. The right-alt of southwest is west.
The left-alt of south is southeast. The right-alt of south is southwest.
The left-alt of southeast is east. The right-alt of southeast is south.
The left-alt of east is northeast. The right-alt of east is southeast.
The left-alt of northeast is north. The right-alt of northeast is east.

Last check facing (this is the face adjacent directions rule):
	if the noun is up or the noun is down:
		make no decision;
	let leftway be left-alt of the noun;
	let rightway be right-alt of the noun;
	let leftward thing be the thing seen facing leftway;
	let rightward thing be the thing seen facing rightway;
	if leftward thing is nothing and rightward thing is nothing:
		make no decision;
	if the location is indoors:
		now suppress-exit-listing is true;
		say "That way is just a corner of the room, though [we] could go [unless the leftward thing is nothing][leftway] to [the leftward thing][end if][unless the leftward thing is nothing or the rightward thing is nothing] or [end if][unless the rightward thing is nothing][rightway] to [the rightward thing][end if]." instead;
	if leftward thing is nothing:
		say "There is nothing of note to [the noun] or [the leftway], but to [the rightway] [regarding the rightward thing][are] [the rightward thing]." instead;
	if rightward thing is nothing:
		say "There is nothing of note to [the noun] or [the rightway], but to [the leftway] [regarding the leftward thing][are] [the leftward thing]." instead;
	if the location is indoors:
		now suppress-exit-listing is true;
		say "That way is just a corner of the room, though [we] could go [leftway] to [the leftward thing] or [rightway] to [the rightward thing]." instead;
	otherwise if leftward thing is a road and rightward thing is a road:
		say "That way is the corner of [the leftward thing] and [the rightward thing]." instead;
	otherwise if leftward thing is a facade and rightward thing is a facade:
		say "In that direction [one of][the leftward thing] [abut] [the rightward thing], and there's no good way between them[or][the leftward thing] [meet] the edge of [the rightward thing][or]lies the corner between [the leftward thing] and [the rightward thing][at random]." instead;
	otherwise if leftward thing is a road:
		say "That way is the corner of [the rightward thing] and the beginning of [leftward thing] running [leftway]." instead;
	otherwise if rightward thing is a road:
		say "That way is the corner of [the leftward thing] and the beginning of [rightward thing] running [rightway]." instead;
	otherwise:
		say "To [the noun] [the leftward thing] [meet] [the rightward thing]." instead.

To decide what object is the thing seen facing (dir - a direction):
	if a backdrop (called target) in the location screens dir:
		decide on the target;
	otherwise if a facade (called second target) in the location fronts dir:
		decide on the second target;
	otherwise if the door dir of the location is a door:
		decide on the door dir of the location;
	otherwise if the room dir of the location is a room:
		decide on the room dir of the location.


Understand "look behind [something]" or "search behind/under [something]" as looking under.

A room can be indoors or outdoors. A room is usually outdoors.

Report facing when the location is indoors:
	if the viewed location is not a room:
		if the noun is up or the noun is down:
			say "There's nothing remarkable [noun] there." instead;
		say "There's no door in that direction." instead.

The sky is a distant backdrop. It screens up. The sun is part of the sky. The description of the sky is "[sky-description]". The description of the sun is "[sun-description]".

[When play begins (this is the move backdrops to the outdoors rule):
	move the sky backdrop to all outdoors rooms.]


Chapter 3 - Vehicles and Transport Animals

Section 1 - Animals

Include Rideable Vehicles by Graham Nelson.

[In addition to providing a bunch of generic synonyms in a hurry, these kinds allow us to design in some specialized behavior for how animals act when moving and so on. There are a huge number of creatable animals in the game, so it's best to categorize as much as possible.]

A bird is a kind of neuter animal. Understand "wing" or "wings" or "bird" or "feather" or "feathers" as a bird.

An insect is a kind of neuter animal. Understand "bug" or "insect" as an insect.

Sanity-check touching or rubbing or squeezing an insect:
	say "[We][']d rather not. All those legs." instead.


The scent-description of an animal is usually "sweaty animal".
The scent-description of a bird is "fresh air".
The scent-description of an insect is "summer heat".



Section 2 - Roads

A road is a kind of room. Definition: a room is offroad if it is not a road.

An approach-finding rule (this is the explicitly enter car rule):
	if location is a High Street and approach-destination is The Roundabout and the player is not in a noisy car:
		unless "Find transport for getting past the traffic on High Street" is completed:
			if an operational fueled car (called target) is in location:
				let target ignition be a random ignition which is part of target;
				unless the path so far of the player is empty:
					say "[path-walked so far][line break]";
				if the player is not in the target:
					try entering the target;
				if the player is in the target:
					try closing the target;
					if the target is closed and target ignition is switched off:
						try switching on target ignition;
						if target ignition is switched on:
							complete "Find transport for getting past the traffic on High Street";
			otherwise:
				if a car (called second target) is in location and the player is not in second target:
					unless the path so far of the player is empty:
						say "[path-walked so far][line break][paragraph break]";
					try entering second target.

The explicitly enter car rule is listed before the new actual approach movement rule in the approach-finding rules.

Instead of going from a road to a road:
	if the player is in a car:
		continue the action;
	if a car (called target) is in location:
		if more than one car is in location:
			now the target is a random fueled operational car in location;
			if target is nothing:
				now the target is a random car in location;
		try entering the target;
		if the player is in the target:
			try going the noun instead;
	if the protesters are in location:
		if the number of entries in the path so far of the player is greater than 0:
			say "[path-walked so far][paragraph break][line break]";
		say "Unfortunately the sidewalks, which were never very wide to start with, are so blocked by the mass of protesters that it's impossible to get by. Besides, if we associate with them, we might wind up getting arrested on minor charges anyway. We need some kind of automotive transport[car-needed].";
		assign "Find transport for getting past the traffic on High Street";
	otherwise if the room gone to is the Roundabout and the protesters are not off-stage:
		say "That whole area is so jammed that our only hope is to go by car[car-needed].";
	otherwise:
		continue the action.

Section 3 - Cars

[The aim of the car code is to create a car that

-- navigates roads the player otherwise wouldn't be able to cross
-- responds sensibly to a wide range of commands, both standard GO commands and commands about driving
-- performs as transparently as possible after initial use, automating everything to do with opening, entering, turning on, driving, turning off, exiting, and closing the car so that the player is not conscious of these steps.

Once acquired and repaired, the car should become as nearly transparent as walking across those areas on foot, except that it provides some additional boundaries when in the Roundabout area, where the player can't get out except under special circumstances.

Because any vanilla chair can be converted to a car, there are multiple cars; in practice, the player is unlikely to create more than one, and the first available one must always come from the chard.]

Understand "start [something]" as switching on.

Understand "drive [a direction]" as going when the player is in a vehicle.

Understand "drive [car] [a direction]" as car-driving when the player is in a car. Car-driving is an action applying to one thing and one visible thing. Carry out car-driving: try going the second noun.

Understand "drive to [any nonsecret room]" as approaching.

Understand "drive [car] to [any nonsecret room]" as car-approaching. Car-approaching is an action applying to one thing and one visible thing. Carry out car-approaching: try approaching the second noun.

Understand "honk" or "honk at [text]" as a mistake ("[if the player is not in a car]We aren't a goose[otherwise if the protesters are marked-visible]One of the protesters turns and waves, taking this as a gesture of support[otherwise]We receive an insulting gesture from the person in the car ahead[end if].").

Understand "protest" or "join protest" or "picket" as a mistake ("If I thought you could change Atlantis that way, I'd be on board. But I've given up on social action long since.").

A car is a kind of vehicle. A car is usually transparent. The heft of a car is 8. The flexible appearance of a car is "".
	The description of a car is "It is little larger than a toy, but that is what you want when driving on the streets around here. Any substantial vehicle wouldn't fit down the winding drives."
	The introduction is "Here is how my mother gets around. She takes a 300 Euro Hermès scarf with an orange border and a pattern of prancing horses. She tosses it in the air. As it falls, she shoots it twice, like a clay pigeon: once to take out the F, the second time for the S. And such a car: buttery leather seats, jaguar lines. If someone asks how she gets such good results, she jokes that it's because of her quality materials.

Suffice it to say that we are not similarly blessed."
	Understand "toy" or "sub-subcompact" or "door" or "tank" or "engine" as a car.
	The scent-description of a car is "metal parts and oil".

Rule for writing a topic sentence about a car (called target car):
	let N be 0;
	repeat with C running through cars in location:
		unless C is the alterna-shuttle or C is the truck:
			increment N;
			now C is mentioned;
	if N is greater than 1:
		say "There are [N in words] cars parked [if the location is offroad]illegally [end if]nearby. ";
	otherwise:
		say "Our car[one of] [--] a sub-sub-compact that looks like it might be outraced by a kid on a scooter [--][or] [--] which might better be described as a covered bicycle [--][or][at random] is parked [if the location is offroad]illegally [end if]nearby. "

A car can be fueled or unfueled. A car is usually unfueled.

Definition: a thing is fuel-like if it is the fuel or it is the gas.

Does the player mean entering a fueled car:
	it is very likely.

Does the player mean entering an operational car:
	it is very likely.

Sanity-check inserting a fuel-like thing into a car:
	try fueling the second noun with the noun instead.

Instead of taking a car:
	say "[The noun] [are] just a bit too heavy to carry in [their] current state."

Understand "fuel [something] with [something preferably held]" as fueling it with. Understand "fuel [something]" as fueling it with. Fueling it with is an action applying to one thing and one carried thing.

Rule for supplying a missing second noun while fueling something with:
	if the fuel is marked-visible:
		now the second noun is the fuel;
	otherwise if the gas is marked-visible:
		now the second noun is the gas;
	otherwise:
		say "[We] don't have any plausible fuel to hand."

Instead of filling a car with a fuel-like thing:
	try fueling the noun with the second noun.

Does the player mean fueling an unfueled car with something:
	it is very likely.

Check fueling something with a vegetable:
	say "I've heard of biodiesel, but that carries the point too far." instead.

Check fueling something with something which is not fuel-like:
	say "[The second noun] [don't] make much of a fuel." instead.

Check fueling something which is not a car with something:
	say "[The noun] [one of][don't] take fuel[or][aren't] fuel-powered[at random]." instead.

Carry out fueling something with something:
	now the second noun is nowhere;
	now the noun is fueled;
	complete "Fuel the car";
	record "fueling our car" as achieved;
	say "I deeply fear automotive maintenance, but I can (just) manage to pour in the fuel... and I think that's done it." instead.

[The "car-fueling" action is a hack to make commands like MECHANIC, FUEL THE CAR work. Inform seems to have a problem with "Rule for supplying a missing second noun" when it comes to giving instructions to other characters, which breaks the normal fueling action in those cases.]
Understand "fuel car" or "fill her up" or "fill up car/tank" as car-fueling when the person asked is the mechanic. car-fueling is an action applying to nothing.

Instead of asking the mechanic to try fueling a car with a fuel-like thing:
	try asking the mechanic to try car-fueling.

Instead of asking the mechanic to try car-fueling:
	if there is no car in location:
		say "The mechanic look at us, confused.";
		stop the action;
	if there is a fuel-like thing enclosed by location:
		try discussing whether the fuel seems interesting;
	otherwise:
		try discussing where fuel might be.

Rule for printing the name of a car while opening or closing a car:
	say "car door".

Understand "fix [something]" or "mend [something]" or "tune [something]" or "tune up [something]" or "tune [something] up" or "repair [something]" as tuning. Tuning is an action applying to one thing.

Sanity-check tuning something which is not a car:
	if the noun is an instrument:
		say "Tuning [the noun] would have to be left to an expert; I have no idea how." instead;
	if the noun is a person:
		say "Psychiatry is not my field of expertise." instead;
	say "I am not quite sure what you have in mind, there." instead.

Check tuning:
	if the noun is not damaged:
		say "The car has already been repaired and is now in working order." instead;
	otherwise:
		say "I'm not good at this sort of thing. I mostly leave repairs to the garage." instead.

Sanity-check inserting oil into a car:
	say "In my limited interactions with motor vehicles, I've always taken the machine to a garage for any corrective work. This includes topping up the oil." instead.

Understand "oil [something]" or "lubricate [something]" as oiling. Oiling is an action applying to one thing.

Sanity-check oiling when there is no oil enclosed by location and the poppy-oil is not enclosed by location:
	say "There is no oil here." instead.

Check oiling something which is not a car:
	say "[The noun] [don't] need oiling." instead.

Carry out oiling:
	try tuning the noun.

Report opening a car:
	say "[one of][We] open the car door: perhaps unsurprisingly, it comes without an effective lock system.[or][We] swing the car door open.[or][We] open the door of the car.[stopping]" instead.

A description-concealing rule:
	now every thing which encloses the player is not marked for listing.

Understand "park" as exiting when the player is in a car. Understand "park [car]" as car-parking when the player is in a car. Car-parking is an action applying to one thing. Carry out car-parking: try exiting instead.

A car is usually openable. A car is usually closed.

Check exiting when the player is in a noisy car (called target car):
	try switching off a random ignition which is part of target car;

Check going somewhere by a car (called target car) which is not noisy:
	try switching on a random ignition (called target) which is incorporated by target car;
	if the target is switched off, stop the action.

Check going somewhere by an open car (called target):
	try closing the target;
	if the target is open, stop the action.

Rule for describing the interior of a car (called target car):
	say "[We] [are] jammed into the car with our knees almost at our chin, looking out through the bulbous little [if the player wears the Britishizing goggles]windscreen[otherwise]windshield[end if][if a switched on ignition is part of target car]. The motor is growling like a housecat with pneumonia[end if]."

An ignition is a kind of device. One ignition is part of every car. Understand "motor" as an ignition. Instead of listening to an ignition, try listening to a random car which incorporates the noun.

The gas-gauge is a kind of thing. One gas-gauge is part of every car. The description is "[if the item described is part of a car that is fueled]It points over at the right, which must be Full[otherwise]It points all the way around at the left, or Empty[car-broken][end if]." The printed name of the gas-gauge is "gas gauge". Understand "gauge" or "gas gauge" as the gas-gauge.

Before switching on an ignition which is part of a closed car (called target car):
	unless the player is in the target car:
		try opening the target car;
		if the target car is not open:
			stop the action.

Before switching on an ignition which is part of an open car (called target car):
	unless the player is in the target car:
		try entering the target car;
		if the player is not in the target car:
			stop the action;
	silently try closing target car.

Check switching on an ignition which is part of a closed car (called target car):
	unless the player is in the target car:
		try opening the target car;
		if the target car is not open:
			stop the action.

Check switching on an ignition which is part of an unfueled car:
	assign "Fuel the car";
	say "[car-broken][car-needs-fuel]." instead.

To say car-needs-fuel:
	say "[car-broken][one of]The extremely primitive dial in front of us is pointing all the way to the left. I think that's its way of saying it's out of fuel. At any rate, the engine won't start[or]There's no gas in the car; without fuel, it's not going far[stopping]".

Check switching on an ignition which is part of a damaged car:
	say "[car-broken]Though the engine does briefly turn on, there's clearly something wrong with it, from the unpleasant noises and the flashing lights on the dash. Perhaps it needs oil." instead.

Report switching on an ignition:
	say "[one of]We switch on the ignition and the car comes to life. Smelly, trembling, putt-putting life, but still, not bad for something we conjured out of a vegetable picked outside my parents['] place[or][We] switch [the noun] on[stopping]." instead.

[Instead of going somewhere by car when the ignition is switched off: say "The ignition is off at the moment." ]

Carry out going to the roundabout by car:
	complete "Find transport for getting past the traffic on High Street";
	record "traveling by car" as achieved.

A car can be operational or damaged. A car is usually damaged.

Sanity-check going by unfueled car:
	assign "Fuel the car";
	say "[car-broken][car-needs-fuel]." instead.

Sanity-check going by damaged car:
	say "[car-broken]The car refuses to run properly: evidently you got us a lemon. It's going to take some tuning up before it will go." instead.

Sanity-check switching on a car:
	try switching on a random ignition which is part of the noun instead.

Sanity-check switching off a car:
	try switching off a random ignition which is part of the noun instead.

Carry out switching on an ignition:
	now a random car which incorporates the noun is noisy.

Carry out switching off an ignition:
	now a random car which incorporates the noun is quiet.

Instead of listening to a noisy car:
	say "The car is making an unpleasant raspy growl."

Instead of going by car (called used car) to somewhere offroad:
	if the player is hurrying:
		if the used car is noisy:
			say "[one of][path-walked so far]Then[or][path-walked so far]There[or]Once [we] get to [location][or]At [location][at random] [we] [find a parking spot].[paragraph break]";
		otherwise:
			say "[path-walked so far]";
		clear path-walked for player;
		increase path description count by 1;
	otherwise if used car is noisy:
		say "Since there's no way by road, we'll have to leave [the used car] here. It is a moment's work to find a parking spot. [run paragraph on]";
	otherwise:
		say "That involves some off-road travel. We'll have to leave [the used car] here and walk. [run paragraph on]";
	try exiting;
	if the player is in a car,
		stop the action;
	otherwise try going the noun.

Report exiting when the container exited from is a car:
	say "We climb out of the car." instead.

To say find a parking spot:
	if the current daytime is:
		-- noon:
			say "struggle to find a parking spot";
		-- early afternoon:
			say "[one of]drive around a bit trying to get a parking spot[or]try to nab several parking spots before finally managing to be more assertive than the other drivers[or]try unsuccessfully to fit into a spot even smaller than the car, before lucking into a freshly-vacated place[at random]";
		-- mid afternoon:
			say "[one of]find a place to park without too much trouble[or]park deftly in the shadow of a much larger vehicle[or]have a bit of a chore finding a parking spot[at random]";
		-- late afternoon:
			say "pull easily into one of the available parking spots, since many people have now gone home";
		-- sunset:
			say "park in the most convenient spot";
		-- evening:
			say "park" [shouldn't happen because it shouldn't be evening while we're still in driving mode. But we'll see.]

Instead of going by car when the location is offroad:
	say "This isn't exactly an area in which driving is encouraged. In fact, I'm not sure [we] can get the car anywhere."



[Include Conditional Backdrops by John Clemens.]

[When play begins (this is the move busy streets backdrop rule):
	move protesters backdrop to all roads in Busy Streets;
	move traffic backdrop to all roads in Busy Streets.]

Some protesters are a backdrop. Understand "student" or "students" as the protesters. The description is "Hundreds of people pack the sidewalk, wearing slogans and carrying angry signs."

A description-concealing rule when the location is High Street (this is the hide protesters rule):
	rapidly set all contents of the protesters not marked for listing.

Instead of examining the hundreds of people: try examining the protesters.

Some hundreds of people are a person. They are part of the protesters. They wear slogans. They carry angry signs.

The description of the angry signs is "They say things like 'No Referendum = No Responsibility,' 'NOT GUILTY,' and, more daringly, 'The citizens of Atlantis have never voted for human rights violations.' Some are just photos of Bureau officials wearing Hitler mustaches.

The protesters can't say this directly, of course, but what they are protesting is the use of inanimation as a punishment by the Bureau of Orthography. Making someone into an inanimate object, or enclosing him in an inanimate object, is not technically murder, but it is considered a massive human rights violation by just about every other country in the world."

The description of the slogans is "On every shirt and coat, sometimes screen-printed, sometimes just written on with a Sharpie, is the same message: NOT GUILTY.

You know better than I do how the international media looks at Atlantis. How it presents us as a fat, wealthy plutocracy whose citizens happily engage in atrocities in order to keep hold of our unique advantages. But on most of those human rights issues, it's not as though we were ever asked. We never voted to do those things. The Bureau simply enacted them as 'non-referrable procedures.'"

Instead of listening to the protesters:
	say "'Referendum Now!' they're shouting. And 'Not guilty.'"

Instead of listening to the location in the presence of the protesters:
	say "There are standard traffic noises and then the protesters. [no line break]";
	try listening to the protesters.

The traffic is a backdrop. It is distant. The indefinite article is "some". Understand "cars" or "vehicles" or "tail-lights" or "lights" or "drivers" or "congestion" as the traffic. The description of the traffic is "Nearly bumper-to-bumper despite the tiny size of the individual vehicles[one of]. In fact, I've never understood why people drive here at all: the city is almost small enough to make do with pedestrian routes and bicycles[or][stopping].".

Instead of entering traffic:
	say "No one in these vehicles is likely to want to drive us anywhere."

[The scaffolding is a backdrop. Understand "construction" or "scaffold" as the scaffolding. The description is "Lately they've been doing a lot of construction and reconstruction around the center of town. They say it's renovation of dangerous old buildings. There are also other theories."

Instead of climbing the scaffolding:
	say "I wasn't a construction worker in previous life, and I'm pretty sure you weren't either." ]

Understand "cross [traffic]" or "ignore [traffic]" as a mistake ("You may have the nerve, but I don't.") when the traffic is marked-visible.

Test car-behavior with "tutorial off / car-acquire / unmonkey / put remover in backpack / close backpack / cross traffic / ignore traffic / drive to roundabout / park / get out of car / go to deep street / nw / e / climb masses / look through window / out / out / se / get in car / drive to tall street / go to roundabout / drive to monkey" holding the backpack in high street.

Test roundaboutation with "tutorial off / unlegend / car-acquire / drive to roundabout / z / z / z" in high street.

Section 4 - The View From Inside

[This lets us add a special line to descriptions when we're inside the car.]

The container interior rule is listed before the room description body text rule in the carry out looking rules.

This is the container interior rule:
    if the actor is the player and the player is in an enterable thing (called current cage), carry out the describing the interior activity with the current cage.

Describing the interior of something is an activity.



Chapter 4 - Special Doors and Barriers

Section 1 - Door Descriptions and Knocking

The description of a door is usually "[if open][The item described] [stand] open[otherwise if locked]Closed and locked[otherwise][regarding the item described][They] [are] closed[end if]."

Understand "knock on/-- [door]" or "tap on/-- [door]" as knocking on. Knocking on is an action applying to one thing. Understand "knock on/-- [thing]" as attacking.

Instead of knocking on something which is not a door:
	try attacking the noun.

Check knocking on an open door:
	say "It's open: [we] could just go in." instead.

Check knocking on a door:
	let far side be the other side of the noun;
	if the far side does not enclose someone:
		say "No one answers. It must be empty." instead.

Report knocking on a door:
	if the noun is unlocked:
		say "'It's unlocked,' says a voice from inside.";
	otherwise:
		say "No one answers."

Section 2 - Propping Doors

Wedging relates one thing to one door. The verb to wedge (it wedges, they wedge, it wedged, it is wedged) implies the wedging relation.

Propping it with is an action applying to one thing and one carried thing.

Understand "prop [something] with [something preferably held]" or "prop up/open [something] with [something preferably held]" or "prop [something] up/open with [something preferably held]" as propping it with. Understand the commands "wedge" or "jam" or "block" or "support" as "prop".

Understand "put [something long] in/into/under/beneath [a door]" or "insert [something long] in/into/under/beneath [a door]" or "prop [something long] in/into/under/beneath [a door]" as propping it with (with nouns reversed).


Check propping something which is not a door with something:
	say "Propping is something best done to doors." instead.

Definition: a thing is bendy:
	if it is strong:
		no;
	if it is long:
		yes;
	no.

Check propping something with a bendy thing:
	say "[The second noun] [are] long enough, but too flexible to provide much support against the springs of [the noun]." instead.

Check propping something with something which is not long:
	say "[The second noun] [are] not long enough to prop [the noun] very effectively";
	if the second noun is strong:
		say ", though at least [regarding the second noun][they] [are] fairly stout." instead;
	else:
		say ", and even if [regarding the second noun][they] were, [they] wouldn't hold up against the pressure of the springs." instead.

Check propping something which is wedged by something (called the existing impediment) with something:
	say "[The noun] [are] already propped open by [the existing impediment]." instead.

Carry out propping a door with something:
	now the noun is open;
	move the second noun to the location;
	now the second noun wedges the noun;

Report propping a door with something:
	say "[We] prop [the noun] open with [the second noun]."

Carry out taking something which wedges something:
	now the noun does not wedge anything.

A dangerous destruction rule for something which wedges something (called item):
	now the item is not wedged by anything.

[TODO fix tests]
Table of Ultratests (continued)
topic	stuff	setting
"propping"	{ tub, stick, twig, secret-plans }	tin hut

Test propping with "open tub / d / u / open door / prop door with twig / prop door with wig / prop door with plans / prop door with fish / look / prop door with stick / d / u / wave t-remover at stick / gel sick / prop door with stick / d / wave t-remover at stick" [holding the tub and the stick and the twig and the wig and the secret-plans in the tin hut.]

Section 3 - Approaching doors (like the security door)

Understand "approach [a door]" as entering.

Chapter 5 - Special Kinds of Rooms

Section 1 - Essentials and Non-Drop Zones

[For the player's protection, there are certain rooms where we want him not to leave any objects, because those rooms will become unavailable and he'll be unable to retrieve anything he left there. So we create the concept of the privately-controlled rooms for rooms where it is unsafe to leave anything behind.]


A thing can be essential. A thing is usually not essential.

[Definition: a thing is unleavable:
	if it is not essential, no;
	if it is not seen, no;
	if it is the origin paste and it is unwon, no;
	if it is the tube and it is carried by the barker, no; [we still have to win it]
	if it is enclosed by the player, no;
	if it is enclosed by a vehicle which contains the player, no;
	yes.]

Before going somewhere when the player is staid and the unleavable is not nothing:
	abide by the don't-leave-the-unleavable rule.

This is the don't-leave-the-unleavable rule:
	let the needed-thing be the unleavable;
	while the needed-thing is not nothing:
		if the needed-thing is enclosed by a closed container (called the box) and the player is not in the box:
			try opening the box;
		if the needed-thing is the iron-pans:
			reduce iron-pans;
			if the i-pan is marked-visible:
				now the needed-thing is the i-pan;
		if the needed-thing is a person:
			move needed-thing to the holder of the player;
		otherwise:
			try taking the needed-thing;
			if the player does not carry the needed-thing:
				say "I don't think [we] should leave without [the needed-thing].";
				the rule fails;
		let the needed-thing be the unleavable.

A room can be publicly-available or privately-controlled. A room is usually publicly-available.

Instead of dropping something which is not heavy in a privately-controlled room (this is the no-dropping rule):
	if the location is the traffic circle and the player is in a car:
		continue the action;
	say "[non-drop-zone]".

Instead of inserting something into a container (called target) not enclosed by the player in a privately-controlled room:
	if the location is the traffic circle:
		if target is a car or target is enclosed by a car:
			continue the action;
	say "[non-drop-zone]".

Instead of putting something on a supporter not enclosed by the player in a privately-controlled room:
	if the noun is the gel:
		continue the action;
	if the noun is the origin paste:
		continue the action;
	say "[non-drop-zone]".

To say non-drop-zone:
	say "[one of]I wouldn't. [We] might never get [the noun] back.[or]I'm inclined to keep all our things with us, under the circumstances.[or]I'm not ready to part with [the noun] here. After all, can [we] be sure [we][']d be able to get back?[at random]".

Sanity-check putting gel on something which is proffered by a heavy thing (called resultant) when the location is a privately-controlled room:
	say "It might be difficult to do that here without attracting notice." instead.

Check waving the letter-remover at something when the location is a privately-controlled room:
	if the location is Aquarium Bookstore or the location is Traffic Circle:
		make no decision;
	otherwise:
		say "It might be difficult to do that here without attracting notice." instead.

Sanity-check going a direction when the player carries a heavy thing (called the target):
	say "[We] can't really travel far with [the target] in our arms.";
	if the target is iron-pans:
		reduce the iron-pans;
	if the player carries the target:
		stop the action.

Sanity-check approaching a room when the player carries a heavy thing (called the target):
	say "[We] can't really travel far with [the target] in our arms.";
	if the target is iron-pans:
		reduce the iron-pans;
	if the player carries the target:
		stop the action.

To reduce the/-- iron-pans:
	now the current setting of the letter-remover is "s";
	say "In the interest of compactness, [we] S-remove the pans. [run paragraph on]";
	if the letter-remover is in a closed backpack:
		silently try opening the backpack;
		silently try taking the letter-remover;
		try waving the letter-remover at the iron-pans;
		silently try inserting the letter-remover into the backpack;
		silently try closing the backpack;
	otherwise:
		try waving the letter-remover at the iron-pans.

Section 2 - Kitchens and Bathrooms

[There are quite a few of these location types, so we'll implement them consistently throughout the game using assemblies.]

Include Automated Drawers by Emily Short.

Include Modern Conveniences by Emily Short.

Include Postures by Emily Short.

Sanity-check going up when the room up from the location is nothing:
	if the player is not standing:
		if the player is on a supporter:
			try exiting instead;
		otherwise:
			try taking position standing instead;

Sanity-check going down when the room down from the location is nothing:
	if the player is on a supporter and the player is not seated:
		try exiting instead.

Check going to a room when the player is not in the location:
	while the player is not in the location:
		let context be the holder of the player;
		if context is a vehicle:
			continue the action;
		try exiting;
		if context is the holder of the player:
			stop the action instead;

A toilet is usually seated.

When play begins (this is the toilet postures rule):
	now every toilet allows seated;
	now every toilet allows standing.

Understand "wash my/our/-- hands/face/up" as washing hands. Washing hands is an action applying to nothing.

Understand "wash my/our/-- hands/face/up in/with [washing-appropriate thing]" as washing hands in. Washing hands in is an action applying to one thing.

Carry out washing hands in:
	try washing hands instead.

Carry out washing hands:
	if the player can touch a washing-appropriate thing (called the target):
		if the target is a switched off tap:
		[This is to remove any things we might have put in the sink or bath.]
			silently try switching on the target;
		say "[We] briskly wash up.";
		if the target is a switched on tap:
			silently try switching off the target;
	otherwise:
		say "There's nothing here to wash in."

Sanity-check washing a person who is not the player:
	if the noun is an animal:
		say "[The noun] could probably use a wash, but on the whole I don't see the point." instead;
	say "Bathing people other than myself is kind of over-intimate." instead.

A public restroom is a kind of room.

A toilet-stall is a kind of container. The printed name of a toilet-stall is always "toilet stall". Rule for printing the plural name of a toilet-stall: say "toilet stalls". Understand "stall" as a toilet-stall. Understand "stalls" as the plural of a toilet-stall. A toilet-stall is always fixed in place and enterable and openable.

The description of a toilet-stall is usually "It is the usual beige metal dividers, the usual topical graffiti."

Some graffiti is a kind of thing. It is usually scenery.

Some graffiti is in every toilet-stall.
The description of graffiti is usually "[We] glance over the range of messages from past occupants and notice...[paragraph break][one of]Some wag has drawn an arrow pointing to the toilet and written beside it: P-REMOVER[or][i]There was a young lady from France[line break]Who was wearing a plain pair of pants[line break][']Til a linguistical gent[line break]With indecent intent[line break]Left the girl crawling with ants[/i][at random].".

A toilet-stall is always lit. A toilet-stall is usually scenery. Understand "toilet stall" as a toilet-stall. Rule for printing the name of a toilet-stall (called the stall) when the player is in the stall and the stall is closed: say "Toilet Stall".

One toilet is in every toilet-stall.

Two toilet-stalls are in every public restroom. Two sinks are in every public restroom.

Instead of tasting a toilet:
	say "Not while I'm sharing your tongue, thanks."

Instead of tasting a sink:
	say "Let's cling to a higher standard of hygiene, shall we?"

A mirror is a kind of thing. A mirror is in every bathroom. A mirror is in every public restroom. A mirror is usually scenery. Understand "glass" or "reflection" as a mirror.

The description of a mirror is "It's gleaming and shiny and very clean and I don't want to look in it."

Instead of searching a mirror when the player wears a wig and the player wears the monocle:
	say "The wig and the monocle together suggest some sort of steampunk fancy dress party."

Instead of searching a mirror when the player wears a wig:
	say "The wig looks surprisingly natural[if the pass is seen], and [we] resemble the image on the pass much better than [we] do without[end if]."

Instead of searching a mirror when the player wears a hairpiece and the player wears the monocle:
	say "The hairpiece/monocle combination makes us look like some sort of funky steampunk engineer, which might not be the most inconspicuous way to go."

Instead of searching a mirror when the player wears a hairpiece (called H):
	say "[The H] looks surprisingly natural[if the pass is seen], and [we] resemble the image on the pass much better than [we] do without[end if]."

Instead of searching a mirror when the player wears a monocle:
	say "The monocle makes our right eye look deep green, and it has a sinister quality as well."

Instead of searching a mirror:
	say "I have not gotten used to what we look like since we were synthes[ize]d into a single female body. The face that looks back is deeply scary. It's not me. And it's not you either. It's more like one of those computer composites you can have done to envision future offspring: if you and I were to have a somewhat androgynous daughter she might look like this[one of].

But I am uncomfortable sharing a body, and uncomfortable looking into a mirror and seeing something other than my own face looking out.

You seem calmer about it: perhaps you've just had more time to reflect, or perhaps somehow you're filtering those emotions out for me. But I think we'll both be happier when we're split back into our own respective bodies[or][stopping]."

Instead of attacking a mirror:
	say "You know what they say about bad luck. I'm not superstitious, but I don't think having a roomful of sharp glass shards bodes well for the immediate future."

Instead of burning something in the presence of a stove:
	if the noun is edible:
		say "You are about right about my cooking abilities, I suppose, but [the noun] [are] better off as [they] [are].";
	otherwise:
		say "It's true there's a handy stove here, but I don't see the point."

[And this is provided entirely as a way to redirect attempts to sit at the piano or a desk or table]
Understand "sit at [something]" as sitting at. Sitting at is an action applying to one thing.

Check sitting at:
	say "There's no obvious place to sit." instead.



Section 3 - Bedrooms

A bed is a kind of supporter. A bed is always enterable. A bed is usually reclining.

When play begins (this is the bed postures rule):
	now every bed allows seated;
	now every bed allows reclining;
	now every bed which is not a dorm bed allows standing.

A clothed bed is a kind of bed.

A blanket is a kind of thing. Some sheets are a kind of thing. A pillow is a kind of thing. Some sheets, a blanket, and a pillow are part of every clothed bed.

Instead of taking something which is part of a clothed bed:
	say "Stripping down beds is boring, and none of the bedclothes are likely to be especially useful."

The description of a pillow is usually "Fluffy, harmless, mostly useless." The description of sheets is usually "They're the usual sort of thing." The description of a blanket is usually "Blankets in this part of the world, at this time of year, tend to be lightweight; and this is no exception."

A dorm bed is a kind of bed.

Section 4 - Desks, Drawers, Offices

[Include Automated Drawers by Emily Short.]

Definition: a person is empty rather than non-empty if the first thing held by it is nothing. [empty-handed and naked]

Section 5 - (for use without Large Game Speedup by Andrew Plotkin)

Definition: a container is empty rather than non-empty if the first thing held by it is nothing.
Definition: a supporter is empty rather than non-empty if the first thing held by it is nothing.

Section 6 -

[After writing a paragraph about the nightstand:
	if something is on the nightstand and at least one surprising drawer is part of the nightstand, say "[paragraph break]";
	say "[if prior named object is the nightstand and the nightstand is empty]It[otherwise]The nightstand[end if] has [the number of drawers which are part of the nightstand in words] drawer[s]";
	if at least one open drawer is part of the nightstand
	begin;
		say "; [selection of drawers which are part of the nightstand conforming to the description open drawers which are part of the nightstand is-are] open";
		if every open drawer which is part of the nightstand is empty, say " but empty";
	end if;
	say ". ";
	now the current-subject is the nightstand;
	now every drawer which is part of the nightstand is mentioned;
	now every drawer which is part of the nightstand is referenced by the current-paragraph;
	while a surprising thing (called second special-target) is referenced by the current-paragraph
	begin;
		carry out the disclosing contents activity with the second special-target;
		now every thing contained by the second special-target is mentioned;
		now every thing supported by the second special-target is mentioned;
		now every thing held by the second special-target is mentioned;
		now every thing which is part of the second special-target is mentioned;
	end while;
	now held-break is true;
	say "[run paragraph on]";]


Rule for disclosing exterior of something which is in a drawer:
	say "[The current-subject] is in [the holder of the current-subject]. ";

Rule for disclosing contents of a drawer (called special-target):
	say "[if the prior named object is the special-target]Inside[otherwise]In [the special-target][end if] [is-are a list of things *in the special-target]. [run paragraph on]".

A desk is a kind of supporter. [Every desk incorporates two vertical drawers.] A desk is usually scenery. The description of a desk is usually "It's fakely veneered in dark wood and shows signs of years of abuse." [A desk is usually seated.]

Instead of inserting something into a desk:
		say "[The second noun] [don't] have a drawer."

A chair is a kind of supporter. A chair is usually scenery. A chair is always enterable. Understand "seat" as a chair. The description of a chair is usually "It is an ordinary inexpensive variety of chair, made locally and found around the island in great numbers." A chair is usually seated.

Instead of taking a chair when the subcommand of the noun matches "seat":
	try entering the noun.

Rule for initially listing contents:
    initially group chairs together.

Rule for grouping together a chair (called target):
	say "[listing group size in words] chairs";
	let source be the holder of the target;
	if hardness is true and the LSR chair is held by the source:
		say ", one of them red,";
	now every chair held by the source is mentioned.

A dangerous construction rule for a chair (called C):
	now C is not scenery;
	now C is portable.

Rule for printing the plural name of chair:
	say "chairs".

Does the player mean doing something to the LSR chair:
	it is very likely.

Table of Ultratests (continued)
topic	stuff	setting
"chair"	{ LSR chair, chard, pocket-bread, tub }	Workshop

Test chair with "tutorial off / powerup / autoupgrade / open tub / wave c-remover at chair / wave d-remover at chard / gel pocket-bread / wave a-remover at pita / wave t-remover at pit / wave p-remover at pi / put char and i on dais / synthesize / get chair / put gel on hair / l / take chair".

Test char with "tutorial off / purloin char / wave h-remover at char / wave i-remover at chair / put gel on car" holding the tub in the Language Studies Seminar Room.

Test ascot with "tutorial off / autoupgrade / powerup / purloin as / purloin cot / put as and cot on dais / synthesize / wave a-remover at ascot / wave s-remover at scot / gel cot" holding the tub in the Workshop.

Test lostfuel with "tutorial off / autoupgrade / unlegend / unprotest / purloin chard / purloin funnel / purloin soil / purloin chair / wave b-remover at garbage / wave d-remover at chard / wave h-remover at char / wave n-remover at funnel / fuel car / gel car / wave i-remover at chair / wave h-remover at char / gel car / wave h-remover at chard / wave d-remover at card / wave s-remover at soil / wave i-remover at chair / wave h-remover at char / give oil to mechanic / ask mechanic about car / enter car / se" holding the tub in High Street.

When play begins (this is the chair and desk postures rule):
	now every chair allows seated;
	now every chair allows standing;
	now every desk allows seated;
	now every desk allows standing.

To decide whether the action is silent:
	(- (keep_silent == true) -).

Before entering a chair which supports something (called the impediment):
	if the noun supports a person:
		say "[The noun] [are] plainly occupied." instead;
	otherwise:
		try taking the impediment;
		if the impediment is on the noun:
			stop the action;
		otherwise:
			if the action is silent:
				say "[We] pick up [the impediment] first to make room on [the noun]."

Rule for writing a topic sentence about an as-yet-unknown introduceable person (called special-target) who is on a chair (called secondary-target):
	now the secondary-target is mentioned;
	say "[The special-target] [are] sitting here. [run paragraph on]";
	now the current-paragraph references the special-target.

Rule for writing a paragraph about someone (called special-target) who is on a chair (called secondary-target):
	if the special-target is initially-described, make no decision;
	if the special-target is flexibly-described, make no decision;
	if the special-target is introduceable and the special-target is as-yet-unknown, make no decision;
	now the current-subject is special-target;
	if the location is an office:
		now the secondary-target is mentioned;
		let N be a random desk which is in the location;
		say "[The special-target] [are] seated at [their] [N]. [run paragraph on]";
	otherwise:
		say "[The special-target] [are] sitting on [a secondary-target]. [run paragraph on]";

Rule for disclosing contents of a desk (called special-target):
	if someone (called desk-user) who is not the player is on a chair in the location:
		say "[if special-target is not mentioned]On [the special-target] in front of[otherwise]In front of[end if] [the desk-user] [is-are a list of mentionable things *in the special-target]. [run paragraph on]";
	otherwise:
		make no decision;

An office is a kind of room. One desk and one chair are in every office. An office is usually indoors.

Sanity-check sitting at a desk:
	if a chair (called target chair) which does not support a person is marked-visible:
		try entering the target chair instead.

Section 7 - Outdoor Rooms and Digging

To say ground:
	if location is outdoors:
		say "ground";
	otherwise:
		say "floor".

Definition: a thing is diggable:
	if it is the soil:
		yes;
	if it is the sand:
		yes;
	if it is the patchy grass:
		yes;
	if it is the scree:
		yes;
	no.

Understand "hole in" or "in" or "up" or "a hole in" as "[hole in]".

Understand "dig [hole in] [something diggable]" or "dig [something diggable]" as digging in. Understand "dig [hole in] [something]" or "dig [something]" as digging in. Digging in is an action applying to one thing.

Understand the command "scoop" as "dig".

Sanity-check digging in a person:
	say "[The noun] [don't] have much in common with a mound of dirt." instead.
Sanity-check digging in a floppy wearable thing which is not diggable:
	say "...what, like looking through for pockets or something? No sign of anything interesting, I'm afraid." instead.

Check digging in:
	if the noun is not diggable:
		say "That seems pointless." instead.

Report digging in the soil:
	say "[We] try scooping away a few handfuls of the soil, but find nothing interesting in the process. [We][']re also getting dirt under our fingernails." instead.

Report digging in something diggable:
	say "Excavating a bit of [the noun] turns up nothing of interest."

Instead of looking under a diggable thing:
	try digging in the noun.


Part 4 - Special Prop Types

Chapter 1 - Information Sources

Section 1 - Books

A book is a kind of thing. Understand "book" as a book. A book has a table-name called the contents.

Before printing the name of a proper-named book: say "[italic type]".
After printing the name of a book: say "[roman type]".

After consulting a book about a topic listed in the contents of the noun:
	say "[reply entry][paragraph break]".

After consulting a book about:
	say "[We] flip through [the noun], but find no reference to [the topic understood]." instead.

Understand "look up [text] in [a book]" as consulting it about (with nouns reversed). Understand "read about [text] in [a book]" as consulting it about (with nouns reversed).
Understand "look up [text]" as guidebook-consulting. Understand "read about [text]" as guidebook-consulting. Understand "look [text] up" as guidebook-consulting.
Understand "look [text] up in [a book]" as consulting it about (with nouns reversed). Understand "look [text] up in [something]" as consulting it about (with nouns reversed).

Check consulting a book about something (this is the take books to read them rule):
	if the player does not carry the noun:
		try taking the noun;
		if the player does not carry the noun:
			stop the action.

Guidebook-consulting is an action applying to one topic.

The guidebook-consulting action has an object called the implied textbook.

Setting action variables for guidebook-consulting:
	now the implied textbook is the player;
	if the player's command includes "[number]" and the filing cabinet is marked-visible:
		now the implied textbook is the filing cabinet;
	otherwise if the guidebook is marked-visible:
		now the implied textbook is the guidebook;
	otherwise if the player carries a book:
		now the implied textbook is a random book carried by the player;
	otherwise if a book (called the target) is marked-visible:
		now the implied textbook is the target.

Check guidebook-consulting:
	if the implied textbook is the player:
		say "[We] don't have any suitable book in which to look that up." instead.

Carry out guidebook-consulting:
	try consulting the implied textbook about the topic understood.

Section 2 - Computers

[The computer code handles the idea of computers that are on and off, running multiple programs, password protection, email delivery (though we don't actually use that in this game), search engines, and multiple-choice engines. These support Waterstone's laptop (which we never interact with), the secretary's computer (which we can break into if we want, but it's just an easter egg), and the machinery that converts the letter-remover device to remove its legal limitations, as well as Atlantida's ebook reader in the endgame.

The code was originally written for Counterfeit Monkey, but I took it out, polished it up, and published it some years ahead of the game as an extension. This was useful to do: authors of other games pointed out a few flaws in that code that allowed me to improve the behavior for this game.]

Include Computers by Emily Short.

The description of a keyboard is usually "Arranged in the Dvorak layout preferred in Anglophone Atlantis."

When play begins (this is the search engines rule):
	repeat with item running through search engines:
		now the results-found response of item is "The search turns up the following results:";
		now the description of the item is "[We] can type search terms to look for data records."

Chapter 2 - Substances

Section 1 - Vegetables

A vegetable is a kind of thing. The description of a vegetable is usually "Some leafy greens that might make an okay side salad, if [we] were feeling hungry." A vegetable is usually edible.

The scent-description of a vegetable is usually "vegetable matter".


[These two items are reserved for use in place of the pear and the banana during hard mode.]

The prickly-pear is a vegetable. The printed name is "prickly pear". The description of the prickly-pear is "It's a hostile red fruit covered with spines." Understand "prickly" and "pear" as the prickly-pear.

The pineapple is a vegetable. The description is "It is thick-skinned and spiky all over. I've never learned how to serve one of these things without getting juice over everything in a ten-foot radius."


Chapter 3 - Useful Items

Section 1 - Holdall

[For most of the time this game was in development, it used the backpack as a holdall and juggled the player's belongings in and out of it. Which worked fine, but it caused occasional irritations when one of the NPCs needed to give the player something, thereby exceeding his carrying capacity.

But more than that, it started to feel like all this obsession about how you were carrying what was just not very interesting: not fun, not related to the main substance of the puzzles, and just distracting from the main text of the game. I removed most of the puzzles that had to do with inventory management, toned down the one that remained (dealing with the Authenticator), revised the inventory listing to de-emphasize containment, and got rid of the carrying capacity constraint.

So, yeah, it's not remotely realistic that we can carry around all the stuff we carry in the game -- but it wouldn't be realistic stuffed into a backpack *either*. And not worrying about this gets the game *out of the way* of a lot of the core puzzle interactions, which are what the player should be focused on instead.]

[Include Considerate Holdall by Jon Ingold.

When play begins (this is the setting unstashable rule):
	now every long thing is unstashable;
	now the iron-pans are unstashable;
	now every fluid thing is unstashable.

The carrying capacity of the player is 10. ]

[And now for the cases where the player explicitly tries to stash something inappropriate, e.g. with PUT ALE IN BACKPACK: ]

Check inserting something into the backpack:
	if the noun is long or the noun is fluid or the noun is heavy:
		say backpack-refusal of the noun instead.

Check inserting a non-empty container into the backpack:
	let N be the unsuitable of the noun;
	if N is not nothing:
		say backpack-refusal of N instead.

Check inserting a non-empty supporter into the backpack:
	let N be the unsuitable of the noun;
	if N is not nothing:
		say backpack-refusal of N instead.

To decide which object is the unsuitable of (X - a thing):
	(- Unsuitable({X}) -).

Include (-

	[ Unsuitable x o;
		for (o=child(x) : o : ) {
			if ( (o.(+ heft +) > 3) || (o.(+ short +) == false) || (o.(+ solid +) == false) )
				return o;
			if (child(o)) o = child(o);
			else
				while (o) {
					if (sibling(o)) { o = sibling(o); break; }
					o = parent(o);
					if (o == x) return nothing;
				}
		}
		return nothing;
	];

-).

To say backpack-refusal of (N - a thing):
	if N is fluid:
		say "[The N] [one of]would make a real mess[or]would just spill[at random].";
	otherwise:
		if N is long:
			say "[The N] [one of]couldn't possibly fit[or]would be much too long[or]would just stick out[at random].";
		otherwise:
			say "There's nowhere near enough room.".


[PUT ALL IN BACKPACK can be quite slow, so let's speed it up a bit by skipping some checks]
This is the fast backpack stowing rule:
	if the backpack is closed:
		abide by the try opening rules for the backpack;
	repeat with N running through multiple object list:
		if N is fluid or N is long or N is heavy:
			say "[N]: [backpack-refusal of N]";
		otherwise:
			if (N is a container or N is a supporter) and N is non-empty:
				let X be the unsuitable of N;
				if X is not nothing:
					say "[N]: [backpack-refusal of X]";
				otherwise:
					say "[N]: Done.";
					now N is in backpack;
			otherwise:
				say "[N]: Done.";
				now N is in backpack;
	abide by the cancel multiple rule.


Section 2 - Clothing

[Our clothing simulation is as lightweight as we can make it. The aim is

-- to avoid breaking immersion by having the player simultaneously wear things that ought to overlap, like the monocle and the goggles
-- to juggle clothing automatically so that the player never has to worry about explicitly taking off one piece of clothing to wear another

Though there are provisions in the manual for clothing systems that handle layering, describing outfits based on what's uppermost, and specifying body parts, we want to avoid all of that. Naming body parts would clash with the "arm", "toe", and other severed body bits that appear elsewhere in the game, while layering would draw our attention to the fact that the protagonist's original outfit is never clearly described. We want to focus player attention as much as possible away from those points.

Any article of clothing which can be stacked freely -- rings, wraps, jewelry, etc -- is not said to cover anything. We also do not bother to specify a coverage area for items of clothing that the player will never get his hands on -- those worn by NPCs.]

Body-area is a kind of value. The body-areas are face-area, head-area, torso-area, legs-area.

Covering relates various things to one body-area. The verb to cover (it covers, they cover, it is covering, it is covered) implies the covering relation.

[Strip off anything else that's in the way -- which should be only one thing, really, but we write it as a loop just in case.]

Check wearing something which covers a body-area (called affected region):
	if the affected region is not the face-area and the affected region is not the head-area and the affected region is not the torso-area and the affected region is not the legs-area: [* you would think this was covered already, but for some reason there's a bug at time of writing that allows "which covers a body area" to match "illegal body-area" -- that is to say, no part of the body at all.]
		make no decision;
	while the player wears a non-noun thing (called blockage) which covers the affected region:
		try taking off the blockage;
		if the player wears the blockage:
			stop the action.

Definition: a thing is non-noun if it is not the noun.

[...and to deal with the special case of objects worn as blindfolds:]

Check wearing something which covers face-area  when the player wears something blinding:
	while the player wears a blinding thing (called blockage):
		try taking off the blockage;
		if the player wears the blockage:
			stop the action.


Report taking off something which covers face-area:
	say "[We] gently remove [the noun]." instead.

Report taking off something which covers head-area:
	say "[We] pull off [the noun] and smoothe down our hair." instead.

Report wearing something which covers head-area:
	say "[We] settle [the noun] on our head and adjust our hair underneath." instead.

Test wardrobe with "tutorial off / cycle wardrobe / wear ben wig / wear monocle / blindfold me with swatch / wear monocle".

Section 3 - Signs

A sign is a kind of thing.

Section 4 - Writing Surfaces

[This is a pretty unimportant feature, but at some point during the design I realized that it was possible to make pens, a nib, and various types of paper and notepad. Given that, it seemed fair to let the player write stuff down — he was likely to try, anyhow — and maybe I could tie in an achievement or two.

I didn't really greatly want to develop that from scratch, but happily an extension by Jim Aikin provided the functionality: writeable surfaces that would remember what you'd jotted on them, work only with certain writing implements, etc. I plugged it in, tested it out (worked perfectly), and moved on.]

Include Notepad by Jim Aikin.

Understand "write on [something]" as a mistake ("You'll need to say what you want to write down, as in 'write Alice on [the noun]'.").

Understand "write with [something]" as a mistake ("You'll need to say what you want to write down, as in 'write Alice on [the random notepad]'.").

Understand "write on [something] with [something]" as a mistake ("You'll need to say what you want to write down, as in 'write Alice on [the noun]'.").

Understand "write with [something] on [something]" as a mistake ("You'll need to say what you want to write down, as in 'write Alice on [the second noun]'.").


Sanity-check an actor writing on something:
	if the actor carries the inked pen:
		make no decision;
	if the actor carries the uninked pen:
		say "[The pen] is out of ink at the moment." instead;
	if the actor carries the pens:
		say "[The pens] are only nominally writing implements at all." instead.


Section 5 - Instruments and Performance

[I am not great at music — that is, I really enjoy listening to it, but theory, analysis, and most musical performance is beyond my ability, and I have the sort of singing voice I would only dare exercise when hiking alone in a wilderness preserve.

So there was no initial plan to feature anything about instruments; it just turned out that several introduced themselves into the game, either as scenery (the piano in the Fleur d'Or) or as makeable objects (the oboe). Once enough of them turned up, I figured I should handle them in some systematic fashion.]

An instrument is a kind of thing. Understand "instrument" as an instrument.

After reading a command (this is the replace play with perform rule):
	if the player's command includes "play darts" and the location is the Counterfeit Monkey:
		replace the matched text with "playdarts";
	if the player's command includes "play" and the location is not the Counterfeit Monkey:
		replace the matched text with "perform". [This is a hack because we have to get around "play" also turning up in dialogue for the game at the Counterfeit Monkey.]

Understand "perform [something] on [something]" as performing it on. Understand "perform [piece] on [instrument]" as performing it on. Understand "perform [something] on [instrument]" as performing it on.

Understand "perform on [instrument]" or "perform [instrument]" as performing vaguely on.
Understand "perform [piece]" or "perform [something]" as performing it on.

Performing it on is an action applying to one visible thing and one thing.
Performing vaguely on is an action applying to one thing.

Sanity-check performing vaguely on something:
	try performing the player on the noun instead.

Rule for supplying a missing second noun while performing something on:
	if an instrument (called target instrument) is marked-visible:
		now the second noun is the target instrument;
	otherwise:
		if game-selection is marked-visible:
			now the second noun is the game-selection;
		else:
			if computer-game-selection is marked-visible:
				now the second noun is the computer-game-selection;
			else:
				if the projector is marked-visible:
					now the second noun is the projector;
				else:
					say "There's no instrument handy." instead.

Rule for supplying a missing noun while performing something on:
	now the noun is the player. [as a safe generically-present thing]

Sanity-check performing something on game-selection:
	say "It's not really a game-playing occasion." instead.

Sanity-check performing something on computer-game-selection:
	say "Brock would cut our fingers off if he caught [us] playing games on his computer. Or hacking into it, for that matter." instead.

Sanity-check performing something on a person:
	say "If [the second noun] [wish] to sing something, that is up to [them]." instead.

Sanity-check performing something on something which is not an instrument:
	say "[The second noun] [aren't] much of an instrument." instead.

Understand "perform [text] on [something]" as improvising it on. Understand "perform [text] on [instrument]" as improvising it on. Improvising it on is an action applying to one topic and one thing.

Understand "perform [text]" as improvising it on.

Rule for supplying a missing second noun while improvising the topic understood on:
	if an instrument (called target instrument) is marked-visible:
		now the second noun is the target instrument;
	otherwise:
		say "There's no instrument handy." instead.

Check improvising the topic understood on something which is not an instrument:
	say "[The second noun] [aren't] much of an instrument." instead.


Part 5 - Extra Actions

Section 1 - Swimming and other Seaside Activities

Swimming is an action applying to one visible thing.

Understand "swim [a direction]" as swimming.

Understand "swim" or "float" as swimming.

Rule for supplying a missing noun while swimming:
	if the location is not swimmable:
		say "[We][']d need to be closer to the shore.";
		rule fails;
	otherwise:
		now the noun is north.

Check swimming:
	if the location is not swimmable:
		say "[We][']d need to be closer to the shore." instead.

Check swimming (this is the block swimming off the boat rule):
	if the location is nautical:
		say "Safest to stay on the yacht; it was hard enough getting here." instead.

Check swimming (this is the always block swimming rule):
	say "Considering the delicacy of our possessions and the distance [we] need to travel, swimming is not a viable solution." instead.

Instead of swimming something when the location is the Customs House or the location is the precarious perch:
	say "From up here? Unlikely. And even from the water's edge, it would be better to have a boat."

Instead of swimming something when [the Holding Chamber is not visited and] the location is the Docks:
	say "Going swimming in these murky waters isn't an appealing thought, and anyway [we] don't have time for a pleasure dip just now."

Definition: a room is swimmable:
	if it is the Docks:
		yes;
	if it is nautical:
		yes;
	if the sea-view is marked-visible:
		yes;
	no.


Understand "surf" or "go surfing" or "windsurf" or "wind surf" as surfing. Surfing is an action applying to nothing.

Check surfing in a swimmable room:
	say "The waves around here are nothing like big enough, even if [we] had a board." instead.

Check surfing:
	say "Even if [we] were down by the water, the waves on this island aren't really surfable." instead.



Understand "body surf" or "bodysurf" as bodysurfing. Bodysurfing is an action applying to nothing.

Check bodysurfing in a swimmable room:
	say "The waves around here are nothing like big enough, even if [we] had the skill and wanted to get our things all wet." instead.

Check bodysurfing:
	say "Even if [we] were down by the water, the ocean around here isn't very surfable." instead.

Understand "dive in/into [sea-view]" or "jump in/into [sea-view]" as diving into. Understand "dive in/into [distant-sea-view]" or "jump in/into [distant-sea-view]"  as diving into. Understand "dive in/into [something fluid]" or "jump in/into [something fluid]" as diving into. Understand "dive in/into [something]"  or "jump in/into [something]" as diving into. Diving into is an action applying to one thing.

Instead of entering a fluid:
	try diving into the noun.

Before diving into distant-sea-view:
	say "[We][']d never make it from here." instead. [Need to get past the accessibility issues.]

Sanity-check diving into a person:
	say "I've heard of sinking into someone's eyes before, but..." instead.

Sanity-check diving into a toilet:
	say "Unhygienic even if possible." instead.

Sanity-check diving into something which is not a fluid:
	say "It generally works best to dive into liquids." instead.

Sanity-check diving into a fluid thing which is not a backdrop:
	say "[The noun] [aren't] exactly deep enough to [one of]bathe in[or]swim in[or]dive into[at random]." instead.

Check diving into sea-view:
	say "The shore here slopes gradually, with very shallow water at the beginning." instead.


Test watersports with "test liquid-jump / test near-jump / test high-jump".

Test high-jump with "dive / jump into the sea / surf / bodysurf / wind surf / swim / jump" in the Precarious Perch.

Test liquid-jump with "jump / dive / jump into the spill / dive in the spill / dive into the spill / surf / bodysurf / wind surf / swim" in the Outdoor Cafe.

Test near-jump with "jump / dive / jump into the ocean / surf / bodysurf / wind surf / swim" in the Private Beach.


Section 2 - Attacking it with

[This is here primarily for the pinata puzzle, but also to give sensible responses to a number of other things, including attempts at combat with Atlantida.]

Understand the commands "attack" and "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck" as something new.

Attacking it with is an action applying to one thing and one carried thing. Understand "attack [something] with [something preferably held]" as attacking it with.

Understand "punch [something] with [something preferably held]" as attacking it with when the umlaut punch is marked invisible and the mutual punch is marked invisible.

Understand the commands "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck" as "attack".

Does the player mean attacking the hanging figure with a long strong thing:
	it is very likely.

Sanity-check attacking something with something:
	if the second noun is not long:
		say "[The second noun] [are] too short to hit with effectively." instead;
	if the second noun is floppy:
		say "[The second noun] [are] too floppy to do much damage." instead.

Definition: a thing is attackable:
	if it is atlantida-woman:
		yes;
	if it is the tall window:
		yes;
	if it is the hanging Atlantida figure:
		yes;
	no.

Understand "attack [something not attackable]" as attacking.

Understand "punch [something not attackable]" as attacking when the umlaut punch is marked invisible and the mutual punch is marked invisible.

Sanity-check attacking something which is not attackable with something:
	try attacking the noun instead.
Sanity-check attacking someone who is not attackable with something:
	follow the block attacking rule instead.
Sanity-check attacking someone who is not attackable:
	follow the block attacking rule instead.
Sanity-check attacking something which is not attackable with an edged thing:
	try cutting the noun with the second noun instead.

Understand "swing [something preferably held] at [something]" as attacking it with (with nouns reversed).


World Model Tweaks ends here.
