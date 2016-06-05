Version 5 of Tutorial Mode by Emily Short begins here.

"Adds a tutorial mode, which is on by default, to any game, to introduce key actions for the novice player. Can be revised or expanded by the author."

Section 1 - Creating tutorial mode and controls

Tutorial mode is a truth state that varies. Tutorial mode is true.

Understand "tutorial mode off" or "tutorial off" as turning off tutorial mode.
Understand "tutorial mode" or "tutorial on" or "tutorial mode on" as turning on tutorial mode.

Turning off tutorial mode is an action out of world.

Check turning off tutorial mode (this is the can't turn off tutorial mode when it is off rule):
	if tutorial mode is false, say "Tutorial mode is already off." (A) instead.

Carry out turning off tutorial mode (this is the default turning off tutorial mode rule):
	now tutorial mode is false.
	
Report turning off tutorial mode (this is the default report turning off tutorial mode rule):
	say "Tutorial mode is now off." (A)

Turning on tutorial mode is an action out of world.

Check turning on tutorial mode (this is the can't turn on tutorial mode when it is on rule):
	if tutorial mode is true, say "Tutorial mode is already on." (A) instead.

Carry out turning on tutorial mode (this is the default turning on tutorial mode rule):
	now tutorial mode is true.
	
Report turning on tutorial mode (this is the default report turning on tutorial mode rule):
	say "Tutorial mode is now on." (A)

Section 2 - The Instructional Rules

The expected action is a stored action that varies.
The held rule is a rule that varies. 
The completed instruction list is a list of rules that varies.

Understand "restore" or "quit" or "save" or "restart" or "version" as "[meta]". 

A first before rule (this is the react to expected actions rule):
	if the current action is the expected action:
		if the held rule is a selector listed in the Table of Instruction Followups:
			choose row with a selector of the held rule in the Table of Instruction Followups;
			say "[followup entry][paragraph break]" (A);
		add the held rule to the completed instruction list, if absent;
		now the held rule is the little-used do nothing rule;

Before reading a command when tutorial mode is true (this is the offer new prompt rule):
	follow the instructional rules.

Definition: a thing is non-player if it is not the player. 

A thing can be previously-mentioned. A thing is usually not previously-mentioned.

Before printing the name of something (called the target):
	now the target is previously-mentioned.
	
The instructional rules are a rulebook.

An instructional rule (this is the teach looking rule): 
	if the teach looking rule is listed in the completed instruction list, make no decision;
	say "To get a look around, type LOOK and press return. If you do not want help getting started, type TUTORIAL OFF." (A);
	now the expected action is the action of looking;
	now the held rule is the teach looking rule;
	rule succeeds.

Carry out looking (this is the register looking rule):
	add the teach looking rule to the completed instruction list, if absent.

An instructional rule (this is the teach examining rule): 
	if the teach examining rule is listed in the completed instruction list, make no decision;
	if the player can see a previously-mentioned non-player thing (called target): 
		let N be "[the target]"; 
		let M be "[target]";
		say "You can find out more if you LOOK AT [N in upper case] (or shorten it to L [M in upper case])." (A);
		now the expected action is the action of examining the target;
		now the held rule is the teach examining rule;
		rule succeeds;
	otherwise:
		make no decision.

Carry out examining something (this is the register examining rule): 
	add the teach examining rule to the completed instruction list, if absent;

An instructional rule (this is the teach more examining rule):
	if the teach examining rule is not listed in the completed instruction list, make no decision;
	if the teach more examining rule is listed in the completed instruction list, make no decision;
	say "There are other things around here that you can look at too, if you like. You can check out other things in your surroundings, or LOOK AT ME to see yourself." (A);
	now the expected action is the action of examining yourself;
	now the held rule is the teach examining rule;
	rule succeeds.

Before examining yourself (this is the prepare to teach more examining rule):
	add the teach more examining rule to the completed instruction list, if absent;

An instructional rule (this is the teach compass directions rule):
	if the teach compass directions rule is listed in the completed instruction list:
		make no decision;
	if the held rule is the teach compass directions rule:
		let delay be the time of day minus movement reminder;
		if delay is less than five minutes:
			rule succeeds;
	let way be nothing;
	if a room (called goal) is adjacent:
		let way be the best route from the location to the goal;
	otherwise if the player can see an open door (called portal):
		let far side be the other side of the portal;
		let way be the best route from the location to the far side;
	otherwise:
		make no decision;
	if way is nothing:
		make no decision; 
	let N be "[way]";
	say "[one of]Feel free to look around some more. When you're ready to move on from here, try[or]No rush, but just a reminder that when you want to move to a new location, you can go[stopping] [N in upper case]." (A);
	now the expected action is the action of going way;
	now the held rule is the teach compass directions rule;
	now movement reminder is the time of day;
	rule succeeds.

Movement reminder is a time that varies.

Carry out going (this is the register going rule):
	add the teach compass directions rule to the completed instruction list, if absent.


[Because it can be annoying if the game persistently tells you to drop something when you don't want to, this one explains the rule and then immediately removes it, rather than harping on about the topic.]
An instructional rule (this is the teach dropping rule):
	if the teach dropping rule is listed in the completed instruction list, make no decision;
	unless the player carries at least two things, make no decision;
	let target be a random thing carried by the player; 
	let N be "[the target]";
	say "If you want to get rid of something that you're holding you can always drop it, like this: DROP [N in upper case]." (A);
	add the teach dropping rule to the completed instruction list, if absent;
	rule succeeds.

Carry out dropping something (this is the register dropping rule):
	add the teach dropping rule to the completed instruction list, if absent. 

An instructional rule (this is the teach taking rule):
	if the teach taking rule is listed in the completed instruction list, make no decision;
	if the player can see a take-worthy thing (called target item): 
		let N be "[the target item]";
		say "You can pick things up when you see them, like this: TAKE [N in upper case]." (A);
		now the expected action is the action of taking the target item;
		now the held rule is the teach taking rule;
		rule succeeds;
	otherwise:
		make no decision.

Definition: a thing is take-worthy:
	if it is the player:
		no;
	if it is scenery:
		no;
	if it is not portable:
		no;
	if it is a person:
		no;
	if it is carried by someone:
		no;
	if it is part of something:
		no;
	if it is in a closed container:
		no; 
	yes.

Carry out taking something (this is the register taking rule):
	add the teach taking rule to the completed instruction list, if absent.

An instructional rule (this is the teach inventory rule): 
	if the teach inventory rule is listed in the completed instruction list, make no decision;
	if the player carries nothing, make no decision;
	say "There's more we can do than just looking around. To check what you're holding at the moment, try typing INVENTORY, or I for short." (A);
	now the expected action is the action of taking inventory;
	now the held rule is the teach inventory rule;
	rule succeeds.

Carry out taking inventory (this is the register inventory rule):
	add the teach inventory rule to the completed instruction list, if absent.

A last instructional rule (this is the teach meta-features rule):
	if the teach meta-features rule is listed in the completed instruction list, make no decision;
	say "To save your current position, type SAVE. RESTORE allows you to bring back a game you have previously saved." (A);
	add the teach meta-features rule to the completed instruction list;
	rule succeeds. 

Table of Instruction Followups
selector	followup   
teach dropping rule	"Dropping things will move them into your environment, like this:"
teach taking rule	"Well done. Now you'll get a message to tell you whether you succeeded in picking up something:"
teach compass directions rule	"Good! Like other often-used instructions, compass directions can be abbreviated down to N, S, E, W, NE, NW, and so on. UP and DOWN are also possible -- keep an eye on room descriptions in order to learn more about where you can go and when. [paragraph break]As soon as you enter a new room, you'll get a description of what's there, like this:"

Tutorial Mode ends here.

---- Documentation ----

Tutorial Mode is intended to make a work of interactive fiction act a little more like a commercial game with a standard tutorial mode that begins whenever the player first starts play. 

Tutorial mode by default teaches LOOK, EXAMINE, INVENTORY, TAKE, DROP, and the use of compass directions. It does this by prompting the player to try these commands whenever the situation is right -- so it will only prompt the player to try INVENTORY if he is holding something, TAKE if he can see a portable object, and so on. The intention is to create a tutorial that will work flexibly with a wide range of first rooms in games.

It's likely that in any given game, Tutorial Mode will still need a little adjustment. Rules about what to teach are part of the instructional rules rulebook. If we don't like one of the rules currently included, we can get rid of it -- for instance, the compass directions rule might not be valuable in a game that uses GO TO ROOM instead, so we might want

	The teach compass directions rule is not listed in any rulebook.

...to remove this rule from the list.

We can also add new instructional rules on the model of the existing ones. For example, we might add a new rule teaching the player to eat things like this:

	An instructional rule (this is the teach eating rule): 
		if the teach eating rule is listed in the completed instruction list, make no decision;
		if the player can see a previously-mentioned edible thing (called target item):
			let N be indexed text;
			now N is "[target item]";
			say "[italic type]If you get hungry, you can always try eating the food you find. Try EAT [N in upper case].[roman type]"; 
			now the held rule is the teach eating rule;
			rule succeeds;
		otherwise:
			make no decision.

This is slightly complicated, so to go over the elements: the completed instruction list is a list of all the instruction rules that the player has successfully learned. These lessons are not repeated.

We check whether the target is "previously-mentioned" because we want to make sure that, at each stage, the player is only being asked to interact with things that the text of the game has already mentioned to him. This excludes inventory objects when the player hasn't yet taken inventory, for instance, even though those objects are technically "visible".

Earlier versions of this extension would strictly force the player to type exactly what was instructed, similar to the strict behavior of tutorial modes in casual games, but playtesting found that this was more annoying than helpful.

We change "held rule" to the current rule (that is, in this example, the "teach eating rule") so that after the player's command is read, the parser can determine whether the player has learned this lesson or not, and, if he has, add this rule to the completed instruction list.

It's often the case that we want to follow up a lesson by telling the player a little something extra -- for example, that he can use abbreviations for compass directions. That kind of reply -- printed only when the player has successfully issued the command we're currently teaching -- can be stored in the Table of Instruction Followups, like this:

	Table of Instruction Followups (continued)
	selector	followup
	teach opera rule	"Perfect. To simplify matters, the ARIA command can be abbreviated throughout the game as A."

Example: * Silence in the Library - A very small environment showing how the instruction rules fire in various orders depending on the initial configuration.

	*: "Silence in the Library"
	
	Include Tutorial Mode by Emily Short.
	
	The Infinite Library is a room. "This is an entire planet devoted to nothing but books. Judging from your nearly-equatorial position, you must be near the biography section. Off to the west, you can see a small shop."
	
	The Little Shop is west of the Infinite Library. "The shop sells an assortment of doodads and tourist trinkets for those who have recently been perusing the books. The main library is back to the east."
	
	The paperweight is a thing in the Little Shop. The description of the paperweight is "It is shaped like the face of William Shakespeare -- as he would look if troubled with severe indigestion."
	
	Test me with "look / west / l paperweight / jump / look at me / take paperweight / i".


