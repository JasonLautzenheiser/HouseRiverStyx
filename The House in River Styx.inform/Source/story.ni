"The House in River Styx" by Jason Lautzenheiser

[This game is copyrighted 2015 by Jason Lautzenheiser, who asserts the moral right to be recognized as the author.  It is released under the GNU Public License 3.0.  See http://www.gnu.org/copyleft/gpl.html for further details.]

Volume 1 - Meta

Book 1 - Meta Stuff

The story genre is "Horror".
The story title is "The House in River Styx".
The story author is "Jason Lautzenheiser".
The release number is 1.
The story creation year is 2015.
Use American dialect, full-length room descriptions, and the serial comma.
The story description is "An American horror story"

Release along with a website, the source text and an interpreter.

Book 2 - Includes

Include Punctuation Removal by Emily Short.
[Include Room Description Control by Emily Short.
Include Tailored Room Description by Emily Short.]
Include Modern Conveniences by Emily Short.
Include Postures by Emily Short.
Include Easy Doors by Hanon Ondricek.
Include Easy Windows by Jason Lautzenheiser.
Include Trinity Inventory by Mikael Segercrantz.
Include Typographical Conveniences by Daniel Stelzer.


Book 3 - Includes - not for release

Include Response Assistant by Aaron Reed.

Volume 2 - New Stuff

Book 1 - Miscellaneous Fixes

Part 1 - Beta Comments

First after reading a command (this is the ignore beta-comments rule):
	if the player's command matches the regular expression "^(\p|\*)":
		say "(Noted.)";
		reject the player's command.

Understand "bug" or "bug [text]" as a mistake ("!!! BUG !!![br][note][bracket]Bug flagged.[close bracket][/note]");

Part 2 - Pronouns

To set the/-- pronoun it to (O - an object): (- LanguagePronouns-->3 = {O}; -).
To set the/-- pronoun him to (O - an object): (- LanguagePronouns-->6 = {O}; -).
To set the/-- pronoun her to (O - an object): (- LanguagePronouns-->9 = {O}; -).
To set the/-- pronoun them to (O - an object): (- LanguagePronouns-->12 = {O}; -).

Part 3 - Modifications to Standard Actions

instead of pushing or pulling or turning an open door:  try closing the noun.
instead of pushing or pulling or turning a closed door:  try opening the noun.
instead of pushing or pulling or turning an open easydoor:  try closing the noun.
instead of pushing or pulling or turning a closed easydoor:  try opening the noun.

Rule for deciding whether all includes scenery:  it does not.
Rule for deciding whether all includes people while taking: it does not.
Rule for deciding whether all includes fixed in place things while taking: it does not.

The can't go through undescribed doors rule is not listed in the check going rulebook.

The describe what's on scenery supporters in room descriptions rule is not listed in any rulebook.
The examine supporters rule is not listed in any rulebook.

The examine devices rule is not listed in the carry out examining rules. 
	
Understand "release [something]" as dropping.
Understand "slide [something]" as pushing.

To say verb word: (- print (address) verb_word; -).

Part 4 - Emptiness

Definition: a container is empty if the first thing held by it is nothing.
Definition: a supporter is empty if the first thing held by it is nothing.


Part 5 - Standard Responses

The block saying sorry rule response (A) is "You mumble something apologetic under your breath."
The parser error internal rule response (R) is "I'm not sure what you're talking about."

Part 6 - Listing exits

When play begins: 
	now the left hand status line is "[the player's surroundings] [--] Exits: [exit list]"; 
	now the right hand status line is "[the time of day]". 

To say exit list: 
	let place be location; 
	repeat with way running through directions 
	begin; 
		let place be the room way from the location; 
		if place is a room, say " [way]"; 
	end repeat. 

Rule for printing the name of a direction (called the way) while constructing the status line: 
	choose row with a heading of the way in the Table of Abbreviation; 
	say "[shortcut entry]". 

Table of Abbreviation 
heading	shortcut    
north	"N"    
northeast	"NE"    
northwest	"NW"    
east	"E"    
southeast	"SE"    
south	"S"    
southwest	"SW"    
west	"W"    
up	"U"    
down	"D"    
inside	"IN"    
outside	"OUT"  

Part 7 - Input editing

First after reading a command:
	remove stray punctuation.
	
Part 8 - Verbs

To peer is a verb.





Part 9 - Not for release

When play begins, seed the random-number generator with 88.

[Some code provded by Matthew Slattery to increase the size of the Glk game during the writing cycle...:]
Include (-

[ INitGlkWindow rock incr i base;
	if (rock == GG_MAINWIN_ROCK) {
		incr = 2;	! adjust to taste
		for (i= 0 : i < style_NUMSTYLES : i++) {
			switch (i) {
				style_Header: base = 4;
				style_Subheader: base = 1;
				style_Alert: base = 1;
				default: base = 0;
			}
			glk_stylehint_set(wintype_AllTypes, i, stylehint_Size, base + incr);
		}
	}
	rfalse;
];

-) after "Definitions.i6t".			



Book 2 - Automatic Examining

A thing can be examined or unexamined.  A thing is usually unexamined.  
Carry out examining something:
	now the noun is examined.
	
[After taking something unexamined:
	say "Taken.  [run paragraph on]";
	try examining the noun.]

Book 3 - Listening and Sounds

The report listening rule is not listed in any rulebook.
A thing has some text called sound.  The sound of a thing is usually "silence".
The player has some text called sound.  The sound of the player is usually "silence".

Carry out listening to something:
	say "From [the noun] you hear [sound of the noun]."
	
instead of listening to a room:
	if an audible thing can be touched by the player, say "You hear [the list of audible things which can be touched by the player].";
	otherwise say "You hear nothing unusual."
	
Definition: a thing is audible if the sound of it is not "silence".

Before printing the name of something audible while listening to a room:
	say "[sound] from the ".

Book 4 - Odors

A thing has some text called scent.  The scent of a thing is usually "odorless".
The player has some text called scent.  The scent of the player is usually "odorless".

The report smelling rule is not listed in any rulebook.

carry out smelling something:
	if the scent of the noun is "odorless":
		say "You smell nothing unexpected.";
	otherwise:
		say "You detect [scent of the noun] emanating from [the noun]."

instead of smelling a room:
	if a smellable thing can be touched by the player, say "You smell [the list of smellable things which can be touched by the player].";
	otherwise say "You smell nothing unexpected."
	
Definition: a thing is smellable if the scent of it is not "odorless".






Book 5 - Stairs

A staircase is a kind of door.  A staircase is usually open.  A staircase is seldom openable.  A staircase is usually scenery.

Instead of climbing a staircase:
	try entering the noun.


Book 6 - Doors

Knocking on is an action applying to one thing.  
Understand "knock on [something]" as knocking on.  

Instead of knocking on something which is not a door:
	say "There doesn't seem to be much point to that, as [the noun] isn't a door."

Check knocking on an open door:
	if location is an outdoor room:
		say "It's open:  [we] could just go in." instead;
	otherwise:
		say "It's open:  [we] could just go through." instead.
	
Check knocking on a door:
	let far side be the other side of the noun;
	if the far side does not enclose someone:
		say "No one answers." instead.




Book 7 - Properties of Objects

The description of a thing is usually "[We] give [the noun] a glance, but realize [regarding the noun][they] probably [aren't] important.";

A thing can be light or heavy. A thing is usually heavy.

A thing can be examined or unexamined.  A thing is usually unexamined.
After examining something (called the target):  now the target is examined.

A thing can be seen or unseen.  A thing is usually unseen.  The player is seen.  
After printing the name of something (called the target): now the target is seen.
	

Chapter 1 - Writing

A thing has some text called printing.  The printing of a thing is usually "blank".

Definition: a thing is legible if the printing of it is not "blank".

After examining a legible thing: try reading the noun.

Book 8 - Properties of Rooms

Definition: a room is locally-present if it is the location.

An outdoor room is a kind of room.
An indoor room is a kind of room.

A room can be passable or impassible. A room is usually passable.
Instead of going to an impassible room (this is the can't go to impassible rooms rule): say "You can't go that way any more."
Instead of someone going to an impassible room (this is the NPCs can't go to impassible rooms rule): stop the action.





Book 9 - Valid directions

Definition: a direction (called thataway) is viable if the room thataway from the location is a room.

Instead of going nowhere:
	let count of exits be the number of viable directions;
	if the count of exits is 0, say "You appear to be trapped in here." instead;
	if the count of exits is 1, say "From here, the only way to go is [a list of viable directions].";
	otherwise say "From here, the viable exits are to [a list of viable directions]."
	
A direction can be proper-named. Down is proper-named. Up is proper-named.



Book 10 - Look at Location as LOOK

Understand "here" or "surroundings" as a room when the item described is the location.

Understand "examine [any locally-present room]" or "look at [any locally-present room]" or "look [any locally-present room]" as local looking.  
Understand "look around" as looking.

Local looking is an action applying to one thing.

Carry out local looking:
	try looking.

Book 11 - New Actions


Part 1 - Fixing

Fixing is an action applying to one thing.

Understand "straighten [something]" as fixing.  
Understand "fix [something]" as fixing.

Carry out fixing:
	if the noun is crooked:
		now the noun is not crooked.
		
report fixing:
	if the noun is crooked:
		say "[The noun] looks a little straighter now.";
	otherwise:
		say "You fiddle with [the noun] a little but it looked pretty good to begin with."
		

Part 2 - Reading

Understand the command "read" as something new.
Understand "read [something]" as reading.  Reading is an action applying to one thing, requiring light.

Check reading:
	if the noun is not legible:
		say "Nothing is written on [the noun]."instead.
		
Carry out reading:
	let typing be the the printing of the noun;
	say "You read: [i][typing][/i][p]".
	
Report reading: do nothing.

Part 3 - Sliding

[this action is mostly to accomodate sliding down the banister of the main stairs....just because it's something I would do]
Sliding on is an action applying to one thing.

Understand "slide on/down [something]" as sliding on.


Report sliding on:
	say "You try your best, but you'll not be able to slide on [the noun]."




Book 12 - Default world model tweaks

Part 1 - Drawers

A drawer is a kind of openable container.  It is usually closed.

Part 2 - Kitchens and bathrooms

[Just for completeness of the house, we need to include these]

A toilet is usually seated.

When play begins:
	now every toilet is seated;
	now every toilet allows standing.
	
Understand "wash hands" or "wash up" as a mistake("[If a sink is in the location][We] quickly was our hands[otherwise]There's no sink here[end if].").

Instead of tasting a toilet:
	say "[We]['re] an impecible housekeeper, but that is a bit disgusting."
	
Instead of tasting a sink:
	say "[Their] standard of hygiene wouldn't allow you to do something like that."
	
A mirror is a kind of thing.  A mirror is in every bathroom.  A mirror is usually scenery. Understand "glass" or "reflection" as a mirror.

The description of a mirror is "It's shiny and very clean."

Instead of searching a mirror:
	say "You have not been sleeping well as of late and your face shows it.  The bags under your eyes, the unkempt hair and old, dirty clothing, leaves an image that is not all that pleasing looking back at you."

Part 3 - Bedrooms

A bedroom is a kind of room.

A bed is a kind of supporter.  A bed is always enterable.  A bed is usually reclining.
A bed is in every bedroom.  A bed is always scenery.

When play begins:
	now every bed allows seated;
	now every bed allows reclining;


Part 4 - Chairs

A chair is a kind of supporter.  A chair is always enterable.  A chair is usually seated.  A bed is always scenery.

Part 5 - Bookshelf

A bookshelf is a kind of fixed in place supporter.

After examining a bookshelf (called the shelfer) when a book is on the shelfer:
	let the tome be a random book on the shelfer;
	say "Your eyes wander over the shelves, picking out [tome]."
	
Instead of climbing a bookshelf (called shelfer):
	say "[one of]When you put your foot on a lower shelf and start to pull yourself up, the [shelfer] starts to tip.  You quickly jump off as you'd likely kill yourself if it fell on you.[or]Not a good idea to climb [the shelfer].[stopping]".

Understand "tip over/-- [a bookshelf] over/--" or "push [a bookshelf] over" as attacking.

Instead of attacking or pushing or pulling a bookshelf:
	say "They are much to heavy to move."
	
Instead of taking the a bookshelf:
	say "Taking all the books from the shelves is no simple task...and where would you put them?"
	
instead of inserting something into a bookshelf (called the shelfer): try putting the noun on the shelfer.
	
Rule for writing a paragraph about a bookshelf (called the shelfer):
	if a book is on the shelfer:
		let the tome be a random book on the shelfer;
		say "A book catches your eye: [tome].";
	otherwise:
		say "You glance at the shelves, but don't notice anything of interest.";
	now the shelfer is mentioned.

Rule for deciding whether all includes a book (called the item) when the item is on a bookshelf: it does not. [Prevent GET ALL here yet again.]

Rule for deciding whether all includes a bookshelf: it does.	

Part 6 - Books

A book is a kind of thing.  

Instead of dropping a book (called the droppee) when the location contains a bookshelf (called the shelfy):
	say "(putting the book on the shelf)";
	try putting the droppee on the shelfy instead.
	
Rule for printing the name of a book: say "[i][printed name][/i] by [author]".  A book is always proper-named.	

Instead of consulting a book about a topic: say "There doesn't seem to be an index, so there is no easy way to look up a topic."

Before listing contents [when taking inventory]: group books together as "books".

Book 13 - Translucency

A thing can be translucent.  A thing is usually not translucent.

Examining it through is an action applying to one visible thing and one thing.

Understand "examine [something] through/in [something]" or "look at [something] through/in [something]" or "x [something] through/in [something]" as examining it through.

Check an actor examining something through something (this is the can't look through an opaque lens rule):
	if the second noun is a container:
		if the noun is enclosed by the second noun:
			if the second noun is open or the second noun is transparent:
				make no decision; [This should be allowed through.]
	if the second noun is not translucent:
		if the actor is the player, say "[The second noun] doesn't make a very good lens." (A);
		rule fails.

Carry out examining something through something:
	say "Through [the second noun] you can make out [the noun]. [r]";
	try examining the noun.

Report someone examining something through something:
	say "[The actor] [peer] into [the second noun], examining [the noun] closely."
	

Book 14 - About and Credits

Requesting story information is an action out of world applying to nothing.  Understand "about" as requesting story information.
Carry out requesting story information:
	say "[i]House in River Styx[/i] is based on a real house in a real town.  Some of the history is factual based on first-hand accounts and assistance from the current owner of the home Todd Gerber.  Todd and I collaborated on the story, making the story fun, but trying to keep as much fact as possible and many thanks to Todd for his maps and information.[p]Harpua, the Implementor of this game, can be reached at <lautzenheiser.jason@gmail.com>. Type CREDITS to see the list of people who were involved in the design and testing."
	
Displaying the credits is an action out of world applying to nothing.  Understand "credits" as displaying the credits.
Carry out displaying the credits:
	say "Implementation: Jason Lautzenheiser (harpua) and Todd Gerber[br]
	First-Round Testing:[br]
	Cover art by[br]
	Title card by[br]".

Book 15 - Useless Actions

Understand "xyzzy" or "say xyzzy" as xyzzying.  Xyzzying is an action applying to nothing.  Carry out xyzzying: say "Ulp."

Book 16 - Day and Night

Night is a recurring scene.  Night begins when play begins.  Night ends when the time of day is 6:00 AM.
Sunrise is a recurring scene.  Sunrise begins when night ends.  Sunrise ends when the time of day is 7:00 AM.
Day is a recurring scene.  Day begins when sunrise ends.  Day ends when the time of day is 7:00 PM.
Sunset is a recurring scene.  Sunset begins when day ends.  Sunset ends when the time of day is 8:00 PM.
Night begins when sunset ends.

To decide whether it is daytime: decide on whether or not day is happening.
To decide whether it is nighttime: decide on whether or not night is happening.
To decide whether it is sunrise: decide on whether or not sunrise is happening.
To decide whether it is sunset: decide on whether or not sunset is happening.
To decide whether it is crepuscular: if sunrise is happening or sunset is happening, yes; no.

Volume 3 - Characters

Book 1 - Player

Part 1 - Some activities on oneself

Understand "you" or "body" as yourself.

The report touching yourself rule response (A) is "[We] seem to be all in one piece."

Volume 4 - Intro

Book 1 - When play begins

After printing the banner text, say "This work is licensed under the GNU Public License, version 3 or later."

When play begins: 
	now the time of day is 5:42 AM.
	the player is in the master-bedroom.


Volume 5 - Map

Book 1 - Regions

outside-house is a region.
near-house is a region in outside-house.
north-side is a region in outside-house.
west-side is a region in outside-house.
south-side is a region in outside-house.
east-side is a region in outside-house.
inside-house is a region.
basement-region is a region in inside-house.
ground-floor is a region in inside-house.
second-floor is a region in inside-house.

Instead of going down in an outdoor room:
	say "There is really nothing down from here except for the ground which is slightly soft, but still solid enough."

Book 2 - Backdrops

Part 1 - Sky

The sky is a backdrop.  The sky is everywhere.  The description of the sky is "[if the location is an outdoor room]A cloudy dreary afternoon sky, low hanging clouds threatening a cool rain.[otherwise]If you want to gaze at the sky, you'll have to go outside.  However the ceiling is very nice.[end if]".

Understand "blue" and "brilliant" as the sky.

Before doing anything other than examining to the sky, say "[if the location is an outdoor room]The sky is too far away[otherwise]That would be impractical, but it hardly matters, as you're indoors and there's no sky here[end if]." instead.

Part 2 - Ground

The grnd is a backdrop. The grnd is everywhere. The grnd is privately-named. The printed name of the grnd is "ground". The description of the grnd is "[if the location is an outdoor room]Because of the recent rains, the ground is quite soft, though really not very interesting[otherwise]If you want to investigate the ground (not that there's much reason to), you'll need to go outside[end if]."


Understand "dirt" and "earth" and "ground" as the grnd when the location is an outdoor room.

Before doing anything other than examining to the grnd, say "[if the location is an outdoor room]There's probably no need to do that[otherwise]If you want to do that, you'll need to go outdoors[end if]." instead.


Part 3 - Ceiling

The ceiling is a backdrop.  The ceiling is everywhere.  "TODO:  Ceiling description"	

Part 4 - Floor

The floor is a backdrop.  The floor is everywhere.  "TODO:  floor description"	

Understand "ground" as floor when the location is not an outdoor room.

Part 5 - Road

Road is a backdrop.  The road is everywhere.  The description of road is "A well travelled road that passes just in front of your house."



Part 6 - House

The house is a backdrop.   The house is everywhere.   The description of house is "[house-description]."


To say house-description:
	say "The house, built back in the 1850s, was completely abandoned when you purchased it.  The restoration work has brought it almost back to the grandeur that it must have shown when it was once the center of life and death in River Styx".

instead of examining the house when location is in inside-house:
	try examining location;

Book 3 - Front Porch

front-porch is an outdoor room in near-house.  The description is "You stand on the ramshackle porch that spreads the front of the house.   At one time it may have been a bit more dressy; but today, it's not much more than functional, and barely at that[if front-porch-hole is in location] especially with the large [front-porch-hole] in the middle of it[end if].  The [front-door] [if front-door is closed]sits closed[otherwise]stands open[end if]."
The printed name of front-porch is "Front Porch".

Before going down in front-porch:
	if front-porch-hole is in location:
		try entering front-porch-hole instead;
		
Part 1 - Front Porch Object

The front porch is scenery in front-porch.  The description of front porch is "The porch in its current state of disarray, little resembles what it might have been in its glory days gone by.  The [wooden slats] have been repaired and replaced many times, [if front-porch-hole is in the location] and with the large [front-porch-hole] gaping in the middle of the porch, it needs repaired again[otherwise]but are still marked by the occassional rotten board[end if].  [The supports] that lack classical detailing, line the front, holding up the roof that still in the middle slightly.  A [railing] on one side of the steps leading to the porch, is well worn but still sturdy.  All have been painted white which has chipped and faded over the years."
Understand "porch" and "front" and "front porch" as front porch.

Part 2 - Wooden slats

The wooden slats are part of the front porch.  The description of wooden slats is "The wooden slats that make up the flooring of the porch, have separated slightly from age, wear and repairs.  There are quite a few that need repaired still and sit rotted and loose."

Before taking wooden slats:
	if front-porch-hole is in location:
		say "The rest of the boards seem pretty solid.  Probably best to leave them be." instead;
	otherwise:
		say "You kick and pull at the wooden slats and create a large hole in the porch.";
		now  the front-porch-hole is in front-porch instead.

Understand "boards" and "board" and "wood" and "floor" and "flooring" as wooden slats.

Part 3 - Hole in porch

The front-porch-hole is an open unopenable easydoor.  It leads to under-front-porch. The printed name of front-porch-hole is "hole".   
Understand "hole" and "opening" as the front-porch-hole when location is front-porch and the front-porch-hole is in the location.
The description is "The hole in the porch leads to a dimly lit space under the porch.  It is much larger than you had thought possible, almost deep enough to stand in if you hunch over slightly."

Part 4 - Supports

The supports are part of the front porch.  The description of supports is "The posts that support the roof still seem sturdy enough, though the roof itself has begun to sag from age and weight."

Understand "posts" and "columns" as supports.

Part 5 - Railing

The baluster is part of the front porch.  The description of the baluster is "The simple railing leading up the steps has been worn down from the many hands that have held it.  Although it is the original railing built in the 1850s, it is well constructed and still strong."

Understand "railing" as baluster when location is front-porch.

Part 6 - Roof of porch

The front-porch-roof is part of the front porch.  The description of the front-porch-roof is "The roof while free of leaks, sags in the middle from the weight of the heavy [slate] that still sits atop the roof."  The printed name of front-porch-roof is "front porch roof".  Understand "front porch roof" and "roof" and "ceiling" as front-porch-roof.

Chapter 1 - Front porch roof slate

The slate is part of the front-porch-roof.  The description of the slate is  "Sharp slate lines the roof.  While it has seen plenty of wear and is repaired in spots, its still doing its job and will so for many years to come."
Understand "roofing" and "shingles" as slate.

Part 7 - Front Door

The front-door is a door.  The front-door is undescribed.  The front-door is west of front-porch and east of entryway.   The front-door is proper-named.
Understand "door" or "front door" as front-door when the location is front-porch.  The description of front-door is "The front door was the thing you first noticed about the abandoned house as you drove past that one summer day.  Despite the state of the rest of the house, the door appears fresh and new, regardless that it's been exposed to the weather and little used for decades."

The printed name of front-door is "front door".

Book 4 - Under the Porch

Under-front-porch is an outdoor room in near-house.   The description is "You are under the front porch in a space that is much larger than you expected.   Dim light shines through the [under-front-porch-hole] and spaces between the remaining slats of the porch."  The printed name of under-front-porch is "Under the front porch".

The under-front-porch-hole is an open unopenable easydoor in under-front-porch.  It leads to front-porch.  The printed name of front-porch-hole is "hole". It portals front-porch-hole.  
Understand "hole" and "opening" as under-front-porch-hole when location is under-front-porch.
The description is "You can easily pull yourself back up to the porch."

Before going up in Under-front-porch:
	try entering under-front-porch-hole instead;

Book 5 - EntryWay

The entryway is a room in ground-floor.  The printed name of entryway is "Entranceway".  Understand  "entranceway" as entryway.  The description of entryway is "The entrance to your home contains little room for any decoration short of a [coat-rack] to your left and [umbrella-stand] in the corner to your right.  A [entryway-staircase] leads upwards to the second floor, the oak banister ending in a swirl.  To the north lies your parlor and you can continue to the west to enter your living room.  To the east lies the [front-door] leading outside."

The coat-rack is a thing in the entryway.  The coat-rack is undescribed.  The coat-rack is scenery supporter.  The printed name of the coat-rack is "coat rack".  The description of coat-rack is "The solid oak coat rack stands stoicly in the south corner just inside the door, as if it guarding the entry into the rest of the house."

The umbrella-stand is a thing in the entryway.  The umbrella-stand is undescribed.  The umbrella-stand is scenery container.  The printed name of the umbrella-stand is "umbrella stand". The description of umbrella-stand is "The umbrella stand is pressed deep into the north corner of the entryway.  It's faux brass exterior gleams with the dimness of age, but it's functional and its deep interior will hold your umbrella (or other items) just fine."

Part 1 - Items

Chapter 1 - Map on wall

A town-map is a thing in the entryway.  The printed name of town-map is "framed map[if town-map is examined] of River Styx, Ohio". 
The description of town-map is "The map is labeled 'River Styx, Ohio - 1855.'  There is a road highlighted in yellow."
Understand "map" and "frame" and "river styx map" and "river styx" and "framed map" and "framed" as town-map.  
The town-map can be hanging.  The town-map is hanging.
The town-map can be crooked.  The town-map is crooked.

Instead of examining the town-map for the first time:
	say "You look closely at the framed map.  It reads 'River Styx, Ohio - 1855'.  You notice that there is one road that is highlighted a light yellow.";
	now the highlighted road is part of town-map.

Rule for writing a paragraph about the town-map:
	if the town-map is hanging:
		say "[The town-map] is hanging on the wall[if the town-map is crooked] slightly crooked[end if].[p]";
	else:
		continue the action.

instead of fixing the town-map:
	if the town-map is crooked:
		say "You adjust the map so that it's now hanging a little straighter.";
		now the town-map is not crooked;
		if slip-of-paper is off-stage:
			say "[line break]As you move the framed map a slip of paper falls from behind and floats to the floor.";
			now the slip-of-paper is in entryway;
	otherwise:
		say "You try to adjust the map, but it's hanging about as straight as it's going to get.".

After taking the town-map:
	now the town-map is not crooked;
	now the town-map is not hanging;
	if slip-of-paper is off-stage:
		say "[line break]As you move the framed map a slip of paper falls from behind and floats to the floor.";
		now the slip-of-paper is in entryway;

	
The highlighted road is a thing.  The description of highlighted road is "A short road labeled Basin St is highlighted on the map."  Understand "yellow" as highlighted road.

Does the player mean examining the highlighted road:  It is likely.

Chapter 2 - Slip of paper behind map

A slip-of-paper is a thing.  The description of slip-of-paper is "The slip of paper is no larger than the palm of your hand.  It is filled with writing on both sides."  The printed name of slip-of-paper is "slip of paper".  The inventory listing of slip-of-paper is "a small aged slip of paper".
Understand "slip" and "paper" and "slip paper" and "slip of paper" as slip-of-paper.
The printing of the slip-of-paper is "Hi Todd".


Part 2 - Main Staircase	

The entryway-staircase is a staircase.  The printed name of entryway-staircase is "stairs".  The entryway-staircase is up from entryway and down from upstairs-landing.
Understand "stairs" and "staircase" as entryway-staircase when location is entryway.

The banister is part of the entryway-staircase.  The description of the banister is "The polished cherry banister flows alongside the stairs.  It sits uncomfortably low and the fear of falling over it while going down the steep stairs is a constant concern."

Instead of sliding on the banister:
	if the location is entryway:
		say "Sliding up the banister will do nothing more than leave you right where you are, but if you insist I'll give it a try.....yep, you're right back where you started.";
	if the location is upstairs-landing:
		say "You climb up on the banister and begin your slide, picking up speed before you reach an uncomfortable decision that jumping off is preferable to hitting the newel at full speed.";
		move the player to entryway.

	
Book 6 - Parlor

The parlor is a room in ground-floor.  The parlor is north of the entryway.  The parlor is northeast of the living-room.  The printed name of parlor is "Parlor".	

The description of the parlor is "The parlor is a small room that you use primarly as your office.  The walls are lined with [shelves] filled with your favorite books and research material for your own writing.  In the center of the room is a [small writing desk] where you do most of your work.   Windows on the north and east walls look out into little used portions of the your yard."

The north-window is an easywindow in the parlor.  The north-window leads to north-yard.  The north-window is scenery.

The east-window is an easywindow in the parlor.  The east-window leads to east-yard.   The east-window is scenery.  The printed name of east-window is "eastern window".
The lookthrough of east-window is "The large tree dominates the view out this window."  Understand "east window" as east-window. 

Part 1 - Writing Desk

The small writing desk is a supporter in the parlor.  The description of small writing desk is "The cherry writing desk is compact in size and room enough for a few writing implements and paper.  Their are two drawers, one on either side." 
Understand "cherry writing desk" as small writing desk.

The right drawer is a drawer.  It is part of small writing desk.  The printed name of right drawer is "right desk drawer".  
The left drawer is a drawer.  It is part of small writing desk.  The printed name of left drawer is "left desk drawer". 

Does the player mean doing something to the right drawer:  It is likely.


Part 2 - Bookshelves

Some shelves are a bookshelf in the parlor. The description of shelves is "The bookshelves stretch from floor to ceiling, all shelves full of books, in some places multiple level deeps.  [first time]You've read many of the books here, but there are more than you could read in your lifetime.[only]".  
Understand "bookshelf/shelf/bookshelves/shelve" as shelves.

Understand "read every/all of/-- the/-- book/books" as a mistake("No doubt you've read many of these already, but it would take multiple lifetimes to work through all of these again.").


Part 3 - Books

A parlor book is a kind of book.

Some parlor books on the shelves are defined by the Table of Readable Parlor Books.

Instead of examining a parlor book:
	say "[one of]You flip through the pages and this passage jumps out at you;[or]You recall a passage that has stuck with you all these years; [at random] '[i][description][/i]'[line break]".


Table of Readable Parlor Books
parlor book	author	description
Creating Interactive Fiction with Inform 7	"Aaron Reed"	"...[one of]in addition to Inform's wizardly ability to retrieve information about the past, it can also send information into the future[or]an overturned barrel is a fixed in place suporter in Weed-strewn Rust.[cycling]..."
The Name of the Wind	"Patrick Rothfuss"	"...in a sudden flash I remembered coming back to find my troupe killed that evening so many years ago."
The Crippled God	"Steven Erickson"	"...still, it wasn't good being hungry so young, and starving was worse of all."



Book 7 - Front Yard

The east-yard is an outdoor room in east-side.  The printed name of east-yard is "Front Yard".  East-yard is east of front-porch.  East-yard is southeast of north-yard and northeast of south-yard.  The description of east-yard is "There is not much room in this part of the yard as the house is not too far off the main road.  There is however a [large shade tree] in the middle if it that shades the house nicely in the morning sun."

Understand "East yard" and "Front yard" as east-yard.  Understand "yard" as east-yard when the location is east-yard.

The large shade tree is scenery in east-yard.  The description of it is "The large shade tree stands majestically in your front yard.  It is well over fifty feet tall and easily over a hundred years old.  The tree branches spread over the front porch to shade the house from the mornig sun.  The branches closest to the house have come very close to an upstairs window."

instead of climbing the tree:
	try going up instead;

Instead of going up in east-yard:
	say "The lowest limbs of this tree are much to high to reach."

Instead of going in east-yard when the noun is east or the noun is southeast or the noun is northeast:
	say "[stay-out-of-road]"
	
instead of jumping in east-yard:
	say "You jump, but you still can't reach the branches of the tree."
	
To say stay-out-of-road:
	say "This road is pretty well traveled so you wouldn't want to go out into it."
	
Instead of examining the house when the location is east-yard:
	say "The front of the house is what attracted you to the house in the first place.  The large front porch while in some disrepair leads to the front door.  A full size window sits hidden in the shadow of the porch."
	
The front-window is an easywindow in east-yard.  It gates east-window.  The front-window is scenery.  It leads to parlor.  The printed name of front-window is "front window".
The lookthrough of front-window is "Peering through the window, you can see your desk sitting amongst the bookshelves in the parlor."

Instead of going north in east-yard:
	say "To the north are the [multiflora rose bushes] you've been trying to remove unsuccessfully.   You couldn't go much further north without quite a bit of pain."
	
The multiflora rose bushes are scenery in east-yard.  The description of multiflora rose bushes is "These bushes are producing a beautiful pinkish rose.  While nice looking, they are taking over your front yard."

Book 8 - Driveway	

The Driveway is an outdoor room in east-side.   Driveway is south of east-yard and east of south-yard.  The description of driveway is "The [gravel] driveway ends here and continues east to the road."

The gravel is scenery in the driveway.  The description of gravel is "A fresh layer of small white gravel cover the driveway."

Instead of taking the gravel:
	say "You kick the gravel with you feet but find nothing of interest."

Instead of going in driveway when the noun is east or the noun is southeast or the noun is northeast:
	say "[stay-out-of-road]"


Book 9 - Living Room

The living-room is a room in ground-floor.  The living-room is west of the entryway.  
The printed name of the living-room is "Living Room".  Understand "living room" and "living" as living-room.
The description of living-room is "Family time is spent in the living room.  A [television] hangs about the [mantle] of the [fireplace] that sits on the north wall.  A window to the south gives a clear view of the driveway.  The entryway to the front of the house is to the east.  The parlor lies to the northeast and the dining room to the north.  You can enter the kitchen to the west."

The television is a fixed in place switched off device in the living-room.   Understand "TV/tele/" or "boob tube" as television.
The description of television is "The TV hangs above the mantle where it can be seen throughout the room.  It doesn't get much use as you're not much of a watcher."

instead of switching on the television:
	say "You turn the TV on and flip through a few channels, but find nothing of interest so you turn it back off."

instead of switching off the television:
	say "The TV is already off."

The fireplace is scenery in the living-room.
The description of fireplace is "The stone fireplace sits proudly in the corner of the room, positioned strategically so the warmth flows into the dining room as well.  It now sits cold, having not been used since the winter."

The mantle is part of the fireplace.  
The description of mantle is "The wooded mantle sits atop the fireplace and provides a little room for family photos. "

The south-living-room-window is an easywindow.  The south-living-room-window is in the living-room.  The south-living-room-window is unopenable.   The south-living-room-window is scenery. The printed name of south-living-room-window is "south window".  The lookthrough of the south-living-room-window is "You can see the driveway from here, at least the end of it and the walk leading to the front door."

instead of opening the south-living-room-window:	
	say "This window has always been stuck closed.  No amount of coaxing has ever loosened the window enough to open."


Book 10 - Master Bedroom

The master-bedroom is a bedroom in second-floor.  The master-bedroom is west of the upstairs-hallway.
The printed name of master-bedroom is "Master Bedroom".

The description of the master-bedroom is "When you bought the house, this was actually two rooms, but you restored it to it's original floorplan and made it one large room.  The bed lies on the south side of the room beside a large window looking out to the pine forest to the south.  A [master-dresser] stands in the corner near the entrance to a small closet which lies to the southeast. [p]To the northeast is one of the many bathrooms in the house.  West lies the large walkin closet and the hallway to the rest of the upstairs is to the east."

The description of the bed is "The large king size bed is in the southern half of the bedroom."

The master-bedroom-window is an easywindow in master-bedroom.    The master-bedroom-window is unopenable.  The master-bedroom-window is scenery.  The printed name of master-bedroom-window is "bedroom window".  
The lookthrough of master-bedroom-window is "[if it is nighttime]It is too dark to make out anything more than shadows.[otherwise]Looking to the south you can see the copse of pine trees that line the southern end of your property.  Attached to the top left corner of the window is a large [hornets nest]."

Instead of opening the master-bedroom-window:
	say "This window was painted shut decades ago and you've not been able to break it free."
	
The hornets nest is a part of the master-bedroom-window.  The description of hornets nest is "[nest-description]."

To say nest-description:
	if it is sunrise:
		say "The nest is beginning to come to life, as a few sentinals begin to emerge from the nest";
	if it is sunset:
		say "The activity of the nest is starting to wind down";
	if it is daytime:
		say "Hornets fly in and out of the nest at a constant rate and many crawl along the window as if looking for a way in";
	if it is nighttime:
		say "Though you can just make out the nest in the darkness, there doesn't seem to be any activity"

Part 1 - Dresser

The master-dresser is a supporter in the master-bedroom.  The description of master-dresser is "The dresser is made of cherry wood and matches much of the other furniture in the home.  Their are two drawers, one on either side and one large one on the bottom.  A mirror attached to the back stands up from the back slightly leaning against the wall." 

Understand "master dresser" and "dresser" and "large dresser" as master-dresser when location is master-bedroom.  The printed name of master-dresser is "large dresser"

The right-master-drawer is a drawer.  It is part of master-dresser.  The printed name of right-master-drawer is "right dresser drawer".  
The left-master-drawer is a drawer.  It is part of master-dresser.  The printed name of left-master-drawer is "left dresser drawer". 
The bottom-master-drawer is a drawer.  It is part of master-dresser.  The printed name of bottom-master-drawer is "bottom dresser drawer". 

understand "right drawer" and "drawer" as right-master-drawer when location is master-bedroom.
understand "left drawer" and "drawer" as left-master-drawer when location is master-bedroom.
understand "bottom drawer" and "drawer" as bottom-master-drawer when location is master-bedroom.


Does the player mean doing something to the right-master-drawer:  It is likely.

Book 11 - Attic

The attic is a room in the second-floor.  The printed name of attic is "Attic".  The description of attic is "The attic with its low beams is made smaller by heaps of dusty piles.  Old battered boxes and garbage bags filled with items for later use.  To the south the old wooden door leads to walkin closet and a set of stairs lead down."

Book 12 - Master Walkin Closet

The master-walkin is a room in second-floor.  The master-walkin is west of the master-bedroom.
The printed name of master-walkin is "Master Walkin Closet".
The description of master-walkin is "The walkin closet, once the servants' quarters, now holds clothes racks that sit amongst the low beams. You have plans to finish this, but for now it's just an extension of your bedroom.  The bedroom is back east and an old wooden door leads north to the attic."

The attic-door is a door.  The attic-door is scenery.  The printed name of attic-door is "old wooden door".  The attic-door is north of master-walkin and south of attic. The attic-door is closed.  The attic-door is openable.
Understand "door" or "attic door" or "old wooden door" or "wooden" or "wooden door" as attic-door when location is attic or the location is master-walkin.

The description of attic-door is "The attic door is six old rickety 2x4s, nailed together with hinges. More to keep the draft out rather than anything else."


Book 13 - Master Closet

The master-closet is a room in second-floor.  The master-closet is southeast of the master-bedroom.
The printed name of master-closet is "Master Closet".
The description of master-closet is "This closet holds the majority of your [everyday clothes], the ones you need at hand quickly.  Above the [rack] is a [master-closet-shelf] on which are some [boxes-and-papers][rolls-of-wallpaper]."


To say rolls-of-wallpaper:
	if secret-door is not in location:
		say ".  In the darkness behind your hanging clothes, leans old [rolls of wallpaper] that were here when you moved in";
	otherwise:
		if rolls of wallpaper are in location:
			say " and strewn on the floor are [rolls of wallpaper]";
	
Some everyday clothes are in the master-closet.  The description of the everyday clothes is "Just your usual shirts and sweaters that you like to pull out when you are not going out.   Your good clothes are all in your main walkin closet off to the west."

Instead of doing anything with the everyday clothes, say "You flip through your shirts and see many of your favorites."

The rack is a fixed in place thing in the master-closet.  The description of the rack is "The rack your clothes are hanging from is nothing more than an old metal water pipe that you salvaged from the workshop and fixed into either wall."

Before doing anything with the rack, say "The rack is in pretty sturdy, you'd need some tools to remove it.  None of which you have with you." instead.

The master-closet-shelf is a fixed in place supporter in the master-closet.  The description is "The shelf is a piece of plywood that you nailed in above the rack to add some extra storage."  The printed name of master-closet-shelf is "shelf"

Understand "shelf" as master-closet-shelf when location is master-closet.

Before doing anything with the master-closet-shelf, say "The shelf is nailed soundly into the wall.  You'll not do that so easily." instead.

Some boxes-and-papers are things on the master-closet-shelf.  The printed name is "boxes and papers".  
Understand "boxes" and "papers" and "boxes and papers" as boxes-and-papers.

Before doing anything with the boxes-and-papers: say "You search through the boxes but find nothing of interest." instead.

Some rolls of wallpaper are things in the master-closet.  The description of rolls of wallpaper is "The old rolls look to have been here for a long time, maybe since the house was built."

The secret-door is an easydoor.  The description of secret-door is "The small door is just big enough for you to fit through if you crawl on your knees."  The printed name of secret-door is "secret door in the closet".
Secret-door leads to play-room.


Secret-door portals secret-door2.

before going east in master-closet:
	if secret-door is in location:
		try entering secret-door instead.

after taking, pushing, pulling, attacking or searching the rolls of wallpaper:
	if secret-door is not in master-closet:
		say "As you move the rolls, they fall over revealing what appears to be a small door set into the back of the closet.";
		now the secret-door is in master-closet;
	otherwise:
		say "You pick up the rolls of wallpaper."
	
Before opening secret-door:
	if secret-door2 is in nothing:
		say "You push on the door, but it feels like something is blocking the other side." instead;
		

Book 14 - Play room

The play-room is a room in second-floor.  The play-room is south of the upstairs-hallway.
The printed name of play-room is "Play Room".	The description of play-room is "The kids play room is filled with all kinds of toys and books.  The kids do a decent job of keeping things picked up, though there are a few books and toys strewn around the room.  A [beanbag] sits in the corner next to the [play-bookshelf] on the east wall.  Along the wall to the west is a [toychest][if stuffed animals are on toychest-top] with [stuffed animals] sitting on top[otherwise].  Some [stuffed animals] are strewn all over the floor[end if].  A window looks out to the south."

A beanbag is a chair in the play-room.  The description of beanbag is "The large beanbag is the kids favorite place to read."
Understand "bag" as beanbag.

A play-bookshelf is a bookshelf in play-room.  The description of play-bookshelf is "A small bookshelf sits along the east wall holding many, mostly childrens books."  The printed name of play-bookshelf is "bookshelf".
Understand "small/-- bookshelf/shelf/bookshelves/shelve" as play-bookshelf when location is play-room.

A toychest is a closed container in play-room. the toychest is openable. The toychest-top is a supporter.  The toychest-top is part of the toychest.  Understand "chest" as toychest.  Understand "top" or "toychest top" or "lid" as toychest-top when location is play-room.
The description of toychest is "The large toychest was a hand me down from your mother.  [if toychest is open and the number of things in toychest is one]There is nothing but some random toys inside.[otherwise]Amongst the random toys you see [list of things in the toychest].[end if]"
[TODO:: fix issue with displaying contents of chest]

Some random toys are scenery in the toychest.

instead of doing anything with the random toys:
	say "They is really nothing special about the random toys."

instead of examining the toychest-top:
	try examining the toychest instead.

The bulge is a thing. The printed name of bulge is "small bulge in the wall".

The playroom-window is an easywindow in play-room. The playroom-window is scenery. The lookthrough of playroom-window is "You have a good view of the cospe of pine trees from this room through the [if open]open [end if]window."  The playroom-window is openable.  The printed name of playroom-window is "window".

instead of entering the playroom-window:
	say "Climbing out onto the slick metal roof is not safe."
	
instead of going south in the play-room:
	if playroom-window is open:
		try entering the playroom-window instead;
	otherwise:
		say "The only way south would be through the window, which is neither open nor a good idea."

The secret-door2 is an easydoor.  The description of secret-door2 is "The small door is just big enough for you to fit through if you crawl on your knees." The printed name of secret-door2 is "door hidden behind the toychest".
secret-door2 leads to master-closet.

instead of going west in play-room:
	if secret-door2 is in location:
		try entering secret-door2 instead;	
	
After opening secret-door2 for the first time:
	if secret-door is in nothing:
		say "As you pull the small door open, rolls of wallpaper come tumbling through.";
		now secret-door is in master-closet;
		now rolls of wallpaper are in play-room;
	otherwise:
		say "You open the small door revealing a passage into darkness."

Some stuffed animals are things on toychest-top.  The description of stuffed animals is "The animals are a lifetime collection from your childhood and those of your kids.  [if stuffed animals are on toychest-top]There are so many they cover most of the top of the toychest and perched precariously halfway up the wall.[end if]"

before taking, pushing, pulling, attacking or searching the stuffed animals:
	if stuffed animals are on the toychest-top:
		say "As you get close to the animals, they shift and fall all over the floor, leaving the toychest bare.";
		now stuffed animals are in play-room instead.

before opening the toychest:
	if stuffed animals are on the toychest-top:
		say "You push the animals off the top of the chest and open it.";
		now stuffed animals are in play-room;

after opening the toychest for the first time:
	say "As you open the chest, the lid pushes against the wall and you have to move it out slightly for the lid to fully open.  As you do, you notice a slight bulge in the wall that you never noticed before.";
	now the toychest is open;
	now the bulge is in the play-room instead;
		
instead of examining, touching, taking, attacking, pushing or pulling the bulge:
	say "As you [verb word] the bulge, the wallpaper tears with your touch and you discover a small door behind the toychest.";
	now the bulge is off-stage;
	now the secret-door2 is in play-room;
		





Part 1 - Playroom Books

The playroom book is a kind of book.

Some playroom books on the play-bookshelf are defined by the Table of Readable Playroom Books.

Instead of examining a playroom book:
	say "[one of]You flip through the pages and chuckle at; [or]One of your childs favorite lines from this book; [at random] '[i][description][/i]'[line break]".

Table of Readable Playroom Books
parlor book	author	description
Invasion of the Appleheads	"Annette and Gina Cscone"	"Kate couldn't believe she was holding her parents in her hands."

Book 15 - Servants Stairs

The servants-stairs is a staircase. The description is "The dark stairs that lead down look a bit rickety, but usuable. [first time]These were once the servants stairs that lead directly to the kitchen area from the servant's quarters.[only]".
The printed name of servants-stairs is "servants stairs".  The servants-stairs are up from pantry and down from attic.   

Understand "stairs" and "staircase" as servants-stairs when location is pantry or the location is attic.

Book 16 - Upstairs-hallway

The upstairs-hallway is a room in second-floor.  The upstairs-hallway is west of the upstairs-landing.
understand "hallway" as upstairs-hallway when location is in second-floor.
The printed name of upstairs-hallway is "Second Floor Hallway".

The description of upstairs-hallway is "The long hallway travels east to west with rooms branching out.  There is a runner carpet that covers the hardwood floor.  Photographs of ancestors line the walls.  The hallway ends to the west in the master bedroom and to the east at the stairs leading down.  To the north lies the kids bathroom and to the south is the playroom." 

Book 17 - Upstairs Landing

The upstairs-landing is a room in second-floor.  The printed name of upstairs-landing is "Second Floor Landing".
The description of upstairs-landing is "You're at the top of the main stairs leading back to the first floor.  The steep stairs curve slightly to the left before continuing doward.  The low [banister] of polished cherry, flows downward with the stairs on the left side.[p]The hallway continues to the west and a small alcove is tucked away to the east.  The kids bedroom is north of here."


Book 18 Alcove

The alcove is a room in second-floor.  The alcove is east of the upstairs-landing.
The printed name of alcove is "Alcove".
The description of alcove is "This extension of the hallway continues past the stairs.  You created a little reading nook with a [soft chair], [side table], and [small bookshelf].  The area is a pleasant area to sit and relax while reading, but the [short railing] is the only thing from keeping you from a long drop to the bottom of the stairs."

The soft chair is a fixed in place chair in the alcove.  The description of soft chair is "The soft plush chair is designed more for comfort than looks.  Up here in the alcove, it fits nice and many times you've fallen asleep here while reading."

The side table is a fixed in place supporter in the alcove.   The description of side table is "The small side table serves it's purpose quite well, with a small reading lamp sitting on top and a small drawer.  A small coffee ring stains the surface where many a cup of coffee has sat."

A side-table-drawer is a drawer.  The printed name of side-table-drawer is "small drawer".  The side-table-drawer is part of the side table.  The description of side-table-drawer is "The small drawer is not very large and would not hold very much."  Understand "small/-- drawer" as side-table-drawer when location is alcove.

The coffee stain ring is part of the side table.  The printed name of coffee stain ring is "coffee stain".  The description of coffee stain ring is "The coffee stain is a result of many cups that you've had sitting here, so many in fact that the ring appears to be part of the finish of the table now."

Instead of taking the coffee stain ring: say "You try your best to wipe it off, but it's embedded into the finish now."

The reading lamp is a switched off device on the side table.  The description of reading lamp is "The small lamp [if switched on]puts out just enough light to read[otherwise]sits dark on the stand[end if]."

The short railing is scenery in the alcove.  The description of railing is "The railing is just an extension of the banister. It too sits uncomfortably low and the ease of which you could fall over is somewhat frightening."

Understand "banister" as short railing when location is alcove.


Part 1 - small bookshelf

The small bookshelf is a bookshelf in the alcove. The description of small bookshelf is "The small bookshelf sits in the corner and while only only three shelves high, are filled to overflowing with children's books."

Understand "small/-- bookshelf/shelf/bookshelves/shelve" as small bookshelf when location is alcove.

Understand "read every/all of/-- the/-- book/books" as a mistake("No doubt you've read many of these already, but it would take multiple lifetimes to work through all of these again.").


Part 2 - Kids Books

The kids book is a kind of book.

Some kids books on the small bookshelf are defined by the Table of Readable Kids Books.

Instead of examining a kids book:
	say "[one of]You flip through the pages and chuckle at; [or]One of your childs favorite lines from this book; [at random] '[i][description][/i]'[line break]".

Table of Readable Kids Books
parlor book	author	description
Mrs Brice's Mice	"Syd Hoff"	"Mrs. Brice had twenty-five mice."


Volume 6 -  Unimplemented map

Book 1 - South Porch

south-porch is an outdoor room in near-house. 
The printed name of south-porch is "South Porch".

Book 2 South door

south-door is a door.  The south-door is south of the kitchen and north of south-porch.  The printed name of south-door is "sliding door".

Book 3 North West Porch

north-west-porch is an outdoor room in near-house.  
The printed name of north-west-porch is "Northwest Porch".

Book 4 Northwest-door

north-west-door is a door.  The north-west-door is north of the kitchen and south of the north-west-porch.

Book 5 North east porch

north-east-porch is an outdoor room in near-house.  
The printed name of north-east-porch is "Northeast Porch".

Book 6 Dining-room-door

The dining-room-door is a door.  The dining-room-door is north of the dining-room and south of the north-east-porch.

Book 7 Pergola

The pergola is an outdoor room in near-house.  The printed name of pergola is "Pergola"

Book 8 Patio door

the patio-door is a door.  The patio-door is east of the pergola and west of the pantry.


Book 9 North Yard

The north-yard is an outdoor room in north-side.  The north-yard is north of north-east-porch.  The north-yard is northeast of the north-west-porch.
The printed name of north-yard is "North Yard".

Book 10 East Stream Bed

The east-stream is an outdoor room in north-side.   The east-stream is north of the north-yard.
The printed name of east-stream is "Eastern Stream Bed".

Book 11 Middle Stream Bed

The middle-stream is an outdoor room in north-side.   The middle-stream is west of the east-stream.
The printed name of middle-stream is "Middle Stream Bed".

Book 12 North Stream Bed

The north-stream is an outdoor room in north-side.   The north-stream is north of the middle-stream.
The printed name of north-stream is "Northern Stream Bed".


Book 13 Backyard

The backyard is an outdoor room in west-side.  The backyard is west of pergola.  The backyard is southwest of north-yard.  The printed name of backyard is "Back yard"


Book 14 Orchard

The orchard is an outdoor room in west-side.  The orchard is west of backyard.
The printed name of orchard is "Orchard".

Book 15 West Woods

The west-woods is an outdoor room in west-side.  The west-woods is a west of orchard.
The printed name of west-woods is "West Woods".

Book 16 South Yard

south-yard is an outdoor room in south-side.  The south-yard is southeast of backyard.  The south-yard is south of south-porch.
The printed name of south-yard is "The Southern Yard".

Book 17 Amongst the Pine Trees

amongst-the-pines is an outdoor room in south-side.  Amongst-the-pines is south of south-yard.  The printed name of amonst the pines is "Amongst the Pines"


Book 18 Basement

The basement is a room in basement-region.  The printed name of basement is "Basement".

Book 19 Root Cellar

The root-cellar is a room in basement-region.  The printed name of root-cellar is "Root Cellar".  The root-cellar is east of basement.



Book 20 Exterior Basement Entrance

The exterior-basement-door is a door.  The printed name of exterior-basement-door is "outside basement entrance".  The exterior-basement-door is above root-cellar and below north-yard.  It is openable and closed.

Before going down in north-yard:
	try entering exterior-basement-door instead.
	

Book 21 Pantry

The pantry is a room in ground-floor.  The pantry is west of the kitchen.
The printed name of the pantry is "Pantry".

Book 22 Mudroom

The mud-room is a room in ground-floor.  The mud-room is north of the pantry. 
The printed name of mud-room is "Mud Room".

Book 23 Basement Stairs	

The basement-stairs is a staircase.  The printed name of basement-stairs is "basement stairs".  The basement-stairs leads to basement.  The basement-stairs is up from basement and down from mud-room.
Understand "stairs" and "staircase" as basement-stairs when location is mud-room.


Book 24 Dining Room

The dining-room is a room in ground-floor.  The dining-room is north of the living-room.  The dining-room is west of the parlor.
The printed name of the dining-room is "Dining Room"



Book 25 Kitchen

The main-kitchen is a kitchen in ground-floor.  The main-kitchen is west of the living-room and southwest of the dining-room.
The printed name of the main-kitchen is "Kitchen".

Book 26 Downstairs Bathroom

The downstairs-bathroom is a bathroom in ground-floor.  The downstairs-bathroom is east of the mud-room.
The printed name of the downstairs-bathroom is "Downstairs Bathroom".






Book 27 Kids room

The kids-room is a bedroom in second-floor.  The kids-room is north of the upstairs-landing.
The printed name of kids-room is "Kids Bedroom".





Book 28 Kids Bathroom

The kids-bathroom is a bathroom in second-floor.  The kids-bathroom is north of the upstairs-hallway.
The printed name of kids-bathroom is "Second Floor Bathroom".


Book 29 Master Bath

The master-bath is a bathroom in second-floor.  The master-bath is northeast of the master-bedroom.
The printed name of master-bath is "Master Bathroom".



Book 30 Spring House

The spring-house is a room in north-side.  the spring-house is west of north-yard.
The printed name of spring-house is "Spring House".

Book 31 Workshop

The workshop is a room in west-side.  The workshop is south of orchard.   the workshop is southwest of backyard.
The printed name of workshop is "Workshop".