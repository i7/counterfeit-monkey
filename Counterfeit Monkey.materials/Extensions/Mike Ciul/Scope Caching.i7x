Version 2/120725 of Scope Caching by Mike Ciul begins here.

"Gives things the 'marked-visible' property, to check the visibility of something without repeating the entire scope loop each time. Works with Epistemology by Eric Eve, Conditional Backdrops by Mike Ciul, and Remembering by Aaron Reed."

"based on code provided by Andrew Plotkin"

[and Jimmy Maher? http://www.intfiction.org/forum/viewtopic.php?f=7&t=3241&start=40]

Use authorial modesty.

Volume - Scope Caching

Chapter - Bugfix in PlaceInScope

Include (-
[ PlaceInScope O opts; ! If opts is set, do not place contents in scope
	! Removed this problematic line, don't know what it was for:
	wn = match_from;
	if (opts == false) DoScopeActionAndRecurse(O);
	else DoScopeAction(O);
	return;
];

[ AddToScope obj;
    if (ats_flag >= 2) DoScopeActionAndRecurse(obj, 0, ats_flag-2);
    if (ats_flag == 1) { if (HasLightSource(obj)==1) ats_hls = 1; }
];
-) instead of "Scope" in "Parser.i6t"

Chapter - Iterating over Scope

[Thanks to Andrew Plotkin for this code to make the scope checking not incredibly repetitive]

To iterate scope with (func - phrase thing -> nothing): (-scope_token=0; LoopOverScope({func}-->1); -).

To iterate scope for (actor - thing) with (func - phrase thing -> nothing): (- scope_token=0; LoopOverScope({func}-->1, {actor}); -).

Chapter - The marked-visible Property

A thing can be marked-visible or marked invisible.
A room can be marked-visible or marked invisible.
A direction can be marked-visible or marked invisible.
A region can be marked-visible or marked invisible.

To mark the/-- visibility of (target - a thing) (this is scope caching):
	rapidly set target marked visible.

Caching scope something is an activity on objects.

For caching scope of something (called viewer):
	rapidly set everything marked invisible;
	Iterate scope for viewer with scope caching.

Chapter - When to Perform Scope Caching

Section - Trusting the Scope Cache

Trust in the scope cache is a truth state that varies.

To decide whether we trust the scope cache:
	Decide on whether or not trust in the scope cache is true.

To trust the scope cache until next turn:
	Now trust in the scope cache is true.

To mistrust the scope cache:
	Now trust in the scope cache is false.

Section - Caching Scope After Reading a Command

After reading a command (this is the cache player's scope rule):
	if we trust the scope cache:
		Mistrust the scope cache;
	otherwise:
		Carry out the caching scope activity with the player.

The cache player's scope rule is listed first in the after reading a command rules.

Volume - Interactions with Conditional Backdrops (for use with Conditional Backdrops by Mike Ciul)

After moving floating objects (this is the cache scope after moving floating objects rule):
	Carry out the caching scope activity with the player;
	Trust the scope cache until next turn.

The cache scope after moving floating objects rule is listed last in the after moving floating objects rules.

Volume - Interactions with Epistemology (for use with Epistemology by Eric Eve)

Book - Sight (in place of Book 1 - Sight in Epistemology by Eric Eve)

A thing can be either seen or unseen. A thing is usually unseen.

[ With the speed advantages of scope caching, we can now do more accurate accounting of what has actually been seen. ]

After reading a command (this is the mark cached items as seen rule):
	rapidly set everything marked-visible as seen.

The mark cached items as seen rule is listed last in the carry out looking rules.

The mark cached items as seen rule is listed after the cache player's scope rule in the after reading a command rulebook.

The cache player's scope rule is listed last in the carry out opening rules.
The mark cached items as seen rule is listed last in the carry out opening rules.

Book - Caching Scope When Looking (for use without Conditional Backdrops by Mike Ciul)

[In the case where both Epsitemology and Conditional Backdrops are used, we want to avoid redundant scope caching. The moving floating objects activity causes a scope loop, and moving floating objects usually happens before looking, so we want to skip doing it when looking]

The cache player's scope rule is listed last in the carry out looking rules.

Volume - Interactions with Remembering (for use with Remembering by Aaron Reed)

Book - Keeping Track (for Glulx only)

Section - Rules (in place of Section - Rules in Remembering by Aaron Reed)

After reading a command (this is the update remembered positions of cached things rule):
	repeat with item running through marked-visible things that are enclosed by the location:
		if remembered location of item is not holder of item:
			now the remembered location of item is the holder of item.

The update remembered positions of cached things rule is listed after the cache player's scope rule in the after reading a command rules.

First report remembering (this is the Remembering specific report remembering rule):
	if remembered location of noun is nothing, continue the action;
	say the message corresponding to a rule name of Remembering specific report remembering rule in Table of Remembering Messages;
	stop the action.

Volume - Testing commands - not for release

Checking the scope cache is an action out of world. Understand "scopestat" as checking the scope cache.

Report checking the scope cache (this is the standard report checking the scope cache rule):
	say "The following items are marked-visible: [line break]";
	repeat with item running through marked-visible things:
		say "  [the item][line break]";

Checking the scope cache for is an action out of world applying to one visible thing. Understand "scopestat [any thing]" as checking the scope cache for.

Carry out checking the scope cache for something (this is the recache scope when checking the scope cache for rule):
	carry out the caching scope activity with the noun;

Report checking the scope cache for something (this is the standard report checking the scope cache for rule):
	say "The following items are marked-visible for [the noun]: [line break]";
	repeat with item running through marked-visible things:
		say "  [the item][line break]";

Scope Caching ends here.

---- DOCUMENTATION ----

Optimizes Epistemology by Eric Eve and Remembering by Aaron Reed. I6 code by Andrew Plotkin. Andrew also explained how to pass a phrase as an argument to another phrase for looping.

Section: The marked-visible Property

Scope Caching creates a property for things called "marked-visible." This is equivalent to the "visible" adjective, except it is calculated only at specific times and then stored, trading storage space for speed.

These conditions:

	the player can see the ball

	the ball is visible

Will normally mean the same as:

	the ball is marked-visible

Section: The Caching Scope Activity

If circumstances change during a turn and we need to check scope again, or if we want to check scope for something other than the player, we need to refresh the cache. We can do this with the "caching scope" activity:

	Before Bob trying doing something:
		carry out the caching scope activity with Bob

This will, of course, leave the "marked-visible" property set for Bob, so if we need to check the player's scope again, we need to run the phrase an additional time.

Section: The Cache Scope After Reading a Command Rule

This is the rule which normally sets the "marked-visible" property each turn:

	After reading a command (this is the cache scope after reading a command rule):
		carry out the caching scope activity with the player.

It's listed first in the "after reading a command" rulebook, so other "after reading a command" rules should be able to make use of the "marked-visible" property.

Section: When the Visibility of One Thing Depends On Another

Perhaps this sort of test will always be tricky, but the way scope is implemented in Inform seems to make it particularly so. We must take pains to perform the visibility test at the right time:

	After deciding the scope of the player when not caching scope:
		If no nose is marked-visible:
			place your nose in scope;
			now your nose is marked-visible.

Scope caching normally happens before any parsing begins, so any noses present will be marked before this rule sees them. The "deciding the scope" activity does run during parsing (often several times), we will get what we want, when we want it. But we must manually make your nose "marked-visible" because caching scope is obviously not taking place! We might choose not to do that if we had multiple grammar lines depending on the same rule.

Section: Trusting The Scope Cache

If we know for a fact that nothing will change until next turn, we can speed things up a bit by saying:

	Trust the scope cache until next turn.

This will suppress scope caching after reading a command on the next turn.

If we change our minds later in the turn, we can say:

	Mistrust the scope cache.

And things will be back to normal.

Section: Interactions with Other Extensions

Scope Caching optimizes the setting of the "seen" property in Eric Eve's Epistemology and the "remembered location" property in Aaron Reed's "Remembering" extension.

It also interacts with Mike Ciul's Conditional Backdrops extension. After the "moving floating objects" activity takes place, we "trust the scope cache until next turn," on the assumption that going (and other actions that change the landscape of backdrops and doors) will be the only thing that affects scope until next turn. If we discover that this is not the case, we must "mistrust the scope cache" manually:

	After moving floating objects when the Energizer Bunny is on the move (this is the expecting the bunny to move rule):
		mistrust the scope cache;

	The expecting the bunny to move rule is listed after the cache scope after moving floating objects rule in the after moving floating objects rulebook.

Or we could just take care of the scope caching ourselves when the change actually happens:

	Every turn when the bunny is switched on (this is the move the bunny rule):
		Now the bunny is in the next destination of the bunny;
		Cache scope for the player;
		Trust the scope cache until next turn.

Section: Testing Commands

We can use the "scopestat" command to find out what items are currently marked-visible. The command by itself will list the items marked-visible for the player, while "scopestat [any thing]" will list the items visible for another person.

Example: * Which Rubber - Uses Scope Caching to prevent an infinite loop. Without it, the "After deciding the scope of the player" rule repeats forever.

	*: "Which Rubber"

	Include Scope Caching by Mike Ciul.

	Indoors is a room.

	The front door is a door. It is west of Indoors and east of Outdoors.

	Bob is a man in Outdoors.

	There is a container called a pile of balls in Indoors. "There is a pile of rubber balls here." In the pile is a ball.

	Understand "rubber" as a pile when the ball is not marked-visible.
	Understand "rubber" as a ball when the ball is marked-visible.

	The outdoor view is scenery. The description is "It's bright outside.";

	After deciding the scope of the player in Indoors when the front door is open:
		place the outdoor view in scope.

	Test me with "rules/open door/get rubber/scopestat/scopestat bob"

Section: Changes

Version 2/121127: Expanded "marked-visible" to include rooms, directions, and regions. Not explicitly visited in loops, but still necessary if any of those things are added to scope.

Version 2/120725:
