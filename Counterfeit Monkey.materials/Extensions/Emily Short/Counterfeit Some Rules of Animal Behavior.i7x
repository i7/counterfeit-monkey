Counterfeit Some Rules of Animal Behavior by Emily Short begins here.

Use authorial modesty.

Book 1 - Some Rules of Animal Behavior

Section 1 - Lifting Animals

Instead of taking an animal when the heft of the noun is less than 4:
	if the player carries the noun:
		say "[We][']ve already got [the noun].";
	otherwise:
		say "[We] scoop [the noun] into our arms.";
		now the player carries the noun.

[Every turn:
	now the score is the number of useful things enclosed by the player;
	if the score is 3, end the game saying "You are now ready for the next episode!"]

Every turn:
	repeat with burden running through contained people:
		if the burden is the pirate:
			next;
		if the burden is the pirate-crew:
			next;
		if the burden is the crew-group:
			next;
		if the burden is not the player and the burden is not Brock and the burden is not the mechanic and the burden is fake:
			try the burden exiting;

Definition: a person is contained:
	if it is in a container which is not the repository:
		yes;
	if it is on a supporter which is not in the repository:
		yes;
	no.

Check something exiting when the actor is an animal in the kayak:
	say "[one of][The person asked] [make] as though to climb out of the kayak, then [see] that everything outside is made of water, and withdraw[s] sulkily.[or][The person asked] waits in the bottom of the kayak.[stopping]" instead.

Check something exiting when the actor is an animal in the synthesizer:
	if the person asked is a bird:
		say "[The person asked] [make] some attempts to flutter out of [the synthesizer], but [don't] get much lift and [give] up for the moment." instead;
	otherwise:
		say "[The person asked] scrabble[s] at the smooth sides of [the synthesizer], but can't get out." instead.

Report something exiting when the actor is an animal and the container exited from is the t-inserter:
	say "[The person asked] clamber[s] out of [the t-inserter]." instead.

Report something exiting when the actor is a bird and the container exited from is the t-inserter:
	say "[The person asked] [hop] and flutter[s] out of [the t-inserter]." instead.

Test kayakcat with "autoupgrade / wave s-remover at shackle / wave l-remover at bollard / wave d-remover at board / wave b-remover at boar / get oar / get in kayak / launch kayak / z" holding the tomcat in the Abandoned Shore.

Section 2 - Animal Following

[Carry out entering the line:
	now pursuing-state is true;
	[repeat with traveler running through animals in the location:
		try the traveler entering the noun;]
	repeat with traveler running through fake people in the location:
		try the traveler entering the noun;
	now pursuing-state is false.]

Carry out entering a vehicle:
	now pursuing-state is true;
	repeat with traveler running through fake people in the location:
		try the traveler entering the noun;
	now pursuing-state is false.

Check a fake person entering a vehicle when the heft of the person asked is greater than 3:
	stop the action.

Check a fake person going from a road to a road when the protesters are not off-stage:
	stop the action.

Unsuccessful attempt by a fake person entering a car:
	say "[The person asked] makes an effort to get in, but does not remotely fit." instead.

Rule for writing a paragraph about a fake person which is in a car (called target):
	say "Sitting in [the target] [is-are the list of fake people *in the target][if the number of fake people in the target is greater than 1], like players in a Marx Brothers movie[end if]. [paragraph break]"

Carry out exiting:
	now pursuing-state is true;
	repeat with traveler running through fake people in the container exited from:
		try the traveler exiting;
	now pursuing-state is false.

Carry out going:
	now pursuing-state is true;
	repeat with traveler running through fake people in the room gone from:
		try the traveler going the noun;
	now pursuing-state is false.

After a fake person going, exiting, or entering when pursuing-state is true:
	if the person asked is a cat:
		add cat-sample to the incoming-list;
	otherwise:
		add the person asked to the incoming-list, if absent.

Pursuing-state is a truth state that varies. Pursuing-state is false.
The incoming-list is a list of objects that varies.

After going or entering or exiting when the player is staid:
	report followers;
	continue the action.

To report followers:
	if the number of entries in the incoming-list is not 0:
		let N be "[The incoming-list with definite articles]";
		say "[N] " in sentence case;
		say "[one of]trail[or]come[or]follow[or]walk[at random][if the number of entries in incoming-list is 1]s[end if] after us";
		sort the incoming-list;
		repeat through the Table of Animal Sets:
			let group be the grouping entry;
			sort group;
			if group is the incoming-list:
				say "[epithet entry]";
		say ".";
		truncate the incoming-list to 0 entries;
	continue the action.

After describing path of the player:
	report followers.

The cat-sample is a cat. The printed name is "cat". Understand "cat" as a cat.

Table of Animal Sets
grouping (list of animals)	epithet (some text)
{roc}	", just managing to squeeze through in our wake"
{peacock, cat-sample}	"[one of], with the cat making ambitious swipes at the peacock's tail[or], the peacock doing its best to keep away from the cat[stopping]"
{cat-sample, cock, ass}	"[one of], like three quarters of the Bremen Musicians. I guess that makes us the dog[or], again[stopping]"
{cat-sample, earl}	": the cat seems to be entranced by the earl's trailing ermine"

[ {pet, cat-sample}	"[one of]: the cat looks as though it would like to make short work of the pet, but the pet is cunning and keeps close to our leg[or], the pet still carefully dodging being alone with the cat[or]: the pet because it doesn't want to be alone with the cat, the cat because it would like to catch up with the pet[or] again[stopping]"  ]

Understand "pet [something]" as touching.

Instead of touching or rubbing or squeezing an animal:
	say "[We] gingerly pet [the noun]."

Instead of touching the pet:
	say "It arches its back into your touch and gives a soft, contented trill. The fur really is as soft as it appears."

Sanity-check attacking an animal:
	say "[We] may be in serious trouble, but you're not the kind of person who would take it out on dumb animals. At least [--] yes, that's a relief. You're not the sort." instead.

Sanity-check saying hello to an animal:
	say "[The noun] [one of]blink[s][or]regard[s] us mutely[at random]." instead.

Sanity-check saying hello to an insect:
	say "Our greeting has no visible effect whatever on [the noun]." instead.

Sanity-check saying goodbye to an animal:
	say "[The noun] [one of]regard[s] us mutely[or][are] completely indifferent[at random]." instead.

Sanity-check saying goodbye to an insect:
	say "Predictably, [the noun] [do] not react." instead.



Counterfeit Some Rules of Animal Behavior ends here.