Version 3 of Mood Variations by Emily Short begins here.

"Allows the author to define a mood value for characters and then use text substitutions such as '[when bored]The king fidgets on his throne[or sleepy]The king snores[at other times]The king grins[end when].' Moods will be interpreted in 'writing a paragraph' and similar contexts as the mood of the person described in the paragraph, but at other times according to the mood of the person to whom the player is currently speaking."

Mood is a kind of value. A person has a mood called the current mood. A person has a mood called the previous mood.
	
To say set (attitude - a mood):
	now the previous mood of the current interlocutor is the current mood of the current interlocutor;
	now the current mood of the current interlocutor is attitude.

To set (attitude - a mood):
	now the previous mood of the current interlocutor is the current mood of the current interlocutor;
	now the current mood of the current interlocutor is attitude.
	
Before reading a command (this is the mood record-keeping rule):
	repeat with target running through people:
		now the previous mood of the target is the current mood of the target.
 
Include (-

[ CurMood;
	 if ( (+ item described +) && (+ item described +) has animate )
		return (+ current mood of the item described +);
	if ( (+ current interlocutor +) )
		return (+ current mood of the current interlocutor +); 
	return 0;
];

-)

	To say when (N - a mood) -- beginning say_by_mood:
		(-  
			switch( curMood() )
			{-open-brace}
			{N}:
		-);
	
	To say or (N - a mood) -- continuing say_by_mood:
		(- 
			{N}: 
		-);
	
	To say at other times -- continuing say_by_mood:
		(-
			default:
		-)
	
	To say end when -- ending say_by_mood:
		(-
			{-close-brace}
		-)


Mood Variations ends here.

---- Documentation ----

This is quite a light-weight extension, designed to be used with a larger conversation library of your choice. It makes certain assumptions -- namely, that there is some character known as "current interlocutor" (defined as in "current interlocutor is an object that varies"). The current interlocutor might sometimes be nothing. Some of Eric Eve's conversation extensions use this convention, for example.

We must also define our own spectrum of moods appropriate to the game we're currently writing. If we are using a simple model in which characters can only like, be neutral toward, or dislike the player, we might write:

	The moods are friendly, neutral, and hostile. 

...though in a more complicated game we could equally give a much richer range of options. 

Mood Variations tracks two moods for each person: the current mood and the previous mood. This allows for situations where we change the mood, then want to provide some text or some other effect for the transition. ("Alabaster", for instance, uses mood changes as a trigger to modify the accompanying graphics.)

We might want to set everyone's moods to start with:

	The current mood of a person is usually neutral.
	The previous mood of a person is usually netural.

At the end of each turn sequence, the "previous mood" is updated to match the current one. This is done by the "mood record-keeping rule".

The chief purpose of all this is to allow us to write text alternatives that are keyed to the mood of the person to whom we are speaking. So for instance:

	Instead of asking Pam about "love":
		say "'It's all right for some,' says Pam[when friendly], winking[or hostile], with a bit of a snarl in her voice. Clearly you've gotten on her bad side[at other times] blandly[end when]."

will select our first option if Pam is friendly; the second if her mood is hostile; and the third if her mood is neutral. The order in which we defined our moods the first time determines the order in which they may be invoked by the textual substitution.

We will probably also want the ability to set the mood of the current interlocutor in response to what is being said. We may do this with the "set..." token, as in

	Instead of asking Pam about "chicken":
		say "Pam sighs heavily[set hostile].".

As long as "set..." is followed by the name of a mood, the current interlocutor will be given that mood. We can also do this outside a say phrase, as in:

	Carry out attacking the current interlocutor with something:
		set furious.

A restriction of this system is that it does not offer phrases for setting or checking moods for NPCs other than the current interlocutor. This is because the extension is designed as a fairly streamlined solution for games in which the player is usually talking to one person at a time. It would be more complicated syntactically (to the point of not offering a useful shortcut) if we were to require the author to say *whose* moods were being checked during print options.

Example: * Don't Mention The Chicken - A character who has moody reactions to certain conversation triggers, and displays her mood changes in her speech and behavior.

	*: "Don't Mention The Chicken"
	
	Include Mood Variations by Emily Short.
	
	The current interlocutor is an object that varies. The current interlocutor is Pam.

	The moods are friendly, neutral, and hostile.  The current mood of a person is usually neutral.
	
	The House is a room. Pam is a woman in the House.  The current mood of Pam is friendly.

	Instead of asking Pam about "love":
		say "'It's all right for some,' says Pam[when friendly], winking[or hostile], with a bit of a snarl in her voice. Clearly you've gotten on her bad side[at other times] blandly[end when]."

	Instead of asking Pam about "chicken":
		say "Pam sighs heavily[set hostile]. 'I hate poultry!'".
	
	Carry out waiting:
		set neutral. 
	
	Every turn (this is the show mood-shifts rule):
		if the current mood of Pam is not the previous mood of Pam:
			repeat through the Table of Mood Changes:
				if the last entry is the previous mood of Pam and the new entry is the current mood of Pam:
					say "[description entry][paragraph break]";
					break.

	Table of Mood Changes
	last	new	description
	neutral	hostile	"Pam is looking a lot less friendly now."
	neutral	friendly	"Pam seems to have relaxed a bit and is warming towards you."
	hostile	friendly	"You've completely turned around Pam's attitude."
	friendly	hostile	"Whoa, you clearly said the wrong thing there!"
	hostile	neutral	"Pam doesn't look really friendly, but she's no longer red with anger."
	friendly	neutral	"Pam crosses her arms, looking more guarded."

	Test me with "ask pam about love / wait / ask pam about love / ask pam about chicken / ask pam about love / wait / ask pam about love".