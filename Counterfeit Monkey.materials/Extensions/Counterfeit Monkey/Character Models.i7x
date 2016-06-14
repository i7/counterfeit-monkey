Character Models by Counterfeit Monkey begins here.

Use authorial modesty.


Book 2 - Character Models

Section 1 - Some activities on Oneself

When play begins:
   	now the story viewpoint is first person plural.

[Instead of waving the letter-remover at yourself when the current setting of the letter-remover is "y":
	say "Arguably [we] already count as 'ourself.'"]

The printed name of yourself is "Alexandra".

Understand "you" or "body" as yourself.

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

Sanity-check inserting the player into something:
	say "I don't see how [we] could do that." instead.

Sanity-check putting the player on something:
	say "I don't see how [we] could do that." instead.

[Understand "sorry" as a mistake ("Don't worry about it. I'm not even sure why you're apologizing.").]

[Understand "thank you" as a mistake ("Think nothing of it. We're in this together.") when the current interlocutor is not a person. ]

Understand "lick [something]" as tasting.

Include Facial Expressions by Emily Short.

Section 2 - Conversation, including Subjects

[ The Counterfeit Monkey uses the same conversation library as Alabaster, though with some different refinements. ]

Include Threaded Conversation by Emily Short.

Include Threaded Actions by Emily Short.

A quip can be listed or unlisted. A quip is usually listed.

Plausibility rule for an unlisted quip:
	it is dubious.

After reading a command:
        let N be "[player's command]";
        replace the regular expression "(hi|hello|hey), (.*)" in N with "\2, \1";
        change the text of the player's command to N.


The Hostel-as-subject is a subject. The printed name is "hostel". Understand "hostel" as the hostel-as-subject.
The Fleur d'or-as-subject is a subject. The printed name is "Fleur d'or hotel". Understand "hotel" or "fleur" or "d'or" as the fleur d'or-as-subject.
The Cinema-as-subject is a subject. The printed name is "cinema". Understand "cinema" as the cinema-as-subject.
The Counterfeit monkey-as-subject is a subject. The printed name is "Counterfeit Monkey Bar". Understand "counterfeit" or "monkey" or "bar" as the counterfeit monkey-as-subject.
[The arbot-as-subject is a subject. The printed name is "Arbot Maps & Antiques". Understand "arbot" or "maps" or "antiques" or "&" or "antique" or "shop" as the arbot-as-subject.]

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

Transportation is a subject. Understand "transport" or "bus" or "buses" or "bus system" or "transit" or "transit system" or "car" or "rental car" or "auto" or "automobile" or "cars" or "autos" or "vehicles" or "automobiles" or "vehicle" as "[transit]". Understand "[transit]" as transportation.

The environment is a subject. Understand "planet" as the environment.

A quip can be background-information.

A plausibility rule for a background-information quip:
	it is dubious.

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

Definition: a person is alarmed if he is alert and he is not the current interlocutor.

Every turn when an alarmed person (called the prospective interlocutor) is enclosed by the location:
	try the prospective interlocutor saying hello to the player.

The new default greeting rule is listed instead of the default greeting rule in the report saying hello to rules.

Report saying hello to someone when the greeting type is explicit (this is the new default greeting rule):
	say "[We] [one of]say [one of]hello[or]hi[or]hey[at random] to[or]wave at[or]nod to[or]greet[purely at random] [the noun].[paragraph break][greeting of the current interlocutor][paragraph break]";

The new report someone saying hello rule is listed instead of the report someone saying hello rule in the report saying hello to rulebook.

Report someone saying hello to the player (this is the new report someone saying hello rule):
	say "[greeting of the actor][paragraph break]" instead.

A person has some text called the greeting. The greeting of a person is usually "'[one of]Hi[or]Hello[or]Hi there[at random],' [the person asked] [say]."

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
	say "[The noun] [are] already included in the conversation." instead.

Check starting a conversation with clientele about something:
	say "They're... busy. At best interrupting them would interrupt their code, and at worst it would make them think [we] [are] a Bureau agent." instead.

Test clientele-bug with "ask parker about slango / ask men about slango" in the Counterfeit Monkey.

Carry out starting a conversation with an eavesdropping person about when the current interlocutor is a person:
	say "[We] give [the noun] a look to say [their] input would be welcome as well.";
	now the reborn command is "ask about [topic understood]";
	now sp reparse flag is true instead.

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

The greet-quip is a privately-named quip. The greet-quip is unlisted. The printed name of the greet-quip is "greetings".

Understand "wave to/at [something]" as waving to. Waving to is an action applying to one visible thing.

Sanity-check waving to a person:
	try saying hello to the noun instead.

Sanity-check waving to something:
	say "[The noun] [appear] very unlikely to respond." instead.

Test secondaries with "tutorial off / z / say hello / g / ask about paddle / say hello to mark / ask mark about mark / ask mark about the paddle / test customer" in the Drinks Club.

[TODO fix tests]
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
plan-making-inanimate	"That you're thinking of making Brock inanimate."
inanimate-safe	"That it's safe being inanimate."
plan-riding-roc	"That you're considering riding a roc."
roc-chances	"That you're willing to take your chances."
gel-needed	"That you'll need gel."
have-gel	"That you have gel."
upgrades-needed	"That you'll need upgrades on your letter remover."
have-upgrades	"That you have upgrades on your letter remover."
trust-me	"That Lena can trust you."
lena-distrusts	"That Lena does not trust us at the moment."
mark-known	"That the patron's name is Mark."
brock-found	"That the rock is really Brock."
crime-bg	"That one of you is criminal."
atlantean-bg	"That one of you is Atlantean."

A fact can be motivational or purposeless. A fact is usually purposeless. you-are-student, you-hit-on, you-are-tourist, you-are-possible-customer, you-are-past-customer, you-take-survey, you-are-feckless, you-are-dangerous are motivational.

Assumption relates various quips to various facts. The verb to assume (it assumes, they assume, it assumed, it is assumed) implies the assumption relation.

An availability rule for a quip (called the target):
	if the target assumes a fact which is not known by the player, it is off-limits.

Section 5 - Generic Response Types


A person has some text called the generic negative. The generic negative of a person is usually "[one of]no[or]not really[at random]".
A person has some text called the generic positive. The generic positive of a person is usually "[one of]yes[or]sure[at random]".
A person has some text called the generic adversative. The generic adversative of a person is usually "well".
A person has some text called the secondary apology. The secondary apology of a person is usually "".
A person has some text called the generic confrontational. The generic confrontational of a person is usually "look".

To say Well:
	let N be "[generic adversative of the current interlocutor]";
	let N be "[N]" in sentence case;
	say "[N]".

To say personal no:
	let N be "[generic negative of the current interlocutor]";
	let N be "[N]" in sentence case;
	say "[N]".

To say personal yes:
	let N be "[generic positive of the current interlocutor]";
	let N be "[N]" in sentence case;
	say "[N]".

To say awkward no:
	let N be "[generic adversative of the current interlocutor], [generic negative of the current interlocutor]";
	let N be "[N]" in sentence case;
	say "[N][apologetic]";

To say awkward yes:
	let N be "[generic adversative of the current interlocutor], [generic positive of the current interlocutor]";
	let N be "[N]" in sentence case;
	say "[N][apologetic]";

To say apologetic:
	if the secondary apology of the current interlocutor is not "":
		say ", [secondary apology of the current interlocutor]";

To say awkward confrontation:
	let N be "[generic confrontational of the current interlocutor]";
	let N be "[N]" in sentence case;
	say "[N]";


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


When play begins:
	[now every person in the zoo is tourist;
	now every person in the Customs House is police;]
	now every person in Official Grounds is police.

[Characters also have certain traits, which may occur in combination or alone and are not mutually exclusive, and which govern reactions to common questions.]

A conversation trait is a kind of value. The conversation traits are unhelpfulness, privateness, courtesy, caution, and vanity.

Exhibition relates various people to various conversation traits. The verb to exhibit (it exhibits, they exhibit, it exhibited, it is exhibited) implies the exhibition relation.

[Unhelpfulness means that they're less willing to listen to a lot of questions and assist you if you're a tourist. Privacy means they're less willing to answer questions about themselves or their personal beliefs. Courtesy means they're more likely to be apologetic, etc., when making dispreferred conversational choices. Caution means that they're likely to avoid situations leading to demands on themselves. Vanity means they're more likely to assume that you're hitting on them (in the ostensible motives line).]

Section 7 - Moods

Include Mood Variations by Emily Short.

The moods are neutral, distrustful, sexy, worried, sexy-worried, and sexy-distrustful. The current mood of a person is usually neutral.



Section 8 - Refusals for threaded actions

Rule for refusing to buy something when the location is the gift shop:
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