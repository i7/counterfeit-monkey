Counterfeit Universal Groundwork by Emily Short begins here.

Use authorial modesty.

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
	The reply is "[things-close-today][beat] [one of]'You can't find an open gas station in this town on Serial Comma Day.'[or]'People take Serial Comma Day seriously[apologetic].'[or][one of]'It's the holiday.'[or]'Serial Comma Day is a big thing around here.'[or]'It'll be worse than a Sunday today.'[or]'Any other day of the year you'd have more luck.'[cycling][stopping][line break]".

[Questions about subjects]

To say directions to (destination - a room):
	say "'";
	if a random chance of 1 in 3 succeeds:
		say "[personal yes]. ";
	say "[one of]Perhaps you should try [or]You might want [or]I'd go over to [or]Try [or]The best chance would be [at random]";
	say "[the destination]";
	let distance be the number of moves from the location to the destination;
	let the way be the best route from the location to the destination;
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
	say ".'[run paragraph on]";


Instead of a fake person discussing a quip which does not quip-supply the current interlocutor:
	carry out the expressing ignorance by activity with the current interlocutor;
	say paragraph break.

Rule for expressing ignorance by a fake person (called target):
	say "[The target] just [look] confused. These generated people are usually limited to acting only in one particular sphere of action.[run paragraph on]"

Carry out someone discussing a quip which mentions geography:
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

Last report discussing a quip which mentions geography for the first time:
	say "(Incidentally, you know, we don't have to go around asking where everything is like a tourist just off the boat. If you want to go to some place you've heard of, just say so and I'll handle the navigation [--] unless of course you actually want to give the impression of being a tourist just off the boat, in which case far be it from me to critic[ize] your methods.)" instead.

location-questioning quip is a kind of questioning quip.
	A location-questioning quip is usually weakly-phrased.
	A location-questioning quip has some text called the place-sought.
	A location-questioning quip has an object called the correct answer.
	The comment is "'[if the current interlocutor knows you-are-tourist]Do you know[otherwise]I was wondering: do you know[end if] where [one of]I could find[or]there's[at random] [place-sought of the item described] [one of]around here[or]near here[or]in this town[or]hereabouts[at random]?'"
	The reply is "[if the correct answer of the item described is Park Center][holiday closures][otherwise if the correct answer of the item described is the location]'[Well], look around you.'[otherwise][directions to the correct answer of the item described]".

where there seems airport is a weakly-phrased location-questioning quip.
 The printed name is "where there is an airport". The true-name is "where there seems an airport".
 Understand "is" or "airport" or "international" or "plane" or "airplane" as where there seems airport.  The place-sought is "an airport".
 It mentions geography, transportation.
 The reply is "[one of]'Atlantis doesn't have a commercial airport,' says [the current interlocutor]. 'There's an airstrip that belongs to Dental Consonants Limited, but if you don't have a corporate jet, forget it.'[or]'[awkward no]. Occasionally you might see planes or even a helicopter, but they're going to the DCL campus for business purposes. Tourists only come by ocean.'[or][The current interlocutor] explains, as we've already heard, that there is no airport, at least not as far as we're concerned.[stopping]".
 It is background-information.
 The correct answer is Park Center.

where there seems garage is a weakly-phrased location-questioning quip.
 The printed name is "where there is a garage". The true-name is "where there seems a garage".
 Understand "is" or "a" as where there seems garage.  The place-sought is "a garage".
 It mentions geography, transportation.
 It is background-information.
 The correct answer is Park Center.
Every car is mentioned by where there seems garage.


where there seems telephone service is a weakly-phrased location-questioning quip.
 The printed name is "where there is telephone service". The true-name is "where there seems telephone service".
 Understand "is" or "phone" as where there seems telephone service.  The place-sought is "a public telephone".
 It mentions geography.
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
 It mentions Internet, geography.
 The reply is "[one of]'There are some cafés and places that have access to the Atlantis network,' [the current interlocutor] [say]. 'But a lot of them are probably closed today for Serial Comma Day.'[or][holiday closures][stopping]".
 It is background-information.

where food seems sold is a weakly-phrased location-questioning quip.
 The printed name is "where food is sold". The true-name is "where food seems sold".
 Understand "is" as where food seems sold.  The place-sought is "a source of groceries".
 It mentions food, geography.
 The reply is "[one of]'All the regular grocery stores are probably closed for Serial Comma Day, but you could try the farmer's market up on Hesychius Street.'[or][holiday closures][at random]".
 It is background-information.
 The correct answer is Hesychius Street.

where a school seems is a weakly-phrased location-questioning quip.
 The printed name is "where a school is". The true-name is "where a school seems".
 Understand "is" or "elementary" or "grammar" or "comprehensive" or "junior" as where a school seems.  The place-sought is "an elementary school".
 It mentions education, geography.
 It is background-information.
 The correct answer is Roget Close.

where customs seems found is a weakly-phrased location-questioning quip.
 The printed name is "where customs is found". The true-name is "where customs seems found".
 Understand "is" as where customs seems found.  The place-sought is "customs services".
 It mentions immigration, geography.
 It is background-information.
 The correct answer is Customs House.

where post office seems found is a weakly-phrased location-questioning quip.
 The printed name is "where a post office is found". The true-name is "where a post office seems found".
 Understand "is" or "post office" or "postal" or "mail" or "postal/mail service" as where post office seems found.  The place-sought is "a post office".
 It mentions geography.
 It is background-information.
 The correct answer is Deep Street.

where pharmacy seems found is a weakly-phrased location-questioning quip.
 The printed name is "where a pharmacy is found". The true-name is "where a pharmacy seems found".
 Understand "is" or "drugs" or "drug" or "druggist" or "chemist" or "chemists" as where pharmacy seems found.  The place-sought is "a pharmacy".
 It mentions geography.
 It is background-information.
 The correct answer is Midway.

where lodging seems found is a weakly-phrased location-questioning quip.
 The printed name is "where lodging is found".
 The  true-name is "where lodging seems found".
 Understand "is" or "hostel" as where lodging seems found.  The place-sought is "lodging for the night".
 It mentions geography, hostel-as-subject.
 It is background-information.
 The correct answer is Hostel.

where there seems hotel is a weakly-phrased location-questioning quip.
 The printed name is "where there is a hotel". The true-name is "where there seems a hotel".
 Understand "is" or "a" or "fleur" or "d'or" as where there seems hotel.  The place-sought is "a hotel".
 It mentions geography, fleur d'or-as-subject.
 It is background-information.
 The correct answer is Fleur d'or.

where there seems Arbot is a weakly-phrased location-questioning quip.
 The printed name is "where to find Arbot Maps & Antiques". The true-name is "where there seems Arbot".
 Understand "is" or "a" or "Arbot" or "antiques" or "arbots" or "arbot's" or "maps" or "&" as where there seems arbot.  The place-sought is "Arbot Maps & Antiques".
 It mentions geography. [, arbot-as-subject]
 It is background-information.
 The correct answer is Arbot Maps & Antiques.

where there seems cinema is a weakly-phrased location-questioning quip.
 The printed name is "where there is a cinema". The true-name is "where there seems a cinema".
 Understand "is" or "a" or "cinema" as where there seems cinema.  The place-sought is "a cinema".
 It mentions geography, cinema-as-subject.
 It is background-information.
 The correct answer is Cinema.

where there seems pub is a weakly-phrased location-questioning quip.
 The printed name is "where there is a pub". The true-name is "where there seems a pub".
 Understand "is" or "a" or "bar" as where there seems pub.  The place-sought is "a pub".
 It mentions geography, counterfeit monkey-as-subject.
 It is background-information.
 The correct answer is Counterfeit Monkey.

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
 It mentions the Britishizing goggles.
 The comment is "[demonstration of Britishizing goggles]".
 The reply is "'[if the current interlocutor is tourist]They look like aviator goggles to me[otherwise if the current interlocutor is native]I thought those had gone out of style[otherwise]Are you sure you ought to be showing those off? Someone might take an interest[end if].'"
 It is repeatable.
 It is background-information.
Understand "if" as whether the Britishizing goggles seem interesting.

whether the Origin Paste seems interesting is a demonstration quip.
 It mentions origin paste.
 The comment is "[demonstration of origin paste]".
 The reply is "'[one of]Smells[or]Looks[at random] like soap,' [the current interlocutor] [comment].".
 It is repeatable.
 It is background-information.
Understand "if" as Origin Paste seems interesting.

Instead of a criminal person discussing whether Origin Paste seems interesting:
	say "[The current interlocutor] [open] [their] mouth, then [think] better of answering and just shrugs non-committally."

whether the letter-remover means anything is a weakly-phrased demonstration quip.
 It mentions letter-remover.
 The comment is "[demonstration of the letter-remover]".
 The reply is "[one of]'I hope you're licensed to carry that.'[or]'It looks pretty ordinary to me.'[or]'What am I supposed to be noticing? It looks like it's set to [current setting of the letter-remover].'[at random]".
 It is repeatable.
 It is background-information.
Understand "if" as whether the letter-remover means anything.

Availability rule for whether the letter-remover means anything:
	if the current interlocutor is Professor Brown, it is off-limits.

whether the oil seems interesting is a demonstration quip.
 It mentions oil1, oil2.
 The comment is "'Care for some motor oil?' [we] ask [the current interlocutor]."
 The reply is "'[awkward no].' No wonder, really. The stuff is dirt cheap.".
 It is background-information.
Understand "if" as whether the oil seems interesting.

whether the monocle seems interesting is a demonstration quip.
 It mentions monocle.
 The comment is "[demonstration of monocle]".
 The reply is "[one of]'Fancy,' remarks [the current interlocutor]. 'I've only ever seen those being worn by authenticators.'[or]'Very nice,' says [the current interlocutor], though apparently a bit bored.[or]'Do you go around town showing that to everyone? Because I wouldn't.'[or]'Yes,' says [the current interlocutor].[or]This attracts disappointingly little interest.[stopping]".
 It is background-information.
Understand "if" as whether the monocle seems interesting.

Instead of the secretary discussing whether the monocle seems interesting:
	say "She looks, then frowns. 'You shouldn't have that,' she remarks, in a voice of cold disapproval. 'In fact[--]'

...And it is only a matter of moments before [we] [are] in lock-down and someone is coming to talk to [us] about our illicit possession of tools that have not been cleared for civilian use.

I'll never know why I didn't manage to stop you doing something so boneheaded.";
	end the story saying "[We] have been arrested".

Instead of police person discussing whether the monocle seems interesting:
	say "[The actor] [stare] at it. 'You can't possibly have a lic[ense] for that,' [they] [say]. 'I think you had better come speak with my colleagues, right now.'";
	end the story saying "[We] have been arrested".

Section 3 - Responses to demonstrations that aren't interesting

[These rules aren't usually that important: it's never necessary for the player to show any of these objects off, and they establish no critically-important information. What they *are* intended to do is give a little bit of feedback about the shown object that encourages the player to understand or recognize the possible uses of that object.]


The default comment-refusal rule is not listed in any rulebook.

A thing can be freaky. The ear, the gam, the pate, the earlap, the toe, the toes, the armpit, the heel, the rash, [the limb,] the sword-arm and the arm are freaky.


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
		say "[The current interlocutor] [one of]turns white[or]goes a bit green[or]looks like throwing up[or]obviously might faint[or]gags[at random]. After a moment to regain [their] composure, [they] flee[s] the vicinity.";
		now the current interlocutor is nowhere;
		reset the interlocutor;
	otherwise if the ostensible motive is you-are-tourist:
		say "[The current interlocutor] [say], 'Don't worry, [the noun] [are] almost certainly fake. They make things like [the noun] with letter tools around here. Freaks out the tourists, though!'";
	otherwise:
		say "[one of][The current interlocutor] recoil[s] involuntarily.[or]'Ew!' says [the current interlocutor].[or]'Please take that away,' [the current interlocutor] [adapt the verb say].[or]'Yuck,' [the current interlocutor] [adapt the verb reply].[at random]"

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
		say "[You-are-dangerous][The stern person] recite[s] to us a bit of the penal code applying to attempts to bribe officers of the law."

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
		say "[You-are-feckless][The listener] fold[s] our hand back over the bills. 'Better hold on to those.'"

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

[Rule for refusing comment by an animal (called viewer):
	say "[The viewer] cock[s] [their] head[regarding the noun][s].".]

Rule for refusing comment by something:
	say "[one of]This evokes no particular interest[or][The current interlocutor] [shake] [their] head[or][The current interlocutor] [don't] have anything to say in response[at random]."

Section 4 - Commentary on NPC Possessions


Counterfeit Universal Groundwork ends here.