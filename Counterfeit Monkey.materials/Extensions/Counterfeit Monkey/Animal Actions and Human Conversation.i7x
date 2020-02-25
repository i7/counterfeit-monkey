Animal Actions and Human Conversation by Counterfeit Monkey begins here.

Use authorial modesty.


Book 1 - Some Rules of Animal Behavior

Section 1 - Lifting Animals and Children

Definition: a person is human if it is not an animal.
Definition: a person (called P) is portably-small if the heft of P is less than 4.

Check an actor taking (this is the new can't take other people rule):
	if the noun is a person and the noun is not portably-small:
		if the actor is the player, say "I don't suppose [the noun] [would care] for that." (A);
		stop the action.

The new can't take other people rule is listed instead of the can't take other people rule in the check taking rulebook.

Report taking an animal:
	say "[We] scoop [the noun] into our arms.";
	stop the action.

Report taking an portably-small human person:
	say "Against the protests of [the noun], [we] scoop [regarding the noun][them] into our arms.";
	stop the action.

[Every turn:
	now the score is the number of useful things enclosed by the player;
	if the score is 3, end the game saying "You are now ready for the next episode!"]

Include Animal Speedups by Counterfeit Monkey.

Every turn (this is the contained people exiting rule):
	rapidly check all contained people.

	[repeat with burden running through people-present:
		if the burden is not contained:
			next;
		if the burden is the pirate:
			next;
		if the burden is the pirate-crew:
			next;
		if the burden is the crew-group:
			next;
		if the burden is Brock:
			next;
		if the burden is the mechanic:
			next;
		if the burden is fake:
			try the burden exiting;]


[Definition: a person is contained:
	if it is in a container which is not the repository:
		yes;
	if it is on a supporter which is not in the repository:
		yes;
	no.]

Check something exiting when the actor is in the kayak and the location is not abandoned shore:
	if the kayak is in location and the actor is not the player:
		say "[one of][The person asked] [make] as though to climb out of [the kayak], then [see] that everything outside is made of water, and [withdraw] sulkily.[or][The person asked] [wait] in the bottom of [the kayak].[stopping]" instead.

Check something exiting when the actor is in the synthesizer and the player is enclosed by the seminar room:
	if the actor is a bird:
		say "[The actor] [make] some attempts to flutter out of [the synthesizer], but [don't] get much lift and [give] up for the moment.";
	otherwise:
		if the actor is an animal:
			say "[The actor] [scrabble] at the smooth sides of [the synthesizer], but can't get out.";
		otherwise:
			follow the exit attempt rules for the actor;
	stop the action.

Check something exiting when the actor is on the programmable dais:
	follow the exit attempt rules for the actor;
	stop the action.

The exit attempt rules are an object-based rulebook.

To fidget is a verb. To pace is a verb.

An exit attempt rule for a person (called exiter):
	if a random chance of 1 in 3 succeeds:
		if a random chance of 1 in 2 succeeds:
			say "[The exiter] [one of][fidget] uncomfortably[or][pace] around[at random] [in-on the holder of the exiter].";
			the rule succeeds;
		let preposition be text;
		if the holder of exiter is the programmable dais:
			now preposition is "off";
		otherwise:
			now preposition is "out of";
		say "[The exiter] [one of][make] as if to get[or][appear] to consider getting[or][seem] to contemplate getting[at random] [preposition] [the holder of the exiter]";
		if a random chance of 1 in 2 succeeds:
			say ", but [regarding the exiter][one of][decide] against it[or]something makes [them] change [their] mind[at random][run paragraph on]";
		say "."


Section 3 - Ushering animals and people on and off transformation tools

Understand "usher [someone] onto/on/up/into/in [something]" as ushering it onto. Ushering it onto is an action applying to two things.

Understand the command "lead" as "usher".
Understand "push [someone] onto/into/on/to [something]" as ushering it onto.

Understand "usher [someone] off/from [something]" as ushering it off. Ushering it off is an action applying to two things.

Understand "usher [someone] down from [something]" as ushering it off.
Understand "usher [someone] out of [something]" as ushering it off.
Understand "push [someone] down from [something]" as ushering it off.
Understand "push [someone] out of [something]" as ushering it off.
Understand "push [someone] off/from [something]" as ushering it off.
Understand "take [someone] from [something]" as ushering it off.
Understand "get [someone] from [something]" as ushering it off.

Definition: A thing is synth-like if it is the programmable dais or it is the synthesizer or it is the cryptolock or it is the t-inserter or it is the spinner.

Check ushering someone onto something when the holder of the noun is the second noun:
	say "[The noun] [are] already [in-on the second noun].";
	stop the action.

A first check ushering someone onto something when the holder of the noun is the player:
	if the second noun is a container:
		try inserting the noun into the second noun instead;
	otherwise:
		try putting the noun on the second noun instead.

Check ushering someone onto something which is not synth-like:
	if the noun is portably-small:
		if the second noun is a container:
			try inserting the noun into the second noun instead;
		otherwise:
			try putting the noun on the second noun instead;
	otherwise:
		say "[The noun] [seem] unwilling to get [in-on the second noun].";
		stop the action.

Check ushering someone onto the cryptolock:
	if the noun is portably-small:
		try inserting the noun into the second noun instead;
	otherwise:
		say "[The noun] [seem] unwilling to get into the bucket, and [they] wouldn't fit even if [they] wanted to.";
	stop the action.

Carry out ushering someone onto the t-inserter:
	if the t-inserter is not empty:
		let target be the first thing held by t-inserter;
		if Brock is not in location:
			say "[The target] [are] in there already.";
			stop the action;
		otherwise:
			say "'[one of]Here, [the target] [are] in your way[or]Let me get that for you[or]Here[or]I've got that[at random].' [run paragraph on]";
			try Brock taking the target;
			if Brock is carrying the target:
				try Brock dropping the target;
			otherwise:
				say "Brock tries to remove [the target] from the T-inserter for you, but fails.";
				stop the action;
	now the player carries the noun;
	say "[random-ushering-phrase] into [the second noun]. [run paragraph on]";
	try inserting the noun into the t-inserter;
	stop the action.

Carry out ushering someone onto something:
	if the second noun is not empty and the carrying capacity of the second noun is 1:
		say "There is no more room [in-on the second noun].";
		stop the action;
	say "[random-ushering-phrase] up [if second noun is a supporter]on[otherwise]into[end if] [the second noun].";
	now the noun is on the second noun.

Check ushering someone off something when the holder of the noun is not the second noun:
	say "[The noun] [are] not [in-on the second noun].";
	stop the action.

Carry out ushering someone off something:
	say "[random-ushering-phrase] down from [the second noun] to the floor.";
	now the noun is in the location.

Does the player mean ushering the player onto something:
	it is very unlikely.

Does the player mean ushering someone onto something which is not enterable:
	it is very unlikely.

Instead of ushering the player onto something:
	try entering the second noun.

Instead of ushering the player off something:
	try exiting.

Instead of ushering a real person off something:
	try asking the noun to try exiting.

Instead of ushering a real person onto something:
	try asking the noun to try entering the second noun.

To say random-ushering-phrase:
	if a random chance of 1 in 2 succeeds:
		say "[We][one of] carefully[or] gently[or] laboriously[or][at random]";
	otherwise:
		say "[one of]Carefully[or]Gently[or]Laboriously[at random], [we]";
	say " [one of]help[or]usher[or]lead[at random] [the noun]";

Instead of asking a fake person (called the enterer) to try standing up on something enterable (called target):
	try ushering the enterer onto the target.

Instead of asking a fake person (called the enterer) to try sitting on something enterable (called the target):
	try ushering the enterer onto the target.

Instead of asking someone fake (called the enterer) to try lying on something enterable (called the target):
	try ushering the enterer onto the target.

Instead of asking someone fake (called the enterer) to try entering something enterable (called the target):
	try ushering the enterer onto the target.

Instead of asking a fake person (called enterer) to try getting off a thing (called target):
	try ushering the enterer off the target.

Instead of asking a fake person (called the enterer) to try exiting:
	if the holder of the enterer is not synth-like:
		continue the action;
	try ushering the enterer off the holder of the enterer.

To say ushertake (creature - a person):
	say "[The creature] [are] unwilling to be carried, but [we] [one of]carefully [or]gently [or][at random][one of]help[or]usher[or]lead[at random] [regarding creature][them]".

Sanity-check taking a fake person which is on the programmable dais:
	unless the player is on the programmable dais or the noun is portably-small or the noun is not touchable:
		now the noun is in location;
		say "[ushertake noun] down from the dais.";
		stop the action.

Sanity-check removing a fake person from the programmable dais:
	unless the noun is not touchable or the noun is portably-small:
		now the noun is in location;
		say "[ushertake noun] down from the dais to the floor.";
		stop the action.

Sanity-check taking a fake person which is in the synthesizer:
	unless the player is in the synthesizer or the noun is not touchable or the noun is portably-small:
		now the noun is in location;
		say "[ushertake noun] out of the synthesizer and down to the floor.";
		stop the action.

Sanity-check removing a fake person from the synthesizer:
	unless the noun is not touchable or noun is portably-small:
		now the noun is in location;
		say "[ushertake noun] out of the synthesizer and down to the floor.";
		stop the action.

Sanity-check putting a fake person on a synth-like thing:
	if the noun is in location and the noun is not portably-small:
		try ushering the noun onto the second noun instead.

Sanity-check inserting a fake person into a synth-like thing:
	if the noun is in location and the noun is not portably-small:
		try ushering the noun onto the second noun instead.

Report something exiting when the actor is an animal and the container exited from is the t-inserter:
	say "[The actor] [clamber] out of [the t-inserter]." instead.

Report something exiting when the actor is a bird and the container exited from is the t-inserter:
	say "[The actor] [hop] and [flutter] out of [the t-inserter]." instead.

Test kayakcat with "autoupgrade / wave s-remover at shackle / wave l-remover at bollard / wave d-remover at board / wave b-remover at boar / get oar / get in kayak / launch kayak / z" holding the tomcat in the Abandoned Shore.

Rule for reaching outside something synth-like:
	unless listening:
		let H be the holder of the player;
		while H is not the location:
			try exiting;
			if the holder of the player is H:
				say "[We] cannot reach [regarding the noun][them] from [the holder of the player].";
				deny access;
			now H is the holder of the player;
		make no decision.

[The above rule somehow does not work for the spinner, probably something to do with it being part of a door]
An accessibility rule when the player is on the spinner:
	if listening:
		make no decision;
	unless the touch-goal is enclosed by the player or the touch-goal is the spinner or the touch-goal is the spinner-gate:
		if the touch-goal must be touched:
			try exiting;
			make no decision.

Section 3 - Animal Following

[Carry out entering the line:
	now pursuing-state is true;
	[repeat with traveler running through animals in the location:
		try the traveler entering the noun;]
	repeat with traveler running through fake people in the location:
		try the traveler entering the noun;
	now pursuing-state is false.]

Carry out entering a vehicle in location:
	now pursuing-state is true;
	rapidly make followers follow into noun;
	now pursuing-state is false.

Check a fake person entering a vehicle when the heft of the person asked is greater than 3:
	say "[The person asked] [make] an effort to get in, but [do] not remotely fit.";
	stop the action.

Check a fake person going from a road to a road when the protesters are not off-stage:
	stop the action.

[Unsuccessful attempt by a fake person entering a car:
	say "[The person asked] makes an effort to get in, but does not remotely fit." instead.]

Rule for writing a paragraph about a fake person which is in a car (called target):
	rapidly mention possessions of followers in target;
	say "Sitting in [the target] [is-are the list of fake people *in the target][if the number of fake people in the target is greater than 1], like players in a Marx Brothers movie[end if]. [paragraph break]"

Carry out exiting:
	unless the container exited from is synth-like:
		now pursuing-state is true;
		rapidly make followers try exiting from the container exited from;
		now pursuing-state is false.

Carry out going:
	now pursuing-state is true;
	rapidly make followers try going noun from the room gone from;
	now pursuing-state is false.

After a fake person going, exiting, or entering when pursuing-state is true (this is the add followers to incoming-list rule):
	now the person asked is mentioned;
	if the person asked is a cat:
		if cat-sample is not listed in the incoming-list:
			now the printed name of cat-sample is "cat";
			now the cat-sample is singular-named;
			add cat-sample to the incoming-list;
		if there is more than one cat in holder of the person asked:
			now the printed name of cat-sample is "cats";
			now the cat-sample is plural-named;
	otherwise:
		if the person asked is a pet:
			if pet-sample is not listed in the incoming-list:
				now the printed name of pet-sample is "pet";
				now the pet-sample is singular-named;
				add pet-sample to the incoming-list;
			if there is more than one pet in holder of the person asked:
				now the printed name of pet-sample is "pets";
				now the pet-sample is plural-named;
		otherwise:
			add the person asked to the incoming-list, if absent.

Pursuing-state is a truth state that varies. Pursuing-state is false.
The incoming-list is a list of objects that varies.

The exited-from is a thing that varies.

After exiting when the player is staid:
	if the number of entries in the incoming-list is not 0:
		now the exited-from is the container exited from;
		report followers;
		say paragraph break;
	continue the action.

After going or entering when the player is staid:
	if the number of entries in the incoming-list is not 0:
		report followers;
		say paragraph break;
	continue the action.

To say report-followers:
	report followers.

To report followers:
	if the number of entries in the incoming-list is not 0:
		let N be "[The incoming-list with definite articles]";
		now N is N in sentence case;
		say "[N] ";
		if the player is in a car:
			say "come[if the number of entries in incoming-list is 1 and entry 1 of incoming-list is not plural-named]s[end if] along with us";
		otherwise:
			if exiting:
				say "get[if the number of entries in incoming-list is 1 and entry 1 of incoming-list is not plural-named]s[end if] out of [the exited-from]";
			otherwise:
				say "[one of]trail[or]come[or]follow[or]walk[at random][if the number of entries in incoming-list is 1 and entry 1 of incoming-list is not plural-named]s[end if] after us";
		sort the incoming-list;
		repeat through the Table of Animal Sets:
			let group be the grouping entry;
			sort group;
			if group is the incoming-list:
				say "[epithet entry]";
		say ". ";
		truncate the incoming-list to 0 entries;
	continue the action.

After describing path of the player:
	report followers.

The cat-sample is a cat. The printed name is "cat". Understand "cat" as a cat.

The pet-sample is a pet. The printed name is "pet".

Understand "animal" as an animal. Understand "animals" as the plural of animal.

Table of Animal Sets
grouping (list of animals)	epithet (some text)
{roc}	", just managing to squeeze through in our wake"
{peacock, cat-sample}	"[one of], with the cat making ambitious swipes at the peacock's tail[or], the peacock doing its best to keep away from the cat[stopping]"
{cat-sample, cock, ass}	"[one of], like three quarters of the Bremen Musicians. I guess that makes [us] the dog[or], again[stopping]"
{cat-sample, earl}	": the cat seems to be entranced by the earl's trailing ermine"
{pet-sample, cat-sample}	"[one of]: [the cat-sample] looks as though [they] would like to make short work of [the pet-sample], but [the pet-sample] [are] cunning and [keep] close to our leg[or], [the pet-sample] still carefully dodging being alone with [the cat-sample][or]: [the pet-sample] because [they] [don't] want to be alone with [the cat-sample], [the cat-sample] because [they] would like to catch up with [the pet-sample][or] again[stopping]"

Understand "pet [something]" as touching.

Instead of touching or rubbing or squeezing an animal:
	say "[We] gingerly pet [the noun]."

Instead of touching a pet:
	say "It arches its back into your touch and gives a soft, contented trill. The fur really is as soft as it appears."

Sanity-check attacking an animal:
	say "[We] may be in serious trouble, but you're not the kind of person who would take it out on dumb animals. At least [--] yes, that's a relief. You're not the sort." instead.

Sanity-check saying hello to an animal:
	say "[The noun] [one of][blink][or][regard] [us] mutely[at random]." instead.

Sanity-check saying hello to an insect:
	say "Our greeting has no visible effect whatever on [the noun]." instead.

Sanity-check saying goodbye to an animal:
	say "[The noun] [one of][regard] [us] mutely[or][are] completely indifferent[at random]." instead.

Sanity-check saying goodbye to an insect:
	say "Predictably, [the noun] [do] not react." instead.

Sanity-check answering an animal that:
	 try saying hello to the noun instead.

Sanity-check starting a conversation with an animal about an object:
	 try saying hello to the noun instead.

Book 2 - Person Behavior

Part 1 - Universal Groundwork

Section 1 - Asking Directions


To say holiday closures:
	if the current interlocutor does not know things-close-today:
		casually queue closure-excuse;
	let X be a random number between 1 and 10;
	if X is:
		-- 1: say "'Nothing that's definitely open today.'[no line break]";
		-- 2: say "'None that are open for public use right now.'[no line break]";
		-- 3: say "There might be one or two places if they're really popular, but I couldn't promise anything.'[no line break]";
		-- otherwise:
			say "'[awkward no]. ";
			say "[one of]A lot of[or]Most[or]Many[or]Lots of[at random]";
			say "[one of] things[or] places[at random] ";
			say "[one of]are closed[or]are shut[or]are shut down[or]are closed up[or]aren't open[or]let the employees go home[as decreasingly likely outcomes]";
			say ".'[no line break]";

closure-excuse is a beat-opened NPC-directed quip.
	The reply is "[things-close-today][beat] [one of]'You can't even find an open gas station in this town on Serial Comma Day.'[or]'People take Serial Comma Day seriously[apologetic].'[or][one of]'It's the holiday.'[or]'Serial Comma Day is a big thing around here.'[or]'It'll be worse than a Sunday today.'[or]'Any other day of the year you'd have more luck.'[cycling][stopping][line break]".

[Questions about subjects]

To say directions to (destination - a room):
	say "'";
	if a random chance of 1 in 3 succeeds:
		say "[personal yes]. ";
	say "[one of]Perhaps you should try [or]You might want [or]I'd go over to [or]Try [or]The best chance would be [at random]";
	unless the destination is the fleur d'or lobby:
		say "[the destination]";
	otherwise:
		say "the Fleur d'Or";
	let distance be the best-number of moves from the location to the destination;
	let the way be the true-best route to the destination;
	if distance is:
		-- 1:
			say ". That's just [way] from here[run paragraph on]";
		-- otherwise:
			if distance is less  than 5:
				say ". It's not far; you'd head [way] to start[run paragraph on]";
			otherwise if distance is less than 9:
				say ". It's a little bit of a walk, but not too bad. Head [way] to start with[run paragraph on]";
			otherwise:
				say ". It's pretty far from here, though. Go [way][run paragraph on]";
			if a road (called target road) is adjacent to the destination and destination is not a road:
				say ". It's just off [the target road]";
	if destination is outdoors: [in this case, the destination probably exists only as a facade somewhere]
		say ". It might be closed, though";
		if the current interlocutor does not know things-close-today:
			casually queue closure-excuse;
	say ".' [no line break]";


Instead of a fake person discussing a quip which does not quip-supply the current interlocutor:
	carry out the expressing ignorance by activity with the current interlocutor;
	say paragraph break.

Rule for expressing ignorance by a fake person (called target):
	say "[The target] just [look] confused. These generated people are usually limited to acting only in one particular sphere of action.[run paragraph on]"

Carry out someone discussing a location-questioning quip:
	if the current interlocutor knows you-are-tourist:
		casually queue suggest-tourist-information;
	now the current interlocutor knows you-are-tourist.


Instead of someone discussing where lodging seems found when the location is dormitory or location is hostel:
	try the actor discussing you-seem-confused.

Instead of a tourist person discussing a location-questioning quip:
	if the correct answer of the noun is the location:
		try the actor discussing you-seem-confused;
	else:
		if the actor knows you-are-tourist:
			try the actor discussing also-tourist;
		otherwise:
			try the actor discussing just-got-here;

you-seem-confused is a weakly-phrased NPC-directed quip.
	The reply is "'[one of]Look around you,[or]You don't need to go far, do you?[or]What do you call this?[or]Uh… you seem kind of confused,[at random]' [the current interlocutor] says.".

also-tourist is a weakly-phrased beat-opened NPC-directed quip.
	The reply is "[one of][The current interlocutor] shrugs. 'I'm as much a tourist here as you.'[or][ignorance][stopping]".

just-got-here is a weakly-phrased NPC-directed quip.
	The reply is "[one of]'You probably know more about that than I do,' says [the current interlocutor]. 'I just got here.'[or][ignorance][stopping]".

Instead of a native person discussing a location-questioning quip when the guidebook is marked-visible and the current interlocutor does not recollect try-guidebook:
	try the person asked discussing try-guidebook.

Instead of someone discussing a location-questioning quip when the person asked recollects at least three location-questioning quips:
	try the person asked discussing ask-someone-else.

Instead of someone discussing a location-questioning quip when the location is the correct answer of the noun:
	try the person asked discussing you-seem-confused.

Last report discussing a location-questioning quip for the first time:
	say "(Incidentally, you know, we don't have to go around asking where everything is like a tourist just off the boat. If you want to go to some place you've heard of, just say so and I'll handle the navigation [--] unless of course you actually want to give the impression of being a tourist just off the boat, in which case far be it from me to critic[ize] your methods.)" instead.

location-questioning quip is a kind of questioning quip.
	A location-questioning quip is usually weakly-phrased.
	A location-questioning quip has some text called the place-sought.
	A location-questioning quip has an object called the correct answer.
	The comment is "'[if the current interlocutor knows you-are-tourist]Do you know[otherwise]I was wondering: do you know[end if] where [one of]I could find[or]there's[at random] [place-sought of the item described] [one of]around here[or]near here[or]in this town[or]hereabouts[at random]?'"
	The reply is "[if the correct answer of the item described is Park Center][holiday closures][otherwise if the correct answer of the item described is the location]'[Well], look around you.'[otherwise][directions to the correct answer of the item described]".

where there seems airport is a weakly-phrased location-questioning quip.
	The printed name is "where there is an airport". The true-name is "where there seems airport".
	Understand "is" or "an" or "airport" or "international" or "plane" or "airplane" as where there seems airport.  The place-sought is "an airport".
	[The mentions-list is {geography, transportation}.]
	The reply is "[one of]'Atlantis doesn't have a commercial airport,' says [the current interlocutor]. 'There's an airstrip that belongs to Dental Consonants Limited, but if you don't have a corporate jet, forget it.'[or]'[awkward no]. Occasionally you might see planes or even a helicopter, but they're going to the DCL campus for business purposes. Tourists only come by ocean.'[or][The current interlocutor] explains, as we've already heard, that there is no airport, at least not as far as we're concerned.[stopping]".
	It is background-information.
	The correct answer is Park Center.

where there seems garage is a weakly-phrased location-questioning quip.
	The printed name is "where there is a garage". The true-name is "where there seems garage".
	Understand "is" or "a" as where there seems garage.  The place-sought is "a garage".
	[The mentions-list is {geography, transportation}.]
	It is background-information.
	The correct answer is Park Center.
	[Every car is mentioned by where there seems garage.]

Availability rule for where there seems garage:
	if the garage is seen:
		it is off-limits;
	make no decision.

where there seems telephone service is a weakly-phrased location-questioning quip.
	The printed name is "where there is telephone service". The true-name is "where there seems telephone service".
	Understand "is" or "phone" as where there seems telephone service.  The place-sought is "a public telephone".
	[The mentions-list is {geography}.]
	It is background-information.
	The correct answer is Park Center.

Availability rule for where there seems internet service when the current interlocutor is the attendant:
	if the attendant recollects whether there seems an internet connection nearby:
		make no decision;
	otherwise:
		it is off-limits.

where there seems internet service is a weakly-phrased location-questioning quip.
	The printed name is "where there is internet service". The true-name is "where there seems internet service".
	Understand "is" as where there seems internet service.  The place-sought is "internet service".
	[The mentions-list is {Internet, geography}.]
	The reply is "[one of]'There are some cafés and places that have access to the Atlantis network,' [the current interlocutor] [say]. 'But a lot of them are probably closed today for Serial Comma Day.'[or][holiday closures][stopping]".
	It is background-information.

where food seems sold is a weakly-phrased location-questioning quip.
	The printed name is "where food is sold". The true-name is "where food seems sold".
	Understand "is" or "where there seems" as where food seems sold.  The place-sought is "a source of groceries".
	[The mentions-list is {food, geography}.]
	The reply is "[one of]'All the regular grocery stores are probably closed for Serial Comma Day, but you could try the farmer's market up on Hesychius Street.'[or][holiday closures][at random]".
	It is background-information.
	The correct answer is Hesychius Street.

where a school seems is a weakly-phrased location-questioning quip.
	The printed name is "where a school is". The true-name is "where a school seems".
	Understand "is" or "elementary" or "grammar" or "comprehensive" or "junior" or "where there seems" as where a school seems.  The place-sought is "an elementary school".
	[The mentions-list is {education, geography}.]
	It is background-information.
	The correct answer is Roget Close.

where customs seems found is a weakly-phrased location-questioning quip.
	The printed name is "where customs is found". The true-name is "where customs seems found".
	Understand "is" or "where there seems" as where customs seems found.  The place-sought is "customs services".
	[The mentions-list is {immigration, geography}.]
	It is background-information.
	The correct answer is Customs House.

where post office seems found is a weakly-phrased location-questioning quip.
	The printed name is "where a post office is found". The true-name is "where post office seems found".
	Understand "is" or "post office" or "postal" or "mail" or "postal/mail service" or "where there seems" as where post office seems found.  The place-sought is "a post office".
	[The mentions-list is {geography}.]
	It is background-information.
	The correct answer is Deep Street.

where pharmacy seems found is a weakly-phrased location-questioning quip.
	The printed name is "where a pharmacy is found". The true-name is "where pharmacy seems found".
	Understand "is" or "drugs" or "drug" or "druggist" or "chemist" or "chemists" or "where there seems" as where pharmacy seems found.  The place-sought is "a pharmacy".
	[The mentions-list is {geography}.]
	It is background-information.
	The correct answer is Midway.

where lodging seems found is a weakly-phrased location-questioning quip.
	The printed name is "where lodging is found".
	The  true-name is "where lodging seems found".
	Understand "is" or "hostel" or "lodgings" or "where there seems" as where lodging seems found.  The place-sought is "lodging for the night".
	[The mentions-list is {geography}.]
	It is background-information.
	The correct answer is Hostel.

Instead of discussing where lodging seems found when location is hostel:
	if the player's command includes "where":
		continue the action;
	otherwise:
		if whether there seem beds available is available:
			try discussing whether there seem beds available;
		otherwise:
			say "[first custom style]That does not seem to be a topic of conversation at the moment.[roman type][paragraph break]".

Instead of discussing where lodging seems found when location is dormitory:
	if the player's command includes "where":
		continue the action;
	otherwise:
		say "[first custom style]That does not seem to be a topic of conversation at the moment.[roman type][paragraph break]".

where there seems hotel is a weakly-phrased location-questioning quip.
	The printed name is "where there is a hotel". The true-name is "where there seems hotel".
	Understand "is" or "a" or "fleur" or "d'or" as where there seems hotel.  The place-sought is "a hotel".
	[The mentions-list is {geography}.]
	It is background-information.
	The correct answer is Fleur d'or.

where there seems Arbot is a weakly-phrased location-questioning quip.
	The printed name is "where to find Arbot Maps & Antiques". The true-name is "where there seems Arbot".
	Understand "is" or "Arbot" or "antiques" or "an" or "store" or "shop" or "arbots" or "arbot's" or "maps" or "&" as where there seems arbot.  The place-sought is "an antiques store".
	[The mentions-list is {geography}.]
	It is background-information.
	The correct answer is Arbot Maps & Antiques.

Instead of discussing where there seems Arbot when the location is Arbot Maps & Antiques:
	if the player's command includes "where":
		continue the action;
	otherwise:
		try discussing what types of antiques they sell here.

where there seems cinema is a weakly-phrased location-questioning quip.
	The printed name is "where there is a cinema". The true-name is "where there seems cinema".
	Understand "is" or "a" or "cinema" as where there seems cinema.  The place-sought is "a cinema".
	[The mentions-list is {geography}.]
	It is background-information.
	The correct answer is Cinema.

Instead of discussing where there seems cinema when the location is the cinema lobby:
	if the player's command includes "where":
		continue the action;
	otherwise:
		try subject-asking entertainment.

where there seems pub is a weakly-phrased location-questioning quip.
	The printed name is "where there is a pub". The true-name is "where there seems pub".
	Understand "is" or "a" or "bar" as where there seems pub.  The place-sought is "a pub".
	[The mentions-list is {geography, counterfeit monkey-as-subject}.]
	It is background-information.
	The correct answer is Counterfeit Monkey.

Instead of discussing where there seems pub when the location is Counterfeit Monkey:
	if the player's command includes "where":
		continue the action;
	otherwise:
		if how long he hath worked at bar is available:
			try discussing how long he hath worked at bar;
		otherwise:
			say "[first custom style]That does not seem to be a topic of conversation at the moment.[roman type][paragraph break]".

suggest-tourist-information is an NPC-directed quip.
	The reply is "[if current interlocutor is attendant and guidebook is marked-visible]'You're welcome to that Guidebook, you know. It has a lot of spare information.'[otherwise]'If you have trouble finding your way, you can ask other people on the way.'[end if]"


ask-someone-else is an NPC-directed quip.
	The reply is "[beat] '[awkward confrontation], I can't answer this kind of question all day[if the secondary apology of the current interlocutor is not blank], [secondary apology of the current interlocutor][end if].'"

try-guidebook is an NPC-directed quip.
	The reply is "[if the player carries the guidebook]'I don't know why you're asking me when you've got that guidebook.'[otherwise]'Try that guidebook.'[end if]".

Definition: some text is blank if it is "".


Section 2 - Showing Off Essentials

To say demonstration of (item - a thing):
	if the previous quip is a demonstration quip:
		say "[one of]'What about this, then?' [we] ask[or]Next [we] show off [the item][at random].[no line break]";
	otherwise if the player does not enclose the item:
		say "'What do you think of this?' [we] ask, pointing to [the item].[no line break]";
	otherwise:
		say "[one of]'Here, have a look at this,' [we] say[or]'What do you make of this?' [we] ask, showing off [the item][or]'Check this out,' [we] say, holding out [the item] for inspection[or][We] draw [the current interlocutor]'s attention to [the item][at random].[no line break]"

whether the Britishizing goggles seem interesting is a demonstration quip.
	[The mentions-list is {the Britishizing goggles}.]
	The comment is "[demonstration of Britishizing goggles]".
	The reply is "'[if the current interlocutor is tourist]They look like aviator goggles to me[otherwise if the current interlocutor is native]I thought those had gone out of style[otherwise]Are you sure you ought to be showing those off? Someone might take an interest[end if].'"
	It is repeatable.
	It is background-information.

whether the Origin Paste seems interesting is a demonstration quip.
	[The mentions-list is {origin paste}.]
	The comment is "[demonstration of origin paste]".
	The reply is "'[one of]Smells[or]Looks[at random] like soap,' [the current interlocutor] [comment].".
	It is repeatable.
	It is background-information.

Instead of a criminal person discussing whether origin paste seems interesting:
	say "[The current interlocutor] [open] [their] mouth, then [think] better of answering and just shrugs non-committally."

Availability rule for whether the Origin Paste seems interesting:
	if the location is Counterfeit Monkey and the Origin Paste is not won, it is off-limits.

whether the letter-remover means anything is a weakly-phrased demonstration quip.
	[The mentions-list is {letter-remover}.]
	The comment is "[demonstration of the letter-remover]".
	The reply is "[one of]'I hope you're licensed to carry that.'[or]'It looks pretty ordinary to me.'[or]'What am I supposed to be noticing? It looks like it's set to [current setting of the letter-remover].'[at random]".
	It is repeatable.
	It is background-information.

Availability rule for whether the letter-remover means anything:
	if the current interlocutor is Professor Brown, it is off-limits.

whether the oil seems interesting is a demonstration quip.
	The comment is "'Care for some motor oil?' [we] ask [the current interlocutor]."
	The reply is "'[awkward no].' No wonder, really. The stuff is dirt cheap.".
	It is background-information.
	[Every oil is mentioned by whether the oil seems interesting.]

Availability rule for whether the oil seems interesting:
	if the current interlocutor is the mechanic:
		it is off-limits.


whether the monocle seems interesting is a demonstration quip.
	[The mentions-list is {monocle}.]
	The comment is "[demonstration of monocle]".
	The reply is "[one of]'Fancy,' remarks [the current interlocutor]. 'I've only ever seen those being worn by authenticators.'[or]'Very nice,' says [the current interlocutor], though apparently a bit bored.[or]'Do you go around town showing that to everyone? Because I wouldn't.'[or]'Yes,' says [the current interlocutor].[or]This attracts disappointingly little interest.[stopping]".
	It is background-information.

Instead of the secretary discussing whether the monocle seems interesting:
	say "She looks, then frowns. 'You shouldn't have that,' she remarks, in a voice of cold disapproval. 'In fact[--]'

...And it is only a matter of moments before [we] [are] in lock-down and someone is coming to talk to [us] about our illicit possession of tools that have not been cleared for civilian use.

I'll never know why I didn't manage to stop you doing something so boneheaded.";
	end the story saying "[We] have been arrested".

[Instead of police person discussing whether the monocle seems interesting:
	say "[The actor] [stare] at it. 'You can't possibly have a lic[ense] for that,' [they] [say]. 'I think you had better come speak with my colleagues, right now.'";
	end the story saying "[We] have been arrested".]

Section 3 - Responses to demonstrations that aren't interesting

[These rules aren't usually that important: it's never necessary for the player to show any of these objects off, and they establish no critically-important information. What they *are* intended to do is give a little bit of feedback about the shown object that encourages the player to understand or recognize the possible uses of that object.]


The default comment-refusal rule is not listed in any rulebook.

Report waving the letter-remover at something creating a freaky thing (called target):
	say "[We] wave [the letter-remover] at [the second noun] and produce [a target], severed[body-part-prank].";
	abide by the dangerous construction rules for the target instead.

Sanity-check wearing a freaky thing:
	say "How very Silence of the Lambs. Ew." instead.

Before refusing comment by someone:
	say "[demonstration of noun][paragraph break]";

Rule for refusing comment by someone when the noun is freaky:
	if the current interlocutor is an animal:
		make no decision;
	if the current interlocutor exhibits caution:
		say "[The current interlocutor] [one of][turn] white[or][go] a bit green[or][look] like throwing up[or]obviously might faint[or][gag][at random]. After a moment to regain [their] composure, [they] [flee] the vicinity.";
		now the current interlocutor is nowhere;
		reset the interlocutor;
	otherwise if the ostensible motive is you-are-tourist:
		say "[The current interlocutor] [say], 'Don't worry, [the noun] [are] almost certainly fake. They make things like [the noun] with letter tools around here. Freaks out the tourists, though!'";
	otherwise:
		say "[one of][The current interlocutor] [recoil] involuntarily.[or]'Ew!' says [the current interlocutor].[or]'Please take that away,' [the current interlocutor] [adapt the verb say].[or]'Yuck,' [the current interlocutor] [adapt the verb reply].[at random]"

Last for refusing comment by someone when the noun is a long strong thing:
	if the current interlocutor is an animal:
		make no decision;
	if the ostensible motive is:
		-- you-hit-on:
			say "[beat] 'I'm not impressed.'";
		-- you-are-tourist:
			say "[beat] 'Could you stop waving [the noun] around[if the current interlocutor exhibits courtesy], please[end if]? You could hit someone.'";
		-- you-are-feckless:
			say "[beat] '[awkward confrontation] I wish you'd stop waving [the noun] around.'";
		-- otherwise:
			say "'[awkward confrontation], please stop waving [regarding the noun][those].'"

Last for refusing comment by someone when the noun is an edible thing:
	if the current interlocutor is an animal:
		make no decision;
	if the ostensible motive is:
		-- you-hit-on:
			say "[beat] 'That's, uh, a nice gesture, but I'm not hungry.'";
		-- you-are-tourist:
			say "[beat] 'Thanks, but that's not what we do around here.'";
		-- you-are-feckless:
			say "[beat] '[awkward confrontation] I wish you'd leave me alone.'";
		-- otherwise:
			say "'I'm not hungry, thanks.'"

Last for refusing comment by someone when the noun is a wearable thing:
	if the current interlocutor is an animal:
		make no decision;
	if the player is wearing the noun:
		if the ostensible motive is:
			-- you-hit-on:
				say "[beat] 'I guess [the noun] [look] fine on you.'";
			-- you-are-tourist:
				say "'[one of]Oh, don't worry, that's fine to wear around here[or][regarding the noun][Those] [don't] make you stand out too much, don't worry[at random].'";
			-- you-take-survey:
				say "'If you're collecting fashion opinions, I'm not really good at that kind of thing.'";
			-- you-are-feckless:
				say "'Maybe go ask someone else these questions.'";
			-- otherwise:
				say "'That's nice, I guess[you-are-feckless].'";
	otherwise:
		if the current interlocutor exhibits privateness:
			say "'No thanks.'";
		otherwise:
			if a random chance of 1 in 2 succeeds and the current interlocutor wears something (called the garment):
				say "[The current interlocutor] [don't] think [the noun] really goes with [the garment].";
			otherwise:
				say "'I don't think that's my [one of]style[or]size[or]col[our][or]sort of thing[at random].'"

Definition: a thing is disruptive:
	if it is noisy:
		yes;
	if it is an animal:
		yes;
	no.

Rule for refusing comment by a person when the noun is a car and the location is not a road:
	if the current interlocutor is an animal:
		make no decision;
	if the current interlocutor exhibits courtesy:
		if the current interlocutor knows you-are-feckless:
			say "'I know it's confusing, but I'm going to have to ask you to remove your car,' says [the current interlocutor] politely[you-are-feckless].";
		otherwise:
			say "'We prefer a no-offroad-motor-vehicles policy here,' says [the current interlocutor] politely[you-are-feckless].";
	otherwise if the current interlocutor knows you-are-feckless:
		say "'That doesn't belong in here,' says [the current interlocutor] impatiently. 'Please stop cluttering the place.'";
	otherwise:
		say "'[you-are-feckless][awkward confrontation] that really doesn't belong in here,' says [the current interlocutor]."

Rule for refusing comment by a person when the noun is noisy:
	if the current interlocutor is an animal:
		make no decision;
	if the current interlocutor exhibits courtesy:
		say "'[awkward confrontation] [the noun] [are] a bit disruptive,' says [the current interlocutor].";
	otherwise if the current interlocutor knows you-are-possible-customer or the current interlocutor knows you-are-past-customer:
		say "'[The noun] [are] [one of]likely[or]going[at random] to drive away other customers,' says [the current interlocutor].";
	otherwise:
		say "'[The noun] [are] [one of]annoying[or]a nuisance[or]irritating[at random],' says [the current interlocutor].";


Rule for refusing comment by a person when the noun is a contained fluid thing:
	if the current interlocutor is an animal:
		make no decision;
	if the current interlocutor exhibits courtesy:
		say "'Just be careful not to spill [the noun],' says [the current interlocutor].";
	otherwise if the current interlocutor knows you-are-possible-customer or the current interlocutor knows you-are-past-customer:
		say "'Don't get any of [the noun] on the merchandise,' says [the current interlocutor].";
	otherwise:
		say "'Hm.'";

Rule for refusing comment by a police person (called stern person) when the noun is the roll of bills:
	if the current interlocutor is an animal:
		make no decision;
	if the stern person knows you-are-dangerous:
		say "Based on our behavi[our] so for, [the stern person] [decide] this must be an attempt at bribery, and [take] us in. And while [we] [are] able to get around the bribery charge eventually, quite a few other undesirable facts come out in the process...";
		end the story saying "That was an error in judgment";
	otherwise:
		say "[You-are-dangerous][The stern person] [recite] to us a bit of the penal code applying to attempts to bribe officers of the law."

Rule for refusing comment by someone when the noun is r-abstract:
	if the current interlocutor is an animal:
		make no decision;
	if the current interlocutor is police:
		say "[The current interlocutor] [look] a little suspicious. 'I hope you got [regarding the noun][those] from someone who was licensed to create abstracts.'";
	otherwise if the current interlocutor is tourist:
		say "[one of][The current interlocutor] [stare] at [the noun] in fascination. 'That's odd,' [they] [say]. 'It's like it's there but not there.'[or][The current interlocutor] [look] at [the noun] from several angles. 'I'm not sure what it's for, but that's cool.'[or]'Weird,' [say] [the current interlocutor]. 'You don't get that where I come from.'[at random]";
	otherwise:
		say "[The current interlocutor] [are] puzzled. '[one of]Looks like [a noun].'[or]Huh, [a noun].'[or]I guess it's supposed to be... [noun]?'[at random]";

Rule for refusing comment by someone (called listener) when the noun is the roll of bills:
	if the current interlocutor is an animal:
		make no decision;
	if the listener is the attendant:
		say "You paid for your stay already. If we pay again, she'll think we're checking in (as someone else).";
	otherwise if the listener knows you-are-possible-customer:
		say "'How about if you say what you want to buy?'";
	otherwise if listener knows you-are-feckless:
		say "'Hang on to your money.'";
	otherwise:
		say "[You-are-feckless][The listener] [fold] our hand back over the bills. 'Better hold on to those.'"

Rule for refusing comment by someone who exhibits privateness when the noun is the letter:
	if the current interlocutor is an animal:
		make no decision;
	say "'[awkward no], that doesn't seem like any of my business.'"

Rule for refusing comment by someone when the noun is an as:
	if the current interlocutor is an animal:
		make no decision;
	if the current interlocutor knows you-are-possible-customer:
		say "'[one of]That's not legal tender in Atlantis[or]I can't accept that as currency[at random].'";
	otherwise if current interlocutor knows you-are-feckless:
		say "'That's nice,' [the current interlocutor] [say] insincerely.";
	otherwise:
		say "'[one of]Looks old[or]Huh[or]Looks like it came up heads[or]Tails, I see[at random].'"

Sanity-check showing something to an animal (called viewer):
	say "[The viewer] [cock] [their] head[if the viewer is plural-named]s[end if]." instead.

Rule for refusing comment by something:
	say "[one of]This evokes no particular interest[or][The current interlocutor] [shake] [their] head[or][The current interlocutor] [don't] have anything to say in response[at random]."


Section 4 - Commentary on NPC Possessions

Part 2 - Individual Conversation

Chapter 1 - Manufactured People

Section 1 - The Mechanic

The greeting of the mechanic is "The mechanic nods at [us]."
The generic positive of the mechanic is "yup".
The generic negative of the mechanic is "nope".
The generic adversative of the mechanic is "um".
The generic confrontational of the mechanic is "hey".

[To reproduce and then verify the correction of a bug whereby the mechanic would half-way fix the car when given the oil even if the car was not in fact present.]

Table of Ultratests (continued)
topic	stuff	setting
"mechanicbug"	{ tub, funnel, foil, chard }	high street
"mech2"	{ tub, funnel, foil, chard }	high street
"two-cars"	{ gas, soil }	high street

Test mechanicbug with "tutorial off / wave b-remover at garbage / test car-series / wave h-remover at chard / wave d-remover at card / test car-series / open tub / gel car / wave f-remover at foil / test car-series / wave d-remover at chard / wave h-remover at char / test car-series / wave n-remover at funnel / test car-series / put fuel in car / test car-series" [holding the tub and the funnel and the foil and the chard in high street.]

[And a second test in the other order, doing the fuel before the oil.]
Test mech2 with "tutorial off / wave b-remover at garbage / test car-series / wave h-remover at chard / wave d-remover at card / test car-series / open tub / gel car / wave n-remover at funnel / test car-series / wave d-remover at chard / wave h-remover at char / test car-series / put fuel in car / test car-series / wave f-remover at foil / test car-series" [holding the tub and the funnel and the foil and the chard in high street.]

Test car-series with "ask mechanic to fix car / show fuel to mechanic / ask mechanic about fuel / show gas to mechanic / ask mechanic about gas / show oil to mechanic / ask mechanic about oil / ask mechanic about car / show car to mechanic / get in car / start car / switch on car / switch on ignition / get out".

Test two-cars with "tutorial off / car-acquire / purloin chair / wave s-remover at soil / wave i-remover at chair / wave h-remover at char / test mechanicbug".

Does the player mean showing a damaged car to the mechanic:
	it is very likely.

Does the player mean showing an unfueled car to the mechanic:
	it is very likely.

Instead of showing an operational car to the mechanic:
	say "We signify the car by pointing.";
	try the mechanic discussing whether car be fixed.

Availability rule for whether car be fixed:
	if an operational car is in the location:
		make no decision;
	it is off-limits.

Does the player mean discussing whether car be fixed when an operational car is in the location:
	it is very likely.

whether car be fixed is a questioning quip.
	The printed name is "whether the car is fixed".
	The true-name is "whether car be fixed".
	Understand "is" as whether car be fixed.
	The comment is "'Is the car fixed now?' we ask."
	The reply is "'The oil is in,' the mechanic says[unless there is no fueled car in location]. 'Should run all right[otherwise]. 'Might be it's out of fuel, though[end if].'".
	It quip-supplies the mechanic.
	It is repeatable.
	[Every car is mentioned by whether car be fixed.]
	[Every oil is mentioned by whether car be fixed.]

Instead of showing a damaged car to the mechanic:
	say "We indicate the car with gestures.";
	try the mechanic discussing why the car does not run.

Instead of asking the mechanic to try doing something when the noun is a car or the second noun is a car:
	if the noun is an oil or the second noun is an oil:
		try discussing whether the oil will work;
	otherwise if no car is operational or a damaged car is in location:
		try discussing why the car does not run;
	otherwise:
		say "The mechanic just looks confused."

Instead of asking the mechanic to try oiling a car:
	try discussing whether the oil will work.

Availability rule for why the car does not run:
	if a damaged car is in the location:
		make no decision;
	it is off-limits.

Does the player mean discussing why the car does not run when current interlocutor is the mechanic:
	it is very likely.

why the car does not run is a questioning quip.
	Understand "work" or "doesn't" as why the car does not run.
	The comment is "'There appears to be something wrong with my car,' [we] tell the mechanic.".
	The reply is "[car-broken][one of]He has the somewhat cow-like expression of all fake people, but he nods gravely and has a look. 'It hasn't been maintained,' he says, on inspection. 'You got any motor oil?'[or]Showing no sign of having had this conversation before, he checks over the car, then asks us if we have oil.[stopping]".
	It quip-supplies the mechanic.
	It assumes car-broken.
	It is repeatable.
	[Every car is mentioned by why the car does not run.]

where there seems a car-2 is an unlisted repeatable questioning quip.
	Understand "buy car" or "car" or "buy a car" or "i could" or "we could" as where there seems a car-2. The printed name is "where to find a car". The true-name is "where there seems a car-2".
	It quip-supplies the mechanic.
	The comment is "'I'm looking for a car,' we say.".
	The reply is "'Sorry,' he mumbles. '[one of]I fix them. I don't sell them[or]Perhaps you should ask somebody else[stopping].'".
	[Every car is mentioned by where there seems a car-2.]

Availability rule for where there seems a car-2:
	if a car is seen:
		it is off-limits;
	make no decision.

Carry out the mechanic discussing why the car does not run:
	assign "Get oil for the mechanic".

Instead of showing an oil to the mechanic:
	if at least one car is operational and there is no damaged car in location:
		continue the action;
	otherwise:
		try giving the noun to the mechanic.

Instead of giving an oil to the mechanic when there is no car in location:
	try discussing check out this oil-1.

Instead of giving an oil to the mechanic when at least one car is operational and there is no damaged car in location:
	try discussing check out this oil.

Carry out the mechanic discussing whether the oil will work:
	complete "Get oil for the mechanic";
	record "repairing our car" as achieved.

whether the oil will work is a repeatable unlisted offering quip.
	The comment is "'Will this work?' [We] hold out the oil."
	The reply is "[thank-mechanic]'Should do,' he says. Rolling up his sleeves, he goes to work on the car. There is no small amount of banging and muttering, but finally he stands back and announces that he believes it is now in working condition."
	It indirectly-follows why the car does not run.
	It quip-supplies the mechanic.
	[Every oil is mentioned by whether the oil will work.]

Availability rule for check out this oil-1:
	if the player encloses an oil and there is no car in location:
		make no decision;
	it is off-limits.

check out this oil-1 is an unlisted repeatable demonstration quip.
	The comment is "[demonstration of a random oil enclosed by the player]".
	The reply is "'[one of]Looks like high-quality oil[or]That looks useful[at random],' he says."
	It quip-supplies the mechanic.
	[Every oil is mentioned by check out this oil-1.]

Availability rule for check out this oil:
	if the player encloses an oil and at least one car is operational and there is no damaged car in location:
		make no decision;
	it is off-limits.

check out this oil is an unlisted repeatable demonstration quip.
	The comment is "We show off the additional oil."
	The reply is "'Probably don't need that now,' he says, with a thoughtful nod."
	It quip-supplies the mechanic.
	[Every oil is mentioned by check out this oil.]

Instead of giving the poppy-oil to the mechanic:
	try showing the poppy-oil to the mechanic.

Instead of showing the poppy-oil to the mechanic:
	say "[demonstration of the poppy-oil][paragraph break]";
	if there is a damaged car in location:
		say "'[one of]That's the wrong kind of oil[or]That is not the kind of oil we need[at random][no line break]";
	otherwise:
		say "'[one of]I know nothing about that kind of oil[or]I have no use for that[or]That is not the kind of oil I have use for[at random][no line break]";
	say ",' he [one of]says[or]remarks[or]shrugs[at random]."

An availability rule for where oil might be:
	if an oil is seen:
		it is off-limits;
	make no decision.

where oil might be is an unlisted questioning quip.
	The printed name is "where we might find oil". The true-name is "where oil might be".
	Understand "find" or "some" or "could" or "there is" or "we" as where oil might be.
	The comment is "'Do you have any oil? Or do you know where we could find some?'"
	The reply is "[one of]He looks stumped for a minute, then offers, 'Comes in a can.'[or]'Yup, likely there's a source of oil around somewhere.'[stopping]".
	It quip-supplies the mechanic.
	It is repeatable.
	[Every oil is mentioned by where oil might be.]

An availability rule for where fuel might be:
	if the fuel is seen or the gas is seen:
		it is off-limits;
	make no decision.

where fuel might be is an unlisted questioning quip.
	[The mentions-list is {gas, fuel}.]
	The printed name is "where we could find some fuel". The true-name is "where fuel might be".
	Understand "we" or "could" or "find" or "some" or "there is" or "gas" as where fuel might be.
	The comment is "'Do you have any [one of]gas[or]fuel[at random]? Or do you know where we could find some?'"
	The reply is "He chews on his tongue a couple of times and then notes that he heard [one of]gas comes from old plants[or]fuel was usually found by digging in the ground[at random]."
	It quip-supplies the mechanic.
	It is repeatable.

Instead of giving a fuel-like thing to the mechanic:
	try discussing whether the fuel seems interesting.

whether the fuel seems interesting is an unlisted demonstration quip.
	[The mentions-list is {gas, fuel}.]
	The comment is "[if there is an unfueled car in location]'Could you help me with this?,' we ask, indicating [the random fuel-like thing enclosed by location].[otherwise][demonstration of a random fuel-like thing enclosed by location][end if]".
	The reply is "[if there is an unfueled car in location]'Just pour it in,' he says.[otherwise]'Looks useful,' he says. 'You better hang onto that.'[end if]".
	It quip-supplies the mechanic.
	It is repeatable.

Availability rule for we'll find some:
	if the player encloses an oil:
		it is off-limits;
	unless a damaged car is in location:
		it is off-limits;
	make no decision.

we'll find some is an unlisted weakly-phrased informative quip.
	The comment is "'I don't have any oil now,' we say. 'I'll look for some.'"
	The reply is "'Okay, then.'"
	It indirectly-follows why the car does not run.
	It quip-supplies the mechanic.
	[Every oil is mentioned by we'll find some.]

Instead of saying no when the current quip is why the car does not run:
	if whether the oil will work is available:
		say "That seems like a pointless lie if we want him to help us.";
	otherwise:
		try discussing we'll find some.

Instead of saying yes when the current quip is why the car does not run:
	if whether the oil will work is available:
		try discussing whether the oil will work;
	otherwise:
		say "But we don't."

An availability rule for whether the oil will work:
	if the player encloses an oil and a damaged car is in location:
		it is available;
	otherwise:
		it is off-limits.

Carry out the mechanic discussing whether the oil will work:
	let chosen-oil be a random oil enclosed by the player;
	now the chosen-oil is nowhere;
	let target be a random damaged car in location;
	now the target is operational.

thank the mechanic is a thanking quip. It assumes thank-mechanic.
	[The mentions-list is {transportation, the mechanic}.]
	The comment is "'Thank you, that was a great help,' we say.".
	The reply is "He nods.".
	It quip-supplies the mechanic.
	It indirectly-follows whether the oil will work.

Section 2 - The Bard

The greeting of the bard is "The bard bows deeply and with a flourish."
The generic positive of the bard is "aye".
The generic negative of the bard is "nay".
The generic adversative of the bard is "ah".
The generic confrontational of the bard is "fair lady".

where he comes from is a questioning quip. The comment is "'Where [i]do[/i] you come from?'".
	[The mentions-list is {bard}.]
	The reply is "He looks at us, cocks his head, and begins singing a song about some fair isle over the sea. I don't recognize the words.".
	It quip-supplies the bard.

Section 3 - Picard

The greeting of Picard is "'Hello,' says Picard."
The generic positive of Picard is "yes".
The generic negative of Picard is "no".
The generic adversative of Picard is "er".
The generic confrontational of Picard is "ensign".

Rule for refusing comment by Picard when the noun is an as:
	say "'Curious,' he says, tugging his shirt back into place.

Picard was supposed to be interested in archaeology, now I recall. But alien stuff, right? Yeah."

[Sam suggested some reference to http://www.youtube.com/watch?v=g3rFNbSKpEE .]



Section 4 - The Pict

Rule for refusing comment by the Pict when the noun is an as:
	say "He makes a disdainful face. Then he coughs up some phlegm and spits dramatically.

Possibly he isn't a fan of Romans."



Section 5 - The cad

The greeting of the cad is "The cad looks us up and down in a very personal way."
The generic positive of the cad is "of course".
The generic negative of the cad is "no".
The generic adversative of the cad is "ahem".
The generic confrontational of the cad is "[one of]my very dear young lady[or]light of my eyes[or]dearest[or]poppet[or]delight of my life[at random]".

The cad exhibits courtesy and vanity.

Rule for refusing comment by the cad when the noun is a sin:
	say "'I prefer a different style of vice,' he says, with a warm look."


Chapter 2 - Open Access Characters

[These are NPCs who can be approached and left again repeatedly.]

Section 1 - The Farmer

The greeting of the farmer is "The farmer [one of]makes a little cluck sound which seems to mean that he sees us but doesn't care to waste an entire syllable on acknowledging it[or]nods at us[stopping]."
The generic adversative of the farmer is "[one of]frankly[or]honestly[or]to be honest[at random]".
The generic confrontational of the farmer is "look, lady".

Understand "ask [farmer] for [any farmer-carried thing]" as requesting it from (with nouns reversed). Requesting it from is an action applying to two visible things.

The farmer exhibits unhelpfulness.

The farmer knows you-are-possible-customer.

Instead of asking the farmer to try giving a farmer-carried thing to the player:
	try requesting the noun from the farmer.

Definition: a thing is farmer-carried if the farmer carries it.

Carry out requesting it from:
	let N be repository-quip-which-mentions the noun;
	try discussing N with the second noun instead.

Availability rule for what seems for sale:
	if the farmer carries something, make no decision;
	otherwise it is off-limits.

Before requesting something from the farmer when the player does not recollect what seems for sale:
	try buying the noun from the farmer instead.

Before buying something from the farmer when the player does not recollect what seems for sale:
	if the farmer is not the current interlocutor:
		try saying hello to the farmer;
	try discussing what seems for sale;
	follow the conversation-reply rules. [because we also want him to answer.]

what seems for sale is a questioning quip.
	The printed name is "what is for sale". The true-name is "what seems for sale".
	Understand "is" or "market" as what seems for sale.
	[The mentions-list is {farmer, farmer's stall}.]
	The comment is "'What is for sale?' we ask.".
	The reply is "'[one of]We have available [a list of things *in the farmer][or]I got [a list of things *in the farmer][or]All that's left this time of day is [a list of things *in the farmer][at random],' the farmer replies.".
	It quip-supplies the farmer.
	It is repeatable.

Check discussing what seems for sale:
	now what seems for sale is unlisted.

Availability rule for what seems for sale-2:
	if the farmer carries something, it is off-limits;
	otherwise make no decision.

what seems for sale-2 is a questioning quip.
	The printed name is "what is for sale". The true-name is "what seems for sale-2".
	Understand "is" or "sale" as what seems for sale-2.
	[The mentions-list is {farmer, farmer's stall}.]
	The comment is "'What is for sale?' we ask.".
	The reply is "'Oh, nothing,' says the farmer. 'But as my mother-in-law is in town, I thought I would make the most of the market day.' He smiles at us.".
	It quip-supplies the farmer.
	It is repeatable.

what the fair seems for-2 is a questioning quip.
	The printed name is "what the fair is for". The true-name is "what the fair seems for-2".
	Understand "is" as what the fair seems for-2.
	[The mentions-list is {celebration}.]
	The comment is "'What is this all about, anyway?'".
	The reply is "'Cereal Day,' the farmer answers inaccurately. 'It's to celebrate, I guess, grains. And other agricultural products,' he adds.".
	It quip-supplies the farmer.
	It is background-information.

Instead of someone (called annoyee) discussing a purchasing quip when the player does not enclose the bills:
	now the current mood of the annoyee is distrustful;
	say "[one of]It is at this moment that we remember we don't have any money. We make up some nonsense about having had our wallet stolen. [The annoyee] does not quite look convinced, but does not summon the authorities, either.[or][The annoyee] looks less than completely charmed when we once again turn out to be flat broke.[or][The annoyee] more or less ignores us.[stopping]".

Before discussing a purchasing quip when the player does not enclose the bills and the previous quip is a purchasing quip:
	[In other words, we've just failed a buy once]
	say "Let's not push our luck, shall we? If we find some money, we can come back later. At least, you told me you were going to provide the cash. I know I trusted you on that score, because I don't have any." instead.

[A purchasing quip is a kind of performative quip. Understand "purchase" as a purchasing quip.]

To say dubious response:
	say "'[when distrustful]If I can see the col[our] of your money first...? Ah, good then,[at other times]Sure thing,[end when]'";
	now the current mood of the farmer is neutral.

Availability rule for buy the yam:
	if the farmer does not carry the white-yam, it is off-limits;
	make no decision.

buy the yam is a purchasing quip.
	[The mentions-list is { white-yam, farmer }.]
	The comment is "'I'll have the yam, please,' we say.".
	The reply is "[dubious response] says the farmer[you-are-past-customer].".
	It quip-supplies the farmer.
	It is repeatable.
	It indirectly-follows what seems for sale.

Carry out the farmer discussing buy the yam:
	[follow the considerate player's holdall rule;]
	move the white-yam to the player.

Test yam with "talk to farmer / a what / buy yam / go to roget close / n / put yam on spinner / n" in Hesychius Street holding the roll of bills.

Availability rule for buy the lime:
	if the farmer does not carry the lime, it is off-limits;
	make no decision.

buy the lime is a purchasing quip.
	[The mentions-list is {lime, farmer}.]
	The comment is "'I'll have the lime, please,' we say.".
	The reply is "[dubious response] says the farmer[you-are-past-customer].".
	It quip-supplies the farmer.
	It is repeatable.
	It indirectly-follows what seems for sale.

Carry out the farmer discussing buy the lime:
	[follow the considerate player's holdall rule;]
	move the lime to the player.

Availability rule for buy the asparagus:
	if the farmer does not carry the asparagus, it is off-limits;
	make no decision.

buy the asparagus is a purchasing quip.
	[The mentions-list is {asparagus, farmer}.]
	The comment is "'I'll have the asparagus, please,' we say.".
	The reply is "[dubious response] says the farmer[you-are-past-customer].".
	It quip-supplies the farmer.
	It is repeatable.
	It indirectly-follows what seems for sale.

Carry out the farmer discussing buy the asparagus:
	[follow the considerate player's holdall rule;]
	move the asparagus to the player.

whether he dons overalls is a questioning quip.
	The printed name is "whether he wears overalls". The true-name is "whether he dons overalls".
	Understand "wears" as whether he dons overalls.
	[The mentions-list is {Fashion}.]
	The comment is "'Say, do you ever wear overalls?' we ask pertly.".
	The reply is "He shifts his jaw a little to one side. [when distrustful]'No,' he says curtly. Evidently we aren't his fav[our]ite people. Person. Whatever.[at other times]'I used to, but my wife took a dislike,' he says.[end when]".
	It quip-supplies the farmer.
	It is background-information.

[This pointless bit of cheeseshop-style foolishness doesn't really accomplish anything, but for some reason my beta-testers kept coming up with new vegetables to ask him about until I expanded the range of conversation quite a bit. I'm not sure it adds anything other than a note of silliness to this portion of the game; the farmer is effectively a toy, since there are no essential objects among the things he has for sale.]

recommend other vegetables is a performative quip.
	Understand "radishes" or "radish" or "radicchio" or "chicory" or "carrot" or "carrots" or "cabbages" or "cabbage" or "corn" as recommend other vegetables.
	[The mentions-list is {food}.]
	The comment is "'Have you ever considered selling radishes?' we ask.".
	The reply is "'Not really,' he says. [paragraph break]'Radicchio?' [paragraph break]'No.' [paragraph break]'Chicory?' we try. 'Cabbage? Carrot? Corn?' [paragraph break]'Again, no.' [paragraph break]'Radishes?' [paragraph break]'You already said radishes.' [when distrustful]He seems increasingly annoyed with our pestering.[at other times]He has the faintly martyred expression of one hum[our]ing us; but it doesn't look as though he has much else to do.[end when]".
	It quip-supplies the farmer.
	It indirectly-follows what seems for sale.

recommend artichokes is an unlisted performative quip.
	Understand "artichokes" or "broccoli" or "cauliflower" or "brussels sprouts" as recommend artichokes.
	The comment is "'What about those vegetables that are like flowers?' we suggest. 'Do you have any artichokes or cauliflower?'".
	The reply is "'No.'

'Broccoli?'

'Not that either.'

'Brussels sprouts?'

'Subject to import laws,' he says stiffly. 'Though there's a move on to have them renamed Kentish sprouts.'".
	[The mentions-list is {food}.]
	It quip-supplies the farmer.
	It indirectly-follows what seems for sale.

recommend tomatoes is an unlisted performative quip.
	Understand "tomato" or "tomatillo" or "eggplant" or "aubergine" or "peppers" or "pepper" or "squash" or "gourds" or "gourd" or "chayote" or "avocado" or "avocadoes" or "okra" or "chili" or "chile" or "hot" or "bell" or "pumpkin" or "pumpkins" or "cucumber" or "cucumbers" or "zucchini" or "courgette" or "courgettes" as recommend tomatoes.
	The comment is "'What do you think of tomatoes or tomatilloes?' we ask.".
	The reply is "'Nothing against them, just don't grow them,' he replies.

'Avocado? Eggplants? Bell peppers? Hot peppers?'

He shakes his head.

'What about something in the squash or gourd line? Zucchini, perhaps, or winter squash? Fairytale pumpkin? Ordinary pumpkin, for that matter?'

'No. And before you ask, a no doubt incomplete list of the other squashes I don't carry are acorn, ambercup, banana, butternut, buttercup, carnival, delicata, gold nugget, hubbard, and turban.'

That does me out of squashes, but you add helpfully, 'Kabocha?'

'Japanese,' he replies darkly. 'Can't grow that here.'".
	[The mentions-list is {food}.]
	It quip-supplies the farmer.
	It indirectly-follows what seems for sale.

recommend lettuce is an unlisted performative quip.
	Understand "lettuce" or "chard" or "endive" or "arugula" or "cress" or "kale" or "savoy" or "collards" or "iceberg" or "red" or "spinach" or "purslane" or "sorrel" or "nettles" or "nasturtiums" as recommend lettuce.
	The comment is "'Salad greens would be good.'".
	The reply is "'I'm flat out of chard,' he says. 'Before you ask.'

'No? Iceberg lettuce? Red lettuce? Cress, kale, arugula? Collards or endive? Spinach? Savoy?'

'None. Also no sorrel, nettles, or nasturtiums.'".
	[The mentions-list is {food}.]
	It quip-supplies the farmer.
	It indirectly-follows what seems for sale.

recommend tubers is an unlisted performative quip.
	Understand "potatoes" or "potato" or "sweet potato" or "taro" or "jicama" or "crosne" or "casava" as recommend tubers.
	The comment is "'Would you happen to feature anything in the potato line?'".
	The reply is "'I would not.'

'Taro? Jicama? Casava or crosne?'

'None of the above. Just the yam.'".
	[The mentions-list is {food}.]
	It quip-supplies the farmer.
	It indirectly-follows what seems for sale.

recommend onions is an unlisted performative quip.
	Understand "onion" or "chive" or "chives" or "garlic" or "leeks" or "leek" or "scallion" or "scallions" or "shallots" or "shallot" as recommend onions.
	The comment is "'I do like a zingy vegetable,' we say. 'Chives, onions, garlic...'".
	The reply is "'Don't have those, and don't have shallots or scallions either,' he says. 'Nor leeks nor water chestnuts.'".
	[The mentions-list is {food}.]
	It quip-supplies the farmer.
	It indirectly-follows what seems for sale.

recommend beets is an unlisted performative quip.
	Understand "beet" or "root vegetables" or "roots" or "burdock" or "celeriac" or "malanga" or "parsnips" or "parsnip" or "rutabaga" as recommend beets.
	The comment is "'How do you feel about a good root vegetable? Parsnips or rutabaga or beets?'".
	The reply is "'Don't care for them.' Probably not a fan of burdock or celeriac or malanga either, then. You do know a lot of words, though. It's fun sharing your head.".
	[The mentions-list is {food}.]
	It quip-supplies the farmer.
	It indirectly-follows what seems for sale.

recommend peas is an unlisted performative quip.
	Understand "beans" or "bean" or "pea" or "lentil" or "lentils" or "legumes" or "legume" as recommend peas.
	The comment is "'You could do a good line in legumes,' we suggest. 'Beans, lentils, soya.'".
	The reply is "'Naw.'

'You don't want to give peas a chance?'

He doesn't reply to this sally.

'Peanuts? Lupins? Clover? Alfalfa, carob, mesquite?'

[when distrustful]He grits his teeth without answering.[at other times]'None of the above.'[end when]".
	[The mentions-list is {food, pea}.]
	It quip-supplies the farmer.
	It indirectly-follows what seems for sale.

recommend seaweed is an unlisted performative quip.
	Understand "seaweed" or "seakale" or "wakame" or "sea grape" or "belt" or "nori" or "kombu" or "badderlocks" or "dulse" or "dillisk" or "carola" or "aonori" as recommend seaweed.
	The comment is "'How about seaweeds?' we ask. 'Seakale, sea grape, sea lettuce, sea belt?'".
	The reply is "'Naw.'

'Wakame, nori, dulse or dillisk? Kombu? Corola?''

'I'm more of a grown-on-land man myself,' he says.

'Badderlocks? Gutweed? Thongweed? Bladderwrack? Curly gristle moss?'

'Now I know you are making things up.'".
	[The mentions-list is {food}.]
	It quip-supplies the farmer.
	It indirectly-follows what seems for sale.

Availability rule for where there seems a car:
	if a car is seen or chard is seen:
		it is off-limits;
	make no decision.

where there seems a car is an unlisted questioning quip. It assumes car-needed.
	Understand "chard" or "where there seems" as where there seems a car. The printed name is "where to find a car".
	The true-name is "where there seems a car".
	The comment is "'I'm looking to make a car,' we say. 'With a letter-remover.'"
	The reply is "'Maybe you need some carob,' he suggests. 'Take out the O, then the B...'

'Do you carry carob?'

'No. You could use some carp, though. There might be some at the fish market.'

'I would need the car to get to the fish market,' we say.

'That is a conundrum,' he agrees, pleased by the logical loopiness of this problem.

'I was hoping for a vegetable source I could get around here.'

'Bit uninventive, but of course there's always chard,' he says. 'Lots of people get around in a chard car. Not fancy, but it works.'

'Then do you have chard?'

'Afraid not. Sells out fast on Cereal Day, you know.'"
	It quip-supplies the farmer.
	[Every car is mentioned by where there seems a car.]

Instead of waving letter-remover at farmer when the current setting of the letter-remover is "r":
	say "[The second noun] flickers and there is a brief image of fame in [regarding the second noun][their] place [--] the concept strangely embodied in a physical form [--] before the power gives out.[paragraph break]";
	say "'Young lady, you just bought yourself a long, long jail term,' says the farmer. 'What, did you think I wouldn't notice what you just tried to do?'

I open my mouth to try to talk him out of it, but his thumb has already hit speed dial. I guess when your profession places you at this kind of risk, you tend to be ready for trouble.";
	end the story saying "I was expecting more discretion from you".

Section 2 - The Babel Clerk

The greeting of the clerk is "The clerk grins at us in a welcoming way."
The generic adversative of the clerk is "[one of]er[or]well[or]but[at random]".
The generic confrontational of the clerk is "wait up there".

Understand "ask [clerk] for [any clerk-carried thing]" as requesting it from (with nouns reversed).

The clerk knows you-are-possible-customer.

Instead of asking the clerk to try giving a clerk-carried thing to the player:
	try requesting the noun from the clerk.

Definition: a thing is clerk-carried if it is in the long glass case.

To say purchase-request for (N - a thing):
	if the player does not carry the roll of bills:
		say "'I'll have [the N],' we say.[no line break]";
	otherwise:
		say "[one of]'I'll have [the N], please,' we say, offering an appropriate bill[or]'Could I also have [the N]?' we say[or]We ask for [the N][stopping].[no line break]";

Availability rule for buy the triangle:
	if the honey triangle is not clerk-carried, it is off-limits;
	make no decision.

buy the triangle is a purchasing quip.
	[The mentions-list is {honey triangle}.]
	The comment is "[purchase-request for the honey triangle]".
	The reply is "'[nice-day]'".
	It quip-supplies the clerk.

To say nice-day:
	say "[one of][you-are-past-customer]Enjoy![no line break][or]There you go [--] nice day for a picnic, isn't it?[no line break][or]You've just about cleared us out![no line break][stopping]".

Carry out the clerk discussing buy the triangle:
	move the honey triangle to the player;
	say "The clerk gets out a honey triangle and puts it on the table, then locks up the case again."

Availability rule for buy the wrap:
	if wrap is not clerk-carried, it is off-limits;
	make no decision.

buy the wrap is a purchasing quip.
	[The mentions-list is {wrap}.]
	The comment is "[purchase-request for the wrap]".
	The reply is "'[nice-day]'".
	It quip-supplies the clerk.

Carry out the clerk discussing buy the wrap:
	move the wrap  to the player;
	say "The clerk takes the wrap out of the case and puts it on the table for us."

Availability rule for buy the pocket-bread:
	if pocket-bread is not clerk-carried, it is off-limits;
	make no decision.

buy the pocket-bread is a purchasing quip.
	Understand "pita" as buy the pocket-bread.
	[The mentions-list is { pocket-bread }.]
	The comment is "[purchase-request for the pocket-bread]".
	The reply is "'[nice-day]'".
	It quip-supplies the clerk.

Carry out the clerk discussing buy the pocket-bread:
	move the pocket-bread to the player;
	say "The clerk sets the pocket-bread out on the table."

Test clerk with "tutorial off / z / buy wrap / buy pocket-bread / buy triangle" in the Babel.
Test clerk2 with "tutorial off / z / buy wrap / buy pocket-bread / buy triangle" in the Babel holding the roll of bills.


Section 3 - The Bartender

The generic adversative of the bartender is "[one of]er[or]well[or]but[at random]".
The generic confrontational of the bartender is "wait up there".

Understand "ask [bartender] for [any bartender-carried thing]" as requesting it from (with nouns reversed).

Instead of giving something that is not the roll of bills to the bartender:
	try showing the noun to the bartender.

Instead of showing the screwdriver to the bartender:
	try requesting the screwdriver from the bartender.
Instead of showing the screwdrivers to the bartender:
	try requesting the screwdriver from the bartender.
Instead of showing the gimlets to the bartender:
	try requesting the gimlet from the bartender.
Instead of showing the gimlet to the bartender:
	try requesting the gimlet from the bartender.
Instead of showing the rusty nail to the bartender:
	try requesting the rusty nail from the bartender.
Instead of showing the rusty nails to the bartender:
	try requesting the rusty nails from the bartender.

Instead of requesting something from the bartender when the bartender does not carry the noun:
	if the noun is the screwdriver:
		carry out the refusing to buy activity with the screwdrivers;
	otherwise:
		if the noun is the gimlet:
			carry out the refusing to buy activity with the gimlets;
		otherwise:
			if the noun is the rusty nail:
				carry out the refusing to buy activity with the rusty nails;
			otherwise:
				continue the action.

Does the player mean buying something from the bartender:
	it is very likely.

The bartender is alert. The bartender exhibits vanity.

After the bartender saying hello to the player for the first time:
	say "She acknowledges us with a nod as we stroll up to the bar and get close enough to hear their conversation. [run paragraph on]".

The bartender knows you-are-possible-customer.

Understand "make me/us/-- [something]" as making. Making is an action applying to one visible thing.

Understand "make [text]" as anything-making. Anything-making is an action applying to one topic. Carry out anything-making: try making the player instead.

Carry out making something:
	say "[one of]How, exactly, do [we] intend to do that[or]How do you propose [we] do that[at random]?".

Instead of asking the bartender to try making something:
	try requesting the noun from the bartender.

Instead of asking the bartender to try giving a bartender-carried thing to the player:
	try requesting the noun from the bartender.

Definition: a thing is bartender-carried if it is carried by the bartender.

Availability rule for buy the screwdriver:
	if the screwdriver is not bartender-carried, it is off-limits;
	make no decision.

buy the screwdriver is a purchasing quip.
	[The mentions-list is {screwdriver, screwdrivers}.]
	The comment is "[if the bartender does not recollect how-rescue]We catch the bartender's eye and order a screwdriver. She holds up a finger as though to say she'll get to it as soon as she's done with [the patron][otherwise]We order a screwdriver[end if].".
	The reply is "'[drink-nice-day]'".
	It quip-supplies the bartender.

To say drink-nice-day:
	say "[thank-bartender][one of]Just the way you were imagining it, guaranteed.[no line break][or]Enjoy.[no line break][or]You can't order any more,' she says after that. 'You've seen all my tricks, and I have to cut people off at three.[no line break][stopping]".

The generic cocktail is a thing. Understand "drink" as the generic cocktail. It is carried by the bartender.

buy a drink is an unlisted repeatable purchasing quip.
	understand "order" or "cocktail" or "buying" or "ordering" as buy drink.
	[The mentions-list is {generic cocktail}.]
	The comment is "[if the bartender does not recollect how-rescue]The bartender is still talking, but we catch her eye and pantomime glugging down a beverage[otherwise]'I'd like a drink,' we say[end if]."
	The reply is "[one of]'What'll you have?' she asks. 'I can't pour you a generic beverage.'[or]'Pick your poison,' she says.[or]'Sure. What do you want?'[at random]".
	It quip-supplies the bartender.

Sanity-check buying the generic cocktail from the bartender:
	try discussing buy a drink instead.

Sanity-check doing something to the generic cocktail:
	say "Which one? All the cocktails here are specific recipes." instead.

Does the player mean doing something to the generic cocktail:
	it is very unlikely.

Does the player mean doing something to the screwdrivers:
	it is very unlikely.

Does the player mean doing something to the gimlets:
	it is very unlikely.

Does the player mean doing something to the nails:
	it is very unlikely.

Does the player mean doing something to the screwdriver when location is  Fleur d'Or Drinks Club:
	it is very likely.

Does the player mean doing something to the gimlet when location is  Fleur d'Or Drinks Club:
	it is very likely.

Does the player mean doing something to the nail when location is  Fleur d'Or Drinks Club:
	it is very likely.

Carry out the bartender discussing buy the screwdriver:
	move the screwdriver to the dor-bar-top;
	homonym-paddle the screwdriver;

Availability rule for buy the gimlet:
	if gimlet is not bartender-carried, it is off-limits;
	make no decision.

buy the gimlet is a purchasing quip.
	[The mentions-list is {gimlet, gimlets}.]
	The comment is "[if the bartender does not recollect how-rescue]The bartender is still talking, but we catch her eye and point to the gimlet selection. She gives a little nod to show she understood[otherwise]'I'll have the gimlet, if you don't mind,' we say, offering an appropriate bill[end if].".
	The reply is "'[drink-nice-day]'".
	It quip-supplies the bartender.

Carry out the bartender discussing buy the gimlet:
	move the gimlet to the dor-bar-top;
	homonym-paddle the gimlet;

Availability rule for buy the rusty nail:
	if rusty nail is not bartender-carried, it is off-limits;
	make no decision.

buy the rusty nail is a purchasing quip.
	[The mentions-list is {rusty nail, rusty nails}.]
	The comment is "[if the bartender does not recollect how-rescue]We pantomime purchasing the rusty nails, while the bartender is still chatting with [the patron]. She gives us a thumbs-up[otherwise]'I'll have the [rusty nail], if you don't mind,' we say, offering an appropriate bill[end if].".
	The reply is "'[drink-nice-day]'".
	It quip-supplies the bartender.

Carry out the bartender discussing buy the rusty nail:
	move the rusty nail to the dor-bar-top;
	homonym-paddle the rusty nail;

Rule for refusing to buy something (called target) which is in the toolkit:
	let drink-name be printed name of target;
	replace the regular expression ".$" in drink-name with ""; ["depluralize" the name of the tools, i.e. remove the last letter.]
	now drink-name is drink-name in sentence case;
	say "[one of]We ask for another [drink-name], but the bartender says she's limited to one drink per type per club member. 'They're a loss leader,' she explains. 'Tools are more expensive than cocktails, and then even with the rusty nails, there's the energy to run the paddle.'[or]The bartender has already explained that she can't sell us more drinks of the same kind. The profit margin is too low, apparently.[stopping]"

Rule for refusing to buy a drink-form thing:
	say "We've already paid for that." instead.

Definition: a thing is drink-form:
	if it is screwdriver-drink:
		yes;
	if it is gimlet-drink:
		yes;
	if it is rusty-nail-drink:
		yes;
	no.

Rule for deciding the concealed possessions of the bartender:
	if looking:
		yes;
	if the particular possession is the generic cocktail:
		no;
	if the particular possession is the homonym paddle:
		no;
	yes.

Does the player mean putting gel on a drink-form thing:
	it is very likely.

Before putting gel on a drink-form thing in the presence of the bartender:
	say "We turn away from the bartender so she won't see too obviously what we're up to. I suppose it doesn't matter, but I wouldn't want her feelings to be hurt. [run paragraph on]".

Rule for printing the name of rusty nail while looking at the rusty-nail-drink through something:
	say "metallic kind of rusty nail".
Rule for printing the name of rusty-nail-drink while looking at the rusty-nail-drink through something:
	say "rusty nail cocktail".
Rule for printing the name of screwdriver while looking at the  screwdriver-drink through something:
	say "tool form of screwdriver".
Rule for printing the name of screwdriver-drink while looking at the  screwdriver-drink through something:
	say "screwdriver cocktail".
Rule for printing the name of gimlet while looking at the gimlet-drink through something:
	say "tool form of gimlet".
Rule for printing the name of gimlet-drink while looking at the gimlet-drink through something:
	say "gimlet cocktail".

Understand "tip [bartender]" as a mistake ("We slide a spare bill across the bar. The bartender receives it with a playful wink and tucks it away.").

Setting action variables for saying hello to or saying goodbye to the patron:
	now the noun is the bartender.

Setting action variables for asking the patron about something:
	now the noun is the bartender.

Setting action variables for asking the patron for something:
	now the noun is the bartender.

Setting action variables for requesting something from the patron:
	now the second noun is the bartender.

Setting action variables for telling the patron about something:
	now the noun is the bartender.

Setting action variables for answering the patron that something:
	now the noun is the bartender.

A first conversation-reply rule when the current interlocutor is the bartender:
	if bartender does not recollect check-out-paddle:
		queue check-out-paddle as postponed optional; [She'll only say this once.]
	otherwise if bartender does not recollect dangerous-paddle:
		queue dangerous-paddle as postponed optional;
	otherwise if bartender does not recollect how-rescue:
		queue how-rescue as postponed optional;
	otherwise if the bartender does not recollect punitive-effects and a random chance of 1 in 3 succeeds:
		queue punitive-effects as postponed optional;
	otherwise if a random chance of 1 in 4 succeeds:
		if looking:
			do nothing;
		otherwise:
			casually queue drink-service.

check-out-paddle is an NPC-directed quip.
	The reply is "'It was originally produced as a toy, but it's actually a bit dangerous,' the bartender is saying.

'Dangerous? How so?' asks [the patron].

'Various ways,' she says. 'Suppose I hit a small object that has a big homonym, like say a plane. You know, the carpentry kind. Suddenly I've got an airplane-style plane on top of me.'"
	It quip-supplies the bartender.

dangerous-paddle is an NPC-directed quip.
	The reply is "'What if you hit something that doesn't mean anything else?' the patron asks. 'Like a chicken?'

'Nothing,' she says. 'That's safe.' As though to demonstrate, she smacks the paddle against her left buttock. 'See? I don't get changed into a different bartender. Want to try?'

She holds up the paddle as though she's going to tap him with it.

'Uh... my name is Mark[mark-known],' he says.

'Maybe not, then!' she says, laughing brightly."
	It quip-supplies the bartender.

Carry out someone discussing dangerous-paddle:
	now patron is proper-named;
	now the printed name of patron is "Mark";
	reset hash code of patron.

how-rescue is an NPC-directed quip.
	The reply is "'That was a little dangerous, wasn't it?' [the patron] asks. 'If you had tapped me with that thing, wouldn't I be a giant X on the carpet now?'

'Not for long,' the bartender says. 'I do have some restoration gel for emergencies. Or I could just hit you again with the paddle. But there would be an incident report and I could lose my lic[ense]. So, yeah, better not.'"
	It quip-supplies the bartender.

punitive-effects is an NPC-directed quip.
	The reply is "[The patron] looks thoughtfully into his [gin-tonic]. 'I hear that sometimes the Bureau turns people into inanimate objects as a criminal sentence. Is that true?'

For the first time, the bartender looks uncomfortable. 'I just pour the drinks,' she says. 'Hey, you're almost out there! Let me give you a refill.' And she busies herself getting down the Bombay Sapphire and refilling his drink.

'You ever tempted to paddle the Sapphire?' [the patron] asks. 'Should be worth a lot.'

'Alas, [if the player wears the Britishizing goggles]jewellers[otherwise]jewelers[end if] tend to check for authenticity around here,' she replies."
	It quip-supplies the bartender.

drink-service is an NPC-directed quip.
	The reply is "[atmospheric-event]".
	It quip-supplies the bartender.

what the paddle does is an unlisted repeatable questioning quip.
	The comment is "'Tell me about that paddle,' [we] say."
	The reply is "[one of]'This item,' says the bartender, flourishing it for you to see, 'is a genuine licensed homonym paddle. Changes one item into another item as long as the two have identical names.'[or]The bartender explains again the concept of a homonym paddle that is able to convert an item into another item of the same name.[stopping]".
	It quip-supplies the bartender.

Instead of subject-asking the homonym paddle:
	try discussing what the paddle does.

To say atmospheric-event:
	if the bartender is not the current interlocutor:
		say "[The patron] and [the bartender] from earlier are still here.[no line break]";
	otherwise:
		say "[one of][The patron] is sipping his [gin-tonic], while [the bartender] tidies up the bar[or][The bartender] is laughing at something [the patron] just said to her[or][The bartender] is cleaning her [homonym paddle] for future use[or]One of the businessmen wanders up to the bar and orders some peanuts[or]The bartender [is-s]get[ing-s] busy washing up some glassware[or]The bartender [is-s]pour[ing-s] tequila shots for a guest[or]One of the customers comes up and asks [the bartender] about the toolkit, and [the bartender] explains what drinks they turn into[or]A businesswoman comes up to the bar for directions to the nearest restroom[or]The bartender [is-s]construct[ing-s] a garish layered blue-and-white drink in a very tall glass[or]The bartender [is-s]pour[ing-s] someone a daiquiri with plastic monkeys clinging to the side of the glass[or]The bartender [is-s]pour[ing-s] a pink beverage for one of the customers, preparing the rim with a bit of flamed orange peel[or][The patron] [is-s]talk[ing-s] with [the bartender] about the weather in Atlantis[at random].[no line break]"

To say is-s:
	if the bartender is the person asked:
		do nothing;
	otherwise:
		say "is ".

To say ing-s:
	if the bartender is the person asked:
		say "s";
	otherwise:
		say "ing".

After someone discussing drink-service:
	now the bartender does not recollect drink-service;
	continue the action.

Rule for beat-producing when the current interlocutor is the bartender:
	repeat with item running through the planned conversation of the current interlocutor:
		if the item is a purchasing quip:
			say "[one of][The patron] sips his gin and tonic, and there's time to see to our order[or]In the natural rhythm of the conversation, she turns our way[stopping].[run paragraph on]";
			rule succeeds;
	make no decision.

Persuasion rule for asking the bartender to try homonyming something:
	persuasion succeeds.

Persuasion rule for asking the bartender to try attacking something with the homonym paddle:
	persuasion succeeds.

Understand "tap [something]" as touching when the person asked is not the bartender.

Understand "tap [something] with [the homonym paddle]" as attacking it with.
Understand "strike [something] with [something]" as attacking it with.

Understand "homonym [something]" or "homonym" or "homonym-convert" or "homonym-convert [something]" or "homonym-paddle [something]" or "paddle [something]" or "convert [something]" as homonyming. Homonyming is an action applying to one visible thing.

Rule for supplying a missing noun while homonyming:
	if programmable dais is marked-visible:
		now noun is a random thing on programmable dais;
		if noun is nothing:
			now the noun is the player;
	otherwise:
		say "What do [we] want to homonym?";
		stop the action.

Carry out homonyming something:
	if the actor is the bartender:
		carry out the refusing comment by activity with the bartender;
		the rule succeeds;
	if programmable dais is marked-visible:
		if the noun is not on programmable dais and the noun is not the player:
			try putting the noun on programmable dais;
			if the noun is not on programmable dais:
				stop the action;
		if the switch-setting of the massive switch is synthesize:
			try turning the massive switch;
		try switching on the programmable dais instead;
	otherwise:
		if bartender is marked-visible:
			try the player showing the noun to the bartender instead;
	say "Exactly how do [we] intend to do that?";

Check the bartender trying homonyming something:
	carry out the refusing comment by activity with the bartender;
	the rule succeeds.

Check the bartender trying attacking something with the homonym paddle:
	carry out the refusing comment by activity with the bartender;
	the rule succeeds.

Sanity-check asking the bartender to try attacking something (called the target):
	try showing the target to the bartender instead.

Does the player mean asking the bartender to try attacking something with the homonym paddle:
	it is very likely.

Does the player mean asking the bartender to try attacking something with something that is not the homonym paddle:
	it is very unlikely.

Rule for refusing comment by the bartender:
	unless the noun is enclosed by the player or the noun is a person or the noun is scenery:
		unless the noun is fixed in place:
			silently try taking the noun;
		if the player is not holding the noun:
			say "We're having a little trouble holding it up so that she can see.";
			rule fails;
	if the noun is scenery:
		say "She laughs.[paragraph break]'Do you want me to wreck this place?'";
		rule succeeds;
	if the noun is naughty-sounding:
		say "[The bartender] takes a look and smirks.

'[unless the noun is the ass][one of]Honey, it would be too small to see[or]I'm not going to homonym-paddle that for you, so don't ask[stopping][otherwise]That's a lot of junk for one trunk[end if],' she says. [if the noun is an animal]'In fact, you really shouldn't have brought it in here.'[otherwise]'In fact, I'm not sure you're even supposed to have that.'[end if]";
		rule succeeds;
	if the noun is the card:
		reset the card;
		say "The bartender taps [the card] with the paddle. 'Was this your card?' she asks, returning a card now representing [article of (card-style of the card)][card-style of the card].";
		record "getting a product of the homonym paddle" as achieved;
		rule succeeds;
	let target be the homonym-match of the noun;
	if the heft of the target is greater than 4 or the target is fixed in place:
		say "'[The target] would be bigger than I want to generate in here,' comments [the bartender].";
		rule succeeds;
	otherwise if the noun is a person or the noun encloses a person:
		say "'That would be way too dangerous. I'd lose my lic[ense] for sure.'";
		rule succeeds;
	otherwise if target is the player:
		say "'I don't think [regarding the noun][those] would turn into anything,' says the bartender. She taps [regarding the noun][them] with the paddle to demonstrate. 'See? No change.'";
		rule succeeds;
	otherwise if the target is a person:
		say "'Making live [if the target is not an animal]people[otherwise]critters[end if] is outside my lic[ense], bub.' (Bub? Who says that? But she carries it off.)";
		rule succeeds;
	otherwise if the target is the piece-alternate:
		say "'Er… I think that would make a handgun, which would be illegal around here,' she says.";
		rule succeeds;
	otherwise:
		if something proffers the noun:
			now the target is not proffered by anything;
			now everything which proffers the noun proffers the target;
		if the noun is part of something (called the encloser):
			now the target is part of the encloser;
		otherwise:
			now the target is carried by the player;
		move the noun to the repository;
		record "getting a product of the homonym paddle" as achieved;
		say "[thank-bartender]She shrugs good-naturedly, hits [the noun] with the paddle, and grins at us. We look down at what we're holding: [the description of the target][paragraph break]".

Rule for refusing comment by the bartender when the noun is the Slangovia map or the noun is the fake-legend:
	if the fake-legend is not part of the Slangovia map:
		make no decision;
	let the target be the legend;
	now the noun is the fake-legend;
	if something (called the source) proffers the noun:
		now the target is not proffered by anything;
		now the source proffers the target;
	if the noun is part of something (called the encloser):
		now the target is part of the encloser;
	otherwise:
		now the target is carried by the player;
	move the noun to the repository;
	record "getting a product of the homonym paddle" as achieved;
	say "[thank-bartender][one of]'This?' she says, looking a little surprised. 'You want it converted?'

'Why not?'

'No reason,' she says. 'Just I did the same item a few hours ago for a gentleman. Really hot, with these amazing eyes—'

'Whatever,' you say, before she can get any more excited about Brock.

She smirks. Then she taps the legend with her paddle and it transforms into a proper map legend.[or]'Okay, one more time.'[or]She may be tiring of this operation.[stopping]".

Check examining the legend for the first time:
	say "[legend description][paragraph break]";
	introduce legend;
	record "reading a legend" as achieved;
	say paragraph break;
	follow the the new notify score changes rule instead.

Instead of taking the legend:
	if the player carries the map:
		try pulling the legend;
	otherwise:
		try taking the slangovia map.

Instead of taking the fake-legend:
	if the player carries the map:
		try pulling the fake-legend;
	otherwise:
		try taking the slangovia map.

Instead of pulling the legend:
	say "The legend is carefully glued to the map. [We] don't want to ruin it, or the map."

Instead of pulling the fake-legend:
	say "The legend is carefully glued to the map. [We] don't want to ruin it, or the map."

Sanity-check dropping the fake-legend:
	try dropping the slangovia map instead.

Sanity-check dropping the legend:
	try dropping the slangovia map instead.

Instead of buying the fake-legend from Kate:
	try discussing buy the Slangovia map.

Rule for refusing comment by the bartender when the noun is the Slangovia map or the noun is the legend:
	if the legend is not part of the Slangovia map:
		make no decision;
	let the target be the fake-legend;
	now the noun is the legend;
	if something (called the source) proffers the noun:
		now the target is not proffered by anything;
		now the source proffers the target;
	if the noun is part of something (called the encloser):
		now the target is part of the encloser;
	otherwise:
		now the target is carried by the player;
	move the noun to the repository;
	record "getting a product of the homonym paddle" as achieved;
	say "[one of]She sighs. 'This isn't even good spectacle,' she says, tapping [the noun] with her paddle. 'Next time, bring me something fun, huh?'[or]She may be tiring of this operation.[stopping]"

Rule for refusing comment by the bartender when the noun is the homonym paddle:
		say "'Er… I don't think the paddle would turn into anything, even if it were possible to hit it with itself,' she says."

Rule for refusing comment by the bartender when the noun is the foil:
	if the player is not holding the foil:
		silently try taking the foil;
	if the player is not holding the foil:
		say "[line break]It seems we're having a little trouble holding it up so that she can see.";
		rule fails;
	say "[one of]'Now that is definitely too awesome to turn down. Swordfight!'

So we lunge at her with the foil, she defends with the paddle, there is a crackle of purple-white, and we're left holding a ball of crumpled aluminum.

People around the bar shout and whoop.[or]We hold up the foil. 'Could you paddle this?'

'I'll probably get in trouble if I do this act too often, but what the hell, right? It's a holiday.'

Our fight-scene is a little better-choreographed than last time, and the customers clap enthusiastically.[stopping]";
	move the foil to the repository;
	record "getting a product of the homonym paddle" as achieved;
	if something (called the target) proffers the foil:
		now the metal-foil is not proffered by anything;
		now the target proffers the metal-foil;
	move the metal-foil to the player.

Rule for refusing comment by the bartender when the noun is the ball:
	say "[one of]We hold up the ball. 'Can you paddle this?' we ask.

[The bartender] laughs. 'It might be fun to have a big dance in here but I think I'd get fired,' she says.[or]We tried that already, and it didn't go well.[stopping]"

[Rule for refusing comment by the bartender when the noun is a drink-form thing:
	say "She's already done her thing with [the noun]." ]

Rule for refusing comment by the bartender when the noun is the shuttle:
	say "[one of]We hold up the shuttle. 'Can you do this?' we ask.

[The bartender] frowns. 'If I paddled that, it'd break the whole bar. Besides, isn't it Bureau property?'

We shrug amiably.

She gives us a long, admonitory stare, then goes back to what she was doing.[or]We tried that already, and it didn't go well.[stopping]".

Table of Ultratests (continued)
topic	stuff	setting
"bartender"	{ slangovia map, foil, the ball, the card, the cock}	Drinks Club
"legend"	{ slangovia map, tub}	Drinks Club

Test bartender with "tutorial off / z / ask about paddle / show ball to bartender / show foil to bartender / show map to bartender / show card to bartender / g / g / show cock to bartender" [in the Drinks Club holding the slangovia map and foil and the ball and the card and the cock.]

Test legend with "tutorial off / x map / x legend / open tub / gel legend / show map to bartender / show legend to bartender / x legend / read map / read legend / gel legend / x map / show map to bartender / show legend to bartender / drop legend / unmonkey / e / x map / x legend".

thank the bartender is a thanking quip.
	[The mentions-list is { the bartender }.]
	It assumes thank-bartender.
	The comment is "'[one of]Thank you[or]Thanks again[stopping]!'".
	The reply is "[one of]'Don't mention it,' she says. 'It's what I do.'[or]'You don't have to thank me,' she says.[or]'That's enough!'[stopping]".
	It quip-supplies the bartender.

Section 4 - Kate

Instead of waiting when the current interlocutor is Kate:
	say "We kill some time [one of]admiring the merchandise[or]checking out the maps[or]staring idly into space[or]comparing ourselves to the mannequin[or]gazing out the shop window[at random].[no line break]";
	if a random chance of 1 in 2 succeeds:
		say paragraph break;
		carry out the beat-producing activity;
	say paragraph break.

Rule for beat-producing when the current interlocutor is Kate:
	if a random chance of 1 in 3 succeeds and the map-customer is not in the location:
		shuffle map-customer;
		say "[one of][A map-customer] steps into the shop[or]The door opens and [a map-customer] comes in[or]Kate greets [a map-customer] who has just come into the shop[or]There's a tinkle from the door as [a map-customer] walks in[at random].[run paragraph on]";
		move map-customer to the location;
	otherwise if a random chance of 1 in 3 succeeds and the map-customer is in the location:
		let N be a random number between 1 and 4;
		if N is:
			-- 1:
				say "[one of][The map-customer] asks Kate's advice about one of the maps[or]Kate confers with [the map-customer] in hushed tones[at random].[run paragraph on]";
			-- 2: say "[one of][The map-customer] edges past you and Kate to get a look at one of the other maps[or][The map-customer] ponders [a random marked-visible scenery thing][at random].[run paragraph on]";
			-- 3: say "[idle of the map-customer][run paragraph on]";
			-- 4: say "[The map-customer] [one of]stops browsing and leaves[or]seems to have seen enough, and goes out[or]thanks Kate and goes out[or]heads out the door[at random].";
				now the map-customer is nowhere;
	otherwise:
		say "[one of]Kate polishes a smudge off the display case[or]Kate rearranges a few objects in the shop window[or]Kate waves at someone she knows through the store window[or]Kate dabs absently at something on her shirt[casually queue stains][or]The phone rings.

Kate answers, briefly assures the person on the other end of the line that the shop is indeed open today, and hangs up[as decreasingly likely outcomes].[run paragraph on]".


The greeting of Kate is "'Welcome to Arbot,' says Kate. 'Feel free to browse and ask me any questions you may have about the merchandise[change-kate-greeting].'"
The generic adversative of Kate is "[one of]ah but[at random]".
The generic confrontational of Kate is "one moment".

Understand "ask [Kate] for [any kate-carried thing]" as requesting it from (with nouns reversed).

To say change-kate-greeting:
	now the greeting of Kate is "'Welcome back,' Kate says."

Kate knows you-are-possible-customer.

Instead of asking Kate to try giving a kate-carried thing to the player:
	try requesting the noun from kate.

Definition: a thing is kate-carried:
	if it is the Britishizing goggles and Kate does not recollect buy the Britishizing goggles:
		yes;
	if it is the Slangovia map and Kate does not recollect buy the Slangovia map:
		yes;
	no.

Sanity-check taking a kate-carried thing:
	say "Kate is watching us; I think we'd best buy anything we need here, rather than trying to filch it." instead;

Availability rule for buy the goggles:
	if the Britishizing goggles are not kate-carried, it is off-limits;
	make no decision.

buy the Britishizing goggles is a purchasing quip.
	The printed name is "buy the British[izing] goggles".
	[The mentions-list is {Britishizing goggles}.]
	The comment is "'I'm interested in these British[izing] goggles,' we say.".
	The reply is "'An excellent choice,' Kate assures us. 'They're the real thing, vintage made, not the plastic knock-offs that were all the rage in the 80s. Leather straps, brass fittings, top-grade lenses.'

A large number of bills later and we're the proud owner of the goggles. Kate removes the goggles from the mannequin and fits them to our face.".
	It quip-supplies Kate.

Carry out Kate discussing buy the Britishizing goggles:
	if the player wears the monocle:
		now the player carries the monocle;
	now the player wears the Britishizing goggles.

Availability rule for buy the Slangovia map:
	if Slangovia map is not in the location, it is off-limits;
	if Slangovia map is not kate-carried, it is off-limits;
	make no decision.

Instead of taking the Slangovia map when Kate does not recollect buy the Slangovia map:
	say "I think we had better keep our hands off the merchandise until we're ready to buy [--] these antique paper items take smudges and damage very easily."

buy the Slangovia map is a purchasing quip.
	[The mentions-list is {the Slangovia map}.]
	The comment is "'[if Kate recollects which map was sold]I'll take the Slangovia map,' we say. 'It's not every day you see something like this.'[otherwise]I'll have this map of Slangovia,' we say.[end if]".
	The reply is "[if Kate recollects which map was sold]'Very good,' she says. 'Too bad he didn't think to offer it to you directly! But just as well for us, I suppose.'

I take this to mean that Arbot is getting a big commission on the sale.[otherwise if Kate recollects whether she hath seen Brock-man]'Ah, that's [--]' She's presumably about to say that it's the map Brock sold to the shop just this morning. But a kind of quiet caution takes over. 'That's a very interesting piece,' she ends smoothly. 'We don't see many maps of Slangovia. It's not much visited, I believe.'[otherwise]'That just came in today,' Kate says. 'We bought it from a visiting scholar [--] he'd come to attend a demonstration with my boss, as a matter of fact, and happened to have this item with him.'

She looks at the map dubiously for a moment. 'Just between us, I've never heard of Slangovia. But as the seller [i]was[/i] a guest of my employer, it seemed rude to quibble. And it is a very attractively drawn piece. I'm sure you'll enjoy it.'[end if][figure-out-legend]

Kate removes the map from its case and packs it up carefully for us.".
	It quip-supplies Kate.

Brock is a man in the repository.
The initial appearance is "Brock is preternaturally still."
The current mood of Brock is neutral.

whether she hath seen Brock-man is a questioning quip.
	The printed name is "whether she has seen Brock".
	The true-name is "whether she hath seen Brock-man".
	Understand "has" or "brock" as whether she hath seen Brock-man.
	[The mentions-list is {Brock}.]
	The comment is "'Have you seen a man [--] maybe this morning [--] about this height, dark hair, very blue eyes, kind of cocky?'"
The reply is "There's a light of recognition. 'Yes, he was in. A friend of my boss. He visited the shop and sold us [if Kate recollects buy the slangovia map]that map you just purchased[otherwise]a map he happened to have with him[end if]. Then they left, together. I believe there was some discussion of seeing a demonstration[casually queue recommend-help].'"
	It quip-supplies Kate.

An availability rule for which map was sold:
	if Kate recollects buy the Slangovia map:
		it is off-limits;
	make no decision.

which map was sold is a questioning quip.
	The comment is "'[if immediately]He sold you a map? Which one was that[otherwise]You mentioned that the gentleman sold you a map [--] which one was it[end if]?'"
	The reply is "'It's just here,' Kate says, going over to the selection and pointing out a map purporting to depict Slangovia. 'An unusual piece.'

She glances sideways at us."
	It indirectly-follows whether she hath seen Brock-man.
	It quip-supplies Kate.

Carry out Kate discussing which map was sold:
	now the Slangovia map is in the location.

what sort of demonstration is a questioning quip.
	Understand "schedule" or "plan" or "plans" as what sort of demonstration.
	The comment is "'[if immediately]What sort of demonstration is that[otherwise]You mentioned that your boss and the other gentleman went to a demonstration. What kind of demonstration was it[end if]?'"
	The reply is "She smiles and shrugs. '[Mr] Arbot used to work for the Bureau before he retired to sell antiques. He still has lots of connections. It could be anything.'"
	It indirectly-follows whether she hath seen Brock-man.
	It quip-supplies Kate.

whether Brock-man seemed upset is a questioning quip.
	The printed name is "whether Brock seemed upset".
	The true-name is "whether Brock-man seemed upset".
	[The mentions-list is {Brock}.]
	The comment is "'There's a chance my friend was in trouble. Did he seem to be in a hurry or concerned about anything?'"
	The reply is "'Not at all. He appeared eager to speak with [Mr] Arbot, and they had plans together, but he didn't seem agitated. If anything, he seemed a little more worldly and collected than people in his line of work usually are[casually queue recommend-help].'

Cryptic. Perhaps he was posing as a researcher? But we can't very well ask, not if we're supposed to be a friend of his."
	It indirectly-follows whether she hath seen Brock-man.
	It quip-supplies Kate.

recommend-help is an NPC-directed quip.
	The reply is "'If your friend is missing, you could report him to the Bureau, you know,' she says. 'I believe they keep close tabs on academic and research visitors. They may well know where he is.'

'Thank you,' you say. 'I don't think things are quite at that point.' And they never will be, obviously."

why Arbot now sells antiques is an unlisted questioning quip.
	Understand "mr" as why arbot now sells antiques.
	The comment is "'So your boss used to work for the Bureau, but now he sells maps?'"
	The reply is "'And other items. Some of them are very difficult to source in Atlantis.'

'But [Mr] Arbot has connections,' we prompt.

She doesn't disagree, but doesn't elaborate, either."
	[The mentions-list is {the maps collection}.]
	It indirectly-follows what sort of demonstration.
	It quip-supplies Kate.

what types of antiques they sell here is a repeatable unlisted questioning quip.
	Understand "type" or "kind" or "sort" or "antique" or "you" as what types of antiques they sell here.
	[The mentions-list is {the maps collection}.]
	The comment is "'What sorts of antiques do you sell here?'"
	The reply is "[one of]'What you see around you on the floor is fairly representative,' Kate replies. 'Maps are a specialty, but we also carry older models of linguistic tools as well as unusual or vintage Atlantean artifacts.'[or]Kate explains again that maps are their specialty, but that they also carry other artifacts and tools.[stopping]".
	It quip-supplies Kate.

Does the player mean discussing why Arbot now sells antiques:
	it is very likely.

Does the player mean discussing what types of antiques they sell here:
	it is likely.

Does the player mean discussing what sort of demonstration:
	it is very likely.

Carry out Kate discussing buy the Slangovia map:
	if the player carries the backpack:
		now the Slangovia map is in the backpack;
	otherwise:
		now the player carries the Slangovia map;

stains is an NPC-directed quip.
	The reply is "'A new shirt and a cup of hot coffee,' Kate says ruefully. 'It always ends up this way.'"

Report smiling when the current quip is stains:
	say "We smile sympathetically." instead.

Report laughing when the current quip is stains:
	say "We chuckle sympathetically." instead.

Availability rule for what the map legend means:
	if the Slangovia map is not enclosed by the location:
		it is off-limits;
	if the fake-legend is not part of the Slangovia map:
		it is off-limits;

what the map legend means is a repeatable unlisted questioning quip.
	[The mentions-list is {map, legend, fake-legend}.]
	The comment is "[one of]'The legend on this map is unusual,' we say[if the fake-legend is seen], pointing out the business of Iphis and Ianthe in the corner[otherwise]. And it is, too [--] it's a short story instead of any kind of key to the symbols on the map[end if][or]We point out the map legend again[stopping]."
	The reply is "[one of]Kate frowns at it. 'Perhaps it's a story with some kind of local significance?' she suggests, after a moment[or]'I'm afraid I've told you what little I know about that piece,' she says[or]She reiterates that she doesn't have more to add about that piece[stopping]."
	It quip-supplies Kate.

Instead of giving or showing the map to Kate when the fake-legend is part of the map:
	try discussing what the map legend means.

Instead of giving or showing the fake-legend to Kate:
	try discussing what the map legend means.

Sanity-check showing the map to Kate when the legend is part of the map:
	say "Now that it's obvious this is a secret message, you're not exactly going to show it to all and sundry." instead.
Sanity-check showing the legend to Kate:
	say "Now that it's obvious this is a secret message, you're not exactly going to show it to all and sundry." instead.

Test Kate with "tutorial off / z / ask about brock / ask about demonstration / ask about antiques / ask about map / buy map / z / z / z / look / x map / x legend / a legend / show map to kate" in Arbot Maps & Antiques.
Test Kate2 with "tutorial off / z / x maps / buy map / ask about brock / ask about antiques / ask about demonstration / ask about brock / z / z / z/ look / a legend / x map / x legend / a legend / show map to kate" in Arbot Maps & Antiques.
Test Kate3 with "tutorial off / z / ask about brock / x maps / buy map / ask about demonstration / ask about antiques / ask about brock / z / z / z / look / a legend / x map / x legend / a legend" in Arbot Maps & Antiques.


Section 5 - The Ticket-taker

The greeting of the ticket-taker is "'[one of]Hey[or]Yo[or]Hi[at random],' he says.".
The generic negative of the ticket-taker is "[one of]kind of not really[or]nah[or]nope[or]like no[at random]".
The generic positive of the ticket-taker is "[one of]yeah[or]yup[or]kind of, yeah[or]sort of basically yes[or]I guess so[or]I think so[at random]".
The generic adversative of the ticket-taker is "[one of]weeell actually[or]well, um[or]uh, hm[at random]".
The generic confrontational of the ticket-taker is "[one of]oh geez look[or]man, come on[at random]".

Rule for beat-producing when the current interlocutor is the ticket-taker:
	say "[one of][one of]He sniffs[or]He thinks[or]The ticket-taker coughs faintly[or]He scratches his head[at random][or]He rocks back and forth on his feet[or]He tilts his head thoughtfully[or]He glances toward the door as someone contemplates coming in, but then fails to do so[as decreasingly likely outcomes].[run paragraph on]".

hang-on-there is an NPC-directed quip.
	The reply is "'You need a ticket to go in there,' says the ticket-taker."

Instead of giving the ticket to the ticket-taker:
	try showing the ticket to the ticket-taker.

Availability rule for offer the ticket:
	if the ticket-taker knows allowed-in-movie:
		it is off-limits;
	make no decision.

offer the ticket is an unlisted demonstration quip.
	The printed name is "offer the ticket".
	Understand "here is ticket" as offer the ticket.
	[The mentions-list is {the ticket}.]
	The comment is "'Here, have a ticket,' we say."
	The reply is "[allowed-in-movie]The ticket-taker frowns slightly as he takes the ticket. He turns it over front and back; looks at us in confusion; looks at the ticket again. Then he goes to the phone and makes a call.

I'm nervous. It's evident that he's talking to his manager. He doesn't take his eyes off us for a moment. He puts his hand over the mouth of the receiver so that we can't hear the whole conversation clearly, but the gist is still obvious: '...be fake... but... a TRICKET maybe? or, like, a STICKET? ...oh, all right.'

Finally he hangs up.

'Sorry for the inconvenience,' he says. 'Your ticket looks a little different from our usual ones, but I guess the printing has been changed.'

He tears the ticket briskly into confetti, destroying all evidence of our crime, and points off to the west. 'The screening room is that way. Thank you and enjoy the show. It's not for a while, though.'"
	It quip-supplies ticket-taker.

[Get rid of an annoying parser clarification message]
Understand "give [ticket] to [ticket-taker]" as giving it to.

Carry out the ticket-taker discussing offer the ticket:
	now the ticket is nowhere.

Availability rule for offer the ticket redundantly:
	if the ticket-taker does not know allowed-in-movie:
		it is off-limits;
	make no decision.

offer the ticket redundantly is an unlisted demonstration quip.
	The printed name is "offer the ticket".
	The true-name is "offer the ticket redundantly".
	Understand "here is ticket" as offer the ticket redundantly.
	[The mentions-list is {the ticket}.]
	The comment is "'Here, have a ticket,' we say."
	The reply is "The ticket-taker squints at the ticket. 'You've already been let in,' he says. 'So you can keep this. Kind of a weird one, though, isn't it? I didn't know we issued [']em this way. Still, it's awfully confusing now that there are all those print-your-own-ticket-at-home things, or you can buy the ticket at the box office, or win it at a raffle prize, or whatever. I keep having to call my manager to check what special offers we're running this week.'"
	It quip-supplies ticket-taker.


when the movie starts is a questioning quip.
	[The mentions-list is {entertainment}.]
	Understand "time" or "hour" or "timing" as when the movie starts.
	The comment is "'When does the movie start?' we ask.".
	The reply is "'Oh, um... not until this evening.'".
	It quip-supplies the ticket-taker.
	It is background-information.

whether the clock helps is a demonstration quip.
	[The mentions-list is {clock}.]
	The comment is "'Does this help?' we ask, showing the clock to the ticket-taker.".
	The reply is "He glances at the clock face. 'Well, [i]that[/i] can't be right,' he says dismissively.".
	It quip-supplies the ticket-taker.
	It is background-information.
	It indirectly-follows when the movie starts.

[ where he bought the watch is a questioning quip.
	[The mentions-list is {watch, salespeople}.]
	The comment is "'Just out of curiosity,' we ask, 'where did you get that watch? Was it from the street seller outside?'".
	The reply is "Reddening, he says, 'Yeah.' It looks as though he's going to leave it at that, but then he goes on: 'I know they're probably fake, but I thought, you know, who cares? If they can turn something worthless into a diamond watch, it's still a diamond watch, right?' Shaking his wrist angrily, he adds, 'Guess I learned my lesson.'".
	It quip-supplies the ticket-taker.
	It is background-information.
	It indirectly-follows when the movie starts.

suggest replacing batteries is a performative quip.
	[The mentions-list is {watch}.]
	The comment is "'You could replace the batteries,' we suggest gently. 'Language-generated items can be defective in a variety of ways, but it is possible that yours just got an old or out-worn battery.'".
	The reply is "'Really? You think?' A pleased grin spreads over his face. 'All right, then!'".
	It quip-supplies the ticket-taker.
	It directly-follows where he bought the watch]

what the movie seems is a weakly-phrased questioning quip.
	The printed name is "what the movie is". The true-name is "what the movie seems".
	Understand "is" as what the movie seems.
	[The mentions-list is {entertainment}.]
	The comment is "'What's playing, anyway?'".
	The reply is "'It's a special showing of [']Red.[']'".
	It quip-supplies the ticket-taker.
	It is background-information.

whether he likes his job is a questioning quip. The comment is "'Do you enjoy being a cinema admissions specialist?'".
	[The mentions-list is {employment, ticket-taker}.]
	The reply is "He looks taken aback, but makes a surprising recovery. 'Yeah,' he says. 'Yeah, I do. I think it's a job with a real future.'".
	It quip-supplies the ticket-taker.
	It is background-information.

whether crime could ever be justified is a questioning quip. The comment is "'Hypothetically speaking, do you think a crime could ever be justified?'".
	[The mentions-list is {crime, legislation, bureau}.]
	The reply is "'Uh, no,' he says. 'Because if it's justified, it's not a crime. Like: if you kill someone in self-def[ense], that's justified, but it's not a crime, so you won't have to go to jail.'".
	It quip-supplies the ticket-taker.
	It is background-information.

whether the government seems just is a questioning quip.
	The printed name is "whether the government is just". The true-name is "whether the government seems just".
	Understand "is" as whether the government seems just.  The comment is "'Do you think the government is just?'".
	[The mentions-list is {bureau, legislation}.]
	The reply is "'What, here? Of course. We had universal suffrage before lots of places, right?' he says, counting off on his fingers. '1877. And we never had slavery. Plus there is very little poverty and there's a high standard of living. Good health care. No complaints here.'".
	It quip-supplies the ticket-taker.
	It is background-information.

whether immigration laws seem fair is a questioning quip.
	The printed name is "whether immigration laws are fair". The true-name is "whether immigration laws seem fair".
	Understand "are" as whether immigration laws seem fair.  The comment is "'Do you think our immigration laws are fair?'".
	[The mentions-list is {immigration, legislation, bureau}.]
	The reply is "'They seem like they're working,' he says. 'I don't really give that kind of thing a lot of thought, but, I've never met someone who seemed like they shouldn't have been let in, you know?'".
	It quip-supplies the ticket-taker.
	It is background-information.

Definition: whether he hath ever been in trouble alongside law is civic:
	no.

whether he hath ever been in trouble alongside law is a questioning quip.
	The printed name is "whether he has ever been in trouble with the law". The true-name is "whether he hath ever been in trouble alongside law".
	Understand "has" or "with" as whether he hath ever been in trouble alongside law.  The comment is "'Have you ever had any run-ins with the law?'".
	[The mentions-list is {security, legislation, crime}.]
	The reply is "'That's kind of none of your business, isn't it?'".
	It quip-supplies the ticket-taker.
	It is background-information.

Carry out the ticket-taker discussing a civic quip:
	if the ticket-taker recollects taking-a-survey:
		casually queue enough-in-school;
	otherwise:
		casually queue taking-a-survey.

taking-a-survey is an NPC-directed quip.
	The reply is "'What is this about? Are you taking a survey or something?'"

Instead of saying yes when the current interlocutor is the ticket-taker and claim to be taking a survey is available:
	try discussing claim to be taking a survey.
Instead of saying no when we seem curious:
	try discussing we seem curious.

claim to be taking a survey is a performative quip. The comment is "'Yes.'".
	[The mentions-list is {yourself, research}.]
	The reply is "'...oh[you-take-survey].' He frowns. 'Aren't you supposed to be writing down my answers on a clipboard or something?'".
	It quip-supplies the ticket-taker.
	It directly-follows taking-a-survey.

Instead of saying no when the current interlocutor is the ticket-taker and explain that we hath a recorder is available:
	try discussing explain that we hath a recorder.

explain that we hath a recorder is a performative quip.
	The printed name is "explain that we have a recorder". The true-name is "explain that we hath a recorder".
	Understand "have" as explain that we hath a recorder.  The comment is "'I'm, ah, recording all of this. Makes it easier not to have to write things down during the survey. More scientific, too.'".
	[The mentions-list is {yourself}.]
	The reply is "'Uh... okay.'".
	It quip-supplies the ticket-taker.
	It directly-follows claim to be taking a survey

we seem curious is an informative quip.
	The printed name is "we are curious". The true-name is "we seem curious".
	Understand "are" as we seem curious.  The comment is "'No, not exactly. I was just curious about what you thought,' we say.".
	[The mentions-list is {yourself}.]
	The reply is "'...huh.'".
	It quip-supplies the ticket-taker.
	It directly-follows taking-a-survey.

enough-in-school is an NPC-directed quip.
	[The mentions-list is {legislation, education}.]
	The reply is "'I kind of had enough of this stuff in school,' he says. 'We talked about various laws and stuff, but I'm really just not that into it. When there's a referendum up for voting I'll look into it if it sounds interesting but in between times I don't see the point of talking about what the laws are and whatnot. I mean it's not like you can do anything about them, and they work pretty well. So let's drop it.'"

Carry out the ticket-taker discussing enough-in-school:
	now the ticket-taker is bored of politics.

The ticket-taker can be bored of politics.

Instead of the ticket-taker discussing a civic quip when the ticket-taker is bored of politics:
	say "[one of]'Find someone else to bother with that stuff,' he says ungraciously.[or]'If you're really into all that maybe you could find someone by the university who wants to talk about it.'[or]'Jeez, I said to give it a rest.'[at random]".

[The ticket-taker construes this question differently depending on what else he already knows about us: if he thinks we're taking a survey, he'll comment on that, but otherwise he'll assume that we're asking him as a prelude to setting up a date.]

Rule for subject-changing when the current quip is what he likes to eat and the ostensible motive is you-take-survey:
	say "'That's kind of a weird question for a survey,' he observes, but shrugs. [run paragraph on]".

Rule for subject-changing when the current quip is what he likes to eat and the ostensible motive is you-are-tourist:
	say "'Wow, you're really interested in our culture,' he remarks. [run paragraph on]".

what he likes to eat is a questioning quip. The comment is "'What kinds of foods do you like?' we ask.".
	[The mentions-list is {food}.]
	The reply is "'Just regular food. Hamburgers, pizza. Sometimes I like more Mediterranean stuff, though. stuffed grape leaves, olive bread, stuff like that.'".
	It quip-supplies the ticket-taker.
	It is background-information.

where he gets Mediterranean foods is a questioning quip. The comment is "'Where do you go for [if immediately]that kind of [otherwise]Mediterranean [end if]food?'".
	Understand "ticket-taker" as where he gets Mediterranean foods.
	[The mentions-list is {food}.]
	The reply is "'The Babel Café is good,' he says. 'There are always a lot of university students over there, though, so it gets kind of crowded sometimes.'".
	It quip-supplies the ticket-taker.
	It indirectly-follows what he likes to eat.

where there seems Babel Cafe is a questioning quip. The comment is "'So where is The Babel Café?'".
	Understand "is" or "this" or "café" as where there seems Babel Cafe. The printed name is "where the Babel Café is". The true-name is "where there seems Babel Cafe".
	The reply is "'It's quite a walk from here. You have to go along High Street east of the park, past the roundabout, then down Long Street until you get to Palm Square. You'll see it [--] it's right next to the university.'".
	It quip-supplies the ticket-taker.
	It indirectly-follows where he gets Mediterranean foods.

Instead of the ticket-taker discussing what he likes to eat when the ostensible motive is generic-truth:
	try the ticket-taker discussing mutual-embarrassment.

mutual-embarrassment is an NPC-directed quip.
	[The mentions-list is {the ticket-taker}.]
	The reply is "He looks really taken aback and embarrassed. 'I've, uh. I mean. I like all kinds of food, but, uh. I have a girlfriend[you-hit-on].'".

assure him that we seem not hitting on him is a performative quip.
	The printed name is "assure him that we are not hitting on him". The true-name is "assure him that we seem not hitting on him".
	Understand "are" as assure him that we seem not hitting on him.  The comment is "You laugh. 'Sorry, no, I wasn't asking you out[forget you-hit-on],' you say. 'I'm sure she's a lucky girl, but I'd be robbing the cradle just a little.'".
	[The mentions-list is { yourself, ticket-taker }.]
	The reply is "'Heh. Heh. Yeah. Heh.' He's not meeting our eye and his face is going even redder than it was before, but I can't think what else you could have said there. Except, of course, for the option of leaving the poor guy alone, since this is hardly germane to our mission.".
	It quip-supplies the ticket-taker.
	It directly-follows mutual-embarrassment.

about what his girlfriend seems like is a questioning quip.
	The printed name is "what his girlfriend is like". The true-name is "what his girlfriend seems like".
	Understand "is" as what his girlfriend seems like.  The comment is "'What's she like, your girlfriend?'".
	[The mentions-list is { romance, ticket-taker }.]
	The reply is "'Uh... she's blonde, about this tall' (he holds his hand at the height of his own shoulder) 'and she has two sisters. And she really likes collecting perfumes. She wants to be a perfume designer when we're older. Or I think there's another name for it.'".
	It quip-supplies the ticket-taker.
	It indirectly-follows mutual-embarrassment.

[And of course if we're not explaining ourselves...]

Carry out the ticket-taker discussing something when the ticket-taker recollects at least three quips and the ticket-taker does not know allowed-in-movie:
	casually queue going-in-movie.

going-in-movie is an NPC-directed quip.
	The reply is "'So are you just [if ostensible motive is you-take-survey]collecting data[otherwise]hanging out here[end if] or do you want to go in to the movie or what?'"

Instead of saying no when current interlocutor is the ticket-taker and delay ticket-taker is available:
	try discussing delay ticket-taker.

delay ticket-taker is a weakly-phrased performative quip.
	The printed name is "delay the ticket-taker".
	The true-name is "delay ticket-taker".
	The comment is "'Maybe I'll go in in a little bit,' we say. 'The movie's not for a while yet, right?'".
	[The mentions-list is {entertainment}.]
	The reply is "'Yeah, that's right.'".
	It quip-supplies the ticket-taker.
	It directly-follows going-in-movie.

An availability rule for where my backpack seems:
	if the player encloses the backpack:
		it is off-limits;
	if the ticket-taker knows allowed-in-movie:
		it is off-limits.

where my backpack seems is an unlisted questioning quip.
	The printed name is "where my backpack is". The true-name is "where my backpack seems".
	Understand "is" or "pack" or "lost" as where my backpack seems.  The comment is "'I left my pack in the cinema,' we say. 'Can I just go in and fetch it? I'll come right back out. No need for a ticket.'".
	[The mentions-list is {backpack}.]
	The reply is "He scowls. 'We've been getting a lot of people trying to scam us,' he says. 'So I'm going to say no.'".
	It quip-supplies the ticket-taker.

An availability rule for argue about  lost plus found policy:
	if the player encloses the backpack:
		it is off-limits;
	if the ticket-taker knows allowed-in-movie:
		it is off-limits.

argue about  lost plus found policy is a performative quip.
	The printed name is "argue about the lost and found policy". The true-name is "argue about  lost plus found policy".
	Understand "and" as argue about  lost plus found policy.  The comment is "'That's ridiculous. I'll be right back out!'".
	[The mentions-list is {yourself, backpack}.]
	The reply is "'We clean the theater between showings,' he says bullishly. 'So if you had left something in there, we would have found it. You must have left your stuff somewhere else.'".
	It quip-supplies the ticket-taker.
	It directly-follows  where my backpack seems.

Availability rule for demonstrate lost backpack:
	if the player does not enclose the backpack:
		it is off-limits.

demonstrate the lost backpack is a performative quip.
	The comment is "'Note this backpack,' we say. 'The one you claimed was not inside. I have it. It was under a seat. What do you have to say for yourself now?'".
	[The mentions-list is {backpack}.]
	The reply is "'Uh... the person who cleaned before me must've been a little bit careless,' he says. Right.".
	It quip-supplies the ticket-taker.
	It indirectly-follows argue about  lost plus found policy

Before discussing buy movie-ticket when the player encloses the ticket:
	say "Oh, doesn't that seem a waste? We have a nice fake ticket that we didn't have to spend any money on. Maybe money's like water to you....

Well, as you like, of course. You're the expert in covert whatever-it-is."

The hidden-ticket is carried by the ticket-taker. The printed name of the hidden-ticket is "ticket". Understand "ticket" or "[movie] ticket" or "ticket to [movie]" or "ticket to a/the [movie]" as hidden-ticket. [The hidden-ticket is scenery][Bad!][Having people carry scenery makes the compiler go crazy]

Sanity-check doing something to the hidden-ticket:
	unless buying hidden-ticket from the ticket-taker:
		say "[We] can't see any ticket here." instead.

Sanity-check giving the hidden-ticket to the ticket-taker:
	say "[We] don't have a ticket." instead.

Rule for deciding the concealed possessions of the ticket-taker:
	if looking:
		yes;
	otherwise:
		no.

Understand "movie/theater/cinema/film" as "[movie]".

Does the player mean buying the ticket-taker from:
	it is very unlikely.

Does the player mean buying the hidden-ticket from:
	it is very likely.

Does the player mean subject-asking the hidden-ticket:
	it is very likely.

Sanity-check buying the ticket from the player when location is cinema lobby:
	try discussing buy movie-ticket instead.

Sanity-check subject-asking the ticket when the current interlocutor is the ticket-taker:
	try discussing buy movie-ticket instead.

Sanity-check subject-asking the hidden-ticket when the current interlocutor is the ticket-taker:
	try discussing buy movie-ticket instead.

buy movie-ticket is a purchasing quip.
	The printed name is "buy a movie ticket".
	The true-name is "buy movie-ticket".
	[The mentions-list is { hidden-ticket }.]
	The comment is "'I'd like to buy a ticket to this movie,' we say.".
	The reply is "[You-are-past-customer]The ticket-taker shrugs. 'If you give me the money here, I don't actually have to give you a ticket,' he says.

I think about raising some discussion about why the theater bothers with a ticketing procedure at all, and whether this will ruin their accounting about the number of available seats. But you're right that that would probably make us more memorable than we want to be.

He accepts a bill, and that's that: we now have movie access[allowed-in-movie].".
	It quip-supplies the ticket-taker.
	It is repeatable.

Instead of the ticket-taker discussing buy movie-ticket when the player does not enclose the bills and the ticket-taker does not know allowed-in-movie:
	if the ticket-taker knows you-are-feckless:
		say "He is totally unshocked when, having named the price of admission, he hears that we happen not to be carrying that much cash. Or any at all, for that matter.";
	otherwise:
		say "[You-are-feckless]He names the price, which reminds me that we haven't got any money at the moment. Awkward.

There's probably a less above-board way of getting a ticket if we really want one, of course. Or we could go rescue your stash of money from storage. Your choice."

Instead of the ticket-taker discussing buy movie-ticket when the ticket-taker knows allowed-in-movie:
	if the ticket-taker knows you-are-feckless:
		say "He looks bored, but not surprised, by this request. 'We're past that part,' he reminds us.";
	otherwise:
		say "'You've already bought one, and I've already collected it,' the ticket-taker reminds us[you-are-feckless]."

Section 6 - The Secretary

The greeting of the secretary is "She turns her eyes towards us but doesn't say anything."
The generic positive of the secretary is "yes".
The generic negative of the secretary is "no".
The generic adversative of the secretary is "well".
The secondary apology of the secretary is "[one of]as it turns out[or]unfortunately[at random]".
The generic confrontational of the secretary is "citizen".

The secretary is alert. The secretary exhibits privateness and unhelpfulness.

pass-need is an NPC-directed quip.
	The reply is "'I'm sorry, those with passes only,' she says, before waving us out. She has a bored look: not one of the more zealous staff members."

whether we can hath the scope is a questioning quip.
	The printed name is "whether we can have the scope". The true-name is "whether we can hath the scope".
	Understand "have" as whether we can hath the scope.
	[The mentions-list is {Regulation Authentication Scope}.]
	The comment is "'You wouldn't be willing to part with that authentication scope, just for a moment?' we suggest, in a wheedling tone of voice[one of]. All right, even I can see that this isn't going to work[or][stopping].".
	The reply is "'It is official issue,' she snaps. [set distrustful]'Civilians aren't allowed to have these.'".
	It is background-information.
	It quip-supplies the secretary.

protest the unreasonable legislation prohibiting citizen access to linguistic power is a performative quip.
	[The mentions-list is {legislation}.]
	The comment is "'I protest!' we say. 'Control of the language should be in the hands of the people, not in the hands of the government. The power to produce and prohibit words means the power to ban new directions of scientific inquiry; to prevent the creation of private cants and jargons; to marginal[ize] groups and individuals through forms of expression that emphas[ize] their other-ness; it is an essential censorship of thought itself.'".
	The reply is "She looks bored. [set distrustful]'You people send me leaflets every three weeks,' she says. 'I use them in the fireplace.'".
	It quip-supplies the secretary.
	It directly-follows whether we can hath the scope

An availability rule for where to get a pass:
	if the secretary does not recollect pass-need, it is off-limits;
	if the scope is not enclosed by the secretary, it is off-limits;
	make no decision.

where to get a pass is a questioning quip.
	[The mentions-list is {pass}.]
	The comment is "[one of]'Where did you say we might get a pass to visit the rest of the building?' we ask, in my very most polite schoolboy voice.[or]'Where did you say the passes were given out?' we ask.[stopping]".
	The reply is "[one of][set distrustful]'Those with appropriately ranked academic research jobs are already in receipt of documentation,' she replies.[or]'I did not say,' she replies.[or]She ignores you.[stopping]".
	It quip-supplies the secretary.
	It is repeatable. Understand "where there seems" as where to get a pass.

An availability rule for where to get a pass:
	if player-is-allowed is true, it is off-limits;
	make no decision.

whether she enjoys her job is a questioning quip.
	[The mentions-list is {employment}.]
	The comment is "'This must be a good job,' we say[one of], in our best making-friendly-conversation way[or][stopping]. 'Getting to meet lots of new people. Access to all the bureau toys.'".
	The reply is "'They never let me try any of the good equipment,' she says, with surprising bitterness. 'When they brought in the T-inserter, they let Porson[--]' Then she stops, her expression that of a guppy being strangled. ".
	It quip-supplies the secretary.

[We don't want any quip suggestions in this scene]
A plausibility rule for a quip during Attempting Entry:
	it is implausible.

how she got this job is a questioning quip.
	[The mentions-list is {employment}.]
	The comment is "'How did you get this job?' we ask.".
	The reply is "'Through the usual process,' she says. 'I qualified through the regional spelling bee, then was submitted to a battery of examinations, followed by a three-year course of rigorous training.'".
	It quip-supplies the secretary.
	It indirectly-follows whether she enjoys her job.

who Porson seems is a questioning quip.
	The printed name is "who Porson is". The true-name is "who Porson seems".
	Understand "is" as who Porson seems.
	[The mentions-list is {Porson}.]
	The comment is "'Who is Porson?' we ask curiously.".
	The reply is "'[i]Porson[/i] works in the Historical Research Room,' she says. 'A job he got, I might add, through sheer nepotism. He's no more qualified than I am, but they say he has a [']job-related need['] to see all the new developments first.' ".
	It quip-supplies the secretary.
	It indirectly-follows whether she enjoys her job

what the T-inserter does is a questioning quip.
	[The mentions-list is {T-inserter}.]
	The comment is "'What does the T-inserter do?' we ask, as though we were a couple of yokels.".
	The reply is "She raises her eyebrows as though she cannot believe the phenomenal idiocy of this question. [set distrustful]No answer is vouchsafed.".
	It quip-supplies the secretary.
	It indirectly-follows whether she enjoys her job.

where the T-inserter seems kept is a questioning quip.
	The printed name is "where the T-inserter is kept". The true-name is "where the T-inserter seems kept".
	Understand "is" as where the T-inserter seems kept.
	[The mentions-list is {T-inserter}.]
	The comment is "'This T-inserter must be pretty delicate,' we say. I'm letting you talk, this time. I think I'm too direct. 'I'm surprised the Bureau keeps it in a public building.'".
	The reply is "She visibly struggles between two impulses: the feeling that she shouldn't be talking about such a secret piece of equipment at all, and the desire to convince us that it couldn't be easily found or stolen. Finally she compromises with '[when distrustful]Not all parts of the Bureau are equally available to visitors[at other times]There are rooms that are not available to visitors[end when].'".
	It quip-supplies the secretary.
	It indirectly-follows whether she enjoys her job.


Test secretary with "tutorial off / z / ask secretary about job / g/ a porson / a t-inserter does / a t-inserter" in antechamber.

Section 7 - The Desk Attendant


Rule for avoiding talking heads when the current interlocutor is the attendant:
	say "[one of]She toys unattractively with her nose ring.[or]She scratches a bug bite on her elbow.[or]She purses her lips thoughtfully.[or]She scratches her nose.[at random]".

The greeting of the attendant is "[one of]'Yeah, I see you,' she says.[or]'Gosh, you again.'[or]'Rehi.'[stopping]" .
The generic negative of the attendant is "[one of]no[or]really not[at random]".
The generic positive of the attendant is "[one of]yes[or]definitely[at random]".
The generic adversative of the attendant is "um".
The generic confrontational of the attendant is "[one of]I don't know how to say this nicely but[or]How can I say this that the management would approve of? Oh yeah I CAN'T. But here goes anyway, okay[at random]".

how to unlock the lockers is a questioning quip.
	[The mentions-list is {locker, lock}.]
	The comment is "'Hey, so, like,' we begin, twirling our hair in one finger. 'What if I, like, accidentally locked something in the locker upstairs and I don't know the number to get it open? It is, like, [i]so[/i] important that I get my stuff back.'".
	The reply is "Her expression of dreamy good will hardens into one of cool contempt. 'Lockers are the responsibility of the guests,' she says. 'You brought the lock, so you must know the combination.'".
	It quip-supplies the attendant.

Availability rule for how to unlock the lockers:
	if the clock is seen, it is off-limits;
	if the lock is not seen, it is off-limits;
	make no decision.

lock problem seems solved is an informative quip.
	The printed name is "lock problem is solved". The true-name is "lock problem seems solved".
	Understand "is" as lock problem seems solved.
	[The mentions-list is {lock}.]
	The comment is "'I, like, remembered the combination of my lock,' we say.".
	The reply is "'I'm overjoyed.' Deadpan."
	It indirectly-follows how to unlock the lockers.
	It quip-supplies the attendant.

Availability rule for lock problem seems solved:
	if the clock is seen, make no decision;
	it is off-limits.

whether public transport exists here is a questioning quip.
	[The mentions-list is {transportation}.]
	The comment is "'Can you tell me anything about public transportation in this town?' we ask hopefully. I can tell you: there isn't any. But it will be interesting to see what she says, I suppose.".
	The reply is "She smiles briefly. 'I'm sorry,' she says. 'There aren't any buses or subways here. The island is too small for that.'".
	It quip-supplies the attendant.
	It is background-information.

Availability rule for whether we can keep the guidebook:
	if the guidebook is marked invisible, it is off-limits;
	make no decision.

whether we can keep the guidebook is a questioning quip.
	[The mentions-list is {guidebook}.]
	The comment is "'Hey, does this guidebook belong to the hostel, or can I keep it?'".
	The reply is "'Sure, whatever,' she says. 'People take and leave stuff all the time. It's no big deal.'".
	It quip-supplies the attendant.

whether there seems an internet connection nearby is a questioning quip.
	The printed name is "whether there is an internet connection nearby". The true-name is "whether there seems an internet connection nearby".
	Understand "is" as whether there seems an internet connection nearby.
	[The mentions-list is {internet}.]
	The comment is "'Hey, so, do you have internet here?'".
	The reply is "'Sorry,' she says. 'Our connection is suspended by the Bureau. Someone tried to use the hostel account for unauthor[ize]d contact with a universal translator.'

Did they indeed? I wonder who that could have been, hm?".
	It quip-supplies the attendant.
	It is background-information.

whether there seem beds available is a questioning quip.
	The printed name is "whether there are beds available". The true-name is "whether there seem beds available".
	Understand "are" or "bed" or "space" or "room" as whether there seem beds available.  The comment is "'Are there free beds for the evening?'".
	The reply is "'Sure,' she says. 'You can go up and claim whichever free one you like. The hostel won't really fill up until this evening.'".
	It quip-supplies the attendant.
	It is background-information.

who would do this is a questioning quip.
	[The mentions-list is {internet}.]
	The comment is "'Really?' we ask brightly. I'm enjoying being a dumb girl more than I expected. 'Who would do something like that?'".
	The reply is "She looks cross. 'We don't know,' she says. 'There was a young woman who used the computer at about the right time period, but she didn't seem like the criminal type, to me. I'm pretty sure it must have been this other group, three guys that were staying here, but I can't figure out how.' [paragraph break]Hear that? You don't seem like the criminal type.".
	It quip-supplies the attendant.
	It directly-follows whether there seems an internet connection nearby.

what  other group was like is an unlisted questioning quip. The comment is "'Was there anything interesting about the other group? The three guys?' I'm starting to see how much you enjoy playing off your own cleverness. I just hope it doesn't get us caught.".
	[The mentions-list is {internet}.]
	The reply is "She shrugs. That sounds like a no, then.".
	It quip-supplies the attendant.
	It indirectly-follows who would do this.

what the young woman looked like is a questioning quip.
	Understand "she" or "her" as what the young woman looked like.
	[The mentions-list is {yourself}.]
	The comment is "'So, like, what was she like?' I venture a little giggle. I don't think it's quite a success.".
	The reply is "'What, the young woman?' [The attendant] shrugs. 'Kind of uptight.'".
	It quip-supplies the attendant.
	It directly-follows who would do this.

what happens if the guest does not remember is a questioning quip.
	[The mentions-list is {locker}.]
	The comment is "'[if immediately]Yeah, okay, but[otherwise]About the lockers again[end if],' we say. 'What happens when, like, someone forgets the combination? Does that ever happen? [']Cause it seems like you might need to get the locker open for the next guest, right? So, like, what do you do?'".
	The reply is "'Yes, it happens,' she says. Her spiky magenta hair is quivering. It was wrong to take the hippy-ish blouse as a sign of an easy-going temper. 'It happens [i]all the time[/i]. We have to get the All-Purpose in to fix them. It's expensive. I keep telling management we should have a different kind of lock-up system, but they won't hear it.'".
	It quip-supplies the attendant.
	It indirectly-follows how to unlock the lockers.

what the All-Purpose seems is a questioning quip.
	The printed name is "what the All-Purpose is". The true-name is "what the All-Purpose seems".
	Understand "is" as what the All-Purpose seems.
	[The mentions-list is {locker}.]
	The comment is "[if the previous quip is what happens if the guest does not remember]'All-Purpose? What's that?'[otherwise]'So what is the All-Purpose, anyway?'[end if] we ask. But surely you do know? The All-Purpose is a kind of blue-suited handy-man, a mechanic with a huge toolbox of letter tools. He can do just about anything. I would have thought[--] but she's answering.".
	The reply is "'You know, from the Bureau.' She reaches under the desk and pulls out a box, which she displays briefly to our gaze. Inside is an assortment of col[our]ed children's blocks. 'He does this with them,' she says matter-of-factly, as though B-insertion weren't a pretty serious challenge. Then she puts the box away again.".
	It quip-supplies the attendant.
	It indirectly-follows what happens if the guest does not remember.

how the All-Purpose makes blocks is a questioning quip.
	[The mentions-list is {locker}.]
	The comment is "'He puts on Bs? On the locks? How does that, like, work?' we ask, twirling our hair some more. (This is ridiculous! Have you no shame? Doesn't it embarrass you, playing up to stereotypes like this? No, I see your point. You're more of a pragmatist. I should have guessed.)".
	The reply is "'He has a machine he brings in, on wheels,' she says. 'It's the size of a dessert cart. At one end, there's a hose with a nozzle. The B comes out of there.' In spite of her mood, she obviously finds this an interesting topic. 'I asked him what happened if the B flew out and hit something it wasn't supposed to, and he showed me this restoration gel he had, to put things back to what they were originally.'".
	It quip-supplies the attendant.
	It directly-follows what the All-Purpose seems.

whether the gel resembles ours is a demonstration quip.
	[The mentions-list is {the restoration gel, the tub}.]
	The comment is "'Does the All-Purpose's gel look something like this?'"
	The reply is "She glances at the tub of restoration gel. 'Yeah,' she says. 'A lot like that. Hey, how did you get that, anyway?'

We just smile and shrug pleasantly."
	It quip-supplies the attendant.
	It indirectly-follows how the All-Purpose makes blocks.

why they do not use a locksmith is a questioning quip.
	[The mentions-list is {locker}.]
	The comment is "'It seems as though a locksmith would be cheaper and less trouble than getting an All-Purpose Officer,' we point out.".
	The reply is "'You might think.'".
	It quip-supplies the attendant.
	It indirectly-follows what the All-Purpose seems.

what we should do about the lock is a questioning quip.
	[The mentions-list is {locker}.]
	The comment is "'So, uh, like. What do you think I should do about this locker I can't unlock?'".
	The reply is "'Remember the combination,' she says tartly. Right, then.".
	It quip-supplies the attendant.
	It indirectly-follows what happens if the guest does not remember.

Availability rule for what we should do about the lock:
	if the attendant recollects lock problem seems solved, it is off-limits;
	make no decision.

what the fair seems for is a questioning quip.
	The printed name is "what the fair is for". The true-name is "what the fair seems for".
	Understand "is" as what the fair seems for.
	[The mentions-list is {celebration}.]
	The comment is "'So what's up with, like, the big party outside?' we ask. 'It looks like something is going on out there.'".
	The reply is "'Serial Comma Day,' she says, in a bored voice. 'It's totally a made-up holiday, like Sweetest Day or World Secretary Day or whatever. But they sell greeting cards.'[queue could-be-semicolon as postponed optional]".
	It quip-supplies the attendant.
	It is background-information.

correct this misapprehension is a performative quip.
	[The mentions-list is {celebration}.]
	The comment is "'Actually,' we say, 'Serial Comma Day commemorates a very real and significant shift in the punctuation standard here.'".
	The reply is "She gives us a very strange look. [set distrustful]'I thought you weren't from around here.'".
	It quip-supplies the attendant.
	It directly-follows what the fair seems for

could-be-semicolon is an NPC-directed quip.
	The reply is "'I'd have gone with semicolon day,' she muses. 'It's way better than a comma. You get an extra dot on top. It's like two punctuation marks for the price of one. But it's not all prissy and fussy like a colon.'

She's missing the point entirely, of course: Serial Comma Day celebrates the adoption of a whole series of standards changes intended to reduce ambiguity in written language and increase the precision of linguistic change methods. It marked a significant shift in policy[--]

Oh, all right, I'll stop. But you should hear Professor Waterstone on this topic."

what she recommends seeing in  city is a questioning quip. The comment is "'So, is there stuff I really should see around here? The best of the city, or something?'".
	[The mentions-list is {entertainment}.]
	The reply is "'I'm not, like, a concierge,' she says. 'If you came to town you must have had a reason, right? Plus you can maybe pick up a map somewhere around here[if the guidebook is not enclosed by the player], or we usually have a guidebook or two lying around that someone left[end if].'".
	It quip-supplies the attendant.
	It is background-information.

whether the attendant enjoys her job is a questioning quip. The comment is "'Do you like this job?'".
	Understand "she" as whether the attendant enjoys her job.
	[The mentions-list is {employment, attendant}.]
	The reply is "She looks taken aback. 'It's a living,' she says. 'I mean, sort of. And the management doesn't really listen to what I tell them. And sometimes people are really loud. Or jerky. But my parents really really realllly wanted me to stay in school so I kind of stopped wanting to, if that makes sense. I don't know, maybe I'll go back later.'".
	It quip-supplies the attendant.
	It is background-information.

Rule for quip-introducing sympathize on the topic of parents:
	say "You apparently have a strong urge to sympath[ize] on the topic of parents. I don't.[line break]"

sympathize on the topic of parents is a performative quip.
	Understand "sympathise" as sympathize on the topic of parents.
	The comment is "'Parents can be that way,' you say, with sudden vehemence. 'They work on you like you're a project, like they're raising a show dog or something. It took me a long time to figure out that while I was with my parents I wasn't ever going to even know what [i]I[/i] wanted, who I wanted to be. So you got away from that, good for you.'

And good for her skipping her education when it would have been paid for, and going into an unfulfilling job that doesn't earn enough to live on, right? Seems a little askew to me, but hey.".
	[The mentions-list is {family}.]
	The reply is "'I don't think my parents were [i]that[/i] bad,' she says, with a taken-aback little laugh.".
	It quip-supplies the attendant.
	It directly-follows a whether the attendant enjoys her job.


compliment the nose ring is a performative quip. The comment is "'I like your nose ring,' we say. It looks kind of piratical.".
	[The mentions-list is {nose-ring}.]
	The reply is "'Thanks.' She gives it a little pat. 'I'm thinking of getting a sternum piercing next.'".
	It quip-supplies the attendant.
	It is background-information.



Section 8 - Backpacking Girl

[The backpacking girl is your basic standard NPC impediment -- much more so than just about any of the NPCs who come after, though both Waterstone and Higgate are fetch-quest NPCs after a fashion.

From a narrative point of view, the backpacking girl is present to establish early on

-- that some people do come to Atlantis as tourists; it's not completely sheltered; on the other hand, their expectations are not the same as those of people used to the island long-term

-- to establish a line in the level of social inappropriateness our protagonist is allowed to show. Violence, no; doing things that may shock, surprise, or distress other characters is, however, allowed within reason. (The backpacking girl doesn't really take any harm from the experience.)

-- to bond Alex and Andra as people who are both, in their own ways, significantly more knowing than she is

The Vatican snowglobe is a real souvenir that some fellow hostel-dwellers in Rome produced with great delight. ]

Rule for avoiding talking heads when the current interlocutor is backpacking girl:
	if the current interlocutor is ready for transition:
		if the current quip is strongly-phrased and a random chance of 1 in 2 succeeds:
			say "[beat][paragraph break]";
	otherwise:
		say "[beat] [run paragraph on]".

Rule for beat-producing when the current interlocutor is the backpacking girl:
	if the backpacking girl carries the heavy pack:
		say run paragraph on;
		try the backpacking girl trying dropping the heavy pack;
	otherwise if the backpacking girl is in the location:
		let P be a random free bed in the dormitory room;
		say run paragraph on;
		try the backpacking girl trying entering P;
	otherwise:
		if a random chance of 1 in 3 succeeds:
			say run paragraph on;
			try the backpacking girl trying examining the player;
		otherwise:
			say "[one of]She tosses restlessly[or]She turns over[or]She bangs her head against the space where a pillow ought to be[or]She scrubs at her eyes with one hand[at random]. ".


Report the backpacking girl trying dropping the heavy pack:
	say "With a grunt, she shrugs off her pack and puts it on the ground near one of the beds.[run paragraph on]" instead.

Report the backpacking girl trying entering a bed:
	say "She eyes the beds thoughtfully, punches each of the mattresses in turn, and then climbs into the one she's selected.[run paragraph on]" instead.

Report the backpacking girl trying examining yourself:
	say "She watches us with interest.[run paragraph on]" instead.

Report the backpacking girl trying examining a thing:
	say "She checks out [the noun].[run paragraph on]" instead.

Report the backpacking girl trying getting off a bed:
		say "The bed creaks as she rolls off it in unseemly haste. She doesn't meet our eye, but mutters something about needing to go buy something right away." instead.

[Report the backpacking girl trying going to a room (called destiny) when the actor is avoiding:
	record "getting the dorm room to ourselves" as achieved;
	say "A moment later she is gone." instead. ]

Report the backpacking girl trying saying hello to the player:
	say "[one of]'Hey,' says the girl. [run paragraph on][or]The girl takes our reappearance in stride.[stopping]" instead.

Definition: a bed is free if it does not support a person.

The greeting of backpacking girl is "'Greetings, fellow traveler!'"

whether she seems really from canada is a questioning quip.
	The printed name is "whether she is really from Canada". The true-name is "whether she seems really from canada".
	Understand "is" or "canadian" as whether she seems really from canada.  The comment is "'So,' we say, nodding at the pack. 'Are you really Canadian?'".
	[The mentions-list is {heavy pack}.]
	The reply is "'Uh, no. I come from Ohio[fake-canada]. But don't tell anyone that. My mom thought this would be safer in case of terrorists. She's also worried about serial killers but there's not much I can do about that.'".
	It quip-supplies the backpacking girl.
	It assumes canada-girl.

An availability rule for whether she seems really from canada:
	if we have examined the heavy pack:
		make no decision;
	otherwise:
		it is off-limits.

fear-of-killers is an NPC-directed quip.
	The reply is "'Do you think this place is safe?' she asks conspiratorially.

I must look blank, because she goes on, 'I saw this documentary once, right, about a serial killer who went from youth hostel to youth hostel, [i]grooming[/i] girls and [i]killing them[/i]. And then he'd chop up the bodies and put the [i]body parts[/i] into the lockers. And no one would find out until he'd gone away again.'

Nothing like that has happened around here, but she seems to get a charge out of scaring herself with this story."
	It quip-supplies the backpacking girl.

wish-i-hadnt is an NPC-directed quip.
	The reply is "'Wish I hadn't remembered that serial killer thing,' the girl remarks, half to herself. 'Now it's going to keep me up later. Picturing someone with a saw hacking me up.'"
	It quip-supplies the backpacking girl.

so-jet-lagged is an NPC-directed quip.
	The reply is "'Oh my gosh, I am SO jetlagged. I feel like I'm just going to fall over, you know?'"
	It quip-supplies the backpacking girl.

sympathize about jetlag is a performative quip.
	The comment is "'I know how that is,' you say. Which is interesting: apparently you do know. I don't, never having left this island.". Understand "sympathise" as sympathize about jetlag.
	[The mentions-list is {transportation}.]
	The reply is "She frowns curiously at us. 'I don't get your accent, actually. Where are you from?'".
	It quip-supplies the backpacking girl.
	It directly-follows so-jet-lagged.

be honest about our origins is a weakly-phrased unlisted performative quip.
	The comment is "'[if the backpacking girl recollects lie about our origins]Actually the truth is [end if]I spent some of my life around here and some of it traveling around the Mediterranean, living on a yacht and conducting acts of international espionage. That's when I wasn't working on a university degree in language studies.'".
	Understand "be truthful" or "truth" as be honest about our origins.
	[The mentions-list is {yourself, truth-subject}.]
	The reply is "[if the backpacking girl recollects lie about our origins]'There's nothing wrong with coming from California,' she says. 'You don't have to make something up.'[otherwise]'...Right,' she says. 'I'm guessing world-traveling professor-spies don't stay in youth hostels.'[end if]".
	It quip-supplies the backpacking girl.
	It indirectly-follows sympathize about jetlag.

truth-subject is a subject. Understand "truth" as truth-subject. The printed name of truth-subject is "truth".

Instead of subject-asking truth-subject when be honest about our origins is not available:
 say "[one of]We'd better not[or]That wouldn't be such a good idea[or]I'd prefer not to[at random]."

lie about our origins is a weakly-phrased performative quip.
	The comment is "'[if the backpacking girl recollects be honest about our origins]Actually the truth is [end if]I grew up in California,' you say. 'In... sort of a suburb of Los Angeles, though pretty far out. Fontana, if you've heard of that.'".
	Understand "lieabout" as lie about our origins.
	[The mentions-list is {yourself}.]
	The reply is "'Nah,' she says, without interest. 'But that's cool.'".
	It quip-supplies the backpacking girl.
	It indirectly-follows sympathize about jetlag.

when-get-here is an NPC-directed quip.
	The reply is "'So when did you get to Anglophone Atlantis, anyway? How long have you been here?'"
	It quip-supplies the backpacking girl.

lie about visiting is a performative quip.
	The comment is "'Just a few days. I wanted a little time to see the place, before it got all crazy for Serial Comma Day,' you lie smoothly.".
	Understand "lieabout" as lie about visiting.
	[The mentions-list is {celebration, yourself}.]
	The reply is "'Oh, yeah, that was smart,' she says. 'I am really not ready for this at all.'".
	It quip-supplies the backpacking girl.
	It directly-follows when-get-here.

[because otherwise we get interference with the LIE ON THING command from Postures:]
A command-string altering rule when the current interlocutor is the backpacking girl (this is the replace lie with lieabout rule):
	if the player's command matches "lie":
		if lie about our origins is available or lie about visiting is available:
			now player-command-substitute is "lieabout";
	otherwise if the player's command includes "lie about":
		now player-command-substitute is "lieabout".

what-think-so-far is an NPC-directed quip.
	The reply is "'Do you like this place so far?'"
	It quip-supplies the backpacking girl.

Instead of saying no or frowning when the current quip is what-think-so-far:
	try discussing disapprove of Atlantis.

Instead of saying yes or smiling when the current quip is what-think-so-far:
	say "We respond with a friendly smile. [run paragraph on]";
	try discussing approve of Atlantis.

Instead of shrugging when the current quip is what-think-so-far:
	say "We shrug. [run paragraph on]";
	try discussing equivocate about Atlantis.

equivocate about Atlantis is an unlisted performative quip.
	The comment is "'I've seen better and I've seen worse.' Which is a lie, at least on my part: I've seen nothing but Atlantis my whole life.".
	[The mentions-list is {yourself}.]
	The reply is "'Makes sense.'".
	It quip-supplies the backpacking girl.
	It directly-follows what-think-so-far.

disapprove of Atlantis is an unlisted performative quip.
	The comment is "'There are a lot of things to say about the government,' we reply cautiously.".
	[The mentions-list is {yourself}.]
	The reply is "'Like what?'

'It's better not to say them out loud.'

'If you can't say something nice, it's better not to say anything at all,' the girl responds. 'I hate gossip especially when people won't give hard details. That's how this girl Stacy at my school got totally ostracized for supposedly doing something slutty only no one knew what it was.'".
	It quip-supplies the backpacking girl.
	It directly-follows what-think-so-far.

approve of Atlantis is a performative quip.
	The comment is "'Sure,' you say. 'It's pretty, it's clean, there's lots of interesting stuff around.' I can see why your career isn't with a tourist board.".
	[The mentions-list is {yourself}.]
	The reply is "'I guess.'".
	It quip-supplies the backpacking girl.
	It directly-follows what-think-so-far.

grr-no-showers is an NPC-directed quip.
	The reply is "'I can't believe this room doesn't have its own bathroom and showers. I mean, gross.'"
	It quip-supplies the backpacking girl.

Instead of saying yes or smiling when the current interlocutor is the backpacking girl and agree about showers is available:
	try discussing agree about showers.

agree about showers is a performative quip.
	The comment is "'I'm more used to having my own bathroom,' we agree. Which I guess is true for me; your memories appear to be a little more diverse.".
	[The mentions-list is {yourself}.]
	The reply is "'I know, right?'".
	It quip-supplies the backpacking girl.
	It directly-follows grr-no-showers.

Instead of saying no or frowning or scoffing when the current interlocutor is the backpacking girl and disagree about showers is available:
	try discussing disagree about showers.

disagree about showers is an unlisted performative quip. The comment is "'Practically third-world,' you say sarcastically.".
	[The mentions-list is {yourself}.]
	The reply is "'I know, right?'".
	It quip-supplies the backpacking girl.
	It directly-follows grr-no-showers.

have-you-checked is an NPC-directed quip.
	The reply is "'Have you tried talking to the desk girl downstairs? I mean for more than two seconds? She is a total witch that starts with B, know what I mean? Like, she looked at me like I was completely an idiot, right, and, like, what does she expect? Of course I don't know my way around, I just got here.'"
	It quip-supplies the backpacking girl.


Availability rule for mention the louse incident:
	if the location of the attendant is the Hostel:
		it is off-limits.

mention the louse incident is a performative quip.
	The comment is "'I'm afraid I made [if immediately]her[otherwise]the attendant[end if] go away,' we confess. 'I turned her blouse into something else.'".
	[The mentions-list is {louse, attendant}.]
	The reply is "She blinks, startled, and you have the impression that you've frightened her a little. 'Oh... right. My mother warned me to be careful.'".
	It quip-supplies the backpacking girl.
	It indirectly-follows have-you-checked

Instead of saying yes when the current interlocutor is the backpacking girl and agree about the attendant is available:
	try discussing agree about the attendant.

agree about the attendant is a performative quip.
	The comment is "'I've seen more impressive customer service,' you say.".
	[The mentions-list is {attendant}.]
	The reply is "'You'd think they'd be a little nicer if they want repeat customers,' she grumps. I decide not to point out that the hostel is by far the cheapest lodging place on the island, is probably run on subsidies to make it possible for foreign students to visit at all, and never suffers from any lack of custom.".
	It quip-supplies the backpacking girl.
	It directly-follows have-you-checked.


Instead of saying no when the current interlocutor is the backpacking girl and disagree about the attendant is available:
	try discussing disagree about the attendant.

Instead of frowning when the current interlocutor is the backpacking girl and disagree about the attendant is available:
	say "We frown. [run paragraph on]";
	try discussing disagree about the attendant.

disagree about the attendant is an unlisted performative quip.
	The comment is "'She's probably paid about five dollars an hour to greet visitors and scrub toilets while everyone else has a holiday,' we say. 'This place is heavily subsidized to run at all. Having to work here is a form of punitive community service.'".
	[The mentions-list is {attendant}.]
	The reply is "'Well, okay. But she must have done something to get assigned community service, then.'

'Exceeded her allowance of accidental misspellings, I imagine,' I say.

The girl starts to laugh, then trails off when she realizes this is not a joke.".
	It quip-supplies the backpacking girl.
	It directly-follows have-you-checked.


souvenir-buying is an NPC-directed quip.
	The reply is "'I hope this place has good souvenirs. I got this great snowglobe at the Vatican, right, that has the Pope inside saying, like, a blessing.'"
	It quip-supplies the backpacking girl.

Instead of laughing when the current interlocutor is the backpacking girl and the current quip is souvenir-buying:
	say "We snicker. [run paragraph on]";
	try discussing mock the snowglobe.

Instead of smiling when the current interlocutor is the backpacking girl and the current quip is souvenir-buying:
	say "We go for a friendly, non-fake smile. [run paragraph on]";
	try discussing admire the snowglobe.

mock the snowglobe is an unlisted performative quip.
	Understand "make fun" or "make fun of" or "laugh at" or "diss" or "denigrate" or "insult" as mock the snowglobe.
	The comment is "'[if immediately]That's pretty special[otherwise]Your snowglobe must be a collector's item[end if],' we say. 'It only snows at the Vatican once every couple of decades.'".
	The reply is "'Oh yeah! Cool.'

'Not like those Norwegian snowglobes,' you add. 'Those are a dime a dozen.' Pushing your luck a little, perhaps. She gives us a faintly puzzled look but doesn't say anything."
	It quip-supplies the backpacking girl.
	It indirectly-follows souvenir-buying.

admire the snowglobe is a performative quip.
	The comment is "'[if immediately]I bet your friends back home are going to love that[otherwise]I'm sure your snowglobe will be a big hit with your friends back home[end if].'".
	The reply is "'Yeah,' she says. 'Though I have to keep my souvenir buying light because there isn't that much room in my pack.'"
	It quip-supplies the backpacking girl.
	It indirectly-follows souvenir-buying.

An availability rule for recommend the gift shop:
	if the Gift Shop is unvisited:
		it is off-limits;
	make no decision.

recommend the cathedral gift shop is a performative quip.
	The comment is "'[if immediately]Oh, yeah, actually, there's a great shop attached to the New Church. It's just across the square. You should go there; they've got lots of stuff like your snowglobe[otherwise]If you do want to do some shopping, there's the New Church across the square. It's got a bunch of gifts like your snowglobe[end if].'".
	The reply is "'Sweet! I'll check it out when I'm more rested. Thanks!'

Oh well. It was worth a try."
	It quip-supplies the backpacking girl.
	It indirectly-follows souvenir-buying.


A first conversation-reply rule when the current interlocutor is the backpacking girl:
	let N be a random NPC-directed quip which quip-supplies the backpacking girl;
	if the backpacking girl does not recollect fear-of-killers:
		queue fear-of-killers as postponed obligatory;
	otherwise if the backpacking girl does not recollect N:
		queue N as postponed obligatory.

Instead of waiting when the current interlocutor is the backpacking girl:
	say "[beat][paragraph break]".

privacy-subject is a subject. Understand "privacy" as privacy-subject. The printed name of privacy-subject is "privacy".

ask for privacy is a repeatable performative quip.
	The comment is "[one of]'Would you mind giving me a minute?' we say. 'Sorry, I could just use a little privacy.'[or]'I'd really like to be alone for a couple of minutes now,' we say.[or]'This will just take a moment, but you would you mind giving me the room to myself?' we say.[at random]".
	[The mentions-list is {yourself, privacy-subject}.]
	The reply is "[one of]She waves a hand generously. 'Don't worry about it, do whatever you've got to do, I don't care,' she says. 'I'm so tired I couldn't move a muscle, but I've seen everything. I have three brothers and two sisters and I'm in women's rugby so I'm pretty hard to shock.'[or]She just grunts and waves to indicate we may strip naked at our leisure.[or]'Dude,' she says, exasperated. 'If you wanted a private room you should've not stayed at a freaking hostel.'[or]She moans.[stopping]".
	It quip-supplies the backpacking girl.

Carry out discussing ask for privacy:
	now ask for privacy is unlisted.

whether she had trouble alongside customs is a questioning quip.
	The printed name is "whether she had trouble with customs". The true-name is "whether she had trouble alongside customs".
	Understand "with" as whether she had trouble alongside customs.  The comment is "'How was coming through Customs?' we ask. 'Any trouble there?'".
	[The mentions-list is {immigration}.]
	The reply is "'Not really. There were a few people in line, and they made me take all my stuff out of my backpack... and this one guy I saw them take away into a back room, and I don't think he ever came out again. But, uh, they were nice enough to me I guess. I was expecting worse.'".
	It quip-supplies the backpacking girl.
It is background-information.

Test backpacking with "tutorial off / look / z / z / z / z / z / show arm to girl" in the Dormitory holding the arm.


Section 9 - Gift Shop Volunteer

The greeting of the gift shop volunteer is "'Good [rough daytime],' he says."
The generic positive of the gift shop volunteer is "yes".
The generic negative of the gift shop volunteer is "no".
The generic adversative of the gift shop volunteer is "[one of]alas[or]sadly[at random]".
The secondary apology of the gift shop volunteer is "[one of]sorry[or]I'm afraid[at random]".
The generic confrontational of the gift shop volunteer is "miss".

This is the gift shop volunteer doesn't know rule:
	let N be "[one of][generic adversative of the gift shop volunteer][or][secondary apology of the gift shop volunteer][at random]";
	now N is N in sentence case;
	say "[We] frame up a vague question about [the noun].

[beat] '[N], don't think I can help you there.'[paragraph break][conditional paragraph break]"

The gift shop volunteer knows you-are-possible-customer.

A first conversation-reply rule when the current interlocutor is the gift shop volunteer and the gift shop volunteer recollects at least one quip:
	if the ostensible motive is you-are-dangerous:
		if the current interlocutor does not recollect you-should-leave:
			queue you-should-leave as postponed optional;
	if the ostensible motive is you-are-possible-customer:
		if the current interlocutor does not recollect offer-souvenirs:
			queue offer-souvenirs as postponed optional.

broke-it-buy-it is an NPC-directed quip.
	The reply is "'You broke it, you buy it,' says the volunteer. 'Though the tomes were free. But please at least take your mess away with you when you leave.'"

Rule for beat-producing when the current interlocutor is the gift shop volunteer:
	say "[one of]He looks at us keenly[or]He drums a little pattern on the surface of the counter[or]He absently straightens the arrangement of the postcards in the display[or]He polishes a smudge off one of the souvenir shot glasses[or]He nods to another customer who is just leaving before turning his attention back to us[or]He rearranges the objects on sale[as decreasingly likely outcomes].[run paragraph on]".

To say rough daytime:
	if the current daytime is:
		-- noon:
			say "[one of]morning [--] or afternoon, I suppose it might be afternoon by now[or]afternoon[stopping]";
		-- sunset:
			say "evening";
		-- evening:
			say "evening";
		-- otherwise:
			say "afternoon";

what seems worth seeing in the New Church is a questioning quip.
	The printed name is "what is worth seeing in the New Church". The true-name is "what seems worth seeing in the New Church".
	Understand "is" as what seems worth seeing in the New Church.
	The comment is "'So tell me, what should I be looking for in the New Church?' we ask.".
	The reply is "'Other than God?' he asks dryly.".
	It quip-supplies the gift shop volunteer.

whether he believes in God is a questioning quip.
	[The mentions-list is {religion}.]
	The comment is "'Are you a believer?' we ask[you-are-dangerous].".
	The reply is "'Some of the time. The rest of the time I just wish I were.' He flattens his hands on the surface of the counter. They are veiny, with coarse thick nails. Some reflection about the end of life, or the perspective of old age, seems inevitable. But he says: 'You choose to believe or not. There's no such thing as absolute proof. So then the question is, do you want to believe in God? And, if so, what kind of God do you want to believe in? You go from there[casually queue curate-backstory].'".
	It quip-supplies the gift shop volunteer.
	It is background-information.
Understand "man" or "volunteer" or "gift" or "shop" as whether he believes in God.

what sort of God he believes in is a questioning quip.
	[The mentions-list is {religion}.]
	The comment is "'What sort of God do you believe in[if immediately], then[end if]?' we ask. This isn't exactly how I expected this conversation to go, but no doubt you have some reason of your own for chatting with random strangers about their deeply held beliefs while we are supposed to be [i]fleeing the country[/i].".
	The reply is "'Today?' He shrugs his cardigan-clad shoulders. 'I figure he's a good enough type but he's a little tired of humans. Who wouldn't be? It might be that he's working on a new project and he's gotten distracted from us[casually queue curate-backstory].'".
	It quip-supplies the gift shop volunteer.
	It indirectly-follows whether he believes in God.

Rule for quip-introducing whether there seem points of architectural interest:
	say "Hm [--] the volunteers aren't very well trained, are they? I was expecting something about the points of architectural interest."; list no other quips.

whether there seem points of architectural interest is a weakly-phrased questioning quip.
	The printed name is "whether there are points of architectural interest". The true-name is "whether there seem points of architectural interest".
	Understand "are" as whether there seem points of architectural interest.
	The comment is "'Are there, er, points of architectural interest about the Church?' we persist.".
	The reply is "'Not that I know of.'".
	It quip-supplies the gift shop volunteer.
	It directly-follows what seems worth seeing in the New Church.

offer-souvenirs is an NPC-directed beat-opened quip.
	The reply is "His voice quavers. 'Could I interest you in the purchase of a souvenir tea towel? Or a shot glass? Or perhaps a paper model of the church.'"
	The nag is "[one of]'All purchases go towards the fund to rebuild the church roof,' he reveals enticingly.[or]'Money spent in the New Church shop is non-taxable,' he adds.[or]'It's in a good cause. This is a historical monument.'[or]The moral pressure from the old man has not abated.[stopping]".
	It is restrictive.

Instead of frowning or saying no when the current interlocutor is the gift shop volunteer and decline to buy trashy souvenirs is available:
	try discussing decline to buy trashy souvenirs.

Instead of saying yes when the current interlocutor is the gift shop volunteer and decline to buy trashy souvenirs is available:
	if the player encloses the roll of bills:
		say "I hate to interfere in this act of charity, but we need our cash for other purposes.";
	otherwise:
		say "We're flat broke."

Instead of laughing or scoffing when the current interlocutor is the gift shop volunteer and mock the trashy souvenirs is available:
	try discussing mock the trashy souvenirs.

mock the trashy souvenirs is an unlisted performative quip.
	The comment is "We snort. 'There's nothing here I would buy if my money were on fire.'".
	The reply is "'Not even a lovely illustrated retelling of the story of Ananias and Sapphira?' suggests the volunteer. 'So inspiring for any young children in your life.' I've no idea what he's talking about, but you recall them as a couple who lied about their donations to the early church and were punished with death.

'The divine enforcement policy isn't what it used to be,' you say[casually queue curate-backstory].".
	It quip-supplies the gift shop volunteer.
	It directly-follows offer-souvenirs.

decline to buy trashy souvenirs is a performative quip.
	The comment is "'Thank you, but no,' we say firmly.".
	The reply is "He gives a resigned, what-can-you-do? shrug.".
	It quip-supplies the gift shop volunteer.
	It directly-follows offer-souvenirs.

curate-backstory is an NPC-directed quip.
	The reply is "'I used to be a curate,' says the volunteer reminiscently. 'Had myself smuggled into the country disguised as a crate, and that all but killed me. But I was determined to be a missionary and bring the population of Atlantis back into the fold. And now look. It's come to this.'".
	It quip-supplies the gift shop volunteer.

why gift shop volunteer seems here is a questioning quip.
	The printed name is "why he is here". The true-name is "why gift shop volunteer seems here".
	Understand "is" or "he" as why gift shop volunteer seems here.
	[The mentions-list is {volunteer, employment}.]
	The comment is "'If you aren't interested in this place, why do you volunteer here?' we ask[you-are-dangerous].".
	The reply is "His left eyelid twitches. 'The Rosehip woman,' he says, after a moment. 'She's a looker.' [paragraph break]I'm not sure what's more disturbing: someone expressing attraction to my mother; that person being a good thirty years her senior; or the use of the phrase 'she's a looker', which even this old character probably got from a movie.".
	It quip-supplies the gift shop volunteer.
	It indirectly-follows what seems worth seeing in the New Church.

my mother is a woman.

remind the gift shop volunteer that Mrs Rosehip seems married is a performative quip.
	The printed name is "remind the gift shop volunteer that [Mrs] Rosehip is married". The true-name is "remind the gift shop volunteer that Mrs Rosehip seems married".
	Understand "is" or "dad" or "father" or "my father" or "my dad" or "your father" or "your dad" or "remind him" as remind  gift shop volunteer that Mrs Rosehip seems married.
	[The mentions-list is {my mother}.]
	The comment is "'My mother[--]' we begin, before you catch me.

Sorry about that!

'[--] always tells me it is unwise to chase after married women,' we finish lamely. ".
	The reply is "He shakes with laughter. 'Bless you,' he says. 'I'm not [i]chasing after[/i] anyone! At my age, you just like a bit of good scenery. You're not hard on the eyes yourself, you know.'".
	It quip-supplies the gift shop volunteer.
	It directly-follows why gift shop volunteer seems here.

what new project that might be is a weakly-phrased questioning quip.
	The comment is "'What kind of new project?'".
	[The mentions-list is {religion}.]
	The reply is "'If I knew, I'd be the almighty, wouldn't I?'".
	It quip-supplies the gift shop volunteer.
	It directly-follows what sort of God he believes in.

whether he approves of government is a questioning quip.
	The comment is "'Do you approve of the present government of the island[you-are-dangerous]?'".
	[The mentions-list is {bureau, legislation, gift shop volunteer}.]
	The reply is "His eyes narrow sharply. 'That's not a question we get asked a lot around here,' he comments. 'It's a little like being asked whether you approve of the plumbing in your house, or the brake lines on your car. If it ever broke, you'd know, but the rest of the time you just don't give it much consideration. Underappreciated folks, our orthographers, but they work hard and they make things run smoothly, and barring the odd popular referendum we don't have to waste nearly as much time on arguing politics as folks in most countries.'".
	It quip-supplies the gift shop volunteer.
	It is background-information.

why he isn't at the celebration is a questioning quip.
	The comment is "'I'm surprised you're in here and not outside enjoying the festivities,' we comment.".
	[The mentions-list is {celebration, gift shop volunteer}.]
	The reply is "'The prizes and the candy are for kiddies,' he says. 'The part I like best's what comes later. The fireworks. They're always first rate.'".
	It quip-supplies the gift shop volunteer.
	It is background-information.

how to see the fireworks is a questioning quip.
	The comment is "'[if immediately]Really? I wouldn't want to miss that. [end if]How do we see the fireworks display?'".
	[The mentions-list is {celebration}.]
	The reply is "'It's after dark,' he says, 'naturally. But you'll be able to see it from anywhere around, not to worry. They fire the blasts off over the water but you can see them from miles off.'".
	It quip-supplies the gift shop volunteer.
	It indirectly-follows why he isn't at the celebration

you-should-leave is a beat-opened NPC-directed quip.
	The reply is "He looks at us thoughtfully and I almost have the feeling he knows something I don't want him to know. 'You should keep moving. Don't waste time,' he says."

mess-complaint is an NPC-directed quip.
	The reply is "'I hope you're planning to clean that up,' he comments."

Test shop-volunteer with "tutorial off / s / a worth seeing / a god / g / ask why he is here / a rosehip / z / wave m-remover at tomes" in the New Church.


Section 10 - The Barker

The greeting of the barker is "'Why hello!'"
The generic confrontational of the barker is "lady".

Instead of the barker discussing a location-questioning quip:
	say "[one of]'Get directions from someone else,' the barker hisses. 'You're interrupting the show.'[or]This time he just ignores us.[stopping]".

Availability rule for what the restoration gel seems worth:
	if the tube is not seen:
		it is off-limits.

what the restoration gel seems worth is a questioning quip.
	The printed name is "what the gel is worth". The true-name is "what the gel seems worth".
	Understand "is" as what the gel seems worth.
	[The mentions-list is {tube}.]
	The comment is "'Is the gel very valuable?' we ask. 'Is it new, and in good condition? Is the entire tube present?'".
	The reply is "'Yes, of course, and absolutely,' he says, making a gesture as though to show us the gel, but actually not letting us catch more than the label.".
	It quip-supplies the barker.

whether the game seems rigged is a questioning quip.
	The printed name is "whether the game is rigged". The true-name is "whether the game seems rigged".
	Understand "is" as whether the game seems rigged.
	[The mentions-list is {word-balance}.]
	The comment is "'I know this kind of game,' we say, in our most jaded voice. 'The scale is probably nailed in place so that it [i]can't[/i] tip.' One or two of the crowd standing nearby seem impressed by this line of argument. A small boy whispers to his sister to ask whether that could be true.".
	The reply is "'Nonsense,' says the barker angrily. To demonstrate the point, he pushes down on the left pan, and the scales tip and sway. He soon restores them to balance, though. [paragraph break]'And don't think that will count for you,' he adds. 'You have to put them out of balance yourself. No surrogates, substitutes, or alternatives allowed.'".
	It quip-supplies the barker.

whether anyone ever wins is a questioning quip.
	[The mentions-list is {word-balance}.]
	The comment is "'Does anyone ever win?' we ask.".
	The reply is "'No one has won today,' he says, which is not an answer.".
	It quip-supplies the barker.
	It directly-follows barker-advertisement.
	Understand "does" and "win" as whether anyone ever wins.

compliment the blue suit is a performative quip.
	[The mentions-list is {suit, fashion}.]
	The comment is "'I really admire your suit,' we say. I feel like a fool with that nonsense coming out of my mouth, but I guess you know what you're doing, because the barker smiles.".
	The reply is "'Why, thank you, little lady,' he says, apparently warming to us. ".
	It is background-information.
	It quip-supplies the barker.

Rule for avoiding talking heads when the current interlocutor is the barker:
	say "[one of]The crowd mills around, jostling us.[or]The sun gleams off the shiny balance pans.[or]Somewhere in the vicinity a balloon pops loudly.[or]The bell of the hammering contest clangs.[at random]".


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
	[The mentions-list is {environment}.]
	The comment is "'I'm sorry, I'm in a hurry,' we say. ".
	The reply is "Evidently she has a greater than usual flair for drama, because she refuses to be brushed off that easily. 'You're in a hurry now,' she says, 'but in a few short decades, you'll be much too late. Please, for the good of your planet.'".
	It quip-supplies the activist.
	It directly-follows environment-offer.

Instead of saying yes when yes is available:
	try discussing yes.

yes is an informative quip.
	[The mentions-list is {environment}.]
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
	[The mentions-list is {environment, activist}.]
	The comment is "'Oh?' we say neutrally. This is all it takes.".
	The reply is "'[i]Toxi waste[/i] would be, in concept, a completely harmless, safe, and neutral substance that would have no detrimental impact on the surrounding environment. By raising awareness of [i]toxi waste[/i] throughout the Anglophone world, we would put the collective consciousness to work for the environment! It would then be possible for volunteer workers to convert large stocks of dangerous toxic waste into the safe, neutral [i]toxi waste[/i] using minimal energy.'".
	It quip-supplies the activist.
	It directly-follows further-enviro-stuff.

First report smiling when the current interlocutor is the activist and the current quip is further-enviro-stuff:
	say "We smile in a blandly interested fashion.";
	queue encourage the activist as immediate obligatory instead.

Sanity-check listening when the current quip is further-enviro-stuff:
	if the noun is the location or the noun is the activist:
		say "We put on our most attentive expression.";
		queue encourage the activist as immediate obligatory instead.

An availability rule for how consciousness will be raised:
	if the activist recollects bid-for-cash, it is off-limits;
	make no decision.

how consciousness will be raised is a questioning quip.
	[The mentions-list is {environment}.]
	The comment is "'And, er, how do you plan to raise awareness of [i]toxi waste[/i] to sufficient levels to achieve linguistic efficacy?' we ask. Well, that was mostly me. But I'm curious.".
	The reply is "'That's where people like you come in,' she admits, with a sweet little smile.".
	It quip-supplies the activist.
	It indirectly-follows encourage the activist to elaborate on the implications.

how the campaign will address problems of visualization is a questioning quip.
	[The mentions-list is {environment, activist}.]
	The comment is "'Studies have shown that linguistic efficacy is drastically harder to achieve when the body of speakers does not have a consensus about how to visual[ize] the object in question,' we point out, settling into our element. I've had so many undergraduates with ideas just like this one, all eager to tell me how they're going to change the world. I suppose I have exactly the same problem, only on a grander scale. [paragraph break]My comment seems to have gotten her a little lost, though, so I add, 'People need to have some image to attach to the term you're inventing for them. Otherwise, it will be much harder to achieve functional awareness levels.'".
	The reply is "'Oh! Yes, I left that part out,' she says. 'Our ad campaign will include extensive imagery of what we envision [i]toxi waste[/i] to look like [--] that is, a clear, od[our]less liquid.'".
	It indirectly-follows encourage the activist to elaborate on the implications.
	It quip-supplies the activist

whether this liquid will be water is a questioning quip.
	[The mentions-list is {environment}.]
	The comment is "'Is the role of [i]toxi waste[/i] by any chance going to be played by, say, filtered water?' we ask.".
	The reply is "Her eyebrows crinkle together. 'Yes [--] well, maybe,' she says. 'Why?'".
	It quip-supplies the activist.
	It is restrictive.
	It indirectly-follows how  campaign will address problems of visualization.

whether this liquid will also be flavorless is a questioning quip.
Understand "flavor" or "flavour" or "flavourless" as whether this liquid will also be flavorless.
	[The mentions-list is {environment}.]
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
	[The mentions-list is {environment}.]
	The comment is "'Because,' we say, 'if you show people pictures of what is obviously water, they will continue thinking of it [i]as[/i] water [--] not as [i]toxi waste[/i], or whatever you want them to call it. Studies have shown that people's word concepts are very persistent in that way [--] and anyway there are a variety of reasons why even if you could do it, it would be very bad to overwrite the linguistic efficacy of [']water['].'".
	The reply is "She purses her lips. 'You're in Language Studies, aren't you?' she asks. 'I was warned about people from your department. You can be very negative.'".
	It quip-supplies the activist.
	It directly-follows whether this liquid will be water.

After reading a command when the activist is marked-visible and point out that being from language studies is available (this is the change point out to language rule):
	if the player's command includes "point out" or the player's command includes "point":
		replace the matched text with "language".

point out that being from Language Studies does not make us wrong is a performative quip.
	[The mentions-list is {environment, research}.]
	The comment is "'Negative or not, it is true,' we say. 'If you try to teach people a new word for an existing substance, you have to fight with their preconceptions about how to categor[ize] that substance. If, on the other hand, you try to make them think of a new and as-yet-non-existent substance, you have less control over what happens when it reifies [--] the result might not be quite what you wanted.'".
	The reply is "'All right,' she says belligerently. 'How would you do it?' [paragraph break]At this precise moment I feel myself fall for this girl. She's still naive and earnest and probably too young for me, but there is something about the determination and assertion and the spirit of I-dare-you-to-think-of-one-better that makes me want to drag her off to a coffee shop and enlighten her for four or five hours.

But I bet you wouldn't like to play gooseberry to that expedition.".
	It quip-supplies the activist.
	It is restrictive.
	It directly-follows warn the activist about term-reassignment.

explain about our plans is a performative quip.
	[The mentions-list is {environment}.]
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
	[The mentions-list of donate is { the roll of bills }.]
	The comment of donate is "Oh, you're not seriously going to [--] oh, god, you are. You know, this is never going to work. There are sound scientific reasons why [--] oh FINE.

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
	Understand "has" or "parker" or "barman" or "bartender" as whether he hath seen slango.  The comment is "'I wonder whether you've seen an associate of mine,' we say to Parker. 'Name of Slango.'".
	[The mentions-list is {Slango}.]
	The reply is "Parker looks over the bar at us. 'He comes in here from time to time,' he says. 'Very regular customer. Always has about three rum and cokes.' [paragraph break]This is a lie, and therefore a test. Slango doesn't drink alcohol himself and doesn't permit drunkenness in his crew.".
	It quip-supplies the barman.
	It is restrictive.

A plausibility rule for whether he hath seen slango when game is in progress and origin paste is not won:
	it is implausible.

challenge Parker about the rum is a performative quip.
	The comment is "'Must be a different Slango,' we say. 'Mine is more of a root beer man. Thanks anyway though[slango-friendship].'".
	[The mentions-list is {Slango}.]
	The reply is "'Oh, [i]that[/i] Slango,' Parker says[if the origin paste is marked-visible and the origin paste is not seen], thoughtfully moving [the origin paste] sitting on the bar[end if]. 'He's been around town the last couple of days, but not today. If you know his lady friend[lena-needed], you might try her.' [paragraph break]Lady friend? [if the Aquarium is visited]Lena, presumably, but you didn't real[ize] she and Slango had progressed to quite that status[otherwise]This can only mean Lena, she being the only female native with whom Slango spends much time socially. But you wouldn't have guessed that she'd advanced to the status of [i]lady friend[/i]. Either way, Lena is a rather odd woman who keeps a used bookstore off Deep Street[end if].".
	It quip-supplies the barman.
	It directly-follows whether he hath seen slango.
Understand "barman" or "him" or "bartender" as challenge Parker about the rum.

[check up on Lena is a performative quip. The comment is "'Lena at home, then?'".
	[The mentions-list is {Lena}.]
	The reply is "He shrugs. 'Lena's got a lot of different projects going on. I don't keep track.'".
	It quip-supplies the barman.
	It directly-follows challenge Parker about the rum. ]


Carry out barman discussing challenge Parker about the rum:
	complete "Ask people around here if they've seen Slango";
	assign "Talk to Lena at the Aquarium Bookstore".

Availability rule for whether we can hath origin paste:
	if the origin paste is not seen or the origin paste is not on the bar-top or the origin paste is won:
		it is off-limits.

Sanity-check buying the origin paste from the barman when the origin paste is not won:
	if the barman recollects whether we can hath the origin paste:
		say "We've already established that the origin paste has to be won rather than bought or given away." instead;
	otherwise:
		try discussing whether we can hath the origin paste instead.

Instead of subject-asking the origin paste when the origin paste is not won:
	if the barman recollects whether we can hath the origin paste:
		if the barman does not recollect how one might go about winning:
			try discussing how one might go about winning;
		otherwise:
			say "We've already established that the origin paste has to be won rather than bought or given away.";
	otherwise:
		try discussing whether we can hath the origin paste.

whether we can hath the origin paste is a questioning quip.
	The printed name is "whether we can have the Origin Paste". The true-name is "whether we can hath origin paste".
	Understand "have" as whether we can hath origin paste.  The comment is "'That Origin Paste for sale?' ".
	[The mentions-list is {origin paste}.]
	The reply is "'Well now,' he says, grinning, 'that would surely be illegal, would it not? Origin Paste is after all a controlled substance in this country, due to its unhappy association with fraudulent activities. On the other hand there is no law against someone [i]winning[/i] the Origin Paste in a completely legitimate game of chance or skill.'".
	It quip-supplies the barman.


Availability rule for how one might go about winning:
	if the origin paste is not on the bar-top or the origin paste is won:
		it is off-limits.

A plausibility rule for how one might go about winning:
	it is plausible.

how one might go about winning is a questioning quip.
	Understand "prize" or "game" or "competition" or "to win" as how one might go about winning. The comment is "'Explain this game as though I have no idea what you're talking about,' you say, leaning on the bar in an interested fashion. Are you flirting with Parker? No? Okay. Good to know.".
	[The mentions-list is {origin paste}.]
	The reply is "'It's a designated challenge game,' says Parker. You've seen this played before, but he explains the rules anyway. [paragraph break]'There are two contestants, one challenger and one defender.

'The challenger chooses any object he likes and shows it to the moderator ahead of time.

'The defender, without seeing the object, stipulates a general category. The challenger has five minutes to turn his designated object into an item that fits the defender's category, or he forfeits his ante.'".
	It quip-supplies the barman.
	It indirectly-follows whether we can hath the origin paste.

Every turn when the location is Counterfeit Monkey and barman does not recollect barman-nudge and barman does not recollect play the game and play the game is available:
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

play the game is a performative quip.
	The comment is "'I'd like to play [if immediately]that[otherwise if the barman recollects play the game]again[otherwise]for the Origin Paste[end if],' we say.".
	[The mentions-list is {origin paste, entertainment}.]
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

give up is a performative quip.
	The comment is "'Argh, mulligan,' you say. 'I don't think this wager is going to work out for me.'".
	[The mentions-list is {yourself, origin paste}.]
	The reply is "He grins and shrugs sympathetically. 'Bad luck.'".
	It quip-supplies the barman ]

Understand "pick [something]" as showing it to when the location is Counterfeit Monkey and the game is in progress.

To say game-coaching:
	if the wager is the player:
		say "[one of]'Just pick something you've got on you and show it to me to establish your bet.'[no line break][or]'Have you picked a wager object yet?'[no line break][or]The barman waits for you to show him your wager object.[no line break][stopping][run paragraph on]";
	otherwise:
		say "The barman keeps an eye on our remaining time."

The wager is an object that varies. The wager is yourself.
The proposed solution is an object that varies.
The wager-name is an object that varies.
The wager-judging rule is a rule that varies. The wager-judging rule is the liquid wager rule.
The wager-index is a number that varies.

Instead of giving something to the barman when play the game is the current quip and the wager is yourself:
	try showing the noun to the barman.

Understand "choose [something]" as showing it to when play the game is the current quip.

Instead of showing something (called the item) to the barman when play the game is the current quip and the wager is yourself:
	if the item is yourself:
		say "'No no no,' he says. 'No suicides or self-inanimations in my bar today, thanks.'" instead;
	now the wager-name is the item;
	now the wager is the item;
	now the proposed solution is the item;
	make wager choice;
	while something (called the wager-parent) which is not the wager proffers the wager:
		now the wager is the wager-parent;
	try the barman discussing wager-accepted;
	game concludes in five turns from now.

Instead of showing something (called the item) to the barman when the wager is not the player:
	if the item is not proffered by the wager:
		say "'Sorry,' he says, 'but I know that didn't come from [the wager-name] you bet on.'" instead;
	now the proposed solution is the item;
	follow the wager-judging rule;
	if the rule succeeded:
		now the origin paste is won;
		record "winning a barroom bet" as achieved;
		try the barman discussing wager-won;
		now the wager is the player;
	otherwise:
		choose a row with a selected rule of wager-judging rule in the Table of Wager Suggestions;
		say "'[one of]That doesn't fit the category[or][personal no][or][awkward no][at random],' says [the barman]. [summary entry][paragraph break]".

Every turn when the location is Counterfeit Monkey and the wager is not the player and the paste is not won:
	repeat with item running through things which are proffered by the wager:
		if the item is marked-visible:
			now the proposed solution is the item;
			follow the wager-judging rule;
			if the rule succeeded:
				now the origin paste is won;
				record "winning a barroom bet" as achieved;
				try the barman discussing wager-won;
				now the wager is the player.

wager-accepted is an NPC-directed quip.
	The reply is "'[if the wager is the origin paste]That's original[otherwise]Right[end if],' says [the barman]. '[The wager-name] it is.' [paragraph break]He turns towards the group assembled around the dartboard. 'Anyone want to defend against this character?' (with a nod at you). [paragraph break][wager-choice]".

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
	if the origin paste is won:
		make no decision;
	otherwise:
		now the wager is the player;
		try the barman discussing time up;

Time up is an NPC-directed quip.
	The reply is "'Your time is up, I'm afraid,' says the barman. 'No luck this time, eh? Pity.' He divides your cash ante in half: half for the house, half to the defender who bet against you."

complain that the game seems unfair is a performative quip.
	The printed name is "complain that the game is unfair". The true-name is "complain that the game seems unfair".
	Understand "is" as complain that the game seems unfair.  The comment is "'This game is unfair,' we say. 'You're the moderator, but you have a vested interest in the defender continuing to win, because you get half the ante every time!'".
	[The mentions-list is {origin paste}.]
	The reply is "'The house puts up the stakes, remember,' he says. 'But the Counterfeit Monkey has been running this game for years, and would people keep coming back to play if it were rigged?' [paragraph break]Of course, the regulars usually play def[ense] and newcomers offense, which makes the game into a device for fleecing strangers for the benefit of the bar and its usual patrons. But sometimes someone is allowed to win, if they're clever.".
	It quip-supplies the barman.
	It indirectly-follows Time up.

The carrying requirements rule does nothing when showing an object to an object.

The can't show what you haven't got rule is not listed in any rulebook.
The block showing rule is not listed in any rulebook.

Availability rule for whether he hath any other games going:
	if the origin paste is unwon:
		it is off-limits.

whether he hath any other games going is a questioning quip.
	The printed name is "whether he has any other games going". The true-name is "whether he hath any other games going".
	Understand "has" or "parker/barman" as whether he hath any other games going.  The comment is "'So, is there anything else I can win? Any other games going?'".
	[The mentions-list is {paste}.]
	The reply is "Parker laughs. 'Not until tomorrow, kid,' he says. 'We only run one game a day.'".
	It quip-supplies the barman.

how long he hath worked at  bar is a questioning quip.
	The printed name is "how long he has worked at the bar". The true-name is "how long he hath worked at  bar".
	Understand "has" as how long he hath worked at  bar.  The comment is "'How long have you been working at this pub?' we ask. 'And do you like it?'".
	[The mentions-list is {employment}.]
	The reply is "He wrinkles his nose. 'Word of advice: don't go around asking questions like that down here,' he says.".
	It quip-supplies the barman.
	It is background-information.

what he thinks about the Bureau is a questioning quip.
	The comment is "'What's your opinion on the Bureau of Orthography?'".
Understand "parker/barman" as what he thinks about the Bureau.
	[The mentions-list is {Bureau, barman}.]
	The reply is "'I think it's just that little bit more corrupt and oppressive than usual for a governmental body,' he says. 'I'm not in fav[our], but I don't fool myself that everything would be wine and roses everywhere else, either.'".
	It quip-supplies the barman.
	It is background-information.

whether he hates customs officials is a questioning quip.
	The comment is "'Do you hate Customs officials?' we ask.".
	Understand "parker/barman" as whether he hates customs officials.
	[The mentions-list is {immigration, barman, local-officials}.]
	The reply is "'Naw. Not running anything myself, am I?'".
	It quip-supplies the barman.
	It is background-information.

Instead of the barman discussing a civic quip when the barman does not know slango-friendship:
	say "[one of]He just laughs and shakes his head[or]He grins, but doesn't answer[or]'What do you think?' he asks. I don't think we're going to get answers on this kind of question. Not while he doesn't trust us. But it hardly matters[at random]."

whether he believes in god-2 is a questioning quip.
	The comment is "'Where do you stand on God?' we ask[you-are-religious].". The printed name is "whether he believes in God".
	The true-name is "whether he believes in god-2".
	[The mentions-list is {religion}.]
	The reply is "'Don't give it much thought,' he says. 'Please don't tell me you're here with a pamphlet . I won't read it.'".
	It quip-supplies the barman.
	It is background-information.
Understand "parker/barman" or "god" as whether he believes in god-2.

Test tobarman with "test act1 / test chard / test car / test Slango-missed / go to outdoor / open backpack / look / wave p-remover at spill / get sill / go to counterfeit monkey".

Test barman with "tutorial off / talk to barman / x barman / a slango / a rum / look / a paste / a whether we can have / ask how / play / z / z" in Counterfeit Monkey.


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
	[The mentions-list is {yourself}.]
	The comment is "'Slango,' you say. 'Lena gave me a totally unwanted visual about your yaklike proportions. Guess you also got a yak's sense of clock time?'".
	The reply is "'It was an emergency. I figured you'd go to Lena, and I was right.'[queue whether we can leave now]

'You were lucky. I knew her a little, but I had no idea you two were making the yak with two humps.'

'No such thing as a bactrian yak,' Slango replies. 'My apologies. I assumed that what Brock knows, he passes on to you, and he certainly knows about me and Lena.' He scowls into his root beer. 'Nearly gave himself a hernia laughing,' Slango adds under his breath.".
	It quip-supplies Slango.
	The proper scene is consulting-Slango.

After laughing when the current interlocutor is Slango and the current quip is who we seem:
	say "'Heh.' It's easy for you to picture [--] and thus for me to picture [--] the way Brock laughs: the startled loud crack of a laugh at the beginning, like a thunderclap, and then the rest of the laugh following after a pause. It's like for a moment he's too surprised by the awesomeness of the joke to keep going.";
	try discussing explain Brock's probable reasons.

explain Brock's probable reasons is a performative quip.
	The comment is "'She's old enough to be your spinster aunt and flaky enough to tell your fortune with half a tarot deck and a couple of Uno cards,' you say. 'We haven't got a lot of clues about what your type is, but I doubt Brock would have guessed Lena.'".
	[The mentions-list is {Lena}.]
	The reply is "'She's thirty-two,' says Slango crisply. 'She runs Radio Free Atlantida single-handed with electronics she built herself. And if she [i]were[/i] old enough to be my spinster aunt, that would still be my business.'

'So, uh, I guess you guys are pretty serious, then,' you say.

'I'd give her and me better odds than you and Brock.'".
	It quip-supplies Slango.
	It directly-follows who we seem.
	The proper scene is consulting-Slango.

mutter darkly is a performative quip.
	It directly-follows explain Brock's probable reasons.
	The comment is "I grumble under our breath about people who are hung up on their personal issues when there are useful jobs to be done."
	The reply is "Slango pretends not to hear."
	It quip-supplies Slango.

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
	[The mentions-list is {transportation}.]
	The comment is "'So talk to me,' we say. 'Is everything ready? Can we leave?'

Slango looks dyspeptic. 'Yeah, about that,' he says gruffly. You know better than to push him, and wait.".
	The reply is "'Brock's run into a little trouble pursuing a profitable opportunity[queue what the trouble was][queue cant-leave-without as postponed obligatory][queue modifying-letter as postponed obligatory].'".
	It quip-supplies Slango.
	It indirectly-follows who we seem.
	The proper scene is consulting-Slango.

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
	[The mentions-list is {Brock}.]
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


complain about the inefficiency of this scheme is a performative quip.
	The comment is "Sorry, but I have to get this out there. 'I was really expecting a smoother escape plan when I arranged to work with your operation,' I say.".
	[The mentions-list is {plans, yourself}.]
	The reply is "Slango eyes us with disfav[our]. 'Andra, you got a moron up in your head. Kid [--] Alex [--] we aren't travel agents.'".
	It quip-supplies Slango.
	It directly-follows cant-leave-without.
	The proper scene is consulting-Slango.

modifying-letter is an NPC-directed quip.
	The reply is "'I've got to get back to the yacht; it's empty,' Slango says. 'And I would prefer not to let the Bureau get a good look at me, while your current face is, shall we say, disposable. The trick is, we don't know where Brock is. If he left a message for us, it'll be at the dead drop.'

That's a spot at the public convenience by the town bus station where the three of you leave messages for one another when necessary. Usually quiet, yet anonymous. 'We're on it,' we say.

'Glad to hear it,' says Slango. 'Now stop referring to yourself as [']we['] in company.'"

Carry out Slango discussing modifying-letter:
	assign "Check the dead drop at the public convenience";
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

The as-coin is an as.

The greeting of Lena is "'[one of]Happy Serial Comma Day[or]Greetings[or]Hi there[stopping],' she says."
The generic negative of Lena is "[one of]nope[or]nope nope[at random]".
The generic positive of Lena is "[one of]yeeeah[or]mmhmm[or]uh huh[or]sure[at random]".

Instead of Lena discussing whether she hath seen Slango when Lena does not know trust-me:
	say "[one of][lena-distrusts]'Slango?' she asks blankly, for all the world as though she'd had a lobotomy. 'Is that a board game?'[or]'Maybe a Slango is a kind of juice drink?' she suggests.[or]'I have no idea what you're talking about,' she says. Stonewalling.[or]She just shrugs. We're going to have to convince her to trust us first, it appears. How unutterably tedious.[stopping]".

Instead of saying goodbye to Lena when whether she hath seen slango is available and Lena knows trust-me:
	say "No, don't! I'm [i]sure[/i] she's about to tell us where Slango's gotten to, and if you've forgotten about getting off this island, I have not."

A plausibility rule for whether she hath seen slango when the player knows lena-distrusts and the player does not know trust-me:
	it is implausible.

whether she hath seen slango is a questioning quip.
	The printed name is "whether she has seen Slango". The true-name is "whether she hath seen slango".
	Understand "has" or "Lena" as whether she hath seen slango.  The comment is "[one of]'You wouldn't happen to have seen Slango about recently?' we ask.[or][if Lena does not know trust-me]'I'm still curious about Slango. Seen him?'[otherwise]'Now, you owe me one Slango,' you say. 'Where'd he get to?'[end if][stopping]".
	[The mentions-list is {Slango}.]
	The reply is "'Slango and I were catching up. Bless that man, he's hung like a yak,' she says. 'But he got bad news and had to hurry back to the yacht. Said something about not being able to keep an appointment. I take it you're the appointment? I can try reaching him for you, if you want.'".
	It quip-supplies Lena.

[Your faithful researcher investigated the length of yak endowments when writing this passage. It turns out that there's an Asian restaurant that serves various species of phallus, whose website was most informative. THINGS YOU LEARN FROM THE INTERNET.]

who we seem-3 is an informative quip.
	The printed name is "who we are". The true-name is "who we seem-3".
	Understand "are" as who we seem-3.  The comment is "'Lena, it's Andra. And company. Maybe Slango mentioned that I was auditioning a new silent partner.'".
	[The mentions-list is {yourself}.]
	The reply is "[lena-distrusts]'I don't know what you're talking about,' she says. 'But since you're here, whoever you are, I wonder whether you'd like to have a look at some merchandise of mine that could use a spruce.' [paragraph break]Aha. She wants us to prove our identity; probably has contraband that needs concealing, and wants us to do the deed as proof of trustworthiness[queue offer-contraband as immediate obligatory].".
	It quip-supplies Lena.

offer-contraband is an NPC-directed quip.
	The reply is "Lena goes off into a corner and rummages among the suspicious piles of books, and uncovers a box. 'C'mere,' she says; and obediently I wander over to that area of the store, which incidentally happens to be tucked away and half-hidden by shelves.

'[prepare contraband]See here,' she says. 'See what you can do with it, eh?'"

[where contraband came from is a questioning quip. The comment is "'Where did this stuff come from?' I ask, before you can shut me down.".
	[The mentions-list is {contraband box}.]
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
	if the monocle is marked-visible and Lena is not urgently eager-to-speak and lena recollects who we seem-3:
		if Lena does not recollect monocle-remark:
			queue monocle-remark;
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

calm Lena is a performative quip.
	The comment is "'Chill and let the master work,' you say. 'Anyone could pick a few letters out of your contraband. Trick is coming up with output that won't disrupt the Feng Shui of this flea market you've got going on.'".
	[The mentions-list is {Lena, modem, reams, preamp}.]
	The reply is "Lena visibly relaxes. 'It's a privilege is what it is,' she says. 'Me letting you [if the player wears the Britishizing goggles]practise[otherwise]practice[end if] on my stuff. And no one said anything about contraband. Contraband's a bad word. Very hard to manipulate.'".
	It quip-supplies Lena.
	It directly-follows modem-complaint, ode-complaint, preamp-complaint, reams-complaint.
	[Every ode is mentioned by calm Lena.]

tease Lena about selling office supplies is a performative quip.
	The comment is "'May I recommend that you branch out into office supply?' you ask. 'It's a lucrative business. Pamphlet-printing is very popular with the subversive element.'".
	[The mentions-list is {reams}.]
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

what she kens about authentication scopes is an unlisted repeatable questioning quip.
	The printed name is "what she knows about authentication scopes". Understand "knows" or "know" as what she kens about authentication scopes.
	The true-name is "what she kens about authentication scopes".
	[The mentions-list is {monocle, regulation authentication scope}.]
	The comment is "'Tell me more about authentication scopes,' [we] say.".
	The reply is "'Main thing I know is that there are more of them in use every day,' she says. 'Keeping our streets and shops clear of fakes. Or so they say.'"
	It quip-supplies Lena.

still-needs-pasting is an NPC-directed quip.
	The reply is "[one of]'What those need now is just a touch of paste to obscure [the random undisguised thing in the contraband box] to the authentication scopes, and [they] will be ready,' she says[or]'Of course, Origin Paste is expensive and hard to get around here, but [the random undisguised thing in the contraband box] [are] worth it,' she comments[or][if the player does not enclose origin paste]'Someone at the Counterfeit Monkey might be able to hook you up with a fresh supply of Origin Paste,' she suggests[otherwise]'Fortunate you've already got some paste,' she remarks[end if][or]Lena reflects once more on how useful it would be to put some Origin Paste on [the random undisguised thing in the contraband box][stopping]."

excellent-work is an NPC-directed quip.
	The reply is "'Excellent,' Lena mutters under her breath."

nice-paste is an NPC-directed quip.
	The reply is "'Glad to see you've got plenty of Origin Paste,' Lena remarks. 'It's such a useful thing to have. Smells so nice.'"

An availability rule for quip-about-paste:
	if Lena does not recollect who we seem-3:
		it is off-limits;
	make no decision.

quip-about-paste is a weakly-phrased performative quip.
	The printed name is "quip about paste". Understand "quip" or "about" or "paste" as quip-about-paste.
	The true-name is "quip-about-paste".
	[The mentions-list is {origin paste}.]
	The comment is "'Makes a great facial scrub,' you say. 'I slather the stuff on.'"
	The reply is "'Well, honey, all I can say is, you look so real.'"
	It quip-supplies Lena.
	It directly-follows nice-paste.


that-does-it is an NPC-directed quip.
	The reply is "'Perfect,' Lena says, regarding her contraband possessions with satisfaction[trust-me]. 'Welcome back, Andra and Guest[queue whether she hath seen slango].'"

Instead of saying yes when current interlocutor is Lena and encourage Lena to contact slango is available:
	try discussing  encourage Lena to contact slango;

Instead of saying no when current interlocutor is Lena and encourage Lena to contact slango is available:
	say "Are you mad? That's exactly what we need her to do.";

encourage Lena to contact Slango is a performative quip.
	The comment is "'[if immediately]That would be extremely helpful[otherwise]It would be very useful if you could contact Slango[end if],' we say. Perhaps we can finally get off this island and back into our separate skins, which would not be one minute too soon for me.".
	[The mentions-list is {Slango}.]
	The reply is "[thank-lena]'Very good,' she says. She goes over to one of the free-standing shelves and takes out copies of [a random book which is part of merchandise] and [i]Seventy Ways to Disable an Authentication Scope[/i]. Behind these works of literature she finds what looks like a cellular phone; but it mustn't be one, or at least not of the usual variety, because the Bureau tightly controls such items. [paragraph break]We hear half a conversation. 'It's me. There's someone to see... yes, I had her do the contraband... I don't know, a little taller and a lot less mean... Oh! I see. She looks healthy enough... I'm not running a restaurant! Okay. Okay. I'll talk to you later, sweetie. Bye.' [paragraph break]Without meeting our eye, she buries the phone back in its previous location. Then she says, 'He's coming in direct. He says go over to Counterfeit Monkey and he'll be right over as originally planned, and he's sorry about the wait.'[paragraph break]'Oh! And.' She tosses us a coin. 'Have a drink on me.'".
	It quip-supplies Lena.
	It indirectly-follows whether she hath seen slango.

Carry out Lena discussing encourage Lena to contact Slango:
	move the as-coin to the location;
	if the player does not carry the as-coin:
		[follow the considerate player's holdall rule;]
		move the as-coin to the player;
	assign "Finally find Slango at Counterfeit Monkey";
	complete "Talk to Lena at the Aquarium Bookstore";
	record "arranging contact with Slango through his lady friend" as achieved;
	summon Slango.

thank Lena is a thanking quip.
	[The mentions-list is {as-coin, Lena}.] It assumes thank-lena.
	The comment is "'Thank you,' we say.[one of] 'We owe you one.'[or][stopping]".
	The reply is "She smirks. [one of]'I get my money's worth out of Slango, don't worry.'[or]'That's enough!'[stopping]".
	It quip-supplies Lena.
	It indirectly-follows encourage Lena to contact Slango.

Table of Ultratests (continued)
topic	stuff	setting
"Lena"	{ tub, origin paste }	the Aquarium
"as"	{ tub, ash, as-coin, coat }	Workshop

Test Lena with "tutorial off / z / open tub / ask about slango / say who we are / z / z / wave m-remover at modems / wave s-remover at odes / gel ode / wave m-remover at modems / wave p-remover at preamps / wave s-remover at reams / put paste on odes / put paste on ream / ask whether / encourage" [in the Aquarium holding tub and the origin paste].

Test as with "tutorial off / open tub / powerup / put as on dais / wave a-remover at coat / put cot on dais / set switch to synthesize / pull lever / wave h-remover at ash / get as / i / gel ascot / l / i".

Section 5 - Professor Brown

The greeting of professor brown is "He grunts."
The generic positive of professor brown is "yes".
The generic negative of professor brown is "no".
The generic confrontational of professor brown is "uh".

what he seems doing is a questioning quip.
	The printed name is "what he is doing". The true-name is "what he seems doing".
	Understand "is" as what he seems doing.
	[The mentions-list is {research, Professor Brown}.]
	The comment is "'What are you up to there?' we ask. Asking Brown questions when he's working is a bit of a crap-shoot, I tell you now.".
	The reply is "He wiggles his nose back and forth. I knew him for three months before I figured out what the wiggle is: it is his hands-free way of working his spectacles back up his nose when they start to slide down. [paragraph break]Without looking at us, he says, 'I'm getting ready to do a new calibration run on [']love['].' [paragraph break]This is a fav[our]ite of his, because you can get it so easily from a glove, so the materials are inexpensive.".
	It quip-supplies Professor Brown.

what love looks like is a questioning quip.
	[The mentions-list is {research}.]
	The comment is "'What does love look like, then?' we ask, as though I hadn't seen this a bunch of times already.".
	The reply is "[long love answer]".
	It quip-supplies Professor Brown.
	It indirectly-follows what he seems doing.

To say long love answer:
	say "'It varies,' Professor Brown replies. 'The manifestation of a complex concept depends on a variety of circumstances; by default if multiple concepts are available, the letter tool will produce whichever concept requires least energy to produce, but in cases where several concepts are indistinguishably popular, the results are apparently random.

'Recent research suggests that the outcome can be influenced by the language community surrounding the operation and even by the intention of the tool's user (to a limited degree); but I am not interested in pursuing those angles at present.' [paragraph break]There: Professor Brown in a nutshell. Did he tell you anything you wanted to know? No.[paragraph break]";
	say "The deal is that manifestations of 'love' tend to look like stuff you'd find on a greeting card: roses, hearts, kiss symbols. Every once in a while you get something a little more platonic. But it's a let-down, if you want to know the truth. Most significant abstracts are like that: all you get by reifying them is a popular visual[ization]. "

what he thinks of Higgate is a questioning quip.
	[The mentions-list is {Professor Higgate}.]
	The comment is "'What do you think of Professor Higgate?' we ask..".
	The reply is "He gives a convulsive jerk of the shoulders. 'She's okay,' he says. 'She comes down here a lot and she keeps trying to get me to join her Conversational Lojban Tea, and I don't much see the point of her research, but I don't hate her or anything.'".
	It quip-supplies Professor Brown.
	It is background-information.

what he thinks of you is a questioning quip.
	[The mentions-list is {yourself}.]
	Understand "me" as what he thinks of you.
	The comment is "'So... There's a guy who I think is a graduate student here [--] Alex Rosehip? Do you know him?'".
	The reply is "This startles Brown enough that he turns around and looks at us. There is a curiously wary look in his eyes, and it hits me: He's worried. [paragraph break]See, about a month ago I was down here talking to Brown and I let slip some general hints about what I've been working on, and I had the impression that for once he was listening. When I was done with the very rough outlines, he told me to be careful, really really careful [--] not just on the island, but in the outside world, too, because there were a lot of people who wouldn't want a plan like that to succeed. [paragraph break]'I know all the graduate students,' he replies, turning another knob until his equipment gives a high-pitched whine. There is no functional purpose to that knob, he confessed once, other than to make strangers and idiots think they're interrupting a dangerous test. 'I'm not supervising his research, if that's what you mean. His advisor is Professor Waterstone.'".
	It quip-supplies Professor Brown.
	It is background-information.

what he thinks of Waterstone is a questioning quip.
	[The mentions-list is {Professor Waterstone}.]
	The comment is "'Do you get along with Professor Waterstone?' we ask.".
	The reply is "He is silent for a minute. Then he says, 'Once Professor Waterstone gave me a conch shell. He said I could s-remove it and settle the dispute about the afterlife once and for all.'

This is not an anecdote I've heard before, but that sounds like a typically Waterstonian way of sending someone to blazes. 'What did you say?' I make us ask.

'I pointed out that in the phrase [']conch shell['], [']conch['] is a strongly-adhering adjective, so that actually you can't make a conch shell into much of anything, and moreover that reifications merely represent an amalgam of the most common beliefs about an abstract, rather than having any essential truth value.'

Brown sniffs. 'He didn't have a come-back to that.'".
	It quip-supplies Professor Brown.
	It is background-information.

why Waterstone gave him the conch shell is a questioning quip.
	[The mentions-list is {Professor Waterstone}.]
	The comment is "'Do you have any idea why Professor Waterstone, er, offered you the conch shell?'".
	The reply is "Brown twitches. 'I was just in his office talking to him. Suddenly he got testy and sarcastic and gave me the shell. Some of the department here don't have very good people skills.'".
	It quip-supplies Professor Brown.
	It indirectly-follows what he thinks of Waterstone.

what Professor Brown thinks of the academic job market is a questioning quip.
	Understand "he" as what Professor Brown thinks of the academic job market.
	[The mentions-list is {Employment}.]
	The comment is "'How is the job search going?' we ask. 'Are you still considering moving?'".
	The reply is "He looks confused, so I have us hastily add, 'I heard from one of the graduate students that you were on the market.' [paragraph break]'Yes well,' he replies, in a tortoise-like voice you have heard often before. 'Under recent circumstances it is unlikely that I would receive a visa to work elsewhere. Nonetheless, I do send out the applications every fall, just in case the contract does not get renewed. Sometimes I even get a telephone interview or two.'".
	It quip-supplies Professor Brown.
	It is background-information.

wish Professor Brown luck is a performative quip.
	Understand "wish him luck" as wish Professor Brown luck.
	[The mentions-list is {employment, Professor Brown}.]
	The comment is "'Well, good luck with that.'".
	The reply is "'At this point I need some kind of major change in the universe more than I need lu[--]' He stops and stares into the middle distance through the green spectacles. Then he bends over the work table and scribbles something in tiny writing on one of the scraps of paper there. [paragraph break]'Sorry!' he says. 'Had a thought.'".
	It quip-supplies Professor Brown.
	It directly-follows what Professor Brown thinks of the academic job market.

how Professor Brown makes abstracts is a questioning quip.
	Understand "he" or "to make" as how Professor Brown makes abstracts.
	[The mentions-list is {research}.]
	The comment is "'What equipment do you use to make your abstracts?' we ask.".
	The reply is "'It's an ordinary letter-remover with a few adjustments,' Brown says. 'The department's computer can lift some of the legal overrides on standard letter tools. The job would be easier if I had access to higher-powered machinery, but...'".
	It quip-supplies Professor Brown.
	It indirectly-follows what he seems doing.

A plausibility rule for how Professor Brown makes abstracts:
	it is plausible.

Availability rule for whether he can fix the letter-remover:
	if the letter-remover is marked invisible, it is off-limits.

Plausibility rule for whether he can fix the letter-remover:
	if Professor Brown does not recollect how Professor Brown makes abstracts, it is dubious.

Instead of Professor Brown discussing whether he can fix the letter-remover when the letter-remover is not touchable:
	say "'I'd need access to it first, obviously,' he says, as though speaking to a freshman."

whether he can fix the letter-remover is a demonstration quip.
	[The mentions-list is {letter-remover}.]
	The comment is "'Could you fix my letter-remover to make abstract objects as well?'"
	The reply is "[thank-brown]'It's not difficult, you just[--] oh, stay here, I'm not supposed to bring students into the rectification room.'

He takes the letter-remover and steps out into the hallway. I can hear him using his keycard on the door, going into the little room west of the hallway, doing something there. (Don't bother thinking we're going to cosh him and take the keycard. I'm sure there's a better way, and I don't cosh people.)

He comes back in a minute.

'There,' he says. 'Should be abstract-enabled now.'"
	It quip-supplies Professor Brown.

what he thinks of the letter-remover is a demonstration quip.
	[The mentions-list is {letter-remover}.]
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
	[The mentions-list is {letter-remover}.]
	The reply is "'We don't know whether such creations have awareness and sensation like other creatures,' he says. 'If they do, it is horrible to bring them into existence only to send them out again.'".
	It quip-supplies Professor Brown.
	It indirectly-follows what he thinks of the letter-remover.

thank Professor Brown is a thanking quip.
	[The mentions-list is {Professor Brown}.]
	It assumes thank-brown.
	The comment is "'That's wonderful [--] thank you!'".
	The reply is "[one of]'Yes well,' he says. 'Don't show it to anyone. Technically you shouldn't have that.'[or]'Don't make me regret it,' he says.[stopping]".
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
	[The mentions-list is {the word}.]
	The comment is "We demonstrate the word."
	The reply is "'It's odd, isn't it? You'd think this would somehow reveal something about the nature of words, but all it does is point to other words.'"
	It quip-supplies Professor Brown.

what he thinks about the pasts is a demonstration quip.
	[The mentions-list is {the pasts}.]
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

A first every turn when the current quip is lojban-greeting:
	say "Higgate is still looking at us expectantly, so I jump in. ";
	try discussing that we do not speak Lojban.

Instead of saying no when the current interlocutor is Professor Higgate and that we do not speak lojban is available:
	try discussing that we do not.

Instead of saying yes when the current interlocutor is Professor Higgate and that we do not speak lojban is available:
	say "I could, of course, but she'd then wonder where we picked it up. Better not.";
	now that we do not speak lojban is listed.


Every turn when the current interlocutor is Professor Higgate and we do not speak lojban is available:
	try discussing  we do not speak lojban.

that we do not speak Lojban is an unlisted informative quip. Understand "no" as  that we do not speak Lojban.
	[The mentions-list is {constructed language}.]
	The comment is "'I'm afraid I don't understand,' we say, smiling faintly.".
	The reply is "Her face falls. 'Ah! I was hoping you'd be here for Conversational Lojban Tea.' The room is conspicuously lacking other Lojban conversationalists.[queue cucumber regret]".
	It quip-supplies Professor Higgate.
	It directly-follows lojban-greeting.

cucumber regret is an NPC-directed quip.
	The reply is "'I'd offer you some cucumber sandwiches,' Professor Higgate says. 'But I'm afraid I ate them all.'"

how Professor Higgate seems doing is a questioning quip.
	The printed name is "how Professor Higgate is doing". The true-name is "how Professor Higgate seems doing".
	Understand "is" or "she" or "how are you" as how Professor Higgate seems doing.
	[The mentions-list is {Professor Higgate}.]
	The comment is "'How are you?' we ask.

Forgive me these irrelevant questions, but I haven't seen Professor Higgate for a few days, and she's one of my fav[our]ite people in the department. I worry about her a little.".
	The reply is "She looks taken aback, as though trying to figure out whether she knows us. Then she shrugs this off and decides to proceed as though she does.

'Oh, you know,' she says. 'It's that time of year when the energy's run out and the students have to be prodded with an electric rod to get them to do any work. And then I've got this book I've got to write, and Professor Waterstone keeps talking about how next year he would like to take a break from being Director of Graduate Studies...'".
	It quip-supplies Professor Higgate.
	It indirectly-follows that we do not speak Lojban.

what would be so bad about directing graduate studies is a questioning quip.
	[The mentions-list is {employment}.]
	The comment is "'What would be so bad about being director of graduate studies?' I ask, a little surprised. I always thought she liked graduate students.".
	The reply is "'Nothing, nothing! It's just that I have this book I should be writing, and Professor Waterstone has done the job for so many years that he's[--]'

She pulls up short, apparently remembering that she doesn't, actually, know us at all. 'He's very experienced, and I am not sure he would enjoy watching someone else do it differently,' she concludes tactfully. 'Our personal styles are not very similar.'".
	It quip-supplies Professor Higgate.
	It indirectly-follows how Professor Higgate seems doing.

An availability rule for what the romance novel might be:
	if heart to heart is marked invisible:
		it is off-limits.

what the romance novel might be is a questioning quip.
	[The mentions-list is {heart to heart}.]
	The comment is "'What are you reading there?' we ask, in our best earnest undergraduate voice.".
	The reply is "She blushes very faintly. 'It's a novel in Láadan,' she says. 'A relatively little-spoken language, but I'm trying to master it. It was designed as a language for women, which has interesting sociological implications, though I fear it was not as widely taken up as the designer might have hoped.'".
	It quip-supplies Professor Higgate.
It is background-information.

[Originally the novel was in Fukhian, which I picked off a webpage on constructed languages because I liked the look of the script. But later, reading Arika Okrent's In the Land of Invented Languages as research, I ran across Láadan, which — with its highly elaborated vocabulary of body parts, and the sentence modifiers that mean things like 'I say the following in a loving fashion' — seemed a more likely language for constructed romance novels.]

whether Professor Higgate would translate part of the novel is a questioning quip.
	Understand "she" as whether Professor Higgate would translate part of the novel.
	[The mentions-list is {constructed language, heart to heart}.]
	The comment is "'Would you translate part of it for me?' we ask.".
	The reply is "The blush deepens. 'Well, some of the ideas are hard to express in single words of English. This suffix, for instance, has a pejorative meaning, so when it is attached to, ah, the word for experiencing a sexual act, that may suggest that the act was unsatisfactory.'".
	It quip-supplies Professor Higgate.
	It directly-follows what the romance novel might be.

whether she encountered activists is a questioning quip.
	[The mentions-list is {activist, environment}.]
	The comment is "'Did you by any chance encounter some activists on the way into the building?' we ask. 'I had a hard time getting in here because they wanted to talk to me about toxi waste.'".
	The reply is "'[i]Yes[/i],' she says. 'Now those kids! If we needed proof of the social value of what we're doing here, they're a perfect example. I admire their enthusiasm, don't get me wrong, but the whole idea of single-term manipulation is hopelessly wrong-headed, and if they spent a semester or two in a Language Studies class, they'd understand why.'".
	It quip-supplies Professor Higgate.
	It is background-information.

An availability rule for whether she might let us into the language studies seminar room:
	if the seminar room is visited:
		it is off-limits.

whether she might let us into the language studies seminar room is a questioning quip.
	The comment is "'Could you possibly let me into the Language Studies Seminar Room?' we ask. 'There's something I'd like to do in there.'".
	Understand "higgate" or "her" or "professor" as whether she might let us into the language studies seminar room.
	[The mentions-list is {seminar door, key}.]
	The reply is "'Er... Do you have some student ID or something? You see, and this is a little embarrassing, I'm afraid I'm not quite placing you at the moment, and I'm not supposed to allow students into that room unless they have some affiliation with the department.'

Of course we don't have any ID, and no prospect of getting any. But she might be persuaded by some other evidence of affiliation[if the player does not enclose the Problem of Adjectives]. Maybe a book to return[end if].".
	It quip-supplies Professor Higgate.

An availability rule for how we might return a book:
	if the player does not enclose Problem of Adjectives:
		it is off-limits.

how we might return a book is a demonstration quip.
	The comment is "'I need to return this book to the department library,' we say, holding out [Problem of Adjectives].".
	Understand "can" or "could" or "might" as how we might return a book.
	[The mentions-list is {Problem of Adjectives}.]
	The reply is "'Oh! Yes, all right,' she says. 'Did you like it? It's a good overview of the subject, didn't you think? I'm afraid the author once annoyed Professor Waterstone at a conference, or we might have had her around to speak at one of our colloquia...'".
	It quip-supplies Professor Higgate.

[Instead of looking in Samuel Johnson Hall when Professor Higgate is in Samuel Johnson Hall:
	follow the room description heading rule;
	say "We stand politely a few paces back from the southeast door, which is currently occupying Higgate's attention. [run paragraph on]"

Report approaching Samuel Johnson Hall when Professor Higgate is in Samuel Johnson Hall:
	say "We walk a little behind Higgate, who has a very long businesslike stride despite her heels." instead.

Rule for listing exits when looking in Samuel Johnson Hall when Professor Higgate is in the location:
	do nothing instead.

Report Professor Higgate unlocking the seminar door with something:
	say "She fiddles with her keys for a moment before finding the right one. [run paragraph on]" instead.

Report Professor Higgate opening the seminar door:
	say "'Here we you go,' she says, pushing the door open." instead.

Report Professor Higgate getting off the chair:
	say "Higgate stands, patting herself down as though worried she has forgotten something." instead.

Report Professor Higgate going a direction when the location is Higgate's Office:
	say "She walks past us through the office door." instead.

Report Professor Higgate going southwest to the Seminar Room:
	say "She steps inside." instead.]

Report Professor Higgate going a direction (called way):
	say "She waves and heads back [way]." instead.

[From early on in the game, PAINT was an available object, since it's very linguistically productive, offering PANT, PINT, PIN, PAN, PAT, etc. At one point, the player got this paint from Professor Higgate's office, a remnant of the redecoration in progress there.

But ultimately, PAINT didn't fit too well into the puzzle structure I was building, and many of the things it offered could be created from other objects sooner or later. So I cut the object and commented out the associated dialogue passages.]

[An availability rule for whether she needs the paint:
	if the paint is not visible or the paint is released:
		it is off-limits.

whether she needs the paint is an unlisted questioning quip.
	The comment is "'Looks like you've got some paint left over from the trim job. Very pretty, by the way.'".
	Understand "higgate" or "professor" as whether she needs the paint.
	[The mentions-list is {paint}.]
	The reply is "'Oh! Yes, I never got around to disposing of it, I'm afraid. The regulations have gotten so strict lately. It might be toxic, so you're not supposed to just throw it away, and of course I could transform it into something else but they look askance on the disposal even of transformed chemicals.'".
	It quip-supplies Professor Higgate.

Instead of asking Professor Higgate to try giving the paint to yourself:
	try discussing if we can take the paint.

Instead of asking Professor Higgate for the paint:
	if the paint is released:
		say "She has already said we could have it.";
	otherwise:
		try discussing if we can take paint.

if we can take the paint is a questioning quip.
	The comment is "'I'd be happy to dispose of the paint for you,' we say. 'It would be no trouble.'".
	[The mentions-list is {paint}.]
	The reply is "'Oh! Well, that's very kind of you. Make sure you do it properly!'".
	It quip-supplies Professor Higgate.
	It indirectly-follows whether she needs  paint.

Carry out Professor Higgate discussing if we can take the paint:
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
	[The mentions-list is {pint}.]
	The reply is "'Perfectly,' she says. 'Tea and water for me.'".
	It quip-supplies Professor Higgate.

Before going from Higgate's office when the paint is released and the player does not enclose the paint:
	try Professor Higgate discussing paint-recycling instead.

paint-recycling is an NPC-directed quip.
	The reply is "[one of]'Wait [--] weren't you going to dispose of the paint for me?'[or]'Do take the paint with you now if you want it,' she says. 'I may be gone later.'[or]'You're forgetting the paint again,' she says.[stopping]". Before going from Higgate's office when the paint is released and the player does not carry the paint:
	try Professor Higgate discussing paint-recycling instead. ]

which conlangs she kens is a questioning quip.
	The printed name is "which conlangs she knows". The true-name is "which conlangs she kens".
	Understand "knows" or "what" or "languages" or "language" as which conlangs she kens.  The comment is "'Which conlangs do you know, then?'".
	[The mentions-list is {constructed language}.]
	The reply is "'Esperanto, Volapük, and Lojban, naturally,' she says. 'Interlingua, a bit of Fukhian,' (she is careful to pronounce the h sound), '...Quenya, Klingon, Royeship, Toki Pona... and several others in which I am not fluent enough to speak, but know well enough for the purposes of study.'".
	It quip-supplies Professor Higgate.

Section 7 - Professor Waterstone

W-identifies is an NPC-directed quip.
	The reply is "He looks up at us gravely. 'I don't believe we've met,' he says. 'Can I help you?'"

A first conversation-reply rule when the current interlocutor is professor Waterstone:
	if the player does not recollect please-get-out and please-get-out is not listed in the planned conversation of Professor Waterstone and Professor Waterstone recollects at least two quips:
		queue please-get-out as postponed obligatory.

After reading a command when Waterstone is marked-visible and make up some excuse is available (this is the replace make with excuse rule):
	if the player's command includes "make":
		replace the matched text with "excuse".

Instead of saying yes when Waterstone is marked-visible and make up some excuse is available:
	try discussing make up some excuse.

make up some excuse is a performative quip.
	[The mentions-list is {yourself}.]
	The comment is "'I'm a prospective student,' we say. Immediately I regret it: we look too old to be an undergraduate prospective, and Waterstone would know all the graduate prospectives personally.".
	The reply is "He raises an eyebrow. 'At your age?' [paragraph break]'I took some time off school,' we remark. [paragraph break]Some professors would greet this with warmth or sensitivity or at least good manners. Waterstone says, 'Well, in that case, it is to be hoped that you spent those wasted years on [i]some[/i] valuable activity. What did you need from me?'".
	It quip-supplies Professor Waterstone.
	It is restrictive.
	It directly-follows W-identifies.

that we just dropped by to meet him is an informative quip.
	[The mentions-list is {Waterstone}.]
	The comment is "'I just dropped by to meet you,' we say. 'I had heard good things about your teaching.'".
	The reply is "'I rarely teach undergraduates,' he remarks. 'You would spend your time more profitably by making the acquaintance of the teaching assistants or perhaps' [--] and here he enunciates the name with distaste [--] 'Professor Brown.'".
	It quip-supplies Professor Waterstone.
	It directly-follows make up some excuse.

where to find Professor Brown is a questioning quip.
	[The mentions-list is {Professor Brown}.]
	understand "where there seems" as where to find Professor Brown.
	The comment is "'Where might I find Professor Brown?' we ask.".
	The reply is "'He is most likely in the basement,' says Professor Waterstone exactly. '[one of]L-removing POOL[or]R-removing DOOR[or]N-removing TENANTS[or]L-removing TILT[or]A-removing SODA[cycling], no doubt.'".
	It quip-supplies Professor Waterstone.
	It is repeatable.
	It is background-information.

whether he met the activists is a questioning quip.
	[The mentions-list is {environment}.]
	The comment is "'Did you run into those activists outside?'".
	The reply is "'Sadly, it is our misfortune constantly to encounter people with no concept of what language manipulation can and cannot do,' Waterstone says. He really seems to be in a bad mood today, even for him: maybe a fight with the wife, or a nasty letter from the dean.".
	It quip-supplies Professor Waterstone.

what he kens about me is an unlisted questioning quip.
	The printed name is "what he knows about me". The true-name is "what he kens about me".
	Understand "knows" as what he kens about me.  The comment is "'Actually, I did wonder: do you have a student named Alex Rosehip? One of the teaching assistants, I think?'".
	[The mentions-list is {yourself}.]
	The reply is "He looks at us with an unusually keen stare. 'He is an advisee of mine,' says Waterstone. 'A bright scholar, but I fear that he has taken on board some dubious ideas about the [i]applications[/i] of what we study. I would suggest that you take anything he may have said to you with a grain of salt.'".
	It quip-supplies Professor Waterstone.

Availability rule for why he seems working on Serial Comma Day:
	if the player knows carpets-shampooed:
		it is off-limits.

why he seems working on Serial Comma Day is a questioning quip.
	The printed name is "why he is working on Serial Comma Day". The true-name is "why he seems working on Serial Comma Day".
	Understand "is" or "professor" or "waterstone" as why he seems working on serial comma day.  The comment is "'Why are you in today?' we ask. 'Isn't it a holiday?'".
	[The mentions-list is {Waterstone, celebration}.]
	The reply is "'The pursuit of knowledge does not occur according to the calendar,' he says. Then he adds, 'And my wife is having the carpets shampooed[carpets-shampooed] and kicked me out of the house.'".
	It quip-supplies Professor Waterstone.


Availability rule for why he doesn't go to the demonstration:
	if the player does not know waterstone-invited:
		it is off-limits.

why he doesn't go to the demonstration is a questioning quip.
	The comment is "'I'm surprised you're not at this demonstration,' we say, gesturing towards the invitation on his desk. 'It looks interesting.'".
	Understand "professor" or "waterstone" as why he doesn't go to the demonstration.
	[The mentions-list is {invitation}.]
	The reply is "'Does it?' he asks wearily. 'It sounds like a dead bore to me. Unfortunately, I can be neither at the demonstration nor at home at the moment. I have this blasted presentation to finish[if the player does not know carpets-shampooed], and my wife is having the carpets shampooed[carpets-shampooed] [--] on a holiday! [--] and won't let me work in my own study[otherwise] and thanks to the carpets I can't work in my own study[end if].'".
	It quip-supplies Professor Waterstone.

Please-get-out is an NPC-directed quip.
	The reply is "'Look, I really must work on this,' says Waterstone, chasing us to the door. 'Perhaps someone else in the department can answer a few of your questions. I believe I saw Professor Higgate earlier, and Professor Brown is usually in his lab downstairs. I'm sure he's not working on anything too urgent. Goodbye!'"

Report someone discussing please-get-out:
	say "[reply of please-get-out][paragraph break]";
	reset the interlocutor;
	silently try going south;
	shut the office;
	try looking instead.

[At the time when Waterstone gets annoyed:
	if the location is not Waterstone's Office:
		shut the office. ]

To shut the office:
	say "The office door closes with measured firmness behind us.

Through the window in Waterstone's door, we can see him turning the lock. When he catches us watching he gives a tight, unfriendly smile and goes back to his desk.";
	now office-door-1 is closed;
	now office-door-1 is locked;
	[try Waterstone closing office-door-1;
	try Waterstone locking office-door-1 with od-key;
	carry out the caching scope activity with the player;]
	if the department printer is switched on:
		say "[line break]A moment later the printer whirs thoughtfully.";
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
	if it is the spill or it is a pita or it is the piece or it is a sign:
		yes;
	if it is proffered by the spill or it is proffered by a pita or it is proffered by the piece or it is proffered by a sign:
		yes;
	no.

Brock-argument ends when Brock is not in the location.

Before inserting something into the t-inserter when Brock is in the location and the t-inserter contains something (called target):
	say "'[one of]Here, [the target] [are] in your way[or]Let me get that for you[or]Here[or]I've got that[at random].' [run paragraph on]";
	try Brock taking the target;
	if Brock is carrying the target:
		try Brock dropping the target;
	otherwise:
		say "Brock tries to remove [the target] from the T-inserter for you, but fails."

Report Brock taking something:
	say "Brock fishes [the noun] out of the T-inserter. [run paragraph on]" instead.

Report Brock dropping something:
	say "He tosses [regarding the noun][them] in the corner." instead.


Rule for beat-producing when Brock is the current interlocutor:
	say "[one of]He pauses, listening for noises outside[or]He stands back, regarding the T-inserter thoughtfully[or]He runs a hand over [the random thing which is part of the t-inserter][or]He knocks on the top of the T-inserter[or]He runs his fingers over the surface of the machine, checking for hot spots[or]He cranes to look around at the back of the machine, but doesn't find anything interesting[as decreasingly likely outcomes]. [run paragraph on]".

Report Brock saying hello to the player for the first time:
	now the player knows brock-found;
	complete "Find Brock";
	assign "Test T-inserter on making creatures";
	assign "Test T-inserter on making abstracts";
	assign "Test T-inserter on situations where it could build more than one thing";
	assign "Escape the Bureau";
	now the brock-commented-garment is a random thing worn by the player;
	if the brock-commented-garment is not nothing:
		queue nice-garment as postponed optional;
	queue weird-you-look as postponed optional instead;

The brock-commented-garment is a thing that varies.

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
	[carry out the caching scope activity with brock;]
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

A Brock-suggestion rule when find noisy thing is not nothing:
	try Brock discussing interference-gelling;
	rule succeeds.

A Brock-suggestion rule when a self-object is marked-visible and Brock does not recollect surprisingly-handsome:
	try Brock discussing surprisingly-handsome;
	rule succeeds.

A Brock-suggestion rule when a fake person is in location:
	if Brock does not recollect getting-crowded or how-many-people-here is greater than 3 or a random chance of 1 in 4 succeeds:
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

weird-you-look is an NPC-directed quip.
	The reply is "'It's weird [--] you have a different face but the expressions are still yours. It's like you have a really good rubber mask on.'"

nice-garment is an NPC-directed quip.
	The reply is "'[worn-thing].'"

To say worn-thing:
	if the player wears the brock-commented-garment:
		say "Nice [brock-commented-garment]";
	otherwise:
		say "[regarding brock-commented-garment][Those] [brock-commented-garment] looked cool on you".

suggest we get out of here is a performative quip.
	The comment is "'You've been a lump of igneous all day,' you say. 'It's getting dark out there. If we don't get out now, we're going to get caught by some janitor with a privative affixer.'".
	[The mentions-list is {yourself, bureau, security}.]
	The reply is "'I didn't have time to run the tests I wanted to run on the T-inserter. It'll take three minutes and then we can go. We need to do abstracts, animates, and a stability check.'".
	It quip-supplies Brock.
	It is restrictive.

insist on leaving immediately is a performative quip.
	The comment is "I say, 'If we get caught down here, we'll all be put on trial, my father could lose his job, the professor who helped me get in here might face prosecution...'

'Not to mention the part,' you cut in, 'where we all get stuck on a shelf to eternally contemplate the spelling of [']knickknack['].'".
	[The mentions-list is {yourself, bureau, family, security}.]
	The reply is "'Four consonants in a row, baby,' he murmurs. 'You know what makes me hot.'

'Brock.' The warning tone in your voice gets through to him, whereas apparently he has zero interest in the welfare of my entire social circle.

'Three minutes. The value of that data could be in the millions.'".
	It quip-supplies Brock.
	It directly-follows suggest we get out of here.

accept Brock's lunacy is a performative quip.
	The comment is "'I suppose it's pointless to argue,' you say. I'm glad this makes [i]you[/i] feel warm and fuzzy. 'Let's do this thing and get out.'".
	[The mentions-list is { t-inserter, yourself, plans }.]
	The reply is "'You know it.'".
	It quip-supplies Brock.
	It directly-follows suggest we get out of here.

An availability rule for complain about Brock's recklessness:
	if Brock-argument is not happening:
		it is off-limits;
	if the time since Brock-argument began is greater than 4 minutes:
		it is off-limits;
	make no decision.

complain about Brock's recklessness is a performative quip.
	The comment is "'This was rash, even for you,' you say. 'Wandering into the heart of the Bureau with no back-up and no escape plan, when we had a timed extraction to complete? You could've taken me and Slango down with you.'".
	[The mentions-list is {Brock, yourself, bureau}.]
	The reply is "'Sweetheart, don't,' Brock says. 'Don't do this now. You're not yourself.'".
	It quip-supplies Brock.

remind Brock that synthesis was necessary because of him is a performative quip.
	The comment is "'Not myself,' you repeat coldly. 'I wouldn't need to be synthesized if Andra's face hadn't been caught on film. And whose fault was [i]that[/i]?'".
	[The mentions-list is {Brock, yourself}.]
	The reply is "Silence. 'I'm sorry that that happened,' he says, very deliberately. 'But you're not breaking up with me down here, with a spy inside your head. We'll do this later if we do it at all.'".
	It quip-supplies Brock.
	It directly-follows complain about Brock's recklessness.

defend Alex is a performative quip.
	The comment is "'Alex is not a spy,' you say. 'He's naive and[--]' I make us stop talking right there, thanks very much.".
	[The mentions-list is {Brock, yourself}.]
	The reply is "'He's us,' Brock replies. 'Come on, let's just get this over with and get out of here. We can talk this all out when we're all feeling more like ourselves, okay?'".
	It quip-supplies Brock.
	It directly-follows remind brock that  synthesis was necessary because of him.

accept his advice is a performative quip.
	The comment is "'Fine.' I can feel the adrenaline from your anger coursing through us. It makes me want to take a swing at something, but you have it under control.".
	[The mentions-list is {yourself}.]
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

discover why Brock got stuck here is a performative quip.
	The comment is "'How did this happen?'".
	[The mentions-list is {Brock, yourself, security, bureau}.]
	The reply is "'How do you think? I hung back after a demonstration earlier, trying to collect the extra information I needed, but before I could finish, they'd noticed I was missing from the group and sent someone back to look for me. And better to go inanimate than to be definitely caught in human form.'".
	It quip-supplies Brock.

rejoice that brock seems okay is a performative quip.
	The printed name is "rejoice that Brock is okay". The true-name is "rejoice that brock seems okay".
	Understand "is" as rejoice that brock seems okay.  The comment is "'That was a lot narrower than I like,' you say. To my horror, we are tearing up a little. 'I thought you might be in Cold Storage already.'".
	[The mentions-list is {yourself, Brock}.]
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

claim-to be fine is a performative quip.
	The comment is "'Fine,' you say. 'It's like running in a three-legged race all day, and I don't welcome the interference, but I'll be fine.'". The printed name is "claim to be fine". The true-name is "claim-to be fine".
Understand "claim" or "to" as claim-to be fine.
	[The mentions-list is {yourself, Brock}.]
	The reply is "'Good.' He pauses. 'New you is kind of hot, but I miss the old version.'".
	It quip-supplies Brock.
	It directly-follows rejoice that brock seems okay

test-abstracts is an NPC-directed quip.
	The reply is "[one of]'[Next] we should see whether this thing can reify abstracts.'[or]'If it can't do abstracts, the market value is going to be a lot lower because of the limited-depth trees.'[or]Brock goes on about the importance of abstracts.[stopping]".

test-creatures is an NPC-directed quip.
	The reply is "[one of]'[Next] it would be good to see if this thing can build animates.'[or]'If it can't do animates, that might be down to a legal restriction, of course, rather than a technical one, but I imagine that they'd be demo'ing a fully-capable product in this context.'[or]'Have you got anything that's just a T away from being a living animal?'[or]Brock mentions again that he'd like to see whether the machine can do an animate.[stopping]".

test-stability is an NPC-directed quip.
	The reply is "[one of]'[Next] we need to look at the stabil[ization] performance,' Brock says. 'Inserters sometimes run into trouble if there's a case where the same base word could be expanded to multiple derivatives [--] for instance, if you S-inserted CREAM, it wouldn't know whether to make CREAMS or SCREAM or SCREAMS.'[or]'Some inserters,' Brock goes on, 'have controls to let you insert the minimum or maximum possible number of letters.'[or]'Of course,' he says, 'even min-max controls don't completely disambiguate, since as in the example of CREAMS and SCREAM, you might have two one-letter insertions that are possible.'[or]'What really makes a machine like this valuable is the combination of power and flexibility with control. An anagramming gun has a great deal of power but almost no control, which is the problem with it.'[or]Brock's lecture on the technology of insertion continues.[stopping]".

good-abstracts is NPC-directed quip.
	The reply is "'[if Brock recollects test-abstracts]Right. It's good on abstracts, then[otherwise]Hm, an abstract. That was something I wanted to check[end if],' Brock says[if an r-abstract thing is in the T-inserter], contemplating [the random thing in the T-inserter][end if][if the tattle is in the T-inserter]. 'Lord, that thing is annoying.'[otherwise].[end if]"

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

what buried command center he heard of is a weakly-phrased questioning quip.
	The comment is "'Buried command cen[ter]?' you ask. 'Isn't there a pretty unsecret command center above-ground?'".
	[The mentions-list is {Bureau, Brock}.]
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
	The reply is "[one of]Brock steps to the side to make room for [the list of fake people *in location][or]'We're going to need to install stadium seating in here,' Brock comments, nodding at [the list of fake people *in location][or]'If any guards come, we can use [the random fake person in location] as a decoy,' Brock remarks[at random]."

After Brock discussing interference-gelling:
	let the interference be find noisy thing;
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

Brock-smoochies is an unlisted performative quip.
	The printed name is "ask Brock to kiss you".
	The true-name is "Brock-smoochies".
	The comment is "You put our arms around Brock. He looks surprised, then pulls us in."
	The reply is "'I thought we would leave this kind of thing until you were gelled,' Brock comments after a moment, pushing a bit of [if the player is wearing the wig or the player is wearing a hairpiece]fake [end if]hair out of our eyes. 'Does your passenger not mind?'

I mind, for the record. I totally mind. And the fact that this body is enthusiastic about kissing Brock just makes it weirder.

He reads the expressions crossing our face and lets go. 'Come to think of it, maybe [i]I[/i] mind.'

An awkward pause."
	It quip-supplies Brock.

Test kpbug with "tutorial off / talk to girl / topics" in dormitory room.

Rule for listing peripheral quips during Brock-argument:
	if a quip in quip-repository is peripheral:
		prepare a list of peripheral quips in quip-repository;
		say "[quip-suggestion-phrase][the prepared list delimited in disjunctive style][get-to-work]."

Rule for listing plausible quips during Brock-argument:
	if a quip in quip-repository is plausible:
		prepare a list of plausible quips in quip-repository;
		say "[quip-suggestion-phrase][the prepared list delimited in disjunctive style][get-to-work]."

To say get-to-work:
	say "[one of]. Then again, we could just get to work so we can be out of here faster[or]. Maybe it's not worth it, though[or]. Or, then again, there's always finishing the job[stopping]".

Test Brockscene with "tutorial off / autoupgrade / unmonkey / open tub /  gel rock / suggest we get out / insist / ask about buried command / wave g-remover at sign / put sin in the t-inserter / gel stint / wave g-remover at sign / wave s-remover at sin / i / put sin in t-inserter / wave s-remover at stint / wave n-remover at tint / wave t-remover at tit / put i in t-inserter / wave t-remover at tit / put i in t-inserter / get rock / i" holding the tub in the Equipment Testing.

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

[My mother is a woman.]
Understand "mom" or "ma" or "mum" or "mommy" or "rosehip" or "mrs rosehip" as my mother.
The initial appearance of my mother is "My mother is here, looking around as though she would like to comment on my housekeeping."
The description of my mother is "She is a tall woman with short brown hair expertly cut, and a tailored suit."
The introduction of my mother is "She has in addition a certain air which is very rare on this island: the air of seeming not to care whether anyone is watching her, or whether she is exhibiting the proper respect for authority."

Sanity-check kissing my mother:
	say "Save the skeezy Oedipal reenactments for when you're inhabiting your own body, eh?" instead.

Instead of waiting in the presence of my mother:
	say "[beat][line break][paragraph break]".

Rule for beat-producing when the current interlocutor is my mother:
	[carry out the caching scope activity with my mother;]
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
		let target be random-visible-thing;
		if target is not nothing:
			try my mother examining the target;
		else:
			say "Mother looks faintly bewildered.[no line break]";
	say run paragraph on.

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
	let I be "[the noun]";
	if the noun is enclosed by the player:
		now I is "our [noun]";
	say "Mother [one of]stares absently at [I] for a moment[or]spaces out a bit, contemplating [I][or]appears to be meditating about [I][at random].[run paragraph on]" instead.

Sanity-check going from My Apartment when confrontation-with-mother has not happened:
	move my mother to the location instead.

Sanity-check going from My Apartment during confrontation-with-mother:
	say "I don't quite dare just walk out on Mother. Partly it's habit, partly the sense that she's more upset than she's letting on, and that if we push her the wrong way she'll contact the authorities." instead.

Confrontation-with-mother is a scene. Confrontation-with-mother begins when my mother is in the location.

When confrontation-with-mother begins:
	say "We're about to, when the door to the street opens and my mother walks into the room. She shuts it behind her and puts away her key before she notices us. Then she stands very still. For about a quarter second she considers calling the police, but I can see that worry passing away again as she takes in our clothing, age, and general demean[our].";
	now my mother is marked-visible;
	set the current interlocutor to my mother;
	try my mother discussing hi-there-Im;
	queue final-goodbye as postponed obligatory.

hi-there-Im is an NPC-directed quip.
	The reply is "'Hi there,' she says, coming forward to take our hand. 'I'm [Mrs] Rosehip. Alex Rosehip's mother. You must be a friend of his?'"
	The nag is "Mother just stands there with an arched eyebrow. Any minute now I'm going to blurt something out through sheer force of habit."
	It is restrictive.

Instead of saying no when my mother is marked-visible and we're his girlfriend is available:
	say "What are the other options, really? Shall we claim to be burgling my apartment? To be a roommate she's never heard of, who is living with furniture that obviously isn't here? To be the gas man, a fire inspector, the police? None of that has a hope of working."

Instead of saying yes when my mother is marked-visible and we're his girlfriend is available:
	try discussing we're his girlfriend.

we're his girlfriend is an informative quip.
	The comment is "'Yes [--] sort of. We've been... I mean, we've been on a few dates.' That's you, and I have to say you don't sound as keen on dating ourself as you might.".
	Understand "we are" or "to be" as we're his girlfriend.
	[The mentions-list is {romance, yourself}.]
	The reply is "She raises her eyebrows. 'I see. How secretive of him not to bring you around. And where is Alex now? I need to speak with him. He's been hard to reach lately[queue how-well-do-you as immediate obligatory].'

I know you think it's a bit sketchy that my mother just walks into my apartment when I'm not around, but I swear to you she's never done that before. She must be more worried about something than she's letting on.".
	It quip-supplies My mother.
	It is restrictive.
	The nag is "[one of]'Come, dear, it's not a difficult question,' she says[or]She's still waiting for us to answer[stopping]."
	It directly-follows hi-there-Im.

claim to hath seen him this morning is a performative quip.
	The printed name is "claim to have seen him this morning". The true-name is "claim to hath seen him this morning".
	Understand "have" as claim to hath seen him this morning.  The comment is "'He went out to, ah, do some research, I think. He left before I was completely awake.' (Thanks, now you've given my mother the impression that I'm a cad.)".
	[The mentions-list is {romance}.]
	The reply is "She looks at the disheveled futon[if the futon is non-empty], with [the list of things *in the futon] still arranged on it[end if], and her expression becomes even more unreadable. 'I did think I'd taught my son better manners,' she remarks. 'I apolog[ize] on his behalf.'".
	It quip-supplies My mother.
	It directly-follows we're his girlfriend.

Instead of shrugging when my mother is marked-visible and we don't ken is available:
	try discussing we don't ken.

we don't ken is an informative quip.
	The printed name is "we don't know". The true-name is "we don't ken".
	Understand "know" as we don't ken.  The comment is "'I don't know,' we say.".
	[The mentions-list is {yourself}.]
	The reply is "'A communicative couple, then,' she says dryly. My mother has never been very nice to girlfriends she considered stupid.".
	It quip-supplies My mother.
	It directly-follows we're his girlfriend.

how-well-do-you is an NPC-directed quip.
	The reply is "'How well do you know him?' Mother asks. She immediately catches herself, and adds: 'I'm not inquiring into the details of your relationship. But I am concerned about him. He has seemed very unhappy recently about his work. Has he said anything to you about that? Wanting to leave the program, or change careers, or... anything?' [paragraph break]I didn't think she'd noticed."

reassure Mother is a performative quip.
	The comment is "'I think it's graduate school getting to him a bit,' we lie. I am pretty sure this is what my mother thinks: she has little time for whining or sulking, and I believe she considers any ideological queasiness I may have exhibited to be just malingering about research that is not going well.".
	[The mentions-list is {yourself, education}.]
	The reply is "'Really?' she says. 'Hm.' [paragraph break]I would like her to go on, but she doesn't: because it would be indiscreet, because she doesn't trust us.".
	It quip-supplies my mother.
	It directly-follows how-well-do-you.

suggest the truth is a performative quip.
	The comment is "'I think he feels that there are things linguistic studies could accomplish if we were less hampered by local laws and corporate interests,' we say. 'Big improvements to quality of life for the poor, for instance.'".
	[The mentions-list is {constructed language}.]
	The reply is "She looks at us keenly. 'Did he say what he intended to do about that?'".
	It quip-supplies my mother.
	It is restrictive.
	It directly-follows how-well-do-you.

we wouldn't do anything dangerous is an informative quip.
	Understand "danger" as we wouldn't do anything dangerous.
	The comment is "'I'm sure he wouldn't do anything dangerous,' we lie. 'After all, his ideas wouldn't be useful to anyone if he were arrested.'".
	[The mentions-list is {bureau, yourself}.]
	The reply is "'No, of course!' But I think she knows we're lying about something, even if she is not sure what that something is.".
	It quip-supplies my mother.
	It directly-follows suggest the truth.

Instead of saying no when my mother is marked-visible and probably nothing is available:
	try discussing probably nothing.

probably nothing is an unlisted weakly-phrased informative quip.
	The comment is "'No, no. Probably nothing,' we say.".
	[The mentions-list is {yourself}.]
	The reply is "'Hm.'".
	It quip-supplies my mother.
	It directly-follows suggest the truth

not-planning-dinner is an NPC-directed quip.
	The reply is "'Evidently not planning to have dinner at home this evening,' she comments."

Instead of saying no or saying yes when my mother is marked-visible and explain we might go out is available:
	try discussing explain we might go out.

explain we might go out is a performative quip.
	The comment is "'We were thinking of going out.'".
	[The mentions-list is {food, yourself}.]
	The reply is "'Were you?' she says lightly. 'Then you're definitely going to see him this evening. Where do you have reservations?' [paragraph break]There, see: I wish you wouldn't embellish on your own.".
	It quip-supplies my mother.
	It is restrictive.
	It directly-follows not-planning-dinner.

Instead of shrugging when my mother is marked-visible and  claim he didn't say  is available:
	try discussing  claim he didn't say .

claim he didn't say is a weakly-phrased performative quip.
	The comment is "'Er... he didn't tell me. I assume he'll explain later.'".
Understand "did" or "not" or "alex" as claim he didn't say.
	[The mentions-list is {food}.]
	The reply is "'...Mm.'".
	It quip-supplies my mother.
	It directly-follows explain we might go out.

monocle-comment is an NPC-directed quip.
	The reply is "'He must like you,' she says, 'if he lets you wear his monocle. He's very proud of that. But do be careful with it [--] it would be a little embarrassing if someone were to catch you with it. Alex's father was technically not supposed to remove it from the Bureau.'"

agree to take care of the monocle is a weakly-phrased performative quip.
	The comment is "'I'll be very careful with it.'".
	[The mentions-list is {monocle}.]
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
	now father is marked-visible;
	set the current interlocutor to father;
	continue the action.

Confrontation-with-father is a scene. Confrontation-with-father begins when the current interlocutor is father.

Sanity-check going somewhere during confrontation-with-father:
	say "I can't walk away on him. Not until I know what he means to do." instead.

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
	[The mentions-list is {yourself}.]
	The reply is "He sighs. Not deceived even a little; weary that we tried.".
	It quip-supplies father.
	It directly-follows dont-say.

dont-say is an NPC-directed quip.
	The reply is "'Your mother told me about meeting your supposed girlfriend at your apartment. She was puzzled by that, but I knew what must have happened,' my father says, in a very low voice[if the noisemaker is something], just barely audible to us over the sound of [the noisemaker][end if]. 'I deleted the record of your unauthor[ize]d synthes[ize]r draining the power grid, which, by the way, could get me dismissed.'"

what-are-you is an NPC-directed quip.
	The reply is "'I didn't tell your mother what I suspected, but when it comes out you've… defected… I won't be able to keep this from her. And you're giving up your career. Mine too, possibly; we'll all be under suspicion, I suppose.

'It's pointless. You could have done a great deal for the Bureau from within. I was trying to help you see that.'"

lay out our reasons is a performative quip.
	The comment is "'I want to do something that matters,' I say. 'I don't see my work making a speck of difference here.'".
	[The mentions-list is {immigration, yourself}.]
	The reply is "'You mean you don't see [i]my[/i] work as important,' he says. 'Got that from your mother, I imagine.'".
	It quip-supplies father.
	It directly-follows what-are-you.

Instead of saying no when father is marked-visible and be comforting is available:
	try discussing be comforting.

Instead of saying sorry when father is marked-visible and be comforting is available:
	try discussing be comforting.

be comforting is a weakly-phrased performative quip.
	Understand "comfort" as be comforting. The comment is "'It did matter to me that you tried to help,' we say. 'But no one here is ever going to try my solution. I have to leave if I want to, well, to take my shot at saving the world, essentially.'".
	[The mentions-list is {yourself, research}.]
	The reply is "'That's not[--]' He bangs his fist into the wall and pulls it away with a wince. 'That's not how it works. Jesus. Saving the world is boring and incremental and institutional. I mean, it will be for you too [--] if you want to do your crazy project the first thing you're going to need to do is spend hours in meetings with NGOs.'".
	It quip-supplies Father.
	It directly-follows what-are-you

new-friends is an NPC-directed quip.
	The reply is "'So your partners in crime are, what, smugglers? Industrial saboteurs? That's wonderful. Finally some [i]role models[/i].'"

quibble is a weakly-phrased performative quip.
	The comment is "'We prefer to think of it as ensuring that important technology does not remain the sole property of a restrictive hegemony,' we say. ".
	[The mentions-list is {yourself}.]
	The reply is "'Okay, around here we still call that theft,' Father says.".
	It quip-supplies father.
	It directly-follows new-friends.

deny being a spy is a weakly-phrased performative quip.
	The comment is "'The law doesn't work unless it's got a few human beings outside of it,' you say [--] drawing on one of Slango's sayings. 'Every tyranny creates its own balancing force.'".
	[The mentions-list is {yourself}.]
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

say thanks for pointing out spill is a thanking quip. The comment is "'Hey, thanks.'".
	[The mentions-list is {spill}.]
	The reply is "He makes a you're-welcome gesture and goes back to contemplating the sea view.".
	It quip-supplies Nexami Engeo.


that it's one of those things atlanteans learn is an informative quip.
	The comment is "'I'm afraid you wouldn't be impressed if you were from around here,' we say. 'It's one of those things most Atlanteans learn early. Main reason why paper towels don't have much of a market here.'".
	[The mentions-list is {spill}.]
	The reply is "'Hm!' Not the most talkative tourist ever, is he?".
	It quip-supplies Nexami Engeo.
	It directly-follows nice-clean-up.

what-atlantis is a questioning quip.
	The printed name is "what he is doing in Atlantis". The true-name is "what-atlantis".
	Understand "what" or "he" or "nexami" or "engeo" or "is" or "doing" or "Atlantis" or "in Atlantis" as what-atlantis.  The comment is "'So, what are you doing in Atlantis?'".
	[The mentions-list is {Nexami}.]
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


[Atlantida-patience is a number that varies.

After doing something when the location is Personal Apartment and Personal Apartment is visited and atlantida chat has not happened:
	increase atlantida-patience by 1;
	if atlantida-patience is greater than 1:
		move atlantida-woman to the location.]

[atlantida-woman carries the restoration-gel rifle.]

Rule for beat-producing when atlantida-woman is the current interlocutor and atlantida-woman does not recollect gel-shot:
	say "Her grip tightens on the [restoration-gel rifle].[run paragraph on]"

When Atlantida chat begins:
	[move atlantida-woman to the location;]
	custom-pause the game;
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

Waiting for guards ends in capture when the time since waiting for guards began is greater than 1 minute.

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

how fusion happens is a questioning quip.
	The comment is "'Fused?' [we] repeat.".
	[The mentions-list is {yourself}.]
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


whether the protesters feel the same way is a questioning quip.
	The comment is "'What about the protesters?' [we] ask. 'They don't like your policy. Are you sure you're really representing the spirit of Atlantis, or have you gone some other way of your own?'".
	[The mentions-list is {security, bureau}.]
	The reply is "Atlantida shrugs off our question. 'A vocal minority. Most people are content to keep what they have. Imagine the chaos if everyone had free access to the Bureau's complete range of letter tools, and if there were no laws about how to use them[casually queue more-about-democracy].'".
	It quip-supplies Atlantida-woman.
	It directly-follows thing-about-democracy.

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
	say "We fling the tub at her. Unfortunately, the gel is sticky enough that it doesn't, as we had sort of hoped, spill out all over her. She dodges, then hurls it back at us [--] and she has better aim[casually queue anti-gel comment]."

Instead of going somewhere in the presence of Atlantida-woman:
	say "'I don't think so,' says Atlantida. As she's physically about twice our mass, I think she'll win this one."

Every turn when atlantida-woman is in location and atlantida-woman is carrying something (called target) which is not the restoration-gel rifle:
	try Atlantida-woman dropping the target.

Report atlantida-woman dropping the infertile astrologer:
	say "The infertile astrologer falls awkwardly to earth and looks around in confusion[casually queue cutting-remark]." instead.

cutting-remark is an NPC-directed quip.
	The reply is "'Oh, bravo,' says Atlantida. 'Could you possibly have made a less useful ally?'"


Before putting restoration gel on Atlantida-woman:
	say "We dab a bit on our finger and approach, but she is far too large, far too spry. She catches our wrist and forces us aside, until the gel is harmlessly absorbed into our own skin[casually queue anti-gel comment]." instead.

anti-gel comment is an NPC-directed quip.
	The reply is "'Oh, no, my dear,' Atlantida says. 'They could remake me, but it wouldn't be the [i]same[/i] me, would it? It would be some new construct. The Atlantida of today. And that's not the way to a consistent policy, is it?'"

Check shooting Atlantida-woman with the anagramming gun:
	casually queue anti-anagram comment.

anti-anagram comment is an NPC-directed quip.
	The reply is "'I'm not so vulnerable,' she remarks. 'They chose my name carefully.'"

that the outside world matters is an unlisted informative quip.
	The comment is "'We have important things to do in the outside world. Atlantis can't keep all of its power to itself.'".
	[The mentions-list is {yourself}.]
	The reply is "'And do you know what would happen if Atlantean power were to spread beyond our borders? The rest of the world would become just like us. The incentive to wipe out every diversity, every variation of language would be too great.'".
	It quip-supplies Atlantida-woman.

Availability rule for that the outside world matters:
	if Atlantida-woman recollects gel-shot:
		make no decision;
	otherwise:
		it is off-limits.

how she justifies cold storage is an unlisted questioning quip.
	The comment is "'How do you excuse putting people in Cold Storage? It's a human rights violation.'".
	[The mentions-list is {crime, legislation}.]
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
		say "[We] leap forward and slash with [the second noun][one of]. She parries the blow with the body of [the restoration-gel rifle]. It doesn't even look damaged[or]. She wards [us] off with the rifle[or]. She dodges[at random]."

Report attacking atlantida-woman with the leaf:
	say "[We] wield the leaf like a dagger[one of] and slice across her arm, drawing blood. She recoils, angry but not deterred[or]. This time [we] don't manage to land another blow[stopping]." instead.

Report attacking atlantida-woman  with something:
	say "[one of][We] swing [the second noun] at her, but can't quite reach. She's keeping her distance[or]Closing some of the distance, [we] try a slash of [the second noun]. She leaps backward[or][We] lunge with [the second noun], but she dodges[cycling]." instead.

Instead of throwing something at atlantida-woman:
	if the noun is r-abstract:
		say "[The noun] wouldn't make much impact, other than perhaps notionally. And Atlantida doesn't look like she's open to persuasion, even if the concept of [the noun] were one that carried weight in this situation.";
	otherwise if the noun is floppy and the noun is long:
		say "[The noun] [make] a poor projectile and [land] back near our own feet.";
		move the noun to the location;
	otherwise if the noun is long:
		say "[We] cast [the noun], javelin-like, at Atlantida's heart, but [one of]she dodges[or][we] undercalculate the amount of force required and [the noun] [clatter] to the ground instead[or]miss[at random]. Her expression is disdainful.";
		move the noun to the location;
	otherwise if the heft of the noun is less than 3:
		let random-destiny be a random supporter which is in the location;
		say "[We] fling [the noun] at Atlantida, but [one of][they] [bounce] off unexcitingly and [land] on[or]with a swipe of her arm she deflects [them] to[at random] [the random-destiny].";
		move the noun to the random-destiny;
	otherwise if the heft of the noun is greater than 3:
		say "[The noun] [are] too heavy for [us] to throw at all effectively.";
	otherwise:
		say "[We] chuck [the noun] at Atlantida. [They] [strike] her hard enough to elicit an outraged 'Oof!', but that doesn't seem to have substantially impaired her."


Understand "gun hand" as the restoration-gel rifle when the restoration-gel rifle is carried by Atlantida-woman.

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
	if story viewpoint is second person singular:
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
		now description entry is "[one of]Strangely quiet out there[or]No signs of anyone coming for [us] quite yet[or]The lull continues[at random]."

Further guards is a scene. Further guards begins when atlantida chat has ended and the time since atlantida chat ended is at least 2 minutes.

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
"Maybe those noises [we] heard earlier were nothing. It's quiet now."
"Our ears are straining for something far away."
""
"The silence is eerie."
""
"A distant alarm bell is ringing."
""
"The faint ringing continues."



Guard-imminence is a scene. Guard-imminence begins when the programmable dais is in location and the atlantida-shellfish is enclosed by location. Guard-imminence ends in postponement when atlantida-refreshed is enclosed by location. [The design principle here is that the player is on a timer, but every time he succeeds at moving the plot forward, that timer is stopped and a new one starts. So it's never possible to fail a late-stage scene because of having taken too long in an earlier stage.]

The trap can be set-for-guards.

When Guard-imminence begins:
	if there is an open trap in Oracle Project or there is an open trap in the surveillance room:
		now the trap is set-for-guards;
		the trap is discovered in 7 turns from now;

Every turn during Guard-imminence:
	if the trap is in location:
		now the trap is not set-for-guards;
	repeat through the Table of Severe Guard Warnings:
		if there is a description entry:
			unless the description entry is "":
				say "[description entry][paragraph break]";
			blank out the whole row;
			break.

Table of Severe Guard Warnings
description
"[We] definitely hear footsteps. And voices."
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

Table of Ultratests (continued)
topic	stuff	setting
"almostlast"	{ anagramming gun, bullets, tub, counterweight }	The Tunnel
"lastmeeting"	{ anagramming gun, bullets, tub }	Personal Apartment

Test almostlast with "tutorial off / establish / unlegend / load gun / put counterweight on hook / open tub / open portcullis / go through portcullis / x files / z / a cold storage / look / shoot anagramming gun at gel rifle / look / gel astrologer / shoot gel rifle at atlantida" [in the Tunnel  holding the anagramming gun and the bullets and the tub and the counterweight.]

Test lastmeeting with "tutorial off / establish / unlegend / load gun / open tub / x files / a cold storage / look / shoot anagramming gun at gel rifle / look / gel astrologer / shoot gel rifle at atlantida" [in the Personal Apartment holding the anagramming gun and the tub.]

Section 14 - The Nicer Atlantida

Atlantida-refreshed is a woman. "Atlantida stands nearby, urging [us] to hurry out via the Private Solarium[one of]. I think she's enjoying her role as conspiratorial heroine[or][stopping]." The printed name of atlantida-refreshed is "Atlantida". Understand "atlantida" as atlantida-refreshed. The description of Atlantida-refreshed is "She looks very similar to her earlier self, but the differences are there. The eyes are grey now. A tattoo of a writhing squid encircles her left wrist. Her face is younger."

Atlantida-shooing is a scene. Atlantida-shooing begins when guard-imminence ends in postponement.

When Atlantida-shooing begins:
	set the current interlocutor to Atlantida-refreshed;
	say "She gets to her feet.";
	now atlantida-refreshed is in Workshop;
	queue you-had-better-leave as immediate obligatory;
	queue really-go-now as postponed obligatory.

Atlantida-shooing ends when the location is Personal Apartment and the portcullis is open.

you-had-better-leave is an NPC-directed quip.
	The reply is "[thank-atlantida]'You'd better leave, quickly,' she says. 'I'll make sure your friends get out, but it will be easier if we don't have to explain you as well.'"

how to fix the fusion is a questioning quip.
	The comment is "'The two of us, Alex and Andra, we seem to be stuck together permanently. You don't happen to know how to remove our fusion?'"
	The reply is "She shakes her head. 'We've never found a way to undo that effect completely,' she says. 'I'm sorry. But try to listen to both your voices. One may be the weaker now, but if you try to kill that self entirely, it tends to cause a severe mental illness.'"
	It quip-supplies atlantida-refreshed.

what Atlantida kens concerning synthesis is a questioning quip.
	The printed name is "what Atlantida knows about synthesis".
	The true-name is "what Atlantida kens concerning synthesis".
	Understand "knows" or "she" or "about" as what Atlantida kens concerning synthesis.
	It directly-follows how to fix the fusion.
	The comment is "'Wait, what do you know about synthes[ize]d people?' If we don't find out now, will there be a better time?"
	The reply is "'There have been experiments. They didn't end well, though most didn't collapse into a single dominant personality as quickly as you. You've been under unusual stress.'"
	It quip-supplies atlantida-refreshed.

thank Atlantida is a unlisted thanking quip.
	[The mentions-list is {atlantida-refreshed}.]
	It assumes thank-atlantida.
	The comment is "'Thank you,' [we] say.".
	The reply is "[one of]'Don't thank me,' she says. 'Hurry!'[or]'Hurry!'[stopping]".
	It quip-supplies atlantida-refreshed.

really-go-now is an NPC-directed quip.
	The reply is "'Hurry!' she says. 'Take the window in the Solarium, climb down the beach. Don't look back.'"

Instead of showing the rifle to atlantida-refreshed:
	try discussing return the rifle.
Instead of giving the rifle to atlantida-refreshed:
	try discussing return the rifle.

Carry out someone discussing return the rifle:
	now atlantida-refreshed carries the restoration-gel rifle.

An availability rule for return the rifle:
	if the player does not carry the restoration-gel rifle:
		it is off-limits;
	make no decision.

return the rifle is an unlisted performative quip.
	The comment is "'Here,' we say, handing the restoration gel rifle over. 'I imagine you should have this now.'"
	The reply is "'Thanks,' she says, looking actually rather touched. 'But come on! There's no time to waste.'"
	[The mentions-list is { restoration-gel rifle }.]
	It quip-supplies atlantida-refreshed.

Carry out going to the Surveillance Room during Atlantida-shooing:
	if the trap is in Surveillance room and the trap is set-for-guards:
		end game by running into guards;
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

Portcullis-threat is a scene. Portcullis-threat begins when Atlantida-shooing ends. Portcullis-threat ends in delay when the portcullis is closed. Portcullis-threat ends in capture when the time since Portcullis-threat began is greater than 3 minutes and the portcullis is open.

[This should never happen. The guards are supposed to capture us if we try to escape without shutting the portcullis first.]
Portcullis-threat ends in freedom when the location is Precarious Perch.

When Portcullis-threat begins:
	say "Someone is coming into the workshop upstairs. There's at most a few seconds before they'll be down the tunnel.";
	now the trap is set-for-guards;
	if there is an open trap in Oracle Project:
		the trap is discovered in 1 turn from now;
	if there is an open trap in the surveillance room:
		the trap is discovered in 2 turns from now;
	if there is an open trap in the tunnel through chalk:
		the trap is discovered in 3 turns from now.

At the time when the trap is discovered:
	if the trap is set-for-guards:
		let N be "[the holder of the trap]";
		let N be N in lower case;
		now the trap is closed;
		say "'What's this?' [we] hear a faint voice say from the general direction of [N]. Then there is a loud snap. We flinch, but the blood-curling scream never comes. 'Good thing you didn't step into that' another voice says, followed by some nervous laughter."

Table of Ultratests (continued)
topic	stuff	setting
"guardtrap"	{ trap, tub, jack }	Personal Apartment

Test guardtrap with "tutorial off / establish / unlegend / wait / purloin rifle / shoot gel rifle at atlantida"

Instead of going to Private Solarium from Personal Apartment when Portcullis-threat is happening or Atlantida-shooing is happening:
	if the player is hurrying:
		if the number of entries in the path so far of the player is greater than 1:
			say "[path-walked so far][line break]";
		otherwise:
			clear the path-walked for the player;
	otherwise:
		say "The guards are coming down the tunnel right now. [We] should find a way to delay them."

Check going to the Oracle Project during Atlantida-shooing:
	if the trap is in Oracle Project and the trap is set-for-guards:
		end game by running into guards.

Check going to the Tunnel from Personal Apartment when Portcullis-threat is happening:
	end game by running into guards.

To end game by running into guards:
	say "[We] run straight into the guards. [We] [are] captured and taken away for interrogation, and it's some time before Atlantida is able to arrange for our release.";
	abide by the game-ending rule.

When Portcullis-threat ends in capture:
	say "The guards arrive. [if there is an open trap in location]The first to enter stops just as she is about to step into the trap, and then proceeds to spring it with her rifle. [end if][We] [are] captured and taken away for interrogation, and it's some time before Atlantida is able to arrange for our release.";
	abide by the game-ending rule.

When Portcullis-threat ends in delay:
	say "The portcullis should at least slow down anyone coming after us. Though that's only moderately comforting."

Portcullis-breaking is a scene. Portcullis-breaking begins when Portcullis-threat ends in delay.

Portcullis-breaking ends in stupidity when the portcullis is open. Portcullis-breaking ends in final-threat when the location is the Solarium.

When Portcullis-breaking ends in stupidity:
	say "Reopening the portcullis turns out to have been a poor idea, because it means there's nothing to delay the guards storming down from above. [We] [are] captured and taken away for interrogation, and it's some time before Atlantida is able to arrange for our release.";
	abide by the game-ending rule.

When Portcullis-breaking ends in final-threat:
	say "From the other room, the noises make it sound as though someone is using a metal torch to dismantle the portcullis bar by bar.";

Guard-capture is a scene. Guard-capture begins when Portcullis-breaking ends in final-threat. Guard-capture ends in capture when the time since Guard-capture began is greater than 4 minutes.

Guard-capture ends in freedom when the location is Precarious Perch.

When Guard-capture ends in capture:
	say "Despite the admonishments of the new Atlantida, the Bureau officers who get through the door are not inclined to stop and chat.

[We] [are] captured and taken away for interrogation, and it's some time before Atlantida is able to arrange for our release.";
	abide by the game-ending rule.


Animal Actions and Human Conversation ends here.
