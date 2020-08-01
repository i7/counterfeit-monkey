Safety Overrides and Disasters by Counterfeit Monkey begins here.

Use authorial modesty.


Book 1 - Safety Overrides and Disasters

Section 1 - Dangerous Destruction

[No matter what method of letter modification we use, there are certain things it is dangerous to destroy: for instance, objects containing the player, objects containing valuable essentials, etc. We want to be consistent in the way we represent the results, so we use the dangerous destruction rulebook, which can be called by any of the letter-changing devices.]

The dangerous destruction rules are an object-based rulebook.

A dangerous destruction rule for a person (called the target):
	if the target is the current interlocutor:
		reset the interlocutor;

A dangerous destruction rule for something that encloses the current interlocutor:
	reset the interlocutor;

A dangerous destruction rule for something (called changed seat) which encloses a person (called the irate victim):
	if the irate victim is Brock or the irate victim is fake:
		make no decision;
	if the irate victim is the player:
		say "In a blink of an eye, [the changed seat] [cease] to exist.

The problem is that [they] [take] us along with [them].

I've always wondered what this last passage to non-existence might be like. It turns out that there is a rushing noise, and a tunnel [we] travel very rapidly towards darkness; and all around [us] are other objects also in the middle of ceasing to be.";
		end the story saying "[We] have left existence behind";
		rule fails;
	say "Instantly [the changed seat] [cease] to exist. [The irate victim], real[izing] what [we] [are] about just in time, has managed to leap out of the way, however; and the result is a hasty call to the police to report an Attempt to Render Inanimate, a charge pursued as though it were murder in most circumstances.";
	end the story saying "[We] have been locked up";
	rule fails.

A dangerous destruction rule for a room (called changed seat):
	say "In a blink of an eye, [the changed seat] ceases to exist, and [we] are part of it, and go also[if the location contains at least two people], in what will be recorded as an inexplicable act of murder-suicide[end if].

I've always wondered what this last passage to non-existence might be like. It turns out that there is a rushing noise, and a tunnel [we] travel very rapidly towards darkness; and all around us are other objects also in the middle of ceasing to be.";
	end the story saying "[We] have left existence behind";
	rule fails.

Section 2 - Dangerous Construction

Definition: a thing is enormous if the heft of it is greater than 8.

The dangerous construction rules are an object-based rulebook.

A dangerous construction rule for the ape:
	say "The ape turns its face towards [us] and takes [us] in dislike. Its dislike involves a lot of hitting and ooking and throwing, and overall turns out quite painful.";
	abide by the game-ending rule.

A dangerous construction rule for a car (called target car) when target car is enclosed by the garage:
	move target car to location.

A dangerous construction rule for a sink (called target sink):
	if holder of target sink is a room:
		now target sink is fixed in place;
	otherwise:
		now target sink is portable.

A dangerous construction rule for something enormous (called the target):
	say "Unfortunately, [the target] [are] more than sufficient to bury [us] under [regarding the target][their] bulk.";
	abide by the game-ending rule.

Report waving the letter-remover at something creating the all:
	abide by the dangerous construction rules for the all.

A dangerous construction rule for the all:
	say "There is a hum of ferocious effort from the letter-remover as it strains to create 'all'. At first it seems likely that it will just break down, but ";
	if the letter-remover is creature-enabled:
		say "it gets through the aa (a spontaneous flow of lava) and the aardvark, before the aardwolf attacks and does [us] in.";
	otherwise:
		say "it gets through the aa (a spontaneous flow of lava); skips all creatures of the aard- variety thanks to its restraints on living animal-creation; and goes on to the abaca (a large hemp-yielding plant).

Unfortunately, it's done a bit too zealous a job with the aa, and before it gets to whatever comes after abaca, the lava is flowing in our direction.";
	abide by the game-ending rule.

A last dangerous construction rule for a freaky thing (called target) when the current interlocutor is the backpacking girl:
	try showing the target to the backpacking girl.

A last dangerous construction rule for a freaky thing (called target) when the current interlocutor is the volunteer:
	if the volunteer does not recollect broke-it-buy-it and the target is proffered by the tomes:
		casually queue broke-it-buy-it;
	otherwise:
		casually queue mess-complaint.

Table of Ultratests (continued)
topic	stuff	setting
"mis1"	{ anagramming gun, letter-remover, ball, lap, pea, bullets}	--
"mis2"	{ anagramming gun, letter-remover, ball, lap, pea, bullets}	--
"mis3"	{ anagramming gun, letter-remover, ball, lap, pea, bullets}	--
"mis4"	{ letter-remover, army }	Dormitory

Test mis1 with "load gun / autoupgrade / shoot lap" [holding the anagramming gun and the letter-remover and the ball and the lap and the pea and the bullets].
Test mis2 with "load gun / autoupgrade / shoot pea" [holding the anagramming gun and the letter-remover and the ball and the lap and the pea and the bullets].
Test mis3 with "load gun / autoupgrade / wave b-remover at ball / shoot lap" [holding the anagramming gun and the letter-remover and the ball and the lap and the pea and the bullets].

Test mis4 with "z / wave y-remover at army" [in the Dormitory holding the letter-remover and the army.]

Section 3 - Custom game enders

[We save a lot of cycles by not having actual items for these]

[Letter-remover]

Check waving the letter-remover at the massive plug when the current setting of the letter-remover is "l":
	say "With a pleasant smell of puppies, the massive plug turns into a massive pug. Its wrinkly, short-muzzled face, curled tail and fine, glossy coat of fawn fur would be adorable if not for the fact that it is large enough to fill the entire room.

Massive or not, the pug still seems to have room for more, and before [we] have time to react, it has gobbled [us] up.";
	end the story saying "[We] have become dog food";
	stop the action.

Check waving the letter-remover at the lamb when the current setting of the letter-remover is "m":
	say "[random-letter-removal-text]the lamb turns into a lab. A full-sized scientific research laboratory, one of the many owned by Dental Consonants Limited.

Unfortunately, the lab is more than enough to bury [us] under its bulk.";
	abide by the game-ending rule.

Check waving the letter-remover at the patron when the current setting of the letter-remover is "m" and the player knows mark-known:
	say "With a distinct whiff of newly sawn planks, Mark turns into an ark. From here, the width of the bow in cubits is hard to guess. It just looks huge, much too huge for the little space it's crammed into…

Unfortunately, the ark is more than sufficient to bury us under its bulk.";
	abide by the game-ending rule.

Check waving the letter-remover at the warp when the current setting of the letter-remover is "p":
	say "[random-letter-removal-text]the warp turns into a war. I suppose we were hoping for some abstract conceptual representation, but what we get is loud noises and screaming and a yellowish gas all around, and something screaming down from the sky.

Unfortunately, the first casualty of war is [us].";
	abide by the game-ending rule.

To say random-letter-removal-text:
	say "There is [one of]a flash of psychedelic col[our]s[or]a mad-scientist cackle[or]a [pastel-color] cloud[or]a flash of [primary-color] light[or]a smell of anise[or]a distinct spearmint flavor[at random], and ".

[T-inserter]

A last check inserting the puns into the T-inserter:
	say "There is a loud and satisfying pop from the machine as it turns the puns into some punts. An assortment of punts, which by the looks of them are usually driven from the Cambridge end.

Unfortunately, the punts are more than sufficient to bury [us] under their bulk.";
	abide by the game-ending rule.

A last check inserting the sill into the T-inserter:
	say "There is a loud and satisfying pop from the machine as it turns the sill into a still. A room-sized installation of glass tubes and boilers. Inside is some kind of illicit moonshine product.

Unfortunately, the still is more than sufficient to bury [us] under its bulk.";
	abide by the game-ending rule.

A last check inserting the plural-ills into the T-inserter:
	say "There is a loud and satisfying pop from the machine as it turns the ills into some tills. There is a whole heap of them, mostly old-style cash registers from before they were computerized, but also some more recent sorts, and even one of those clever modern ones that is just a prop for a tablet computer.

Unfortunately, the tills are more than sufficient to bury [us] under their bulk.";
	abide by the game-ending rule.

[Anagramming gun]

Check shooting the pal with the loaded anagramming gun:
	say "The gun fires ruggedly into the pal, which shatters and then reforms as the alp. It looks quite a lot like the Eiger from this angle.

Unfortunately, the alp is more than sufficient to bury [us] under its bulk";
	abide by the game-ending rule.

Check shooting the lap with the loaded anagramming gun:
	say "The gun fires ruggedly into the lap, which shatters and then reforms as the alp. It looks quite a lot like the Eiger from this angle.

Unfortunately, the alp is more than sufficient to bury [us] under its bulk";
	abide by the game-ending rule.

Check shooting the litotes with the loaded anagramming gun:
	say "The gun fires ruggedly into the litotes, which shatters and then reforms as a some of toilets. Enough toilets to stock a public restroom for a thea[ter] or a small sporting venue. And here I was hoping we'd get T.S. Eliot.

Unfortunately, the toilets are more than sufficient to completely bury [us] under their bulk.";
	abide by the game-ending rule.

Check shooting the carp with the loaded anagramming gun:
	say "The gun fires ruggedly into the carp, which shatters and then reforms as PARC. Palo Alto Research Center [--] tons and tons of 1970s-era high-tech plastic, steel, and concrete.

Unfortunately, PARC is more than sufficient to bury [us] under its bulk.";
	abide by the game-ending rule.

Check shooting the big lever with the loaded anagramming gun:
	say "The gun fires ruggedly into the big lever, which shatters and then reforms as a big revel. It's the entirety of a party in true Gatsby style: dancers doing the Charleston, the orchestra to play the music, the waiters to circulate the canapes, some sculptures, a fountain or two, a fireworks display.

Unfortunately, the revel is more than big enough to bury [us] under its bulk.";
	abide by the game-ending rule.

Check shooting the shred with the loaded anagramming gun:
	say "The gun fires ruggedly into the shred, which shatters and then reforms as a herd. Cows, goats, and sheep, all mingled together and furious to be thus manifested without a shepherd.

Something spooks the herds [--] not surprising, as there is scarcely enough room here for them to move. The cows try to go one direction, the goats another, and [we] [are] dragged underhoof.";
	end the story saying "That was unwise";
	stop the action.

Check shooting a tram with the loaded anagramming gun:
	say "The gun fires ruggedly into the tram, which shatters and then reforms as a mart. One of those small markets selling mostly convenience foods and things that don't spoil quickly.

Unfortunately, the mart is more than sufficient to bury [us] under its bulk.";
	abide by the game-ending rule.

Check shooting the wall socket with the loaded anagramming gun:
	say "The gun fires ruggedly into the wall socket, which shatters and then reforms as the slack towel. Not easy to tell from any other towel, though an argument could be made that it's especially limp and lacking in pile.

Unfortunately, having the towel swapped in for an electrical component starts a small fire, which soon sets off the alarms in the area.";
	end the story saying "That could have gone quite a lot better";
	stop the action.

[Cryptolock bucket]

After inserting the ass into the cryptolock when hardness is true and the cryptoswitch is switched on:
	cryptolock-refuse "zoo" instead.

After inserting the dog into the cryptolock when hardness is false and the cryptoswitch is switched on:
	cryptolock-refuse "dig" instead.

After inserting the pose into the cryptolock when hardness is false and the cryptoswitch is switched on:
	cryptolock-refuse "pisa" instead.

After inserting a tint into the cryptolock when hardness is true and the cryptoswitch is switched on:
	cryptolock-refuse "ohio" instead.

After inserting a tin-can into the cryptolock when hardness is false and the cryptoswitch is switched off:
	cryptolock-refuse "ton" instead.

After inserting a tan into the cryptolock when hardness is false and the cryptoswitch is switched on:
	cryptolock-refuse "tun" instead.

After inserting the band into the cryptolock when hardness is false and the cryptoswitch is switched on:
	cryptolock-refuse "bund" instead.

After inserting the bond into the cryptolock when hardness is false and the cryptoswitch is switched off:
	cryptolock-refuse "bund" instead.

After inserting the ball into the cryptolock when hardness is false and the cryptoswitch is switched on:
	cryptolock-refuse "bull" instead.

To cryptolock-refuse (X - some text):
	say "There is a churning noise from within [the cryptolock] and '[X]' appears in letters of vivid purple smoke. Then additional letters read 'SAFETY OVERRIDE.' The smoke dissipates without result."

[Synthesizer and programmable dais, set to synthesize]

The synthesis-override rules are an object-based rulebook.

The-other-thing is a thing that varies.
Object-name is some text that varies.

A synthesis-override rule for the roll:
	if the-other-thing is the rock:
		say "You can't get to rock & roll with just a synthes[ize]r. You'd need an ampersand generator, which unfortunately (despite promising research and a prototype resembling a pretzel-maker) has yet to achieve stable results.";
		the rule fails.

A synthesis-override rule for the sill:
	if the-other-thing is the cate:
		say "It feels like [we] ought to be close to getting a silicate out of all this, but no, I fear not. That final L on SILL is going nowhere.";
		the rule fails.

A synthesis-override rule for the key-lime:
	if the-other-thing is a pi-object:
		say "What, are you hoping for key lime π? I'm afraid the synthes[ize]r is literal-minded and doesn't do puns as such.";
		the rule fails.

A synthesis-override rule for the i-pan:
	if the-other-thing is the ear:
		say "That Indian soft cheese is called paneer, you know, not panear.";
		the rule fails.

A synthesis-override rule for a ram:
	if the-other-thing is a part:
		now object-name is "RAMPART";
		abide by the location-check rule;
		say "The programmable dais glows vibrant blue for five seconds, leaving behind a rampart. A mass of earthwork and stone.

Unfortunately, the rampart is more than sufficient to bury [us] under its bulk.";
		abide by the game-ending rule.

A synthesis-override rule for the cock:
	if the-other-thing is a pit or the-other-thing is the pit-items or the-other-thing is the alterna-pits:
		if the-other-thing is a pit:
			now object-name is "COCKPIT";
			abide by the location-check rule;
			say "The programmable dais glows vibrant blue for five seconds, leaving behind a cockpit. It's a tiny room lined on every surface with buttons and instrument readouts and warning signs, altimeters and radios and all sorts of other gadgets I don't recognize.

Unfortunately, the cockpit is more than sufficient to bury [us] under its bulk.";
		otherwise:
			now object-name is "COCKPITS";
			abide by the location-check rule;
			say "The programmable dais glows vibrant blue for five seconds, leaving behind some cockpits. It's a number of tiny rooms lined on every surface with buttons and instrument readouts and warning signs, altimeters and radios and all sorts of other gadgets I don't recognize.

Unfortunately, the cockpits are more than sufficient to bury [us] under their bulk.";
		abide by the game-ending rule.

A synthesis-override rule for a cat:
	if the-other-thing is the members:
		now object-name is "CAMEMBERTS";
		abide by the location-check rule;
		say "The programmable dais glows vibrant blue for five seconds, leaving behind some camemberts. A whole stack of French camembert, which would be convenient if we were opening a black market deli, but may be hard to explain under other circumstances. Also not terribly portable.

Unfortunately, the camemberts are more than sufficient to bury [us] under their bulk.";
		abide by the game-ending rule.

A synthesis-override rule for a cot:
	if the-other-thing is the ass:
		now object-name is "COASTS";
		abide by the location-check rule;
		say "The programmable dais glows vibrant blue for five seconds, leaving behind some coasts. A vast rocky coastline too large to fit in the present confines.

Unfortunately, the coasts are more than sufficient to bury [us] under their bulk.";
		abide by the game-ending rule.

A synthesis-override rule for the arc:
	if the-other-thing is the tic:
		now object-name is "ARCTIC";
		abide by the location-check rule;
		say "The programmable dais glows vibrant blue for five seconds, leaving behind an arctic. Enormous, frozen plains graced only by the occasional caribou, polar bear, and oil rig.

Unfortunately, the arctic is more than sufficient to bury [us] under its bulk";
		abide by the game-ending rule.

This is the location-check rule:
	if the location is the Language Studies Seminar Room:
		say "An indicator message lights up: OVERRIDE: GENERATED OBJECT [object-name] EXCEEDS MAXIMUM SIZE LIMIT.";
		the rule fails;

This is the game-ending rule:
	end the story saying "That could have gone better";
	the rule fails.

Safety Overrides and Disasters ends here.
