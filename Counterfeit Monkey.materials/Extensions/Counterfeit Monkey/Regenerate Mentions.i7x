Regenerate Mentions by Counterfeit Monkey begins here.

Use authorial modesty.

Section - Generating hardcoded mentions-array

Understand "generate mentions" as generating mentions-array. Generating mentions-array is an action applying to nothing.

[ This was the basis for the mentions_array in Mentions Array.i7x and the list of mention-start-index and mention-stop-index in Mentions Indices.i7x ]

Carry out generating mentions-array:
	let N be 0;
	say "Mentions array by Counterfeit Monkey begins here.[paragraph break]Use authorial modesty.[paragraph break]Include (-[paragraph break]Array mentions_array -->[run paragraph on]";
	repeat with Q running through quips:
		unless mentions-list of Q is empty:
			now mention-start-index of Q is N;
			repeat with L running through mentions-list of Q:
				say " (+ [tru-name of L] +)[run paragraph on]";
				increment N;
			now mention-stop-index of Q is (N - 1);
	say ";[paragraph break]-) after 'Definitions.i6t'.[paragraph break]Mentions array ends here.";
	say "[paragraph break]Mentions indices by Counterfeit Monkey begins here.[paragraph break]Use authorial modesty.[paragraph break]A quip has a number called the mention-start-index. The mention-start-index of a quip is usually -1.[line break]A quip has a number called mention-stop-index. The mention-stop-index of a quip is usually -1.[paragraph break]";
	repeat with Q running through quips:
		unless mention-start-index of Q is -1:
			say "[True-name of Q] has mention-start-index [mention-start-index of Q].";
			say "[True-name of Q] has mention-stop-index [mention-stop-index of Q].";
	say "[line break]Mentions indices ends here.";

To say tru-name of (X - a thing):
	if X is a car or X is an oil or X is an ode:
		say "dummy-object";
	otherwise:
		if internal-name of X is "":
			say "[X]";
		otherwise:
			say "[internal-name of X]".

Understand "check mentions" as checking mentions-array. Checking mentions-array is an action applying to nothing.

Carry out checking mentions-array:
	repeat with Q running through quips:
		unless mentions-list of Q is empty:
			let N be mention-start-index of Q;
			repeat with L running through mentions-list of Q:
				if L is not mentions-index N:
					say "The mentions-list of the quip '[Q]' does not match its mentions-index. Expected [tru-name of L], got [tru-name of (the mentions-index N)].";
				increment N;
			let M be mention-stop-index of Q + 1;
			if N is not M:
				say "The mention-stop-index of the quip '[Q]' is wrong. Expected [N], got [M]."

Section - Generating mentions-lists

[ This is just to facilitate making a new mentions array if we need to change its contents. It generates a new list of mentions-list declarations like those in the section Mentions-lists below from the data in mentions_array. ]

Understand "generate mentions-lists" as generating mentions-lists. Generating mentions-lists is an action applying to nothing.

Carry out generating mentions-lists:
	repeat with Q running through quips:
		let L be a list of things;
		repeat with N running from mention-start-index of Q to mention-stop-index of Q:
			let item be mentions-index N;
			unless item is nothing or item is a car or item is an oil or item is an ode:
				add item to L;
		unless L is empty:
			say "The mentions-list of [true-name of Q] is [L in mentions-list-notation].";

To say (L - a list of things) in mentions-list-notation:
	say "{";
	let N be 0;
	repeat with item running through L:
		unless N is 0:
			say ", ";
		say tru-name of item;
		increment N;
	say "}".

When play begins (this is the add indistinguishable to mentions-lists rule):
	repeat with I running through cars:
		unless I is the alterna-shuttle or I is the truck:
			add I to mentions-list of where there seems garage;
			add I to mentions-list of whether car be fixed;
			add I to mentions-list of why the car does not run;
			add I to mentions-list of where there seems a car;
			add I to mentions-list of where there seems a car-2;
	repeat with I running through oils:
		add I to mentions-list of whether the oil seems interesting;
		add I to mentions-list of whether car be fixed;
		add I to mentions-list of whether the oil will work;
		add I to mentions-list of check out this oil;
		add I to mentions-list of check out this oil-1;
		add I to mentions-list of where oil might be;
		add I to mentions-list of we'll find some;
	repeat with I running through odes:
		add I to mentions-list of calm Lena;

Section - Internal names

[ Many objects has a printed name that differs from the internal name used to refer to it in the source. To be able to printed this internal name in the generated mentions-list code, we add the real internal name in a new text property. This is similar to the true-name property of quips. ]

A thing has some text called internal-name. The internal-name of a thing is usually "".

The internal-name of yourself is "yourself".
The internal-name of dummy-object is "dummy-object".
The internal-name of counterfeit monkey-as-subject is "counterfeit monkey-as-subject".
The internal-name of white-yam is "white-yam".
The internal-name of as-coin is "as-coin".
The internal-name of fake-legend is "fake-legend".
The internal-name of restoration-gel rifle is "restoration-gel rifle".
The internal-name of hidden-ticket is "hidden-ticket".
The internal-name of letter-remover is "letter-remover".
The internal-name of heart to heart is "heart to heart".
The internal-name of local-officials is "local-officials".
The internal-name of guidebook is "guidebook".
The internal-name of Atlantida-refreshed is "Atlantida-refreshed".
The internal-name of Slangovia map is "Slangovia map".
The internal-name of attendant is "attendant".
The internal-name of roll of bills is "roll of bills".
The internal-name of privacy-subject is "privacy-subject".
The internal-name of truth-subject is "truth-subject".



Section - Mentions-lists

A quip has a list of objects called the mentions-list.

The mentions-list of where there seems airport is {Geography, Transportation}.
The mentions-list of where there seems garage is {Geography, Transportation}.
The mentions-list of where there seems telephone service is {Geography}.
The mentions-list of where there seems internet service is {Internet, Geography}.
The mentions-list of where food seems sold is {Food, Geography}.
The mentions-list of where a school seems is {Education, Geography}.
The mentions-list of where customs seems found is {Immigration, Geography}.
The mentions-list of where post office seems found is {Geography}.
The mentions-list of where pharmacy seems found is {Geography}.
The mentions-list of where lodging seems found is {Geography}.
The mentions-list of where there seems hotel is {Geography}.
The mentions-list of where there seems Arbot is {Geography}.
The mentions-list of where there seems cinema is {Geography}.
The mentions-list of where there seems pub is {Geography, counterfeit monkey-as-subject}.
The mentions-list of whether the Britishizing goggles seem interesting is {Britishizing goggles}.
The mentions-list of whether the Origin Paste seems interesting is {Origin Paste}.
The mentions-list of whether the letter-remover means anything is {letter-remover}.
The mentions-list of whether the monocle seems interesting is {monocle}.
The mentions-list of compliment the blue suit is {blue suit, Fashion}.
The mentions-list of where fuel might be is {gas, fuel}.
The mentions-list of whether the fuel seems interesting is {gas, fuel}.
The mentions-list of thank the mechanic is {Transportation, mechanic}.
The mentions-list of where he comes from is {bard}.
The mentions-list of what seems for sale is {farmer, farmer's stall}.
The mentions-list of what seems for sale-2 is {farmer, farmer's stall}.
The mentions-list of what the fair seems for-2 is {Celebration}.
The mentions-list of buy the yam is {white-yam, farmer}.
The mentions-list of buy the lime is {lime, farmer}.
The mentions-list of buy the asparagus is {asparagus, farmer}.
The mentions-list of whether he dons overalls is {Fashion}.
The mentions-list of recommend other vegetables is {Food}.
The mentions-list of recommend artichokes is {Food}.
The mentions-list of recommend tomatoes is {Food}.
The mentions-list of recommend lettuce is {Food}.
The mentions-list of recommend tubers is {Food}.
The mentions-list of recommend onions is {Food}.
The mentions-list of recommend beets is {Food}.
The mentions-list of recommend peas is {Food, pea}.
The mentions-list of recommend seaweed is {Food}.
The mentions-list of buy the triangle is {honey pastry triangle}.
The mentions-list of buy the wrap is {wrap}.
The mentions-list of buy the pocket-bread is {pocket-bread}.
The mentions-list of buy the screwdriver is {screwdriver, screwdrivers}.
The mentions-list of buy a drink is {generic cocktail}.
The mentions-list of buy the gimlet is {gimlet, gimlets}.
The mentions-list of buy the rusty nail is {rusty nail, rusty nails}.
The mentions-list of thank the bartender is {bartender}.
The mentions-list of buy the Britishizing goggles is {Britishizing goggles}.
The mentions-list of buy the Slangovia map is {Slangovia map}.
The mentions-list of whether she hath seen Brock-man is {Brock}.
The mentions-list of whether Brock-man seemed upset is {Brock}.
The mentions-list of why Arbot now sells antiques is {maps collection}.
The mentions-list of what types of antiques they sell here is {maps collection}.
The mentions-list of what the map legend means is {Slangovia map, legend, fake-legend}.
The mentions-list of offer the ticket is {ticket}.
The mentions-list of offer the ticket redundantly is {ticket}.
The mentions-list of when the movie starts is {Entertainment}.
The mentions-list of whether the clock helps is {clock}.
The mentions-list of what the movie seems is {Entertainment}.
The mentions-list of whether he likes his job is {Employment, ticket-taker}.
The mentions-list of whether crime could ever be justified is {Crime, Legislation, Bureau}.
The mentions-list of whether the government seems just is {Bureau, Legislation}.
The mentions-list of whether immigration laws seem fair is {Immigration, Legislation, Bureau}.
The mentions-list of whether he hath ever been in trouble alongside law is {Security, Legislation, Crime}.
The mentions-list of claim to be taking a survey is {yourself, Research}.
The mentions-list of explain that we hath a recorder is {yourself}.
The mentions-list of we seem curious is {yourself}.
The mentions-list of what he likes to eat is {Food}.
The mentions-list of where he gets Mediterranean foods is {Food}.
The mentions-list of assure him that we seem not hitting on him is {yourself, ticket-taker}.
The mentions-list of what his girlfriend seems like is {Romance, ticket-taker}.
The mentions-list of delay ticket-taker is {Entertainment}.
The mentions-list of where my backpack seems is {backpack}.
The mentions-list of argue about  lost plus found policy is {yourself, backpack}.
The mentions-list of demonstrate the lost backpack is {backpack}.
The mentions-list of buy movie-ticket is {hidden-ticket}.
The mentions-list of whether we can hath the scope is {Regulation Authentication Scope}.
The mentions-list of protest the unreasonable legislation prohibiting citizen access to linguistic power is {Legislation}.
The mentions-list of where to get a pass is {pass}.
The mentions-list of whether she enjoys her job is {Employment}.
The mentions-list of how she got this job is {Employment}.
The mentions-list of who Porson seems is {Porson}.
The mentions-list of what the T-inserter does is {T-inserter machine}.
The mentions-list of where the T-inserter seems kept is {T-inserter machine}.
The mentions-list of how to unlock the lockers is {locker, lock}.
The mentions-list of lock problem seems solved is {lock}.
The mentions-list of whether public transport exists here is {Transportation}.
The mentions-list of whether we can keep the guidebook is {guidebook}.
The mentions-list of whether there seems an internet connection nearby is {Internet}.
The mentions-list of who would do this is {Internet}.
The mentions-list of what other group was like is {Internet}.
The mentions-list of what the young woman looked like is {yourself}.
The mentions-list of what happens if the guest does not remember is {locker}.
The mentions-list of what the All-Purpose seems is {locker}.
The mentions-list of how the All-Purpose makes blocks is {locker}.
The mentions-list of whether the gel resembles ours is {restoration gel, tub}.
The mentions-list of why they do not use a locksmith is {locker}.
The mentions-list of what we should do about the lock is {locker}.
The mentions-list of what the fair seems for is {Celebration}.
The mentions-list of correct this misapprehension is {Celebration}.
The mentions-list of what she recommends seeing in city is {Entertainment}.
The mentions-list of whether the attendant enjoys her job is {Employment, attendant}.
The mentions-list of sympathize on the topic of parents is {Family}.
The mentions-list of compliment the nose ring is {nose-ring}.
The mentions-list of whether she seems really from canada is {heavy pack}.
The mentions-list of sympathize about jetlag is {Transportation}.
The mentions-list of be honest about our origins is {yourself, truth-subject}.
The mentions-list of lie about our origins is {yourself}.
The mentions-list of lie about visiting is {Celebration, yourself}.
The mentions-list of equivocate about Atlantis is {yourself}.
The mentions-list of disapprove of Atlantis is {yourself}.
The mentions-list of approve of Atlantis is {yourself}.
The mentions-list of agree about showers is {yourself}.
The mentions-list of disagree about showers is {yourself}.
The mentions-list of mention the louse incident is {louse, attendant}.
The mentions-list of agree about the attendant is {attendant}.
The mentions-list of disagree about the attendant is {attendant}.
The mentions-list of ask for privacy is {yourself, privacy-subject}.
The mentions-list of whether she had trouble alongside customs is {Immigration}.
The mentions-list of whether he believes in God is {Religion}.
The mentions-list of what sort of God he believes in is {Religion}.
The mentions-list of why gift shop volunteer seems here is {gift shop volunteer, Employment}.
The mentions-list of remind the gift shop volunteer that Mrs Rosehip seems married is {My mother}.
The mentions-list of what new project that might be is {Religion}.
The mentions-list of whether he approves of government is {Bureau, Legislation, gift shop volunteer}.
The mentions-list of why he isn't at the celebration is {Celebration, gift shop volunteer}.
The mentions-list of how to see the fireworks is {Celebration}.
The mentions-list of what the gel seems worth is {tube}.
The mentions-list of whether the game seems rigged is {word-balance}.
The mentions-list of whether anyone ever wins is {word-balance}.
The mentions-list of no is {environment}.
The mentions-list of yes is {environment}.
The mentions-list of encourage the activist to elaborate on the implications is {environment, activist}.
The mentions-list of how consciousness will be raised is {environment}.
The mentions-list of how the campaign will address problems of visualization is {environment, activist}.
The mentions-list of whether this liquid will be water is {environment}.
The mentions-list of whether this liquid will also be flavorless is {environment}.
The mentions-list of warn the activist about term-reassignment is {environment}.
The mentions-list of point out that being from Language Studies does not make us wrong is {environment, Research}.
The mentions-list of explain about our plans is {environment}.
The mentions-list of donate is {roll of bills}.
The mentions-list of whether he hath seen slango is {Slango}.
The mentions-list of challenge Parker about the rum is {Slango, rum-subject}.
The mentions-list of whether we can hath origin paste is {Origin Paste}.
The mentions-list of how one might go about winning is {Origin Paste}.
The mentions-list of play the game is {Origin Paste, Entertainment}.
The mentions-list of complain that the game seems unfair is {Origin Paste}.
The mentions-list of whether he hath any other games going is {Origin Paste}.
The mentions-list of how long he hath worked at  bar is {Employment}.
The mentions-list of what he thinks about the Bureau is {Bureau, barman}.
The mentions-list of whether he hates customs officials is {Immigration, barman, local-officials}.
The mentions-list of whether he believes in god-2 is {Religion}.
The mentions-list of who we seem is {yourself}.
The mentions-list of explain Brock's probable reasons is {Lena}.
The mentions-list of whether we can leave now is {Transportation}.
The mentions-list of what the trouble was is {Brock}.
The mentions-list of complain about the inefficiency of this scheme is {plans, yourself}.
The mentions-list of whether she hath seen slango is {Slango}.
The mentions-list of who we seem-3 is {yourself}.
The mentions-list of calm Lena is {Lena, modem, reams, preamp}.
The mentions-list of tease Lena about selling office supplies is {reams}.
The mentions-list of what she kens about authentication scopes is {monocle, Regulation Authentication Scope}.
The mentions-list of quip-about-paste is {Origin Paste}.
The mentions-list of encourage Lena to contact Slango is {Slango}.
The mentions-list of thank Lena is {as-coin, Lena}.
The mentions-list of what he seems doing is {Research, Professor Brown}.
The mentions-list of what love looks like is {Research}.
The mentions-list of what he thinks of Higgate is {Professor Higgate}.
The mentions-list of what he thinks of you is {yourself}.
The mentions-list of what he thinks of Waterstone is {Professor Waterstone}.
The mentions-list of why Waterstone gave him the conch shell is {Professor Waterstone}.
The mentions-list of what Professor Brown thinks of the academic job market is {Employment}.
The mentions-list of wish Professor Brown luck is {Employment, Professor Brown}.
The mentions-list of how Professor Brown makes abstracts is {Research}.
The mentions-list of whether he can fix the letter-remover is {letter-remover}.
The mentions-list of what he thinks of the letter-remover is {letter-remover}.
The mentions-list of why reifying living creatures seems cruel is {letter-remover}.
The mentions-list of thank Professor Brown is {Professor Brown}.
The mentions-list of what he thinks about the word is {word}.
The mentions-list of what he thinks about the pasts is {pasts}.
The mentions-list of that we do not speak Lojban is {Constructed language}.
The mentions-list of how Professor Higgate seems doing is {Professor Higgate}.
The mentions-list of what would be so bad about directing graduate studies is {Employment}.
The mentions-list of what the romance novel might be is {heart to heart}.
The mentions-list of whether Professor Higgate would translate part of the novel is {Constructed language, heart to heart}.
The mentions-list of whether she encountered activists is {activist, environment}.
The mentions-list of whether she might let us into the language studies seminar room is {seminar door, key}.
The mentions-list of how we might return a book is {The Problem of Adjectives}.
The mentions-list of which conlangs she kens is {Constructed language}.
The mentions-list of make up some excuse is {yourself}.
The mentions-list of that we just dropped by to meet him is {Professor Waterstone}.
The mentions-list of where to find Professor Brown is {Professor Brown}.
The mentions-list of whether he met the activists is {environment}.
The mentions-list of what he kens about me is {yourself}.
The mentions-list of why he seems working on Serial Comma Day is {Professor Waterstone, Celebration}.
The mentions-list of why he doesn't go to the demonstration is {invitation}.
The mentions-list of suggest we get out of here is {yourself, Bureau, Security}.
The mentions-list of insist on leaving immediately is {yourself, Bureau, Family, Security}.
The mentions-list of accept Brock's lunacy is {T-inserter machine, yourself, plans}.
The mentions-list of complain about Brock's recklessness is {Brock, yourself, Bureau}.
The mentions-list of remind Brock that synthesis was necessary because of him is {Brock, yourself}.
The mentions-list of defend Alex is {Brock, yourself}.
The mentions-list of accept his advice is {yourself}.
The mentions-list of discover why Brock got stuck here is {Brock, yourself, Security, Bureau}.
The mentions-list of rejoice that brock seems okay is {yourself, Brock}.
The mentions-list of claim-to be fine is {yourself, Brock}.
The mentions-list of what buried command center he heard of is {Bureau, Brock}.
The mentions-list of we're his girlfriend is {Romance, yourself}.
The mentions-list of claim to hath seen him this morning is {Romance}.
The mentions-list of we don't ken is {yourself}.
The mentions-list of reassure Mother is {yourself, Education}.
The mentions-list of suggest the truth is {Constructed language}.
The mentions-list of we wouldn't do anything dangerous is {Bureau, yourself}.
The mentions-list of probably nothing is {yourself}.
The mentions-list of explain we might go out is {Food, yourself}.
The mentions-list of claim he didn't say is {Food}.
The mentions-list of agree to take care of the monocle is {monocle}.
The mentions-list of deny everything is {yourself}.
The mentions-list of lay out our reasons is {Immigration, yourself}.
The mentions-list of be comforting is {yourself, Research}.
The mentions-list of quibble is {yourself}.
The mentions-list of deny being a spy is {yourself}.
The mentions-list of say thanks for pointing out spill is {spill}.
The mentions-list of that it's one of those things atlanteans learn is {spill}.
The mentions-list of what-atlantis is {Nexami Engeo}.
The mentions-list of how fusion happens is {yourself}.
The mentions-list of whether the protesters feel the same way is {Security, Bureau}.
The mentions-list of that the outside world matters is {yourself}.
The mentions-list of how she justifies cold storage is {Crime, Legislation}.
The mentions-list of thank Atlantida is {Atlantida-refreshed}.
The mentions-list of return the rifle is {restoration-gel rifle}.
The mentions-list of enough-in-school is {Legislation, Education}.
The mentions-list of mutual-embarrassment is {ticket-taker}.

Regenerate Mentions ends here.
