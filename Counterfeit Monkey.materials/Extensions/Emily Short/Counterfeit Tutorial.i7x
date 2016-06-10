Counterfeit Tutorial by Emily Short begins here.

Use authorial modesty.

Book 1 - Act I Among Sightseers

Part 1 - Tutorial

Chapter 1 - Barriers and Spaces

[Because the temporary barrier is the first real puzzle the player faces, it is especially important to handle all attempts at interaction as clearly as possible. In addition, the point of the puzzle is to figure out how to get the code, not to make the player do fiddly things -- so anything that could reasonably be construed as an attempt to use the code once it's been discovered should be redirected towards opening.]

The temporary barrier is south of Fair. The temporary barrier is a door. It is transparent, closed and locked. The initial appearance is "[A temporary barrier] blocks [if the location is the Fair]this noisy fair from the empty street to the south[otherwise]this empty street from the busy fair to the north[end if][if the temporary barrier is locked], though there is a door that could be opened with the correct code[otherwise], though it is currently unlocked and anyone could go through[end if][if the location is Ampersand Bend]. From here the gaiety and excitement of the holiday are fairly loud[end if]."

The description of the temporary barrier is "It's a high metal fence, supported by sturdy poles. It's designed to contain the chaos a little, and keep people who have come in for the Fair from wandering off down the side streets and causing trouble in unpoliced areas of town. It has [a code-lock] that opens the inset door."

Instead of looking under the temporary barrier:
	say "[The temporary barrier] is set flush with the ground. There is certainly not enough room to crawl underneath."

Instead of climbing the temporary barrier:
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
	if the code is marked-visible:
		try setting the code-lock to "code" instead;
	say "[The temporary barrier] is locked. [We][']d need to set the code-lock to the right number." instead.

Sanity-check locking the temporary barrier with something:
	if the code is marked-visible:
		try setting the code-lock to "333" instead;
	say "[We][']d need to set [the code-lock] to some random number." instead.

Sanity-check locking keylessly the temporary barrier:
	if the code is visible:
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

 Understand "use code" as code-entering. Understand "enter code" as code-entering. Understand "use code on [code-lock]" as code-entering on.

Code-entering is an action applying to nothing.

Check  code-entering:
	unless the player can see the code-lock:
		say "There's nothing here on which to enter a code." instead.

Carry out code-entering:
	try setting the code-lock to "code" instead.

Code-entering on is an action applying to one visible thing.

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
		say "If only the code were written down somewhere nearby." instead;
	try setting the code-lock to "305" instead.

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

Ampersand Bend is south of the temporary barrier. It is a road. The description is "A bend in the street, which runs west and north. This district combines the old and the new: a small [museum] in an ancient stone building to the east, a shiny [real estate office] south. The window of the museum is currently displaying one of its exhibits, [a list of things *in the display stand][if the code is on the display stand]. Well, not to worry: they'll be able to restore the codex easily enough when the museum reopens[end if]." Understand "district" as Ampersand Bend.

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

Sigil Street is west of Ampersand Bend. It is a road. The description is "The buildings here are two and three [if the player wears the Britishizing goggles]storeys[otherwise]stories[end if], with shops at ground level and [apartments] above. The shops are closed for the holiday: [a typographer's office], [clothing shops] of col[our]ful skirts and ethnic bodices (rarely if ever worn by natives) and t-shirts covered with font designs[if the reflective window is in Sigil Street].

[one of]Passing by [the reflective window] [we] catch the sight of our single blended body, and it creeps me out[or][The reflective window] of the closed shops reflect our synthes[ize]d self[stopping][end if]."

Some elderly apartments are scenery in Sigil Street. The description is "From down here [we] can only see the shuttered windows and the occasional balcony or awning, but you can guess what they're probably like from the environment: old-fashioned inside, kitchens and bathrooms awkwardly fitted into niches and closets of buildings that weren't designed for plumbing. But they're also probably rather [if the player wears the Britishizing goggles]cosy[otherwise]cozy[end if] and handsome, with exposed beams under the ceiling." Understand "flat" or "apartment" or "apartment" or "building" or "buildings" as the elderly apartments.

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

Check waving the letter-remover at font t-shirts when the current setting of the letter-remover is "r":
	say "No doubt this would be a cogent statement about the commercial[ization] of the body, if it weren't for the fact that T-SHIT doesn't describe anything anyone with a functional colon has ever heard of." instead.

Instead of taking something which is part of the clothing shops:
	say "Though [the noun] [are] theoretically for sale, there's no one in at the moment to sell [them] to us."

Instead of buying something which is part of the clothing shops:
	say "Though [the noun] [are] theoretically for sale, there's no one in at the moment to sell [them] to us."

The typographer's office is a facade in Sigil Street.  It is scenery.
	Understand "sign" or "display" or "poster" or "typographer" or "font" or "fonts" or "comma" or "commas" or "punctuation" as the typographer's office. It fronts north. The description of the typographer's office is "The office advertises custom fonts and symbols, though it is very unlikely that anyone decides to have a custom font made simply because they happened to catch a notice in a shop window. In hon[our] of the holiday, there is also a display poster showing the form of the humble comma as it manifests itself in a variety of popular fonts."

Instead of looking toward Back Alley:
	say "It doesn't look like there's anything interesting back that way."

Back Alley is south of Sigil Street. It is a road. The description is "[one of]This isn't much, is it? Just[or]There is nothing here but[stopping] the back sides of a couple of [yellow buildings], some peeling yellow paint[one of], and[or];[stopping] not even much by way of windows to look in through. [if unvisited]I think the place where [we] had the procedure done is just a block or two away, but I've already lost the door. I imagine they change it. [end if]

This alley runs north to the open street, towards the town square[if unvisited]. That's the way [we][']ll want to go first[end if]."
The dull house-back is a facade in Back Alley. It fronts south. It is scenery. The description is "The owners of the house obviously didn't want a view in this direction, as there aren't any windows to see through, just a wall scarred by decades of occasional remodeling."
	The closure notice is "There are no doors in [the item described]. ".

Some yellow buildings are a facade in Back Alley. They front east. They are scenery. Understand "windows" or "window" or "building" or "back" or "backs" or "sides" or "walls" as the yellow buildings. The printed name is "[if looking]buildings[otherwise]yellow buildings[end if]". The description is "The buildings are no doubt due for renovation, but haven't received it yet. There are no windows facing this way."
	The closure notice is "There are no doors in [the item described]. ".

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

Definition: a thing is other if it is not the player.

Understand "us" or "ourselves" or "we" or "ourself" as yourself.

Check waving the letter-remover at yourself when the current setting of the letter-remover is "i":
	say "If this were likely to work, it would be a terrible idea. Fortunately, we don't self-identify simply as I, and secondly, the letter-remover won't remove the last letter of something." instead.

When play begins:
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

After reading a command during identification:
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
				wait for any key;
				say "[banner text]";
				say "[paragraph break]Let's try to get a look around. I haven't been able to run our body without your help, but maybe now you're awake, it'll work better.";
			otherwise if stored first name is "No" or stored first name is "N":
				say "To review, we're Alexandra now. I was Alex, before the synthesis. You were...";
			otherwise if stored first name is "Yes" or stored first name is "Y":
				say "Right, we're Alexandra now. Before the synthesis, I was Alex. You were...";
			otherwise:
				say "...er, no. We're Alexandra now. Before the synthesis, I was Alex. You were...";
		otherwise:
			now new first name is "[the player's command]";
			replace the regular expression "\p" in new first name with "";
			now new first name is new first name in sentence case;
			replace the regular expression "\p" in new first name with "";
			if new first name is "Andra":
				say "...yes! Okay. We're both here, neither of us lost our minds in the synthesis process. ";
			otherwise:
				say "...oh boy. Okay. Okay. I need you on form here. This is going to be hard if you don't remember being Andra. Not panicking. ";
			say "As far as I can tell, the operation was a success. We're meant to be one person now, unrecognizable to anyone who knew us before.[paragraph break]";
			now stored first name is "Andra";
			wait for any key;
			say "[banner text]";
			say "[paragraph break]Let's try to get a look around. I haven't been able to run our body without your help, but maybe now you're awake, it'll work better.";
		follow the scene changing rules;
		reject the player's command.


Section 2 - Tutorial Mode

Instead of looking for the first time:
	do nothing instead.

Include Tutorial Mode by Emily Short.

The teach inventory rule is listed before the teach dropping rule in the instructional rules.

[Turn off tutorial mode if you've already done it...]
A first instructional rule:
	if "Finished tutorial mode" is a used achievement:
		now tutorial mode is false;
		stop.

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
	if the teach examining super thoroughness rule is listed in the completed instruction list:
		make no decision;
	if the mourning dress is not enclosed by location:
		make no decision;
	if we have examined the mourning dress:
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
	let N be "[letter-remover]";
	say "[first custom style]That looks interesting. Try looking at that [letter-remover][one of][or]. L [N in upper case][stopping].[roman type]";
	now the expected action is the action of examining the mourning dress;
	now the held rule is the teach examining super thoroughness rule;
	rule succeeds.

Carry out examining the letter-remover:
	add the teach about letter-remover rule to the completed instruction list, if absent.

An instructional rule (this is the teach setting rule):
	if the teach setting rule is listed in the completed instruction list:
		make no decision;
	let N be "[the letter-remover]";
	say "[first custom style]It can be set to any letter we choose, hm? That sounds like a hint. Try SET [N in upper case] TO U.[roman type]";
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
	if the mourning dress is not enclosed by location:
		make no decision;
	let N be "[the letter-remover]";
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
	if waving the letter-remover at something:
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
		let way be the best route from the location to the goal;
	otherwise if the player can see an open door (called portal):
		let far side be the other side of the portal;
		let way be the best route from the location to the far side;
	otherwise:
		make no decision;
	if way is nothing:
		make no decision;
	let N be "[way]";
	say "[first custom style][one of]You can spend some more time looking around or checking out your inventory to see what you've changed in this location. When you're ready to move on, you can head[or]When you want to move to a new location, you can go[stopping] [N in upper case].[roman type]";
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
	say "[first custom style]Navigating with compass directions works, but we can also type GO TO... to travel to a named place. GO TO BACK ALLEY will take us back where we started, for instance.[roman type]";
	rule succeeds.

Carry out approaching:
	add the teach distance movement rule to the completed instruction list, if absent.

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
	say "[first custom style][bracket]We can LOOK UP interesting subjects IN books, if we like.[close bracket][roman type]";
	add the teach consulting rule to the completed instruction list, if absent;
	record "Finished tutorial mode" as an achievement;
	rule succeeds;

The teach more compass directions rule is listed before the teach dropping rule in the instructional rules.
The teach distance movement rule is listed before the teach dropping rule in the instructional rules.
The check out the place rule is listed before the teach dropping rule in the instructional rules.
The teach locked doors rule is listed before the teach dropping rule in the instructional rules.
The fix codex rule is listed before the teach dropping rule in the instructional rules.
The unlock barrier rule is listed before the teach dropping rule in the instructional rules.
The open barrier rule is listed before the teach dropping rule in the instructional rules.

[The teach thinking rule is listed before the teach meta-features rule in the instructional rules.]




Counterfeit Tutorial ends here.