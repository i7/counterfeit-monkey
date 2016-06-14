Version 5/160517 of Far away by Jon Ingold begins here.

"Creates an adjective for far-off items which cannot be touched."

[ Updated to work with the Inform 6M62 port of Counterfeit Monkey. Removed deprecated features - Petter Sjölund ]

Use far away extension translates as (- Constant FARAWAY; -).  
Use far away extension.

Section - The basic definition

A thing can be near or distant. A thing is usually near.

Definition: a thing is far-off if it is distant or it is enclosed by something distant.

Section - The Access Flag

[ This is needed to stop the rules being considered every time the parser considers what's in scope. It should force the rules to only be run once, although it might be the case that if a command *succeeds* and then a visible item call is made, the rules get run again. That might need some more thought! ]

Access-flag is a number that varies. 
Access-flag is 0.

A before rule:
       if the action requires a touchable noun, now access-flag is 1;
       if the action requires a touchable second noun, now access-flag
is 1;

A turn sequence rule: now access-flag is 0.

Section - Accessibility rule

[ This uses the accessibility rule-book, so distance checking comes after checking the scope but before looking for barriers. So if the roses are inside a transparent distant greenhouse, they'll also be too far away. ]

The check distance rule is listed before the access through barriers rule in the accessibility rulebook.

Accessibility rule (this is the check distance rule): 
	if the action requires a touchable noun: 
		if the noun is far-off and we can't get at the noun, rule fails;
	if the action requires a touchable second noun: 
		if the second noun is far-off and we can't get at the second noun, rule fails.

Section - Reporting Errors

[ 

Since the rules will get called for all visibility checks, we make sure we only print anything if we are "reporting errors". It's possible the rulebook should never be called if we're not reporting errors!

]


To decide if reporting errors: if the person asked is the player and access-flag is 1, yes; no.

Section - distant stuff rulebook

distant stuff is an object-based rulebook. 

The far-off item is a thing that varies.

To decide if we can't get at (n - a thing):
[ This runs the rulebook. Means we can consider noun and second noun neatly in the accessibility rule above. ]
	now the far-off item is n;
	follow the distant stuff rules for the far-off item;
	if rule failed:
		decide yes;
		now access-flag is 0;
	decide no.

The last distant stuff rule for a thing (called the item) when the person asked is not the player (this is the fail other people rule): 
	rule fails.

The last distant stuff rule when reporting errors (this is the can't touch rule):
	say far-off message, paragraph break;
	rule fails.

Section - Messages

The far-off message is a text that varies. The far-off message is "[The far-off item] [are] out of reach."



Far away ends here.

---- DOCUMENTATION ----

A simple extension providing for things out of reach. A check is performed between the Before and Instead phases of the action (more specifically, between "visibility" and "touchability" are performed). The extension provides an adjective, "distant", for inaccessible objects (with antonym "near"). A distant object will be too far away to touch, as will anything it encloses (contents or parts). The appropriate error is printed by the distant stuff rulebook, which can also allow distant stuff to be interacted with, if it wants to, by including new rules. 

A circus game might need the following, for example:

	A distant stuff rule when the player is wearing stilts: rule succeeds.

	A distant stuff rule for the safety net when the player is wearing stilts: say "You bought the best stilts you could afford but you're lower than the safety net."; rule fails.

	A distant stuff rule for the trapeze wire when the player is wearing stilts: say "You bought the best stilts you could afford but you're lower than the safety net, let alone the high wire."; rule fails.

The rulebook is called "for" objects (it's an object-based-rulebook) which have been deemed to be too far away, either by being distant themselves or by being enclosed by something distant. "Rule succeeds" indicates the object should not be considered out of reach. "Rule fails" will stop the action in its tracks.
	
Other characters are bound by the same basic rules as the player: if attempting to take an unreachable object the game will respond with the default message "[The person asked] is unable to do that". This can be intercepted either by Before rules:

	Before asking Will to jump over the moon, say "'I'm that happy I could jump over the sun!' Will exclaims rather stupidly."

or by distant stuff rules:

	A distant stuff rule for something enclosed by the top shelf when the person asked is Will:
		say "(Will is six-foot-nine and high-up things are no problem for him.)[line break]";
		rule succeeds.

Note, however, that the Instead entrypoint is too late and the distant check will have already happened.

A rule can decide if it should be saying something when failing by testing "if reporting errors" - this is safer than just printing, as the accessibility rules are also called during visibility checks.

Finally, the game provides the condition "far off" for objects which are considered out of reach - remember, these may be distant, or they may be parts/contents of distant stuff.


Example: ** Christmas Morning - A simple example of distance, and how to overcome it.

	*: "Christmas Morning"

	Include Far Away by Jon Ingold.

[The living room contains a tree, and some decorations. Only the very top of the tree is distant.]

	The Living Room is a room. The description is "The room is dominated by the top half of a Norwegian spruce. One side is almost bare as a result of Dad dragging it home along the snowless pavement."

	The christmas tree is a supporter in the Living Room. "The tree is still only half-decorated.".  Understand "bauble", "baubles" as the christmas tree. Instead of examining or searching the tree, say "The tree is decorated in a smattering of baubles, [list of things on the tree]. [if the star is on the top of the tree]A star takes pride of place at the top.[end if][if the star is on the tree]The star looks a bit out of place though.[end if]" 

	The top of the tree is part of the tree. It is a supporter. 

	The top of the tree is distant.

	A decoration is a kind of thing. Report putting a decoration on the christmas tree: say "You hang [the noun] artfully on the tree." instead. Some tinsel strands, a snowman and the star are decorations carried by the player. The description of the tinsel is "Shiny." The description of the snowman is "Cheery." The description of the star is "Bright[if the star is on the tree], but looks a bit out of place halfway up the tree[end if][if the star is on the top of the tree]. It takes pride of place[end if].". 

	Report taking the star when the star was on the tree: say "You take the star back down again."

	Instead of taking a decoration when the noun is on the tree and the noun is not the star, say "If you start being picky about it you'll never get it done."

	Every turn: if all the decorations are enclosed by the tree and the star is on the top of tree, end the game saying "The festivites may commence!".

[At present, the player cannot hope to complete his task. So we give him a stepladder, and a rule to make is overcome the distant stuff problem.]

	The wonky stepladder is in the Living Room. It is an enterable supporter. Instead of climbing the stepladder, try entering the stepladder. Report entering the stepladder: say "You clamber up the wonky stepladder." instead. Understand "ladder" as the stepladder.

	A distant stuff rule for the top of the tree when the player is on the stepladder: rule succeeds.
	A distant stuff rule for something enclosed by the top of the tree when the player is on the stepladder: rule succeeds.

[Finally, we should stop the player putting the wrong decoration at the top. This needs to be an Instead rule rather than a Before, however, so that it the distance check happens first.]

	Instead of putting a decoration on the top of the tree when the noun is not the star, say "That'd look all wrong."
	
	Test me with "put tinsel on tree / x top of tree / put star on top of tree / climb stepladder / put star on top of tree / get off / take star / put snowman on tree".


Example: *** Starfield Dome - a more complicated example, with an NPC, and various entrypoints used.

	*: "The Starfield Dome"

	Include Far Away by Jon Ingold.

	The Starfield Dome is a room. "A wide dome, offering a view of the heavens above. The stars are out in all their glory, beautiful and clear[if the glass dome is open]. The open dome gives you an unfiltered view, but with the wind you are shivering[end if][if the player is flying] and close enough to touch[otherwise] - down here on earth, everything's a bit too dark for comfort[end if]."

	The glass dome is a distant transparent container in the Dome.  The glass dome is scenery. It has description "[if open]The glass of the dome has peeled back, to let in the wind and the light[otherwise]The dome is made of geodesic sections, and beyond it are the stars[end if]. A series of pylons form the supports of the dome, and in the apex of these is a small release button."	The glass dome can be open or closed.

The following details are part of the dome. They don't need to be separately declared 'distant' - they adopt this from the glass dome. 

	*: Some heavens are part of the glass dome. Understand "star", "stars", "heaven", "sky", "up" as the heavens. The description of the heavens is "A million stars, and twice that once you start looking closely. The major constellations are out in force, but have been lost amongst the minor interlopers of the night sky." 

	The small release button is part of the glass dome. 

	Instead of touching or pushing the button when the glass dome is open:
		now the glass dome is closed;
		say "The glass field closes back over. You hear Alf sigh sadly."
	Instead of pushing the button when the glass dome is closed:
		now the glass dome is open;
		say "In a series of leaps and folds, the glass dome unfolds away to let in the night air."

	Yourself can be flying. Yourself is not flying.

	Alf is a person in the dome. "Standing with his neck craned is good old Uncle Alf."  Persuasion rule: persuasion succeeds. Alf is carrying a bottle of Mercury's Liquor of Levity. The bottle has description "A curious liquor, made from the fermentation of fireflies." Understand "drink" as the bottle. The description of Alf is "Alf has followed you through thick and thin. Mostly thick. [if Alf is carrying the bottle]Bulging from his pocket is a bottle of liquor.[end if]". Instead of opening the bottle, say "It's got one of those sports-caps, so you can drink liquor straight off."

	Instead of tasting or drinking the bottle when the player is flying:
		say "Alf's expression is enough to stay your hand."

	Instead of tasting or drinking the bottle:
		now the player is flying;
		say "You take a swig and feel the strangest sensation, a glow from your toes to the tips of your shoulderblades. It's distracting enough for you to miss the fact you're now floating in mid-air.";
		the player comes down to earth in two turns from now;

	At the time when the player comes down to earth:
		now the player is not flying;
		say "With a sickening rush the ground rises sharply upward. Alf watches as you crumple painfully. 'A night drinking that stuff, and you'll remember it in the morning,' he remarks."

	After printing the name of the Starfield Dome when the player is flying, say " (you are flying)";

	Report Alf trying examining the heavens: say "'They are gorgeous,' Alf ruminates, admiring the view."

The following rule removal allows giving to occur between people. We can also steal the bottle:

	*: Procedural rule: ignore block giving rule.

	Report Alf trying giving the bottle to the player:
		say "'Here you are. Hairs for your chest.' Alf passes the bottle over." instead.

	Instead of taking the bottle when Alf is carrying the bottle:
		move bottle to player;
		say "With Alf's attention still taken by the stars, you slip the bottle from his pocket."

This rule prevents "Alf, enter stars" not to end up in the rather bland "Alf is unable to do that."

	*: Before asking Alf to try entering the heavens, say "'I wish I could,' he says sadly. 'But there's only so much I can do.'" instead.

This is the rule that allows a flying player to touch the sky:

	*: distant stuff rule for something (called the item) when the player is flying: if the item is not the heavens, rule succeeds.

This rule provides a custom message for trying to reach the stars while flying:

	*: Before entering or going the heavens when the player is flying: say "The liquor's not that strong!" instead.

	After giving the bottle to Alf when the glass dome is open:
		end the game in victory;
		say "'Thanks. That's better without the refraction.' Alf proceeds to swig half the bottle, and blur his vision of the stars that way instead.";

	Test me with "x dome / enter stars / press button / x alf / alf, give me liquor / x bottle / drink bottle / press button / enter stars / give bottle to alf".
