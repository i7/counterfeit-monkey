# Change log

## Unreleased

### Bugs fixed

- Search engine descriptions were not shown for the e-book reader and the secretary's computer. (@Roachbones)
- The sun did not have the "distant" attribute, but instead behaved as if being touchable. (@Roachbones)
- With Andra in control, it was possible to get a reprise of Alex's hesitation speech by trying to go back in through the tall window, if you diregarded it the first time when going out. (@Roachbones)
- Examining the word, the words, or the wordage could cause run-time problems. (@Roachbones)
- The wordage description was broken since release 7.
- The start up data embedded in the game file was bad in the two previous releases. The game will now print a warning at startup if it detects bad embedded data. (@hanna-kruppe)
- Run-time problem P10 would occur when trying to remove letters from the current room. (@eriktorbjorn)
- Lena would occasionally ask the player to change the modem even though it is no longer present. (@eriktorbjorn)
- The fast travel GO TO command could be used to bypass the confrontation with Alex's father (@DefKonOne).
- Typing EXAMINE DIRECTION and then replying with a direction (such as NORTH) to the resulting "Which do you mean" disambiguation question would cause run-time problem P10.
- Run-time problem P60 would occur when using the soap dispenser after removing all the sinks. (@Stealthii)
- Turning on the tap while in a shower or bath would cause run-time problem P43 as the game attempted to move the player out of play. It was also possible to drop any objects in the bath or shower, and then remove them from play by turning on the tap. We fix this by blocking entry into showers and baths. (@Roachbones).
- The first aid station was not fixed in place and could be picked up, while its description still said it was mounted to the wall. (@lynn)
- Brock could be turned into a bock, potentially breaking the game. (@Roachbones)
- It is now possible to sit on the built-in seating in the Galley. (@Roachbones)
- Creating the scree will once again kill the player. This was changed in release 9, but it turns out the movie screen is assumed to always be in place in too many places in the code. (Mike Russo)
- The password to Brock's laptop would not be understood if entered verbatim, as the Punctuation Removal extension removes one of the characters. (Mike Russo)
- The ho would be escorted away with a park-specific message even when she was not created in the park. (@most90)

### Cosmetic output errors

- The guidebook and the game blurb gave two different years as the liberation of Anglophone Atlantis. (@Roachbones)
- The shred was anagrammed into a single herd rather than herds. (@Roachbones)
- The live branch is now mentioned in the description of the statue arm.
- The inlaid desk was still referenced in certain messages after it was gone. (@lynn)
- After shooting ourselves with the anagramming gun, the text would say that we return to "or original form" instead of "our original form". (@lynn)
- Taking the pill would print a message about tossing the pill into "our mouths" rather than "our mouth". (@Roachbones)
- Many more important things are now highlighted. (@dfabulich, @eriktorbjorn)
- Eliminates many unintended double spaces throughout the output text. (@Roachbones, @lynn)
- There would in some cases be a missing newline after the "Batman remark" at the end of the roundabout scene. (@eriktorbjorn)
- There would sometimes be a superfluous "I can't see what you're talking about" message when use of the letter-remover was attempted but disallowed. (@eriktorbjorn)
- Adds various missing words ("he", "when", and "is", to be precise) to the output text. (Mike Russo)
- A stray period was printed when exiting the tin hut while the trap door was closing. (Mike Russo)
- When Brock comments something the player is wearing, it could sometimes be accompanied by a bit of flavor text that would be repeated in the next paragraph. (Mike Russo)
- Fixes a typo in the description of the synthesizer after sawing it open ("permanenty".) (@dstelzer)
- Switching on or examining the ebook reader while wearing the monocle would produce some confusing text about examining the Book search engine. Interacting with other computers could produce similar undesired output. (Mike Russo)
- The message when examining the player's yacht bed would start a sentence with a lower case letter. (Mike Russo)
- If the player puts something on the u-shaped desk while the printer drawer is open, the room description would output a broken sentence. (@svemoe)
- Lena would comment on the origin paste even if the player does not have it, when fast-travelling from the Counterfeit Monkey Bar to the Aquarium Bookstore with GO TO BOOKSTORE. (@most90)
- Many of Lena's quips would not trigger on the same turn as entering the bookstore.

### Parsing

- Chaining letter-remover commands with THEN now works, as in U-REMOVE MOURNING DRESS THEN WAVE R-REMOVER AT T-SHIRTS, or SET LETTER-REMOVER TO U THEN WAVE IT AT DRESS THEN SET LETTER-REMOVER TO R, thanks to the "Before Processing a Command" extension and other contributions by Daniel Stelzer. (@dstelzer)
- T INSERTER without a hyphen is now understood as the T-inserter.
- The T-inserter can now be used by typing INSERT T IN (thing).
- Things like REMIND MAN THAT MRS. ROSEHIP IS MARRIED would be understood as two different commands separated by a period. Periods after titles are now properly stripped from input.
- DEMO is now understood as DEMONSTRATION. (@Stealthii)
- Contractions such as WHAT'S, HE'S, and IT'S are understood. (@Stealthii)
- Adds more synonyms to the "ask why he is here" quip for the gift shop volunteer. WHY ARE YOU HERE and ASK WHY HE IS THERE now work.
- Going DOWN when standing on the tarpaulin-covered masses in the tin hut will no longer make the player try to enter the trap door. (Mike Russo)
- ASK WHETHER BROCK SEEMED UPSET would not be understood when the current memory is "how it started with Brock". (@most90)

## Release 11

- Some scenes would never progress if initiated close enough to in-game midnight. Getting past the secretary seems to have been particularly vulnerable to this.
- Alex's mother could pick up the player or other impossibly heavy items from the futon and place them on the counter.
- Failures to save are properly detected and reported.

### Cosmetic output errors

- Sometimes the first lines of the game would not be printed after a reset. This was caused by a bug in the Flexible Windows extension, and was fixed by updating to the new version 15/210811 by Dannii Willis.
- Adds highlighting (bold text in highlight mode) to more objects mentioned in the text. Reported by Dan Fabulich.
- Alex's mother and the roc would occasionally examine "illegal object -1" or similar.
- The contraband box is properly mentioned in room descriptions.

### Gameplay changes

- When Alex's mother asks if we are Alex's girlfriend, she will now refuse to leave until given an answer.
- Alex will no longer claim to be inclined to donate and then get upset if we do. Reported by Emily Ellis.

### Parsing

- REMOVE X FROM Y would sometimes appear to use the previous letter setting rather than X. It should now be identical in behavior to WAVE X-REMOVER AT Y.
- The toe ring can now be referred to as such.
- Adds LOOK IN GUIDEBOOK as a synonym for reading it.

### Player conveniences

- To facilitate playing on small screens, the map will not open at the beginning of the game if the window is too narrow.
- Adds a new full window size map that can be opened by typing MAP.
- The GRAPHICS ON and GRAPHICS OFF commands are replaced by MAP ON and MAP OFF, respectively.
- The help menu has a new Hints item which links to the ”invisiclues” by Dan Fabulich at https://intfiction.org/t/counterfeit-monkey-invisiclues-hints/44257.

## Release 10

- The image files use improved compression, resulting in reduced total file size.
- All images, including the cover image, now have short descriptions. I don't know if there are any interpreters or screen readers out there that will actually read these to the player, except for the cover image.

### Improved world model

- In some cases, it was still possible to GIVE and SHOW things to people that recently left the room.

### Parsing

- Adds yes and no in Lojban (go'i and go'inai) as synonyms to their English counterparts. These make sense as valid replies when Professor Higgate asks if the player speaks Lojban.

### Cosmetic output errors

- A standard response when trying to talk to inanimate objects would not adapt the verb "do" properly to plural objects ("The protesters does not reply.")
- Exits are no longer listed when giving brief room descriptions.
- The tomes would be described as "dusty dusty tomes" in hard mode.

### Gameplay changes

- If the player is caught by the guards during the Atlantida battle, answering YES to "Shall we suppose we didn't?" will now bring the game state back to the beginning of the fight rather than just undo one turn. This gets the player out of a potentially unwinnable situation.
- To reduce initial confusion, the game now begins with a single goal, rather than three that refer to things the player does not know about yet.

## Release 9

### Improved world model

- Fixes a run-time error that could occur during disambiguation when trying to take a posture. Previously, SIT ON DAIS would cause the parser to throw an error trying to access a non-existent posture property of the dais socket.
- Fixes a run-time error that would occur when turning the blouse of the hostel attendant into a louse (and the louse then tries to escape from the repository.)
- Fixes a run-time error that could occur when a living creature was created on the spinner sculpture during a room description.
- It is no longer possible to get back into the Aquarium Bookstore after Lena has closed it.
- The balcony scenery object mentioned in the description of the white concrete buildings in Deep Street is no longer actually attached to the yellow buildings in Back Alley.
- It is no longer possible to leave essential things behind in containers changed by the programmable dais and the synthesizer.
- All of the original objects will now be restored after gelling something created by honomym-changing a synthesized thing.
- The single ream will no longer be covered in origin paste when created from the cream.
- The player will be allowed into Arbot Maps & Antiques even if the appointment card is inside the backpack.
- When a fuelled car is turned into something else, it will still be fuelled when re-created. The same applies to a car fixed by the mechanic.
- The monocle now works properly when examining things that can be written on.
- It was impossible to enter a car if there was a noisy thing outside it.
- It is no longer possible to create a car inside small containers, with some exceptions.
- Very large objects can no longer be inserted into small containers.
- The player will drop any scenery or non-portable objects created in the inventory.

### Gameplay changes

- Sap and soap can be collected from the dispenser by placing a suitable container below it. Also adds a sop dispenser for symmetry.
- The mechanic can now fix a second broken car.
- The mechanic now responds to attempts to fix a car with poppy oil.
- The tot and tots can be picked up.
- Creatures no longer leave supporters or containers randomly. The behavior is now similar to the way it was in release 6 and earlier: people will leave the synthesizer immediately, but not animals. Creatures will get off the programmable dais immediately, with some exceptions.
- Creatures will not get off the display platform in the Display Reloading Room, to allow for a couple of cock jokes.
- The player can no longer carry created creatures past the secretary.
- The boar will now butt the car door open if the player tries to hide inside a car.
- The tiptoe and the the bodypart kind of tit now count toward the Igor Rosehip achievement.
- When the game ends, the ACHIEVEMENTS command will list any achievements the player has not yet accomplished.
- On hard mode, the chair in the Language Studies Seminar Room is now red, and as a consequence the hair and the hairpiece also are red. This prevents an unwinnable situation that would occur if the player destroyed the hair by turning it into air.
- The air will now disappear even if the player is not holding it.
- The oil painting and the tilting piano are now too heavy to carry.
- The bull will trigger the safety override of the bucket.

### Parsing

- The player will now open the backpack automatically when trying to put non-held things into it. Previously, this would only work with held objects.
- Non-enterable containers are no longer opened automatically when trying to enter them.
- Adds an OIL verb, useful when asking the mechanic to fix the car using commands such as ASK MECHANIC TO OIL CAR or MECHANIC, OIL ENGINE.
- The player will no longer close the car door when trying to start a non-functional car while standing outside it. They will also get inside the car before trying to start it.
- The orc swords and the bodypart kind of tit can be interacted upon.
- The water in the secret chamber can be interacted with.
- It is now always mentioned that the player automatically picks up anything on a chair before sitting down. This was previously done silently, causing some confusion.
- Turning the tutorial mode back on now works properly. Previously it would turn back off as soon as the player listed their goals. Note that this will also remove the "finished tutorial mode" achievement until the tutorial is once again finished.
- Creating a synthesis out of two objects with names in all caps now works properly.
- Searching for ME in the surveillance computer will only show resluts for Andra, searching for YOU will only show results for Alex, while US or ALEXANDRA will show results for both.
- GET SEAT or TAKE CHAIR no longer makes the player sit on the chair, while TAKE A SEAT still does.
- No longer asks "Who do you mean, 1) Atlantida or 2) Atlantida?" when typing ASK ABOUT ATLANTIDA outside of conversation.
- No longer gives the error "I didn't understand that number" when typing ASK ABOUT an ambiguous, absent person (such as ASK ABOUT ATLANTIDA) and then answering a resulting "Who do you mean?" question.
- Looking at a mirror while wearing the monocle will now tell the player that the mirror is real. Previously, this would only happen when explicitly typing LOOK AT MIRROR THROUGH MONOCLE.
- Flipping the cryptobucket reverse switch with FLIP SWITCH now works as expected.

### Word repository

- Adds PASSKEY, another kind of plural PITS, plural PIT TRAPS, and a non-liquid kind of TEAR.
- Fixes the broken plural ILLS and plural POTS that were listed in the code but impossible to create.
- Creating CAT ARMY, COMPLICIT SHARK, SCREE, SORD, TOMS, RIG, or ROCK BAND no longer ends the game. This makes it possible to create some previously unreachable objects, such as TOMCATS.
- Creating TILLS does end the game, however, saving us from implementing plural TOLLS and TELLS.
- The joke responses to attempting to synthesize ROCK and ROLL, KEY-LIME and PI, SILL and CATE, and PAN and EAR now work when using the programmable dais as well as the synthesizer.
- The BASINS and derivatives BASIS and BASS are reinstated. These were removed by mistake in release 7.

### Cosmetic output errors

- Now shows the correct error message when trying to EXAMINE ALL or examining other multiple objects ("You can't use multiple objects with that verb" instead of "You can't see any such thing.")
- Removes an superfluous message that was shown when trying to give animals orders.
- Fixes a repeated message that would occur if we don't reply to Higgates initial question about whether we speak Lojban.
- Gets rid of an erroneous message about being let in through the security door if trying to leave though it when confronted by Alex's father.
- No longer repeats the refusal message when trying to TAKE ALL FROM Professor Higgate's table.
- Groups of plural tents are no longer called plural-tents, as in "We are carrying twelve plural-tents."
- Plural of it-objects is now "it", as in "We are carrying two it" rather than "We are carrying two it-objects."
- Fixes some glitches in the map graphics on certain interpreters when displaying the help menu. It is still slightly broken in the Mac IDE, though.
- Removes fragments of the room description that were being printed when getting on a supporter.
- There is now a custom message when listening to the plea. As the plea is listed as noisy, "We hear nothing unexpected" would sometimes be printed every turn when it was present.
- Fixes a couple of messages with verbs that were not adapted to plural-named subjects: when trying to create living things or abstracts with a non-upgraded letter-remover ("The pans flickers and there is a brief image of …") and when large creatures try to follow the player into a small container ("The toms makes an effort to get in, but does not remotely fit.")
- If the player was inside a container, it would sometimes be printed twice or more in the room description header, such as "Back Alley (in the tent) (in the tent)."
- The inventory comment "(really the smuggled plans in disguise)" would get lost if the disguised plans were synthesized into something else.
- More objects are now highlighted in highlighting mode, such as the Lecture Hall podium, seats, and conference poster in room descriptions, the Equipment Archive ceiling, the things on the diorama table, and the clothes of the pict and the diva.
- Variable-width text is restored after printing the (fixed-width) description of the sig.
- Always prints a room description and updates the map after successfully entering the antique shop for the first time.
- Fixes a description of the reflective window in Sigil Street.
- Acknowledges the existence of the secret door when we have created it but not opened it yet and try to go through it.
- Adds a missing "one" in the description of History of the Standards Revolution.
- The rack is now too cumbersome to carry, rather than much too heavy.
- In some endings, Brock would refer to the T-inserter as "T-remover".
- On interpreters that support text color, light grey text, such as the tutorial messages, is now a little darker, hopefully improving legibility.

## Release 8

- Fixes a hang that would occur on some interpreters when resizing the game window or clicking on the compass rose while being asked to reply yes or no.
- Fixes a bug where the game would use the achievements from the save file rather than the external monkeyac file after restoring, This meant that a save game from a different session, such as from another interpreter or computer, would award you the achievements from that session. Achievements are now properly reloaded from the monkeyac file after a restore.
- Works around a bug where the player could get stuck after showing the pass to the secretary.

### Gameplay changes

- It is no longer possible to make the game unwinnable by putting crucial objects in the etymological reversing chamber and then lowering the platform.
- No longer awards achievements upon dying that were meant to be awarded when finishing the game.
- No longer awards a point (or expresses admiration for the player) when a non-player character puts restoration gel on something before the player does.
- Automatically opens the backpack when necessary in order to use the letter-remover.
- Disallows opening the backpack when doing so would reveal something incriminating to the secretary.
- Homonyming now works properly on things with randomized descriptions.
- Homonyming the activist's sign no longer turns it into a protesters' sign.
- Homonyming will no longer transform something into another of the same kind, with the exception of the card.
- The bartender will no longer paddle the musical piece.
- Gives a mildly suitable response when asking the bartender to paddle a tool that you made by gelling a drink.
- Living things will no longer immediately get off the programmable dais.
- Improves clues to help the protest-scenario along.
- Makes touching the gel equivalent of putting it on us.
- Prevents the player from walking out on Mother. Previously we would print a refusal message, but still carry out the action.
- Tones down the clues to the legend puzzle.
- It is no longer possible to walk away with the rock until we have gelled it once.
- Disallows B-removing Brock.
- No longer allows waving the letter-remover at the small knob on the letter-remover.
- No longer allows picking up the oyster turd.
- Adds a massive pug.

### Parsing

- Asking about the current location is no longer understood as asking where to find the current location.
- Understands more synonyms when asking where to find locations and things, such as ASK WHERE TO FIND A GARAGE.
- The quips ASK WHAT HE LIKES TO EAT and ASK WHY HE DOESN'T GO TO THE DEMONSTRATION are now properly understood.
- Makes all player input case-insensitive.
- Makes commands like X-REMOVE CODEX or P-REMOVE APPLE work.
- When typing commands like REMOVE X FROM CODEX, the game will no longer try to change the setting of the letter-remover if it already is X.
- Many fixes to weird behavior when trying to stand, sit and recline on things.
- Fixes a run-time error that would occur when typing a number as a reply when asked to disambiguate between rooms.
- Fixes some cases when using the definite article "the" would make the parser misunderstand commands.
- Adds responses when trying to use the power cord in unintended ways. Previously the player would sometimes get a blank response.

### Typos and cosmetic output errors

- Fixes the message "X doesn't have anything to say about Y at the moment" which was previously sometimes printed as "X doesn't has anything to say about Y at the moment."
- Groups of certain identical objects, such as two cans of oil, are no longer mentioned twice in room descriptions.
- Fixes a bug that would override interpreter settings for text color after a restart and set the text to black on white on interpreters with support for GLK styles.
- If you disable graphics, they will now stay disabled after a restart or restore. Not after quitting and restarting the interpreter, though.
- The map images used on the yacht have been updated to eliminate black lines that would sometimes appear when switching graphics off and then on.
- Fixes a bug where restoring a save game from an interpreter without support for graphics would break the map display on an interpreter which supports graphics.
- Always describe new letter-transformed creations when we haven't seen them before. Previously, the player would in some cases never get to see the descriptions of things that instantly killed them.
- Some letter-transformation tools would print a full description of their creations every time, even if we created the same thing over and over. Now only the homonyming dais does this.
- Removes a superfluous line break when clicking the compass rose.
- Examining the spinner sculpture while it is empty no longer causes a run-time error.
- The ad no longer refers to the restoration gel as "restoring gel".

## Release 7

- The game and all its extensions have been ported to Inform 6M62. This allows us to simplify the code in many places. We have tried hard to ensure that nothing was broken in the process.
- The source code was split into smaller files.
- The map can now be switched off with GRAPHICS OFF to reclaim screen space.
- The TOPICS command lists all recommended quips as well as most available ones.
- Many initial values are now hard-coded in the source for a quicker game start.
- Adds a startup pre-computation function that caches the results of startup for faster subsequent game starts, and which can also read startup data from the blorb file on interpreters that support it.
- Replaces most visibility tests with the marked-visible attribute from Scope Caching by Mike Ciul for a speedup.
- Uses the list writers and other replacement functionality from Large Game Speedup by Andrew Plotkin. Inspired by this, many similar speed-ups have been implemented elsewhere in the code.
- Adds a repsonse to trying to play the games on Brock's computer.
- Implements asking the mechanic where to find a car.
- Allows thanking more people.
- Adds a reply for asking the ticket-taker about The Babel Café.
- Fixes a broken image when drawing the compass in the traffic circle.
- Fixes a bug where the spinner would sometimes spin twice the same turn.
- The map is now always the same width as the graphics window.
- Allows turning tutorial mode back on unless we have left the starting area.
- Adds new testing functionality where a file named AUTOTESTING.TXT (or just AUTOTESTING on some interpreters) will be read as a list of input commands.
- Adds the testing command PAUSES OFF to disable the game pausing and waiting for a key press. Enable it again with PAUSES ON.
- Adds the testing command RANDOM-SEED (number) to reset the random seed to any number.
- Includes some primitive testing scripts that pipe a text file of commands into the game and compares the output to an older transcript.
- Fixes a bug where the as could disappear out of your hand if you made a second as from the trash, then synthesized an ascot, then gelled the ascot. Also prevents any potential similar bugs.
- Now the roc or other converted forms of Brock are properly gelled when boarding the yacht.
- Fixes an issue where the game wouldn't let you leave the starting park area if you letter-converted the plans before touching them.
- Fixes a run-time problem in Threaded Conversation when resetting the interlocutor while the current interlocutor is nothing.
- Speeds up route-finding by not looking for ways around locked doors and skipping other redundant checks.
- Speeds up conversation by reducing the number of quips tested for viability each turn and also replacing slow code with Inform 6 equivalent.
- Makes children cry when you break the hanging figure with the severed arm.
- Things on the trampet now randomly fall off when you jump on it.
- Implements smelling the lavender smell in the public convenience.
- Delays awarding the score for getting past the secretary until you actually get past her.
- Brock now comments on things you are wearing.
- Adds responses for showing the draft document to Waterstone, and for showing him something homonym-shame-relevant too early. Rewords other responses to help clarifying this puzzle.
- Adds responses to discourage the player from trying to stow things in the tin hut while hiding from the authenticator.
- Prevents the player from walking away with the student quarters coffee-maker.
- The quip Ask how Professor Brown makes abstracts is now still suggested if you leave his office and return later.

### Gameplay changes

- Adds four new achievements.
- The letter-transformation tools will now consistently produce the same object when there are several viable.
- Disallows removing The Problem of Adjectives from the Language Studies seminar room bookcase.
- Disallows putting restoration gel on the morning dress.
- You can now leave the rock behind until you have found out that it is Brock.
- Allows destroying fake people by destroying their container or supporter.
- Allows cutting the kudzu with the jigsaw.
- Enforces closing the portcullis when being chased by the guards
- It is now possible to leave the snap temporarily behind as a masking noise.
- Liquids and sinks behave more consistently. No longer can certain uncontained fluids be picked up and carried around in containers alongside other solid things or fluids.
- It is no longer possible to put containers in the sink to fill them with soap.
- Things that are not allowed in the backpack, such as fluids, long or heavy things, can no longer be snuck into the backpack by first placing them in another container or on a supporter.
- You can no longer carry too heavy objects by hiding them in a lighter container or on a supporter.
- It is not possible to climb into or onto things inside the car anymore.
- The legend now stays attached to the map after you gel it.
- Fixes to allow the roc following along when you take the kayak to the yacht.
- It is no longer possible to leave essential objects behind by inserting them into a container and then letter-transforming the container.
- Makes it more apparent when the car will not run by stopping you rather than making you automatically get out and walk to your destination.
- Makes the refusal messages more consistent when trying to go to blocked-off locations, and avoids walking you halfway there.
- Gelling the tub is now allowed.
- Animals will no longer get out of containers such as the car on the same turn that they followed you into them.
- Fixes a bug where placing an object in the garage before changing it into a car would prevent you from entering the car.
- Adds carp, caps, PARC and a strolling cap.

### Parsing

- The parser no longer asks for a second noun when attacking something unless a weapon is actually required.
- Heavy objects are no longer picked up and then dropped when typing TAKE ALL.
- Understands PIÑATA as the hanging Atlantida figure on interpreters that support unicode input.
- Understands REMOVE SCREWS and REMOVE BLINDFOLD.
- Gives a response when trying to get the mechanic to fuel the car.
- Makes pouring fuel into the car synonymous with fueling it
- Fixes quips that require the knowledge of certain facts.
- Any suitable supporters are preferred to the floor when typing SIT or LIE DOWN.
- Adjusts line breaks around achievement messages.
- Typing INSERT X IN CONTAINER when X is already in the container will no longer make you open the container if closed, or make you take out X and then put it back in.
- The backpack now automatically opens when you try to use the letter-remover inside it.
- It is no longer possible to insert objects into the customs house line or the secret door.
- Makes IN and OUT work more consistently as directions.
- Fixes a run-time error when typing LIE.
- Makes RETURN BOOK work when there are several books available.
- Adds new ways of understanding what we want to shoot at and with what. The parser is now better at telling the difference between shooting a gun at something and shooting at something with it.
- Makes it possible to refer to SINKS in the public convenience.
- Adds several new ways of asking the bartender to homonym-convert things.
- Adds more ways tell the parser to fill the pen with ink and write with it.
- Adds more synonyms for putting the reel in the projector and starting the movie.
- Fixes a bug where trying to remove things from containers or supporters would be misinterpreted as trying to wave the letter-remover at them.
- Gives responses to waving the letter-remover at the tub and the restoration gel, and to putting gel on the letter-remover.
- Prevents the parser from taking you to the diorama table in Heritage Corner when typing GO TO BUREAU.
- Prevents the parser from taking you to the elderly apartments in Sigil Street when typing GO TO APARTMENT.
- Makes you go to the old city walls rather than the postcards in cathedral gift shop, the museum exterior, the yellow buildings in the back alley or the sandcastle when typing GO TO WALLS.
- Goes to the public convenience rather than the convenience store when typing GO TO CONVENIENCE.
- The parser no longer asks which room in the church you want to go to when typing GO TO CHURCH.
- Fixes a bug that would sometimes leave you standing right outside your intended destination.
- Typing a number as a disambiguation choice will now pick the right selection.
- Allows some greeting phrases used by other characters to be used by the player.
- ACTIVATE, HOMONYM and SYNTHESIZE are now understood as verbs.
- Taps can now be referred to as HOT or COLD.
- UP is understood as standing up if there is no exit leading upwards.
- Adds a response to PUT PANS IN PANS.

### Typos and cosmetic output errors

- Properly announces any achievements awarded when winning the game.
- Prints the intended message when trying to show something to an animal.
- No longer describes the truck or the shuttle as "our car".
- Fixes always showing your goals automatically after going through the barrier for the first time.
- Hides some more instructional messages when tutorial mode is off.
- No longer prints a message about walking through "the wealthy neighborhood" unless you actually do.
- Fixes printing the article of the mourning dress when examining the shops.
- The Babel Café is spelled with an accented é everywhere.
- Changes the word "ground" to "floor" in standard messages when indoors.
- Gets rid of parser clarification messages when issuing GIVE, BUY or SHOW commands without specifying a second noun.
- The utilitarian inventory listing is now faster and more robust. It also states whether the things listed are inside containers.
- Improves the responses when trying to walk in unimplemented directions.
- Gives a better response when the cryptolock produces something large that falls out of it.
- Avoids printing long lists of refusal messages when typing PUT ALL IN a locked container or similar.
- Makes it possible to look up Anglophone Atlantis in the guidebook.
- Adds responses to trying to remove the restoration gel from the tub or the tube.
- Makes the score awarding from reading the legend show up immediately rather than on the next turn.
- Fixes a double refusal message when trying to insert things into the etymological reversing chamber while it is in the closed display case.
- Fixes a bug that would occasionally refer to a "galley sink" when describing the public convenience.
- Fixes a double room description sometimes printed when approaching rooms.
- Makes the letter-transformation tools refer to the player as "Alexandra".
- The name that the letter-remover tries to change is now always identical to the printed name of the object. Previously it would differ for certain objects, such as the sink taps.
- Fixes the reply when asking the gift shop volunteer about things he has nothing to say about.
- The mechanic is no longer mentioned twice when examining the garage.
- Adds back some old responses found in the source when attempting to buy souvenirs in the cathedral gift shop.
- The descriptions of running taps in room descriptions are now grouped together.
- Makes sure that all the steps involved in driving (closing the door, starting the ignition) are printed the first time we drive to a named location, just as they are when driving in a direction.
- Makes sure that the funnel is described as "all sandy" until you have taken it.
- Prevents the response "What do you want to drop those things in?" when typing DROP ALL while carrying nothing.
- Makes sure that I is always capitalized in travel descriptions.
- You no longer enter the car at the end of the traffic circle scene if you are already in the car.
- You no longer get off the tarpaulin in the tin hut after having already left the hut.

## Release 6

- Fixes a bug where resurrecting the player (i.e. answering yes to "Shall we suppose \[we\] didn't?" after dying) would sometimes break the game. Now we perform an undo rather than resume the story.
- Updates the version of Ultra Undo.
- Somewhat speeds things up by adding "southern" as an permanent attribute of rooms rather than calculating the path to them on every turn.
- Adds an article to the description of putting gel on things.

## Release 5

### Gameplay changes

- Revises the way Waterstone responds to things he's shown, so that it is more clear that he is behind a glass door, and so that he is more obviously reacting to an item of the player's deliberate selection.
- Removes old requirements about use of disguises in the presence of others. This was just confusing, really.
- Removes requirement to be empty-handed before rowing, because this is just holding things up at what is otherwise nearly the end of the game, and because some of the messaging about it was actively confusing to some players. But it wasn't a puzzle really anyway.
- Removes an incorrect exit listing from the Equipment Archive.
- Fixes bug whereby APPROACH CAMERA could be misconstrued even though this was clearly hinted as an action during the basement sequence.
- Allows the player to type RESTORE during the name-recognition sequence at the beginning rather than playing through it.
- Adds a reverse mode to the vowel rotator bucket, allowing vowels to be rotated in the other direction. This removes the risk that the player will make TUB > TAB and accidentally destroy the only access to restoring gel (since this can be reversed). It also allows the player an alternate way to make a CORD for the power cord puzzle, via CARD > CURD > CORD. This is meant to address complaints about the umlaut punch being necessary, but of course it doesn't work in hard mode, which will still require the more difficult solution.
- Fixes a bug whereby the reconstructed Atlantida is less proactive than she was intended to be.
- Adds an afterlife feature to automatically undo accidental deaths.

### Word repository

- Adds CURD, CORD, CUD, COD, HURT, CUT, RILL, TRILL, PISA, PUN, PUNS, PUNT, PUNTS, PUS, TEN, TUN, TAN (extras), NET (extras), STENT, TENT, TENTS, BUSES, BUS, FOAL, LOAF, OAF, CLICK, BULL, DIG, and DIVA to support reversal mode on the bucket.
- Adds AHI, HOD, OZ, OHIO, and ZOO to support hard reversal mode on the bucket.
- Adds SHUTTLE homonym.
- Adds STOCK, SOCK, CHERT, CLUCK, CLACK, CACK, and POI products for the vowel-rotating bucket.
- Adds TORTE, TORT, and ORE (and an additional TOTE) as results of anagramming the OTTER.
- Adds TNT as a product of TINT.
- Adds SCREE as a product of SCREEN.
- Adds RAPE, PIECE, and COUNTER homonyms.
- Adds MARY anagram for ARMY.
- Adds PILLS anagram for SPILL, and ILLS and TILLS as derivatives thereof.
- Adds a singular CRUMB.
- Adds a BIG REVEL (anagram of BIG LEVER).
- Adds a WARP (anagram of WRAP), and its derivatives WAR and WART (though as WAR is fatal it is probably not possible to get WART).
- Adds a TRAVELLER TIP and a TRIPLE VARLET (from the TRAVELLER TIPS which can be anagrammed from SILVER PLATTER).
- Adds AGA and an additional AA object to be made from SAGAS (added in rev 4).
- Adds noisy homonyms for SNAP and RING, providing additional solutions to the masking noise puzzle.
- Adds TIDY PUCE COFFER anagram for the dirty coffee cup.
- Adds a singular OIL PAINTING for the OIL PAINTINGS in Atlantida's chambers. Also a singular INTAGLIO PIN and the resulting INTAGLIO PINT and TILTING PIANO.
- Adds a singular PAINTING for the PAINTINGS in the bureau.
- Adds INAPT SIGN as an anagram for the PAINTINGS, resulting also in INAPT SIN, SATIN PIN, SATIN PINT, SAINT PINT, GIANT PIN, GIANT PINT, PIG TAT INN, PI TAT INN, TITAN PIN, TITAN PINT, and INAPT TINT.
- Adds special responses to trying to S-remove the UMBRELLAS, the TEENAGERS, the BRINY RIVULETS, the RAILINGS, the SMALL CHILDREN, the YELLOW BUILDINGS or BEIGE BUILDINGS, or the PORTHOLES.
- Adds a MALL FIGURINE from the SMALL FIGURINES in Higgate's office.
- Adds a POLLING CHART as a singular of POLLING CHARTS, together with a STROLLING CHAP and a PATCHING ROLL.
- Adds a WINNER LOGO CHOCOLATE to be the singular of the same object, and a HOOTING OWL CONCEALER as its anagram.
- Adds BROKEN COMPONENT and CEMENT PORNO KNOB as products of the BROKEN COMPONENTS.
- Adds singulars LAMB GRANULATE and ANAGRAM BULLET for those objects.
- Adds FROZEN DINNER, ZEN FROND RINSE, and RED FROZEN INN as products of FROZEN DINNERS.
- Adds WARM ROD and RAD WORM products of SWORD ARM. (It was previously possible to get as far as WARM RODS, but not to remove the S.)
- Adds WIRE RACK and PAPER MODEL singulars.
- Adds TAT as a derivative of STATS.
- Adds BOCK as a derivative of BROCK.
- Takes the coward's way out and changes the FIGURES on the fountain to SCULPTED FIGURES so that they can't plausibly be depluralized in a way that would require varying the fountain description to account for both the state of the figures *and* the state of the horses. The whole HOSE transformation is enough, thanks.

### Parsing

- Adds USE GUN ON X syntax for shooting.
- Fixes bug whereby in certain circumstances FIRE GUN AT X would not be recognized as synonymous with SHOOT.
- Fixes bug whereby the PLATE could not be referred to by name.
- Improves parsing so PUT BOOK AWAY and SHELVE BOOK would be understood as well as RETURN BOOK or PUT BOOK ON SHELVES.
- Adds synonym BACKSACK for BACKPACK.
- Adds synonym EDIFICE for the station building.
- Adds BOTTLE and GIANT BOTTLE and BOTTLE OF synonyms for the liquor collection.
- Adds IF as a synonym for WHETHER in many dialogue options.
- Adds PUNCH X WITH PUNCH or just PUNCH X in the presence of the umlaut punch.
- Adds PASTE X as a way of applying the origin paste.
- Makes it easier to refer to the newspaper at the very end as PAPER, and removes a conflict with the clipping (formerly NEWSPAPER CLIPPING)
- Adds more robust handling of input like SELECT OPTION 3 or SELECT CHOICE 3 or SELECT NUMBER 3 as an alternative for SELECT 3 (and other similar formations) when manipulating a computer with a multiple-choice interface.
- Improves parsing of some conversation options referring to characters by name or pronoun.
- Fixes bug whereby UNSCREW SCREWS WITH AS gave misleading feedback.

### Clarified descriptions and instructions

- Corrects a piece of misleading output about cars, which suggested it was possible to park one that had not been started.
- Improves response to trying to gel yourself after you've learned that you are fused.
- Slightly rephrases the description of the spinner puzzle in order to make it easier to visualize.
- Rephrases feedback if you try to prop the trapdoor with something inappropriate, to be more specific about why the object is not sufficient.
- Fixes an instruction that incorrectly directed the player to the university rather than the dead-drop.
- Fixes a bug that gave a misleading message in response to an instruction to stand on the tarpaulin masses.
- Revises the phrasing used to describe exactly why a given prop won't work in the trap door.
- Fixes a bug whereby it is not immediately explained that the pinata is what is blocking you if you use GO TO ROTUNDA while the game is being played.
- Fixes a bug whereby Brock may appear confused by an abstract created not in the t-inserter, and act as though that counted as solving the puzzle.

### Improved world model

- Improves character dialogue responses when the player asks about the current location.
- Fixes a loophole that allowed the player to get the attention of the men playing darts even though other code had been written to disallow them from having a conversation. Subsequent behavior was visibly buggy.
- Fixes a bug that misreported the window in the Private Solarium as closed even when it had been opened.
- Fixes a bug whereby the poster is described as still being attached to the Monumental Staircase wall even after it has been converted to a POSER and led to a new location, then gelled.
- Fixes a bug whereby it was possible to close the plexiglas even after cutting it open.
- Adjusts the weight of the puppy to make it easier to pick up.
- Fixes a bug whereby it was possible to put the ruck in the bucket and get a rack that could neither be taken nor gelled.
- Fixes bug whereby the boiler could be taken.
- Fixes bug whereby the coffee cup was described as empty even if the player put something in it.
- Fixes bug whereby it was possible to change an object that was propping a door without the door closing in response.
- Fixes bug whereby mother could stare at an object that was inside our closed backpack.
- Fixes bug by which the department printer could whir even if switched off after the player leaves Waterstone's office.
- Fixes bug such that if you put the gel on the rock when it’s in the T-insertion machine, Brock won’t leave the machine, preventing the player from being able to put anything else into it (unless they turn him into a rock and remove him).
- Fixes bug whereby flipping a yam twice with the pedestal turned it back to a yam, but the monocle thought it was still in an altered state.
- Fixes bug whereby Brown could be described as hunched over his work table even when he was out in the Oval.
- Fixes bug such that animals in the kayak would spontaneously leap out (to their presumed watery deaths though this was not narrated).
- Fixes bug to do with reaching objects on the stand in the museum window. This in fact turned out to be the fault of an obscure error in the Inform world model (see http://inform7.com/mantis/view.php?id=1168) but has been hacked around.
- Revises the crypto-lock bucket so that large objects cannot be put into it and large objects constructed inside it will fall out.
- Accepts SE as a synonym to E when leaving Monumental Staircase for High Street, since one player felt the map looked more southeasterly than east at that point.
- Adds a clearer response for why taking the SAND is not a good option.
- Adds better responses for attempts to wash the funnel in the fountain or near a sink.
- Adds better responses to trying to pour and fill things (though it generally rejects these attempts, it at least recognizes what the player is attempting).
- Adds an exception to an overzealous rule that prevented the player from gelling air-like objects (such as a STINK manufactured in the T-inserter).

### Additional content

- Addresses the disgraceful fact that Typoland Fun Fair could not be found in the guidebook.
- Adds "lodgings", public convenience and bus station to the guidebook as well.
- Adds chap-hop variant to the rap if you're wearing the Britishizing goggles.
- Adds responses to PLAY DARTS and PLAY ARKHAM HORROR (or other games aboard the yacht). (You're not actually allowed to do either, but at least we can respond better.)
- Adds response to trying to synthesize ROCK and ROLL.
- Adds responses for E-removing Brown's goatee with and without an animate-enabled letter remover.
- Adds a couple of additional features to Brock's laptop, in case you hack in.
- Adds a special response for looking at your reflection through the monocle.

### Typos and cosmetic output errors

- Corrects a typo in text about the winding footpath.
- Corrects a typo in description of fishing reel.
- Corrects a typo in the synonyms for the shrine object.
- Hacks around a mysterious bug in which the apartment key was reported as "an key" rather than "a key". I am not sure why this was happening to start with.
- Fixes a rare runtime error to do with table rows used to record player goals.
- Fixes a bug such that the player was described as sitting IN the piano rather than on the piano bench in the Fleur d'Or lobby.
- Fixes a bug such that the description of the TROPE COUNT object was not set correctly.
- Fixes a bug whereby looking at Alex's apartment key with the monocle on did not produce any monocle reading.
- Fixes a bug whereby the footpath was referred to without the article if you looked at it through the monocle.
- Fixes a bug that made it possible to cut the kudzu with edgeless objects but get no description when one had done so.
- Fixes bug which misleadingly described the toolkit in the drinks club as empty if you looked at it directly.
- Fixes response to TOPICS command to avoid mentioning quips that are intended to go unmentioned.
- Fixes bug such that the first attempt to TAKE CHARD produced output only suitable for the chard garden, even if you'd manipulated it linguistically first and moved it somewhere else.
- Fixes bug whereby TOES was treated as singular.
- Fixes bug whereby ELECTRICAL EQUIPMENT, GRIT and TERRACING were treated as plural rather than mass nouns.
- Fixes bug whereby certain joke responses to synthesis occurred only for the synthesizer and not for the workshop dais.
- Fixes bug whereby the kitchen sink would be described as still present after you'd converted it.
- Fixes bug whereby objects described as having text would nonetheless appear "blank" in response to READ (rather than examine).
- Fixes bug whereby a joke about eels and congress was supposed to be attached to the accent flipper but by mistake got attached to the equipment shelves, making it incomprehensible. Maybe it would have been anyway, but now it's at least in the right place.
- Fixes bug whereby answering Alex's initial questions with ANDRA as early as possible avoided the banner being printed. This failure ever to display the Inform affiliation is technically a violation of Inform's license.
- Fixes a bug whereby the command PUT POT ON PEDESTAL, referring to the yogurt, could hang the parser for ornate and complicated reasons. Rather than really fix this, we just made the YOGURT be YOGURT, not POT OF YOGURT. Because it wasn't worth it. As penance, added a TOY RUG object for the anagramming gun.

## Release 4

- Adds CORK (ROCK anagrammed), SAGAS (SAG + AS).
- Documents HARD MODE officially.
- Adds a description to the patchy grass in the monument green.
- Corrects a line about going to the university immediately after freeing the teens.
- Clarifies the dead drop goal so that a player who has left the game for a little while can review where they were supposed to be going.
- Fixes a bug whereby it was possible to hang the game by referring to "paper" in the presence of the draft document.
- Fixes a bug whereby typing TAKE ALL while carrying the pill will result in eating the pill (fatally).
- Fixes a bug where looking through the monocle at the tub didn't mention the tube.
- Improves responses to attempting to use the tube on the lock.
- Fixes a bug whereby DIGGING in the sand in the beach still produced a description of finding the funnel, even in hard mode where the funnel is not actually available.
- Fixes a bug whereby in one circumstance the paper drawer would be described as a paper-drawer, but would not accept the hyphenated form as input.
- Adds an extra Amy and an extra May to the repository so that they can be simultaneously produced by the army and by the yam, if need be.
- Fixes an error whereby the player was able to observe the wrong member of the Brock/Dad pair when looking in the surveillance screen.
- Adds synonyms for attempting to climb on the tarpaulin masses in the Tin Hut.
- Adds snarky response to trying to make font t-shits, pink t-shits, or various t-shits. (Mournful sigh.)
- Adds snarky response to trying to remove I from oneself.

## Release 3

- Improves appearance of achievement announcements (line breaks, text styling).
- Sets the ticket-taker pronoun when you first see him, so GIVE TICKET TO HIM doesn't fail.
- Fixes bad line breaking when listening in the presence of the protesters.
- Fixes a typo in the description of turning the cannon.
- Fixes a bug whereby the cannon was takeable.
- Fixes buggy text output when putting the fuel in the car.
- Fixes a bug whereby turning on a car that wasn't properly fueled or oiled gave the wrong indications about its state of readiness.
- Fixes a buggy response to drinking the ale when the bar game had previously been about producing a pea-sized object.
- Fixes a bug whereby it's possible to kiss brock during any conversation, even if he's not in the room, if using the correct command format; and to see this possibility by typing TOPICS.
- Fixes a bug whereby the plexiglas case was portable.
- Fixes a bug whereby anagramming the accent-flipper and then turning it back was sufficient to crush the player under the bulk of the recreated object.
- Fixes a bug whereby only two pi objects could be generated though in theory there should have been more.
- Adds the words bandage, basin, bait, tea, rite, gin, eight, wight, Ross, tart homonym, pot homonym, ant, tan, ten, net, ent, and rattle.
- Fixes a sequence bug whereby giving the mechanic the oil when the car wasn't around would lead to the mechanic notionally fixing something that wasn't there, while consuming the oil permanently. Adds some dialogue for the mechanic, allowing him to hint a little more clearly about the card state as necessary.
- Fixes a bug whereby the jigsaw was supposed to be noisy when turned on, but due to a typo in the rules, wasn't counting. This made hard mode significantly more hard.
- Fixes a bug whereby the modified names of objects in hard mode were not being respected.
- Fixes a bug whereby M-removing Mark after he'd been identified wasn't working properly because the game still thought of his name as "patron".
- Fixes a bug whereby having the broken components in inventory messes with parsing of the big lever on the work dais.
- Revises utilitarian inventory listing to be clearer about what is being worn or carried in the backpack, and whether the backpack is open or closed.
- Makes X ME give information about what you're wearing.
- Improves the response to trying to go north in Crumbling Wall Face.

## Release 2

- Fixes letter-tranformation behavior so that the newly constructed object will have its pronouns set properly (so "IT" will apply to the thing just made).
- Hackily fixes weird bug where, despite the code being evidently correct, "HIGHLIGHT" would activate score notification rather than the highlighting effect.
- Fixes bad instruction in ABOUT text that misdescribed the LOOK CAREFULLY function, and makes LOOK CLOSELY also work, for good measure.
- Fixes bug whereby an answer in the first three questions which included punctuation meant that the answer would not be correctly recognized.
- Fixes a response to cutting things with the sword that says the sword is not edged.
- Fixes a bug whereby carrying the dove into the Cold Storage room resulted in the player immediately and involuntarily sending the patsy prisoner out to face the rifles.
- Fixes a bug whereby gelling Brock in Cold Storage wasn't working.
- Adds a response to attempting to cut the Atlantida pinata.
- Adds to the repository a countertop, a trope count, a hairband, a pineapple ring and a ripening apple.
