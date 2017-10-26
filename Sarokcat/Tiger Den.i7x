Version 2 of Tiger Den by Sarokcat begins here.
[Version 2.1 - M/F sex variations]

"Adds a tiger den to Flexible Survival with a few anthro tigers, and some small quests vs the tigertaurs..."

Section 1- Tiger den environment

Tiger den is a room. It is fasttravel. It is private

The description of Tiger den is "Sparsely furnished, this large concrete basement bears a slight resemblance to your own emergency bunker back at the library, and while it seems to be not quite as well hidden, its size certainly seems to make up for it. Half of the large room is however sectioned off by small movable screens someone has set up, separating the basement into a slightly confusing maze of temporary rooms. In the half of the room that is still open, you can see several tiger-like humans, with alterations ranging from merely tiger furred with some feline features, to those with a full tiger head and only a few human features like hands and walking on two legs, much like the one you rescued. It looks like they have barricaded the defensible entry way with scavenged furniture and items, and with the traps they seem to have placed in the empty building above, it seems like they should be safe from most of the infected as long as they can stay here, although several of the tigers do eye you warily as you move around the den, just in case you decide to do something stupid to cause trouble.".

the scent of Tiger den is "The enclosed basement hideout smells strongly of tigers.".

Chase is a man.
The description of Chase is "The large striped tiger man you helped out earlier is hanging around near the side of the den, watching as several of the other tiger-like people here go about their business. He's pretty fit looking and seems well at ease with his new form. He seems strangely alluring, with a strong, masculine presence which you find attractive.".
The conversation of Chase is { "Mrowl, baby!" }.
Chase is in Tiger den.

the scent of Chase is "The tigerman smells strongly of male tiger[if cunts of player > 0 or lust of Chase > 0] and arousal[end if].".

instead of conversing the Chase:
	if HP of Chase is 0:
		say "     Chase waves at you as you approach, 'Hey welcome to our little hideout, we call it the Tigers den', he says with a soft chuckle, 'Not a bad little place here either. Not sure who found it to begin with, or if they are even still around or ended up changed by one of the tigertaurs.' Chase lets out a soft sigh at that, 'The damn Tigertaurs are catching more and more of us each time we go out to forage or try to find people to help, we actually have a good stockpile of supplies here,' He says with a gesture to one of the locked doors, 'But as you can see we have a decent amount of people here too, and no idea how long we need to wait for rescue, if it's even coming.' Chase shrugs slightly before proceeding to show you around the rather large solid basement, several of the tiger people stopping to watch as the two of you pass by.";
		say "     Noting your interest in all various different tiger-like people, Chase stops for a minute to explain. 'When I first ended up down here, not long after this place was started, there were more different types of minorly infected here, and we even had a number of people who hadn't been infected yet at all we thought. Still,' the tiger says with a shrug, 'the longer we all stayed down here together, the more tiger-like everyone else seemed to become, until at this point I'm not sure if there are any non-tigers left down here. Most people actually seem to have adapted to the changes without any real regrets though. I mean heck,' Chase says with an amused grin on his tiger-like muzzle, 'What's NOT to like about being a tiger? I mean not only are we amazingly strong and fast hunters, but you seem to come through the change with your mind intact unlike a lot of the other infected. Most of all though,' Chase says as he strokes a hand down his tiger-furred side in amusement, 'Tigers are so just damn sexy, with the stripes and all, don't you agree?' Chase says as he poses his long lean body for your examination. Taking your silence as a sign of agreement, the tiger man grins as he finishes up the tour and goes back to watching the rest of the den members go about their business.";
		increase HP of Chase by 1;
	else if HP of Chase is 1:
		If a random chance of 2 in 5 succeeds:
			say "	'Hey, I'm sorry to ask this of a friend, but could you do me a small favor?' Not sure what the tiger is on about, you ask Chase what he needs. 'Well, we're kind of running low on food and water around here. I was kind of hoping that if you happened to come across some extra supplies, you wouldn't mind sharing some with us?'";
			say "	Not seeing any reason why not as long as you can keep yourself supplied too, you nod and then ask Chase how much in the way of provisions he and the others would need. 'Not much maybe just 20 pounds of food (8 units) and maybe a couple gallons of water (5 units). The waters not that necessary though, but the food would be really appreciated.' The tiger smiles at you somewhat sheepishly. Gaping and then nodding somewhat bewilderedly at the feline man you tell Chase that you'll see what you can do.";
			Say "'Thanks and sorry about the inconvenience.' Chase saunters up next to you and then licks his raspy tongue across your [facename of player] face.";
			Now HP of Chase is 2;
		else:
			say "[chasebasictalk]";
	else if HP of Chase is 2:
		if carried of water bottle < 5 or carried of food < 8:
			if a random chance of 3 in 5 succeeds:
				Say "	[one of]'Hey, sorry to bug, but did you ever get that food? We need like 8 things of food and maybe 5 liters of water, if you can spare that much.'[or]'Did you have any luck finding those supplies I'd asked about?'[or]'Don't forget to keep your eyes open for some of the supplies we need here.'[or]'Did you see those small packs of rabbits roaming around? God they always make my mouth water...'[at random]";
			else:
				say "[chasebasictalk]";
		else:
			decrease carried of water bottle by 5;
			decrease carried of food by 8;
			if a random chance of 1 in 2 succeeds:
				Say "	'Woah, thanks a lot for this! This should keep the rest of us going for a while longer!' Chase nuzzles the side of your neck and then licks you across your throat. A shiver racks down your spine from the rough wet feel of the tiger's tongue sliding along your [facename of player] throat. When the feline pulls back Chase says, 'Hey why don't I show you some neat tricks we tigers like to pull off? It may help you to fight and run away better when your outside foraging or whatever.";
				Increase XP of player by 40 + ( 3 * level of player );
				Now HP of Chase is 3;
			else:
				Say "	'Hey, thanks a lot for this. I really appreciate it!' Chase smiles as he looks to you fondly. Blushing at the tigerman, you quickly hand him the provisions. 'Hey why don't I show you some neat tricks we tigers like to pull off? It may help you to fight and run away better when your outside foraging or whatever.";
				Increase XP of player by 40 + ( 3 * level of player );
				Now HP of Chase is 3;
	else if HP of Chase is 3:
		say "[chasebasictalk]";


to say chasebasictalk:
	say "[one of]'Hey good to see you came by again.'[or]'Hey I'm glad your back, I was starting to get worried about you out there.'[or]'I don't know why we seem to still be pretty much our normal selves, and the tigertaurs aren't.'[or]'I'm glad you came along when you did. I may love being a tigerman, but I don't think I would enjoy being a tigertaur nearly as much.'[or]'After all this is over, what do you think will happen to those of us who can still think clearly?'[or]'I wonder if they will put us infected people in some kind of large infected zoo when they finally retake the city, spending all your time sleeping and eating and fucking for an audience might not be pretty fun, but I wonder if they will let us have internet connections...'[or]'I swear the zoo is a mess now, but it's still one of the safer places to forage it seems, there is some REALLY crazy stuff in other parts of the city that tries to grab ya.'[or]'Did you see those small packs of rabbits roaming around? God they always make my mouth water...'[or]'You should try sticking around down here with us until help arrives, sure you would probably end up a tiger like the rest of us, but that's kinda a good thing to my mind.'[or]'I always loved tigers before all this, now I find I REALLY love tigers, if you know what I mean.'[or]'While the tigertaurs can convert anyone it seems, us tigers seem especially vulnerable to them.'[or]'I used to be called Alex before all this, everyone just calls me Chase now though,' he says with a shrug. 'It seems more appropriate anyways.'[at random]";


the fuckscene of Chase is "[sexwithchase]";

to say sexwithchase:
	[puts Tiger as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Tiger":
			now monster is y;
			break;
	if lastfuck of Chase - turns < 6:
		say "     'Sorry, I would love to spend some more time with you, but it looks like neither of us really are ready for that,' Chase says apologetically, 'Maybe we should take it slow and you should come back and visit me again later.'";
	else if cunts of player > 0:
		if the remainder after dividing libido of chase by 3 is 0:
			say "     'Well who could say no to such a pretty woman?' Chase asks as he runs his eyes over your body, his gaze lingering over your aroused cunt. Your eyes drift to his obvious arousal as he pulls you over to one of the sleeping pallets, and slowly pushes you down onto it. 'I think we can really have some fun together,' he says as he moves over you, his hands slowly rubbing along your [skin of player] skin, pausing to tease your breasts as he nuzzles your neck with his furred muzzle. 'You want this so badly, don't you?' Chase asks with a rumbling purr, as he rubs his feline cock along the outside of your pussy, causing you to gasp and pant with the need the large male tiger is arousing in you.";
			say "     'Mmm look at you, you look like you would make a fine tigress, what do you think,' he says, as he teases you underneath him, your body rising up against him as your mind clouds with pleasure and male musk. 'You want to be a tigress don't you?' Chase asks as rubs his soft fur against you, causing you to moan and nod, willing to agree to anything just to get him inside your hot body. 'I knew you wanted it,' Chase says with a churring laugh, as he rubs himself against you, 'I just knew you wanted to be just another lovely tigress, but even more you want to be MY little tigress, don't you. My pet and my little tigress mate, isn't that right?.' he growls out, his rough need filled voice sending shivers down your spine. You can only groan in need, and nod helplessly, as he rubs his cock along your folds.";
			say "     Seeing your acceptance, Chase lets a self-satisfied grin cross his face, though you can't pay much attention to that fact as he finally thrusts into you, giving your well prepared body what it needs. The feel of his shaft pushing into your hot body chases any thoughts from your mind as you throw your head back and groan, the primal pleasure of being filled by his hard hot member making everything else seem inconsequential. You feel yourself gripping chase to you tightly as he pumps himself into you, his hands and dominant manner speaking to something in you as he works his hands over your body. Soon Chases body tenses, and with a growl of 'Mine', the large tiger shoots his seed into you, filling you full of his fertile feline cum as he stakes his claim on your body, and giving you your biggest orgasm ever, as your walls grip his shaft tightly.";
			say "     As you relax in his arms as you both pant in the afterglow of your powerful orgasm, you try to think about his words from before and you being his. You are quickly distracted though, as Chase starts moving up against you again, his hands rubbing over your body, rekindling your earlier lust and excitement. You moan as he begins to move himself within you again, his cock erect faster than you would have ever thought possible, as he turns his attentions to your body again. You have a fleeting thought about the fact that tigers can mate for hours or days on end, before he drives all thoughts out of your head once again, your combined cries of pleasure echoing throughout the den and ensuring everyone knows just what the two of you are up to. Eventually exhausted, Chase rubs himself up against you one final time, ensuring his scent coats you completely, before he heads back to the main room, leaving you to try to collect the remnants of your pleasure shattered mind, a happily fucked tiger's mate...";
		else if the remainder after dividing libido of chase by 3 is 1:
			say "     'Hmm... ready to have your strong tiger atop you again, eh?' he rumbles with a grin. 'Looking to be my sexy tigress slut again, are we?' he adds, nuzzling at your neck and gently nibbling along it with his sharp fangs. Responding to his arousing scent and his strong, confident manner, you moan and nod, feeling yourself want to give into this virile male once again. He smiles and gropes your ass as he leads you to one of the sleeping pallets, pushing you down onto all fours atop it. 'I think you're starting to like this arrangement. I know I am,' he rumbles, grinding his stiff cock between your cheeks, causing you to moan and wiggle it back against his shaft. 'You want this so badly, don't you?' Chase asks with a rumbling purr, letting his leaking glans brush past your dripping folds momentarily. You mrowl and nod vigorously, asking your virile lover to mount you.";
			say "     'Oh, look at you, so sexy and eager. You're going to make a wonderful tigress, aren't you?' he asks as he teases you underneath him, your hips grinding back on his prick, trying to get it inside. He's got a grip on your ass this time, making sure he doesn't let you have it until he's ready to give it to you. Held beneath the confident male and teased with his throbbing cock, your mind clouds with pleasure and male musk. 'You want to be a horny tigress, don't you?' Chase asks as rubs his soft fur against you, causing you to moan and nod, willing to agree to anything just to get him inside your hot body. 'I knew you wanted it,' Chase says with a churring laugh, as he rubs himself against you. 'And not just that, you want to be MY horny tigress mate, don't you? My pet and playtoy, with that needy cunt of yours to breed full of cubs, isn't that right?' he growls, the rough need in his voice sending shivers down your spine. You can only groan in need and nod helplessly as he brushes his leaking glans across your quivering, dripping folds again.";
			say "     Having accepted his dominance as your tiger mate, you release a lustful mrowl as Chase finally thrusts into you and starts pounding you with a self-satisfied grin on his feline face. The feel of his shaft pushing into your hot body chases any thoughts from your mind as you throw your head back and groan, the primal pleasure of being filled by his hard hot member making everything else seem inconsequential. You can feel the tiger's paws gripping you tightly, pinning your shoulders down on the mattress while he pounds your ass. His dominant manner speaks to something in you as he mates you, his feline form pressing down atop your [bodydesc of player] body. Soon Chase's body tenses, and with a growl of 'Mine', the large tiger shoots his seed into you, pumping your pussy full of his fertile feline cum as he again stakes his claim on your womb. A powerful orgasm rocks your body as your walls grip his shaft tightly, milking it for all he'll give.";
			say "     You are both left panting in the afterglow of the raw, lustful sex you've just had. Your horny tiger stud remains atop you, nuzzling at your neck and purring softly as he nibbles along it. You sigh happily and purr in response, happily musing upon his earlier words. Your thought soon turn away from this though as his hips and yours start moving again, Chase starting to thrust into you again and your ass pushing back to get fucked once more. You moan as his stiffening manhood begins thrusting again, reminded again of the extended mating sessions of wild tigers before your growing arousal pushes all thoughts out of your head once again. As your lustful mating continues, your combined cries of pleasure echoing throughout the den and ensuring everyone knows just what the two of you are up to. Eventually exhausted, Chase rubs himself up against you one final time, ensuring his scent coats you completely, before he heads back to the main room, leaving you to try to collect the remnants of your pleasure shattered mind, a happily fucked tiger's mate...[impregchance]";
		else:
			say "     'I thought you might want to spend time with your sexy tiger mate again soon,' he purrs with a grin, running his paws across your [bodytype of player] body before eventually settling with one on your ass, squeezing it firmly. You moan at the sexy tiger's touch, finding his confidence alluring. Keeping his paw on your rear, he pulls you over to one of the sleeping pallets and has you spread out atop it. 'I think since you've been such a good girl, coming back to your tiger for more, that I'd give you a special treat,' he says with a grin, licking his broad tongue across his muzzle as he eyes your juicy pussy with obvious hunger.";
			say "     Running his paws over your [bodydesc of player] body, he moves in closer, bringing his muzzle between your thighs. He chuffs softly as he takes in the scent of his mate and licks his rough tongue slowly across your inner thigh, moving tantalizingly close to your increasingly needy pussy. 'Mmm... you smell so nice, my horny girl. You want it badly, don't you? Needing your hot, sexy tiger to give you what you need, like the slutty tigress pet you are?' he asks, giving more teasing licks and nibbles without quite touching your now sopping cunt. His earlier dominance having had its effect, you mrowl and mewl without delay, begging him for it and promising to be his good kitty slut.";
			say "     Chase smiles and takes a long, slow lick across your juicy folds with his raspy tongue, sending waves of delight through you. 'That's my good tigress, eager for her loving mate's attention.' He slides a pair of fingers into your cunt and fucks you with them while his tongue lavishes attention upon your pussy and clit. Waves of pleasure rush through you as the tiger works you up to a wonderful orgasm that has you seeing stripes as you cry out. Even as you're panting on the mattress in the fog of your afterglow, the tiger moves atop you. You welcome him into your arms, sharing sticky kisses with him as he thrusts into you and starts mating you. As before, he fucks you to several more orgasms as he pumps load after load of tigercum into your womb. Eventually you are both sated and he rubs himself up against you one final time, ensuring his scent coats you completely before rising from the cot. He heads back to the main room, leaving you to try to collect the remnants of your pleasure shattered mind, a happily fucked tiger's mate...[impregchance]";
		infect "Tiger";
		now lastfuck of Chase is turns;
		increase libido of chase by 1;
	else if "MPreg" is listed in feats of player:
		if lust of Chase is 0:
			say "     'Hmm... that's a tempting offer,' Chase says as he runs his eyes over your body, pausing to shake his head at your aroused cock. 'But I think I'll have to pass on it right now,' Chase adds with a shrug, but you don't let him off the hook so easily, pulling him in close and nibbling his ear. You whisper that your sexy ass is something special and he should really give it a try before saying no to you. With a hand between the tiger's legs, you grope the sexy tiger, feeling his sheath swell as his arousal builds. Having got his attention, he drags you over to one of the sleeping pallets and slowly pushes you down onto it. 'Well, I could certainly go for a little fun. Maybe you'll get some sexy stripes of your own,' he says with a rumbling purr. Pushed onto all fours, the tiger moves atop you, rubbing his feline cock against your crinkled hole, letting his precum lube you up a little.";
			say "     'Mmm look at you, you look like you would make a fine tigress. What do you think?' he asks as he teases you underneath him, your body rising up against him as your mind clouds with pleasure and male musk. 'You want to be a tigress, don't you?' Chase asks as rubs his soft fur against you, causing you to moan. You reach back and grab his cock, pushing yourself back onto it, moaning that you would rather be a hot tiger. Chase releases a lustful growl, but grabs your hips firmly, holding you steady as he tries to remain in control. 'I knew you wanted to be a sexy striped kitty, but I'd much rather have you as a sexy tigress for me to breed.' You mrowl and claw at the cot, promising to be his sexy tiger and for him to hurry up and breed your ass. You moan loudly that you can have cubs as a male and that you want him to give them to you.";
			say "     The tiger's surprised by this, but something about your scent must have made his body aware of this, since he accepts the concept readily and lets a self-satisfied grin cross his face, though you can't pay much attention to that fact as he finally thrusts into you and starts pounding you, giving your well-prepared body what it needs. The feel of his shaft pushing into your hot body chases any thoughts from your mind as you throw your head back and groan, the primal pleasure of being filled by his hard hot member making everything else seem inconsequential. You can feel the tiger's paws gripping you tightly. His hands and dominant manner speak to something in you as he works his hands over your body. Soon Chases body tenses, and with a growl of 'Mine', the large tiger shoots his seed into you, pumping your ass full of his fertile feline cum as he stakes his claim on your body[if cocks of player > 0], and giving you a powerful orgams of your own as your walls grip his shaft tightly[end if].";
			say "     As you relax in his arms as you both pant in the afterglow of your powerful orgasm, you try to think about his words from before and you being his. You are quickly distracted though, as Chase starts moving up against you again, his hands rubbing over your body, rekindling your earlier lust and excitement. You moan as he begins to move himself within you again, his cock erect faster than you would have ever thought possible, as he turns his attentions to your body again. You have a fleeting thought about the fact that tigers can mate for hours or days on end, before he drives all thoughts out of your head once again. As your lustful male mating continues, your combined cries of pleasure echoing throughout the den and ensuring everyone knows just what the two of you are up to. Eventually exhausted, Chase rubs himself up against you one final time, ensuring his scent coats you completely, before he heads back to the main room, leaving you to try to collect the remnants of your pleasure shattered mind, a happily fucked tiger's mate...[mimpregchance]";
		else:
			say "     'Hmm... ready to have your strong tiger atop you again, eh?' he rumbles with a grin. 'Looking to be my sexy tiger slut again, are we?' he adds, nuzzling at your neck and gently nibbling along it with his sharp fangs. Responding to his arousing scent and his strong, confident manner, you moan and nod, feeling yourself want to give into this virile male once again. He smiles and gropes your ass as he leads you to one of the sleeping pallets, pushing you down onto it. 'I think I could get to like this arrangement,' he rumbles, grinding his stiff cock between your cheeks, causing you to moan and wiggle it back against his shaft. 'You want this so badly, don't you?' Chase asks with a rumbling purr, letting his leaking glans brush past your anus momentarily. You mrowl and nod vigorously, asking your virile lover to mount you.";
			say "     'Oh, look at you, so sexy and eager. You're going to make a wonderful tiger bottom, aren't you?' he asks as he teases you underneath him, your hips grinding back on his prick, trying to get it inside. He's got a grip on your wrists this time, making sure he doesn't let you have it until he's ready to give it to you. Held beneath the confident male and teased with his throbbing cock, your mind clouds with pleasure and male musk. 'You want to be a tiger bottom, don't you?' Chase asks as rubs his soft fur against you, causing you to moan and nod, willing to agree to anything just to get him inside your hot body. 'I knew you wanted it,' Chase says with a churring laugh, as he rubs himself against you. 'And not just that, you want to be MY slutty tiger bottom, don't you? My pet and playtoy, with that kinky ass of yours to breed full of cubs, isn't that right?' he growls, the rough need in his voice sending shivers down your spine. You can only groan in need, and nod helplessly as he brushes his leaking glans across your asshole again.";
			say "     Seeing your acceptance, Chase lets a self-satisfied grin cross his face, though you can't pay much attention to that fact as he finally thrusts into you and starts pounding you, giving your well-prepared body what it needs. The feel of his shaft pushing into your hot body chases any thoughts from your mind as you throw your head back and groan, the primal pleasure of being filled by his hard hot member making everything else seem inconsequential. You can feel the tiger's paws gripping you tightly. His hands and dominant manner speak to something in you as he works his hands over your body. Soon Chase's body tenses, and with a growl of 'Mine', the large tiger shoots his seed into you, pumping your ass full of his fertile feline cum as he again stakes his claim on your body[if cocks of player > 0], and giving you a powerful orgams of your own as your walls grip his shaft tightly[end if].";
			say "     As you relax in his arms as you both pant in the afterglow of your powerful orgasm, you try to think about his words from before and you being his. You are quickly distracted though, as Chase starts moving up against you again, his hands rubbing over your body, rekindling your earlier lust and excitement. You moan as he begins to move himself within you again, his cock erect faster than you would have ever thought possible, as he turns his attentions to your body again. You have a fleeting thought about the fact that tigers can mate for hours or days on end, before he drives all thoughts out of your head once again. As your lustful male mating continues, your combined cries of pleasure echoing throughout the den and ensuring everyone knows just what the two of you are up to. Eventually exhausted, Chase rubs himself up against you one final time, ensuring his scent coats you completely, before he heads back to the main room, leaving you to try to collect the remnants of your pleasure shattered mind, a happily fucked tiger's mate...[mimpregchance]";
		increase lust of Chase by 1;
		now sex entry is "Male";
		infect "Tiger";
		now sex entry is "Female";
	else:
		say "     'Hmm that's a tempting offer,' Chase says as he runs his eyes over your body, pausing to shake his head at your aroused cock. 'But I think I'll have to pass on it right now.' Chase says with a shrug, before grinning, 'I'll make you a pretty good counteroffer though,' Chase says, before leaning forward and rubbing the sides of his head along your face and body, his whiskers tickling you as they trace along your sides, and his furred cheeks feeling soft and sleek, and leaving a strange tingling sensation behind where he rubbed against you. 'I think you would make a great tigress,' the tiger man says with a grin as he leans back against the wall and you feel the tingling intensify within you where he scent marked you, 'So why don't you come back and make your offer again when you are one?' Chase adds in amusement.";
		infect "Tiger";


[ libido of chase ]
[ M/F sex w/Chase ]

[ lust of chase ]
[ progress of mpreg lover ]
[ 0 = no M/M yet ]
[ 1 = M/M first time ]
[ 2+ = more M/M ]


Section 2- TigerVSTaur



TigerVSTaur is a situation. The level of TigerVSTaur is 9.
The sarea of TigerVSTaur is "Zoo".
when play begins:
	add TigerVSTaur to badspots of hermaphrodite;
	add TigerVSTaur to badspots of furry;

Instead of Resolving a TigerVSTaur:
	say "     Traveling down the zoo pathways, you hear a strange roaring noise nearby, followed by some violent sounds, after a few seconds the sounds fade somewhat, and you cautiously peek through the greenery to see a strange sight on one of the employee travel paths of the zoo. Two creatures appear to have been fighting here, strangely enough it appears to be a couple of the tigertaurs that have been plaguing the zoo. Closer inspection however, reveals that only one of the combatants happens to be a tigertaur, the other combatant appears to be merely an extremely tiger-like humanoid, with no tiger like lower body at all! The combat is quickly drawing to a close however, as the tigertaurs larger form seems to give it an advantage against the more human-like tiger, and indeed as you watch, the tigerman seems to be growing more and more aroused and less able to resist the tigertaurs advances. You could intervene if you wanted, but it truly doesn't look like the situation is any of your affair. Do you interfere?";
	if player consents:
		say "     You quickly resolve to involve yourself in what is essentially not your conflict, but unable to see it continue without taking some action on your part. You rush from hiding and into the fray, startling both combatants into taking a step back for second startled by your sudden presence, you have only a few seconds however before the conflict will obviously resume, in which to decide just who to aid. The tigertaur seemed to be winning the fight so far, and it might make more sense for you to ally yourself with the obviously superior power, but you could also take the greater risk and try to aid the tiger against the strong tigertaur if you choose. Do you side with the Tigertaur?";
		if the player consents:
			say "     Deciding to side with the obviously winning side, you immediately move to cut off the Tiger mans escape, he stares at you hopelessly, as with your help the tigertaur soon manages to pin him down. His attitude soon changes, as the strong tigertaur rubs up against his body, causing him to moan in pleasure as it massages him with its pawlike hands, his body changing into a more suitable one under its lustful attentions. Soon, the tiger-like man has acquired a brand new set of female genitalia, which the taur above the new herm is happy to put to use. You watch, unable to look away and panting in lust at the erotic scene before you, as the tigertaur fucks the tiger underneath her, even while his body changes and shifts, its middle elongating into a tauric form of its own, as large breasts sprout on the newest tigertaurs chest. Soon they both explode into a messy climax, roaring out their pleasure for all to hear, and the first taur pulls herself off the newest tigertaur, it is only as they both turn to look at you that you realize you are still standing there out in the open now next to two very horny tigertaurs. And it looks like they both want to thank you personally for your help in the recent scuffle...";
			challenge "Tigertaur";
			now TigerVSTaur is resolved;
		else:
			say "     Deciding to aid the slightly more human like creature, you quickly engage the tigertaur in combat, as the tiger man falls back and tries to recover!";
			challenge "Tigertaur";
			Say "     After a rough fight, you are pushed to your limits, when finally the tiger man you came to aid rushes back into the fight, appearing much recovered and ready to fight again. Unwilling to take on this new opponent after so much fighting already, the tigertaur turns and flees, leaving you exhausted but feeling somewhat relieved at this turn of events. You turn and get a better look at the person you rescued, your eyes scanning up his long lean feline body, taking in his slightly digitigrade legs and powerful stance, as well as his still obviously excited feline cock, before moving up past his strongly muscled chest and lingering for a moment on his clawed but still mostly human hands, finally resting on his tiger-like face, with a short muzzle currently spread in a grin, exposing his sharp carnivore teeth. The powerful appearance of the tigerman makes you nervous for a minute as he stands there, but the minute of nervousness is broken as soon as he begins to speak.";
			say "     'Thanks a ton for your help friend,' The tiger beast says in a pleasant rumbling voice, 'I was in a load of trouble there on my own, and if you hadn't come along when you did, I'm sure I would have been sprouting a new pair of paws and giving in to the infection myself.' he says, before looking around and trotting over and pulling a large pack out of some bushes where it was obviously thrown when the combat started. Hefting the rather large pack easily up on his shoulders, he turns back to you and gestures for you to follow as he starts walking down some of the zoo pathways.";
			say "     'The names Chase,'The tiger man says as he leads you through the mostly unused maze of paths in the animal care area of the zoo, eventually leading you to a small employee exit and parking lot. Glancing around to be sure the coast is clear, he leads you across the street and down an alley. 'I worked near here before this all happened, and liked to visit the zoo and the big cats on my lunch break, so when shit started getting weird I ended up heading to the zoo again. Turns out that was even more of a mess than most of the rest of the area, though most of the animals were gone at that point, still was plenty of changed around. Ended up taking shelter in the tigers cage for while, since well, I figured most of the other creatures wouldn't look there... and hey if I actually encountered one of em myself, I would kind of rather end up becoming a tiger than most of the other animals around.' Chase says with a shrug, as he leads you to a large empty administrated office building a couple blocks away from the zoo.[line break]";
			say "     'Sadly I never did actually encounter a tiger that day, but there must have been enough of whatever is causing the changes left over in their den to change me, I still don't regret it though... this body is so much better than my old one was.' he says, flashing you a grin as you thread through the destroyed office building, furniture placed haphazardly all over, causing the place to look like a major battle took place here at some point. 'And hey!' Chase says as he opens a door almost hidden by the debris and leads you down what looks like maintenance stairs to the basement. 'At least I'm not alone like this,' the tiger man says with a grin as he throws open the basement door, causing you to stare inside, as several other tiger men and tiger women look up to see what's happening. 'Welcome to the Tiger den' Your guide says somewhat smugly, as he leads you inside.";
			move player to Tiger den;
			now Tiger den is known;
			now TigerVSTaur is resolved;
			now battleground is "void";  [blocks a post-event fight]
	else:
		say "     Deciding to let the two infected beasts finish their little dominance battle in privacy, you continue along your way without stopping to see what happens.";
		now TigerVSTaur is resolved;

Tiger Den ends here.
