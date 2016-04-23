Version 9 of Plurality by Emily Short begins here.

"Adds tokens to help with sentences about nouns with plural names; provides handling for pronouns of objects like 'a pair of shoes'; offers additional control over Inform's default pronoun handling."

Use authorial modesty.

Section 1 - Tracking Last Item
 
A thing can be neuter. A thing is usually neuter.

The prior named noun is a thing that varies. The prior named noun is yourself.

After printing the name of something (called the target) (this is the notice plurality of printed object rule): 
	mark target in output.

To mark (target - a thing) in output:
	if the target acts plural or target is the player, mark-future-plural; 
	otherwise mark-future-singular;
	now the prior named noun is the target.
    
To mark-future-plural:
	(- say__n = 1; -)
	
To mark-future-singular:
	(- say__n = 29; -)
    
To decide whether (item - an object) acts plural: 
	if the item is plural-named or the item is ambiguously plural:
		yes;
	no.

Section 2 - Verbs

To say is-are: 
	say is-are of prior named noun.
    
To say is-are of (item - a thing):
	now the prior named noun is the item;
	if prior named noun acts plural or the prior named noun is the player, say "are"; otherwise say "is".

To say Cap is-are:
	say Is-are of prior named noun.

To say Cap is-are of (item - a thing) (deprecated):
	now the prior named noun is the item;
	if prior named noun acts plural or the prior named noun is the player, say "Are"; otherwise say "Is".

To say Is-are:
	say Is-are of prior named noun.

To say Is-are of (item - a thing):
	now the prior named noun is the item;
	if prior named noun acts plural or the prior named noun is the player, say "Are"; otherwise say "Is".

To say has-have:
  say has-have of prior named noun.

To say has-have of (item - a thing):
  if the item acts plural or the item is the player begin;
    say "have";
  otherwise;
    say "has";
  end if.

To say Has-have of (item - a thing):
  if the item acts plural or the item is the player begin;
    say "Have";
  otherwise;
    say "Has";
  end if.

To say Has-have:
  say Has-have of prior named noun. 
    
To say 's-'re of (item - a thing):
	now the prior named noun is the item;
	if the item acts plural or the item is the player:
		say "[']re";
	otherwise:
		say "[']s".

To say 's-'re:
	say 's-'re of the prior named noun.

To say numerical 's-'re:
	(- if (say__n == 1) print "'s"; else print "'re"; -)

To say numerical is-are:
	(- if (say__n == 1) print "is"; else print "are"; -)
	
To say numerical has-have:
	(- if (say__n == 1) print "has"; else print "have"; -)
    
To say Numerical is-are:
	(- if (say__n == 1) print "Is"; else print "Are"; -)
	
To say Numerical has-have:
	(- if (say__n == 1) print "Has"; else print "Have"; -)
	
To say es:
  say es of prior named noun

To say es of (item - a thing):
  if the item acts plural or the item is the player begin;
    say "";
  otherwise;
    say "es";
  end if.

To say ies:
  say ies of prior named noun

To say ies of (item - a thing):
  if the item acts plural or the item is the player begin;
    say "y";
  otherwise;
    say "ies";
  end if.	
	
Section 3 - Pronouns

To say that-those: 
    say that-those prior named noun.

To say Cap that-those (deprecated): 
    say That-those prior named noun.

To say That-those:
	say That-those prior named noun. 

To say Cap that-those (item - a thing) (deprecated): 
    now the prior named noun is the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "Those"; 
    otherwise if the item is the player;
		 say "You";
    otherwise if the item is male and item is not neuter;
   		say "He";
    otherwise if the item is female and item is not neuter;
    	say "She";
    otherwise; 
    	say "That";
    end if.
   
To say that-those (item - a thing): 
    now the prior named noun is the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "those"; 
    otherwise if the item is the player;
		 say "you";
	otherwise if the item is male and item is not neuter;
   		say "he";
    otherwise if the item is female and item is not neuter;
    	say "she";
    otherwise; 
    	say "that";
    end if.
    

To say That-those (item - a thing): 
    now the prior named noun is the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "Those"; 
    otherwise if the item is the player;
		 say "You";
	otherwise if the item is male and item is not neuter;
   		say "He";
    otherwise if the item is female and item is not neuter;
    	say "She";
    otherwise; 
    	say "That";
    end if. 
    
To say Cap that-those of (item - a thing) (deprecated): 
    now the prior named noun is the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "Those"; 
    otherwise if the item is the player;
		 say "You";
	otherwise if the item is male and item is not neuter;
   		say "He";
    otherwise if the item is female and item is not neuter;
    	say "She";
    otherwise; 
    	say "That";
    end if.
    
To say that-those of (item - a thing): 
    now the prior named noun is the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "those"; 
    otherwise if the item is the player;
		 say "you";
	otherwise if the item is male and item is not neuter;
   		say "he";
    otherwise if the item is female and item is not neuter;
    	say "she";
    otherwise; 
    	say "that";
    end if.
    
To say That-those of (item - a thing): 
    now the prior named noun is the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "Those"; 
    otherwise if the item is the player;
		 say "You";
	otherwise if the item is male and item is not neuter;
   		say "He";
    otherwise if the item is female and item is not neuter;
    	say "She";
    otherwise; 
    	say "That";
    end if.

To say it-they:  
	say it-they of prior named noun.

To say it-they of (item - a thing):  
    now the prior named noun is the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "they"; 
    otherwise if the item is the player;
		 say "you";
	otherwise if the item is male and item is not neuter;
   		say "he";
    otherwise if the item is female and item is not neuter;
    	say "she";
    otherwise; 
    	say "it";
    end if.
    
To say Cap it-they (deprecated):
	say It-they of prior named noun.

To say Cap it-they of (item - a thing) (deprecated):  
    now the prior named noun is the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "They"; 
    otherwise if the item is the player;
		 say "You";
	otherwise if the item is male and item is not neuter;
   		say "He";
    otherwise if the item is female and item is not neuter;
    	say "She";
    otherwise; 
    	say "It";
    end if.
    
To say It-they:
	say It-they of prior named noun.

To say It-they of (item - a thing):  
    now the prior named noun is the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "They"; 
    otherwise if the item is the player;
		 say "You";
	otherwise if the item is male and item is not neuter;
   		say "He";
    otherwise if the item is female and item is not neuter;
    	say "She";
    otherwise; 
    	say "It";
    end if.
    
To say its-their:
	say its-their of prior named noun.
	
To say its-their of (item - a thing):   
    now the prior named noun is the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "their"; 
    otherwise if the item is the player;
		 say "your";
	otherwise if the item is male and item is not neuter;
   		say "his";
    otherwise if the item is female and item is not neuter;
    	say "her";
    otherwise; 
    	say "its";
    end if.
    
    
To say Cap its-their  (deprecated):
	say Its-their of prior named noun.
	
To say Cap its-their of (item - a thing)  (deprecated):  
    now the prior named noun is the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "Their"; 
    otherwise if the item is the player;
		 say "Your";
	otherwise if the item is male and item is not neuter;
   		say "His";
    otherwise if the item is female and item is not neuter;
    	say "Her";
    otherwise; 
    	say "Its";
    end if.

To say Its-their:
	say Its-their of prior named noun.
	
To say Its-their of (item - a thing):  
    now the prior named noun is the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "Their"; 
    otherwise if the item is the player;
		 say "Your";
	otherwise if the item is male and item is not neuter;
   		say "His";
    otherwise if the item is female and item is not neuter;
    	say "Her";
    otherwise; 
    	say "Its";
    end if.
    
To say it-them: 
	say it-them of prior named noun. 

To say it-them of (item - a thing):   
    now the prior named noun is the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "them"; 
    otherwise if the item is the player;
		 say "you";
	otherwise if the item is male and item is not neuter;
   		say "him";
    otherwise if the item is female and item is not neuter;
    	say "her";
    otherwise; 
    	say "it";
    end if.
    
To say Cap it-them  (deprecated):
	say It-them of prior named noun.
	
To say Cap it-them of (item - a thing)  (deprecated):
    now the prior named noun is the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "Them"; 
    otherwise if the item is the player;
		 say "You";
	otherwise if the item is male and item is not neuter;
   		say "Him";
    otherwise if the item is female and item is not neuter;
    	say "Her";
    otherwise; 
    	say "It";
    end if.

To say It-them:
	say It-them of prior named noun.
	
To say It-them of (item - a thing):
    now the prior named noun is the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "Them"; 
    otherwise if the item is the player;
		 say "You";
	otherwise if the item is male and item is not neuter;
   		say "Him";
    otherwise if the item is female and item is not neuter;
    	say "Her";
    otherwise; 
    	say "It";
    end if.

To say its-theirs:
  say its-theirs of prior named noun.

To say its-theirs of (item - a thing):
  now the prior named noun is the item;
  mark prior named noun in output;
    if the item acts plural
    begin;
    	say "theirs"; 
    otherwise if the item is the player;
		 say "yours";
	otherwise if the item is male and item is not neuter;
   		say "his";
    otherwise if the item is female and item is not neuter;
    	say "hers";
    otherwise; 
    	say "its";
    end if.
  
To say Cap its-theirs  (deprecated):
  say Its-theirs of prior named noun.

To say Cap its-theirs of (item - a thing)  (deprecated):
  now the prior named noun is the item;
  mark prior named noun in output;
    if the item acts plural
    begin;
    	say "Theirs"; 
    otherwise if the item is the player;
		 say "Yours";
	otherwise if the item is male and item is not neuter;
   		say "His";
    otherwise if the item is female and item is not neuter;
    	say "Hers";
    otherwise; 
    	say "Its";
    end if.

To say Its-theirs:
  say Its-theirs of prior named noun.

To say Its-theirs of (item - a thing):
  now the prior named noun is the item;
  mark prior named noun in output;
    if the item acts plural
    begin;
    	say "Theirs"; 
    otherwise if the item is the player;
		 say "Yours";
	otherwise if the item is male and item is not neuter;
   		say "His";
    otherwise if the item is female and item is not neuter;
    	say "Hers";
    otherwise; 
    	say "Its";
    end if.

To say possessive:
  say possessive of prior named noun.

To say possessive of (item - a thing):
  now the prior named noun is the item;
  mark prior named noun in output;
  if the item is the player
  begin;
  	say "your";
  otherwise if the item acts plural;
  	say "[the item][apostrophe]";
  otherwise;
  	say "[the item][apostrophe]s";
  end if.

To say Cap possessive (deprecated):
  say Possessive of prior named noun.

To say Cap possessive of (item - a thing) (deprecated):
  now the prior named noun is the item;
  mark prior named noun in output;
  if the item is the player
  begin;
  	say "Your";
  otherwise if the item acts plural;
  	say "[The item][apostrophe]";
  otherwise;
  	say "[The item][apostrophe]s";
  end if.

To say Possessive:
  say Possessive of prior named noun

To say Possessive of (item - a thing):
  now the prior named noun is the item;
  mark prior named noun in output;
  if the item is the player
  begin;
  	say "Your";
  otherwise if the item acts plural;
  	say "[The item][apostrophe]";
  otherwise;
  	say "[The item][apostrophe]s";
  end if.
    	
Section 4 - Enumeration
    
A thing can be ambiguously plural or ordinarily enumerated. A thing is usually ordinarily enumerated.

This is the update ambiguous pronouns for actions rule: 
	if the noun is a thing and the noun is ambiguously plural:
		notice the plurality of the noun; 
	if the second noun is a thing and the second noun is ambiguously plural:
		notice the plurality of the second noun.

The update ambiguous pronouns for actions rule is listed after the set pronouns from items from multiple object lists rule in the action-processing rules.

After printing the name of an ambiguously plural thing (called the suspect) (this is the notice plurality of printed ambiguous object rule):
	if the manual pronouns option is active:
		do nothing;
	otherwise:
		notice the plurality of the suspect.
	
To notice the plurality of (suspect - an object):
	(- PlugPlural({suspect}); -)
	
Include (-

[ PlugPlural obj;
	SetPronoun('them', obj);
	SetPronoun('it', obj);
];

-) 

Use Manual Pronouns translates as (- Constant MANUAL_PRONOUNS; -) 

To have the parser notice (o - an object): 
	if o is ambiguously plural, notice the plurality of o;
	otherwise set pronouns from o

[The following is a legacy item in case people are still using it in their code, but "set pronouns from..." will work just as well.]

To notice (o - an object) boringly:
	(- PronounNotice({o}); -) 

Plurality ends here.

---- DOCUMENTATION ----

Section: Output tokens for pronouns

This extension adds to say phrases for 

	that-those
	That-those
	it-they
	It-they
	it-them
	It-them
	its-their
	Its-their
	its-theirs
	Its-theirs
	possessive
	Possessive
	
	which refer to the last noun whose name has been printed. (For simplicity the token names do not reflect this fact, but if the last noun is a person, these tokens will produce "him" or "her" as appropriate, or "you" for the player.) The possessive is "your" for the player, and otherwise "[the item]'s".
	
	that-those of item
	That-those of item
	it-they of item
	It-they of item
	it-them of item 
	It-them of item
	its-their of item
	Its-their of item
	its-theirs of item
	Its-theirs of item
	possessive of item
	Possessive of item
	
accept an object and also reset the prior named thing appropriately. 

(Note: older versions of Plurality used "Cap" to indicate phrases that capitalized, as in Cap that-those. The original set of phrases is still supported for the sake of legacy code, but is now deprecated. In all cases, capitalizing the start of the phrase will produce capitalized output in response.)

           is-are of item
	Is-are of item

prints "is" or "are" appropriately for the item, though this will likely not be necessary very often, given that is-are already picks up whatever thing was last named by the game. 

In addition, there are demonstrative adjectives:

	that-those item
	That-those item
	
print things like "those shoes" and "That hat".
	
Section: Inflections

Also included are

	is-are
	has-have

and

	is-are of item
	has-have of item

which produce the correct forms as needed.

After we have printed a number to the screen, we may use "numerical is-are" and "numerical has-have" to get the correct inflection; so for instance
	
	say "The [the number of things carried by the player in words] thing[s] in your arms [numerical is-are] heavy.";
	
will produce is or are as appropriate. A 

Plurality also extends the behavior of the default [s] token so that if it is used after a noun rather than after a number, it will correctly inflect the verb to which it is attached, like so:

	say "[The item] stab[s] the griffin in the flank."
	
and adds [es] and [ies], thus:

	say "[The viewer] sp[ies] the castle at a distance."
	say "You see [the number of flies] fl[ies] buzzing around the trash can."
	say "[The inspector group] fax[es] the document to HQ."

These substitutions can even be used mid-word, as in

	say "[The noun] do[es]n't fit in [the second noun]."
	say "[The noun] [is-are]n't large enough."


Section: Ambiguously plural

We also create the term "ambiguously plural" to refer to items such as "pair of socks", "set of chessmen", "crew of pirates", etc., which the player might reasonably refer to as either "it" or "them". These items will then respond equally well to "it" or "them" in input.

The default Inform way of finding out whether something has a plural name is to say 
	
	if the noun is plural-named

But if we also wish to test for things that are ambiguously plural, we have a new phrase

	if the noun acts plural

which looks for both plural-named and ambiguously plural items.

Section: Internal pronouns

Finally, Plurality adds some control over how Inform sets its internal pronouns. The phrase "have the parser notice", which we can call when we want to manually set a pronoun. For instance

	Instead of searching the bedclothes:
		say "Among the sheets you find a broken locket.";
		have the parser notice the locket.
	
...will mean that the player who types >X IT in the next move will be referring to the locket rather than to something else.

By default, Inform also notices the pronouns of items listed in room descriptions and inventory, so that for instance the last inventory item mentioned will usually wind up being considered "it". If we would like to turn off this behavior, we may say

	Use Manual Pronouns. 
	
It may then be useful to set the pronoun ourselves sometimes, with "have the parser notice...". Otherwise, the parser will assign pronouns only for nouns the player uses in commands.

Example: * Floral Greetings - An example bouquet of flowers.

	*: "Floral Greetings"
	
	Include Plurality by Emily Short.
	
	The Doghouse is a room. "Not so much a place as a state of being."
	
	The player carries a ticket to the opera, some papers, and a bouquet of flowers. The bouquet is ambiguously plural.
	
	Instead of eating something inedible, say "[The noun] do[es]n't seem likely to agree with you at all. You'd be wiser to leave [it-them] alone."
	
	Instead of touching something: say "[That-those of noun] [is-are] all prickly."
	
	Instead of smelling something: say "Your nose is too weak to get much smell from [that-those of noun]."
	
	Instead of smelling the bouquet: say "[It-they of the noun]['s-'re] lovely."
	
	Instead of tasting something: say "Whew! [Is-are of the noun] [that-those] ever nasty!"

	Test me with "x ticket / eat it / eat them / touch it / touch them / smell it / smell them / taste it / taste them / x papers / eat it / eat them / touch them / smell them / taste them / x bouquet / eat it / eat them / touch them / smell them / taste them".	