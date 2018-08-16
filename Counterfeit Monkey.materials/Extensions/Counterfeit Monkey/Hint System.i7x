Hint System by Counterfeit Monkey begins here.

Use authorial modesty.


Volume 7 - Hint System

[ Once there were going to be hints. Then I realized just how much insanity that implied, given the many different solution paths. There was no chance of automating this the way Bronze does; and for that matter, just checking whether the player has an object that could be used to solve a given puzzle could be very hard. So I wussed out. ]

Chapter 1 - Hint Vocabulary

Understand "hint about [something]" or "think about [something]" as requesting hint about. Requesting hint about is an action out of world applying to one thing.

Sanity-check requesting hint about something:
	say "What, in hard mode? Really." instead.

Report requesting hint about something:
	say "Beats me, honestly."


Chapter 2 - Hints for Reusable Items and Tools

Report requesting hint about the player:
	say "Each of us is perhaps a bit of a puzzle to the other, it's true. But we've only got to share this body for a few hours, right?" instead.

Report requesting hint about the letter-remover:
	say "This is a highly useful multi-purpose device, which we're going to need many times in order to get off this island, I'm guessing. We can set it to a particular letter and wave it at things [--] or, as a shortcut, just WAVE A-REMOVER AT COAT, for instance." instead.

Report requesting hint about the homonym paddle:
	say "The homonym paddle transforms any object into another object with the same name. We're not going to succeed in stealing it from the bartender, but in many cases she may be willing to make the transformation for us, if we show things to her." instead.

Report requesting hint about the t-inserter machine:
	say "Putting items into the T-inserter will add the letter T to them [--] in some cases, multiple Ts." instead.

Report requesting hint about the synthesizer:
	say "To synthesize two objects, we need to place both inside the synthesizer (so very large items may not fit), then turn the synthesizer on." instead.

Report requesting hint about the backpack:
	say "We carry things around in it, and of course it's a useful place to stash items that we might not want someone to notice on us at first glance." instead.

Report requesting hint about the monocle:
	say "The chief advantage of the monocle is that it lets us see what an item used to be before it underwent letter transformation (if it did). That works almost all of the time, unless someone has used Origin Paste on the item. But Origin Paste isn't that easy to come by." instead.

Report requesting hint about the authentication scope:
	say "The scope works like my monocle: it allows the secretary to detect items that were forged." instead.

Report requesting hint about the origin paste:
	say "RUB paste on something in order to disguise it from monocles and authentication scopes. It'll leave behind the scent of lavender for a little while, but sometimes, especially in outdoor or busy environments, people won't notice the scent.

(And, incidentally, there's plenty of paste, so I doubt we should concern ourselves with the possibility of running out.)" instead.

Report requesting hint about the restoration gel:
	say "Think of this as a gigantic eraser for any mistakes we might make. It reverts any letter-changed items back to their original form, so if we create the wrong object or just want to retrieve the original, we can do so." instead.

Report requesting hint about the flash drive:
	say "This is full of my plans and schemes, and while I have every hope that it's going to be very very useful in the outside world, there's nothing in there that will help us with our escape. Just hanging onto it and getting off the island alive would meet my expectations, as far as the flash drive is concerned." instead.

Report requesting hint about the bills:
	say "There's enough money here to supply us anything we need to buy between now and the point where we get off the island." instead.

Report requesting hint about the secret-plans:
	say "Personally, I don't care much about the plans at all, but they're evidently of considerable value to you, assuming you can get them off the island and into the hands of your prospective buyers. Between now and then, they're more of a liability than an asset." instead.

Report requesting hint about the restoration-gel rifle:
	say "This works like regular restoration gel, with the signal exception that it can act at a distance. SHOOT the rifle at things in order to restore them to their original letter form." instead.

Report requesting hint about the Britishizing goggles:
	say "I think they were a bit of a white elephant purchase on your part. I can't see what good they're ever going to do us." instead.

Report requesting hint about the Catalan punt volat needle:
	say "I can't think of any reason why that would ever be useful to us." instead.

Report requesting hint about the programmable dais:
	say "It looks to me as though this can do the functions of a synthes[ize]r and of a homonym paddle [--] and possibly also get around some of the size and power restrictions we've faced with earlier tools. Switching the switch will swap over from one function to the other." instead.

Report requesting hint about the spinner:
	if the spinner-gate is locked:
		say "[one of]If we put something on the spinner, it rotates the letters of the word to appear backwards[or]It seems that successfully rotating something on the spinner has the secondary effect of unlocking the gate[or]We will need something whose letters form a word when reversed as well[or]Buying a yam from the farmer's stall might give us the equipment we need[or]GO TO HESYCHIUS, then BUY YAM, then PUT YAM ON SPINNER[stopping]." instead;
	else:
		say "We've already unlocked the gate, but we can still use the spinner to rotate other words if we like." instead.

Chapter 3 - Hints about Useless Scenery

Report requesting hint about an unlocked door:
	say "[The noun] is unlocked, which seems sufficient for the time being." instead.

Report requesting hint about a scenery container:
	if the noun is non-empty:
		say "The only interesting thing about [the noun] is that [they] [contain] [a list of things *in the noun]." instead;
	say "I don't think [the noun] is likely to be of great significance to us, unless there's something useful inside." instead.

Report requesting hint about a scenery thing:
	say "[The noun] [are] too large to be converted into anything with the letter tools at our disposal, I think." instead.

Report requesting hint about the altar:
	say "[one of]It is going to take something other than prayer to get us out of here[or]I don't think there's anything useful we can do with the altar[or]There might be something minorly amusing to do with the altar, but it won't solve any of our problems[stopping]." instead.

Report requesting hint about the customs house:
	say "The customs house is only useful for people who are leaving the island. The less we have to do with it before then, the better." instead.

Report requesting hint about a screen which is part of something (called the parent computer):
	say "[The noun] [are] just there to let us read the output of [the parent computer]." instead.

Report requesting hint about portholes:
	say "[The noun] [are] only there to let in the light. I don't think we can use [them] for anything." instead.

Report requesting hint about a drain:
	say "[The noun] [are] an ordinary part of the plumbling here, but not terribly important." instead.

Report requesting hint about a blanket:
	say "[The noun] [aren't] likely to be a lot of help to us." instead.

Report requesting hint about some sheets:
	say "[The noun] [aren't] likely to be a lot of help to us." instead.

Report requesting hint about a pillow:
	say "[The noun] [aren't] likely to be a lot of help to us." instead.

[Report requesting hint about the desk-attendant:
	say "I don't think she can help us with much. She might be able to make a bit of conversation, but to be honest, the less of an impression we make on her, the better." instead.]

Report requesting hint about the gift shop volunteer:
	say "To me, he looks like a slightly bored old man. Chat with him if you want, but I don't think he's going to solve any major problems for us." instead.

Report requesting hint about the depluralizing cannon:
	say "If it weren't for this thing, Anglophone Atlantis wouldn't exist [--] not as an independent country, anyhow. That said, I don't think we're going to find a use for it ourselves, and that's just as well. Depluralizing people is typically considered a war crime." instead.


Chapter 4 - Puzzle Hints

Section 1 - Tutorial Area

Check requesting hint about the code:
	try requesting hint about the code-lock.

Report requesting hint about the codex:
	say "[one of]A codex without an X is a code[or]Try WAVE X-REMOVER AT CODEX[stopping]." instead.

Check requesting hint about the temporary barrier:
	try requesting hint about the code-lock instead.

Report requesting hint about the code-lock:
	if the code-lock is unlocked:
		say "The barrier has been unlocked; there's nothing left for us to do there." instead;
	if the codex is unseen:
		say "[one of]It seems we need a code to open the lock. Something nearby might be useful[or]There's a [codex] in the museum window; maybe we could do something with that[stopping]." instead;
	if the code is unseen:
		say "[one of]Let's try transforming the CODEX into the code we need[or]Personally, I'd try WAVE X-REMOVER AT CODEX[stopping]." instead;
	say "Now we've got a code: SET LOCK TO CODE." instead.

Check requesting hint about a pan:
	try requesting hint about the word-balance instead.

Check requesting hint about the barker:
	try requesting hint about the word-balance instead.

Check requesting hint about something which is on a pan when the barker is in the location:
	try requesting hint about the word-balance instead.

Report requesting hint about the word-balance:
	if the barker is not in the location, say "The word-balance challenge has already been solved. I don't think there's anything more we can do with it." instead;
	say "[one of]The balance will tilt if the contents of one pan are lighter than those of the other.[or]We can't take anything out, but perhaps we could change what's already there.[or]The letter-remover would come in handy for this.[or]There are several different changes we could make.[or]We could try WAVE R-REMOVER AT PEAR.[stopping]" instead.

Report requesting hint about the ticket:
	if the cinema lobby is not visited:
		say "Most likely this will come in handy somewhere where we need a ticket." instead;
	if the Screening Room is visited:
		[this should not occur, because he should have torn the ticket up]
		say "We have already gotten past the ticket-taker." instead;
	if the location is not the cinema lobby:
		say "This might be more useful back at the cinema lobby." instead;
	say "Giving the ticket to the ticket-taker would probably get us into the screening room." instead.

Report requesting hint about the ticket-taker:
	if the Screening Room is visited, say "We have already gotten past the ticket-taker. He'll remember that now and let us come and go as needed." instead;
	if the Church Garden is unvisited, say "[one of]We should explore further.[or]We haven't yet explored the area of the church.[or]The church garden would be a good place to look.[or]Let's GO TO THE CHURCH, then GO WEST into the garden.[stopping]" instead;
	if the ticket is not seen, say "[one of]There is something in the church garden that might be useful.[or]We could remove the h from THICKET in the church garden.[stopping]" instead;
	if the player carries the ticket, say "We could give the ticket to the ticket-taker.";
	otherwise say "We could get the ticket and give it to the ticket-taker.";
	stop the action.

Report requesting hint about the tube:
	say "[one of]It would be useful if this were a larger container.[or]Perhaps something that could be made from the word TUBE.[or]How about a tub?[or]WAVE E-REMOVER AT TUBE.[stopping]";
	stop the action.

Check requesting hint about the locker when the lock is marked-visible:
	try requesting hint about the lock instead.

Report requesting hint about the locker:
	say "Since the lock has been dealt with, we should be set." instead.

Report requesting hint about the backpacking girl:
	say "[one of]We can't retrieve our things with the backpacking girl here watching, so we'll have to get her to leave[or]I bet we could freak her out with one of those standard tricks Atlanteans play on tourists [--] show her something really upsetting that's actually letter-created[or]Like maybe a disembodied body part[or][body-part-suggestion][stopping]." instead.

To say body-part-suggestion:
	if the player carries a freaky thing (called recommended freaky):
		say "I suggest showing [recommended freaky] to the girl";
	else if a freaky thing (called recommended freaky) is seen:
		say "Showing the girl [the recommended freaky] might work";
	else:
		say "[one of]I know we've seen something that could be converted into a body part[or]The wheel back at the Fair might do[or]W-remove the wheel, then take the heel and show it to the girl, is what I'm thinking of[stopping].";

Check requesting hint about the lock when the backpacking girl is marked-visible:
	try requesting hint about the backpacking girl instead.

Report requesting hint about the lock:
	if the player does not enclose the tub and the player does not enclose the tube:
		if the barker is in the Midway:
			say "[one of]To get past the lock, we may have to restore it to its original self.[or]To do that, it would be helpful if we had some restoration gel.[or]Try the game with the barker first.[stopping]";
		else:
			say "[one of]We'll need that gel we won from the barker.[stopping]";
	else if the player encloses the tube:
		say "[one of]The restoration gel might come in handy.[or]Of course, we'd need a larger supply of it.[or]We'd better concentrate on the tube before trying to get past the lock.[stopping]";
	else:
		say "[one of]The lock was not originally a lock.[or]Maybe we can restore it to what it was originally.[or]PUT GEL ON LOCK.[stopping]";
	stop the action.


Section 2 - Endgame

Report requesting hint about the umlaut punch:
	if the power chord is unseen:
		say "I'm kind of curious to see it in action, aren't you? I mean, we could try putting something inside, just for fun." instead;
	else:
		say "Since we're not in a German-speaking environment, I think we've discovered the only major use this thing is ever going to have. Unless there are some other childhood-fav[our]ite bands you're desperate to resurrect?" instead.

Report requesting hint about the anagramming gun:
	if the anagramming gun is loaded:
		say "[We] can shoot it at things to rearrange the letters. But be cautious; this isn't a toy. There's good reason they keep it locked away." instead;
	else if the anagramming gun is not touchable:
		say "It's a tempting article, but honestly I don't see any way to reach the gun from here." instead;
	else:
		say "Before we can use this thing, we'll need to load it. These things take special ammunition, which might be around somewhere." instead.

Report requesting hint about the cryptolock:
	say "[one of]This looks a little like the spinner lock we saw back in Roget's Close all that while back[or]We need to put something into the bucket that can successfully be transformed, using the rules of this lock[or]Apparently, the bucket rotates vowels forward: A to E, E to I and so on[or]Anything we possess that could make that transformation would do[stopping]."


Hint System ends here.
