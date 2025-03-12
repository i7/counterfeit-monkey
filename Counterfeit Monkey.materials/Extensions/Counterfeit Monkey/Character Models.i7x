Character Models by Counterfeit Monkey begins here.

Use authorial modesty.


Book 2 - Character Models

Section 1 - Some activities on Oneself

Definition: a thing is other if it is not the player.

When play begins (this is the set story viewpoint rule):
	now the story viewpoint is first person plural.

Instead of waving the letter-remover at yourself when the current setting of the letter-remover is "y":
	say "Arguably [we] already count as 'ourself.'"

Check waving the letter-remover at yourself when the current setting of the letter-remover is "i":
	say "If this were likely to work, it would be a terrible idea. Fortunately, we don't self-identify simply as I, and secondly, the letter-remover won't remove the last letter of something." instead.

The printed name of yourself is "Alexandra". [This seems to have no effect whatsoever]

Understand "us" or "ourselves" or "we" or "ourself" or "alexandra" or "your/my/our/-- body" or "you/yourself" as yourself.

Instead of examining the player:
	say "[one of]This body is more you than me [--] well, it would be, since [we] came out a girl. Still, I feel a bit odd inspecting us too closely. It feels like invading your privacy.[or]I don't think anything about us looks out of place. [We] [are] female, though a little taller and leaner than average, and with slightly boyish facial features. It's nothing that would attract attention, though.[stopping]";
	if the player wears something:
		say "[line break][We] [are] wearing [the list of worn things *in the player].";
	rule succeeds.


Instead of touching the player:
	say "[We] seem to be all in one piece."

Instead of kissing the player:
	say "[one of]That would have worked better if you'd asked three days ago.[or]I wouldn't have, of course.[or]It's not that I'm not interested. I'm just... not interested.[or]It's like this: you're attractive, but you're also scary. I'm not a big risk-taker, which is why I needed you in the first place.[or]Could [we] stop talking about this?[stopping]".

Instead of tasting the player:
	say "I don't know about you, but I try not to be seen licking myself. And I count your presence as company."

Instead of attacking the player:
	say "Not while I'm in here too."

Sanity-check taking the player:
	say "I don't see how [we] could do that." instead.

Sanity-check inserting the player into:
	try entering the second noun instead.

Sanity-check putting the player on:
	try entering the second noun instead.

[Sanity-check inserting the player into something:
	say "I don't see how [we] could do that." instead.

Sanity-check putting the player on something:
	say "I don't see how [we] could do that." instead.]

[Understand "sorry" as a mistake ("Don't worry about it. I'm not even sure why you're apologizing.").]

[Understand "thank you" as a mistake ("Think nothing of it. We're in this together.") when the current interlocutor is not a person. ]

Understand "lick [something]" as tasting.

Include Facial Expressions by Emily Short.

Section 2 - Conversation, including Subjects

[ The Counterfeit Monkey uses the same conversation library as Alabaster, though with some different refinements. ]

Include Threaded Conversation by Emily Short.

Include Threaded Actions by Emily Short.

Include Thanking by Counterfeit Monkey.

Rule for supplying a missing second noun while showing something to:
	find a suitable interlocutor;
	now second noun is current interlocutor;
	if second noun is nothing:
		say "You must show [the noun] to someone specific.";
		stop the action.

Rule for supplying a missing second noun while showing something to when location is Language Studies Department Office and office-door-1 is closed and Professor Waterstone is on a chair:
	if current interlocutor is not nothing:
		now second noun is current interlocutor;
	otherwise:
		now second noun is Professor Waterstone;
		now current interlocutor is Professor Waterstone.

Rule for supplying a missing second noun while giving something to:
	find a suitable interlocutor;
	now second noun is current interlocutor;
	if second noun is nothing:
		say "You must give [the noun] to someone specific.";
		stop the action.

Rule for supplying a missing second noun while giving something to when location is Language Studies Department Office and office-door-1 is closed and Professor Waterstone is on a chair:
	if current interlocutor is not nothing:
		now second noun is current interlocutor;
	otherwise:
		now second noun is Professor Waterstone;
		now current interlocutor is Professor Waterstone.


Rule for supplying a missing second noun while buying something from:
	if somebody (called target) encloses the noun:
		if target is not current interlocutor and target is not the player:
			try saying hello to the target;
		now the second noun is the target;
	otherwise:
		find a suitable interlocutor;
		now second noun is current interlocutor;
	if second noun is nothing:
		say "There's no one about to sell us [the noun].";
		stop the action.


To find a suitable interlocutor:
	if the current interlocutor is nothing:
		if how-many-people-here is positive:
			if how-many-people-here is 1:
				try saying hello to present-person 1;
			otherwise:
				let L be { bartender, Slango, barman, Kate };
				repeat with vip running through L:
					if vip is in location:
						try saying hello to vip;
						break;
			if the current interlocutor is nothing: [We know that there are at least two people/animals enclosed by location]
				if there is a human other person (called target human) enclosed by location:
					try saying hello to target human;
				otherwise:
					let target animal be a random animal enclosed by location;
					try saying hello to target animal.

Understand "buy [something]" as buying it from.
Understand "show [something]" as showing it to.
Understand "give [something]" as giving it to.


Sanity-check buying something enclosed by the player from:
	say "[We] already have [the noun]." instead;

Sanity-check buying something from the player:
	if the noun is enclosed by the player:
		say "[We] already have [the noun]." instead;
	otherwise:
		say "[The noun] [are not] [ours] to sell." instead.

Does the player mean buying something enclosed by the player from someone:
	it is very unlikely.

A quip can be listed or unlisted. A quip is usually listed.

Plausibility rule for an unlisted quip:
	it is dubious.

A command-string altering rule when how-many-people-here is positive (this is the rearrange thanks and hello rule):
	if the player's command includes "hi/hello/thank/thanks":
		replace the regular expression "^(hi|hello)," in player-command-substitute with "say hello to";
		replace the regular expression "^(thanks|thank you)," in player-command-substitute with "thank".

Understand "hey" or "hiya" or "yo" as hailing.

A first after reading a command rule when how-many-people-here is positive (this is the replace ask X to rule):
	if the player's command includes "where":
		if the player's command includes "where to find a/--" or the player's command includes "where i/we could find a/--" or the player's command includes "where there is a/--":
			replace the matched text with "where there seems";
			make no decision;
	if the player's command includes "to" and the player's command includes "ask/tell":
		unless the player's command includes "how to" or the player's command includes "where to" or the player's command includes "likes to" or the player's command includes "go to":
			let N be "[player's command]";
			replace the regular expression "^(ask|tell) (.*?) to " in N with "\2, ";
			change the text of the player's command to N.


[Fix from otisdog and Dr Peter Bates to make "if the player's command includes "[someone talk-eligible]" work as intended.
See https://intfiction.org/t/run-time-problem-p39-when-changing-the-number-of-input-words-in-counterfeit-monkey/65734]

Include (-

! ==== ==== ==== ==== ==== ==== ==== ==== ==== ====
! Parser.i6t: TryGivenObject
! ==== ==== ==== ==== ==== ==== ==== ==== ==== ====


[ TryGivenObject obj nomatch threshold k w j;
	#Ifdef DEBUG;
	if (parser_trace >= 5) print "    Trying ", (the) obj, " (", obj, ") at word ", wn, "^";
	#Endif; ! DEBUG

	if (nomatch && obj == 0) return 0;

! if (nomatch) print "*** TryGivenObject *** on ", (the) obj, " at wn = ", wn, "^";

	dict_flags_of_noun = 0;

!  If input has run out then always match, with only quality 0 (this saves
!  time).

	if (wn > WordCount()) { ! MODIFIED
		if (nomatch) return 0;
		if (indef_mode ~= 0)
			dict_flags_of_noun = $$01110000;  ! Reject "plural" bit
		MakeMatch(obj,0);
		#Ifdef DEBUG;
		if (parser_trace >= 5) print "    Matched (zero)^";
		#Endif; ! DEBUG
		return 1;
	}

!  Ask the object to parse itself if necessary, sitting up and taking notice
!  if it says the plural was used:

	if (obj.parse_name~=0) {
		parser_action = NULL; j=wn;
		k = RunRoutines(obj,parse_name);
		if (k > 0) {
			wn=j+k;

		  .MMbyPN;

			if (parser_action == ##PluralFound)
				dict_flags_of_noun = dict_flags_of_noun | 4;

			if (dict_flags_of_noun & 4) {
				if (~~allow_plurals) k = 0;
				else {
					if (indef_mode == 0) {
						indef_mode = 1; indef_type = 0; indef_wanted = 0;
					}
					indef_type = indef_type | PLURAL_BIT;
					if (indef_wanted == 0) indef_wanted = INDEF_ALL_WANTED;
				}
			}

			#Ifdef DEBUG;
			if (parser_trace >= 5) print "    Matched (", k, ")^";
			#Endif; ! DEBUG
			if (nomatch == false) MakeMatch(obj,k);
			return k;
		}
		if (k == 0) jump NoWordsMatch;
	}

	! The default algorithm is simply to count up how many words pass the
	! Refers test:

	parser_action = NULL;

	w = NounWord();

	if (w == 1 && player == obj) { k=1; jump MMbyPN; }

	if (w >= 2 && w < 128 && (LanguagePronouns-->w == obj)) { k = 1; jump MMbyPN; }

	if (Refers(obj, wn-1) == 0) {
		.NoWordsMatch;
		if (indef_mode ~= 0) { k = 0; parser_action = NULL; jump MMbyPN; }
		rfalse;
	}

	threshold = 1;
	dict_flags_of_noun = (w->#dict_par1) & $$01110100;
	w = NextWord();
	while (Refers(obj, wn-1)) {
		threshold++;
		if (w)
			dict_flags_of_noun = dict_flags_of_noun | ((w->#dict_par1) & $$01110100);
		w = NextWord();
	}

	k = threshold;
	jump MMbyPN;
];

-) instead of "TryGivenObject" in "Parser.i6t".

After reading a command when the current interlocutor is not nothing and player's command includes "ask/tell/a/t" (this is the new strip interlocutor from input rule):
	if the player's command includes "[someone talk-eligible]":
		let M be the substituted form of the matched text;
		unless M is "1" or M is "men": [To avoid conflicts with Numbered Disambiguation Choices and referring to the clientele in the Counterfeit Monkey bar as "men"]
			cut the matched text.

The new strip interlocutor from input rule is listed instead of the strip interlocutor from input rule in the After reading a command rules.


The counterfeit monkey-as-subject is a subject. The printed name is "Counterfeit Monkey Bar". Understand "counterfeit" or "monkey" or "bar" as the counterfeit monkey-as-subject.

Bureau is a subject. Understand "bureau of orthography" or "orthography" as the bureau.

Celebration is a subject. Understand "fair" or "party" or "hoopla" or "shindig" or "hootenanny" or "festival" or "serial comma day" as celebration.

Constructed language is a subject. Understand "conlang" as constructed language.

Crime is a subject. Understand "criminal" or "criminal activities" or "criminal activity" or "smuggling" or "fraud" as crime.

Education is a subject. Understand "school" or "schooling" or "teaching" or "university" or "college" or "teacher" or "teachers" or "professor" or "professors" as education.

Employment is a subject. Understand "job" or "work" as Employment. Understand "bureau" as employment when the current interlocutor is the secretary.

Entertainment is a subject. Understand "show" or "film" or "films" or "shows" or "show time" or "movie time" or "show times" or "movie times" or "movie" or "movies" or "books" or "book" or "amusement" or "presentation" or "display" as entertainment.

Family is a subject. Understand "brother" or "sister" or "son" or "daughter" or "children" or "child" or "mother" or "father" or "parents" or "parent" or "sons" or "daughters" or "brothers" or "sisters" or "sibling" or "siblings" or "aunts" or "uncles" or "uncle" or "aunt" or "grandparent" or "grandmother" or "grandfather" or "grandma" or "grandpa" as family.

Fashion is a subject. Understand "clothing" or "clothes" or "attire" or "outfit" as fashion.

Food is a subject. Understand "eating" or "dining" or "meal" or "meals" or "foodstuff" or "grocery" or "groceries" as food.

Geography is a subject. Understand "surroundings" or "directions" as geography.

Religion is a subject. Understand "religion" or "faith" or "belief" or "beliefs" or "dogma" or "religious" as Religion.

Immigration is a subject. Understand "customs house" or "custom house" or "customs" or "custom" or "tariff" or "import" or "aliens" or "alien" or "citizens" or "citizen" or "naturalization" or "entry visa" as immigration.

Industry is a subject. Understand "industrial" or "espionage" as industry.

Internet is a subject. Understand "email" or "e-mail" or "wifi" or "network" or "computer" or "computers" or "web" or "wikipedia" as the internet.

Legislation is a subject. Understand "law" or "legalities" or "legal" or "government" as legislation.

Some plans is a subject. Understand "scheme" or "intention" or "intentions" or "conspiracy" or "plan" as plans.

Porson is a subject.

Research is a subject. Understand "experiment" or "experiments" or "study" or "studies" as research.

Romance is a subject. Understand "love" or "smoochies" or "girlfriend" or "boyfriend" or "partner" or "spouse" or "husband" or "wife" as romance.

Security is a subject. Understand "men" or "law enforcement" or "police" as security.

Transportation is a subject. Understand "transport" or "bus" or "buses" or "bus system" or "transit" or "transit system" or "rental car" or "auto" or "automobile" or "cars" or "autos" or "vehicles" or "automobiles" or "vehicle" as "[transit]". Understand "[transit]" as transportation.

The environment is a subject. Understand "planet" as the environment.

A quip can be background-information.

A plausibility rule for a background-information quip:
	it is dubious.

Does the player mean discussing a peripheral quip:
	it is likely.

Definition: a quip is personal:
	if it mentions romance:
		yes;
	if it mentions religion:
		yes;
	if it mentions family:
		yes;
	no.

Definition: a quip is civic:
	if it mentions geography:
		no;
	if it mentions legislation:
		yes;
	if it mentions bureau:
		yes;
	if it mentions immigration:
		yes;
	if it mentions security:
		yes;
	no.

Section 3 - Conversational Greetings

[ The player encounters characters under three basic circumstances (though there can be some overlap between these):

1) The character is manufactured by the player as the result of a letter transformation. (See "Manufactured People".) Manufactured people are not expected to do terribly much, as a rule, though one or two do have a function (the mechanic especially).
2) The character hangs out in a particular room almost all the time. (See "Open Access Characters".)
3) The character is moved on-stage by a scene event and then removed again when the scene is over.

A small handful of characters are one and then the other -- for instance, you can visit Higgate in her office as much as you like until you've triggered off certain essential events with her, after which she reappears only for scene reasons.

In this section we create some actions for saying hello to new characters, and then promptly try to ensure that the player doesn't have to use them much.

Characters who are "alert" will notice and greet the player when he comes into the area, and as this makes them seem more lively and reduces the amount of player effort, it's almost always desirable. We also add a text property so that people can have their own characteristic greetings.]

A person can be alert.

To decide which object is prospective-interlocutor:
	(- ProspectiveInterlocutor() -).

The current interlocutor variable translates into I6 as "current_interlocutor".

Include (-

Global current_interlocutor = nothing;

-) after "Definitions.i6t".

Include (-

	[ ProspectiveInterlocutor p list no_items i;
		for (i=1: i<=how_many_people_here: i++ ) {
			p = people_present --> i;
			if ( current_interlocutor ~= p && p.(+ alert +) == true )
				return p;
		}
		return nothing;
	];

-).

The new default greeting rule is listed instead of the default greeting rule in the report saying hello to rules.

Report saying hello to someone when the greeting type is explicit (this is the new default greeting rule):
	say "[We] [one of]say [one of]hello[or]hi[or]hey[at random] to[or]wave at[or]nod to[or]greet[purely at random] [the noun].[paragraph break][greeting of the current interlocutor][paragraph break]";

The new report someone saying hello rule is listed instead of the report someone saying hello rule in the report saying hello to rulebook.

Report someone saying hello to the player (this is the new report someone saying hello rule):
	say "[greeting of the actor][paragraph break]" instead.

A person has some text called the greeting. The greeting of a person is usually "'[one of]Hi[or]Hello[or]Hi there[at random],' [the item described] [say]."

The greeting of the player is "'Hi,' [we] say."

[The can't greet current interlocutor rule is not listed in any rulebook. The check what's being hailed rule is not listed in any rulebook.]

The new check hailing rule is listed instead of the check what's being hailed rule in the check hailing rulebook.

Check hailing (this is the new check hailing rule):
	if the current interlocutor is a marked-visible person:
		if the current quip is generic-quip:
			now the current quip is the greet-quip;
			say "[We] [one of]nod[or]wave[or]smile and acknowledge [the current interlocutor][or]say hi[or]return the greeting[at random]." instead;
		say already-have instead;
	now the noun is a random marked-visible person who is not the player;
	if the noun is a person:
		say "(addressing [the noun])";
	otherwise:
		say "There's no one here but you." instead.

Check saying hello to someone who is not the current interlocutor when the current interlocutor is alert:
	if the noun is the player:
		say "Don't make this more complicated than it already is." instead;
	otherwise:
		say "[The noun] [are] already included in the conversation." instead.

Test clientele-bug with "ask parker about slango / ask men about slango" in the Counterfeit Monkey.

Carry out starting a conversation with an eavesdropping person about when the current interlocutor is a person:
	say "[We] give [the noun] a look to say [their] input would be welcome as well.";
	try subject-asking the second noun instead.

[We do want it to be possible for the player to say "hi" back to a character who has just greeted him if the conversation has just started.]

The new can't greet current interlocutor rule is listed instead of the can't greet current interlocutor rule in the check saying hello to rulebook.

Check saying hello to a person when the noun is the current interlocutor (this is the new can't greet current interlocutor rule):
	if the current quip is generic-quip:
		now the current quip is the greet-quip;
		say "[We] [one of]nod[or]wave[or]smile[or]say hi[or]return the greeting[at random]." instead;
	say already-have instead.

To say already-have:
	say "[We] already have the attention of [the current interlocutor][if a person is eavesdropping], not to mention the curiosity of [the list of eavesdropping people][end if]."

Definition: a person is eavesdropping if it is not the player and it is not the current interlocutor and it is enclosed by the location.

The greet-quip is a privately-named quip. The greet-quip is unlisted. The printed name of the greet-quip is "greetings". The true-name is "greet-quip".

Understand "wave to/at [something]" as waving to. Waving to is an action applying to one visible thing.

Sanity-check waving to a person:
	try saying hello to the noun instead.

Sanity-check waving to something:
	say "[The noun] [appear] very unlikely to respond." instead.

Understand "wave hand" or "wave our hand" or "wave our hands" or "wave hands" as waving hands.

Test secondaries with "tutorial off / z / say hello / g / ask about paddle / say hello to mark / ask mark about mark / ask mark about the paddle / test customer" in the Drinks Club.

Table of Ultratests (continued)
topic	stuff	setting
"customer"	{ map-customer, papas }	Arbot

Test customer with "z / ask about maps / say hello to customer / ask customer about maps / say hello to papas / ask papas about maps" [holding the map-customer and the papas in Arbot.]

Test all-greetings with "all-greet".


Section 4 - Facts and Motives

[For many of the scattered characters, they're going to try to work out what you want from them and behave according to that script, whatever it turns out to be. Shop sellers will assume that you're a possible customer and use that script until you defy it; that kind of thing.]

To decide what fact is the ostensible motive:
	if the current interlocutor knows a motivational fact (called the probable motive):
		decide on the probable motive;
	otherwise:
		decide on generic-truth. [The guy wants to know why we're talking to him like this]

Table of All Known Facts (continued)
fact (a fact)	summary (some text)
you-hit-on	"That you want to date this person."
you-are-dangerous	"That you have dangerous questions."
you-are-religious	"That you are proselytizing."
you-are-tourist	"That you're a lost tourist."
you-are-past-customer	"That you're a past customer."
you-are-possible-customer	"That you're a potential customer."
you-take-survey	"That you're taking a survey."
you-are-feckless	"That you're a confused nitwit."
you-are-student	"That you're a student."
things-close-today	"That a lot of places close for Serial Comma Day."
canada-girl	"That the girl has a Canadian flag on her pack."
fake-canada	"That the Canadian flag is a lie."
allowed-in-movie	"We've been admitted to the movie theater."
lena-needed	"That Slango left a message for you with Lena at the Aquarium."
slango-friendship	"You and Slango truly are friends."
waterstone-invited	"Waterstone is invited to a demonstration at the Fleur d'Or."
carpets-shampooed	"Waterstone's wife is shampooing the carpets."
homonym-shame-wanted	"Waterstone is looking for an example of homonym shame."
trust-me	"That Lena can trust you."
lena-distrusts	"That Lena does not trust us at the moment."
mark-known	"That the patron's name is Mark."
brock-found	"That the rock is really Brock."
car-needed	"That we need a car."
car-broken	"That the car does not run."
thank-mechanic	"That we have reason to thank the mechanic."
thank-lena	"That we have reason to thank Lena."
thank-bartender	"That we have reason to thank the bartender."
thank-brown	"That we have reason to thank Professor Brown."
thank-atlantida	"That we have reason to thank Atlantida."

A fact can be motivational or purposeless. A fact is usually purposeless. you-are-student, you-hit-on, you-are-tourist, you-are-possible-customer, you-are-past-customer, you-take-survey, you-are-feckless, you-are-dangerous are motivational.

Assumption relates one quip to one fact. The verb to assume (it assumes, they assume, it assumed, it is assumed) implies the assumption relation.

An availability rule for a quip (called the target) (this is the check knowledge requirements for quips rule):
	if a fact assumed by the target is not known by the player:
		it is off-limits;
	otherwise:
		make no decision.

Section 5 - Generic Response Types


A person has some text called the generic negative. The generic negative of a person is usually "[one of]no[or]not really[at random]".
A person has some text called the generic positive. The generic positive of a person is usually "[one of]yes[or]sure[at random]".
A person has some text called the generic adversative. The generic adversative of a person is usually "well".
A person has some text called the secondary apology. The secondary apology of a person is usually "".
A person has some text called the generic confrontational. The generic confrontational of a person is usually "look".

To say Well:
	let N be generic adversative of the current interlocutor;
	now N is N in sentence case;
	say N.

To say personal no:
	let N be generic negative of the current interlocutor;
	now N is N in sentence case;
	say N.

To say personal yes:
	let N be generic positive of the current interlocutor;
	now N is N in sentence case;
	say N.

To say awkward no:
	let N be "[generic adversative of the current interlocutor], [generic negative of the current interlocutor]";
	now N is N in sentence case;
	say "[N][apologetic]";

To say awkward yes:
	let N be "[generic adversative of the current interlocutor], [generic positive of the current interlocutor]";
	now N is N in sentence case;
	say "[N][apologetic]";

To say apologetic:
	if the secondary apology of the current interlocutor is not "":
		say ", [secondary apology of the current interlocutor]";

To say awkward confrontation:
	let N be generic confrontational of the current interlocutor;
	now N is N in sentence case;
	say N;


To say ignorance:
	carry out the expressing ignorance by activity with the current interlocutor;
	say "[run paragraph on]";


Section 6 - Varieties of Person

[Most of the characters in the game fall into one of four categories: native, tourist, criminal, police. These categories allow us to define appropriate behavior for the "universal reactions" where there aren't individual separately-coded responses for every character.]

A person can be native, tourist, criminal, or police. A person is usually native.

Rule for expressing ignorance by a tourist person:
	say "[one of]'You might be better off asking someone else[or]'I really don't know a lot about that[or]'I'm pretty new around here myself[at random],' says [the current interlocutor].[run paragraph on]".

Rule for expressing ignorance by a police person:
	say "[one of]'That's official information[or]'There are security reasons why I can't discuss that[or]'I'd have to ask my manager[or]'We aren't supposed to answer questions of that sort[at random],' says [the current interlocutor].[run paragraph on]".


[When play begins (this is the set official grounds police rule):
	[now every person in the zoo is tourist;
	now every person in the Customs House is police;]
	now every person in Official Grounds is police.]

[Characters also have certain traits, which may occur in combination or alone and are not mutually exclusive, and which govern reactions to common questions.]

A conversation trait is a kind of value. The conversation traits are unhelpfulness, privateness, courtesy, caution, and vanity.

Exhibition relates various people to various conversation traits. The verb to exhibit (it exhibits, they exhibit, it exhibited, it is exhibited) implies the exhibition relation.

[Unhelpfulness means that they're less willing to listen to a lot of questions and assist you if you're a tourist. Privacy means they're less willing to answer questions about themselves or their personal beliefs. Courtesy means they're more likely to be apologetic, etc., when making dispreferred conversational choices. Caution means that they're likely to avoid situations leading to demands on themselves. Vanity means they're more likely to assume that you're hitting on them (in the ostensible motives line).]

Section 7 - Moods

Include Mood Variations by Emily Short.

The moods are neutral, distrustful[, sexy, worried, sexy-worried, and sexy-distrustful]. The current mood of a person is usually neutral.



Section 8 - Refusals for threaded actions

Rule for refusing to buy something when the location is the gift shop:
	if the noun is a souvenir, try taking the noun instead;
	if story viewpoint is second person singular:
		say "You consider it briefly, but conclude there's nothing you really need.";
	otherwise:
		say "I just can't stand to buy anything here."

Rule for refusing to kiss a man:
	if story viewpoint is second person singular:
		say "You run a series of possible ploys and distractions and minor cons through your mind and discard them all: too risky, too slow to perform, etc.";
	otherwise:
		say "[one of][The noun] [are] not my type[or]I'm really not attracted to [the noun], personally[or]Yet another man who does nothing for me[or]Unlike you, I don't make an attempt on everything that moves. And I still don't want to kiss random men [we] meet[stopping]."

Rule for refusing to kiss a woman:
	if story viewpoint is second person singular:
		say "You run a series of possible ploys and distractions and minor cons through your mind and discard them all: too risky, too slow to perform, etc.";
	otherwise:
		say "Tempting, but no."

Rule for refusing to attack someone:
	if story viewpoint is second person singular:
		say "You consider your strength and combat skill and decide that that might not be the most reliable approach.";
	otherwise if the player's command includes "kill/murder":
		say "[one of]What? No! Wow. What kind of person are you that that is even something that you think of trying? Nah, don't answer.[or][we][']ve covered that: it's no.[stopping]";
	otherwise:
		say "I don't solve my problems with violence. You can do what you like when we're separated again." instead.


Character Models ends here.
