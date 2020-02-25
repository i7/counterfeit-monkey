Act I Among Sightseers by Counterfeit Monkey begins here.

Use authorial modesty.


Volume 2 - The World

Book 1 - Act I Among Sightseers

Part 1 - Tutorial

Chapter 1 - Barriers and Spaces

[Because the temporary barrier is the first real puzzle the player faces, it is especially important to handle all attempts at interaction as clearly as possible. In addition, the point of the puzzle is to figure out how to get the code, not to make the player do fiddly things -- so anything that could reasonably be construed as an attempt to use the code once it's been discovered should be redirected towards opening.]

The temporary barrier is south of Fair. The temporary barrier is a door. It is transparent, closed and locked. The initial appearance is "[A temporary barrier] blocks [if the location is the Fair]this noisy fair from the empty street to the south[otherwise]this empty street from the busy fair to the north[end if][if the temporary barrier is locked], though there is a door that could be opened with the correct code[otherwise], though it is currently unlocked and anyone could go through[end if][if the location is Ampersand Bend]. From here the gaiety and excitement of the holiday are fairly loud[end if]."

The description of the temporary barrier is "It's a high metal fence, supported by sturdy poles. It's designed to contain the chaos a little, and keep people who have come in for the Fair from wandering off down the side streets and causing trouble in unpoliced areas of town. It has [a code-lock] that opens the inset door."

Instead of looking under the temporary barrier:
	say "[The temporary barrier] is set flush with the ground. There is certainly not enough room to crawl underneath."

Instead of climbing or standing up on or lying on or sitting on the temporary barrier:
	say "The links of the fence are too close to offer easy purchase for feet, and the fence is high and barbed on top. They really don't want anyone coming through uninvited."

Instead of pulling or pushing or turning or attacking the temporary barrier:
	say "It rattles a little, but is basically far too sturdy for us to take down."

Instead of touching the temporary barrier:
	say "It's sturdy [--] though not electrified, if that's what you were thinking."

A description-concealing rule when the temporary barrier is marked for listing:
	if the location is the Fair and the temporary barrier is open, now the temporary barrier is not marked for listing.

Sanity-check unlocking the temporary barrier with something:
	if the code is marked-visible:
		try setting the code-lock to "code" instead;
	say "[The temporary barrier] is locked. [We][']d need to set the code-lock to the right number." instead.

Sanity-check unlocking keylessly the temporary barrier:
	if the code is enclosed by location:
		try setting the code-lock to "code" instead;
	if the number of entries in the path so far of the player is greater than 1:
		say "[path-walked so far][line break][paragraph break][The temporary barrier] is locked. [We][']d need to set the code-lock to the right number. " instead;
	otherwise:
		say "[The temporary barrier] is locked. [We][']d need to set the code-lock to the right number." instead.

Sanity-check locking the temporary barrier with something:
	if the code is marked-visible:
		try setting the code-lock to "333" instead;
	say "[We][']d need to set [the code-lock] to some random number." instead.

Sanity-check locking keylessly the temporary barrier:
	if the code is marked-visible:
		try setting the code-lock to "333" instead;
	say "[We][']d need to set [the code-lock] to some random number." instead.

Understand "door" as the temporary barrier.

Sanity-check locking keylessly the code-lock:
	try setting the code-lock to "333" instead.
Sanity-check locking the code-lock with something:
	try setting the code-lock to "333" instead.
Sanity-check closing the code-lock:
	try setting the code-lock to "333" instead.

Sanity-check unlocking keylessly the code-lock:
	try setting the code-lock to "code" instead.
Sanity-check unlocking the code-lock with something:
	try setting the code-lock to "code" instead.
Sanity-check opening the code-lock:
	try setting the code-lock to "code" instead.

A code-lock is part of temporary barrier. Understand "code lock" or "lock" as the code-lock. Understand "code" as the code-lock when the code is marked invisible. The description is "The kind of lock that can be set to a three-digit code, assuming one knows what the code is."

Before typing the topic understood on the code-lock:
	try setting the code-lock to the topic understood instead.

Before typing the topic understood on the temporary barrier:
	try setting the code-lock to the topic understood instead.

Setting action variables for setting the temporary barrier to:
	now the noun is code-lock.

Understand "use code" as code-entering. Understand "enter code" as code-entering. Understand "use code on [code-lock]" as code-entering on. Understand "enter code in/on [code-lock]" as code-entering on. Understand "enter code in/on [temporary barrier]" as code-entering on.

Code-entering is an action applying to nothing.

Check code-entering:
	unless the code-lock is marked-visible:
		say "There's nothing here on which to enter a code." instead.

Carry out code-entering:
	try setting the code-lock to "code" instead.

Code-entering on is an action applying to one visible thing.

Instead of code-entering on the temporary barrier:
	try setting the code-lock to "code".

Carry out code-entering on the code-lock:
	try setting the code-lock to "code" instead.

Test code-lock with "tutorial off / n / e / use code / use code on lock / type code / type code on code-lock / type code on barrier / set lock to code / set barrier to code / enter code / enter code on lock / enter code on barrier / enter code in lock / wave x-remover at codex / use code / use code on lock / type code / type code on lock / type code on lock / set lock to code / set barrier to code / set lock to 305 / set barrier to 305 / enter code on lock / enter code in lock / enter code on barrier / enter code / enter code in barrier".

Instead of setting the code-lock to "305":
	if the temporary barrier is locked:
		say "We set the wheels of the code-lock to [the topic understood].[paragraph break]Click! The barrier door unlocks.";
		now the temporary barrier is unlocked;
		set pronouns from the temporary barrier;
	otherwise:
		say "[The temporary barrier] door was already unlocked.";
		set pronouns from the temporary barrier;

Understand "the right number/code" or "the number/code" or "number/code" or "right number/code" as "[code]".

Instead of setting the code-lock to "[code]":
	if the code is marked invisible:
		say "If only the code were written down somewhere nearby.";
	otherwise:
		try setting the code-lock to "305".

Instead of setting the code-lock to something:
	if the temporary barrier is unlocked:
		say "We set the wheels of [the code-lock] to [the topic understood].[paragraph break]Click! The barrier door locks.";
		now the temporary barrier is locked;
	otherwise:
		let N be "[the topic understood]";
		if N exactly matches the regular expression "\d*":
			say "The barrier door was already locked, but this just seems to have made it more certain of the fact.";
		otherwise:
			say "The code lock accepts only numbers."

Instead of listening to the code-lock:
	say "Even with our ear pressed to the code-lock, we're not able to distinguish any tell-tale clicks of the tumbler that would give away the correct combination."

Carry out going through the temporary barrier:
	record "passing through the temporary barrier" as achieved.

Ampersand Bend is south of the temporary barrier. It is checkpoint. The description is "A bend in the street, which runs west and north. This district combines the old and the new: a small [museum] in an ancient stone building to the east, a shiny [real estate office] south. The window of the museum is currently displaying one of its exhibits, [a list of things *in the display stand][if the code is on the display stand]. Well, not to worry: they'll be able to restore the codex easily enough when the museum reopens[end if]." Understand "district" as Ampersand Bend.

Out-direction of Ampersand Bend is north. [Through the barrier]

Instead of listening to Ampersand Bend:
	say "The sounds from the north suggest a holiday fair in full swing: children laughing and shouting, people selling food and drinks, various fairground machinery, tinny music."

Instead of listening to the temporary barrier:
	try listening to Ampersand Bend.


Instead of smelling Ampersand Bend:
	say "Scents of distant popcorn and candy waft this way."

Instead of smelling the temporary barrier:
	try smelling Ampersand Bend.


The museum exterior is a facade in Ampersand Bend. It fronts east. It is scenery. Understand "old" or "medieval" or "city" or "wall" as the museum exterior. The printed name of the museum exterior is "museum".

The description is "One of several small museums around the older part of the island, celebrating the discovery of Atlantean language tools and the development of its modern society.

This particular museum is housed in a stone building. Parts of the old [if the player wears the Britishizing goggles]mediaeval[otherwise]medieval[end if] city wall are still visible in the foundations.

All that can be seen of the exhibits is the external [display window]. On the other side of the protective tinted glass [is-are a list of things *in the display stand]."

The display window is a transparent closed container. It is part of the museum exterior. The display stand is scenery. Understand "protective" or "tinted" or "glass" or "external" as the display window.

In the display window is a display stand. Instead of searching the display window: say "In the window is [a display stand], on which [is-are a list of things *in the display stand]."

Rule for reaching inside the display stand:
	say "The display window is, unsurprisingly, not open to reach into.";
	deny access.

On the display stand is a codex. The codex is scenery. The description of the codex is "A manuscript of Atlantean origin from the 16th century. It records a series of slightly mad visions of what the world would be like if the 'composition of letters' could be systematically exchanged.

At that time, the name-driven nature of the universe was not yet understood, but some consciousness of it wiggled towards the surface like a breaking tooth. The lunatics were first to notice.

I've visited this museum before and seen the inside, by the way. Many of the pages are filled with what [we] would now consider rather elementary rebus puzzles."

Instead of taking the codex:
	say "Even if [we] could reach, there's not much point in such a theft."

Instead of taking the code:
	say "Like the codex it replaced, [the code] is inside the museum display window. It doesn't much matter, though, as [we] can read the numbers."

The real estate office is a facade in Ampersand Bend. It fronts south. It is scenery. Understand "new" or "realty" or "real estate" or "estate agent" or "real" or "estate" or "office" or "window" or "advertisements" as the real estate office. The description is "Advertisements in the window describe the offerings around town, from a studio apartment (looks like a fixer-upper) in Deep Street for $823,000 to a house near the university for $2.5M. Prices for villas in the northwestern part of town are all listed just as 'Available on Inquiry.'[one of]

I can tell you find all that shockingly overpriced, but trust me: land is scarce on this island and there are a lot of people who want to own it, not just locals but international corporations.[or][stopping]".

Instead of going south in Ampersand Bend:
	say "That way lies a real estate office closed for Serial Comma Day. [run paragraph on]";
	carry out the listing exits activity.

Rule for listing exits while looking in Ampersand Bend:
	do nothing instead.

Sigil Street is west of Ampersand Bend. The description is "The buildings here are two and three [if the player wears the Britishizing goggles]storeys[otherwise]stories[end if], with shops at ground level and [apartments] above. The shops are closed for the holiday: [a typographer's office], [clothing shops] of col[our]ful skirts and ethnic bodices (rarely if ever worn by natives) and t-shirts covered with font designs[if the reflective window is in Sigil Street].

[one of]Passing by [the reflective window] [we] catch the sight of our single blended body, and it creeps me out[or][The reflective window] of the closed shops reflect our synthes[ize]d self[stopping][end if]."

Some elderly apartments are scenery in Sigil Street. The description is "From down here [we] can only see the shuttered windows and the occasional balcony or awning, but you can guess what they're probably like from the environment: old-fashioned inside, kitchens and bathrooms awkwardly fitted into niches and closets of buildings that weren't designed for plumbing. But they're also probably rather [if the player wears the Britishizing goggles]cosy[otherwise]cozy[end if] and handsome, with exposed beams under the ceiling." Understand "flat" or "apartment" or "building" or "buildings" as the elderly apartments when location is Sigil Street.

Does the player mean approaching My Apartment:
	it is very likely.

Instead of finding the elderly apartments:
	if the subcommand of the elderly apartments matches "apartment":
		try approaching My Apartment.

The reflective window is a fixed in place mirror in Sigil Street.
	Understand "shop window/windows" or "windows" as the reflective window.

Rule for listing exits while looking in Sigil Street:
	say "[An alleyway] runs between buildings to the south, while the street continues east." instead.

The alleyway is a scenery facade in sigil street. It fronts south. Understand "alley" or "narrow" as the alleyway. The printed name is "narrow alley". The description is "It looks forbidding and a bit unsanitary."

Instead of examining the reflective window:
	try searching the noun.

The clothing shops are a facade in Sigil Street. They are scenery. They are plural-named. The clothing shops front west. Understand "store" or "shops" or "stores" or "boutique" or "boutiques" or "tourist boutique" or "tourist Boutiques" as the clothing shops. The printed name is "tourist boutiques".
	The description is "[We] peruse the offerings: [list of things which are part of the clothing shops]."
	The introduction of the clothing shops is "I gather from your thoughts that you actually like some of the skirts, but I'd prefer that [we] skip the cross-dressing for now. Our synthes[ize]d body may be female but I'm still getting used to that."

Some colorful skirts are part of the clothing shops. They are floppy and wearable. The description is "Suitable for wearing while doing the local traditional dances, which are slightly Spanish." They cover the legs-area.
Some font t-shirts are part of the clothing shops. Understand "t-shirt" or "shirt" or "shirts" as the font t-shirts. They are floppy and wearable. The description is "They feature more 'serif' puns than anyone needs in a lifetime." They cover the torso-area.
Some ethnic bodices are part of the clothing shops. Understand "bodice" as the bodices. They are floppy and wearable. The description is "Closed with ribbons and laces, to be worn over frilly white shirts." Understand "ribbons" or "laces" or "ribbon" or "lace" as the ethnic bodices. They cover the torso-area.
A mourning dress is part of the clothing shops. It is floppy and wearable. The description is a "A black vintage gown trimmed with much lace and dripping with jet beads." Understand "beads" or "jet" or "bead" or "black" or "vintage" or "gown" as the mourning dress. It covers the torso-area.

Rule for printing the name of the mourning dress while examining the clothing shops:
	say "a mourning dress".

Rule for printing the name of the morning dress while examining the clothing shops:
	say "a morning dress".

Check waving the letter-remover at font t-shirts when the current setting of the letter-remover is "r":
	say "No doubt this would be a cogent statement about the commercial[ization] of the body, if it weren't for the fact that T-SHIT doesn't describe anything anyone with a functional colon has ever heard of." instead.

Instead of taking something which is part of the clothing shops:
	say "Though [the noun] [are] theoretically for sale, there's no one in at the moment to sell [them] to us."

Instead of buying something which is part of the clothing shops:
	say "Though [the noun] [are] theoretically for sale, there's no one in at the moment to sell [them] to us."

Instead of putting the restoration gel on something which is part of the clothing shops:
	say "The shop window is, unsurprisingly, not open to reach into."

The typographer's office is a facade in Sigil Street.  It is scenery.
	Understand "sign" or "display" or "poster" or "typographer" or "font" or "fonts" or "comma" or "commas" or "punctuation" as the typographer's office. It fronts north. The description of the typographer's office is "The office advertises custom fonts and symbols, though it is very unlikely that anyone decides to have a custom font made simply because they happened to catch a notice in a shop window. In hon[our] of the holiday, there is also a display poster showing the form of the humble comma as it manifests itself in a variety of popular fonts."

Instead of looking toward Back Alley:
	say "It doesn't look like there's anything interesting back that way."

Back Alley is south of Sigil Street. The description is "[one of]This isn't much, is it? Just[or]There is nothing here but[stopping] the back sides of a couple of [yellow buildings], some peeling yellow paint[one of], and[or];[stopping] not even much by way of windows to look in through. [if unvisited]I think the place where [we] had the procedure done is just a block or two away, but I've already lost the door. I imagine they change it. [end if]

This alley runs north to the open street, towards the town square[if unvisited]. That's the way [we][']ll want to go first[end if]."
The dull house-back is a facade in Back Alley. It fronts south. It is scenery. The description is "The owners of the house obviously didn't want a view in this direction, as there aren't any windows to see through, just a wall scarred by decades of occasional remodeling."
	The closure notice is "There are no doors in [the item described]. ".

Some yellow buildings are a facade in Back Alley. They front east. They are scenery. Understand "windows" or "window" or "building" or "back" or "backs" or "sides" or "walls" or "houses" as the yellow buildings when the location is Back Alley. The printed name is "[if looking]buildings[otherwise]yellow buildings[end if]". The description is "The buildings are no doubt due for renovation, but haven't received it yet. There are no windows facing this way."
	The closure notice is "There are no doors in [the item described]. ".

Does the player mean finding the yellow buildings:
	it is very unlikely.

Does the player mean doing something to the letter-remover:
	it is very unlikely.

The can't take what's already taken rule response (A) is "[We] already [have] [if the noun is the letter-remover][the noun][otherwise][regarding the noun][those][end if]." (A);

Some beige buildings are a facade in Back Alley. They front west. They are scenery. The description is "A little more beige than the buildings facing them, but just as shabby and free of windows."
	The closure notice is "There are no doors in [the item described]. ".

Check waving the letter-remover at yellow buildings when the current setting of the letter-remover is "s":
	say "The device warms up a bit in our hand, but fails. It doesn't have enough power to work on something as large as the yellow building." instead.

Check waving the letter-remover at beige buildings when the current setting of the letter-remover is "s":
	say "The device warms up a bit in our hand, but fails. It doesn't have enough power to work on something as large as the beige building." instead.

The yellow-paint is part of the yellow buildings. The description is "In this climate, of course, [paint] is quickly ruined by the sun." Understand "peeling" or "yellow paint" or "paint" as the yellow-paint. The indefinite article is "some". The printed name is "paint".

Instead of waving the letter-remover at the yellow-paint:
	say "A good thought [--] PAINT is a very linguistically productive word [--] but spread thin over a large area like this it's too hard for a low-powered letter-remover to work on."


[After going northeast from the Back Alley for the first time:
	let N be the number of entries in the path so far of the player;
	if N is greater than 1:
		say "[path-walked so far]";
	otherwise:
		clear the path-walked for the player;
	say "After the relative quiet and shelter, it's a bit shocking moving out into the open: suddenly there is sunlight, and crowds, and a wide open space, and seeing it all through your/our eyes instead of my own, I feel dizzy again.";
	continue the action. ]

Rule for listing exits while looking in the Back Alley:
	do nothing instead.

The player is in Back Alley. The player carries the letter-remover device.

Chapter 2 - Tutorial Content

Section 1 - Initial Waking

Rule for printing the banner text when stored first name is not "Andra":
	do nothing instead.

Before taking inventory for the first time:
	if  the player is carrying the letter-remover and the number of things carried by the player is 1:
		say "You insisted that we bring almost nothing into the synthesis room, so the criminal who was performing the synthesis couldn't rob us. I had hoped there was more hon[our] among thieves, but you said no, there isn't.";

A last when play begins rule (this is the initial conversation rule):
	say "Can you hear me? >> [run paragraph on]";
	if the player consents:
		say "[line break]Good, you're conscious. We're conscious. ";
	otherwise:
		say "[line break]Ah, smartaleck. But we're conscious. ";
	say "I've heard urban legends about synthesis going wrong, one half person getting lost.

Do you remember our name?[no line break]"

[The worst is over. The operation was a success: we are now one person, unrecognizable. If you're a little disoriented at the moment, that is no surprise. I feel a little sick myself.

Fortunately, we prepared for this eventuality. Before the change, that is. We should have everything we need to leave the country.

Me, I've been wandering around a bit aimlessly, waiting for you to come to. Here, I'll let you get your bearings...]

Identification is a scene. Identification begins when play begins. Identification ends when stored first name is "Andra".

Instead of looking during identification:
	do nothing.

Stored first name is some text that varies. Stored first name is usually "nothing".
New first name is some text that varies. New first name is usually "nothing".

After reading a command during identification (this is the parse identification rule):
	unless the player's command matches "restore":
		if stored first name is "nothing":
			now stored first name is the player's command;
			now stored first name is stored first name in sentence case;
			replace the regular expression "\p" in stored first name with "";
			if stored first name is "Alexandra":
				say "That's our joint name now, yes. I was Alex before the synthesis. You were...";
			otherwise if stored first name is "Alex":
				say "No, I'm Alex. Together we're Alexandra; before our synthesis, you were...";
			otherwise if stored first name is "Andra":
				say "Exactly right. And I'm Alex, making us jointly Alexandra. As far as I can tell, the operation was a success. We're meant to be one person now, unrecognizable to anyone who knew us before.[paragraph break]";
				custom-wait for any key;
				say "[banner text]";
				say "[paragraph break]Let's try to get a look around. I haven't been able to run our body without your help, but maybe now you're awake, it'll work better.";
			otherwise if stored first name is "No" or stored first name is "N":
				say "To review, we're Alexandra now. I was Alex, before the synthesis. You were...";
			otherwise if stored first name is "Yes" or stored first name is "Y":
				say "Right, we're Alexandra now. Before the synthesis, I was Alex. You were...";
			otherwise:
				say "...er, no. We're Alexandra now. Before the synthesis, I was Alex. You were...";
		otherwise:
			now new first name is the player's command;
			replace the regular expression "\p" in new first name with "";
			now new first name is new first name in sentence case;
			if new first name is "Andra":
				say "...yes! Okay. We're both here, neither of us lost our minds in the synthesis process. ";
			otherwise:
				say "...oh boy. Okay. Okay. I need you on form here. This is going to be hard if you don't remember being Andra. Not panicking. ";
			say "As far as I can tell, the operation was a success. We're meant to be one person now, unrecognizable to anyone who knew us before.[paragraph break]";
			now stored first name is "Andra";
			custom-wait for any key;
			say "[banner text]";
			say "[paragraph break]Let's try to get a look around. I haven't been able to run our body without your help, but maybe now you're awake, it'll work better.";
		follow the scene changing rules;
		reject the player's command;



Section 2 - Tutorial Mode

Instead of looking for the first time:
	do nothing instead.

Include Tutorial Mode by Emily Short.

The teach inventory rule is listed before the teach dropping rule in the instructional rules.

[Turn off tutorial mode if you've already done it...]
A first instructional rule (this is the turn off tutorial mode rule):
	if the turn off tutorial mode rule is not listed in the completed instruction list:
		add the turn off tutorial mode rule to the completed instruction list;
		read the achievements;
		if "Finished tutorial mode" is a used achievement:
			now tutorial mode is false;
			stop;

Check turning on tutorial mode:
	if "Finished tutorial mode" is a used achievement:
		if Monumental Staircase is visited:
			say "[first custom style]Tutorial mode doesn't work this far into the game. Please restart before turning it on again.[roman type][paragraph break]" instead;
		otherwise:
			say "This will erase the 'Finished tutorial mode' achievement. Are you sure? >> [run paragraph on]";
			if the player consents:
				choose row with achievement of "Finished tutorial mode" in Table of Possible Achievements;
				blank out the whole row;
				write File of Conclusions from the Table of Possible Achievements;
			otherwise:
				stop the action.


An instructional rule (this is the teach examining thoroughness rule):
	if the teach examining thoroughness rule is listed in the completed instruction list:
		make no decision;
	if the location is not Sigil Street:
		make no decision;
	if we have examined the clothing shops:
		make no decision;
	if we have examined the mourning dress:
		make no decision;
	say "[first custom style]Now we're in a new area, there are new things to see. Try LOOK AT THE SHOPS or L SHOPS.[roman type]";
	now the expected action is the action of examining the clothing shops;
	now the held rule is the teach examining thoroughness rule;
	rule succeeds.

Carry out examining the clothing shops:
	add the teach examining thoroughness rule to the completed instruction list, if absent.

An instructional rule (this is the teach examining super thoroughness rule):
	if we have examined the mourning dress:
		make no decision;
	if the teach examining super thoroughness rule is listed in the completed instruction list:
		make no decision;
	if the mourning dress is not enclosed by location:
		make no decision;
	say "[first custom style]Sometimes the things we examine have parts that we might also want to look at. That mourning dress, for instance[one of][or]. Try LOOK AT MOURNING DRESS or just L MOURNING DRESS[stopping].[roman type]";
	now the expected action is the action of examining the mourning dress;
	now the held rule is the teach examining super thoroughness rule;
	rule succeeds.

Carry out examining the mourning dress:
	add the teach examining super thoroughness rule to the completed instruction list, if absent.

An instructional rule (this is the teach about letter-remover rule):
	if the teach about letter-remover rule is listed in the completed instruction list:
		make no decision;
	if the number of entries in the list of remaining letters is not 26:
		make no decision;
	let N be the printed name of letter-remover;
	now N is N in upper case;
	say "[first custom style]That looks interesting. Try looking at that [letter-remover][one of][or]. L [N][stopping].[roman type]";
	now the expected action is the action of examining the mourning dress;
	now the held rule is the teach examining super thoroughness rule;
	rule succeeds.

Carry out examining the letter-remover:
	add the teach about letter-remover rule to the completed instruction list, if absent.

An instructional rule (this is the teach setting rule):
	if the teach setting rule is listed in the completed instruction list:
		make no decision;
	if the number of entries in the list of remaining letters is not 26:
		make no decision;
	let N be "[the letter-remover]";
	now N is N in upper case;
	say "[first custom style]It can be set to any letter we choose, hm? That sounds like a hint. Try SET [N] TO U.[roman type]";
	now the expected action is the action of tuning the letter-remover to "u";
	now the held rule is the teach setting rule;
	rule succeeds.

Carry out tuning the letter-remover to something:
	add the teach setting rule to the completed instruction list, if absent.

An instructional rule (this is the teach waving rule):
	if the teach inventory rule is not listed in the completed instruction list:
		make no decision;
	if the teach waving rule is listed in the completed instruction list:
		make no decision;
	if the number of entries in the list of remaining letters is not 26:
		make no decision;
	if the mourning dress is not enclosed by location:
		make no decision;
	say "[first custom style]That letter-remover is going to be very important as we try to escape here. To test it out, try WAVE U-REMOVER AT MOURNING DRESS.[roman type]";
	now the expected action is the action of waving the letter-remover at the mourning dress;
	now the held rule is the teach waving rule;
	rule succeeds.

Carry out waving the letter-remover at something:
	add the teach waving rule to the completed instruction list, if absent.

The teach waving rule is listed before the teach dropping rule in the instructional rules.
The teach about letter-remover rule is listed before the teach waving rule in the instructional rules.
The teach setting rule is listed before the teach waving rule in the instructional rules.
The teach examining thoroughness rule is listed before the teach inventory rule in the instructional rules.
The teach examining super thoroughness rule is listed before the teach inventory rule in the instructional rules.

This is the teach thinking rule:
	if the teach thinking rule is listed in the completed instruction list:
		make no decision;
	say "[first custom style][one of]It seems that there are two of us crammed into our (your?) head here. Once in a while, it's useful to find out what we're still hoping to accomplish. [or][stopping]Type THINK to get a list of things we might want to do next.[roman type]";
	now the expected action is the action of waving the letter-remover at the player;
	now the held rule is the teach thinking rule;
	rule succeeds.

Table of Instruction Followups (continued)
selector (a rule)	followup (a text)
teach thinking rule	"[first custom style]Excellent. Up in the status bar, the 'Plans: ...' number shows how many tasks we still think we need to work on."
teach waving rule	"[first custom style]In fact, to make life easier, we don't even have to SET the letter-remover every time we use it. We can just type (say) WAVE P-REMOVER AT PRAM, and the remover will automatically set itself to P.[paragraph break]Now, let's see what happened as a result...[roman type]"
teach more compass directions rule	"[first custom style]Unless you're playing this game in text-only mode, you should see a little blue and white compass on the side of the screen. That compass will always show you which directions you can go next. Directions in blue lead to areas you haven't visited before. Directions in white lead to places you've already been."

Carry out planning:
	add the teach thinking rule to the completed instruction list, if absent.

This is the teach scoring rule:
	if the teach scoring rule is listed in the completed instruction list:
		make no decision;
	unless the score is 1:
		make no decision;
	if waiting:
		say "[first custom style]Something we did has just raised our score! We must be on the right track. To find out what exactly we did right, type SCORE.[roman type]";
	otherwise:
		say "[first custom style]To see how we're doing so far, type SCORE.[roman type]";
	now the expected action is the action of requesting the score;
	now the held rule is the teach scoring rule;
	rule succeeds.

Carry out requesting the score:
	add the teach scoring rule to the completed instruction list, if absent.

The teach scoring rule is listed before the teach dropping rule in the instructional rules.

An instructional rule (this is the teach more compass directions rule):
	if the teach more compass directions rule is listed in the completed instruction list:
		make no decision;
	if Ampersand Bend is visited:
		make no decision;
	if the held rule is the teach more compass directions rule:
		let delay be the time of day minus next movement reminder;
		if delay is less than five minutes:
			rule succeeds;
	let way be nothing;
	if an unvisited room (called goal) is adjacent:
		let way be the true-best route to the goal;
	otherwise if there is a marked-visible open door (called portal):
		let far side be the other side of the portal;
		let way be the true-best route to the far side;
	otherwise:
		make no decision;
	if way is nothing:
		make no decision;
	let N be the printed name of way;
	now N is N in upper case;
	say "[first custom style][one of]You can spend some more time looking around or checking out your inventory to see what you've changed in this location. When you're ready to move on, you can head[or]When you want to move to a new location, you can go[stopping] [N].[roman type]";
	now the expected action is the action of going way;
	now the held rule is the teach more compass directions rule;
	now next movement reminder is the time of day;
	rule succeeds.

Next movement reminder is a time that varies.

Carry out going to Ampersand Bend:
	add the teach more compass directions rule to the completed instruction list, if absent.

An instructional rule (this is the check out the place rule):
	if the check out the place rule is listed in the completed instruction list:
		make no decision;
	if the location is not Ampersand Bend:
		make no decision;
	if the held rule is the check out the place rule:
		if we have examined the codex:
			if we have examined the temporary barrier:
				add the check out the place rule to the completed instruction list, if absent;
		otherwise:
			rule succeeds;
	say "[first custom style]Take a moment to look at things in the environment and get your bearings.[roman type]";
	now the held rule is the check out the place rule;
	now the expected action is the action of examining the codex;
	rule succeeds.

An instructional rule (this is the teach locked doors rule):
	if the teach locked doors rule is listed in the completed instruction list:
		make no decision;
	if the location is not Ampersand Bend:
		make no decision;
	if the temporary barrier is unlocked or the temporary barrier is open:
		make no decision;
	say "[first custom style]It looks as though that barrier to the north is closed and locked. We have everything we need to figure out how to unlock it, though. Would you like to try to open it on your own?[roman type] >> ";
	if player consents:
		say "[first custom style]Good luck![roman type]";
		add the teach locked doors rule to the completed instruction list, if absent;
		add the fix codex rule to the completed instruction list, if absent;
		add the unlock barrier rule to the completed instruction list, if absent;
	otherwise:
		say "[first custom style]Notice that the door needs a CODE, and we can also see a CODEX. Maybe we should turn one of those into the other.[roman type]";
		add the teach locked doors rule to the completed instruction list, if absent;
	rule succeeds.

An instructional rule (this is the fix codex rule):
	if the fix codex rule is listed in the completed instruction list:
		make no decision;
	if the teach locked doors rule is not listed in the completed instruction list:
		make no decision;
	if the codex is not enclosed by location:
		make no decision;
	say "[first custom style]WAVE X-REMOVER AT CODEX should produce a code for us.[roman type]";
	rule succeeds.

Carry out waving the letter-remover at something creating the code:
	add the fix codex rule to the completed instruction list, if absent.

An instructional rule (this is the unlock barrier rule):
	if the unlock barrier rule is listed in the completed instruction list:
		make no decision;
	if the temporary barrier is not in location:
		make no decision;
	if the temporary barrier is not locked:
		make no decision;
	say "[first custom style]Now we know a code we can use on the code-lock. Try SET CODE-LOCK TO 305.[roman type]";
	rule succeeds.

Check setting the code-lock to "305":
	add the unlock barrier rule to the completed instruction list, if absent.

An instructional rule (this is the open barrier rule):
	if the open barrier rule is listed in the completed instruction list:
		make no decision;
	if the temporary barrier is not in location:
		make no decision;
	if the temporary barrier is locked:
		make no decision;
	if the temporary barrier is open:
		make no decision;
	say "[first custom style]OPEN THE BARRIER will open it for us [--] or we could just GO THROUGH BARRIER and rely on opening it automatically.[roman type]";
	rule succeeds.

Carry out opening the temporary barrier:
	add the unlock barrier rule to the completed instruction list, if absent;
	add the open barrier rule to the completed instruction list, if absent.

An instructional rule (this is the teach distance movement rule):
	if the teach distance movement rule is listed in the completed instruction list:
		make no decision;
	if at least four rooms are visited:
		make no decision;
	say "[first custom style]Navigating with compass directions works, but we can also type GO TO... to travel to a named place. GO TO [if location is Back Alley]SIGIL STREET[otherwise]BACK ALLEY will take us back where we started[end if], for instance.[roman type]";
	rule succeeds.

Before approaching:
	add the teach distance movement rule to the completed instruction list, if absent;
	continue the action.

Carry out going to the Fair:
	add the teach distance movement rule to the completed instruction list, if absent.

An instructional rule (this is the return ad Ampersand rule):
	if the return ad Ampersand rule is listed in the completed instruction list:
		make no decision;
	if the location is Ampersand Bend:
		make no decision;
	if at least four rooms are visited:
		make no decision;
	say "[first custom style]We've learned a lot of the basics now. Let's go back to Ampersand Bend. You can navigate there by compass direction or just type GO TO AMPERSAND BEND.[roman type]";
	rule succeeds.

Carry out going to Ampersand Bend when Ampersand Bend is visited:
	add the return ad Ampersand rule to the completed instruction list, if absent.

Carry out going to the Fair:
	add the return ad Ampersand rule to the completed instruction list, if absent.

An instructional rule (this is the teach consulting rule):
	if the teach consulting rule is listed in the completed instruction list:
		make no decision;
	if a book (called target) is enclosed by location and target is not unseen:
		if the number of filled rows in the contents of the target is 0:
			make no decision;
	otherwise:
		make no decision;
	say "[first custom style]You can LOOK UP interesting subjects IN books, if you like.[roman type]";
	add the teach consulting rule to the completed instruction list, if absent;
	the player finishes tutorial in one turn from now;
	rule succeeds;

At the time when the player finishes tutorial:
	record "Finished tutorial mode" as an achievement.

The teach disabling graphics rule is listed after the teach meta-features rule in the instructional rules.

A last instructional rule (this is the teach disabling graphics rule):
	if the teach disabling graphics rule is listed in the completed instruction list:
		make no decision;
	unless glulx graphics is supported:
		make no decision;
	say "[first custom style]The map and compass can be switched off by typing GRAPHICS OFF. If you change your mind later, switch them back on with GRAPHICS ON.[roman type]";
	add the teach disabling graphics rule to the completed instruction list, if absent;
	rule succeeds.

The teach more compass directions rule is listed before the teach dropping rule in the instructional rules.
The teach distance movement rule is listed before the teach dropping rule in the instructional rules.
The check out the place rule is listed before the teach dropping rule in the instructional rules.
The teach locked doors rule is listed before the teach dropping rule in the instructional rules.
The fix codex rule is listed before the teach dropping rule in the instructional rules.
The unlock barrier rule is listed before the teach dropping rule in the instructional rules.
The open barrier rule is listed before the teach dropping rule in the instructional rules.

[The teach thinking rule is listed before the teach meta-features rule in the instructional rules.]

The new teach compass directions rule is listed instead of the teach compass directions rule in the instructional rules.

An instructional rule (this is the new teach compass directions rule):
	if the new teach compass directions rule is listed in the completed instruction list:
		make no decision;
	if the held rule is the new teach compass directions rule:
		let delay be the time of day minus movement reminder;
		if delay is less than five minutes:
			rule succeeds;
	let way be nothing;
	if a room (called goal) is adjacent:
		let way be the true-best route to the goal;
	otherwise if an open door (called portal) is marked-visible:
		let far side be the other side of the portal;
		let way be the true-best route to the far side;
	otherwise:
		make no decision;
	if way is nothing:
		make no decision;
	let N be the printed name of way;
	now N is N in upper case;
	say "[first custom style][one of]Feel free to look around some more. When you're ready to move on from here, try[or]No rush, but just a reminder that when you want to move to a new location, you can go[stopping] [N].[roman type]" (A);
	now the expected action is the action of going way;
	now the held rule is the new teach compass directions rule;
	now movement reminder is the time of day;
	rule succeeds.

The new register going rule is listed instead of the register going rule in the carry out going rules.

Carry out going (this is the new register going rule):
	add the new teach compass directions rule to the completed instruction list, if absent.


Part 2 - Old Town Celebration

Chapter 1 - Central Park Area

Section 1 - The Park

Park Center is a room. The description of the Park Center is "This is a handsome expanse of [grass], shaped like a rectangle with rounds cut from the corners, bounded by [railings] along the north side. There are no stalls and no barkers here, but [small children] are running around [if the horses are part of the fountain]an impressive[else]a desecrated[end if] [marble fountain][if hoses are part of the marble fountain], currently spewing water in all directions[end if].[one of]

I gather from the direction of your thoughts that you dislike small children, so I'll restrain myself from trying to communicate with them.[or][stopping]".

Some railings are a facade. Understand "railing" as the railings. They are scenery in Park Center. They front north. The description is "Painted railings separate the Park and surrounding pedestrian areas from the private property to the north. Some [lipstick advertisements] have been hung over the railings." Understand "painted" as the railings.
	The closure notice is "There is no gate in the railings at this point. ".

Check waving the letter-remover at the railings when the current setting of the letter-remover is "s":
	say "The letter-remover warms in our hand, but nothing visibly changes, perhaps because RAILING lies on the awkward verge between a count noun and a mass noun, and if we say RAILINGS we mean something not very different from A QUANTITY OF RAILING, making RAILING a word with cumulative reference." instead


Some lipstick advertisements are part of the railings.
	Understand "ad" or "ads" or "advert" or "adverts" as the lipstick advertisements.
	The description of the lipstick advertisements is "Over the image of a pouting, lipsticked female, it says: IN EVERY TEMPTRESS THERE IS AN EMPRESS [--] MAKE YOURSELF UP TO A T! It's selling Temptress Brand cosmetics, apparently.".

Rule for listing exits when looking in Park Center:
	do nothing instead.

Rule for distantly describing Park Center:
	say "That way is the cen[ter] of the park, across a lot of grass."

[Before printing the name of a direction (called way) while listing exits:
	if the player is in Park Center, say "[room way from the location] to the "

Procedural rule when listing exits:
	if the location is Park Center, ignore the append room names rule.

Rule for listing exits when looking in Park Center:
	do nothing instead. ]


Check waving the letter-remover at the small children when the current setting of the letter-remover is "s":
	say "If it were a more powerful device, the letter-remover might be able to generate something resembling the concept of 'mall children,' but that's not an idiomatic saying around here. Not to mention that the parents would be bound to object." instead

Carry out examining small children:
	trigger Childhood-bedroom.

Some small children are a person in Park Center. Understand "child" or "boy" or "girl" or "sibling" as the small children. The description is "They look small and harmless, but you're probably right that they have sticky hands." The children are scenery.

Every turn when the location is Park Center and the hoses are part of the marble fountain:
	if a random chance of 1 in 2 succeeds:
		say "[one of]A little boy[or]A small girl[at random] [one of]tries to catch the spraying hosewater in an open mouth[or]pushes a sibling into the path of the water[or]leaps gleefully through the arc of water[at random].";
		now the description of the small children is "Most of them are now sopping wet, and loving it.";
		if a random chance of 1 in 5 succeeds:
			say "[line break]A harrassed-looking All-Purpose Officer comes hurrying across the lawn towards the vandal[ize]d fountain. For a moment it looks like she might get close enough to spot us, but about twenty paces off she stops, plants her feet, and gets out a restoration-gel rifle.

There's a bang, a last glittering fan of water in the air.[paragraph break]";
			gel-convert the hoses;
			say "As for the Officer, she's already speaking into her radio as she turns away.".

Every turn when the ho is in location:
	say "It isn't but a few seconds before a watchful parent notices the ho strutting around and goes to report her.

She is too stupid [--] as a constructed person [--] to put up much resistance when an officer shows up to escort her away.";
	now the ho is nowhere.

[[And now we need to special-case these, because otherwise they will fall on the ground. In general we want letter-conversion to move things that are part of other things, but here it's funnier and also more persuasive if the changed items stay part of the fountain.]
To gel-convert (item - hoses):
	now everything which proffers the item is part of the marble fountain;
	now the item is in the repository;
	[play the sound of gel splort;]
	say "[The item] [become] [a list of things which proffer the item], redecorating the fountain.";
	repeat with secondary running through things which proffer the item:
		abide by the dangerous construction rules for the secondary.

To gel-convert (item - hoe):
	now everything which proffers the item is part of the marble fountain;
	now the item is in the repository;
	[play the sound of gel splort;]
	say "[The item] [become] [a list of things which proffer the item], redecorating the fountain.";
	repeat with secondary running through things which proffer the item:
		abide by the dangerous construction rules for the secondary.]

Instead of taking the children:
	say "There's no need to attract attention to our new face with a kidnapping charge."

Instead of kissing the children:
	say "I doubt their mothers would approve."

Instead of saying hello to the children:
	say "[one of]They have probably been instructed not to talk to strangers[or]Come on, they're not in the least useful[stopping].".

Instead of asking the children about something:
	say "[one of]They have probably been instructed not to talk to strangers[or]Come on, they're not in the least useful[stopping].".

Instead of telling the children about something:
	say "None of them hold still long enough to listen."

[The fountain itself is similar to one in a plaza in Carcassonne. The horses-to-hoses business was a late-game addition, thanks to Jim Munroe trying to amuse the children.]

The marble fountain is a scenery container. It is in Park center. The description of the fountain is "[if horses are part of the marble fountain]It depicts some horses rising out of the waves, with trident-bearing gods on their backs, and some nymphs overseeing the whole operation. Probably 17th-century, to judge by the excessive number of writhing [figures][else if hoses are part of the marble fountain]The nymphs and trident-bearing gods are now aiming hoses out at passers-by[else if hoe is part of the marble fountain]A single bewildered nymph is carrying a hoe, which presumably isn't much use out at sea[else]The former majesty of the fountain has been extensively vandalized[end if]."
	The introduction is "The fountain celebrates [--] if that's the right word [--] the conquest of this island by the Dutch in 1607, it having been a Spanish possession for about 140 years before that.

In spite of this the fountain bears not a word of any foreign language, the original Latin or vernacular inscriptions having been long since renovated away."

Some horses are part of the marble fountain. Understand "horse" or "horse statues" or "horse sculptures" as the horses. The description of the horses is "Their eyes are wide and their nostrils flared with excitement."

Some sculpted figures are part of the fountain. The description of the sculpted figures is "Nereids and Tritons, apparently, together with tame fish, conch shells, and other representatives of the goods of the sea." Understand "nereids" or "tritons" or "fish" or "shells" or "goods of the sea" or "tame" or "conch" or "gods" or "trident-bearing" or "poseidon" or "neptune" or "nymphs" or "nymph" or "trident" or "god" as the figures.

Instead of searching the fountain:
	say "The basin is nearly full of clear [fountain-water], but there are no coins or other useful articles to be found. This is not a culture that tends to discard what might be of use."

The missing-inscriptions are part of the marble fountain. The printed name is "inscriptions". Understand "inscription" or "inscriptions" or "renovated" or "latin" or "vernacular" or "missing" or "nonexistent" or "non-existent" or "foreign" or "lettering" or "letters" or "words" or "language" or "original" as the missing-inscriptions.

The description of the missing-inscriptions is "Whatever writing once graced the fountain, it has been chiseled off because it wasn't in English."


Instead of listening to a room when the location is in Open-Air:
	if hoses are part of the marble fountain:
		say "The sound of children shrieking and jumping through fountain water is by far the loudest component of the assorted din.";
	else:
		say "Children laughing and shouting, people selling food and drinks, various fairground machinery, tinny music, adult conversations, flowing water in the fountain."


After deciding the scope of the player when the location is in Open-Air:
	place the fountain in scope.

Rule for reaching inside a room:
	if the person reaching is the player:
		say "[We] can only look from this distance.";
	deny access.

Instead of inserting an as into the fountain-water:
	say "Better not. [We] don't want to lose [the noun]."

Instead of examining the fountain-water:
	try searching the fountain.

The fountain-water is in the fountain. The fountain-water is fluid and scenery.
	The indefinite article is "some". The printed name is "water".
	Understand "clear/water" as the fountain-water.
	Instead of taking the fountain-water, say "[We] can't, not having webbed fingers."
	Instead of drinking the fountain-water, say "It might not be sanitary."
	The scent-description of the fountain-water is "wet marble".

Some grass is scenery in the Park Center. The description is "Deep green and velvety."
	Instead of touching the grass: say "[We] kneel and run our fingers through the grass."
	Sanity-check digging in the grass:
		say "It must have taken years of careful upkeep to achieve the smoothness of the present turf. No point in ruining that now." instead.

Rule for distantly describing the Fair:
	say "That way is the fair: a mass of booths and people and games and bright sunlight, too chaotic to get a good look at from here."

The Fair is south of Park Center. It is checkpoint. The description is "[one of]Today is Serial Comma Day, one of the biggest holidays on the island, and a time when half the police force is off duty while the other half is over-extended. The perfect day to make an escape. [or][stopping]The square at the cen[ter] of town is [one of]therefore [or][stopping]crowded with people, and there's an overpowering smell of artificial butter and spun sugar."

Instead of smelling the Fair:
	say "It smells like candy and popcorn, with a note of booze and another note of sweaty crowd."


The wheel is a thing in the Fair. The heft is 5. The description is "It's the sort of game where you spin the wheel for a prize[if the location is the Fair]. No one seems to be manning or using it any more, though; perhaps the supply of prizes has run out[end if]."

Instead of pushing or pulling the wheel:
	say "The wheel contraption moves a few millimeters to the side. Of course, we could always spin it and see what happens."

Instead of looking under the wheel:
	say "It looks heavy, but is not actually attached to the [ground]."

Instead of listening to the wheel:
	say "When the wheel is spinning, the flipper makes a satisfying [i]thup thup thup[/i] noise as it flips from one slot to the next."


Understand "use [wheel]" as turning.

Instead of turning the wheel:
	say "[We] give the wheel [one of]a[or]another[stopping] [one of]energetic[or]hard[or]strong[at random] spin. The pointer lands on [one of]HOT AIR[one of], which appears to be the most common reward[or] again[or] yet again[stopping][or]FREE POSTCARD[or]BLUE RASPBERRY LOLLIPOP[or]STUFFED DONKEY[or]STUFFED OCTOPUS[or]SET OF PAINT[or]LIFETIME CHARD SUPPLY[as decreasingly likely outcomes][one of]. Sadly, no one is around to award this prize (which is probably why we were allowed to spin it without having some sort of ticket first)[or]. Too bad no one is around to award the prize. Of course, if someone were, they'd be charging to spin[stopping]."

The random foodstuffs are scenery in the fair. Understand "spun" or "sugar" or "candy" or "butter" or "artificial" or "booze" or "popcorn" as the random foodstuffs.
	The description is "An assortment of unwholesome things to eat are sold here, and since it's extremely hot, [we] smell all of them pungently and in rapid succession. If it's not my imagination, actually, I think this female nose is better than mine. (I've heard that women have a better sense of smell. This could be wrong.) At the moment that sensitivity is a liability, as disorienting as flashes of a col[our]ed strobe.".  [* I wanted to give the sense in the first portion of the game that Alex and Andra are really disoriented by what has happened to them. Some of their sensations are borrowed from what it's like to have a migraine on a hot, sunny day amid a crowd: everything is simply too present to endure, and smells and noises become distinct and offensive even if normally they'd be quite pleasant.]

Some kiosks are fixed in place things in the Fair.  The description of the kiosks is "They're the usual tacky affairs of brightly painted [if the player wears the Britishizing goggles]fibreboard[otherwise]fiberboard[end if] and cheap prizes. I don't see any likely to help us today, however." Understand "activity" or "activities" or "cheap" or "prizes" or "face-painting" or "face painting" or "spell offs" or "spell-offs" as the kiosks.


A ranking rule for the kiosks: increase description-rank of the kiosks by 50.

Definition: the kiosks are deeply dull:
	no.

Rule for writing a topic sentence about kiosks:
	say "[We] are surrounded by [kiosks] for spell-offs, face-painting[if the wheel is in the location], [a wheel] to spin for prizes[end if], and other activities best for small children or the very easily amused. ".

Rule for listing exits when the location is the Fair:
	if boldening is true:
		say "The Fair continues with a selection of carnival games to the [b]west[/b], and with open park to the [b]north[/b] and [b]east[/b].";
	else:
		say "The Fair continues with a selection of carnival games to the west, and with open park to the north and east."

Section 2 - Midway

The Midway is west of the Fair and southwest of Park Center. The description is "Here in front of the [pharmacy] in the southwestern corner of the town square, various contests have been set up [--] a [strong-man contest], a contest to see who can burst the most [balloons] using [a styrofoam dart-plane], and so on."

The pharmacy is a facade in Midway. It fronts south. It is scenery. Understand "pharmacy" or "window" or "windows" or "glass" or "front" or "shade" or "shampoo" or "razors" or "analgesics" or "burn" or "creams" or "candy" or "toothpaste" or "homeopathic" or "remedies" as the pharmacy. The description is "There's not much to see, as a shade has been pulled down behind the glass front. I can tell you what's back there, though, if you care: the usual assortment of shampoo and razors and analgesics and burn creams; candy, and also toothpaste; and a costly selection of homeopathic remedies in matching brown bottles."

The blank church wall is a facade in Midway. It fronts west. It is scenery. The description is "The blank wall separates off the church property that lies west of here."
	The closure notice is "The wall is solid here, though the church can be entered from the church forecourt. ".

Instead of going south in Midway:
	say "The pharmacy, like many of the other shops in the area, is closed so that the employees can enjoy Serial Comma Day. [run paragraph on]";
	carry out the listing exits activity.

Rule for listing exits while looking in Midway:
	do nothing instead.

The strong-man hammering contest is scenery in the Midway. Understand "strongman" or "bell" or "bells" or "hammer" as the contest. The description is "It's one of those contests where you have to hammer something so that something else flies up and rings a bell. I don't have time for that kind of silly macho display."

The balloons are scenery in the Midway. The description is "All stapled in place and ready to be attacked." Instead of attacking the balloons: say "[one of]Better to leave that nonsense to the little ones.[or]Come on, we'll never get away if you insist on lollygagging![or]We have better things to do, remember?[stopping]".

The styrofoam dart-plane is scenery in the Midway. The description is "Ridiculous little styrofoam gliders with dart-noses. No use to us, anyway."

The word-balance is fixed in place in the Midway. Understand "balance" or "steel" or "scales" or "pair of" or "beam" or "fabulous" as the word-balance. The printed name is "word-balance". The initial appearance is "[if the barker is in location]I assume you've noticed, though, [otherwise]No longer so useful is [end if]the [word-balance], which comes up as high as our hip. [balance contents]". The description is "The beam is [if the word-balance is tilting]tilting[otherwise]balanced[end if]. [balance contents]".

Instead of touching, pushing, pulling, or turning the word-balance:
	try pushing the right pan.

Instead of inserting something into the word-balance:
	say "You'd have to be specific about which pan you mean."

Instead of putting something on the word-balance:
	say "You'd have to be specific about which pan you mean."

Understand "put [word-balance] out of alignment" or "unbalance [word-balance]" or "win [tube]" or "try hand" or "try my/our hand" or "try hand at [word-balance]" or "try my/our hand at [word-balance]" as a mistake ("[one of]That does seem like the general idea.[or]Could you be a little clearer about the strategy?[or]I don't see how to carry out that clever little plan.[stopping]").

A ranking rule for the word-balance: increase description-rank of the word-balance by 50.

A first every turn rule (this is the win the tube rule):
	if the barker is in location:
		if the word-balance is tilting:
			move the tube to the player;
			now the barker is nowhere;
			say "There is a [if the ear is in a pan]disgusted gasp[otherwise]cheer[end if] from the spectators. [The word-balance] tilts slowly but inexorably.

	[The barker] looks astonished and displeased, except for a fraction of a second when he just noticeably winks. With exaggerated bad grace hands us [a gel]. 'There's your prize. And now this contest is over.'

	He stalks away.";
			record "winning the gel" as achieved;
			if the barker is the current interlocutor:
				reset the interlocutor;
		otherwise:
			add barker-advertisement to the planned conversation of the barker.

To say balance contents:
	if the right pan is empty
	begin;
		if the left pan is empty, say "Both pans are empty. ";
		otherwise say "The right pan is empty and the left contains [a list of things *in the left pan]. ";
	otherwise if the left pan is empty;
		say "The left pan is empty and the right contains [a list of things *in the right pan]. ";
	otherwise;
		say "On the right pan [is-are a list of things *in the right pan] and on the left [a list of things *in the left pan]. ";
	end if.

A pan is a kind of container. Understand "scale" or "pan" or "pans" as a pan. The right pan and the left pan are pans. The left pan and the right pan are part of the word-balance. The description of a pan is "Sturdy but slotted."

An apple is a vegetable. The apple is edible.

In the right pan is an apple. In the left pan is a pear. The pear is edible.

The description of an apple is "Red-cheeked and rosy." The scent-description of an apple is "apple juice". The flavor-description of an apple is "The skin tastes slightly waxy: I suspect it's been gussied up to look nice."

The description of the pear is "Handsome and green."
	The flavor-description of the pear is "The flesh is not quite ripe and tastes wooden."

Instead of smelling the pear:
	say "It doesn't smell like much of anything, probably because it's not completely ripe yet."

The pear is a vegetable.

Report waving the letter-remover at the apple creating ale:
	say "There's a smell of fermenting apple, then cider, then something more malty. In the apple's place there is now a glass of nutbrown ale." instead.

Instead of putting something on a pan, try inserting the noun into the second noun.

Understand "put [something preferably held] on/onto [a pan]" as inserting it into.

Instead of taking something which is in a pan in the presence of the barker:
	say barker-refusal instead.

Instead of touching or pushing or pulling or turning a pan in the presence of the barker: say barker-refusal instead.

Instead of touching or pushing or pulling or turning something which is in a pan in the presence of the barker: say barker-refusal instead.

Instead of inserting something into a pan in the presence of the barker:
	say barker-refusal.

To say barker-refusal:
	say "[one of]'None of that!' says [the barker]. 'You must make one side go down and the other come up, but you may not add or subtract anything from the load, you may not apply pressure to the beam itself, and you may not lean on, push, pull, or support the individual pans!'

A little boy in the crowd snickers rudely. 'Got ya!'[or]The barker gives us a warning look. In case you forgot, we may not increase or decrease the contents of the pan by hand or lean on the beam.[or]It is against the rules of the contest to remove something from the pans; and whatever we do, we've got to do without touching.[stopping]";

The barker is a man in the Midway. The initial appearance is "Beside the word-balance is a barker in [a blue suit], the same regulation blue used by the Bureau of Orthography." The barker wears a blue suit. The description of the barker is "He is dapper in his suit, as though he might belong to an especially vivid barber-shop quartet." The description of the suit is "Carefully tailored in bright blue linen, with fine white pinstripes."

Instead of telling someone about something:
	say "[The noun] [stare] at us coldly. [one of]I wish you wouldn't babble at folks: it just draws attention.[or]I know you didn't grow up around here, but people in this vicinity tend not to be so free with their words.[stopping]".

Instead of asking someone about something:
	say "[The noun] thinks for a moment, then apparently decides not to answer."

Instead of saying hello to the crowds:
	say "[one of]I wish you wouldn't babble at folks: it just draws attention.[or]I know you didn't grow up around here, but people in this vicinity tend not to be so free with their words.[stopping]".

Understand "ask [crowds] about [text]" as a mistake ("[one of]I wish you wouldn't babble at folks: it just draws attention.[or]I know you didn't grow up around here, but people in this vicinity tend not to be so free with their words.[stopping]").

Definition: the word-balance is tilting if the total heft of the things in the left pan is not the total heft of the things in the right pan.

Check someone who is not the current interlocutor discussing an NPC-directed quip:
	set the current interlocutor to the actor.

barker-advertisement is an NPC-directed quip.
	The reply is "[one of]'Step up and try your hand at the fabulous word-balance!' calls the barker appealingly.[or]'Put the beam out of alignment and win a fabulous prize!' says the barker, holding up a [tube].[or]'One [tube] of restoration gel goes to the first person who can unbalance the word-balance!' cries the barker, glance sweeping the crowd.[at random]".

The barker is carrying a tube. The description of the tube is "The tube claims to be full of restoration gel, but said gel has mostly gone. If only it had been a larger container to start with." Understand "gel" or "prize" or "fabulous prize" or "label" or "restoration gel" as the tube. The scent-description of the tube is "mint". The tube is an essential container.

Instead of searching the tube:
	try examining the tube.

Instead of opening or closing the tube: say "It comes without a cap."

Instead of squeezing the tube:
	say "[We] squeeze vigorously, but nothing comes out."

Instead of tasting or eating the tube:
	say "It is not for internal consumption."

Instead of waving the letter-remover at the tube when the tube is carried by the barker:
	say "The barker spots us gesticulating and smoothly, almost without thinking about it, swaps the tube into the other hand so that [we] miss."

Instead of examining the tube when the tube is carried by the barker:
	say "[We] can't get a good look at the tube from this position, but it definitely appears to be authentic restoration gel [--] valuable stuff, I recall you saying. [one of](Or were you just trying to impress me?)[or][stopping]".

[Some spectators are a person in the Midway. They are scenery. The description is "They wander and hover and point and gawk and then move on." Understand "crowd" or "players" or "people" as the spectators. ]



[The Postcard Stalls are north of the Park Center, east of the Food Corner, and west of Outdoor Cafe. The description is "It is astonishing how exactly alike all postcard vendors are. It is the usual thing: white wire racks with pictures of the harbor, the city walls, the ancient fortifications."

Rule for listing exits when looking in Postcard Stalls: do nothing.

]

[Northwest of the Park Center is the Food Corner.

The description of the Food Corner is "In this corner of the park, a sausage stand has been set up. This is partly for the benefit of the people enjoying the park and partly for the patrons of the cinema to the north, which has no food counter of its own."

The sausage stand is scenery in Food Corner. The initial appearance is "An ingenious invention able to keep several dozen Italian sausages, bratwurst, and Kosher hot dogs simultaneously at the ideal heat for serving."

The sausage-seller is a man in Food Corner. The description of the sausage-seller is "He looks suspicious [--] I mean, he looks as though he suspects us of something. It's true that I passed him earlier a few times when I came up here to stash my things before our operation. I even contemplated buying a Kosher hot dog from him, and changed my mind at the last minute because I was afraid of missing our appointment.

But since I was a tall blond male at the time, I don't think he can remember the incident."
	Understand "sausage" or "seller" or "man" as the sausage-seller.]

Section 3 - Church Forecourt

The Church Forecourt is [south of Food Corner,] northwest of Fair, west of Park Center, [southwest of Postcard Stalls,] and north of Midway.

Rule for distantly describing the Church Forecourt:
	if the player is in New Church:
		say "It is much brighter out there in the Church Forecourt.";
	otherwise:
		say "That way lies the Church Forecourt, with the facade of the New Church itself visible on the west side. It's a handsome and dignified building, and still draws its share of tourists, if few worshippers."

[Some salespeople are an alert person in Church Forecourt. The description is "They are all male, somewhat scruffily dressed in bright-colored clothing. This is amateur hour: the real smugglers and counterfeiters and inventors, the [i]pidgitiers[/i], work down by the docks, or in concealed places around town; when you see them out of doors they are always respectable, and their wares are proof against authentication scopes."
	The initial appearance is "Several enterprising salespeople have set out [blankets] on the sidewalk and are hawking wares almost guaranteed to be linguistic counterfeits."
	[The introduction is "The salespeople are particularly daring because they are only a few hundred feet from the front door of the Rotunda. Nonetheless, no one has the right to arrest these characters except a special branch of the police, the black-caped Authenticators. The Authenticators ride around the city [--] slowly [--] on horseback. Notably, they never speed up enough to outpace the lookouts."]

Report the salespeople saying hello to the player:
	say "[one of]'Buy a nice [random thing which is on the blankets]?' wheedles one of the salespeople. I fix them with a practiced cold stare.[or]'Bargains,' says one of the salespeople in a dull voice.[or][one of]The salespeople, recognizing us again, do not bother with another sales pitch.[or]There is a perfunctory nod from the salespeople.[or]The salespeople acknowledge us with a small nod.[at random][stopping]" instead.

The blankets are a supporter in the Market. The description is "Synthetic fleece, grubby from being spread on many sidewalks." Understand "blanket" or "cloth" as the blankets. The scent-description is "hot polyester".

Instead of putting something on the blankets:
	try the salespeople discussing warning about blankets.

Instead of buying something which is on the blankets:
	say "[The noun] [are] certainly fake."

On the blankets is a watch. The description of the watch is "A valuable watch with diamonds set in the face and a chunky metal band."

Instead of taking the watch when the watch is not handled and the watch is on the blankets:
	say "Dubious though it is, the watch is being offered for sale: the salespeople would hardly permit us to walk off with it."

Rule for disclosing contents of the blankets:
	say "Laid out on the blankets carefully as though precious merchandise [is-are a list of mentionable things on the blankets]. " ]

The church exterior is a facade in Church Forecourt. It fronts west. Understand "new church" or "plaster" or "entrance" or "entry" or "flank" or "building" or "flank of the building" as the church exterior. The printed name is "New Church".
	The initial appearance is "This corner of the park, in the lee of the church, has been left free of kiosks and booths. Contrary to the usual rules of cathedral layout, the [church exterior] is oriented toward the north, so [we] are standing by the flank of the building, though there is an entrance on this side."
	The description is "It manages to be austere without seeming in the least modern: the walls are white and the windows clear, but the proportions, the texture of the plaster, the irregular leading between the panes of glass, all come of the age of handmade things."

Instead of touching the church exterior:
	say "We rest our spread palm on the wall of the church. It is reassuringly solid."

Some clear windows are part of the church exterior. Understand "panes" or "glass" or "leading" or "irregular" as the clear windows.
	The description is "They reflect the lucid blue of the sky."

Instead of searching the clear windows:
	say "The lighting conditions are such that [we] can't see in, only catch the reflection of the sky above."

Rule for listing exits when the location is Church Forecourt:
	if boldening is true:
		say "[b]South[/b] and [b]east[/b] lead to more of the park; there is a small [cinema-exterior][if the backpack is not handled] (where I left my pack)[end if] to the [b]north[/b], and the entrance to the [church exterior] is [b]west[/b].";
	else:
		say "South and east lead to more of the park; there is a small [cinema-exterior][if the backpack is not handled] (where I left my pack)[end if] to the north, and the entrance to the [church exterior] is west.";

The cinema-exterior is a facade in Church Forecourt. It fronts north. It is scenery. The description is "Large red letters on the marquee announce the latest film from Cannes." Understand "small" or "cinema" or "theater" or "theatre" or "movie" or "red letters" or "large red" or "large letters" or "large red letters" or "marquee"  or "film" or "cannes" as the cinema-exterior. The printed name is "cinema".

Section 4 - Heritage Corner

The Heritage Corner is east of the Fair and southeast of Park Center. It is proper-named. The description is "This patch of the town square has been paved over in [octagonal bricks] and is commonly used for displays of traditional dancing: over-50 women in home-made embroidered aprons, skipping arm-in-arm and jumping over broomsticks[one of].

No, there aren't any here [i]now[/i]. But trust me. It's an unforgettable sight[or][stopping]."

Rule for distantly describing Heritage Corner:
	say "That way is the bricked-over portion of the town square, sometimes used for exhibitions of regional dance. Today it is less populated than most of the Square[if the location is the Fair]. Beyond Heritage Corner to the east is the hostel where you stowed some important gear[end if]."

In-direction of Heritage Corner is east. [Into the hostel]

A diorama table is fixed in place in Heritage Corner. It is a supporter. The initial appearance is "Under a bit of [diorama-shelter] in the corner, [a diorama table] shows scenes from local history, rotated out each week. This week's diorama represents the first sitting of the Committee for the New Orthodox Orthography." Understand "diorama" or "scene" or "dioramas" or "shelter" or "scenes" or "local history" or "history" as the diorama table.

The description of the diorama table is "The patriotic scene is set against the backdrop of the Bureau's buildings ca. 1895, where the committee first met, but the historians have included a bit of the building exterior to show that the meetings were conducted under army guard. The writing of dictionaries has not always been bloodless[if the army is not on the diorama table and the members are not on the diorama table]. Both army and members are missing[otherwise if the army is not on the diorama table]. The army has been removed[otherwise if the members are not on the diorama table and the member is on the diorama table]. The members have been reduced to a single [member][otherwise if the members are not on the diorama table]. The members have been removed[end if].". Understand "backdrop" or "setting" or "buildings" or "bureau" or "bureau's" or "building" or "scenery" as the diorama table when the location is Heritage Corner.

Instead of finding the diorama table when the subcommand of the diorama table matches "bureau":
	try approaching the Rotunda.

The diorama-shelter is part of the diorama table. The printed name is "shelter". Understand "shelter" or "bit" or "bit of" or "clear" or "plastic" or "hood" as the diorama-shelter. The description is "Little more than a clear plastic hood to protect the diorama beneath."

Check waving the letter-remover at diorama-shelter when the current setting of the letter-remover is "s":
	say "The device buzzes, puzzled. You can't make 'helter' without a bit of 'skelter.'" instead.

Instead of inserting something into the diorama table:
	try putting the noun on the diorama table;

Instead of pushing something which is on the diorama table:
	if the noun is the army:
		say "[We] form the army into [one of]Roman-style formations[or]a fierce defensive line[or]a cheerleading pyramid[at random].";
	otherwise:
		say "[We] inventively reposition [the noun] [one of]to the outside of the meeting chamber[or]to be on the walls of the meeting chamber[at random]."

Report putting something on the diorama table:
	if the noun is the members or the noun is the army or the noun is the member:
		say "[We] restore [the noun] to [their] rightful position." instead;
	otherwise:
		say "[We] add [unless the noun is plural-named]an [end if]incongruous [noun] to the scene." instead;

Some members are naughty-sounding things on the diorama table. The description is "Mostly men and a few women, sternly dressed and with solemn expressions." Understand "committee" as the members.

An army is a thing on the diorama table. The description of the army is "A collection of soldier figurines in blue uniforms."

A description-concealing rule:
	if the army is on the diorama table:
		now the army is not marked for listing;
	if the members are on the diorama table:
		now the members are not marked for listing.

Definition: a thing is diorama-appropriate:
	if it is the member:
		yes;
	if it is the members:
		yes;
	if it is the army:
		yes;
	no.

The diorama follow-on rule is listed before the examine supporters rule in the carry out examining rules.

This is the diorama follow-on rule:
	if the noun is not the diorama table:
		make no decision;
	if the diorama table does not support anything which is not diorama-appropriate:
		if the diorama table does not support anything:
			say "The scenery appears to have been hot-glued in place.";
		otherwise:
			say "[The list of things *in the diorama table] [if the number of things on the diorama table is 1 and the members are not on the diorama table]is[otherwise]are[end if] movable, but the rest of the scenery appears to have been hot-glued in place.";
		rule succeeds.


The bakery is a facade in Heritage Corner. It fronts south. It is scenery. Understand "bakery" or "baker" as the bakery. The description is "It's closed today and so there are no products on display, since nothing was baked this morning. But on any other day the windows would be stocked with round and oblong loaves, olive bread, crescent pastries, and a traditional specialty, a kind of savory muffin studded with pine nuts.".

Instead of going south in Heritage Corner:
	say "That way lies a bakery closed for Serial Comma Day. [run paragraph on]";
	carry out the listing exits activity.


Rule for listing exits when the location is Heritage Corner:
	if boldening is true:
		say "The park continues to the [b]north[/b] and [b]west[/b]; to the [b]east[/b] is [if the hostel is unvisited]a backpackers['] [hostel-exterior] where you've stayed recently and where you stowed the rest of your important possessions[otherwise]the [hostel-exterior][end if].";
	else:
		say "The park continues to the north and west; to the east is [if the hostel is unvisited]a backpackers['] [hostel-exterior] where you've stayed recently and where you stowed the rest of your important possessions[otherwise]the [hostel-exterior][end if]."

The hostel-exterior is a facade in Heritage Corner. It is scenery. The printed name is "hostel". The description is "It's a narrow brick townhouse with only one or two rooms on each floor, and silly ornamental brickwork up near the skyline. The label over the entrance merely announces a generic hostel, without the dignity of a name." Understand "hostel" or "sign" or "townhouse" or "silly brickwork/bricks" or "ornamental brickwork/bricks" or "silly ornamental brickwork/bricks" or "brickwork" or "narrow" or "brick" or "backpacker's" or "backpackers'" or "backpacker" as the hostel-exterior.  The hostel-exterior fronts east.

The octagonal bricks are scenery in Heritage Corner. The description is "Alternating with square bricks of a slightly darker shade of maroon. Nothing about this seems remotely significant." Understand "ground" or "paving" or "floor" as the octagonal bricks.

Instead of examining the octagonal bricks:
	if the subcommand of the noun matches "bricks":
		try examining the hostel-exterior instead;
	otherwise:
		continue the action.

Chapter 2 - Indoor Areas

Section 1 - Cinema

The Cinema Lobby is north of Church Forecourt. It is indoors. The description is "This is a small, one-screen theater. [one of]The seats are not comfortable and the screen is not large. The projector is old. The management is lazy. No food is served.

On two occasions, the film I was watching burst into flames while it was being shown.

Despite these handicaps, it maintains an active and interested clientele simply by virtue of content: a wide variety of foreign films that, though meticulously dubbed into flawless California-accented English, nonetheless carry that slight tang of the forbidden.

[or][stopping]Evidently the next showing is not for a little while yet, because there are no patrons in sight."

In-direction of Cinema Lobby is west. [Into screening room]
Out-direction of Cinema Lobby is south. [To church forecourt]

Rule for listing exits when the location is Cinema Lobby:
	if looking, do nothing;
	otherwise say "There is of course the exit to the south; the screening room itself is west."

The ticket-taker is an alert man in the Cinema Lobby. The initial appearance is "[The ticket-taker] waits just west of us, at the entrance to the screening room, ready to take tickets."
	The description of the ticket-taker is "Not one of this country's best and brightest, but he seems good-natured."
	Understand "young" or "man" or "ticket taker" or "taker" as the ticket-taker.

A ranking rule for the ticket-taker when the ticket-taker is not the current interlocutor:
	decrease the description-rank of the ticket-taker by 30.

Rule for writing a paragraph about the ticket-taker when the ticket-taker is not the current interlocutor:
	set the current interlocutor to the ticket-taker;
	if the ticket-taker knows allowed-in-movie, say "'Yo,' says the [ticket-taker] as [we] come in.";
	otherwise say "'Ticket,' says the [ticket-taker] automatically.";
	set pronouns from the ticket-taker;
	now everything held by the ticket-taker is mentioned.


Instead of going to the Screening Room when the ticket-taker does not know allowed-in-movie:
	carry out the describing path activity with the player;
	if the ticket-taker is not in the location, continue the action;
	set the current interlocutor to the ticket-taker;
	queue hang-on-there.

The Screening Room is west of Cinema Lobby. It is indoors and checkpoint. The description is "[if the player recollects what the movie seems]'Red'[otherwise]Whatever is scheduled for later showing[end if] has not started yet, and is probably not destined to start for some time; at any rate,[unless the project is switched on] the [film screen] is blank and[end if] no audience has yet assembled."

Out-direction of Screening Room is east. [Back to cinema lobby]

Instead of waiting in the Screening Room:
	if the reel is in the projector and the projector-switch is switched on:
		make no decision;
	say "[one of]A little time passes, but I don't think the movie's likely to start for quite some time.[or][We] haven't got time to wait for the show to begin.[stopping]".

Instead of listening to the Screening Room:
	say "The thick walls and solitude make for an especially thick and syrupy silence, as though the rest of the world didn't exist at all."

The film screen is scenery in the screening room. Understand "show" or "movie" as the film screen. The printed name is "screen". The description is "[if the reel is in the projector and the projector is switched on]The screen flickers black and white[otherwise if the projector is switched on]The white beam from the projector illuminates it, but no movie is showing[otherwise]The screen is empty: nothing is yet being shown. It is also very very small by modern cinema standards[end if]."

The seats are an enterable supporter in the Screening Room. The seats allow seated, standing, and reclining. The posture of the seats is seated. The seats are scenery and plural-named. The description is "In an age of stadium seating and theater chairs that resemble home recliners, these don't even have the usual old-fashioned red plush. They are hard wooden seats such as might be found in a puritanical schoolroom." Understand "row" or "rows" or "seat" or "seating" or "chairs" or "chair" as the seats.
	Instead of looking under the seats when the backpack is in the Screening Room:
		say "I've already located the backpack, right where I left it."
	The scent-description of the seats is "a mixture of wood lacquer and popcorn grease".

The backpack is in the Screening Room. The initial appearance is "My [backpack] is stowed under a seat in the third row from the back." Understand "pack" or "rucksack" or "backsack" as the backpack.
	The backpack is wearable and essential.
	It covers the torso-area.
	The introduction of the backpack is "I figured that it would be undisturbed there for a couple of hours, in the dark and out of sight, and if anyone found it they would probably turn it in to Lost and Found. But it is a big relief to find it still there."

The backpack is a container[player's holdall]. The description of the backpack is "Mine: a little bit worn, but capacious. It doesn't have any identifying marks on it, and I thought a brand-new bag would look more suspicious[if the backpack is open]. It currently gapes open[else]. It's closed[end if]." The backpack is openable and closed and transparent.

The backpack contains a flash drive. The description of the flash drive is "This is it: all my notes; the syllable-and word-generating programs from which I built my language vocabulary; the lexicon and pronunciation guide and grammatical descriptions.

And then there's the research to support the product: citations; copies of journal articles and scans from books; contact information for people in the outside world I think could help me.

It's everything I've been working on for the last three years."

Carry out taking the flash drive:
	complete "Get my backpack from the cinema";
	record "retrieving the backpack" as achieved.

Carry out taking something which encloses the flash drive:
	complete "Get my backpack from the cinema";
	record "retrieving the backpack" as achieved.

The flash drive is essential.

[ The projection booth is here chiefly for easter egg purposes: if the player (much later on) manages to create the abstract LEER, run it through the mirror, and bring the resulting REEL back to the projection booth, the result is this curious movie -- an achievement reward. ]

The Projection Booth is north of Screening Room. It is indoors. The description is "The booth is small and lined with grey carpet. It smells faintly of hot dogs."

The grey-carpet is scenery in the Projection Booth. The printed name is "grey carpet". Understand "gray" or "grey" or "carpet" as the grey-carpet. The description is "In this dim light it's hard to give the carpet too exact an inspection, which I imagine is just as well."

Instead of smelling the Projection Booth:
	say "The ghost of hot dog and relish lingers in the air. It's mildly nauseating."

The jotter is a notepad in the Projection Booth. The initial appearance is "[A jotter] is propped up next to the projector." The description is "It's a little spiral-bound notebook, the kind reporters in old movies carry. It's full of notes: running times of movies. Numbers of people in the audience. Who clapped during potentially subversive scenes. Who arrived in a group of more than three."
	The memo of the jotter is "Red: audience 14. FM couple. MM couple. M in raincoat. FFFFF group. F. MF. M.".

Rule for writing a topic sentence about the jotter when the projector is mentionable:
	say "[A jotter] is propped up next to [the projector].[no line break]"

The projector is a container in the Projection Booth. It is fixed in place. The initial appearance is "[A projector] has been set up facing the [film screen][if the reel is in the projector] and [a reel] threaded into it[end if]." The description of the projector is "It's an old-fashioned film projector[if the reel is in the projector], with [a reel] of film inserted[otherwise], with a spot to hold [a reel] of film[end if]. The lens points at the screen." Understand "lens" as the projector.

The projector-switch is a device. The projector-switch is part of the projector. The printed name of the projector-switch is "projector switch". Understand "switch" or "projector switch" as the projector-switch.

Sanity-check showing the reel on the projector:
	if the reel is in the projector and the projector-switch is switched on:
		say "[The reel] is running on [the projector] already." instead;
	if the reel is in the projector:
		try switching on the projector-switch instead.

Sanity-check switching on the projector:
	try switching on the projector-switch instead.

Sanity-check switching off the projector:
	try switching off the projector-switch instead.

Before taking the reel when the reel is in the projector:
	if the projector-switch is switched on:
		try switching off the projector-switch.

Report switching on the projector-switch when the reel is not in the projector:
	say "The light comes on, but nothing plays." instead.

Carry out switching on the projector-switch when the reel is in the projector:
	now the reel position of the reel is 1.

Report switching on the projector-switch when the reel is in the projector:
	say "[We] flip the switch. [The projector] comes to life with a hum. There's the usual flickering of light and dust, and then a black and white movie begins to play." instead.

Understand "movie" or "black and white" as the reel when the reel position of the reel is greater than 0.

The reel has a number called reel position.

[The reel here is a little bit like the tale, in that it produces a partially randomized story. This time, however, instead of going for a plot, we juxtapose a series of unexplained images and leave it up to the reader to try to imagine a connection between them -- a fires in the desert approach a la Wilmot's End, to borrow the language of Echo Bazaar.

The intention is to suggest an encounter with a slightly inexplicable film that deals with emotional reactions towards the Atlantean threat and all that goes with it.

The filmmaker is Lucius Quagmire, whose manifesto can also be found in the Aquarium Bookstore by the determined searcher.]

Every turn when the reel is in the projector and the projector-switch is switched on (this is the movie advancement rule):
	record "Lucius Quagmire award for viewing unusual films" as an achievement;
	if the location is Projection Booth or the location is Screening Room:
		say "[cartoon event for reel position of the reel]";
	increase the reel position of the reel by 1;
	if the reel position of the reel is greater than 4:
		now reel position of the reel is 1;
		now the projector-switch is switched off.  [if we go away for a while and come back, we'll find that the story has progressed in our absence]

Instead of examining the reel when the reel is in the projector and the projector-switch is switched on:
	follow the movie advancement rule.

To say on screen:
	say "[one of]On screen,[or]On the screen,[or]In the movie,[or]In the picture,[or]As we watch,[at random]".

To say harmless event:
	say "[one of][viewpoint character] is painting an easter egg with meticulous care[or]a little blonde girl romps through a field carrying a basket[or][viewpoint character] is making a fuss over a white rabbit in a cage[or]a kneeling priest is placing an egg under one of the pews of his church[or]three little boys are throwing eggs at one another[or][viewpoint character] is vigorously squeezing a hen, who does not appear to have done anything to deserve it[or]church bells are ringing in the spire of a Gothic church[or]a lady with white gloves is turning over and over an enamel egg studded with gemstones[or][viewpoint character] dips a pastry brush into a dish of yolk[at random]".

To say foreboding event:
	say "[one of]a man with a snub-nosed pistol is stealing two eggs from a cleric[or]the camera zooms in close on an egg. There is a sound of ticking[or]two men circle each other warily on a stone bridge, built across a dangerous ravine. One of them wears a badge in the shape of a rooster. The other has a giant A stitched to his coat[or]a plane buzzes low to the ground over a peaceful-looking farm. A man parachutes out, lands, and sneaks into the barn. He is carrying a number of pamphlets in English[or]customs officials are unpacking sawdust from a box, revealing a number of uniquely decorated eggs. One of them snaps an order abruptly at the other. Both look alarmed. In close-up, we see tiny writing on the eggs[or]a nurse in uniform counts out glass ampules of clear liquid. Her fingers tremble. She sets the ampules on a table next to a figurine of a white rabbit[or]a girl in white gloves sits down on a church pew and folds her hands to pray. As she does so, the flowers on the altar wilt and turn black[or][viewpoint character] kneels in the dirt, burying eggs in a row as though they were tulip bulbs[at random]".

To say atmospheric event:
	say "[one of][viewpoint character] watches as an egg begins to chip from the inside. Something is trying to get out[or]the camera closes and holds for a long time on a glass jar of pickled eggs. Finally a young boy's hand reaches in and extracts one of the pickles. The rest of the boy is not shown[or]a dead rabbit on a string hangs from the tree. The shot holds there for a long period. Wind rustles in the grass[or]a woman clings to the lapels of a sharply-dressed gentleman. He pushes her away. She takes off a brooch shaped like a rooster and flings it at his feet. He picks it up and slowly pins it to his tie[or]an old man lies on his deathbed, two generations of family members gathered around him. A bird lands on the windowsill outside. It lays a spotted blue egg[or]a pair of eggs sizzle in a frying pan for what feels like an entire minute, before a film hand descends to remove them to a plate[or][viewpoint character] sits skinning a brown rabbit. The film lingers over the separation of skin from flesh, and the glassy look in the dead rabbit's eyes[or][viewpoint character] finds an Atlantean flag [--] one of the old style from before the second World War [--] and tears it into strips[at random]";

To say climactic event:
	say "[one of]angry villagers pelt a plane with rotten eggs while a man in [--] is that Atlantean uniform? [--] cowers away from their wrath[or]a country church explodes from the inside, the stained glass blowing out in all directions. Beleaguered peasants watch with dumb incredulity. A small girl bleeds[or][viewpoint character] digs, manic and desperate, in a graveyard, while more and more villagers come to watch. At last they discover something at the bottom of the hole. Everyone draws back, appalled, but the film does not show us what they are seeing[or][viewpoint character] runs into a burning house and remains there while the fire burns higher and higher, only to return with a book in a worn black binding. From the notches cut into the edges of the page, it appears to be a Bible or a dictionary[at random]";

To say denouement event:
	say "[one of][viewpoint character] applies restoration gel to an easter egg, which turns into a young boy[or]citizens erect a stone monument of a rooster, on a high platform overlooking the sea. Then [viewpoint character] garlands the monument with flowers[or]a priest reads the service over a casket[or]half a dozen children seated on a porch eat fried eggs from the same pan. They have a wild-eyed look, which [viewpoint character] seems to find frightening or sad[at random]";

The viewpoint character is text that varies.

To say first arrival:
	say "The scene opens on [a viewpoint character][one of] seated in the sunshine[or] reading a newspaper[or] kneeling in the dirt outside a farmhouse[or] walking across a field[or] doing some shopping at a farmer's market[or] carrying a cage containing a rabbit[or] putting eggs into a basket[or] purchasing a set of paints[or] speaking earnestly if incomprehensibly to camera[or] reading aloud from a small black book that looks much battered[or] peering into a cracked mirror[or] drawing one finger across a map of the Mediterranean[or] cutting letters from a newspaper with a pair of nail scissors[or] gathering a clump of grubby carrots and washing them at a pump[at random]";

To say cartoon event for (N - a number):
	if N is 1:
		say "A jolly title card comes up, which reads '[one of]Les oeufs de Pâques[or]Ostereier[or]Huevos de pascua[or]Uova di Pasqua[or]Pazko-arrautzak[at random]'.";
		now the viewpoint character is "[one of]a man in a black uniform[or]a woman in a chic blue hat[or]a farmer with calloused hands[or]a little blonde girl[or]a nurse in wartime uniform[or]a priest[or]a skinny spinster[or]a husky-voiced housewife[or]a teenaged boy[at random]";
		say "[line break][first arrival]. Afterward, [one of][harmless event][or][atmospheric event][at random].";
	if N is 2:
		say "[on screen] [one of][foreboding event][or][harmless event]. [paragraph break]Then [foreboding event][or][atmospheric event]. [paragraph break]Next [foreboding event][at random]. [one of]The dialogue is rapid, foreign, and distorted by poor film quality and the passage of time[or]It's impossible to make out what's being said, but the music is melancholy, played on a distressed fiddle[or]The soundtrack has so degraded that the words are incomprehensible, but there is a backing tune of young children singing[at random].";
	if N is 3: [conclusion]
		say "[on screen] [climactic event].

Finally, [one of][atmospheric event][or][denouement event][at random].";
	if N is 4:
		say "The credits come up on the screen. Not a single one of these names is suitable for daily use on the island. After three cards of names, a final note comes up reading, DISTRIBUTED UNDER THE HAND OF LUCIUS QUAGMIRE. FOR THE DISTURBANCE OF MEANING.

The film ends and the projector goes dark.";


Check inserting something into the projector:
	if the noun is the fishing-reel:
		say "It is not that kind of reel." instead;
	if the noun is not the reel:
		say "The projector can only really show reels of film." instead;
	if the projector-switch is switched on:
		try switching off the projector-switch;

Sanity-check putting the reel on the projector:
	try inserting the reel into the projector instead.

Understand "thread [something] on/onto [the projector]" as inserting it into.
Understand "mount [something] on/onto [the projector]" as inserting it into.

Understand "show [something] on [the projector]" as showing it on. Showing it on is an action applying to two things.

Sanity-check performing something on the projector:
	try showing the noun on the projector instead.

Instead of mounting the reel:
	if the projector is in location:
		try inserting the reel into the projector;
	otherwise:
		say "There is nothing suitable here to mount it on."

Check showing something which is not the reel on the projector:
	try inserting the noun into the projector instead.

Check showing the reel on something which is not the projector:
	say "[We] really need a film projector for that." instead.

Check showing something which is not the reel on something which is not the projector:
	say "I could understand if you were trying to show film on a projector, but that suggestion doesn't make much sense to me." instead.

Check showing the reel on the projector when the reel is not in the projector:
	try inserting the reel into the projector;
	if the reel is not in the projector:
		stop the action.

Check showing the reel on the projector when the projector-switch is not switched on:
	try switching on the projector-switch;
	if the projector-switch is not switched on:
		stop the action.

Test projection with "tutorial off / put reel on projector / turn on projector / take reel / mount reel / take reel / thread reel / take reel / show reel / show reel on projector / s / z / z / n" holding the reel in the Projection Booth.

Section 2 - Staircase


The Monumental Staircase is east of Park Center and north of Heritage Corner [and south of Outdoor Cafe]. It is checkpoint. The description is "Once, the [central hillock] of the city was a fortified enclave, protected from the harbor and the peasant town by great walls. Now, however, the walls are mostly gone, except for a little spur that runs north from here. The walkways and tower are open to the public.

Meanwhile a staircase as wide as a street [if the former direction is west]ascends into this town square, with the fountain playing at the cen[ter][otherwise]descends east from the town square toward the harbor[end if]."

Sanity-check going southeast when location is Monumental Staircase:
	try going east instead.

Check waving the letter-remover at staircase-close-view when the current setting of the letter-remover is "i":
	say "The device buzzes, puzzled. Sadly it lacks the verve to understand a 'monumental starcase' as a poetic reference to the universe as a whole." instead.

Rule for distantly describing the Monumental Staircase:
	say "Off in that direction is the monumental staircase [if the location is High Street]that leads [up] to the town square, and [we] can just make out the tops of the heads of people standing near it[otherwise]that leads down towards the marina area of town[end if]."

After going to the Monumental Staircase from High Street:
	let N be the number of entries in the described motion of the player;
	if N is greater than 1:
		say "[path-walked so far]";
	otherwise:
		clear path-walked for player;
	if path description count is greater than 0:
		say "From there [we] have";
	otherwise:
		say "[one of][We] have[or]It's[at random]";
	increase path description count by 1;
	say " [one of]an invigorating[or]a healthy[or]a tiring[or]another wearying[or]yet another exhausting[stopping] climb up[unless N is greater than 1] the Monumental Staircase[end if], with the view of the sea getting better and better as [we] go[one of] (but of course looking requires stopping to gaze back over our shoulder)[or][stopping].[paragraph break]";
	continue the action.

The staircase-close-view is scenery in Monumental Staircase. The printed name is "monumental staircase". Understand "monumental" or "staircase" as staircase-close-view. The description of staircase-close-view is "[We] are standing on one of the upper steps right now, but the staircase descends (if shallowly) for another story or more towards high street." Instead of climbing the staircase-close-view, try going east.

Instead of going down in Monumental Staircase, try going east.

A poster is fixed in place in Monumental Staircase. The initial appearance is "An enormous blue and orange warning [poster] covers the wall alongside the staircase." The description is "'WARNING: Have you seen these dangerous individuals? If so, avoid contact and report all interactions to the Bureau of Orthography.' Below, there's a picture of several people. One of them is you, before your face got shuffled with mine.[one of] It's funny that when we met, you mentioned you were a user of illegally modified language-tools, but you didn't emphas[ize] the grand larceny side so much.

Not to worry. I won't turn you in. I can hardly afford to, can I?[or][stopping]". Understand "blue" or "orange" or "enormous" or "huge" or "warning" as the poster.

A dangerous destruction rule for the poster:
	now the poster is not fixed in place;
	now the initial appearance of the poster is "The blue and orange warning [poster] is rolled up on the [ground] nearby."

Instead of taking or attacking the poster when the poster is in Monumental Staircase:
	if the poser is seen:
		make no decision;
	say "Defacing official property is illegal [--] like many other things [we][']ve done recently, I suppose [--] but more than usually likely to attract attention."



Fair is southwest of Monumental Staircase. [Postcard Stalls is northwest of Monumental Staircase.]

The central hillock is scenery in Monumental Staircase. The description is "A square park stretches east, with official buildings beyond, occupying what was once the fortified heart of town.

A little of the original fortification does exist immediately north and curving around to the northwest, but it is in very bad shape here, and the top of the walls cannot be walked on at this point." Understand "city" or "fortified" or "walls" or "great" or "enclave" as the hillock.

The harbor-view is a distant backdrop. The printed name is "harbor". It is in Old Hexagonal Turret, Old City Walls, Crumbling Wall Face, Outdoor Cafe, and Monumental Staircase. It screens east and northeast. Understand "port" or "harbor" or "docks" or "dock" as harbor-view. The description is "A harbor swarming with small and medium-sized tourist boats; most of the major shipping comes in via another route." The introduction is "That is where [we] [are] trying to get to [--] or rather, get through."

The fish-market-view is a distant backdrop. The printed name is "fish market". It is in Old Hexagonal Turret, Old City Walls, Crumbling Wall Face, Outdoor Cafe, and Monumental Staircase. Understand "market" or "fish market" as the fish-market-view. The description is "From this angle and distance, all you can see is the open space and a few awnings. It's not the best time of day for this kind of thing anyway."

Instead of going down in the Staircase, try going east. Instead of going up in the Staircase, try going west.

The Open-Air is a region. The Fair, Church Forecourt, Midway, Heritage Corner, [Outdoor Cafe, ] Monumental Staircase, Park Center[, Postcard Stalls, and Food Corner] are in the Open-Air.

Section 3 - The Hostel

The Hostel is east of Heritage Corner. It is indoors. The description is "I take it this is where you stayed from the time you got to town until our operation. I would have expected that someone with your credentials would have been able to afford something better: The Fleur d'Or, maybe? But maybe you thought this was lower-profile. At least it's clean and doesn't smell funny."

Rule for listing exits when the location is the Hostel:
	if looking, say "There's a [h-staircase] that leads up to the dormitory rooms.";
	otherwise say "[We] could either climb the [h-staircase] up to the dormitory rooms or go back to the park, [west]."

The h-staircase is an up-staircase. The h-staircase is in the Hostel. It fronts up. The printed name is "spiral staircase". Understand "spiral" or "staircase" as the h-staircase. It fronts up. The description is "To save space, it winds around a pole twice before reaching the floor above. This is not kind to people with luggage, but people with luggage are supposed to stay in real hotels."

In-direction of the hostel is up. [Into the dormitory]
Out-direction of the hostel is west. [Back out to Heritage Corner]

Instead of facing up in the hostel:
	say "The ceiling is a little cracked but in no way fascinating."

Instead of facing up in the dormitory room:
	say "The ceiling is a little cracked but in no way fascinating."

The attendant's desk is a desk in the Hostel. The description is "Formica with a fake wood grain."

The attendant is a woman in the Hostel. The printed name is "desk attendant". Understand "desk attendant" as the attendant. The initial appearance is "[The attendant] [if the current mood of the attendant is distrustful]watches us suspiciously[otherwise]is sort of eying us[end if]." The description of the attendant is "She's dressed in a kind of casual-hippy way: nose ring, poofy [blouse] that doesn't fit quite right."

The introduction of the attendant is "She doesn't recogn[ize] you [--] us [--] but that's a good thing, I think."

Definition: a thing is attendant-related:
	if it is the attendant, yes;
	if it is enclosed by the attendant, yes;
	no.

Rule for deciding the concealed possessions of the attendant:
	if looking and the attendant is as-yet-unknown:
		yes;
	otherwise:
		no.

Instead of looking at an attendant-related thing through an authentication scope:
	if the noun is the louse:
		do nothing instead;
	say "[The second noun] pings happily as [we] sight [the noun] with the crosshairs. [one of]'Do you mind?' [if the noun is the attendant]she[otherwise]the attendant[end if] asks. 'That's kind of rude.'[or]She sighs pointedly.[or]She mutters about people who can't take hints.[or]She ignores us stoically.[stopping]".

Guidebook is a book in the Hostel. The printed name is "Guidebook to Anglophone Atlantis". Understand "guidebook to atlantis" or "guide" or "book" or "guidebook to anglophone-atlantis" as the guidebook. The initial appearance is "Discarded in one corner is [a guidebook]." The description is "A much-thumbed and several years out-of-date guidebook to this immediate area. The cover is tomato-red but the pages are crinkly and beige: it appears that someone has spilled coffee on it.

There's too much here to take in in a quick read, but we could look up specific topics if we wanted to read more." The contents of the guidebook is the Table of Local Attractions.

A first after reading a command (this is the cut the the rule):
	while the player's command includes "the":
		cut the matched text.

After reading a command (this is the insert hyphen in Anglophone Atlantis rule):
	if the player's command includes "anglophone atlantis":
		replace the matched text with "anglophone-atlantis".

Table of Local Attractions
topic	reply
"toilets" or "toilet" or "restroom" or "convenience" or "public convenience"	"The island is not overprovided with public toilets, but there is a building near the bus station."
"typoland fun fair" or "fun fair" or "typoland" or "fun"	"Two full pages are devoted to Typoland Fun Fair, describing such delights as the exclamation point mascot character and the competitive kerning events."
"anglophone" or "atlantis" or "atlantean" or "anglophone-atlantis"	"The entire book concerns the island, so we'll have to be more specific about places and institutions."
"atlantida"	"Atlantida is listed here as the 'guiding spirit' of the island and its people. Representations of this abstraction can be found in posters and advertisements, and in the form of a great statue in the roundabout off Deep Street."
"aquarium" or "bookstore" or "aquarium bookstore"	"The entry describes the Aquarium Bookstore as a source of used and off-beat new books, especially those pertaining to 'alternate visions of Atlantis'. The phrase 'treasure trove' also appears, though in a context that makes clear this is code for 'fire hazard'."
"bureau/rotunda" or "bureau of orthography" or "orthography"	"The entry is long and greasily flattering: resplendent blue dome, magnificent interior, warm and hospitable employees, world-renowned historical research department, etc., etc., etc."
"Serial Comma Day" or "holiday"	"Commemorating the 1935 standard[ization] of a whole range of punctuation conventions, Serial Comma Day is one of three major patriotic holidays on Anglophone Atlantis. (See also SHAPLY DAY, SECESSION DAY.)"
"Shaply Day"	"Named in hon[our] of pioneering suffragette Phyllida Shaply, Shaply Day commemorates the 1877 decision to allow all citizens of Anglophone Atlantis to vote in referenda (the direct-democracy form for deciding contentious issues). This right was extended regardless of race, gender, or creed and is a source of considerable pride to Atlanteans."
"Secession Day" or "secession"	"The secession of Atlantis from British governance in 1823 culminated in the reduction of the attacking British fleet on April 19. The holiday celebrates this occasion, which is considered the beginning of Atlantean self-rule."
"cannon" or "depluralizing" or "depluralizing cannon" or "hexagonal" or "turret" or "depluralising" or "depluralising cannon"	"The Guidebook explains that Atlantis['] harb[our]s were traditionally defended by the deplural[izing] cannon, using techniques discovered by Clarence Arbot in 1779. Turrets along the old city walls provided elevated positions for these cannons, allowing them considerable range. See also SECESSION, CLARENCE ARBOT."
"sigil street" or "sigil"	"The entry on Sigil Street proclaims it an excellent place for those seeking to commission their own fonts or indulge in other typographical expenses."
"ampersand bend" or "ampersand/bend"	"Ampersand Bend is notable to the guidebook chiefly for the presence of a fine museum. A little less fine now that we've been past, perhaps."
"long street" or "long"	"Long Street is recorded as a go-to spot for high-end shopping and restaurant experiences."
"customs house" or "customs/house"	"The book offers advice that verges on churlish about how important it is not to commit any type of customs violation."
"clarence" or "arbot" or "clarence Arbot"	"A little copperplate engraving of a man with heavy-lidded eyes accompanies the sidebar biography of Clarence Arbot: b. 1732, proud parent of some 19 children; tireless researcher who in later years rarely left his laboratory 'except to go to bed'; in 1779, the inventor of generic deplural[ization], allowing multiples of almost anything to be reduced to just one. What his wives thought of his research is not recorded. See also DEPLURAL[IZING] CANNON."
"james/elias/milford/higgate" or "milford higgate" or "james elias" or "q-insertion"	"Milford Higgate and James Elias are commonly credited with the discovery of Q-insertion: the letter Q was the first that anyone was able to add to a word. Other forms of letter insertion had to be discovered separately. The Guidebook parrots the standard laudatory text concerning their discovery."
"anne" or "landis" or "rosehip"	"Anne Landis Rosehip is a local artist in glass and etched metal working out of a studio on the south side of Old City. She's some sort of distant cousin to my father."
"Babel" or "cafe" or "café" or "babel cafe/café"	"A popular multiethnic eatery in the university district, best known for having been the meeting place of Milford Higgate and James Elias."
"DCL" or "dental" or "consonants" or "limited" or "dental consonants limited" or "dental consonants"	"Dental Consonants Limited is the largest and most successful linguistic engineering firm on the island, directly employing 15,000 people [--] 8% of the citizens of Anglophone Atlantis or 18% of the workforce. Thanks to its overwhelming significance to the local economy, DCL enjoys significant privileges in terms of support for its espionage policies. DCL builds a wide variety of machines for linguistic efficacy, but its most public[ize]d efforts are in the area of letter-insertion. The company was originally formed to work on T, D, and N-insertion."
"airport/airplane/airline/plane"	"There are no airports on the island that support commercial flights, though there is a landing strip for corporate jets coming in to the DCL campus."
"language/text/linguistics" or "linguistic efficacy"	"The Guidebook points out rather primly that only English is spoken on the island, due to the island's early discovery of linguistic efficacy. Except in special contexts such as sanctioned language classes, attempts to make oneself understood in other tongues will lead to shunning and possibly even jail time."
"history/past"	"The Guidebook gives a thumbnail description, and an extremely biased one, of how linguistic efficacy was discovered and put to use on the island, and its subsequent rise as an independent power when many other states were being absorbed into the empires of England, Spain, France, the Netherlands, etc. This is a bit rich considering that before achieving this independence Atlantis was in fact successively a Spanish, Dutch, and English territory; but local publishers tend to gloss that point a bit. See also MUSEUM."
"lodging/lodgings"	"The guidebook describes two options in the center of town: the hostel, suitable for people on a budget, and the much more expensive Fleur D'Or hotel."
"fleur d'or" or "fleur" or "hotel/hotels" or "fleur d'or hotel"	"The Fleur D'Or is listed as the town's only four-star hotel. (There are no five-star hotels on this island. It is not that kind of place.) As the Fleur d'Or principally attracts those interested in business or research to do with linguistic efficacy, it also maintains a bar with the only publicly-licensed homonym paddle. Visitors to the Fleur d'Or Drinks Club can enjoy linguistically-generated gimlets, rusty nails, and more."
"museum/exhibit/museums/exhibits"	"A museum of linguistic instruments open to the public is to be found on the grounds of the Fleur d'Or hotel."
"fountain" or "town square/park" or "park"	"The fountain is listed as one of the attractions of the old town park: the design and execution of the sculpture credited to one M. Antoinne, and was apparently his final work before he faced a firing squad for his use of an irregular surname. (This was during one of the more blood-soaked episodes of standard[ization], evidently.)"
"cinema/theater/theatre/movie/movies" or "movie theater/theatre"	"The Guidebook lists the cinema at the north end of the town park as the best place to see films 'correctly and legally dubbed'."
"hostel" or "backpacker"	"Mysteriously, the entry for the hostel itself, which ought to contain ratings of its cleanliness, safety, and reliability, has been obliterated with a black marker."
"[transit]" or "station" or "bus station"	"The book is forthright about the absence of public transportation, and recommends that visitors bent on vehicular travel should bring their own cars, since none are available locally for rent. A bus station with long-distance service cross-island to the town of Maiana can be found near Monument Green, though routes are not always served on holidays."
"fair/fairground/fairs/fairgrounds" or "market" or "farmer's market"	"The guidebook is lyrical about the phenomenal produce to be enjoyed at the farmer's market held in Hesychius Street every Saturday and Wednesday and also on special days of observation."
"fish market"	"The fish market, the guidebook explains, may be found at the northeastern part of town near the docks, and holds most of its sales in the early morning."
"dock/docks/boat/boats/ferry/ferries"	"The guidebook gives us to understand that the docks, found northeast of the central town, are a pleasant place to commission short voyages of exploration and to see the island from a distance. It does, however, warn against spending too much time in the adjacent taverns, which have an unsavory reputation."
"tavern/taverns" or "counterfeit" or "monkey" or "counterfeit monkey"	"The Counterfeit Monkey is a tavern of unsavory reputation near to the docks, said to be the locale of more fistfights and disturbances of the peace than the rest of the city put together. The tavern is named in hon[our] of a famous linguistic con job and was a regular site for contraband creation and smuggling. In 1929, the Bureau first developed tools and procedures for identifying linguistic fakes, the Monkey was the target of a law enforcement raid; but a lively and committed criminal community soon put the Monkey in business again with new strategies."
"all-purpose" or "all purpose"	"The All-Purpose, the guidebook explains, is a general civil servant attached to the Bureau of Orthography, with wide-ranging powers to repair, correct, and heal using a variety of linguistic tools."
"university/college/education"	"The guidebook praises the many excellent departments and exceptional research work performed at the university. This is all true, naturally."
"new church/cathedral" or "church/cathedral"	"The guidebook devotes two and a half pages to the splendors of the New Church, located on the western edge of the town square. It particularly admires the clean lines of the architecture, the solidly constructed pews, and the austere decoration; in fact, the more you read, the more the guide seems to be rhapsod[izing] about what the builders left [i]out[/i], instead of what they put in. The guide also recommends a visit to the church gift shop, which apparently supports assorted worthy causes, such as, for instance, buying a new roof for the structure and paying a custodial staff."
"food/eating/dining/restaurant/restaurants/eateries/cafe/cafes/café/bistro/cafés/eatery/lunch/dinner/breakfast"	"The guidebook lists several places to eat around town: the outdoor café near the docks; a Food Corner sometimes found in the town square; the restaurant attached to the Fleur D'Or hotel."
"lucius" or "quagmire" or "lucius quagmire" or "disturbance of meaning"	"A brief and plainly expurgated entry indicates that Lucius Quagmire was a film-maker in the early part of the 20th century who founded the Disturbance of Meaning group with the intention to  undermine the Anglophone hegemony. He was convicted of treason."


Every turn when the attendant carries a louse:
	say "The attendant screams, and performs some kind of strange dance, first brushing at her skin and then stomping at something on the [ground]. (So much for the louse, I think.)

She then tears out of the room, leaving it unattended. Unfortunately, places like this don't keep anything of value out front anyway, so your natural gift for larceny hasn't much scope here.";
	move the louse to the repository;
	now the attendant is nowhere;
	if the attendant is the current interlocutor:
		reset the interlocutor.

The attendant wears a nose-ring and a blouse. The description of the blouse is "White cotton with little ribbons on it. I hate that kind of frilly nonsense." The description of the nose-ring is "It's silver and reasonably discreet." Understand "nose" or "nose ring" as the nose-ring. Understand "ring" as the nose-ring when the ring is marked invisible.

The Dormitory Room is above the Hostel. It is indoors. Understand "dorm" as the Dormitory Room. The description is "Painted off-white, with [hard wood floors] under many layers of protective gloss coating: there are no surfaces in this room that would take a stain. Four [random dorm bed]s are lined up against the wall."

A dorm bed is usually scenery.

After reading a command when location is the dormitory room (this is the replace beds with bed rule):
	while the player's command includes "beds":
		replace the matched text with "bed".

Four dorm beds are in the dormitory room. The description of a dorm bed is "At this time of day, since everyone is checked out, the beds are all stripped down to bare mattress. Linens may be rented at the front desk [--] but [we][']re not staying here tonight, so there's no need to experience the thinning sheets and the pilled [if the player wears the Britishizing goggles]woollen[otherwise]woolen[end if] blankets. Your memory is enough for both of us."


A backpacking girl is an alert tourist woman in the dormitory room. She exhibits caution.
	The initial appearance is "[one of]A girl of about 19 [set prior to backpacking girl][if the girl is in the location]is standing in the middle of the room, looking around as though she can't quite believe where she landed or what she's doing here[otherwise]seems to be inclined to hang out here for the duration[end if][or][The backpacking girl] is still hanging out here[stopping]."
	The description is "She is just the sort of tourist who most annoys the locals, but actually I find her type a little endearing: she may not be very sophisticated yet, but she [i]wants[/i] to expand her horizons, and that's more than you can say for most of the friends she probably left back at home.".
	The backpacking girl wears a pink t-shirt. The description of the pink t-shirt is "It is somewhat too tight and bears the word JUICY in rhinestones across the bust." Understand "shirt" or "t-shirt" as the pink t-shirt.
	She carries a heavy pack. The heavy pack is a closed openable container. The description of the heavy pack is "The flag of Canada is [canada-girl][if the player knows fake-canada]mendaciously [end if]sewn on the back." Understand "full" or "massive" or "massively" or "backpack" or "her backpack" or "her pack" or "flag" or "of Canada" as the heavy pack.
	The flexible appearance of the heavy pack is "A massively full pack leans against one of the beds."
	Understand "tourist" as the backpacking girl.

Instead of finding a person when the subcommand of the noun matches "girl":
	try finding the backpacking girl.

Does the player mean finding the backpacking girl:
	if player's command includes "girl":
		it is very likely.

Check waving the letter-remover at pink t-shirt when the current setting of the letter-remover is "r":
	say "That would be intriguingly disgusting, if it weren't for the fact that T-SHIT doesn't describe anything anyone with a functional colon has ever heard of." instead.

Test girl-description with "look" in the Dormitory Room.

Instead of opening the heavy pack in the presence of the backpacking girl:
	say "Overtly searching her possessions while she is here seems like a ticket to trouble."

The heavy pack contains an assortment of very short shorts, a broomstick skirt, flip-flops, bikini bottoms, various t-shirts, an anorak, a fat guidebook to Europe, a cheap camera, and a box of tampons.

Instead of taking the heavy pack:
	say "The girl may be a bit foolish, but she doesn't deserve to be robbed of all her worldly goods on the first day of her trip."

The assortment of very short shorts is wearable.

The description of the bikini bottoms is "The tops are not in evidence, at least as far as casual inspection reveals."

The bikini bottoms are wearable.

The description of the various t-shirts is "There's not a one without a logo of some kind."

The t-shirts are wearable.

Check waving the letter-remover at various t-shirts when the current setting of the letter-remover is "r":
	say "That would be intriguingly disgusting, if it weren't for the fact that T-SHIT doesn't describe anything anyone with a functional colon has ever heard of." instead.

The description of the very short shorts is "It's a good thing the weather here is really as warm as popularly imagined."

The description of the anorak is "It might be meant to counter the effect of all the shorts."

The anorak is wearable.

The description of the broomstick skirt is "It is the sort of skirt made of thin fabric that twists up into a tight tube, and is supposed to be interestingly crinkly when worn."

The broomstick skirt is wearable.

The description of the flip-flops is "The sole of each flip-flop is decorated with the image of Snoopy."

The flip-flops are wearable.

The description of the box of tampons is "Let's not. This is awkward enough already."

The description of the fat guidebook to Europe is "The spine is cracked at many points and the pages folded over for future reference."

The description of the cheap camera is "It is a flimsy device in rose-pink, with a very small lens."

Instead of inserting something into the heavy pack when the backpacking girl does not carry the heavy pack:
	if the heavy pack is closed:
		say "[The heavy pack] isn't open." instead;
	otherwise:
		say "[The heavy pack] is full." instead.

Instead of taking something which is in the heavy pack:
	say "The girl may be a bit foolish, but she doesn't deserve to be robbed on the first day of her trip."
	[say "None of these are any use just now."]

Chiding-attendant is a scene. Chiding-attendant begins when the dormitory room is visited. Chiding-attendant ends in results when the location of the player is the dormitory room and the location of the backpacking girl is the dormitory room and the backpacking girl recollects have-you-checked and the current quip is not have-you-checked and the current quip is not agree about the attendant and the backpacking girl is finished talking and the attendant is in the Hostel.

Chiding-attendant ends fruitlessly when the location of the backpacking girl is not the dormitory room.

[We want to be set up by the girl's prior complaint, but we don't want the attendant to seem to come in response to said complaint.]

When chiding-attendant ends in results:
	say "There's a heavy tread on the stairs, and the desk attendant puts her head in. 'Just so you two know, you're not actually supposed to be hanging out a lot up here during the day. It's for night use really. I'm not going to do anything today, but it's kind of against the rules, for future reference.'

She turns around and goes back down. The backpacking girl sticks her tongue out at the departing back.".

[Something I wanted to do was try to break down the sense that NPCs are attached to single locations and never move around or interact with one another. On the other hand, scenes where NPCs move freely or converse in groups are harder to engineer, so I wanted to be sparing with those. So there are assorted intermediate effects where we get a little 'fake' interaction, a one-turn-only moment where one NPC addresses another or a character moves around.]

Report scoffing when chiding-attendant ended in results and the time since chiding-attendant ended is less than 2 minutes and the current interlocutor is the backpacking girl:
	say "We snort, and the girl grins at us. 'I know, she is unreal!'" instead.

Report laughing when chiding-attendant ended in results and the time since chiding-attendant ended is less than 2 minutes and the current interlocutor is the backpacking girl:
	say "We laugh, and the girl joins in. 'I know, she is unreal!'" instead.

Report frowning when chiding-attendant ended in results and the time since chiding-attendant ended is less than 2 minutes and the current interlocutor is the backpacking girl:
	say "We frown.

'Oh, whatever,' says the girl. 'She deserves it.'" instead.

Instead of waving the letter-remover at the locker when the backpacking girl is marked-visible:
	try taking the locker.

Instead of waving the letter-remover at the lock when the backpacking girl is marked-visible:
	try taking the lock.

Sanity-check showing the locker to the backpacking girl:
	carry out the refusing comment by activity with the backpacking girl instead.

Sanity-check showing the lock to the backpacking girl:
	carry out the refusing comment by activity with the backpacking girl instead.

An accessibility rule when the touch-goal is the lock or the touch-goal is the locker:
	if the backpacking girl is marked invisible:
		make no decision;
	otherwise:
		say "[The backpacking girl] is watching our every move with unconcealed curiosity, which makes me a little hesitant to do anything with the locker[one of][or]. Maybe if we freaked her out somehow she would go away[or]. I think our best bet is to show her something that really weirds her out[stopping]." instead.

After writing a paragraph about a dorm bed:
	now every dorm bed in the location is mentioned.

Some hard wood floors are scenery in the Dormitory room. Understand "floor" or "hardwood" or "protective" or "gloss" or "coating" as the hard wood floors. The description is "The floors are designed to be scrubbed clean every single day, leaving no trace of what might have come or gone."

Instead of putting something on the hard wood floors, try dropping the noun.

The locker is a fixed in place closed openable container in the Dormitory Room. The lock is part of the locker. The initial appearance of the locker is "The [locker] you identify as your own sits near one of the beds[if the locker is open], door standing open[otherwise if the lock is part of the locker], still locked with its dial [lock-name][otherwise], closed but not locked[end if]. ". Understand "lockers" as the locker.

A ranking rule for the locker:
	increase description-rank of the locker by 100.

The description of the locker is "A standard metal [locker] for travelers to leave their valuable possessions in when they go out [--] or while they sleep, since one's bunkmates are not always to be trusted. It is of the kind that requires the traveler to bring his own lock[if the lock is part of the locker], and in fact someone (such as yourself) has put a lock on this one[otherwise], but it is currently bare[end if]."

After opening the locker:
	record "opening the locker" as achieved;
	complete "Retrieve your remaining possessions from locker at hostel";
	say "Now that the lock has been removed, the locker swings easily open[if the locker is non-empty], revealing [a list of things *in the locker][end if]." instead.

The lock can be lockable. The lock can be locked. The lock can be openable. The lock can be open. The lock is openable, lockable and locked. Understand "dial" as the lock.

Instead of turning the lock:
	say "The dial turns smoothly [--] much too smoothly. There are no clicks, no tiny ticks of inward mechanisms working. By the feel of it, there might be no real locking device here at all."

Understand the command "spin" as "turn".

The description of the lock is "[one of]It's curious, now you look at it: it's a combination lock with a dial face, but no one has bothered putting any numerals onto the dial.[or]Still no numbers on the dial. My mother had a wristwatch like that once. Always a nuisance.[or]I once again contemplate the absence of traditional combination markings on the lock. It must not be meant to be unlocked in the usual way.[or]It's your lock: you brought it with you and put it on the locker. So you must have had some way of opening it again, and not something that would depend on having a clear memory after the operation, either. I don't suppose you remember at all?[stopping]".

To say lock-name:
	now the lock is seen;
	say "[if boldening is true][bold type][end if][printed name of the lock][roman type]"

To say key-refusal for (locked-thing - the lock):
	say "[lock description][paragraph break]".

Instead of setting the lock to something:
	say "No numbers are written on the dial of the lock."

Locking something with something is key-related behavior. Unlocking something with something is key-related behavior. Unlocking keylessly something is key-related behavior. Locking keylessly something is key-related behavior. Opening something is key-related behavior. Closing something is key-related behavior.

Sanity-check key-related behavior when (the noun is the locker or the second noun is the locker) and the lock is part of the locker:
	if the noun is the locker, now the noun is the lock;
	if the second noun is the locker, now the second noun is the lock;

Instead of attacking the locker with something:
	say "It is built to withstand attack, as witness the several dents in the frame that nonetheless failed to pop the door out."

Instead of attacking or pulling or pushing the lock:
	say "It swings jauntily in place, but does not break."


The locker contains a roll of bills and a letter. The printed name of the roll of bills is "roll". The description of the roll of bills is "[one of]Now that is more like it: you've got us a tidy little stash of euros here.[or]Some day you will have to tell me a little bit about the tricks of the trade [--] how you fenced stuff, you know? Or perhaps you won't tell me. Maybe it would be better not. At any rate, this money is useful, so I won't ask too many questions.[or]It's our cash reserve [--] well, your cash reserve, really, but for now it is serving both of us.[stopping]". Understand "euros" or "euro" or "cash" or "bill" or "money" as the bills.

The bills are essential.


[Andra's backstory was based in the idea that she was an extraordinarily good speller, and I imagined a whole history for her, in which she had been a homeschooled spelling champion who ran away from home when she was disappointed by her parents' reaction to her coming in second place nationally. Slango had seen her on television and so when he recognized her on a street, he picked her up and inducted her into his smuggling gang.

There wasn't room to tell that whole story in Counterfeit Monkey, and eventually I spun that story off as Bee, a Varytale novella which takes place in more or less the real world.

Nonetheless, Andra retains some pointers to that history.]

The description of the letter is "It's a letter from your brother, printed off anonymously from an untraceable email account that you accessed in town. Nothing that could be followed back to Slango and the yacht.

[i]Sis,

I'm keeping your wire transfer funds. I want to try for Stanford.

I'd say thank you except that, one, you didn't get it legally (I saw this documentary about teen prostitutes [--] if that's where it came from then EW) and, two, honestly? You owe for what you put us through after you ran away. Mom and Dad were humiliated that you turned into the prodigal daughter. Your face got on milk cartons. Pastor Hughes GAVE A SERMON ABOUT IT.

Mom spent all that time coaching you through spelling practice, you know she doesn't enjoy getting up at 4 AM, right? You totally threw that in their faces.

If you want to come home sometime, fine, but don't come to just see me. If you want to see me you have to see Mom and Dad too.

Nate.[/i]".



Some secret-plans are in the locker. They are privately-named.
	The printed name is "plans".
	Understand "plan" or "plans" as the secret-plans.
	The description of the secret-plans is "The plans are rolled up and stuck shut with a label that reads 'PROPERTY OF DENTAL CONSONANTS LIMITED [--] UNAUTHOR[IZE]D USE ILLEGAL'. They're just a set of prints from the main computer design, of course, but still extremely informative: to the right engineer, they might reveal the secret of T-insertion for replication by other companies. These are what you and Brock were originally contracted to lift from the island, at a fee in the multiple millions.". The secret-plans are essential, illegal, floppy, and long. Understand "tube" as the secret-plans when the tube is marked invisible. Understand "label" as the secret-plans.

[We need these variables to keep track of the smuggled plans across several transformations, in particular when synthesized with other items, in order to print (really the smuggled plans in disguise) after the correct object in the inventory.]
The secret-plans has an object called the derivate. The derivate of the secret-plans is the secret-plans.

The secret-plans has an object called the previous derivate. The previous derivate of the secret-plans is the secret-plans.


Understand "count [bills]" as a mistake ("[We] thumb quickly through the bills [--] smaller currency on the outside, larger denominations on the inside. I wouldn't have thought I could add that quickly and accurately, but you, evidently, have more practice. It works out to just over fifteen thousand euros.").



Section 4 - The New Church

The New Church is west of the Church Forecourt. It is indoors and proper-named. The description is "Not a Gothic cathedral from the era when the church was wealthy and secure, but a gallant Neo-classical response to the turmoil of the 18th century, when the power of language was just beginning to be evident, and instead of an immutable cosmology, we suddenly had observer-consensus reality. [one of]What is the need or use of God, if it turns out that He gave all the power of creation to Adam when He let him name the animals?[or][stopping]".

The inscription is fixed in place in the New Church. It is distant. The initial appearance is "An [inscription] above [the altar], picked out in gold paint, reads Ἐν ἀρχῇ ἦν ὁ λόγος." Understand "paint" or "gold" as the inscription.
	The description is "It means, In the Beginning was the Word.

A patchy attempt to make theology align with scientific and linguistic reality, but it still has power. And despite the Bureau's depredations of foreign language writings everywhere else, they have never quite had the nerve to deface this."

Some columns are scenery in the New Church. The description of the columns is "The column shafts are unornamented, only tapering a little at the top; the capitals a restrained Ionic." Understand "pillar" or "pillars" or "column" as the columns.

Some clear glass windows are scenery in the New Church. The description of the clear glass windows is "They admit a great deal of light, as though to promise that there is no lie and no chicanery here." Understand "window" as the clear glass windows.

The introduction of New Church is "My mother volunteers here: I think I should warn you. She is not quite religious, but believes in the cultural value of the building, and in having some sort of place where people can go for spiritual respite. She also, I suspect, likes having those great gold letters, defiantly foreign and arcane in the heart of the old city."

Some pews are a enterable scenery container in the New Church. The description of the pews is "Simply built out of dark solid wood, to contrast with the white walls and columns, and the clear glass windows." Understand "pew" or "seat" or "seats" or "bench" or "benches" as the pews.

The pews allow seated, standing, and reclining. The posture of the pews is seated.

Does the player mean approaching New Church:
	it is very likely.

The altar is fixed in place in the New Church. It is a supporter.

Definition:
	a thing is liturgical:
		if it is the cross, yes;
		if it is the cassock, yes;
		if it is the tippet, yes.

Instead of putting something on the altar:
	if the player wears a liturgical thing:
		if the noun is the cross:
			record "Reverend Plaice award for placing the cross on the altar while liturgically dressed" as an achievement;
			continue the action;
		else:
			say "While I am not exactly a believer in the dogmas associated with this place, it seems crass to go putting random items on the altar.";
	else:
		say "[We] [are] not vested appropriately for dressing the altar; someone would be sure to notice."

The description of the altar is "It is simple and bare of cloth or flowers[if the cross is on the altar], though a cross is set in the appropriate place[end if]."

Instead of facing up in the New Church:
	say "The ceiling is handsomely solid but not decorated: no painted feet of the ascendant Christ dangling down between clouds, no medieval grotesques or floral bosses."

Instead of going north in the New Church:
	say "The only thing in that direction is the little space behind the altar, and to enter that seems like needless trespassing."

Rule for listing exits when the location is New Church:
	if boldening is true:
		say "There are side exits both [b]east[/b] and [b]west[/b]; and a gift shop occupies the narthex at the [b]south[/b] end.";
	else:
		say "There are side exits both east and west; and a gift shop occupies the narthex at the south end."

Understand "pray" or "pray to [text]" as a mistake ("[prayer response]").

To say prayer response:
	say "I'm not much one for prayer myself. But you, evidently, are, and I find myself squirming[--]

(While your mind and heart are elsewhere, ordering your concerns and offering them up.)

[--]and now quiet. I don't know what, if anything, that may have accomplished, but I promise not to be rude if you need to do it again. "

The gift-shop-exterior is a facade in New Church. It is scenery. It fronts south. The description is "[We] can't really see it from here; I just know that it is back there, from previous visits, though decently screened from the main body of the church."  Understand "shop" or "gift shop" or "narthex" as the gift-shop-exterior. The printed name is "gift shop".

The Cathedral Gift Shop is south of the New Church. Understand "narthex" and "giftshop" as the cathedral gift shop. It is indoors. The description is "This area used to be a sort of antechamber where the priests and choir might gather for processions into the church, but it has now been done over for retail purposes. This is one of several schemes to make the New Church pay for its own upkeep: a problem is that people somehow feel everything associated with a church ought to be free, including lunchtime concerts, potluck suppers, and Thursday-night lecture series."

The gift-shop counter is a scenery supporter in the Cathedral Gift Shop. The description is "The usual arrangement for making purchases."

Some wire racks are scenery things in the Cathedral Gift Shop. The description is "They're designed to hold postcards or other similar small merchandise." Understand "rack" as racks.

Some postcards are on the wire racks. The description of the postcards is "You may be a tourist in these parts, but I, my curious friend, am not: so I find these pictures all rather foolish, and not at all representative of the town as it really is." The postcards are scenery. Understand "postcard" or "souvenirs" as the postcards. Understand "harbor" or "city walls" or "walls" or "fortifications" or "ancient fortifications" or "cards" or "harbour" or "picture" or "architecture" or "pictures" as the postcards when the location is cathedral gift shop.

Does the player mean finding the postcards:
	it is very unlikely.

Instead of finding the postcards when the subcommand of the postcards matches "walls":
	try approaching the old city walls.

A dangerous construction rule for the wire racks:
	now the postcards are on the wire racks.

A dangerous construction rule for the wire rack:
	now the postcards are on the wire rack.

Test rack with "x postcards / wave s-remover at racks / x postcards / open tub / gel rack / x postcards" holding the tub in the Gift Shop.

Instead of taking the postcards:
	say "And send them where? There is no one [we] wish were here."

Instead of turning the racks:
	say "[We] idly turn one of the racks, as though [we] were a tourist here. Familiar pictures swivel past, both of the church interior and of the town as a whole."

[Instead of taking the postcards,
	say "Buying souvenirs is not the current objective."]

Instead of taking the paper-models:
	say "I am all thumbs and never get these things right."

Instead of taking the tea-towels:
	say "They're just too embarrassingly cute."

Instead of taking the shot glasses:
	say "The inscribed proverbs about the merits and demerits of the grape would be likely to put me off my drink."

Definition: a thing is a souvenir:
	if it is the postcards:
		yes;
	if it is the paper-models:
		yes;
	if it is the tea-towels:
		yes;
	if it is the shot glasses:
		yes;

Some tomes are a fixed in place thing in the Cathedral Gift Shop. The initial appearance is "A long line of dusty [tomes] are lined up on one of the shelves, marked 'free for taking'. None are missing." A component-tome is part of the tomes. The printed name of the component-tome is "tome". Understand "tome" or "book" as the component-tome.

The description of the tomes is "Looking at one gives a sense of all. [description of the tome]". The description of the component-tome is "[description of the tome]".

Instead of taking the tomes:
	say "The full set runs to thirty or forty volumes, each one three inches thick and printed on heavy paper. They're much too bulky to carry off."

Instead of taking the component-tome:
	say "[We] reach for one of the volumes, then stop, indecisive. They really do seem to be a set, and I can't bring myself to break it up."

Some paper-models, some souvenir tea-towels, and some shot glasses are scenery in the Cathedral Gift Shop. Understand "model" or "souvenirs" or "paper" or "models" as the paper-models. [Understand "window" or "windows" or "inscription" as the model when the model is the prior named object.] Understand "towel" or "souvenirs" or "towels" or "tea" as the tea-towels. Understand "glass" or "souvenirs" as the shot glasses.

The printed name of the paper-models is "paper models".

Instead of inserting something into shot glasses in the presence of the volunteer:
	say "The volunteer fixes us with such a steely stare that [we] stop immediately."

The description of the paper-models is "With four or five hours['] lab[our], and a quantity of white glue and toothpicks, you too could assemble your very own rendition of the church, complete with windows and a printed-on version of the inscription over the altar; in fact, the model is so cleverly made that it can be taken apart to allow a view in cross-section."

The introduction of the paper-models is "Despite all that, I think [we][']ll pass."

The description of the souvenir tea-towels is "Embroidered with gaudy logos."

The description of the shot glasses is "Printed with various Biblical verses related to drinking."

The gift shop volunteer is an alert man in Cathedral Gift Shop. The initial appearance is "An elderly man in a [knitted wool cap] presides over the gift shop." Understand "elderly" or "man" as the gift shop volunteer.

Rule for writing a topic sentence about the gift shop volunteer when the gift shop volunteer is not the current interlocutor:
	set the current interlocutor to the gift shop volunteer;
	say "The elderly man in charge of the gift shop nods at us as [we] come in.[run paragraph on]";
	now everything held by the gift shop volunteer is mentioned.

The description of the gift shop volunteer is "He has one of those withered-apple faces more frequent in old women, but there is no doubt from the shape of his nose and the slight stubble that he is in fact male."

The gift shop volunteer wears a knitted wool cap. The description of the knitted wool cap is "It is made of some kind of soft and fuzzy blue yarn." Understand "yarn" as the knitted wool cap.

The Church Garden is west of New Church. The description is "One might expect a graveyard, but burial inside the city walls has been forbidden for sanitation reasons since well before the New Church was built. Instead, there is a small meditation garden, which was once designed as an intricate knotwork of shrubs[if the thicket is not in the location]. Now the shrubs are gone[end if]."

In-direction of Church Garden is east. [Back into the church]

Report facing in Church Garden:
	say "The garden is intentionally a space set apart, from which it is hard to see anything of the rest of the world." instead.

Instead of listening to the Church Garden: say "The sounds of the outside world are muted here. There is some traffic noise, it's true; it just doesn't seem terribly important from here."

Understand "meditate" as a mistake ("I'm not bringing you on a tandem ride through my psyche. Sorry.").



The thicket is a fixed in place thing in the Church Garden. The initial appearance is "The knotwork has since grown into [a thicket].".
	The description is "Densely-grown: the church hasn't been able to afford a real groundskeeper for some time."
	The scent-description is "dusty vegetation and maybe a little rosemary".
	Understand "knotwork" or "shrubs" or "bushes" or "herbaceous" or "rosemary" as the thicket.

Report waving the letter-remover at the thicket creating the ticket:
	say "The thicket abruptly shrivels and flattens itself, and in its place a ticket flutters to earth." instead.

Instead of looking under the thicket:
	say "Nothing is beneath."

Instead of taking the thicket:
	say "It grows much too densely to be pulled out of the ground."

Before putting gel on the ticket:
	if the player is not in Church Garden, say "It would probably cause inconvenience, not to mention drawing considerable attention, to remake the thicket anywhere but in the garden from which it came." instead;
	if the soil is not in Church Garden, say "There is no longer anywhere for the thicket to grow." instead;
	if the ticket is not in Church Garden
	begin;
		if the player does not carry the ticket, try taking the ticket;
		if the player does not carry the ticket, stop the action;
		try dropping the ticket;
		if ticket is not in Church Garden, stop the action;
	end if;


Part 3 - Roundabout Access

[Instead of going to Old City Walls when the backpack is not handled:
	say high-street refusal instead.

Instead of approaching Old City Walls when the backpack is not handled:
	say high-street refusal instead.]


[ Instead of going to Monumental Staircase when the backpack is not handled:
	say high-street refusal.

Instead of approaching Monumental Staircase when the backpack is not handled:
	say high-street refusal.]

To say high-street refusal:
	say "[one of]That way will take us away from the cinema, and I'd like to retrieve our things first.[or]Er, before we strike out into the rest of town, could we get my backpack from the cinema?[or]Look, I'm not ready to leave this part of town until we've retrieved my stuff from the cinema. It might not seem important to you, but it's my whole reason for leaving the island, and I'm not going without it.[stopping]".

[ Instead of going to Monumental Staircase when the secret-plans are not handled:
	say plans-search refusal.

Instead of approaching Monumental Staircase when the secret-plans are not handled:
	say plans-search refusal. ]

To say plans-search refusal:
	say "I think we'd better get your things from the hostel before we leave this part of town, don't you?".

The crowds are a backdrop. The crowds are in Fair, Monumental Staircase, Church Forecourt, Midway and Park Center. Understand "people" or "crowd" or "men" or "women" or "woman" or "person" or "hustle" or "bustle" or "spectators" or "pedestrians" as the crowds.
	understand "man" as the crowds when the barker is not in location.
	understand "children" or "child" as the crowds when the small children are not in the location.
	The description is "[if the location is a road]They are all in a hurry to get somewhere, though it is not clear exactly where or why[otherwise]The people seem to be enjoying themselves. I don't recogn[ize] anyone in particular, though[end if]."

The High Street is east of Monumental Staircase. It is proper-named. The description is "[if the player is not in a car]Hustle, bustle, [grimy-dirt]; [ugly American chain shops]; lots and lots of people. [otherwise][We] [are] surrounded by tail-lights and impatient men swearing. [end if][if the protesters are in High Street]There seems to be a large organ[ize]d protest in progress: [protesters] completely cram the sidewalk to the southeast.[end if]"


The grimy-dirt is scenery in High Street. Understand "grime" or "dirt" or "griminess" or "filth" as the grimy-dirt. The printed name is "dirt". The description is "Just a general griminess over all surfaces. Some parts of the city have recently been renovated, and some are being renovated now, scouring off the accumulated filth on facades and walls; but this area hasn't been treated yet and is simply unappealing."

Some ugly American chain shops are a facade in High Street. They front southwest. They are scenery. Understand "shop" or "store" or "stores" or "boutique" or "boutiques" as the shops. The description is "Our eyes pass over them without recognition or attention, really: there is nothing here of any use. It is almost all women's shoes and clothing, overpriced coffee, toiletries made with products from half a world away."

The optometry clinic is a facade in High Street. It fronts northeast. It is scenery. Understand "optometrist" or "novelty" or "spectacles" or "enormous pair" or "of spectacles" or "of novelty" as the optometry clinic. The description is "An enormous pair of novelty spectacles hangs over the front of the office, which, however, is currently closed."

The tower-side is a facade in High Street. It fronts north. It is scenery. Understand "tower" or "hexagonal" as the tower-side. The printed name is "hexagonal tower". The description is "Immediately to the north is the [tower-side] of the old city walls. It rises some [if the player wears the Britishizing goggles]storeys[otherwise]stories[end if] above where [we] now stand, so from here the only thing to see is a blank wall of rough-hewn masonry."
	The closure notice is "The tower has no doors at this level, just masonry. ".

A garbage is a thing in High Street. The initial appearance is "The curb is lined with [garbage]." The description is "Discarded containers from the assortment of food shops and coffee stores lining High Street." The indefinite article is "some".

Instead of examining the garage:
	say "[description of the garage][line break]";
	let N be the number of things which are not the mechanic in the garage;
	unless N is 0:
		say "[line break]In [the garage] [is-are a list of things which are not the mechanic *in the garage].";
	if the player wears the monocle:
		try looking at the garage through the monocle.

Instead of putting gel on the mechanic:
	try putting gel on the garage.

Instead of smelling the garbage:
	say "To judge from the mildness of its od[our], it mainly contains packing materials and paper goods, rather than rotting meat or anything of that nature."

Instead of eating or tasting the garbage:
	say "As fascinating as your personal habits are turning out to be, I must draw the line somewhere."

Instead of taking the garbage:
	say "There are other people paid to perform that task."

The staircase-distant-view is scenery in High Street. The printed name is "monumental staircase". Understand "monumental" or "staircase" as staircase-distant-view. The description of staircase-distant-view is "The staircase is several [if the player wears the Britishizing goggles]storeys[otherwise]stories[end if] tall and ascends the side of a major hill." Instead of climbing the staircase-distant-view, try going west. Instead of going up in High Street, try going west.

Rule for listing exits when the location is High Street:
	say "To the west, the street turns into a monumental staircase leading to the old fortified area[if the hostel is unvisited] [--] your hostel should be up that way [--] while[otherwise];[end if] a cross street heads southeast towards the main roundabout." High Street is a road.

The distant-staircase is scenery in High Street. Instead of climbing or entering the distant-staircase, try going west. The description of the distant-staircase is "Broad flat stairs of white stone, with people going up and down[if Monumental Staircase is unvisited]. There's a good view from the top of those stairs: you can see the ships in the harbor and everything. Well, you'll know that, of course[end if]."
The printed name of distant-staircase is "monumental staircase".

The Roundabout is southeast of the High Street. The Roundabout is a checkpoint road. The description is "The traffic flows in a tight circle around a statue which [if Traffic Circle is visited][we] know all too well[otherwise][we] can never see clearly[end if][if the player is not in a car]. There is a pedestrian walkway around the outside of this circle, but crossing the tributary streets is an unpleasant experience involving considerable hazard. Unfortunately, there is no other quick way to get around this part of town[end if]."

The hard-to-see statue is scenery in the Roundabout. The description is "[if Traffic Circle is visited]It is, curiously, easier to get a sense of from a distance than it was close-up in the Traffic Circle[otherwise]I've seen it before: it's supposed to be Atlantida, the Spirit of the Atlantean people[end if]. Kind of a 19th-century French style of thing: flowing bronze robes, one breast naked, plump fingers clasping an olive branch. But [we] can't stop and stare at it with the traffic the way it is." Understand "atlantida" or "olive" or "branch" or "robes" or "bronze" or "breast" or "naked" as the hard-to-see statue.
The printed name of the hard-to-see statue is "giant Atlantida statue".

Instead of opening a car when the location is the Roundabout and the player is in a car:
	say "Are you mad? [we][']ll be killed."

Rule for listing exits when the location is Roundabout:
	if boldening is true:
		say "Confusing signs point in various directions: [b]northeast[/b] to Deep Street, [b]northwest[/b] to High Street, [b]south[/b] to Long Street, [b]east[/b] to Tall Street.";
	else:
		say "Confusing signs point in various directions: northeast to Deep Street, northwest to High Street, south to Long Street, east to Tall Street."

[Before printing the name of a direction (called way) when in Roundabout:
	if looking, say "[room way from the location] to the " ]

[Procedural rule when listing exits:
	if the location is Roundabout, ignore the append room names rule.]

In-direction of Roundabout is inside. [In from the roundabout is the traffic circle]

Understand "change lanes" as a mistake ("Oh, please don't, please don't...") when the player is in a car.

Understand "yield" as a mistake ("It's hard to go wrong with that, anyway.") when the player is in a car.

Every turn when the location is Roundabout and the player is in a car:
	if a random chance of 1 in 2 succeeds:
		say "[one of]I hate to backseat-drive, but I think you were supposed to yield just there.[or]Hey, mind the truck![or]Please don't try to change lanes.[or]They're honking at us for a reason, you know.[at random]".

Instead of exiting in Roundabout:
	say "[We] couldn't possibly park here."


[The Questionable Chinese Restaurant is southeast of the Bus Station. The description is "Thanks to the limitations of space, the kitchen is actually kept in the basement, down a steep flight of stairs."

The steep flight of stairs is a backdrop. It is in the Restaurant Kitchen and the Questionable Chinese Restaurant. Instead of entering or climbing steep flight of stairs in the Restaurant Kitchen: try going up. Instead of entering or climbing steep flight of stairs in Questionable Chinese Restaurant: try going down.

The Restaurant Kitchen is below Questionable Chinese Restaurant. The Restaurant Kitchen is a kitchen.

The Two-Star Hotel is north of the Bus Station. The description is "This is a very different place from the Fleur D'Or, and different, too, from your backpacking hostel. There is a carpet, which is clean but old. The lobby features a single sofa, which has thin cushions and does not promise comfort or luxury. The front desk is veneered in fake walnut. It is unmanned."

Some carpet is in the Two-Star Hotel. It is scenery.
	The description is "It is deep red, a color likely chosen for its capacity to hide stains, and there is a pattern on it of tiny grey diamonds, so that it looks rather as though someone's tie had been made the basis of an entire room design."

A hotel sofa is an enterable supporter in the Two-Star hotel. It is scenery. The initial appearance is "No one has to sit there at the moment, which is the key point."

The front desk is a scenery supporter in the Two-Star hotel. The description of the front desk is "No one is sitting there now; but this entire time of year must be a bit of a slump for the hotel, since there is not a busy tourist trade running through on its way to buses out of town."

Rule for listing exits while in Two-Star hotel: say "To the east, through an archway in which an ineffective curtain hangs, is the room by which the hotel actually makes the majority of its easy money: there it rents out luggage-storage space to persons using the bus station."

The ineffective curtain is east of Two-Star Hotel. The Luggage Consignment is east of the ineffective curtain. The ineffective curtain is a door. It is open and not openable. It is scenery. The description is "Printed with a print of moon and stars." ]


Part 4 - Affluence

Chapter 1 - City Walls

Section 1 - Old City Walls

Old City Walls are north of the Monumental Staircase. Understand "wall" as Old City Walls. The description is "Only portions of the old walls still stand, but you can walk along what remains, as though you were defending the place. They're a me[ter] and a half wide, made of ashlar blocks. On the vertical faces these blocks are still rough, but underfoot they have been worn smooth by the passage of many defenders and (subsequently) tourists. One of the [defaced ashlar block]s in the wall has even been defaced, some old inscription gouged out.[one of]

I used to like to climb around up here when I was a kid. I made believe[--] oh, you'll think it's silly.[or][stopping]

Down below in the distance are the docks and the sea, and immediately east of here is an old hexagonal [turret-view]."

The defaced ashlar block is scenery in Old City Walls. Understand "blocks" or "ashlar" or "inscription" as block. The description is "To judge by its different shaping and col[our], the defaced block is something borrowed from an older building to make up the new wall: taken out of a church or a mosque or perhaps even a Roman fortification in some earlier era of the island.

It was once inscribed with a message, but whatever it was, the foreign-language writing has been completely chiseled away so as to be illegible.".

Rule for printing the name of the defaced ashlar block while looking:
	say "block".

Instead of putting the restoration gel on the defaced ashlar block:
	say "The gel has no ability to restore that which was physically damaged; only letter-changes can be removed."

Rule for listing exits when looking in Old City Walls:
	do nothing instead.

Understand "climb wall/walls" as a mistake ("[if the location is Patriotic Chard-Garden or the location is in the Walltop]It's not in the best of shape. It wouldn't be hard to become part of a minor rockfall and kill ourselves on the descent[otherwise]Little is to be achieved by that[end if].").

In-direction of Old City Walls is east. [Into the old hexagonal turret]

Turret-view is a facade in Old City Walls. It fronts east. It is scenery. The printed name is "turret". Understand "old" or "hexagonal" or "tower" or "turret" as turret-view. The description is "The turret extends to the east. It's one of the best preserved pieces of the old wall."

Section 2 - The Turret

The Old Hexagonal Turret is east of Old City Walls. The description is "Up here [we] stand on the remains of the old fortifications; this turret offers a view out over the docks, the fish market, and the harbor, which it was designed to protect."

Out-direction of Old Hexagonal Turret is west. [Back to old city walls]

The depluralizing cannon is a container in the Old Hexagonal Turret. It is fixed in place. Understand "heavy" or "old" or "barrel" as the depluralizing cannon. The printed name is "deplural[izing] cannon".
	The initial appearance is "A heavy old [depluralizing cannon] is aimed out to sea."
	The description is "Like a conventional cannon it has a mounting to allow the users to turn the gun and change its angle, to hit objects at various ranges.

It is currently unloaded, of course; but time was when this vast weapon was employed to reduce entire fleets to a single ship, and a whole crew of marines to a single man. This tactic was found so effective that the harbor was never successfully taken."

Sanity-check turning or pushing or pulling the depluralizing cannon:
	say "With considerable effort, we manage to point the cannon a little more [one of]towards the open sea[or]towards the docks[or]towards the cliffs opposite[cycling]. Not that that does any good." instead.

The deep purple residue is part of the depluralizing cannon. The description is "Deplural[izing] shot is usually a very dark purple near to black, and some may have scraped off on the inside of the barrel."
	The scent-description is "smoke and leather".

Instead of searching the depluralizing cannon:
	say "There's nothing to see inside the old barrel except perhaps the faintest traces of a [deep purple residue]."

Sanity-check inserting something into the depluralizing cannon:
	say "No doubt it would be interesting to fire [the noun] out over the marina, but it's neither possible nor wise." instead.

Sanity-check entering the depluralizing cannon:
	say "Col[our]ful as it would be to climb into the cannon and fire ourselves straight out to sea, this is not a viable option. I would have tried it before now if it were." instead.

Sanity-check going down when location is Old Hexagonal Turret:
	try facing south instead.

Instead of facing south in Old Hexagonal Turret:
	say "That way is mostly empty air, though if [we] look south and down over the edge, there is a vertiginous view down to the bottom of the monumental staircase. Tourists and natives are climbing up and down."

The mounting is part of the depluralizing cannon. The description is "Everything is stiff and motionless now."

Instead of turning or pushing or pulling the mounting:
	say "No matter what [we] do [we] won't be able to aim or fire the old cannon; which is just as well, since to do so would be a major felony under local penal code, and a war crime under international conventions."

Understand "fire [cannon]" or "load [cannon]" or "aim [cannon]" or "use [cannon]" as a mistake ("[We] haven't got the shot for this thing, and for very good reason. There may not even be any still in existence, but if there is, the Bureau will keep it under lock and key.").

Section 3 - The Walls Crumble

Crumbling Wall Face is north of the Old City Walls. The description is "The wall once continued north from here some distance before curving northwest around the remainder of the city. So much has crumbled away, though, that the walkway is impassable north of this point. To protect citizens, there is a [safety railing] across the [view of jagged wall].

A [metal ladder] of four rungs descends the inner face of the wall, allowing pedestrians access to the streets to the west."

Sanity-check going north in Crumbling Wall Face:
	say "The wall pretty much falls away into slippery rubble at that point, which is why there's a safety railing in the way." instead.

rule for listing exits while looking in Crumbling Wall Face:
	do nothing instead.

Instead of facing southeast in Crumbling Wall Face:
	say "[We] would have to go south and then east to reach it, but that way is the top of the hexagonal turret."

The fossil is a thing in Crumbling Wall Face. The initial appearance is "Among the rubble fill of the wall is [if we have examined the fossil]a fossil[otherwise]an odd spiral-shaped rock[end if]."
	Understand "odd" or "spiral-shaped" or "spiral" or "shaped" or "rock" or "stone" as the fossil.
	The description is "[one of]The spiral rock turns out to be a fossil, from one of those sea creatures long ago.[or]It is perhaps an inch and a half long, the shape of a corkscrew seashell that once housed something small and soft. There are thousands of these things around; they're not exactly valuable, but an interesting curiosity all the same.[stopping]".

Instead of taking the fossil when the fossil is not handled:
	say "[We] pick it up. [description of fossil][line break]";
	move fossil to player.

Instead of examining the view of jagged wall when we have not examined the fossil:
	try examining the fossil.

The view of jagged wall is a distant backdrop in Crumbling Wall Face. It screens north. The printed name is "broken edge".

The description is "The masonry has broken away, revealing the rubble fill inside the wall and making a dangerously unstable surface of craggy rocks.". Understand "edge" or "broken" or "rubble" or "craggy" or "rocks" or "gravel" or "unstable" or "jagged" or "masonry" as the view of jagged wall. Understand "rock" as the view of jagged wall when the rock is marked invisible and the fossil is marked invisible.

The safety railing is scenery in Crumbling Wall Face. The description is "Though it shows traces of surface rust, the safety railing is sturdy and close-fitted enough to prevent anyone, child or adult, from taking a tumble down the jagged masonry.". Understand "rail" as the safety railing.

Instead of turning or pulling or pushing the safety railing:
	say "It proves gratifyingly resistant to your attempts."

Instead of climbing the safety railing:
	say "It's here for our protection."

The metal ladder is a down-staircase in Crumbling Wall Face. It fronts down. It is fixed in place. The description is "The rungs [if the noun is not the metal ladder]of the ladder [end if]have been bolted individually into the stone." Understand "rungs" or "rung" as the metal ladder.

Instead of going down in Crumbling Wall Face, try going west.

The Walltop is a region. The Old City Walls, the Crumbling Wall Face, and the Old Hexagonal Turret are in The Walltop.

Instead of listening to a location in Walltop:
	say "The noises that reach us are the sounds of distant traffic, the occasional horn blast from the docks, and some cheery shouting from the direction of the fair."

Test wallbug with "tutorial on / n" in Crumbling Wall Face.

Chapter 2 - Residential District

Section 1 - Hesychius Street

Hesychius Street is west of Old City Walls. The description is "As the street names make obvious, this part of town was laid out in a different political age, when it was considered more important to commemorate linguistic richness than to standard[ize] practices[if Webster court is unvisited].

This is also the edge of the richest part of town, with houses [--] really, almost villas [--] that were built for households with servants. My parents['] place is just a block or two north of here[end if][if the farmer's stall is in Hesychius Street].

On holidays like today, this street is often host to a farmer's market; though it is now late enough in the day that most of the farmers have given up and gone home, taking with them their twenty-three varieties of pickled olives, their loganberry jam, and their pigs[']-feet-in-aspic[otherwise].

Even the single farmer from earlier is now gone[end if]."

A fortified villa is a scenery facade in Hesychius Street. It fronts west. The description is "An especially solid and safe-looking villa with no entrance on this side. It was built, originally, by the head of the customs office, when that post was somewhat more dangerous than it is today. I admit I don't know who lives there now."
	The closure notice is "There are no doors in [the item described] from this angle. ".

Rule for listing exits when looking in Hesychius Street:
	do nothing.

A farmer's stall is scenery in Hesychius Street. The description is "It appears to belong to the farmer. It's made of wood and canvas and offers a little shade against the harsh sun. Previous customers have cleared most of it off[if the farmer is non-empty], but the farmer still has [a list of things *in the farmer][end if]."

Rule for printing the name of farmer's stall while looking:
	say "stall".

The farmer is a man in the Hesychius Street. The description is "Contrary to your obvious expectations, he is dressed more or less like anyone else, and is neither wearing quaint overalls nor chewing a piece of hay."

Rule for writing a paragraph about the farmer:
	say "One remaining [farmer] lazes here, watching his [farmer's stall].";
	now every thing carried by the farmer is mentioned;
	if a mentionable thing (called item) is in location:
		say line break.

An asparagus is carried by the farmer. It is a vegetable. The indefinite article of the asparagus is "some".  The description of the asparagus is "It looks particularly tender and pleasant, but I avoid the stuff."

A lime is carried by the farmer. It is a vegetable. The description of the lime is "A small, wrinkled, intense-looking fruit: it wouldn't give much juice, but is likely very strong."

A yam is a kind of vegetable.

A white-yam is carried by the farmer. It is a yam. The printed name of the white-yam is "yam". Understand "yam" as the white-yam. The description of the white-yam is "A yam with whitish skin. Some of the dirt of the farm still adheres to it."

[Rule for deciding the concealed possessions of the farmer:
	if buying something from someone, no;
	yes.]

[A description-concealing rule:
	now every thing which is carried by the farmer is not marked for listing.]

Section 2 - Webster Court

Webster Court is north of Hesychius Street and west of Crumbling Wall Face. The description is "[if former direction is north]Hesychius Street opens here into a broad and plainly-paved court[otherwise if former direction is west]Here below the wall is a broad, plainly-paved court[otherwise]A broad and plainly-paved court[end if][unless statue of Noah Webster is as-yet-unknown], named for [the statue of Noah Webster][end if]."

In-direction of Webster Court is north. [Into my parent's house]

Webster Court is checkpoint.

Instead of facing west in Webster Court:
	say "The old city wall cuts off any view towards the harbor and the far horizon. The taller houses permit a view over, however."

Instead of facing northwest in Webster Court:
	say "Roget Close is west, but there's no passage or street running northwest."

[Instead of facing northeast in Webster Court:
	say "[We] could go that way around behind my parents' house and enjoy their garden. They " ]

Rule for distantly describing Webster Court:
	say "In that direction is Webster Court, as made unmistakable by the gleaming bronze pate of old Noah himself."

A description-concealing rule:
	if the statue of Noah Webster is not as-yet-unknown:
		now the statue of Noah Webster is not marked for listing. [after its first introduction it becomes scenery, since it's not really interactive and we want to emphasize other things]

The statue of Noah Webster is a fixed in place thing in Webster Court. The initial appearance is "Lending its name to the location is a bronze statue of Noah Webster."
	Understand "bronze" as the statue.
	The description is "It's that hero of spelling reform, and personally responsible for the island going over to American[ize]d spellings over the British standard."
	The introduction is "My mother likes to irritate my father by quoting what his contemporaries called Webster: a 'viper', a 'maniacal pedant', and (always a fav[our]ite at Reform Day parties) 'a toad in the service of [i]sans-culottism[/i]'. She makes sure to pronounce that in the most Parisian accent possible."

Rule for listing exits while looking in Webster Court:
	say "The streets continue south, east, and west; and just to the northeast is my parents['] side garden."


Check waving the letter-remover at the statue of Noah Webster when the current setting of the letter-remover is "u":
	say "The device chokes on the concept, though my mother might say that this whole island is already the State of Noah Webster." instead.

A description-concealing rule when the location is not Webster Court:
	now the statue of Noah Webster is not marked for listing.

Instead of examining the statue of Noah Webster when the player is not in Webster Court:
	say "From this distance the statue is little more than a glare of sunlight."

After deciding the scope of the player when the location is Webster Court-adjacent:
	place the statue of Noah Webster in scope.

Definition: a room is Webster Court-adjacent:
	if it is the Patriotic Chard-Garden:
		yes;
	if it is Roget Close:
		yes;
	if it is Hesychius Street:
		yes;
	if it is Crumbling Wall Face:
		yes.

My parents' home is a facade in Webster Court. The printed name is "my parents['] home". Understand "house" or "building" or "pink" or "large building" as my parents' home. The initial appearance is "The [one of]large building just to the north [--] yes, the one in pale pink [--][or]large, pale pink building north of us[stopping] is [my parents' home]." The introduction is "I think I mentioned that my parents were well off. My father works for the Bureau, embarrassingly, and my mother was born into the kind of money that we like to pretend doesn't exist on this island."
	The description is "It's stucco and tile, inspired by southern California ideas of gracious living. There are potted palm trees inside, and leather sofas, and French oil paintings for which expensive importation lic[ense]s had to be bought.

My childhood bedroom faces northwest, away from the docks, towards the roofs of other villas and the open sea."


The pink door is north of Webster Court and south of Foyer. The pink door is a door. The pink door is scenery. It is lockable and locked.

Foyer is indoors and checkpoint.

Parental appearance is a scene. Parental appearance begins when the location is webster court and Patriotic chard-garden is visited and Private Beach is visited.

When parental appearance begins:
	move fake-father to the location;
	now allowed-action is false;
	say "The door to my parents['] house opens and my father comes out. He's talking over his shoulder: 'Sorry, dear, but [i]someone[/i] has to be on call.'

My mother answers from inside, but we can't make out what she's saying.

'Surge on the grid,' Father replies. 'Could be an unauthor[ize]d synthes[ize]r, but more likely... yes, exactly. I'll try to be home before the fireworks.'

He closes the door behind him.";
	if the player wears the monocle:
		try taking off the monocle;
		if the player encloses the backpack:
			if the backpack is closed:
				try opening the backpack;
			if the backpack is open:
				try inserting the monocle into the backpack;

Report taking off the monocle in the presence of fake-father:
	say "Hastily I take off our monocle and palm it. Father shouldn't recogn[ize] us in our current body, but wearing expensive Bureau equipment in his presence would be a terrible idea." instead.

fake-father is a man. fake-father is privately-named. The printed name of fake-father is "Father". Understand "father" and "dad" as fake-father. The description of fake-father is "He looks put out. Serial Comma Day is supposed to be a day off, even for him." The initial appearance is  "My father is just outside [my home]. He's clipping the cuffs of his trousers so that he won't snag them on anything during his ride in to work. His scooter is propped against the [statue of Noah Webster], ready for action."

After writing a paragraph about fake-father:
	set pronouns from fake-father.

Allowed-action is a truth state that varies. Allowed-action is initially false;

Sanity-check listing exits during parental appearance:
	now allowed-action is true.

Sanity-check taking off the monocle during parental appearance:
	now allowed-action is true.

Sanity-check opening the backpack during parental appearance:
	now allowed-action is true.

Sanity-check inserting the monocle into the backpack during parental appearance:
	now allowed-action is true.

Sanity-check waiting during parental appearance:
	say "We hold our breath." instead;

Sanity-check going somewhere during parental appearance:
	say "Hang on; I want to see where [fake-father] goes." instead;

Sanity-check doing something other than acting fast during parental appearance:
	[I don't know how this worked in 6G60, or what changed. Now the behavior at least matches that version.]
	[let through all actions if the allow-action flag is true]
	if allowed-action is true:
		now allowed-action is false;
	otherwise:
		say "We don't dare drawing father's attention. I'm going to have us stand over here as though checking on the health of the neighb[our][']s lawn, shall I?" instead.

Parental appearance ends when turn-taken is true.

Turn-taken is a truth state that varies. Before reading a command during parental appearance: now turn-taken is true.

Rule for listing exits while looking during parental appearance:
	do nothing.

When parental appearance ends:
	now fake-father is nowhere;
	now turn-taken is false;
	say "[if the prior named object is fake-father]He[otherwise]My father[end if] sees us from a distance and gives a neighb[our]ly wave. 'Happy Punctuating!' he shouts.

I wave back rather weakly.

He gets on his [if not looking]small red [end if]scooter, checks his helmet, and revs off to the south. Off, apparently, to investigate the synthes[ize]r that put us together. That will go slowly because of the holiday, but I'm guessing there will be Bureau investigators crawling all over the south side of old town in an hour or two."

A room-restriction rule for Foyer:
	say "Walking into my parents['] house is the action perhaps most likely to get us caught.";
	rule fails.

Instead of doing something to the pink door:
	say "Walking into my parents['] house is the action perhaps most likely to get us caught."

Rule for printing the name of the pink door when waving the letter-remover at the pink door:
	say "door";

Rule for printing the name of the pink door when not waving the letter-remover at the pink door:
	if the the pink door is marked-visible:
		say "door here";
	otherwise:
		say "door of my parents['] villa".

[Because we need to stop you so that you can see the scene with Dad if you were otherwise just going to be passing through:]
After going to Webster Court when Private Beach is visited and Patriotic Chard-Garden is visited and parental appearance has not happened :
	let N be the number of entries in the path so far of the player;
	if N is greater than 1:
		say "[path-walked so far][paragraph break]";
	otherwise:
		clear the path-walked for the player;
	unless final destination is Webster Court:
		now approach-destination is Winding Footpath; [Tricks the approaching verb into stopping here even if you're trying to reach someplace really far away.]
	continue the action.

Section 3 - Chard-Garden

The Patriotic Chard-Garden is northeast of Webster Court. Understand "patriotic garden" or "chard garden" as the patriotic chard-garden.
	The description is "A narrow strip of land between the house and the edge of my parents['] property. The eastern edge runs right up to the [decaying old wall] of the city, which here means some stumpy masonry on this side and a dizzying drop on the other.

The rest of their terraces and gardens are fenced off."
	The introduction is "Because it's so linguistically productive, chard is something of a national symbol; and during the world wars, there was a fad of gardening at home. After the war, it became common for affluent people with a little bit of land to keep their garden, so that if you were down on your luck you could glean a few leaves."

The decaying old wall is scenery in Patriotic Chard-Garden. The description is "This part of it is not really picturesque: just old rocks, a few of which occasionally shift loose and fall away."

Instead of climbing the decaying old wall:
	say "It's not in the best of shape. It wouldn't be hard to become part of a minor rockfall and kill ourselves on the descent."

A chard is in Patriotic Chard-Garden. It is a vegetable. The initial appearance is "A little [chard] still grows in the nearest bed, carefully tended to thrive in this climate." The indefinite article of the chard is "some".

Instead of taking the chard when the chard is not handled and the location is the Patriotic Chard-Garden:
	say "We pick the chard, leaving bare soil behind.

A flicker of curtains from inside the house suggests that someone saw us [--] a cleaner, possibly. But then there is a voice, not audible except as a confident rising and falling tone; this will be my mother, saying not to worry and not to interfere.";
	move the chard to the player.

A soil is a fixed in place thing in the Patriotic Chard-Garden. The indefinite article is "some". The initial appearance is "At our feet is a patch of [soil]."
	Understand "ground" or "earth" or "soil" as the soil.
	The description is "Bare dirt[if the chard is not in the location and the location is the Patriotic Chard-Garden], revealed when the chard was cleared away[otherwise], looking somewhat out of place here[end if]."

Instead of taking the soil when the soil is in the location:
	say "It's more than [we] can carry around by the handful."

[Every turn when the player carries the dirt:
	move the dirt to the location;
	say "The dirt is more than we can contain, and spills out onto the ground instead." ]

Before doing something when (the noun is the soil or the second noun is the soil) and the chard is in the location:
	say "The soil is hard to see under the chard." instead.

A description-concealing rule when the soil is marked for listing:
	if the chard is in the location, now the soil is not marked for listing.

The house-wall is scenery in Patriotic Chard-Garden. Understand "house" or "flicker" or "curtains" or "curtain" or "window" or "windows" or "wall" as the house-wall.

Section 4 - Roget Close

Roget Close is west of Webster Court. The description is "A pleasantly sheltered lane in which I learned to ride a bicycle, and where my friend Lucy used to live, before she and her parents moved off-island. Restrictions were looser even twenty years ago. Our old [schoolhouse] is just west of here."

[Instead of looking in Roget Close when Private Beach is visited and lexicon-tick is 0:
	do nothing instead.]

In-direction of Roget Close is north. [Through the spinner gate]

Instead of going west in Roget Close:
	say "School is out for the holiday. [run paragraph on]";
	carry out the listing exits activity.

The schoolhouse is a facade in Roget Close. It fronts west. It is scenery. Understand "school" or "elementary" or "building" or "big" or "arched" or "windows" or "faded" or "floorboards" or "yard" or "schoolyard" as the schoolhouse. The description is "[one of]It's where I went to school until I was twelve, as did most of the kids in this area. It's an old building with big arched windows and faded floorboards, and in the afternoon the schoolyard smells of spilled milk going sour in the sun. [or][stopping]From this direction there's not much to see but the screen of palm trees in front."

Some handsome old houses are a backdrop. They are in Hesychius Street and Roget Close. They are scenery. They screen south. The description is "Many of them built in the mid- or late 19th century, the houses are designed for families with a number of servants. Some of the owners even continue to keep up establishments on that scale." Understand "villas" as the handsome old houses.

Some palm trees are scenery in Roget Close. Understand "screen" or "palms" or "tree" as the palm trees. The description is "They aren't the very tall and graceful kind, but a stumpier variety, forming a sort of vegetative colonnade in front of the school building[if the gum is in the location and the gum is not handled]. There's some [gum] stuck to the base of the nearest tree[end if]."

Instead of climbing palm trees:
	say "Were you good at pole climbing exercises in gym? Because I wasn't."

[Because it requires several levels of examination, it's likely that many players will miss the gum entirely -- which is fine, because there are several other, more prominent solutions to the spinner puzzle. The aim here is to provide a reward to people whose first instinct is deep rather than broad exploration when they're faced with a new puzzle.

Once they *have* seen the gum, it becomes more prominently visible in the room description to hint that they could interact with it if they want.]

The gum is in Roget Close. It is edible. The heft of the gum is 1. The indefinite article is "some". The initial appearance is "Gum adheres to one of the palm trees, left no doubt by some departing school kid." The description is "The lump of blue-green gum has largely dried, but is still intensely unappetizing."
	The scent-description is "spearmint".
	Understand "lump" or "blue-green" as the gum.

Sanity-check eating the gum:
	say "I'm afraid I've never cared for ABC gum." instead.

Sanity-check tasting the gum:
	say "I'm afraid I've never cared for ABC gum." instead.

A description-concealing rule when the gum is marked for listing:
	if the gum is not handled and the gum is not seen:
		now the gum is not marked for listing.

Test gum with "tutorial off / look / x school / x palm / look / x gum / get gum / look / x palm trees / chew gum / eat gum / drop gum  / look / get gum / put gum on spinner / get mug / x mug / wave g-remover at mug / n" in Roget Close.

Rule for listing exits  while looking in Roget Close:
	do nothing instead.

After going from Roget Close to the Winding Footpath:
	let N be the number of entries in the described motion of the player;
	if N is greater than 1:
		say "[We] walk through the wealthy neighb[our]hood to Roget Close. ";
	clear path-walked for the player;
	increase path description count by 1;
	say "[if N is greater than 1]There [we][otherwise][report-followers][We][end if] slip between the houses and down a path that looks as though it might lead to someone's back yard. No one has ever put up signage to correct this misapprehension because no one who lives around here is eager to encourage strangers on the private beach.

Soon, however, the footpath begins to descend purposefully towards the level of the ocean[if the location is the final destination].[line break][otherwise].[paragraph break][end if]";
	continue the action;

Section 5 - Winding Footpath

The spinner-gate is north of Roget Close.  It is a closed transparent locked door. The printed name of the spinner-gate is "gate". Understand "gate" as the spinner-gate. The initial appearance is "If you look just north between the houses, you'll notice also the footpath down to an almost-private beach. It used to be open, but it's now gated off, and built into the [spinner-gate] is a chic modern sculpture."

The description of the spinner-gate is "A gate of wrought iron bars between two sturdy columns[if the spinner-gate is closed and the spinner-gate is locked], too close to climb through and too tall to climb over[else if the spinner-gate is closed], closed but not locked[else if the spinner-gate is open]; at the moment the gate has been pushed conveniently open[end if]. Built into the right-hand column, next to the gate latch, is a curious sculpture."

Out-direction of Winding Footpath is south. [Through the spinner gate]

Through spinner-gate is the Winding Footpath. South of Winding Footpath is Roget Close.

Winding Footpath is an outdoors checkpoint room. The description is "The [underfoot-path] winds between the villas, sloping steeply downward. It is narrow, and [bushes] left and right conceal it even from the windows of the people living nearby." Understand "path" as Winding Footpath.

Instead of going down in Winding Footpath:
	try going north.

Instead of going up in Winding Footpath:
	try going south.

Report facing in Winding Footpath:
	say "The steep sides of the path and the heavy growth of bushes make it hard to see far." instead.

Rule for listing exits when looking in Winding Footpath:
	do nothing instead.

Some bushes are scenery in Winding Footpath. The description is "Some variety I'm not familiar with: dark glossy green leaves, thick stems. In the right season, and I can't even remember what season that is, they also grow gaudy pink flowers. But not now[if kudzu is part of the bushes]. Lots of [kudzu] grows through and over the bushes [--] this is one of the few spots on the island where it hasn't been eradicated, it seems[end if].

[if the bushes are shrine-hiding]At one point along the path the bushes stick out especially far, as though there's something behind them.[otherwise]The bushes part a little to reveal the [shrine] [we] found.[end if]". Understand "dark" or "glossy" or "green" or "leaves" or "gaudy" or "pink" or "bush" as the bushes.

The kudzu is part of the bushes. The indefinite article is "some". Understand "invasive" or "vines" or "vine" as the kudzu. The description of the kudzu is "An invasive vine grown through and over the bushes."

Test foilkudzubug with "cut kudzu with foil" holding the foil in the Winding Footpath.

Carry out cutting the kudzu with something:
	now the kudzu is nowhere.

Sanity-check cutting the bushes with the jigsaw when the kudzu is part of the bushes:
	try cutting the kudzu with the jigsaw instead.

Report cutting the kudzu with the jigsaw:
	say "The jigsaw is not an ideal tool for kudzu removal and [we] wind up making a bit of a mess with bits of bush, but we do enough damage to clear the stage a bit." instead.

Report cutting the kudzu with the sword:
	say "A sword is not a machete, a fact that [we] have reason to ponder at some length. At least it's not a heavy broadsword. Our arm is not nearly strong enough to wield one of those. Even this blade gets tiring to wield surprisingly quickly.

After a long time and a lot of bother, [we] manage to lop off the main kudzu bits." instead.


The bushes can be shrine-hiding or shrine-revealing. The bushes are shrine-hiding.

Setting action variables for searching or looking under the kudzu:
	now the noun is the bushes.

Instead of searching or looking under the bushes:
	if the kudzu is part of the bushes:
		say "It's hard to get a good look under the bushes with all this kudzu in the way." instead;
	if the bushes are shrine-hiding:
		say "Hunting behind the bushes reveals something I vaguely remember seeing when I was a child, but not noticing again since: built into the wall is what looks like a very ancient sort of shrine.";
		now the bushes are shrine-revealing;
	otherwise:
		say "There's nothing more to find, really."

Instead of waving the letter-remover at the shrine:
	say "It won't do any good, you see: this is an [if the player is wearing britishizing goggles]artefact[otherwise]artifact[end if] of another time and language, and it has never been neutral[ize]d by authorities, so it won't respond to English-language tools. Quite likely it's in a language so old that it can't be manipulated at all.

I wonder why it hasn't been removed, or fixed; but I'd guess the reason is that very few people come this way."

Instead of waving the letter-remover at something which is part of the shrine:
	try waving the letter-remover at the shrine.

A description-concealing rule:
	if the bushes are shrine-hiding:
		now the shrine is not marked for listing.

Instead of pushing or pulling or turning the shrine:
	say "The backing stone is built firmly into the wall."

Sanity-check doing something when location is Winding Footpath and the bushes are shrine-hiding:
	if the noun is the shrine or the second noun is the shrine:
		say "Now that you mention it, I do vaguely recall something about a shrine in this area, but [we] can't make it out under the [bushes] right now." instead.

[The nymph 'shrine' is nod to the island's Roman history. There's nothing in the game to reveal this, really, but the idea is that this stone is actually a panel from an imperial-era sarcophagus (nymphs were often featured on such panels, and sarcophagus carvers were of very varied levels of skill). Subsequent inhabitants moved it.]

The shrine is a fixed in place container in the Winding Footpath. The initial appearance is "Now that the bushes have been cleared a little, the ancient shrine is plainly visible[if the shrine is non-empty], and [a random thing in the shrine] [are] set up in the place of hon[our][end if]." Understand "ancient" or "wall" or "niche" or "stone" or "backing" as the shrine. The description of the shrine is "There's a niche dug into the stone of the wall, above a [low relief] of three ladies. It's not very good work to start with, and has been eroded by a lot of weather, and I wouldn't be surprised if this weren't its original location; it probably stood somewhere else and was brought here.".

The carrying capacity of the shrine is 1.

Sanity-check inserting something into the shrine:
	if the heft of the noun is greater than 2:
		say "[The noun] [are] too large to fit in the shrine niche." instead.

Sanity-check putting something on the shrine:
	try inserting the noun into the shrine instead.

[The shrine is an easter egg to begin with; but easter eggs are the most fun if they are toys as well. The shrine offers the opportunity for some expressive play, as the player can try inserting different items. Mostly it's up to the player to roll his own meanings for this, but there are special responses for a few of the most pointed donations.]

Report inserting an as into the shrine:
	say "[We] set [the noun] in the shrine, as though to leave a small offering for whatever deities these were." instead.

Report inserting the member into the shrine:
	say "[We] plant [the noun] in the shrine, where it looks pedantic and pin-headed. What is the point of its obsession about punctuation and spelling, in the broader scope of things?" instead.

Report inserting the members into the shrine:
	say "The set of members just barely fits into the shrine. They look odd and plastic against the rough stone." instead.

Report inserting the army into the shrine:
	say "The figures of the soldiers form a neat line in the shrine niche. It looks as though a child had come here to play." instead.

Report inserting the cross into the shrine:
	say "[We] appropriate the ancient pagan shrine for a more Christian purpose, as many others must have done here when Atlantis was first converted in the fourth century." instead.

Report inserting the Guidebook into the shrine:
	say "[We] set [the noun] down in the niche. A pointed gesture, that: this shrine is just one of the many things around the island that the [i]Guidebook[/i] does not, and cannot, acknowledge." instead.

Report inserting a pi-object into the shrine:
	say "[We] set [the noun] in the niche, where it gleams in crisp and perfect contrast to the old and battered superstitious monument. Pure and eternal mathematics, exalted by the frail hand of man; or something like that." instead.

Report inserting the roll of bills into the shrine:
	say "[We] set up a cult to cash and contemplate it for a minute. There's no one else around to appreciate the point, though, and we need the money, so it will have to be a temporary installation only." instead.

Report inserting a sin into the shrine:
	say "[We] arrange [the noun] in the shrine niche, as some sort of ironic statement about what people worship these days." instead.

Report inserting the dog into the shrine:
	say "[We] stick the dog into the shrine niche. The effect is a bit sinister." instead.

Report inserting the god into the shrine:
	say "[We] stand the god up in the niche in a place of solemn hon[our]. It fits perfectly, as though shaped for just this use.

For a moment, with the air still and hot, and no one visible in any direction, we might almost believe that the past two millennia have been nothing, and that the shrine is fresh and new.

But Anglophone Atlantis prefers to forget what it was.";
	record "Jocasta Higgate award for reconstructing pagan worship on the island" as an achievement with break before instead.

Report inserting something into the shrine:
	say "[We] give [the noun] a place of solemn hon[our] above the relief of frolicking ladies." instead.

The low relief is a part of the shrine. Understand "ladies" or "three" or "waves" or "surface" or "nymph" or "nymphs" or "bare" or "breasts" or "breast" or "garment" or "garments" or "carving" or "sculpture" or "sculpted" as the low relief.  The description is "It looks like three ladies dancing on the surface of waves. They're probably meant to be nymphs, if I had to guess. They have bare breasts and fluttering garments, but the carving was done by someone who has not the slightest idea how to make limbs appear under sculpted cloth, so it all looks clunky, as though they don't have hips or legs at all, just randomly swirling skirts as their lower halves.

All the same, there's something appealing about it."

After going from the Winding Footpath to the Private Beach:
	let N be the number of entries in the path so far of the player;
	if N is greater than 1:
		say "[path-walked so far]";
	otherwise if N is 1:
		clear path-walked for player;
	increase path description count by 1;
	say "[We] continue down until there is a chink of a view of the sea. Then the path descends through a few last hairpin twists among rocks, and comes out suddenly on a little beach[if N is greater than 1].[paragraph break][otherwise if N is 1].[otherwise].[end if]";
	continue the action.

Test pathbug with "wear monocle / x path" holding the monocle in Winding Footpath.

underfoot-path is a privately-named improper-named scenery thing in Winding Footpath. The printed name is "footpath". Understand "path" or "footpath" or "pathway" as underfoot-path. The description is "There are traces of sand on the pathway, tracked up from the beach."

Instead of climbing underfoot-path:
	try going south.

Table of Ultratests (continued)
topic	stuff	setting
"shrine"	{ god, pita, roll of bills, as-coin, cross, army, members, yellow sign, Guidebook }	Winding Footpath

Test shrine with "tutorial off / autoupgrade / wave z-remover at kudzu / look behind bushes / put god in shrine / look / get god / wave a-remover at pita / wave t-remover at pit / put pi in shrine / look / get pi / put bills in shrine / look / get bills / put as in shrine / look / get as / put cross in shrine / look / get cross / put army in shrine / look / get army / put members in shrine / look / get members / wave s-remover at members / put member in shrine / look /  get member / wave g-remover at sign / put sin in shrine / look / get sin / put guidebook in shrine / look / get guidebook" [holding the god and the pita and the roll of bills and the as and the cross and the army and the members and the yellow sign and the Guidebook in the Winding Footpath.]

Section 6 - The Beach

Private Beach is north of Winding Footpath. It is checkpoint. The description is "This is little more than a strip of fine yellow [sand], perhaps twenty me[ter]s from side to side, and five from the [hillside] to the waterline[if the sage is in the location and the sage is not handled]. A little [sage] grows on the hillside, escaped from some garden, along with wilder plants[end if]. Above, at the top of that slope, are houses with balconies overlooking the sea, but from this angle it's impossible to see much of them, or for them (you'll have to take my word on this) to see us[if high street is visited and roundabout is not visited].

It's tempting to look for crabs among the rocks, but the tide is high just now, and even at the best of times this is not an area rich in sealife[end if]."

Understand "look for crabs" or "search for crabs" or "find crabs" or "catch crabs" as a mistake ("There aren't likely to be any, is the point.") when the player is in Private Beach.

The hillside is a facade in Private Beach. It is scenery. It fronts west. The initial appearance is "The [hillside] both east and west runs steeply down into the water [--] much too steep to allow for beaches or buildings. Here and there some bit of plant life has managed to cling onto the rock, but mostly it is bare and rough." Understand "hill" or "slope" or "plant life" or "plants" as the hillside.
	The closure notice is "That way is just bare hillside, much too steep to climb. ".

Instead of facing east in Private Beach:
	try examining the hillside.

The sage is in Private Beach. The indefinite article is "some". The scent-description is "pleasant herbs". The description of the sage is "Dark green leaves furred with silver prickles." The sage is a vegetable.

A description-concealing rule:
	if the sage is not handled:
		now the sage is not marked for listing.

The sandcastle is fixed in place in Private Beach. The initial appearance is "A fragile [sandcastle] stands near the water's edge." The sandcastle can be built or unbuilt. The sandcastle is unbuilt. The description is "[if unbuilt]At the edge of the water the sand is disturbed just enough to suggest where a previous sandcastle might have been, but that is all.[otherwise]No more than a couple of cylindrical turrets and a protective wall.[end if]". Understand "turret" or "turrets" or "wall" or "cylindrical" or "protective wall" or "cylinder" or "cylinders" or "castle" or "sand castle" or "sand-castle" or "palace" or "fort" or "fortress" or "project" as the sandcastle.

The scent-description is "salt and seaweed".

Instead of touching the sandcastle:
	say "[one of]Delicately [we] trace a few more crenellations in the top of the castle wall.[or][We] smoothe down one of the turrets.[or][We] poke a little door into the base of one of the turrets.[or][We] draw in some windows with our pinky.[at random]".

A description-concealing rule:
	if the sandcastle is unbuilt:
		now the sandcastle is not marked for listing.

Understand "build [sandcastle]" or "rebuild [sandcastle]" or "make [sandcastle]" or "construct [sandcastle]" or "reconstruct [sandcastle]" as building.

Instead of attacking the sandcastle:
	now the sandcastle is unbuilt;
	say "With a few vigorous swipes [we] demolish the construction."

Instead of building the sandcastle more than once:
	say "It would be pleasant to make believe that we were young and had no other concerns but to sit on the beach and make castles. But we both know that's not the case."

Building is an action applying to one thing.

Check building:
	if the sandcastle is built:
		say "There isn't time to build an entire sand-city." instead.

Carry out building:
	let N be a random number between 3 and 10;
	sandcastle washes away in N turns from now;
	now the sandcastle is built.

Report building:
	say "It would be madness to spend long on such projects when [we] have so much else to be doing, but [we] do, for old times['] sake (mine, at least), construct a couple of hasty cylindrical turrets and a protective wall of sorts."

At the time when sandcastle washes away:
	if the sandcastle is unbuilt and the sandcastle is in location:
		say "The waves wash away all but the faintest traces of the sandcastle.";
	otherwise if the sandcastle is in location:
		say "[if the noun is the sandcastle or the second noun is the sandcastle]But our efforts are in vain, because an[otherwise]An[end if] especially forward wave slides up the beach and demolishes [if the noun is the sandcastle or the second noun is the sandcastle]the whole construction[otherwise]our poor sandcastle[end if].";
	now the sandcastle is unbuilt;

[Just to help the parser pick one]

Does the player mean finding the museum exterior:
	it is very likely.

Instead of finding the sandcastle when the subcommand of the sandcastle matches "wall":
	try approaching the old city walls.

Instead of finding the museum exterior when the subcommand of the museum exterior matches "wall":
	try approaching the old city walls.

Test sandcastle with "x castle / build castle / build sandcastle / look / smell castle / taste castle / touch castle / x castle / z".

The sand is scenery in Private Beach. Understand "ground" as the sand. The description is "It's baking hot." The indefinite article is "some".

Instead of taking the sand:
	say "Sure, [we] could wander off with a handful of sand, but [we] could hardly shift any significant portion of the beach. And then we'd be making a mess and dribbling sand grains everywhere."

Test funnelbug with "tutorial off / hard / y / dig / dig sand" in the Beach.

After digging in the sand when the funnel is buried:
	now the funnel is not buried;
	say "[We] brush away the sand covering a [funnel], left over from some child's building project."

Report digging in the sand:
	say "Scooping away a few handfuls of sand reveals nothing extraordinary, just more sand." instead.

Instead of touching the sand:
	say "[We] run our fingers through the fine sand, raking it into patterns."

Instead of inserting the sand into the funnel:
	say "[We] scoop a little sand, but it only runs out again."

Instead of inserting the sea-view into the funnel:
	say "The water fills the funnel and then runs out again in a decorative drizzle on the sand. A moment later even that is gone in the heat of the day."

A funnel is a thing in the Private Beach. The initial appearance is "[if the funnel is buried]Something green and plastic just barely pokes out of the sand[otherwise]Half-hidden in the sand, no doubt left over from some kid's sandcastle project, is a plastic funnel[end if]." The description is "A gaudy green plastic toy suitable for funneling water and shaping conical sand-turrets. [if the funnel is handled and the funnel is examined]A few grains of sand still cling to it[otherwise]It's all sandy[end if]." The scent-description is "warm plastic".
	Understand "green" or "plastic" or "toy" or "gaudy" as the funnel.

Instead of examining the buried funnel:
	say "All that's visible from here is the tip of something green."

Carry out taking the funnel:
	now the funnel is not buried.

The funnel can be buried or unburied. The funnel is buried.

Sanity-check rubbing the sand when the funnel is buried:
	try digging in the sand instead.

Instead of washing the funnel in the presence of the fountain:
	say "We dip the funnel in the water and quickly shake it dry.";
	now the description of the funnel is "A gaudy green plastic toy suitable for funneling water and shaping conical sand-turrets."

Before washing the funnel when the player can touch a tap (called target tap):
	if target tap is switched off:
		silently try switching on target tap;
	if target tap is switched on:
		now the description of the funnel is "A gaudy green plastic toy suitable for funneling water and shaping conical sand-turrets.";
		say "[We] run some water from [the target tap] over [the funnel], leaving it glistening and clean.";
		silently try switching off target tap instead.

Instead of rubbing the funnel:
	if the funnel is buried:
		try digging in the sand instead;
	otherwise if the funnel is not handled:
		say "There's no point trying to clean it while it's lying in the sand." instead;
	otherwise:
		say "[We][']ve brushed away most of the adhering sand, but there are always going to be a few grains left."

Instead of wearing the funnel:
	say "I try setting it on our head as a cap, but it slides off again."

Instead of searching the funnel:
	say "It restricts our view comically, as though [we] were peering through a doll's periscope. But the utility is limited."

Rule for listing exits when the location is Private Beach:
	say "This little bit of sand ends on either side in steep rockfalls; there's no way to work along the coast in either direction. The only way to go is back up the footpath to the south."

Table of Ultratests (continued)
topic	stuff	setting
"funnel1"	{ funnel, apple}	Park Center

Test funnel with "tutorial off / look / x funnel / dig in sand / look / x funnel / get funnel / clean funnel / look in funnel / wear funnel" in Private Beach.
Test funnel1 with "drop funnel / take funnel / wash funnel / fill funnel with water / wave p-remover at apple / fill funnel with ale / put funnel in water / put funnel in fountain" [holding the funnel and the apple in Park Center].
Test funnel2 with "drop funnel / take funnel /wash funnel / put funnel in water / put funnel in sink" holding the funnel in My Apartment.

Instead of going up when the location is Private Beach:
	try going south.

The footpath entrance is a backdrop. It is in Roget Close and Private Beach. The description is "You can see just a few feet of the path, which quickly disappears among houses and bushy growth." Understand "path" as the footpath.

Instead of climbing or entering the footpath entrance:
	if the location is Private Beach:
		try going south;
	otherwise:
		try going north.

The Wealthy District is a region. Hesychius Street, Roget Close, Webster Court, Winding Footpath, the Private beach, Patriotic Chard-Garden, and the Foyer are in Wealthy District.

Index map with Old City Walls mapped north of Monumental Staircase. Index map with Hesychius Street mapped west of Old City Walls. Index map with Webster Court mapped north of Hesychius Street. Index map with Roget Close mapped west of Webster Court. Index map with Foyer mapped north of Webster Court.


Act I Among Sightseers ends here.
