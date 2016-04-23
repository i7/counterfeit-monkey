Version 1 of Object Response Tests by Juhana Leinonen begins here.

"A development tool for testing all actions for any given object at once to see whether the game's responses are sensible."


Book 1 - Testing rules - Not for release

This is the test taking rule:
	say "[italic type]taking [the noun]: [roman type]";
	try taking the noun.

This is the test eating rule:
	say "[italic type]eating [the noun]: [roman type]";
	try eating the noun.

This is the test dropping rule:
	say "[italic type]dropping [the noun]: [roman type]";
	try dropping the noun.

This is the test entering rule:
	say "[italic type]entering [the noun]: [roman type]";
	try entering the noun.

This is the test getting off rule:
	say "[italic type]getting off [the noun]: [roman type]";
	try getting off the noun.

This is the test examining rule:
	say "[italic type]examining [the noun]: [roman type]";
	try examining the noun.

This is the test looking under rule:
	say "[italic type]looking under [the noun]: [roman type]";
	try looking under the noun.

This is the test searching rule:
	say "[italic type]searching [the noun]: [roman type]";
	try searching the noun.

This is the test switching on rule:
	say "[italic type]switching on [the noun]: [roman type]";
	try switching on the noun.

This is the test switching off rule:
	say "[italic type]switching off [the noun]: [roman type]";
	try switching off the noun.

This is the test opening rule:
	say "[italic type]opening [the noun]: [roman type]";
	try opening the noun.

This is the test closing rule:
	say "[italic type]closing [the noun]: [roman type]";
	try closing the noun.

This is the test wearing rule:
	say "[italic type]wearing [the noun]: [roman type]";
	try wearing the noun.

This is the test taking off rule:
	say "[italic type]taking off [the noun]: [roman type]";
	try taking off the noun.

This is the test giving to rule:
	if the noun is a person:
		if the player is not carrying something:
			say "[italic type](no inventory items; can't test giving to.)[roman type]";
			rule succeeds;
		let give-object be a random thing carried by the player;
		say "[italic type]giving [the give-object] to [the noun]: [roman type]";
		try giving the give-object to the noun;
		rule succeeds;
	if the player is not carrying the noun:
		rule succeeds;
	if the player can not see a person who is not the player:
		say "[italic type](no NPCs in the location; can't test giving.)[roman type]";
		rule succeeds;
	let give-target be a random visible person who is not the player; 
	say "[italic type]giving [the noun] to [the give-target]: [roman type]";
	try giving the noun to the give-target.

This is the test showing to rule:
	if the noun is a person:
		if the player is not carrying something:
			say "[italic type](no inventory items; can't test showing to.)[roman type]";
			rule succeeds;
		let show-object be a random thing carried by the player;
		say "[italic type]showing [the show-object] to [the noun]: [roman type]";
		try showing the show-object to the noun;
		rule succeeds; 	
	if the player is not carrying the noun:
		rule succeeds;
	if the player can not see a person who is not the player:
		say "[italic type](no NPCs in the location; can't test showing.)[roman type]";
		rule succeeds;
	let show-target be a random visible person who is not the player; 
	say "[italic type]showing [the noun] to [the show-target]: [roman type]";
	try showing the noun to the show-target.


This is the test throwing at rule:
	if the noun is a person:
		if the player is not carrying something:
			say "[italic type](no inventory items; can't test throwing at.)[roman type]";
			rule succeeds;
		let throw-object be a random thing carried by the player;
		say "[italic type]throwing [the throw-object] at [the noun]: [roman type]";
		try throwing the throw-object at the noun;
		rule succeeds;
 	if the player is not carrying the noun:
		rule succeeds;
	if the player can not see a person who is not the player:
		say "[italic type](no NPCs in the location; can't test throwing at.)[roman type]";
		rule succeeds;
	let throw-target be a random visible person who is not the player; 
	say "[italic type]throwing [the noun] at [the throw-target]: [roman type]";
	try throwing the noun at the throw-target.

This is the test waking rule:
	if the noun is not a person:
		rule succeeds;
	say "[italic type]waking [the noun]: [roman type]";
	try waking the noun.

This is the test attacking rule:
	say "[italic type]attacking [the noun]: [roman type]";
	try attacking the noun.

This is the test kissing rule:
	if the noun is not a person:
		rule succeeds;
	say "[italic type]kissing [the noun]: [roman type]";
	try kissing the noun.

This is the test touching rule:
	say "[italic type]touching [the noun]: [roman type]";
	try touching the noun.

This is the test waving rule:
	say "[italic type]waving [the noun]: [roman type]";
	try waving the noun.

This is the test pulling rule:
	say "[italic type]pulling [the noun]: [roman type]";
	try pulling the noun.

This is the test pushing rule:
	say "[italic type]pushing [the noun]: [roman type]";
	try pushing the noun.

This is the test turning rule:
	say "[italic type]turning [the noun]: [roman type]";
	try turning the noun.

Definition: a direction is push-to-possible if the room it from the location of the player is a room.

This is the test pushing to rule:
	let push-direction be a random push-to-possible direction;
	if the push-direction is nothing:
		say "[italic type](no exits; can't test pushing to.)[roman type]";
		rule succeeds;
	say "[italic type]pushing [the noun] to [push-direction]: [roman type]";
	try pushing the noun to push-direction.

This is the test squeezing rule:
	say "[italic type]squeezing [the noun]: [roman type]";
	try squeezing the noun.

This is the test burning rule:
	say "[italic type]burning [the noun]: [roman type]";
	try burning the noun.

This is the test smelling rule:
	say "[italic type]smelling [the noun]: [roman type]";
	try smelling the noun.

This is the test listening to rule:
	say "[italic type]listening to [the noun]: [roman type]";
	try listening to the noun.

This is the test tasting rule:
	say "[italic type]tasting [the noun]: [roman type]";
	try tasting the noun.

This is the test cutting rule:
	say "[italic type]cutting [the noun]: [roman type]";
	try cutting the noun.

This is the test tying to rule:
	let tie-target be a random visible thing in the location that is not the noun;
	say "[italic type]tying [the noun] to [the tie-target]: [roman type]";
	try tying the noun to the tie-target;

This is the test drinking rule:
	say "[italic type]drinking [the noun]: [roman type]";
	try drinking the noun.

This is the test swinging rule:
	say "[italic type]swinging [the noun]: [roman type]";
	try swinging the noun.

This is the test rubbing rule:
	say "[italic type]rubbing [the noun]: [roman type]";
	try rubbing the noun.

This is the test setting to rule:
	say "[italic type]setting [the noun] to 1: [roman type]";
	try setting the noun to "1".

This is the test buying rule:
	say "[italic type]buying [the noun]: [roman type]";
	try buying the noun.

This is the test climbing rule:
	say "[italic type]climbing [the noun]: [roman type]";
	try climbing the noun.



Book 2 - Analyzing action - Not for release

Analyzing is an action applying to one visible thing.

Understand "analyze [something]" as analyzing.
Understand "analyse [something]" as analyzing.

Table of analyzing actions
testing rule
test examining rule
test looking under rule
test searching rule
test listening to rule
test smelling rule
test buying rule
test climbing rule
test pulling rule
test pushing rule
test turning rule
test pushing to rule
test opening rule
test entering rule
test getting off rule
test closing rule
test taking rule
test switching on rule
test switching off rule
test wearing rule
test taking off rule
test throwing at rule
test showing to rule
test giving to rule
test waking rule
test attacking rule
test kissing rule
test touching rule
test rubbing rule
test waving rule
test squeezing rule
test burning rule
test cutting rule
test tying to rule
test swinging rule
test tasting rule
test drinking rule
test eating rule
test dropping rule


Carry out analyzing (this is the go through all analyzing rules rule):
	repeat with x running from 1 to the number of rows in the table of analyzing actions:
		follow the testing rule in row x of the table of analyzing actions.


Object Response Tests ends here.

---- DOCUMENTATION ----

Object Response Tests adds a new testing command, ANALYZE, which can be used to try all the commands on a single object to see whether all the messages make sense. For testing the default library actions, just include the extension in your project and the ANALYZE command is available.

Actions related to speaking with NPCs (saying, telling, asking) are excluded because of the various ways different games handle conversations.

Some games may disable some of the library actions. It's better to skip testing these actions altogether. Probably the easiest way to do this is to use a procedural rule to ignore the rules that run the individual tests.

	Procedural rule while analyzing:
		ignore the test burning rule;
		ignore the test pushing to rule.

Of course, most games have custom actions that are not defined in the standard library. They can be included in the tests by making testing rules for them and adding those rules in the Table of analyzing actions.

	This is the test swimming in rule:
		say "[italic type]swimming in [the noun]: [roman type]";
		try swimming in the noun.

	This is the test kicking rule:
		say "[italic type]kicking [the noun]: [roman type]";
		try kicking the noun.

	Table of analyzing actions (continued)
	testing rule
	test swimming in rule
	test kicking rule

The extension automatically disables itself in release versions. Any abovementioned modifications to its behavior should therefore be written in a section that has "Not for release" in the title (see chapter 2.9 "Material not for release" in the I7 manual) to avoid errors in compiling the final product.


Example: * Camp Fire - An example of basic use of the extension.

	*: "Camp Fire"

	Include Object Response Tests by Juhana Leinonen.

	The Camp is a room.

	The bonfire is in the Camp. It is fixed in place. The description is "The bonfire is blazing hot."

	Instead of touching the bonfire:
		say "Ow! You almost burn your fingers."

	Test me with "analyze bonfire".

When we run the test, we notice that at least the response to "taste bonfire" should be changed to something more appropriate.


Example: ** Porcelain - Skipping tests that destroy or alter the object.

	*: "Porcelain"

	Include Object Response Tests by Juhana Leinonen.

	The Porcelain shop is a room. 

	The Ming dynasty vase is in the porcelain shop. The description is "It looks very delicate and fragile."

	Instead of taking the Ming dynasty vase:
		say "You're afraid that you might drop it."

	After pushing or touching the Ming dynasty vase:
		say "Whoops! The vase falls off its pedestal and shatters into thousand pieces.";
		remove the Ming dynasty vase from play.

	Procedural rule while analyzing the Ming dynasty vase:
		ignore the test pushing rule;
		ignore the test touching rule.

	Test me with "analyze vase/push vase".