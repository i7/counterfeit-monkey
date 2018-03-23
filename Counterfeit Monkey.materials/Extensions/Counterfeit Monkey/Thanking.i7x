Thanking by Counterfeit Monkey begins here.

Use authorial modesty.

A thanking quip is a kind of repeatable performative quip.

Understand "thank [someone]" or "say thank you to [someone]" or "say thanks to [someone]" or "say thanks" or "say thank you" or "thanks" or "thanks again" or "thanks a lot" or "thank you" or "bless you" or "ta" or "cheers" or "much obliged" as thanking. Thanking is an action applying to one visible thing.


Instead of thanking someone (this is the standard thanks redirection rule):
	if there is a thanking quip (called Q) in quip-repository:
		if Q quip-supplies the noun and Q is available:
			try discussing Q;
			the rule succeeds;
	say "'[one of]Thanks[or]Thank you[at random],' [we] say.".


Before thanking something who is not the current interlocutor (this is the implicitly greet before thanking rule):
	implicitly greet the noun;
	if the noun is not the current interlocutor, stop the action.

Instead of answering somebody (called target) that "thank you":
	try thanking the target.

Instead of answering somebody (called target) that "thanks":
	try thanking the target.

Before thanking the player:
	say "Don't mention it. We're in this together." instead.

Rule for supplying a missing noun while thanking:
	now the greeting type is implicit;
	find a suitable interlocutor;
	now noun is current interlocutor;
	if noun is nothing:
		say "Don't mention it. We're in this together.";
		stop the action.


[ Vaguely thanking is a hack to make commands like MECHANIC, THANK YOU work, as the rule for supplying a missing noun above won't work in those cases ]

Understand "thanks" or "thanks a lot" or "thank you" or "bless you" or "ta" or "cheers" or "much obliged" as vaguely thanking when the person asked is not the player. Vaguely thanking is an action applying to nothing.

Instead of asking somebody to try vaguely thanking:
	try thanking the person asked.

Instead of asking somebody to try thanking:
	try thanking the person asked.


[ We don't want thanking quips to still be suggested after we have already thanked someone or left the room ]

Check discussing a thanking quip (called target) (this is the hide thanking quips after use rule):
	now the target is unlisted.

Check saying goodbye to someone:
	if there is a thanking quip (called target) which quip-supplies the noun in quip-repository:
		if target is available:
			now target is unlisted;

Thanking ends here.
