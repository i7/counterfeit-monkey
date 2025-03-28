Act V Atlantida Herself by Counterfeit Monkey begins here.

Use authorial modesty.


Book 5 - Act V Atlantida Herself

Part 1 - In the Depths of the Bureau

[This is where we've been headed all game long: into the secrets of the Bureau, which is absurd, chaotic, and obscenely powerful.]

Chapter 1 - Storage and Secrets

Section 1 - Display Reloading Room

[ The Display Reloading Room is meant to deliver the anagramming gun to the eager player (after some earlier hints that we'd never get our hands on it). It also provides a kind of link back to the world of normal people even though the PC has now wandered into a situation where she is isolated and beyond help. The television shows the reactions of the ordinary security guards and tourists upstairs, who have a very different relationship to the items on display than the player does.

At the same time, we want to discourage the player from thinking that there is something to be won by trying to communicate with those back upstairs. So while the tourists are shown to have reactions to certain types of item, they remain on a tight cycle and can't be broken out of their basic behavior.]

Display Reloading Room is south of Equipment Archive. It is indoors, improper-named, forbidden and southern. The description is "This area [if the display-platform is not in the location]is more or less empty. [Hazard-tape] marks off an area of the floor to indicate that [we] shouldn't stand there[otherwise]is mostly taken up with the [display-platform] descended from the room above[end if]."

A tv monitor is a fixed in place device in the Display Reloading Room. It is switched on. Understand "black" or "white" or "black and white" or "television" or "security" as the tv monitor. The initial appearance is "A black and white [tv monitor] is embedded in the wall."

Rule for writing a topic sentence about the tv monitor:
	say "[initial appearance of tv monitor] [description of the tv monitor] [run paragraph on]".

Instead of switching off the tv monitor:
	say "There's no switch."

Instead of listening to the tv monitor:
	say "There is no sound pickup."

Instead of examining the tv monitor:
	say tv description;
	say paragraph break.

Definition: a thing is display-foreign:
	if it is the etymological reversing chamber:
		no;
	if it is the anagramming gun:
		no;
	if it is the model t:
		no;
	yes.

To say tv description:
	say "[one of]It is showing images of the Tools Exhibit upstairs, one of the few parts of the Bureau open to the public[or][We] have another look at what is going on up in the Tools Exhibit[stopping]. ";
	if the display-platform is in the display case:
		say "[one of][tourist-face][or]A small child is gawking at [the random thing on the display-platform][or]The room appears to be temporarily empty of guests[or][fake-incident][cycling].[no line break]";
	otherwise:
		say "[one of]Some tourists are frowning at the blacked-out display case[or]One of the tourists upstairs taps the blacked-out display case in irritation[or]The tourists are gathered in an angry cluster, pointing at a guidebook and waving their arms at each other[or]A security guard strolls into the room. The tourists round on him and wave their arms. Their mouths are moving and they point vehemently at the display[or]The security guard is holding his hands up placatingly[or]The largest and heftiest of the tourists is leaning forward and yelling at the security guard[or]The largest and heftiest of the tourists is in the midst of being arrested[or]The tourists are all gone and the room is empty, with only the blacked out case visible[stopping].[no line break]";

To say fake-incident:
	if a display-foreign thing is on the display-platform:
		say "[one of]The security guard on his rounds notices [the list of display-foreign things *in the display-platform]. He gets out a pad of paper as though to write up an incident report, but makes a gesture that even through closed circuit recording reads plainly as Inability To Be Bothered, and strolls away again[or]The security guard from before enters the room, looks at his watch, and heartily ignores [the list of display-foreign things *in the display-platform][or]This time when a security guard comes into the room, it's a different one from previously. He goes over to the display case and frowns at [the list of display-foreign things *in the display-platform]. Then he talks to someone on his radio[or]Two security guards enter the room and look into the display case. They appear to be having a vehement argument about what to do[or]Two security guards are talking to a manager about the situation in the display case[or]A manager is taking notes about the display-case disturbance[or]Some All-Purpose Officers are taking depositions and someone is photographing [the list of display-foreign things *in the display-platform][stopping]";
	otherwise:
		say "[one of]A security guard pokes his head into the room, decides all is well, and strolls away again[or]The security guard returns for another pass through the area[or][We] get another view of the security guard's balding head as he takes a turn around the room[or]The security guard is in the middle of checking the place out again[stopping]".

To say tourist-face:
	if a display-foreign thing (called distraction) is on the display-platform:
		if the distraction is naughty-sounding:
			say "A family notices [the distraction] and the mother covers her daughter's eyes, frog-marching them both out. The father is left behind to gawk in peace";
		otherwise if the distraction is illegal:
			say "A female couple come in, notice [the distraction], and hold a short whispered conversation. They then turn and look at the security camera, look at each other, and walk briskly out again";
		otherwise if the distraction is an animal:
			say "A small boy taps on the glass, trying to get the attention of [the distraction]";
		otherwise if the distraction is edible:
			say "A little girl presses her face to the glass near [the distraction] and then [--] this is clearly visible from the camera [--] [i]licks the glass[/i]. Rather startled parents call her away";
		otherwise:
			say "Tourists are looking at [the distraction] in some confusion";
	otherwise:
		say "[Random-passerby] is gazing curiously at [the random thing on the display-platform]";

A hazard-tape is scenery in the Display Reloading Room. The description is "It's striped yellow and red, and describes an area on the floor. Come to that, there's an area in the ceiling immediately above the hazard tape that looks separate from the rest of the ceiling." The indefinite article of the hazard-tape is "some". The printed name of the hazard-tape is "[if looking]Hazard[otherwise]hazard[end if] tape". Understand "hazard tape" as the hazard-tape. Understand "tape" as the hazard-tape when the tape is marked invisible.

A small black push-button is fixed in place in the Display Reloading Room. The initial appearance is "There is [an item described] on the wall." Understand "button" or "push button" as the push-button. The description is "It is unlabeled."

Does the player mean pushing the small black push-button:
	it is very likely.

Instead of pushing the small black push-button:
	if the display-platform is in the location:
		if an essential thing (called essential item) is enclosed by the display-platform:
			say "Best not to part with [the list of essential things enclosed by the display-platform]." instead;
		raise the display;
	otherwise:
		lower the display.

To lower the display:
	say "A heavy clunk sounds. On the [tv monitor], [we] see the display case black out.

Then there is a groaning of moving metal, and part of the ceiling lowers. [one of]This is, apparently, how displays are swapped out for the tools exhibit upstairs: the [display-platform] is lowering to our level, providing access[or]The [display-platform] descends again until level with the floor[stopping][if the display-platform is non-empty]. This brings [the list of things *in the display-platform] down into the room[end if].";
	now the display-platform is in the location.

To raise the display:
	say "There is a groaning of gears and hydraulics, and the [display-platform][if the display-platform is non-empty], loaded with [the list of things *in the display-platform],[end if] rises back up to the exhibit level.";
	now the display-platform is in the display case.

Table of Ultratests (continued)
topic	stuff	setting
"television"	{ armband, cock, cate, dove }	Display Reloading Room

Test television with "tutorial off / x television / x tv / g / g / g / g / g / g / g / press button / watch tv / g / g / g / g / g / g / g / put armband on platform / press button / watch tv / g / g / g / g / g / g / press button / get armband / put cock on platform / press button / x tv / g / g / g / g / g / g / g / press button / get cock / put dove on platform / press button / x tv / g / g / g / g / g / g / press button / put cate on platform / get dove / press button / x tv / g / g / g / g / g / g / g / g" [in the Display Reloading Room holding the armband and the cock and the cate and the dove.]

[It turned out to be possible to divest yourself of the anagramming gun (and thus be unprepared to face Atlantida) by returning it upstairs on the display platform. So we now check that nothing essential is on the platform before allowing it to rise.]

Test gun-taking with "tutorial off / press button / g / g / get gun / press button / g / put gun on platform / press button" in the Display Reloading Room.


Section 2 - Wonderland


Wonderland is north of Bureau Basement Secret Section. It is indoors, forbidden and southern. The description is "The [ridiculous décor] continues, now so extreme that I cannot even put a name to the things around us. They might as well be extrusions from a nightmare by Dali, or by Dr. Seuss. Offices are accessed by hatchways that seem to have come from submarines, or through passages resembling the sphincter of a great whale, or up ladders decorated with human teeth.

An open archway leads to storage space east of here."

The odor is a fixed in place thing in Wonderland. The printed name is "od[our]". The initial appearance is "Hanging in the air at the north end of the hallway is an [odor]." Understand "odour" as the odor.

Instead of examining the odor:
	try smelling the odor.

Sanity-check smelling the odor:
	say "I can't quite place it. There's definitely a smell, but what is it [i]like[/i]? Strawberries? Burning rubber? Freshly chopped chives? Every time I think I've pinned it, it goes again, sliding sideways to smell like something else." instead.

Sanity-check doing something when the odor must be touched:
	say "[We] can't actually touch [the odor], seeing as it is, in fact, just a vapor in the air, a dispersion of molecules dispersed through the rest of the local atmosphere." instead.

Instead of smelling Wonderland when the odor is in Wonderland:
	try smelling the odor.

Rule for listing exits while looking in Wonderland:
	do nothing instead.

Equipment Archive is east of Wonderland.

The ridiculous décor is scenery in Wonderland. Understand "hatchways" or "submarines" or "passages" or "sphincter" or "passage" or "hatch" or "hatchway" or "ladder" or "ladders" or "teeth" or "human" or "tooth" or "offices" or "whale" or "great" as the ridiculous décor. The description is "The name plaques identify such functions as 'North-End Meeting Room' and 'DCL Special Liaison,' but who knows whether the descriptions are remotely true. There is something very menacing about it all, as though one were going mad."

Instead of climbing the ridiculous décor:
	say "None of the passages are open."

Instead of entering the ridiculous décor:
	say "None of the passages are open."

Rule for distantly describing Wonderland:
	say "The hallway gets considerably stranger in that direction: you've only seen such places in movies. Or nightmares."

Report shooting the odor with the anagramming gun:
	say "The gun fires into the odor, which disperses. There's ripple in the air, and in its place [a detritus] [appear][if the detritus is not seen]. [run paragraph on][detritus description][end if]." instead.

Rule for printing the name of the odor while shooting the odor with the anagramming gun:
	say "odor".

Rule for printing the name of the odor while waving the letter-remover at the odor:
	say "odor".

Instead of going north in Wonderland when the secret-door is closed and the secret-door is seen:
	if the secret-door is marked-visible:
		say "[The secret-door] is not open.";
	otherwise:
		say "[The secret-door] is not here."

Section 3 - Equipment Archive

Equipment Archive is a room. It is indoors, improper-named, forbidden and southern. The description is "The [if boldening is true][bold type][end if]ceiling[roman type] is mirrored, perhaps to make it harder for anyone to sneak around without being noticed among the shelves."

A ceiling mirror is a mirror in the Equipment Archive.

Instead of shooting a mirror with the loaded anagramming gun:
	say "[We] fire the anagramming gun into [the noun]. The reflection at once converts the anagramming gun into an anagramming gnu.

The gnu stares around in confusion, its watery gaze temporarily dissolving everything it looks at, until at last it happens to catch its own reflection.

A moment later, the anagramming gun is merely a gun again.";
	record "Finn Rosehip award for gnu-hunting" as an achievement with break before.

Some equipment shelves are a supporter in Equipment Archive. The initial appearance is "[The shelves] here display an assortment of obsolete, broken, foreign, or otherwise unusual letter tools."

On the shelves are an accent flipper, an umlaut punch, a Catalan punt volat needle, some broken components, and some lamb-granulates.

Table of Ultratests (continued)
topic	stuff	setting
"flipperbug"	{ anagramming gun, tub }	Equipment Archive

Test flipperbug with "tutorial off / autoupgrade / open tub / gel lamb granulates / load gun with bullets / shoot flipper / shoot cap" [holding the anagramming gun and the tub in the Equipment Archive.]

The description of the lamb-granulates is "They're tiny brown beads used to make lamb-stock gravy. Perhaps they're left-over military rations of some kind." The printed name of the lamb-granulates is "lamb granulates". Understand "lamb granulates" or "gravy" or "lamb" or "granulates" or "lamb granulates" as the lamb-granulates. The lamb-granulates are plural-named.

The description of the accent flipper is "Not an Atlantean product at all, but a machine built by the state-subsid[ize]d French company Aigu. Its sole purpose is to convert accents or remove them entirely, not a function that much applies to English words. In form, it looks like a very small spatula connected by wire to a substantial battery pack." The heft of the accent flipper is 5.
	The introduction of the accent flipper is "You've heard of the congrès / congres scandal. One of these was responsible."

Test flipper with "look" in the Equipment Archive.

The description of the broken components is "A heap of parts from old machines: cranks, gears, buttons with letters and numbers on them, delicate hoops of silver wire, knobs from which all the markers have worn away." Understand "parts" or "heap" or "old machines" or "cranks" or "gears" or "buttons" or "delicate" or "hoops" or "silver" or "wire" or "knobs" or "crank" or "gear" or "button" or "hoop" as the broken components.

Instead of facing up in Equipment Archive:
	say "The whole ceiling is mirrored. [run paragraph on]";
	try examining the ceiling mirror.

Rule for listing exits while looking in Equipment Archive:
	say "The functional area continues to the south, and the hallway is west."


Chapter 2 - Through the ODOR DOOR

Section 1 - Oracle Project

The Oracle Project is a room [north of Wonderland]. It is indoors and forbidden. The description is "This is nothing less than the command cen[ter] for a massive propaganda campaign. [Paintings] of Atlantida and [polling charts] cover the walls, dating back to the second world war and continuing straight through to the present."

Rule for printing the name of the paintings while looking:
	say "Paintings".

The Oracle Project contains a long table. The long table is scenery. On the long table is a paperweight. The description of the paperweight is "Blue and white strands are swirled through the heavy, lens-like hunk of clear glass."

Index map with the Oracle Project mapped north of Wonderland.

Some polling charts are scenery in Oracle Project. The description is "Blue lines on the charts record the citizen responses to the concept of Atlantida. They record wartime progress in establishing the concept in the popular imagination, with a spike in 1942, corresponding to a heavy press of propaganda.

After the war, there's a break in the charts until 1951, when tracking resumes. Additional spikes appear at 1968 and 1972.

Each chart also shows a yellow line, which roughly goes down as the blue line goes up. It is labeled 'Power to generate animate abstract.' The yellow line stops at 1982 and no further points are recorded on it."

The inciting fable is on the long table. The description is "It's a short children's tale, with illustrations. A young boy was left an orphan in a certain village. So he went door to door around the village, but none of the families would take him in, all having some excuse: there were too many children already, the house was too small, there was not enough food, the parents were too old for a new child, and so on.[paragraph break]Despondent, the boy was on the verge of giving up when a magician came to town. He went around door to door with the boy a second time, this time asking each household for just one letter. When he was done, he used a powerful machine on the letters in his bag, and transformed them into a LOVING FAMILY![paragraph break](The text ends here, but the illustration shows the boy beaming in the arms of a manufactured mother, father, siblings, hamster, and goldfish.)"

Some paintings are scenery in Oracle Project. The description is "The paintings are old, 19th-century affairs, and they show Atlantida larger than life, typically wearing blue, with a sort of French academy face and bare feet. The squid is a frequent motif in the background, as it represents inventiveness, strength, and the ability to try many things at once."



Section 2 - Surveillance Room

[The surveillance room looks both forward and back in the story. It shows us a little of what's to come, and also lets us see what's happened to some of the characters from earlier on, providing something of a summary of recent events.

Design-wise, we need to be careful here. On the one hand, we want to extend a bit the time between the player realizing that Atlantida exists and his encounter with her; and build up a sense of menace around her. At the same time, there's a risk of diluting things *too* much or giving the player too many things to read and research, as opposed to things to do and manipulate.

The surveillance room description is intentionally kept very brief as a partial balance to this: there's not much to see because we're going to be focused on the computer screen, which contains lots of information.]

The Surveillance Room is east of the Oracle Project. It is indoors.

The surveillance computer is a desktop computer in the Surveillance Room. It is fixed in place. The initial appearance is "A [surveillance computer] is mounted on the wall, an impressive flat screen readout[if the surveillance computer is switched on] displaying current activity[otherwise] presently blacked out[end if]." The surveillance computer is switched on.
	The description of the surveillance computer is "Below the flat screen are a keyboard and mouse, both shiny silver. Only top of the line equipment down here, it seems."

Understand "flat" or "screen" or "readout" as the surveillance computer's screen. The description of the surveillance computer's screen is "It is bigger than my parent's television, and that is saying something."

A ranking rule for the surveillance computer: increase description-rank of the surveillance computer by 50.

[Here we nab something straight out of the Computers documentation: a computer with a multiple-choice operating system and a range of subprograms.

The sense we want to convey here is the sense of being the spider at the center of the web: the person using this computer has access to a huge range of information, a view of the whole Bureau and parts of the city.]

The surveillance computer runs a multiple-choice program called PCOS. PCOS is privately-named. The options table of PCOS is the Table of GUI Options.
		The software priority of PCOS is 1.

Table of GUI Options
topic	title (a text)	effect (a rule)
"security/cameras/surveillance/camera/program" or "security cameras"	"Security Cameras"	open-security rule
"power/grid" or "power grid"	"Power Grid"	power-grid rule
"requisitions"	"Requisitions"	requisitions rule
"access/records/record" or "access record/records"	"Access Records"	access rule

This is the access rule:
	say "This selection brings up on screen a database of 'Accesses.' Still visible for today's date is a record labeled Inquiry on Civic Unrest.";
	repeat with item running through software run by the surveillance computer:
		now the software priority of item is 5;
	now the software priority of access-database is 1;
	try examining access-database.

This is the requisitions rule:
	say "The screen brings up what appears to be a system for requisitioning and supply for this area. The recent entries are diverse and in some cases cryptic:

[fixed letter spacing] 34224 eBook order at request of Subject A details attached[line break]
34223 toys and diversions order at request of Subject A, children's jacks, balls, puzzles, games[line break]
34222 espresso beans for Subject A - previous order unacceptable see attached[line break]
34221 bakery requisition[line break]
34220 coffee beans resupply for Subject A[line break]
34219 berg resupply to boiler - previous supply melted - NB new supply is required even if not used[line break]
34218 rifle resupply for handlers for Subject A, new gel required as safety measure[variable letter spacing]

...and so on, scrolling back and back and back."

This is the power-grid rule:
	say "The screen flashes up a schematic of the entire Bureau [--] the public rooms we're familiar with, the basement, and the special section we're in now. It appears that three different power supplies feed these, one for the public areas and one, more heavily backed up, for most of the basement. Both of these are running.

A third power supply is located east of here, and [if the boiler is switched off]is currently shut down, leaving the eastern rooms dark[otherwise]is lit up like a Christmas tree with the tremendous amounts of power it's channeling[end if]."

This is the open-security rule:
	repeat with item running through software run by the surveillance computer:
		now the software priority of item is 5;
	now the software priority of security-program is 1;
	say "[We] select the surveillance program. It brings up a menu of possible camera views. [run paragraph on]";
	try examining security-program.

Understand "search [text]" or "search for [text]" as typing it on when a computer which runs a search engine is marked-visible.


Test surveillance with "x computer / x screen / turn on computer / select security / select statue / click customs / click front exit / type tools exhibit / type interrogation rooms circuit / g / g / g /click cold storage / click porch / click dwelling / click north exit / click main / select requisitions / select power / select access / look up me in computer / search for me / search for alexandra / search for andra / search for slango / search for protest / search for arbot / search for pleice / search for lena / search for reports"

Test survey with "test surveillance" in Surveillance Room.

The surveillance computer runs a search engine called access-database. The description of access-database is "[We] can type search terms to look for data records.". The data table of access-database is the Table of Access Data.

Table of Access Data
topic	title	data
"danger/violence/injury/threat/harm/incident/incidents/reports" or "incident reports/report" or "gel/rifle/restoration" or "restoration gel rifle"	"Incident Reports"	"Several records, filed in very dry language, record 'Subject A' throwing objects at or threatening those who have come for a consultation, especially when the consultation involves protests or the possibility of citizen referendum. Finally a more distant approach to interactions with Subject A is recommended."
"subject" or "a" or "subject a"	"[--]"	"By all appearances every entry concerns 'Subject A' in some way or other, so that wouldn't narrow things down much."
"radio" or "free" or "atlantis" or "radio free" or "radio free atlantis" or "lena"	"Radio Free Atlantis"	"'No subject contact. Subject A approved increase of budget for surveillance and proposed shutdown of Radio Free Atlantis on discovery of current culprits.'"
"inquiry" or "civil/civic/statue" or "protesters/protest/unrest/depluralization/dp/tank" or "into/about/on" or "dp tank" or "civil/civic unrest"	"Inquiry on Civic Unrest"	"The database records an inquiry by Julius Pleice, conducted mid-afternoon today. 'No direct subject contact, per previous incidents. Oracle consultation conducted through grill. Question concerned response to civic unrest. Subject recommended immediate action and deplural[ization] of protesters. Subject emphas[ize]d importance of preserving statue.'"
"squid/protest/protests/protesters/graffiti"	"Squid Protests"	"'No subject contact. Consultation concerning stenciled squid graffiti on public display. Subject recommended ingenious solution of converting to pig graffiti. All well.'"
"arbot/maps/antiques" or "arbot's" or "maps and antiques" or "maps & antiques"	"Arbot's Maps and Antiques Lic[ense]"	"'Lic[ense] supplied for Arbot's Maps and Antiques to acquire restricted materials on condition of surrendering any foreign-language maps of Atlantis for immediate rectification or disposal.'"
"arbot/pleice/shaply/champagne/jazz/canapes/squid/canape"	"Director Arbot's retirement party"	"'Social gathering in Subject A chambers. Champagne and hors d'oeuvres supplied per Subject A's request. Trad jazz. Subject A ate ten squid canapes and vomited in the antique Shaply vase. Director Arbot overindulged in champagne and became lachrymose. A driver was detailed to escort him home. Julius Pleice assigned to clean antique Shaply vase.'"
"synthesizer/synthesiser/synthesis/synthesizers/synthesisers/pleice/arbot" or "pleice/julius" or "mr" or "julius/mr pleice"	"Inquiry on Synthesis"	"'No subject contact. Subject A confirmed licensing rules for synthes[ize]rs. Subject A ordered additional experiments into long-term effects of human synthesis. Arbot registered protest. Subject A showed signs of agitation. Arbot also appeared distressed. Pleice volunteered to act as go-between with Subject A on this matter hereafter.'"
"anagramming gun" or "anagramming/gun" or "tools" or "exhibit" or "pleice/julius" or "mr" or "julius/mr pleice"	"Tools Exhibit Content Review"	"'No subject contact. Subject A confirmed intent to display anagramming gun among others. Pleice argued concern for public safety. A replied greater significance in demonstrating civic might. Pleice conceded.'"
"arbot" or "pleice/julius" or "mr" or "julius/mr pleice" or "promotion"	"Promotion Julius Pleice"	"'No subject contact. Subject A confirmed promotion of Julius Pleice to replace departing supervisor Arbot. Papers were submitted for written confirmation from Subject A.'"
"utopian/utopia/linguistics/language" or "linguistics"	"Utopian Linguistics Conference"	"'No subject contact. Question concerning support for Utopian Linguistics Conference. Subject A ruled to permit conference to proceed with intensive surveillance of all attending.'"
"university/school/scholarship/waterstone/linguistics/language"	"Inquiry on University Maintenance and Fees"	"'No subject contact. Question concerned university funding. Subject recommended preferential funding for those departments [']most likely to promote Atlantis['] pre-eminent standing and def[ense].['] List of departments submitted in paper form and approved by Subject A with three amendments as attached.'"
"andra/me/us/alexandra"	"[--]"	"There is no direct reference to you in here."
"you/us/alexandra/alex/rosehip" or "alex rosehip"	"[--]"	"There is no direct reference to me in here."
"dad/father/rosehip"	"[--]"	"A quick search turns up no access attempts by my father. It would seem he doesn't have access here, whatever that means."
"Atlantida"	"[--]"	"That name doesn't appear. At all."

The surveillance computer runs an multiple-choice program called security-program. Security-program is privately-named. The options table of security-program is the Table of Security Options.

Table of Security Options
topic	title	effect
"statue/roundabout"	"Statue"	statue rule
"customs/house/custom" or "custom/customs house"	"Customs House"	customs rule
"front exit" or "front/exit"	"Front Exit"	front rule
"tool/tools exhibit" or "exhibit" or "tool/tools"	"Tools Exhibit"	tools rule
"interrogation" or "rooms/room" or "circuit" or "interrogation rooms/room" or "interrogation rooms/room circuit"	"Interrogation Rooms Circuit"	interrogation rule
"cold storage" or "cold/storage"	"Cold Storage"	storage rule
"porch/subject/a" or "subject a" or "subject a porch"	"Subject A Porch"	tunnel-display rule
"dwelling/subject/a" or "space" or "dwelling space" or "subject a dwelling space" or "subject a dwelling"	"Subject A Dwelling Space"	static rule
"north exit" or "north/exit"	"North Exit"	perch rule

This is the customs rule:
	say "The screen shows the interior of the customs house, now barely populated thanks to the late hour. The camera is focused on the poster of wartime Atlantida. It looks perfectly ordinary and has suffered no defacement."

This is the statue rule:
	say "The view shifts to a shot at the Roundabout, with its Atlantida statue, taken apparently from some building across the road. The crowd from earlier is long gone, and there's no obvious sign of vandalism."

This is the storage rule:
	say "The screen shows the interior of the Cold Storage room. Nothing is moving in there."

This is the front rule:
	say "The screen shows the rotunda. [one of]One tourist is heading towards the front door[or]A security guard makes a slow round[or]A family of tourists passes through[or]A young blond man, probably about 20, stands looking up at the Rotunda surface, his lips moving[cycling]."

This is the interrogation rule:
	say "[one of]The screen shifts to displaying interrogation room A. [Higgate-behavior][or]The screen shifts to interrogation room B. [teen-behavior][or]The screen shifts to interrogation room C. [Brock-behavior][or]The screen shifts to interrogation room D. [stored-behavior][cycling].";

To say Higgate-behavior:
	say "[one of]Professor Higgate is standing next to a metal table. She is wearing her shirt, but for some reason her lower half is stripped to the underwear. She is speaking urgently to someone who is not shown[or]Professor Higgate is shaking her head at someone she is talking to[or]Professor Higgate is slumped over a metal table, motionless[or]A hand reaches across the screen and presents Higgate with a plastic cup of coffee. She takes a sip of the coffee, looks stricken, and spits it back into the cup[or]Professor Higgate is sitting at a metal table, grimly clutching the crushed remains of a plastic coffee cup[or]The room is empty[stopping]".

To say stored-behavior:
	if story viewpoint is first person singular or story viewpoint is first person plural:
		say "It's empty";
	otherwise:
		say "[one of]It's my father. He's been cuffed to a metal chair. Someone is sitting on the table and leaning towards him, but [we] can't see that person's face[or]Whoever-it-is is still talking to my father. It seems like it could be worse [--] maybe [--] but Father is still handcuffed[or]Father sits alone, cuffed to his chair. His interrogator has gone away for the moment[or]Father is sitting alone. He glances up at the camera, then back down at the table[or]My father is still alone in there[stopping]".

To say Brock-behavior:
	if story viewpoint is second person singular or story viewpoint is first person plural:
		say "It's empty";
	otherwise:
		say "Brock sits behind a metal table, not speaking, not moving, just as Slango taught you guys"

To say teen-behavior:
	if the teenagers are not in the Traffic Circle:
		say "It's empty";
	otherwise:
		say "[one of]The defiant teenager from earlier is sitting in a chair with her feet on the table. She makes an obscene gesture at her interrogator, then at the camera as well[or]There's a flash of light. The defiant teenager's chair has been replaced by a hair[or]An officer is bent over something on the floor[or]It's empty[stopping]".

This is the tools rule:
	say "The screen switches. [tv description][line break]".

This is the perch rule:
	if the Precarious Perch is visited:
		say "The camera shifts to the window outside Atlantida's window[if the tall window is open] (which is standing open as [we] left it)[end if] and a bit of cliff face.";
	otherwise:
		say "The camera shifts to show a bit of cliff overlooking the water. There's a window cut into the cliff face [--] that must be the exit in question[one of]. Is that a hint of movement behind the window? It's hard to be sure[or].

As we watch, a pale face appears at the window, too quickly to study, and then vanishes again[or][stopping]."

This is the static rule:
	say "Nothing shows but a steady field of static."

This is the tunnel-display rule:
	say "The camera shifts to show a dimly lit corridor cut through sedimentary rock[if Tunnel is visited][--] just below here, in fact[end if][if something portable is in the Tunnel]. [We] can make out [a list of portable things *in the Tunnel][end if]."

Software can be quittable. A software is usually not quittable. Security-program is quittable. Access-database is quittable.

A first input handling rule for quittable software (called chosen software):
	let N be "[the topic understood]";
	if N is "main":
		reset to operating system;
		say "[We] return to the operating system.";
		try examining PCOS;
		rule succeeds.

Carry out switching off the surveillance computer:
	reset to operating system.

To reset to operating system:
	repeat with item running through software run by the surveillance computer:
		now the software priority of item is 5;
	now the software priority of PCOS is 1;

After examining a quittable software (called chosen software):
	say "[We] can also select MAIN to return to the operating system."

Rule for listing exits when looking in Surveillance room:
	say "[if Workshop is visited]The Workshop[otherwise]Another room[end if] lies to the east. The door [we] came through is west, and there is also a spiral staircase down[if tunnel is visited] to the tunnel[end if]."

The spiral staircase is a down-staircase in Surveillance Room. It fronts down. The initial appearance is "A [spiral staircase] descends into a hole in the corner of the room, into what looks like a tunnel through natural rock."


Section 3 - Workshop

Workshop is east of Surveillance Room. Workshop is indoors, improper-named and forbidden. The description is "A room whose importance is obvious from how clean it is and how little furniture it is allowed to have."



[Rule for listing exits while looking in the Workshop:
	say "The Oracle Project is west and [if the Generator Room is unvisited]someplace even more industrial lies to the east[otherwise]the Generator Room east[end if]. A spiral staircase leads down into a dimmer place." ]


Section 4 - Generator Room

[This whole puzzle is a late-in-design addition. Originally the player went through the ODOR/DOOR and ran into Atlantida directly. But beta-testers felt that the process of getting to Atlantida was too easy and rapid, with insufficient build-up; there wasn't enough time to create apprehension. They also felt that the Bureau sequence was too linear. So we open things out a bit with a couple of puzzles that can be solved simultaneously: installing the power cord and getting the boiler working could happen in either order.

The imagery for this area is intentionally a bit first-person-shooterish, though I was thinking more Portal 2 than Half-Life. ]

The Generator Room is east of the Workshop. It is indoors and forbidden. The description is "The walls are lined with concrete. [Yellow paint lettering] says CAUTION: HIGH ENERGY EQUIPMENT and DO NOT OPERATE WITHOUT TRAINING."

The concrete-lining is scenery in the Generator Room. The printed name is "concrete lining". Understand "concrete" or "lining" or "walls" or "wall" as the concrete-lining. The description is "It's untreated grey concrete."

The yellow paint lettering is scenery in the Generator Room. The initial appearance is "CAUTION: HIGH ENERGY EQUIPMENT, it says. DO NOT OPERATE WITHOUT TRAINING. There is also a stenciled letter A surrounded by atom-style rings." Understand "stenciled" or "letter" or "letter a" or "atom-style" or "rings" or "ring" or "atom" as the yellow paint lettering.
	The printed name is "[if looking]Yellow[otherwise]yellow[end if] paint lettering".

The first aid station is in the Generator Room. It is fixed in place. The initial appearance is "[A first aid station] is built onto the wall[if the first aid station is open] and hangs open[otherwise]. It is closed[end if]." The first aid station is an openable closed container. The description of the first aid station is "It's a large box mounted to the wall, with a red cross painted on the front of it." Understand "large" or "box" or "red" or "cross" as the first aid station.

A ranking rule when the first aid station is mentionable:
	increase the description-rank of the first aid station by 10.

In the first aid station is a balm. The indefinite article of the balm is "some". The description of the balm is "According to the label, it is designed to relieve the pain of severe burns."


Instead of waving the letter-remover at the balm when the current setting of the letter-remover is "b":
	say "For a moment, just a moment, the balm starts to turn into an old-fashioned coin representing the concept of 'alm'; then it flickers out again uncertainly. Probably because 'alms' is not really a plural form and 'alm' is unattested in practice."


The boiler is a device in the Generator Room. It is fixed in place. The initial appearance is "Most of the room is taken up with a gigantic boiler installation[if the boiler is switched on] periodically giving off flashes of light and steam[otherwise] that is currently off[end if]. The locking mechanism is [a cryptolock][if the cryptolock is non-empty], currently containing [a list of things *in the cryptolock][otherwise], currently empty[end if]." It is switched off.

The description is "This frighteningly massive contraption has pipes and compression tanks and steam gauges and dents and rust stains[if switched on]. It trembles a little. The needles of the gauges twitch, but stay out of the red[otherwise]. All the gauge needles point to 0[end if]. A thick glass pane allows a view of one of the first chambers."

Understand "rust stains" or "stains" or "gauges" or "steam" or "power" or "generator" or "boilers" or "compression tanks" or "pipe" or "pipes" or "needles" or "large pipe" or "water" as the boiler.

Every turn when the location is Generator Room and the boiler is switched on:
	if the remainder after dividing turn count by 3 is 0:
		say "[one of]Light flashes[or]White light flashes[or]There's a particularly vibrant blue-white flash[or]There's a flash of light[or]Ice flashes into steam[or]A loud pfft! sounds[at random] [one of]within[or]inside[or]from within[or]in[at random] the boiler[one of] and[or] and all[or]. All[at random] the [one of]meters twitch[or]meter needles flicker into the red[or]steam gauge needles jump[at random][if a random chance of 1 in 3 succeeds] violently[end if]."

Instead of touching the boiler:
	if the boiler is switched on:
		say "The metal pipes are warm to the touch, and in a few places hot enough to scald.";
	otherwise:
		say "The pipes are mostly warm, except one running into the chamber which feels cool."

The thick-glass-pane is part of the boiler. Understand "thick" or "glass" or "pane" as the thick-glass-pane. The printed name is "thick glass pane".


Instead of examining the thick-glass-pane:
	try searching the thick-glass-pane.

Instead of searching the thick-glass-pane:
	if the boiler is switched off:
		say "Water lies stagnant inside a large pipe, and a metal rod points down towards the water.";
	otherwise:
		say "Water flows steadily through a large pipe. Floating on the surface of the water are bergs of ice; before they melt entirely, a zap from a b-remover converts them to ergs. Each time this happens, there is a flash of light and steam, and the pane of glass becomes temporarily too fogged up to see through. The steam gauge needles jump.

Gradually the passage of the water cools the pane down again."

Check an actor switching on the boiler:
	if the actor is not the player:
		stop the action;
	if the boiler is switched on:
		say "The boiler is already in operation." instead;
	otherwise:
		say "There is no obvious switch. They most likely keep this thing locked." instead.



Section 5 - Tunnel through Chalk

The Tunnel through Chalk is below Surveillance Room. Tunnel through Chalk is indoors, checkpoint and forbidden. The description is "This passage has been cut through natural cliff rock and looks older than the Bureau itself. The walls are rough-hewn, exposing [sedimentary strata]. Here and there it looks as though someone has actually excavated a fav[our]ed rock or relic."

In-direction of Tunnel through Chalk is east. [Personal apartment]

The sedimentary strata are scenery in the Tunnel through Chalk. The description is "Layers of slightly varying chalk col[our], some of which are embedded with tiny seashells and other fossil evidence." Understand "layers" or "chalk" or "seashells" or "tiny" or "shells" or "evidence" or "fossil evidence" as the sedimentary strata.

Every turn when the location is Tunnel through Chalk:
	if a random chance of 1 in 3 succeeds:
		say "[one of]The air stirs with a breeze from the east[or]A breeze along the passage stirs the dust[or]There's a faint tang of salt air[or]Something like the cry of a seagull comes down the passage[as decreasingly likely outcomes]."

Instead of smelling Tunnel through Chalk:
	say "The air does smell fresher here."

The upward-spiral staircase is an up-staircase in Tunnel through Chalk. It fronts up. The printed name of the upward-spiral staircase is "spiral staircase". Understand "spiral" as the upward-spiral staircase.

Understand "raise [portcullis]" or "lift [portcullis]" as opening.

The portcullis is a door. It is east of Tunnel through Chalk and west of Personal Apartment. The initial appearance is "[if the location is Tunnel through Chalk]Blocking the far end of the corridor is a metal [portcullis][otherwise]The metal [portcullis] guards the way back[end if]. [portcullis status]."
	The description of the portcullis is "Heavy black metal bars, left from a much earlier state. [portcullis status]."

To say portcullis status:
	say "It is currently [if the portcullis is open]raised[otherwise]lowered[end if][if the jack wedges the portcullis] a few feet by [a jack][end if][if the pulley is non-empty]. From the [pulley] above the portcullis hangs [a list of things *in the pulley][otherwise]. There's a [end if][if the pulley is empty and boldening is true][bold type][end if][if the pulley is empty]pulley and hook[roman type] arrangement above the portcullis, but the hook is empty[end if]".

Instead of searching the portcullis:
	if the player is in Tunnel through Chalk:
		say "Thanks to the angle of the tunnel, it's hard to see much of the room beyond, save that the rough rock walls have been paneled, and [we] can make out the edge of a desk or table, probably an old one. There's some source of natural light through there.";
	otherwise:
		say "The pulley mechanism is clearly visible but is on the far side of the bars."

The pulley is part of the portcullis. It is a supporter. Understand "rope" or "pulley" or "hook" as the pulley. The description of the pulley is "Rope runs from the top of the portcullis over pulleys and down to a hook. It looks like a contrivance to help open the portcullis."

Understand the command "hang" as "put".

Check putting the weight on the pulley:
	say "This weight isn't substantial enough, and also provides no loop or ring that would let it hang from the hook." instead.

Check putting an unhookable thing on the pulley:
	say "[The noun] [don't] fit on the hook." instead.

Definition: a thing is unhookable:
	if it is the counterweight:
		no;
	if it is the ordinary-counter:
		no;
	if it is floppy:
		no;
	yes.

[And to account for cases where you make an unhookable thing on the pulley via letter-manipulating something that was previously there:]

Every turn when (the location is Tunnel through Chalk or location is Personal Apartment) and something unhookable is on the pulley (this is the portcullis empty rule):
	if the pulley is marked-visible:
		say "[The list of unhookable things *in the pulley] [fall] to the ground.";
	now every unhookable thing on the pulley is in Tunnel through Chalk.

Sanity-check putting something on the portcullis:
	try putting the noun on the pulley instead.

Check putting something on the pulley when the pulley is non-empty:
	say "The hook can only really hold one thing at a time. [run paragraph on]";
	if the noun is unhookable:
		say paragraph break;
		stop the action;
	while something (called the current content) is on the pulley:
		try taking the current content;
		if the current content is on the pulley:
			stop the action.

Every turn when the portcullis is open and the counterweight is not on the pulley (this is the portcullis fall rule):
	unless something wedges the portcullis:
		now the portcullis is closed;
		if the portcullis is marked-visible:
			say "The portcullis crashes shut."

Check opening portcullis:
	if the counterweight is not on the pulley:
		say "[We] strain at the base of the gate, but the portcullis is much too heavy for [us] to lift unaided. [We] need some kind of mechanical advantage." instead.

Report putting something on the pulley:
	say "[We] hang [the noun] on the hook." instead.

Report putting the counterweight on the pulley:
	say "[We] hang [the noun] on the hook[if the portcullis is closed]. The portcullis shifts slightly but doesn't rise on its own. Perhaps with a little help, though[end if]." instead.

After putting the counterweight on the pulley when the jack wedges the portcullis:
	now the jack does not wedge the portcullis;
	say "[We] hang [the noun] on the hook, and the portcullis opens to its full extent, leaving the jack free."

Understand "use [jack] on [something]" as propping it with.

Check propping the portcullis with something which is not the jack:
	say "[The second noun] [are] not strong enough for such a heavy door." instead.

Sanity-check opening the portcullis when the player carries the jack:
	if the player is hurrying:
		say "[path-walked so far]There [we] try propping the portcullis with the jack.[paragraph break]";
		clear path-walked for player;
		increase path description count by 1;
	try propping the portcullis with the jack instead.

Sanity-check unlocking the portcullis with the jack:
	try propping the portcullis with the jack instead.

Report propping the portcullis with the jack:
	say "[We] slip [the jack] under the portcullis and raise it a few feet [--] enough for [us] to slip past." instead.

After deciding the scope of the player when the location is Personal Apartment or the location is Tunnel through Chalk:
	if the portcullis is wedged by something (called the impediment):
		place the impediment in scope.

Instead of pulling the pulley:
	if the portcullis is closed:
		if the counterweight is not on the pulley:
			say "Even pulling from above, [we] can't budge the portcullis. Some additional weight is required.";
		otherwise:
			try opening the portcullis;
	otherwise:
		say "The portcullis is already open and the counterweight nearly to the ground."

Instead of pulling something which is on the pulley:
	if the noun is the counterweight:
		try opening the portcullis;
	otherwise:
		try pulling the pulley.

Instead of pulling the portcullis:
	if the portcullis is closed:
		try opening the portcullis;
	otherwise:
		try closing the portcullis.

[Nothing makes this explicit, but in addition to being part of the counterweight, the counter measures numbers of visits to the oracle in a given month. For the most part people do not open the portcullis and consult with Atlantida from the outside instead, as they are increasingly afraid of her.]

The ordinary-counter is on the pulley. The printed name of the ordinary-counter is "counter". The description of the ordinary-counter is "One of those devices with a press-button to increment a number, to assist with counting things like the number of people attending an event. There's also a loop to let the user wear it over one finger. The counter currently reads [counter-state of the ordinary-counter]." The ordinary-counter has a number called the counter-state. The counter-state of the ordinary-counter is 17.

Understand "press-button" or "button" as the ordinary-counter. Understand "counter" as the ordinary-counter. The ordinary-counter is wearable.

Instead of pushing the ordinary-counter:
	increase the counter-state of the ordinary-counter by 1;
	say "Click! The counter now reads [counter-state]."





Chapter 3 - Atlantida's Spaces

Section 1 - Personal Apartment


The Personal Apartment is a room. It is indoors, checkpoint, improper-named and forbidden. The description is "At a guess, this is a room hardly anyone ever visits, or even knows about. Though the ceiling and one wall are bare cave, the rest has been paneled and graciously decorated in the style of the end of the 18th century. [if the oil-paintings are in the location][Oil-paintings] on the walls depict great men and women of Atlantis gone by: Phyllida Shaply, Amelia Landison, Clarence Arbot, Jon Rosehip. [end if]An antique bed stands in the cen[ter] of the room."

atlantida-woman is a woman in the Personal Apartment. [She is on the fancy bed.] The printed name of atlantida-woman is "Atlantida". The description of atlantida-woman is "Her face is ageless, her eyes a piercing blue. She looks like Phyllida Shaply, our famous forebear, except that there is something ethereal and heroic about her as well."

Rule for listing exits while looking in Personal Apartment:
	say "Air and sunlight stream in from the east."

The inlaid desk is a desk in Personal Apartment. The description is "Very elegant and delicate."

A stack of files is on the inlaid desk. The description is "Even a quick look through the titles gives some idea. 'DCL Plausibility studies on a syllable-removing gun.' 'Economic impact study towards an S-inserter, with particular attention to factory closures and workforce reduction in the developing world.' 'Single-noun Targeted Bomb.' 'Popular Opinion Study Concerning Utopian Linguistics.' 'Monthly Counterintelligence Report on Progress towards Manipulation of Simplified Chinese Character Set.'

There are others like this, some thin, some fat with paperwork and sticky notes."

Instead of taking the stack of files:
	say "There are too many of them: they slide every which way."

Instead of searching the stack of files:
	say "They're full of alarming information, but there's no time now to memor[ize] everything."

A rubber stamp is a thing on the inlaid desk. The description is "It is made to stamp two words: ETHICAL VETO. The discol[our]ation shows it has indeed been used, though not, perhaps, very recently."

Understand "stamp [text]" as a mistake ("It seems unlikely that our tampering would go unnoticed.") when the rubber stamp is marked-visible.

The oil-paintings are scenery in Personal Apartment. They are plural-named. The printed name is "[if looking]Oil[otherwise]oil[end if] paintings". Understand "oil" or "painting" or "paintings" or "portraits" or "portrait" as the oil-paintings. The heft of the oil-paintings is 5. The description is "They look like originals. I have seen some of these portraits before, in books at school or in the museum, but was given to understand that they'd been stolen, leaving only photographs or replicas."

The oil-paintings can be stolen. The oil-paintings are not stolen.

A fancy bed is a clothed bed. It is scenery in Personal Apartment. The description of the fancy bed is "Draped in eau-de-Nil blankets, and tossed by a restless occupant." Understand "antique" as the fancy bed. The printed name of the fancy bed is "bed".

Understand "eau-de-Nil" or "eau" or "de" or "nil" as the fancy bed's blankets. The description of the fancy bed's blankets is "They're brocaded, worked with the great A of Anglophone Atlantis."

The description of the fancy bed's pillow is "Down, I'm sure."
The description of the fancy bed's sheets is "Pale and satiny, just a few shades lighter than the blankets."



[A bead is on the inlaid desk. The description of the bead is "It's a large, glass bead, beautifully patterned in blue and white and clear glass. But that does not explain its presence here."

Before putting gel on the bead:
	if the bead is not in the location:
		if the player does not carry the bead:
			try taking the bead;
		if the player carries the bead:
			try dropping the bead.

Report dropping the bead:
	say "[We] set the bead down on the [ground]." instead.

Before waving the letter-remover at the fancy bed when Phyllida is on the fancy bed:
	say "She sees what [we] [are] up to.";
	try atlantida-woman exiting. ]

Section 2 - Private Solarium

The Private Solarium is east of Personal Apartment. It is indoors, checkpoint and forbidden. It contains a coffee table and a chaise longue. The description of the coffee table is "Antique as well, most likely. It is the same handsome wood as the furnishings in the rest of the apartment."

In-direction of Private Solarium is west. [Back to personal apartment]
Out-direction of Private Solarium is north. [Out to precarious perch]

Rule for listing exits when looking in the Private Solarium:
	do nothing instead.

The coffee table is scenery. On the coffee table is a silver tray. On the silver tray are some jacks, a cloth napkin, some crumbs, and a dirty coffee cup. The silver tray is not fixed in place.

The description of the jacks is "A set of children's playing jacks[if the jacks are not handled and the jacks are on the silver tray]. They are lined up, with curious precision, into the letter A[end if]."

Rule for writing a topic sentence about the silver tray when the silver tray is on the coffee table:
	say "Left on [a coffee table] (as though waiting for maid service) is [a silver tray]. [run paragraph on]"

The chaise longue is a chair. The description of the chaise longue is "It implies afternoons of elegant indolence. Many of them." It is scenery. On it is an ebook reader.

The description of the silver tray is "Just matte enough to give no reflections, and stamped with a classical Atlantean pattern of overlapping olive branches and chard leaves."

The description of the cloth napkin is "Good linen in eau-de-nil, monogrammed with a large A, and smeared with a few smudges of honey." It is floppy and wearable. The heft of the cloth napkin is 1.

The description of the crumbs is "At a guess, they come from some sort of breakfast roll or pastry." The crumbs are edible. The heft of the crumbs is 1. Instead of taking the crumbs: say "[We] know they'll only make a mess."

The description of the dirty coffee cup is "The residual liquid in the bottom reveals that the person whose breakfast this was takes a small amount of milk and no sugar." The dirty coffee cup is a container. The carrying capacity of the dirty coffee cup is 1.

The description of the ebook reader is "An expensive recent model, silver-backed, with a glossy touch screen." The ebook reader is a computer. Book search is a search engine. The ebook runs book search. The data table of book search is the Table of Dull Data. Understand "list" or "list of books" as the ebook reader.

Understand "scroll [something]" as scrolling. Scrolling is an action applying to one thing. Check scrolling: say "I'm not sure how you can scroll [a noun]." instead.

Instead of scrolling the ebook reader:
	choose a random row in the Table of Dull Data;
	say "[We] scroll through a selection of [title entry]. [data entry][paragraph break]".

The description of Book search is "There is a long, scrolling list of books, with titles on economics, biography, linguistics, and history. A search bubble allows the user to search for specific genres or titles."

Table of Dull Data
topic	title	data
"history" or "wartime" or "operations" or "invention" or "atlantida" or "wartime operations" or "invention of atlantida" or "wartime operations and the invention of atlantida" or "Atlantis" or "mediterranean"	"history books" 	"The search finds some 72 titles, focused especially on Mediterranean cultures ancient and modern. The history of Atlantis, and the political history of the Bureau itself, are covered in a series of popular[izing] works. One book, 'Wartime Operations and the Invention of Atlantida,' has evidently been read through several times."
"linguistics" or "dcl" or "dental" or "consonants"	"linguistics books"	"The list is surprisingly thorough and even scholarly, showing a clear grasp of the major fields of linguistic manipulation theory. There are even a few PDFs of works that are not, to my knowledge, available to the public: they are private internal publications of Dental Consonants Limited. All in all, this would not be an unambitious reading list for a graduate student in a related field."
"biography" or "phyllida" or "shaply" or "marcus" or "aurelius" or "churchill" or "winston" or "margaret" or "thatcher" or "martin" or "luther" or "king" or "nelson" or "mandela"	"biographies"	"The collection includes four different biographies of Phyllida Shaply; numerous lives of her contemporaries; and then a bizarrely diverse coverage of saints and villains, ancient and recent figures. Marcus Aurelius appears, as do Winston Churchill and Margaret Thatcher, Martin Luther King and Nelson Mandela."
"economy/economics/macroeconomics"	"books on the economy"	"Several impressive-looking textbooks on macroeconomics are listed, though from the bookmarks it is clear that the owner has not been able to get all the way through them."

The tall window is a transparent door. The initial appearance is "A window in the north wall, cut out through the cliff face, gives a view of [if the current daytime is sunset]the ocean in fading sunlight[otherwise if the current daytime is evening]tranquil sea under a darkening sky[otherwise]brilliant sunlight and the hot sea[end if]." It is north of Private Solarium and south of the Precarious Perch.

The description of the tall window is "[if the tall window is open]The window stands open.[else]The window is closed.[end if]".

After examining the tall window, try searching the tall window.

Sanity-check unlocking keylessly the tall window when the tall window is locked:
		say "It's locked again. There's no way for [us] but forward from here." instead.

Rule for writing a paragraph about the tall window when the location is the Precarious Perch:
	if the tall window is open:
		say "The window in the cliff face opens onto the solarium to the south.";
	otherwise:
		say "It's hard to see through the tall window to the room behind: mostly it reflects the sea."

Instead of searching the tall window:
	if the player is in Precarious Perch:
		if atlantida-refreshed is in Private Solarium:
			say "Atlantida waves to us, then turns back to deal with any approaching guards.";
			now atlantida-refreshed is in the personal apartment;
		else:
			say "The room is there, to be sure, but no one is coming just yet.";
	otherwise:
		say "Through the window, there's a beautiful view of the sea; but further inspection also reveals a narrow strip of grassy ledge, really only just wide enough to stand on, before a steep descent over stones."

Check attacking the tall window with something:
	say "[The second noun] [bounce] harmlessly off the window glass. It must be artificially strengthened or something." instead.

Instead of climbing the tall window:
	try entering the tall window.

Instead of going through the closed tall window:
	say "The window is shut: you'd break the glass."


Official Grounds is a region. The Antechamber, Rotunda, Tools Exhibit, All-Purpose Office, Bureau Hallway, Bureau Basement South, Bureau Basement Middle, Bureau Basement Secret Section, Wonderland, and Sensitive Equipment Testing Room, Equipment Archive, Cold Storage, Display Reloading Room, Workshop, Generator Room, Surveillance Room, and Oracle Project are in the Official Grounds.

The Antechamber, All-Purpose Office, Bureau Hallway, Bureau Basement South, Bureau Basement Middle, Bureau Basement Secret Section [, Wonderland, Display Reloading Room, Oracle Project, Workshop, Equipment Archive, and Cold Storage] are privately-controlled.

Report facing in Official Grounds when the location is Wonderland or the location is Basement Secret Section:
	if the noun is up or the noun is down:
		say "There are no obvious exits that way." instead;
	say "None of the doors in that direction look useful to us, and some of them look frightening." instead.




Part 2 - Final Departure

Chapter 1 - The Seaside

The distant-sea-view is a distant backdrop. It is fluid. It is in Customs Hallway, Precarious Perch, Old City Walls, Old Hexagonal Turret, and Crumbling Wall Face. The printed name is "distant sea". Understand "view of the sea" as the distant-sea-view. It screens north, northwest, and northeast. Understand "ocean" or "sea" or "waves" or "water" or "horizon" as the distant-sea-view. The description is "The water is quiet today [--] though it rarely achieves very impressive waves anyhow. The col[our] ranges from a bright Bureau blue close to shore to a deep lapis at the horizon."

The sea-view is a backdrop. It is fluid. It is in Abandoned Shore, Private Beach, and Open Sea. It screens north, northwest, and northeast. The printed name is "sea". Understand "view of the sea" as the sea-view. Understand "ocean" or "sea" or "waves" or "water" or "horizon" as the sea-view. The description is "[if the location is Open Sea]The seawater is pleasantly clear here: there's little turbulence to stir up muck, little seaweed.[otherwise if the location is nautical]The surface of the water glitters in the last light.[otherwise]The waves are low and gentle, little more than a wash of foam over the surface of the beach, like an emptied dishpan.[end if]".

Instead of listening to the sea-view:
	say "There's a gentle lapping of waves."

Instead of listening to a room in the presence of the sea-view:
	try listening to the sea-view.

Instead of putting something on the sea-view:
	say "That is not a good way to get rid of [the noun]."

Instead of inserting the funnel into the sea-view:
	try washing the funnel.

Instead of inserting something into the sea-view:
	say "That is not a good way to get rid of [the noun]."

Instead of washing something in the presence of the sea-view:
	say "Washing things in ocean water tends to leave them a bit gritty afterward, or even stained with rings of dried salt."

Instead of tasting or drinking or eating the sea-view:
	say "Seawater makes you sick, or didn't you know?"

Instead of smelling the sea-view:
	say "It smells faintly sea-weedy."

Instead of rubbing the sea-view:
	try touching the sea-view.

Report touching the sea-view:
	say "[We] dip our hand in the water and shake it dry. ";
	if the current daytime is:
		-- noon:
			say "The water is a little brisk: this morning was cooler." instead;
		-- early afternoon:
			say "The water is still cool, but not cold." instead;
		-- mid afternoon:
			say "The water is only a little cooler than the surrounding air." instead;
		-- late afternoon:
			say "The sea has taken a lot of sun over the course of the day, and is surprisingly warm." instead;
		-- sunset:
			say "The water is still warm with the retained heat of a very sunny day." instead;
		-- evening:
			say "The water retains the heat of a very sunny day, though the air is cooling quickly." instead;

Precarious Perch is a room. It is forbidden and checkpoint. The description is "From up here there's a handsome [if boldening is true][bold type][end if]view of the sea[roman type], which isn't [i]so[/i] far down [i]really[/i]. But it's a scramble down a nearly sheer cliff for the first bit, until [we] make it down to the rockfall below, and it would be easy for a careless person to injure herself."

In-direction of Precarious Perch is south. [Back into private solarium]

Rule for listing exits while looking in Precarious Perch:
	do nothing instead.

Instead of jumping in Precarious Perch:
	say "You give a sudden, mad spring before I can clamp down on the impulse, and then [we] [are] in mid-air and I can see the boulders below and time seems to be going very slowly

until it isn't.";
	end the story saying "[We] wake up four days later in hospital with one leg paralyzed".

Rule for distantly describing Abandoned Shore when the location is Precarious Perch:
	say "[one of]If [we] lean out over the cliff, [we] can see that there is a way down, awkward but navigable, to a small bit of sheltered shore below[if the kayak is in abandoned shore]. There even appears to be a kayak down there, though [we] can't get a good look for very long without the vertigo kicking in. So I pull back from that position. Still, it doesn't look hopeless[end if][or][We] lean out again and get another glimpse of sand and rocks[if the kayak is in abandoned shore] and kayak[end if][stopping]." instead.

After going down from Precarious Perch:
	let N be the number of entries in the path so far of the player;
	if N is greater than 1:
		say "[path-walked so far]";
	otherwise:
		clear the path-walked for the player;
	say "It's a nasty business lowering ourselves over the edge, with little to hold onto up here; scrabbling around with our toes for good holds; letting go with one hand to descend a little further...

But after some minutes of this painstaking process the cliff begins to slope outward more, and it's no longer a question of climbing down a face, but rather of scrambling down over boulders. And then... [command clarification break]";
	continue the action.

Instead of going up in Abandoned Shore:
	say "[We] doubt whether [we] would make the return trip. It was bad enough coming down."

Instead of going north in Abandoned Shore when the player is not in the kayak:
	say "[We] have too far to go; just swimming won't get [us] out to Slango's yacht."

Abandoned Shore is below Precarious Perch. It is forbidden, improper-named and checkpoint. The description is "There's a little inlet of shore here, mostly boulders with little sand, completely cut off from the dock area and sheltered by the curve of the rock so that it wouldn't be visible from the sea unless someone were very close in."

Some boulders are scenery in Abandoned Shore. Understand "crack" or "rocks" or "boulder" as the boulders. The description is "Rough black rock, the kind that tears up your hands if you try to hold onto it too tightly."

Some tidal pools are scenery in Abandoned Shore. The description is "Pools of seawater no more than a foot or two deep, temporarily cut off from the rest of the ocean."

Instead of climbing the boulders:
	say "While it might be possible to scramble up over the curve of rock and get a glimpse of the harbor, there's an equally good possibility that doing so would get [me] undesirable attention."

The non-sand is scenery in Abandoned Shore. The printed name is "boulders". The non-sand is privately-named. Understand "sand" as the non-sand.

Sanity-check doing something when the noun is non-sand or the second noun is non-sand:
	say "There's very little sand here, just boulders." instead.

[Carry out examining the boulders when the squid is not seen:
	move the squid to the location;
Report examining the boulders when the squid is not seen:
	say "[A squid] has died and washed ashore in a crack of the boulders."]

[Originally, the squid here was dead and just a body washed ashore -- long before the squid became prevalent imagery in the rest of the game. But once that imagery was in place, it seemed kind of weird and depressing to have a dead squid there, so this was replaced with a different description.]

A squid is an animal on the boulders. The initial appearance is "There is a [squid] in the tidal pools among [the boulders]." The description of a squid is "A squid, washed into a tidal pool, but not damaged. When the tide comes back in, it will be free to go."

Sanity-check saying hello to the squid:
	say "[one of]One tentacle waves back. It is probably a coincidence[or]I'm not even sure squid can hear. At any rate there is no response[stopping]." instead.

Instead of taking the squid:
	say "When [we] reach into the pool for it, it hangs onto the underlying rocks with all its strength and cannot be extracted."

Instead of smelling the squid:
	say "As it's underwater, any natural scent the squid may exude is trapped and does not reach our nostrils."

Instead of tasting or eating the squid:
	say "It's still alive. And while we're on the topic, raw squid meat is chewy, slippery white stuff, and doesn't agree with me."

Instead of touching the squid:
	say "Its flesh is rubbery. It wraps one tentacle around our finger."

Rule for listing exits when looking in Abandoned Shore:
	do nothing instead.

The bollard is a fixed in place thing in Abandoned Shore. The initial appearance is "A [bollard] is bolted to one of the rocks, which is curious considering the otherwise unused and inaccessible look of the spot." Understand "bolt" or "bolted" as the bollard.
	The description is "A metal pole, painted all-weather green and bolted to a rock. Its ilk are used in more trafficked places for securing boats and so on; and indeed so is this one, despite the implausible setting."
	The heft of the bollard is 5.

The kayak is a vehicle in Abandoned Shore. The initial appearance is "An old but still serviceable [kayak] is drawn up[if the bollard is in the location and the shackles are part of the kayak] and firmly shackled to the bollard[otherwise] here[end if]."

The description of the kayak is "A green plastic boat, designed to be used by one person with a paddle or oar. [if the bollard is in the location and the shackles are part of the kayak]It's seaworthy, at least for reasonable distances, and shackled to the bollard for safety[otherwise]It looks seaworthy and ready to use[end if]."

Some shackles are part of the kayak. Understand "shackle" as the shackles. The description is "They're firmly attached and locked with a rusty lock that doesn't look inclined to open again any time this century. I really do compliment you folks['] approach to security."

Instead of going somewhere by kayak when the location is Abandoned Shore:
	try launching the kayak.

Understand "row [something]" as launching. Understand "launch [something]" as launching. Launching is an action applying to one thing.

Does the player mean launching the kayak:
	it is very likely.

Check launching:
	if the noun is not the kayak:
		say "[The noun] [aren't] susceptible to being launched." instead.

Check launching:
	if the shackles are part of the kayak and the bollard is in location:
		say "It's hard to launch the kayak while it's still shackled to the bollard." instead.

Check launching:
	if the player is not in the kayak:
		if the kayak is marked-visible:
			try entering the kayak;
			if the player is in the kayak:
				make no decision;
		say "That might work better from inside the kayak." instead.

Check launching:
	if the player does not carry the oar:
		if the the oar is marked-visible:
			try taking the oar;
			if the player carries the oar:
				make no decision;
		say "It would be helpful to have something to paddle with." instead.

[Check launching:
	if the player carries anything which is not the oar:
		say "Our hands are too full for rowing. [run paragraph on]";
		let worn-list be a list of things;
		let dropped-list be a list of things;
		repeat with item running through things carried by the player:
			if the item is not the oar:
				if the item is wearable:
					silently try wearing the item;
					if the player wears the item:
						add the item to the worn-list;
				otherwise:
					silently try dropping the item;
					if the player does not carry the item:
						add the item to the dropped-list;
		if the player carries anything which is not the oar:
			stop the action;
		otherwise:
			if the number of entries in the dropped-list is not 0 and the number of entries in the worn-list is not 0:
				say "[We] put down [dropped-list with definite articles] and don [worn-list with definite articles].";
			otherwise if the number of entries in the dropped-list is not 0:
				say "[We] put down [dropped-list with definite articles].";
			otherwise if the number of entries in the worn-list is not 0:
				say "[We] put down [worn-list with definite articles].";]

Carry out launching the kayak:
	move the kayak to the Open Sea.

Report launching the kayak:
	say "With some awkwardness, [we] manage to push off and begin to lab[our]iously row for open sea.";
	try looking.

Check facing in abandoned shore:
	if the noun is east or the noun is west:
		try facing south instead.

Report facing in Abandoned Shore:
	say "The charm of this place is that it's very hard to see anything in any direction but the ocean. In every other direction [we] are completely protected by rocks." instead.

Open Sea is north of the Abandoned Shore. It is forbidden, improper-named and checkpoint. The description is "The water stretches in all directions, but [we] can see off to the north where [viewed-yacht] is anchored, ready to bring [us] back aboard. Its metallic blue shape almost blends in with the water."
	The introduction is "If [we] were further around the island to the east, [we] might be able to see bits of the drowned city: both the buildings that were legitimately destroyed when the land sunk into the sea, and the areas where during the Civil Dispute of Standard[ization] the authorities dumped unwanted foreign archaeological [if the player is wearing britishizing goggles]artefact[otherwise]artifact[end if]s. But here I'm afraid it's just shellfish and sand down there."

Rule for listing exits when looking in the Open Sea:
	do nothing instead.

A description-concealing rule:
	if the location is the Open Sea:
		rapidly set all contents of the kayak not marked for listing.

The viewed-yacht is a distant, proper-named, privately-named scenery thing in Open Sea. Understand "slango's" or "yacht" as the viewed-yacht. The description is "It's just there on the horizon." The printed name is "Slango's yacht".

Instead of finding viewed-yacht:
	try going north.

Instead of going a direction which is not north when the location is Open Sea:
	say "[We][']ve got safety in sight, just to the north. Don't go all sea-crazed on me now."

Instead of launching the kayak in Open Sea:
	try going north instead.

Instead of exiting in Open Sea:
	say "Leaving the kayak at this juncture would only get [us] all wet. And [we]['re] too tired for that right now."

Instead of putting gel on the oar when the player is in the kayak and the location is Open Sea:
	say "It would be extremely inconvenient to lose the oar at this juncture."

Understand "drift" as waiting when the location is Open sea.

Instead of waiting when the player is in Open Sea:
	say "Rest for a moment if you insist, but the currents can be odd here; it would be better to make for the yacht and rest after [we] get there."

Beside Slango's Ship is north of Open Sea. It is checkpoint.

Instead of facing north in Open Sea:
	say "Slango's yacht is visible not too far off to the north. [We] can certainly make it."

Report facing in open sea:
	say "There is mostly ocean everywhere." instead.

After going to Beside Slango's Ship:
	let N be the number of entries in the path so far of the player;
	if N is greater than 1:
		say "[path-walked so far]";
	otherwise:
		clear the path-walked for the player;
	say "[We] come around to the aft of Slango's yacht and give a good shout. With the help of a ladder and a hand up from Slango himself, [we] soon have the kayak stored, and ourselves and our possessions on deck.[if N is greater than 1][paragraph break][end if]";
	now every other thing in the kayak is carried by the player;
	now the posture of the player is standing;
	now the oar is nowhere;
	if the roc is in Open Sea:
		move roc to Sunning Deck;
	set the current interlocutor to Slango;
	[queue where-is-Brock as immediate obligatory;]
	move the player to Sunning Deck, without printing a room description;
	follow the compass-drawing rule instead;

Chapter 2 - The Yacht

[Odds are that the average player won't see most of the detail on the yacht. That's okay with me; what I really wanted here was to give Andra a fully-fleshed home and background — after all, we've just been all over Alex's — so that if the player does choose to look at this stuff, it feels persuasive, rather than a half-hearted backdrop to the epilogue.

The discipline of building out the True Macaque forced me to think about what Andra and Brock's life had been like before: Brock has a separate romantic history; he and Andra don't share a cabin even though they're lovers, because they spent years living separately and still need some distance from one another; and the yacht is equipped for a certain amount of self-sufficiency so that the crew can work from anywhere in the Mediterranean.]

Section 1 - Nautical Directions

Test nautical with "tutorial off / fore / fore / aft / down" in Sunning Deck.

A room can be nautical or earthbound. A room is usually not nautical. A direction can be earthbound-directional or nautical-directional. A direction is usually earthbound-directional. Starboard, port, fore, aft, up, down, the inside and the outside are nautical-directional.

North, west, east, south, northwest, northeast, southwest, and southeast are earthbound-directional.

Rule for listing exits while looking in a nautical room:
	do nothing instead.

The starboard is a direction. The starboard has opposite port. Understand "sb" as starboard when the location is nautical.

The port is a direction. The port has opposite starboard. Understand "p" as port when the location is nautical.

The fore is a direction. The fore has opposite aft. Understand "f" as fore when the location is nautical.

The aft is a direction. The aft has opposite fore. Understand "a" or "af" as aft when the location is nautical.

The aft-port is a direction. The aft-port has opposite fore-starboard. It is nautical-directional. Understand "pa" or "ap" as aft-port when the location is nautical.

The aft-starboard is a direction. It is nautical-directional. The aft-starboard has opposite fore-port. Understand "sa" or "as" or "asb" as aft-starboard when the location is nautical.

The fore-port is a direction. It is nautical-directional. The fore-port has opposite aft-starboard. Understand "pf" or "fp" as fore-port when the location is nautical.

The fore-starboard is a direction. It is nautical-directional. The fore-starboard has opposite aft-port. Understand "sf" or "fs" or "fsb" as fore-starboard when the location is nautical.

Does the player mean going a nautical-directional direction when the location is nautical: it is very likely.

Index map with fore mapped as north. Index map with aft mapped as south. Index map with port mapped as west. Index map with starboard mapped as east.

Index map with fore-port mapped as northwest. Index map with aft-port mapped as southwest. Index map with fore-starboard mapped as northeast. Index map with aft-starboard mapped as southeast.

[Before going a nautical direction when the location is not nautical, say "Nautical directions can only be used on board ship."]

Check facing in a nautical room:
	if the noun is not nautical-directional:
		if the location is indoors:
			say "[We] can't really see outside well enough to look off in that direction." instead;
		say "No one appears to be approaching the ship or attempting to follow us, which is the main thing." instead.

Sanity-check going south in a nautical room:
	if subcommand of noun matches "s":
		try going starboard instead.

Sanity-check going an earthbound-directional direction in a nautical room:
	say "Compass directions make no sense on board ship, but you can use fore, aft, port, and starboard instead." instead.

After printing the name of a nautical room while looking:
	say "[roman type] (aboard the True Macaque)".

[The True Macaque is based on a blend of several yacht designs, but most of all on the '64 Wallypower' by Wally yachts of Monaco. I was looking for a design with the speed of a smuggling cigarette boat but the appearance of a luxury craft, and sufficient range to tool around non-trivial distances. This may still have been the wrong call, since I don't actually know more about yachts than I got off a website.

The yacht's name is obviously a riff on Counterfeit Monkey (Slango's reason for calling it that) but also a reference to the Squirrel Nut Zippers song Trou Macacq.]

[When play begins (this is the forbidding nautical rooms rule):
	now every nautical room is forbidden.]

Section 2 - Sunning Deck

The Sunning Deck is a nautical room. It is forbidden.
	The description is "[one of]This is a very fine boat: sleek, shiny, big... Oh, you don't like it when I put it that way, I see. All right then: a high-speed yacht, something luxurious enough that it looks like a rich man's toy to harbor officials, but it handles almost like a cigarette boat. [if the player wears the Britishizing goggles]Fibreglass[otherwise]Fiberglass[end if] hull, shaped in a deep V for racing, capable of 80 knots on a calm sea. Range of around 300 nautical miles, enough to take us past Gibraltar to Málaga or perhaps even Almeria.

This bit is the aft portion[or]This is the aft section of the deck[stopping], broad and flat and suitable for sunning oneself."


[This device is based on a broadband satellite equipment and service package offered by radio-marine.com.]

The communication unit is a fixed in place thing in the Sunning Deck. The initial appearance is "Fixed on the roof above the entry to the navigation area is a white object that looks a little like an igloo. It is the [communication unit] that handles the yacht's wifi connection." The description is "It provides broadband access from the yacht wherever you are, from Biarritz to Istanbul, for a mere thousand euros a month. Slango frequently comments on the iniquity of this fee, but it would be impossible to do your research and make deals without it." Understand "white object" or "white" or "igloo" or "wifi" or "wireless" or "connection" as the communication unit.

Rule for writing a topic sentence about a long thing when the location is Sunning Deck:
	if at least two long things are mentionable:
		say "[The list of mentionable long things] are stacked together here, for lack of more convenient storage spaces. ";
	otherwise:
		say "[The list of mentionable long things] lies on the deck because it doesn't fit a closet. ";

Section 3 - Navigation Area

The Navigation Area is fore from the Sunning Deck. It is nautical and forbidden. The description is "[if Slango is not on the command chair]A [command chair] waits at the [controls], a mass of buttons and levers and a tiny, low-mounted steering wheel that seems like an awfully small device to control such a high-powered machine. But I'll take your word that it works.[otherwise]Arrayed on the dashboard (is that even the right word?) is a mass of buttons and levers, and a tiny, low-mounted steering wheel.[end if]

The Galley is just below, [down] a steep staircase that is almost a ladder."

In-direction of Navigation Area is down. [Into galley]

Rule for writing a paragraph about Slango when Slango is on the Command Chair:
	say "Slango is in [the command chair]. He looks more relaxed driving the boat than I've ever seen him before."

The steep staircase top is a down-staircase. It is in the Navigation Area. It fronts down. The description is "The steps are taller than is really quite comfortable.". The printed name is "steep staircase". Understand "ladder" as the steep staircase top.

The steep staircase bottom is an up-staircase. It fronts up. It is in the Galley. The description is "The stairs ascend to the navigation area on deck." The printed name is "steep staircase". Understand "ladder" as the steep staircase bottom.

The command chair is an enterable scenery supporter in the Navigation Area. The description is "Cushioned for long use, and upholstered in some kind of specially-engineered UV-resistant leather."

The controls are scenery in the Navigation Area. Understand "mass" or "buttons" or "button" or "lever" or "levers" or "steering" or "wheel" as the controls. The description is "It's curious, looking at these and knowing I've never touched them before in my life, and yet having your instinctive muscular knowledge of what they're all for and how they work. I feel like I could sit down and drive the yacht, and at the same time I find the idea terrifying."

The Foredeck is fore from the Navigation Area. It is nautical and forbidden. The description is "Here the yacht is nothing but a nose over the water. A [hatch], hardly big enough for a portly person, descends into the so-called crew cabin."

In-direction of Foredeck is down. [Into crew cabin]

Some portholes are a kind of thing. Portholes are usually scenery. The description of the portholes is usually "Perhaps I should drop any attempt to sound nautical and just call them windows, because they are not the round things one normally thinks of. But they are waterproof and just above the water line." Understand "window" or "windows" or "porthole" or "portholes" as portholes. The printed name of portholes is always "portholes".

Instead of searching portholes:
	say "It's hard to get much of a view, just the glimmering and rolling of the water surface."

Instead of opening portholes:
	say "They don't open, sensibly enough."

Check waving the letter-remover at portholes when the current setting of the letter-remover is "s":
	say "We could, but the lighting is dim enough in here already." instead.

The hatch is above the Crew Cabin and below the Foredeck. It is a door. It is openable and closed. It is scenery. The description of the hatch is "Made of tinted glass so that it also doubles as a light source for the pathetic space below."

A yacht bed is a kind of clothed bed. Two drawers are part of every yacht bed.

Instead of looking under a yacht bed:
	say "Under [the noun] [is-are a list of drawers which are part of the noun]."

The pre-drawer rule is listed before the initialize drawers rule in the when play begins rules.

This is the pre-drawer rule:
	now every drawer which is part of a yacht bed is horizontal.

Section 4 - Crew Cabin

The Crew Cabin is a room. It is nautical and forbidden. It is indoors. The description is "It was meant to be mine, before we turned out to be inseparable. It's... Spartan. But I didn't pay for expensive accommodations. Oh, yes, and I can understand that it must be a bother for you to give up the storage space.

I'm fascinated to note what shape a bed can be when it's not rectangular. More sort of curved and tapering. Convenient if you're called on to house a mermaid.".

Out-direction of Crew Cabin is up. [Out to foredeck]

Instead of looking in Crew Cabin when the player is gelled:
	say "One upside to our continuing to share the same bodies: I don't have to try to sleep in that narrow tapery bed."

The misshapen bed is a yacht bed in the Crew Cabin. The description is "It is fitted into the curve of the yacht wall, which is strongly bent here, so that the foot of the bed is tapered and narrow." It is scenery.

Some tiny portholes are portholes. They are in the Crew Cabin.

Section 5 - Galley

The Galley is below the Navigation Area. It is nautical and forbidden. It is indoors. The description is "Smaller than the kitchen in a comfortable house, but carefully and elegantly fitted, with an electric stovetop, a convection oven/microwave, a tiny refrigerator, a sink: enough, in short, to serve the crew of three on long trips.[one of] I guess even a fairly big boat is still small on the inside, eh?[or][stopping]

There's even a little washing machine, for items too big to hand-wash in the sink.".

Out-direction of Galley is up. [Back up to navigation area]

A built-in table is scenery in the Galley. It is a supporter. The description is "When the weather is good and there is nothing urgent happening, you all often eat out on the sunning deck, which is more congenial; but at other times you take your meals down here, on this table. The seating is built-in.". Some seating is part of the built-in table. The seating is an enterable supporter. The seating allows seated. Understand "built-in seating" as the seating.

The galley cabinet is a scenery cabinet in the Galley.

The galley cabinet contains a bottle of ouzo and assorted staples. The description of the bottle of ouzo is "Left over from a job in Crete. It's been going slowly because Slango doesn't let anyone get drunk on [i]True Macaque[/i] and a single slug of this stuff is the upper limit."

The description of the assorted staples is "Various long-keeping foods, mostly cooked by Slango. You and Brock occasionally pitch in, but more frequently do the washing up instead. There's enough here to feed the three of you, frugally and without frills, for about a month and a half."

Some gameshelves are scenery in the Galley. The printed name is "built-in shelves". Understand "shelf" or "shelves" or "built-in" as the gameshelves.

On the gameshelves is a game-selection. Understand "games" or "game" or "battered" or "selection" or "selection of games" as the game-selection.

Rule for writing a paragraph about something which is on the gameshelves:
	say "On the port wall, built-in shelves hold [a list of things *in the gameshelves]."

The description of the game-selection is "Oh, all sorts: Boggle and Scrabble, which you always win and which therefore Brock and Slango only play when they're in a mood for cheering you up. Monopoly, dusty with disuse. Puerto Rico. Arkham Horror. It's surprising what even Brock will admit to being amused by in the course of a long evening at sea." The printed name of the game-selection is "battered selection of games".

[Arkham Horror is a game designed by G. Kevin Wilson, who also happens to be the originator of SPAG magazine and an enthusiastic contributor to the early IF community. It is also an incredibly detailed game with a bazillion pieces, and about as unsuitable for shipboard play as any boardgame could be.]

Understand "boggle" or "scrabble" or "monopoly" or "arkham" or "horror" or "puerto" or "rico" as the game-selection.

Instead of doing something other than examining when the noun is the game-selection or the second noun is the game-selection:
	if looking at the game-selection through something:
		continue the action;
	say "This doesn't seem to be a game-playing sort of occasion."


Some wide portholes are portholes. They are in the galley.

The washing machine is a closed openable scenery container in the Galley. The description is "It's efficient enough, but only works when plugged into water and power in a marina. It would be too draining to run off the yacht's resources in open sea. [paragraph break]Besides, you don't have a dryer, which means laundry has to be put up on a string above-decks, and that's not a practical thing to do when you might be having to make a fast get-away in the near future."

A refrigerator called a galley refrigerator is in the Galley.
	The printed name is "[if looking]refrigerator[otherwise]galley refrigerator[end if]".
	The description is "Like the other fittings of the kitchen, it's handsomely sleek with shiny black surfaces. An unnecessary frill, but it fits the bored-playboy-yachts-around-Mediterranean cover that Slango likes to put up. (Brock plays the lead role.)

The rest of the food is in the cabinet."

A stove called a galley stove is in the Galley. The description of the galley stove is "A perfectly smooth, easy-to-clean black surface with electric burners underneath."

[To avoid things being called "the galley sink galley sink's tap" and "the galley stove galley stove's switch"]
Before printing the name of a switch (called target) (this is the new switch identification rule):
	if the target is part of something (called fixture):
		unless the fixture is the galley stove or the fixture is the galley sink or the fixture is the galley stove's oven:
			say "[fixture] ".

The new switch identification rule is listed instead of the switch identification rule in the before printing the name rulebook.

A sink called a galley sink is in the Galley. The description of the galley sink is "Stainless steel, and very clean."

The multipurpose oven is fixed in place scenery in the Galley. It is an openable closed transparent container. Understand "convection" or "microwave" as the multipurpose oven. The description is "A versatile piece of machinery that can either microwave or convection-heat things. It's not terribly powerful at either task, but it suffices and moreover is very compact."

When play begins (this is the setting up the galley rule):
	let target be a random freezer compartment which is part of the Galley refrigerator;
	move the fig ice cream to the target;
	move the frozen dinners to the target;
	move the bottle of vodka to the target;
	let target oven be a random oven which is part of the Galley stove;
	now the target oven is nowhere. [because we want a special microwave/convection oven in there instead.]

A fig ice cream is a thing. The indefinite article is "some". The description is "Brock got this for a lark, but it turns out no one likes it."

Some frozen dinners are a thing. The description is "French frozen food, which I gather from your thoughts [--] obviously I've never tasted the stuff [--] is miles better than any other kind of frozen food, in the sense of actually tasting good."

A bottle of vodka is a thing. The description is "Half empty, typically drunk exclusively by Brock."

A jar of caviar is a thing. It is in the Galley refrigerator. The description is "Most of it is gone, used up in Brock's great crepes experiment of last weekend."

Instead of taking something which is in a freezer compartment when the location is the Galley:
	say "No one's hungry right now."

Instead of inserting something into a freezer compartment:
	say "There's no point in freezing [the noun]."

Section 6 - Brock's Stateroom

Brock's Stateroom is fore from the Galley. It is nautical and forbidden. It is indoors. The description is "Bigger than your bunk or Slango's, Brock's space takes the whole width of the yacht here, with windows out both sides, and a double bed.

The shape of hull in this part of the yacht means that the room is much narrower fore than aft, the walls sweeping grandly outward from the head of [Brock's bed]. It looks like the bed of Captain Horndog, Space Woman[ize]r. If you ask me."

Out-direction of Brock's Stateroom is aft. [Back to galley]

Brock's bed is a yacht bed in Brock's Stateroom. It is scenery. The description is "Brock affects a kind of ruffled bachelor style, which means that his bed is made but the blankets suggestively rumpled. It is an open question whether he rumples them himself on purpose."


When play begins (this is the setting up the linens rule):
	let N be random sheets which are [part of a bed in] enclosed by Brock's Stateroom;
	unless N is nothing:
		now the description of N is "Egyptian cotton, high thread count, dyed deep black. Whether this is part of the luxury look of the boat or a preference of Brock's is a question you've never felt like asking.";
	otherwise:
		say "ERROR: Found no sheets in Brock's Stateroom!";
	let N be random pillow which is [part of a bed in] enclosed by Brock's Stateroom;
	unless N is nothing:
		now the description of N is "Cased to match the sheets.";
	otherwise:
		say "ERROR: Found no pillow in Brock's Stateroom!";
	let N be random blanket which is [part of a bed in] enclosed by Brock's Stateroom;
	unless N is nothing:
		now the description of N is "Just a very light cashmere throw blanket. Takes rumples well.";
	otherwise:
		say "ERROR: Found no pillow in Brock's Stateroom!";
	let target drawer be a random leftmost drawer [which is part of a bed in] enclosed by Brock's Stateroom;
	move the expensive laptop to the target drawer;
	move the mess of cabling to the target drawer;
	let target drawer be a random rightmost drawer [which is part of a bed in] enclosed by Brock's Stateroom;
	move the DVDs to the target drawer.

Understand "blankets" as a blanket.

The expensive laptop is a laptop. The description is "It's Brock's fav[our]ite object in the whole world: glossy display, unibody aluminum shell, vast hard drive. He uses it to research jobs and set up contacts."

[Instead of doing something other than examining when the expensive laptop is the noun or the expensive laptop is the second noun:
	say "Brock would cut our fingers off. But it's password-protected anyway; we wouldn't even be able to play solitaire on it." ]

The expensive laptop is running a password-lock program called Brock's security.
	The password of Brock's security is "2!ch_nqrx@v".

An input handling rule for Brock's security (this is the fix broken password rule):
	let N be "[the topic understood]";
	if N matches the text "2 ch_nqrx@v":
		carry out the rewarding successful answering activity with Brock's security;
		rule succeeds;
	otherwise:
		abide by the check for correct passwords rule.

The expensive laptop is running a multiple-choice program called Brock-OS.
	The options table of Brock-OS is the Table of GUI Choices.

Table of GUI Choices
topic	title	effect
"photos/pictures/photographs" or "my" or "my photos"	"Photos"	photo-display rule
"games/game"	"Game"	game-display rule

This is the game-display rule:
	now computer-game-selection is part of the expensive laptop;
	say "Brock's game collection runs most strongly to very detailed simulation and strategy games: Crusader Kings, a couple of flight simulators, Realistic Tractors 2011 Edition."

The computer-game-selection is a scenery thing. Understand "games" or "game" or "computer game" or "computer games" or "crusader" or "kings" or "flight" or "simulator" or "realistic" or "tractors" or "2011" or "edition" as the computer-game-selection.

Does the player mean doing something to the computer-game-selection:
	it is very unlikely.

Instead of doing something when the noun is the computer-game-selection or the second noun is the computer-game-selection:
	say "This doesn't seem to be a game-playing sort of occasion."

This is the photo-display rule:
	say "Images flash quickly across the screen. They are, to your surprise, not pornographic; to mine, they are not especially suggestive of criminal activity. Just a bunch of snaps of you and Brock and Slango, and occasionally other people, enjoying what appear to be rigorously ordinary holidays in various Mediterranean ports."

The mess of cabling is a thing. The description of the mess of cabling is "Power adaptors for various different plug styles; ethernet, USB, firewire cables ranging from new to nearly obsolete formats; security devices, dongles, things I don't even recogn[ize]." Understand "adaptors" or "power" or "ethernet" or "usb" or "firewire" or "cables" or "devices" or "dongles" as the mess of cabling.

Instead of doing something other than examining when the mess of cabling is the noun or the expensive laptop is the second noun:
	say "I know what some of this stuff is for, but none of it would be handy now."

Some DVDs are a thing. The description of the DVDs is "A stack of unlabeled data DVDs in clear plastic cases. They could be anything: backup information on the jobs you've done, his music collection, porn. Knowing Brock, you would guess some of all three."

Instead of doing something other than examining when the DVDs is the noun or the DVDs is the second noun:
	say "I know what some of this stuff is for, but none of it would be handy now."

[The portrait is a thing. Understand "big" or "glossy" or "8 x 10" or "annalisa" or "photograph" or "photo" or "of annalisa" as the portrait. The description is "It's a big glossy 8 x 10 photograph of Annalisa: one of those intimate candid shots that says a world about the relationship of the sitter to the man behind the camera.

She's not looking at the lens. Her face is a little averted. Brock has shot her as though she were a rare orchid [--] narrow depth of field, natural light, extreme close-up [--] so that she doesn't seem so much like a person; so that she breaks into components of form and texture. A childlike curve of cheek. Fair, freckled skin. Downswept lashes.

This is the photograph that he has not thrown away. A casual observer might be excused for thinking that she initiated the breakup and Brock was still carrying a torch. But it was just the opposite, of course." ]


Some front portholes are portholes. They are in Brock's Stateroom.

Section 7 - Brock's Head

Brock's Head is aft-port from Brock's Stateroom. It is nautical and forbidden. It is indoors. It is a bathroom. The description is "Brock has gotten the best accommodations in this respect as well: his bathroom is less cramped than the others aboard, and the mirror is bigger."

Instead of going starboard in Brock's Head:
	try going fore-starboard.

Instead of going fore in Brock's Head:
	try going fore-starboard.

Section 8 - Your Bunk

Your Bunk is aft-starboard from the Galley. It is nautical and forbidden. It is indoors. The description is "Amazing: it's even tinier than my apartment, and the bed isn't even a twin in width. Across from the bed is a built-in [bench], with [random portholes] above, just at the waterline."

Out-direction of Your bunk is fore-port. [Back to galley]

The bench is an enterable supporter in Your Bunk. It is scenery. The description is "It's hard and less comfortable than a sofa, but it is adequate for seating on the rare occasions when a second person comes into your room. Mostly you read on the bed."

Some financial records are a thing. The clipping is a thing. The description of the financial records is "Brock and Slango managed for you at first, depositing your part of job commissions into a Swiss bank account. It is only recently that you've started to branch out in managing that money. After your wire transfer to your brother, you have only a few tens of thousands of dollars left, but that will change when you get your share for rescuing the plans of the T-inserter."

The description of the clipping is "This is a clipping from your hometown paper, from when you took second place in a national spelling bee at the age of twelve. Years of training and study, practice every night of the week, and [i]your parents were satisfied when you placed second[/i]. They were proud. Your mother gave an interview on TV.

All that stuff about the struggle to achieve perfection as man's gift back to God, or whatever? They made that up. They were happy to cash in on your not-quite-perfect performance in the end, happy to be local celebrities for two weeks, happy to tell everyone how they trained you up and what good parents they were. You were humiliated by your loss at the last moment, and they didn't care. Enter Slango in your life, and cue your departure; and you haven't seriously looked back since.

...Well. If I may be permitted a word (and I don't see how you could stop me, sorry): I don't think they were hypocrites. I think they meant well. But I can understand how all that would have done a heck of a job on your head."

Your wardrobe is an openable closed container in Your Bunk. It is fixed in place. The initial appearance is "[if your wardrobe is open]Your wardrobe door is open[otherwise]Your wardrobe door is firmly closed, which is helpful because otherwise it is tricky walking around in here[end if]." Understand "door" as the wardrobe.

Your wardrobe contains a sundress, a black turtleneck, some trousers, and a swimsuit.
	The sundress, black turtleneck, trousers, and swimsuit are wearable.
	The description of the sundress is "Bought during a vacation in Nauplia. It was tempting to look like the other tourists. And why not?" The sundress covers the torso-area.
	The description of the black turtleneck is "It averts attention and is useful on jobs." The turtleneck covers the torso-area.
	The description of the trousers is "Close-fitting and dark col[our]ed, useful to wear when going places sneakily by night." The trousers cover the legs-area.
	The description of the swimsuit is "Often the only form of exercise available is swimming off the back of the True Macaque, and Slango insists that you and Brock do this daily if on-shore forms of exertion are not available. It's a one-piece suit, meant for function rather than show." The swimsuit covers the torso-area.

Sanity-check wearing the sundress:
	say "I would kind of feel like it was cross-dressing, if that makes sense." instead.

Sanity-check wearing the swimsuit:
	say "I'm not quite ready to appear in spandex in my [--] that is, our [--] new bod." instead.


[Instead of wearing the trousers:
	say "There's no need to change just now."

Instead of wearing the black turtleneck:
	say "There's no need to change just now."]

When play begins (this is the setting up your bunk rule):
	let d be a random rightmost drawer that is [part of a bed in] enclosed by Your Bunk;
	unless d is nothing:
		move the financial records to d;
	otherwise:
		say "ERROR: found no rightmost drawer in Your Bunk!";
	let d be a random leftmost drawer  [that is part of a bed in]  enclosed by Your Bunk;
	unless d is nothing:
		move the clipping to d;
	otherwise:
		say "ERROR: found no leftmost drawer in Your Bunk!"

Every turn when the location is nautical and portholes are in location:
	if a random chance of 1 in 13 succeeds:
		say "[one of]Odd patterns of light dance on the ceiling, reflected through the portholes from the water outside.[or]The yacht rolls gently under the influence of an especially strong wave.[or]The waves lap gently against the side of the ship.[or]Just outside the porthole, a seabird is visible resting on the waves; and then it floats on.[or]The wake of what must be quite a large ship raises the [i]True Macaque[/i] and then lowers her again.[as decreasingly likely outcomes]".

Your bed is a yacht bed in your bunk. It is scenery. The description is "Homely but familiar."

Rule for describing the drawer layout of your bed:
	say "Your bed has two drawers. ";

Some back portholes are portholes. They are in your bunk.

Instead of going fore in Your Bunk:
	try going fore-port.

Section 10 - Your Head

Your Head is aft from Your Bunk. It is nautical and forbidden. It is a bathroom. It is indoors. The description is "All the absolutely required amenities of a bathroom, packed into the least possible space. The international space station assigns more room to the bathroom functions."

Section 11 - Slango's Bunk

Slango's Bunk is aft-port from the Galley. It is nautical and forbidden. It is indoors. The description is "Just as tiny as yours, with a bed narrower than a standard twin, and its own miniature head, and drawers cunningly fitted under the bed to hold clothing and other necessities."

Out-direction of Slango's bunk is fore-starboard. [Back to galley]

Instead of going fore in Slango's Bunk:
	try going fore-starboard.

Some side portholes are portholes. They are in Slango's bunk.

Slango's bed is a yacht bed in Slango's bunk. It is scenery. The description is "Hospital corners, military precision. Slango never actually served in the armed forces to the best of your knowledge, but that hasn't stopped him acting like it."

Instead of doing something other than examining to something that is part of Slango's bed:
	say "Neither of us is quite comfortable invading Slango's privacy in that way."

Section 12 - Slango's Head

Slango's Head is aft from Slango's Bunk.
The description is "All the absolutely required amenities of a bathroom, packed into the least possible space. The international space station probably assigns more room to the bathroom functions."
It is nautical and forbidden. It is indoors. It is a bathroom.

Section 13 - View from Outdoor Areas

The island is a distant backdrop. It screens south. It is in Open Sea and Sunning Deck and Navigation Area and Foredeck. The description is "From here, [we] can see a lot of the shoreline: the Custom House on the top of its cliff (which at a distance doesn't seem very tall at all); the harbor and the docks, both the touristy portion and the more industrial areas; and then the headland and the ramparts of the old city, with the cannon emplacements (now disused). [We] can even make out just a bit of the sandier beaches on the northwest shore of the island, though at this distance it is impossible to people-watch." Understand "atlantis" or "anglophone" or "anglophone-atlantis" or "shore" or "shoreline" or "dock" or "docks" or "cliff" or "custom" or "house" or "cannon" or "ramparts" or "emplacements" or "old city" or "city" or "beach" or "beaches" or "sand" or "people" as the island.

The cathedral-view is a distant backdrop. The printed name is "cathedral of Palma". Understand "cathedral" or "palma" or "of palma" or "yachts" or "mallorca" as cathedral-view. It screens port. The description is "The cathedral of Palma stands over the water and any number of waiting yachts. It is the first place I've ever seen outside the island of Atlantis [--] that wasn't a picture or a movie, of course. It looks overdone and a bit dirty and also like the only solid thing in view."


Act V Atlantida Herself ends here.
