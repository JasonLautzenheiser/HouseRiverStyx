"The House in River Styx" by Jason Lautzenheiser

[This game is copyrighted 2015 by Jason Lautzenheiser, who asserts the moral right to be recognized as the author.  It is released under the GNU Public License 3.0.  See http://www.gnu.org/copyleft/gpl.html for further details.]

Volume 0 - Meta

Book 0 - Meta Stuff

The story genre is "Horror".
The story title is "The House in River Styx".
The story author is "Jason Lautzenheiser".
The release number is 1.
The story creation year is 2015.
Use American dialect, full-length room descriptions, and the serial comma.
The story description is "An American horror story"

Book 1 - Includes

Include Punctuation Removal by Emily Short.
Include Room Description Control by Emily Short.
Include Tailored Room Description by Emily Short.
Include Modern Conveniences by Emily Short.
Include Postures by Emily Short.
Include Easy Doors by Hanon Ondricek.

Include Typographical Conveniences by Daniel Stelzer.




Book 1a - Includes - not for release

Include Response Assistant by Aaron Reed.



Volume 1 - New Stuff

Book M - Miscellaneous Fixes

Section A - Beta Comments

First after reading a command (this is the ignore beta-comments rule):
	if the player's command matches the regular expression "^(\p|\*)":
		say "(Noted.)";
		reject the player's command.

Understand "bug" or "bug [text]" as a mistake ("!!! BUG !!![br][note][bracket]Bug flagged.[close bracket][/note]");

Section B - Pronouns

To set the/-- pronoun it to (O - an object): (- LanguagePronouns-->3 = {O}; -).
To set the/-- pronoun him to (O - an object): (- LanguagePronouns-->6 = {O}; -).
To set the/-- pronoun her to (O - an object): (- LanguagePronouns-->9 = {O}; -).
To set the/-- pronoun them to (O - an object): (- LanguagePronouns-->12 = {O}; -).

Section C - Slight Changes to Extensions

Section D - Modifications to Standard Actions

instead of pushing or pulling or turning an open door:  try closing the noun.
instead of pushing or pulling or turning a closed door:  try opening the noun.
instead of pushing or pulling or turning an open easydoor:  try closing the noun.
instead of pushing or pulling or turning a closed easydoor:  try opening the noun.

Rule for deciding whether all includes scenery:  it does not.
Rule for deciding whether all includes people while taking: it does not.
Rule for deciding whether all includes fixed in place things while taking: it does not.

The can't go through undescribed doors rule is not listed in the check going rulebook.

The describe what's on scenery supporters in room descriptions rule is not listed in any rulebook.
After examining a scenery supporter (called the holder):
	if the holder encloses something:
		say "On [the holder] [we] can see [a list of things that are on the holder].";
	continue the action.
	
Understand "release [something]" as dropping.

Section E - Emptiness

Definition: a container is empty if the first thing held by it is nothing.
Definition: a supporter is empty if the first thing held by it is nothing.



Section G- Inventory Listing

Inventory listing style is a kind of value.  The inventory listing styles are tall, wide, curt, minimal, divided tall, and divided wide.  Current inventory listing style is an inventory listing style that varies.  The current inventory listing style is divided wide.

Instead of taking inventory when the current inventory listing style is divided wide:
	if the number of things enclosed by the player is 0:
		say "[We] [are] empty handed." instead;
	say "[We] are wearing ";
	now all things enclosed by the player are unmarked for listing;
	now all things worn by the player are marked for listing;
	if no things worn by the player are marked for listing:
		say "nothing";
	otherwise:
		list the contents of the player, as a sentence, listing marked items only;
	say " and carrying ";
	now all things carried by the player are marked for listing;
	now all things worn by the player are unmarked for listing;
	if no things carried by the player are marked for listing:
		say "nothing";
	otherwise:
		list the contents of the player, as a sentence, tersely, giving brief inventory information, including contents, listing marked items only;
	say ".[p]".

	
Section H - Standard Responses

The block saying sorry rule response (A) is "You mumble something apologetic under your breath."
The parser error internal rule response (R) is "I'm not sure what you're talking about."

Section I - Listing exits

When play begins: 
	now the left hand status line is "Exits: [exit list]"; 
	now the right hand status line is "[location]". 

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
heading		shortcut    
north		"N"    
northeast	"NE"    
northwest	"NW"    
east		"E"    
southeast	"SE"    
south		"S"    
southwest	"SW"    
west		"W"    
up		"U"    
down		"D"    
inside		"IN"    
outside		"OUT"  

Section J - Input editing

First after reading a command:
	remove stray punctuation.
	
Section V - Verbs

To peer is a verb.




Section ZZ - Not for release

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


Book S - Seen and Unseen

A thing can be seen or unseen.  A thing is usually unseen.  The player is seen.  
After printing the name of something (called the target): 
	now the target is seen.
	
Book AE- Automatic Examining

A thing can be examined or unexamined.  A thing is usually unexamined.  
Carry out examining something:
	now the noun is examined.
	
After taking something unexamined:
	say "Taken.  [run paragraph on]";
	try examining the noun.

Book LS - Listening and Sounds

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

Book O - Odors

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


Book R - Reading

Understand the command "read" as something new.
Understand "read [something]" as reading.  Reading is an action applying to one thing, requiring light.

Check reading:
	if the noun is not legible:
		say "Nothing is written on [the noun]."instead.
		
Carry out reading:
	let typing be the the printing of the noun;
	say "You read: [i][typing][/i][p]".
	
Report reading: do nothing.

Book S - Stairs

A staircase is a kind of easydoor.  A staircase is usually open.  A staircase is seldom openable.

Instead of climbing a staircase:
	try entering the noun.


Book D - Doors

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
					
Book PO - Properties of Objects

The description of a thing is usually "[We] give [the noun] a glance, but realize [regarding the noun][they] probably [aren't] important.";

A thing can be light or heavy. A thing is usually heavy.

Chapter 1 - Writing

A thing has some text called printing.  The printing of a thing is usually "blank".

Definition: a thing is legible if the printing of it is not "blank".

After examining a legible thing: try reading the noun.

Book PR - Properties of Rooms

Definition: a room is locally-present if it is the location.

An outdoor room is a kind of room.
An indoor room is a kind of room.

A room can be passable or impassible. A room is usually passable.
Instead of going to an impassible room (this is the can't go to impassible rooms rule): say "You can't go that way any more."
Instead of someone going to an impassible room (this is the NPCs can't go to impassible rooms rule): stop the action.


Book V - Valid directions

Definition: a direction (called thataway) is viable if the room thataway from the location is a room.

Instead of going nowhere:
	let count of exits be the number of viable directions;
	if the count of exits is 0, say "You appear to be trapped in here." instead;
	if the count of exits is 1, say "From here, the only way to go is [a list of viable directions].";
	otherwise say "From here, the viable exits are to [a list of viable directions]."
	
A direction can be proper-named. Down is proper-named. Up is proper-named.



Book LLL - Look at Location as LOOK

Understand "here" or "surroundings" as a room when the item described is the location.

Understand "examine [any locally-present room]" or "look at [any locally-present room]" or "look [any locally-present room]" as local looking.  
Understand "look around" as looking.

Local looking is an action applying to one thing.

Carry out local looking:
	try looking.

Book NA - New Actions

Section  A - Fixing

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
		


Book EB - Everywhere Backdrops

Section A - Sky

The sky is a backdrop.  The sky is everywhere.  The description of the sky is "[if the location is an outdoor room]A cloudy dreary afternoon sky, low hanging clouds threatening a cool rain.[otherwise]If you want to gaze at the sky, you'll have to go outside.  However the ceiling is very nice.[end if]".

Understand "blue" and "brilliant" as the sky.

Before doing anything other than examining to the sky, say "[if the location is an outdoor room]The sky is too far away[otherwise]That would be impractical, but it hardly matters, as you're indoors and there's no sky here[end if]." instead.

Section B - Ground

The grnd is a backdrop. The grnd is everywhere. The grnd is privately-named. The printed name of the grnd is "ground". The description of the grnd is "[if the location is an outdoor room]Because of the recent rains, the ground is quite soft, though really not very interesting[otherwise]If you want to investigate the ground (not that there's much reason to), you'll need to go outside[end if]."


Understand "dirt" and "earth" and "ground" as the grnd when the location is an outdoor room.

Before doing anything other than examining to the grnd, say "[if the location is an outdoor room]There's probably no need to do that[otherwise]If you want to do that, you'll need to go outdoors[end if]." instead.


Section C - Ceiling

The ceiling is a backdrop.  The ceiling is everywhere.  "TODO:  Ceiling description"	

Section D - Floor

The floor is a backdrop.  The floor is everywhere.  "TODO:  floor description"	

Understand "ground" as floor when the location is not an outdoor room.






Book DW - Default world model tweaks

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
A bed  is in every bedroom.

When play begins:
	now every bed allows seated;
	now every bed allows reclining;






Book T - Translucency

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

Book A - About and Credits

Requesting story information is an action out of world applying to nothing.  Understand "about" as requesting story information.
Carry out requesting story information:
	say "[i]House in River Styx[/i] is based on a real house in a real town.  Some of the history is factual based on first-hand accounts and assistance from the current owner of the home Todd Gerber.  Todd and I collaborated on the story, making the story fun, but trying to keep as much fact as possible and many thanks to Todd for his maps and information.[p]Harpua, the Implementor of this game, can be reached at <lautzenheiser.jason@gmail.com>. Type CREDITS to see the list of people who were involved in the design and testing."
	
Displaying the credits is an action out of world applying to nothing.  Understand "credits" as displaying the credits.
Carry out displaying the credits:
	say "Implementation: Jason Lautzenheiser (harpua) and Todd Gerber[br]
	First-Round Testing:[br]
	Cover art by[br]
	Title card by[br]".

Book U - Useless Actions

Understand "xyzzy" or "say xyzzy" as xyzzying.  Xyzzying is an action applying to nothing.  Carry out xyzzying: say "Ulp."

Book DN - Day and Night

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

Volume 2 - Characters

Book 1 - Player

Part 1 - Some activities on oneself

Understand "you" or "body" as yourself.

The report touching yourself rule response (A) is "[We] seem to be all in one piece."

Volume 3 - Intro

Book 1 - When play begins

After printing the banner text, say "This work is licensed under the GNU Public License, version 3 or later."


Volume  99 - Map

Book 1 - Regions

outside-house is a region.
near-house is a region in outside-house.
north-side is a region in outside-house.
west-side is a region in outside-house.
south-side is a region in outside-house.
inside-house is a region.
basement-region is a region in inside-house.
ground-floor is a region in inside-house.
second-floor is a region in inside-house.



Book 2 - Front Porch

front-porch is an outdoor room in near-house.  The description is "You stand on the ramshackle porch that spreads the front of the house.   At one time it may have been a bit more dressy; but today, it's not much more than functional, and barely at that[if front-porch-hole is in location] especially with the large [front-porch-hole] in the middle of it[end if].  The [front-door] [if front-door is closed]sits closed[otherwise]stands open[end if]."
The printed name of front-porch is "Front Porch".

Before going down in front-porch:
	if front-porch-hole is in location:
		try entering front-porch-hole instead;
		
Chapter 0 - Front Porch Object

The front porch is scenery in front-porch.  The description of front porch is "The porch in its current state of disarray, little resembles what it might have been in its glory days gone by.  The [wooden slats] have been repaired and replaced many times, [if front-porch-hole is in the location] and with the large [front-porch-hole] gaping in the middle of the porch, it needs repaired again[otherwise]but are still marked by the occassional rotten board[end if].  [The supports] that lack classical detailing, line the front, holding up the roof that still in the middle slightly.  A [railing] on one side of the steps leading to the porch, is well worn but still sturdy.  All have been painted white which has chipped and faded over the years."
Understand "porch" and "front" and "front porch" as front porch.

Chapter 1 - Wooden slats

The wooden slats are part of the front porch.  The description of wooden slats is "The wooden slats that make up the flooring of the porch, have separated slightly from age, wear and repairs.  There are quite a few that need repaired still and sit rotted and loose."

Before taking wooden slats:
	if front-porch-hole is in location:
		say "The rest of the boards seem pretty solid.  Probably best to leave them be." instead;
	otherwise:
		say "You kick and pull at the wooden slats and create a large hole in the porch.";
		now  the front-porch-hole is in front-porch instead.

Understand "boards" and "board" and "wood" and "floor" and "flooring" as wooden slats.

Chapter 1a - Hole in porch

The front-porch-hole is an open unopenable easydoor.  It leads to under-front-porch. The printed name of front-porch-hole is "hole".   
Understand "hole" and "opening" as the front-porch-hole when location is front-porch and the front-porch-hole is in the location.
The description is "The hole in the porch leads to a dimly lit space under the porch.  It is much larger than you had thought possible, almost deep enough to stand in if you hunch over slightly."

Chapter 2 - Supports

The supports are part of the front porch.  The description of supports is "The posts that support the roof still seem sturdy enough, though the roof itself has begun to sag from age and weight."

Understand "posts" and "columns" as supports.

Chapter 3 - Railing

The railing is part of the front porch.  The description of the railing is "The simple railing leading up the steps has been worn down from the many hands that have held it.  Although it is the original railing built in the 1850s, it is well constructed and still strong."

Understand "baluster" as railing.

Chapter 4 - Roof of porch

The front-porch-roof is part of the front porch.  The description of the front-porch-roof is "The roof while free of leaks, sags in the middle from the weight of the heavy [slate] that still sits atop the roof."  The printed name of front-porch-roof is "front porch roof".  Understand "front porch roof" and "roof" and "ceiling" as front-porch-roof.

Chapter 5 - Front porch roof slate

The slate is part of the front-porch-roof.  The description of the slate is  "Sharp slate lines the roof.  While it has seen plenty of wear and is repaired in spots, its still doing its job and will so for many years to come."
Understand "roofing" and "shingles" as slate.

Chapter 1 - Front Door

The front-door is a door.  The front-door is undescribed.  The front-door is west of front-porch and east of entryway.   The front-door is proper-named.
Understand "door" or "front door" as front-door when the location is front-porch.  The description of front-door is "The front door was the thing you first noticed about the abandoned house as you drove past that one summer day.  Despite the state of the rest of the house, the door appears fresh and new, regardless that it's been exposed to the weather and little used for decades."

The printed name of front-door is "front door".

Book 2a - Under the Porch

Under-front-porch is an outdoor room in near-house.   The description is "You are under the front porch in a space that is much larger than you expected.   Dim light shines through the [under-front-porch-hole] and spaces between the remaining slats of the porch."  The printed name of under-front-porch is "Under the front porch".

The under-front-porch-hole is an open unopenable easydoor in under-front-porch.  It leads to front-porch.  The printed name of front-porch-hole is "hole". It portals front-porch-hole.  
Understand "hole" and "opening" as under-front-porch-hole when location is under-front-porch.
The description is "You can easily pull yourself back up to the porch."

Before going up in Under-front-porch:
	try entering under-front-porch-hole instead;

Book 3 - EntryWay

The entryway is a room in ground-floor.  The printed name of entryway is "Entranceway".  Understand  "entranceway" as entryway.  The description of entryway is "The entrance to your home contains little room for any decoration short of a [coat-rack] to your left and [umbrella-stand] in the corner to your right.  A [entryway-staircase] leads upwards to the second floor, the oak banister ending in a swirl.  To the north lies your parlor and you can continue to the west to enter your living room.  To the east lies the [front-door] leading outside."

The coat-rack is a thing in the entryway.  The coat-rack is undescribed.  The coat-rack is scenery supporter.  The printed name of the coat-rack is "coat rack".  The description of coat-rack is "The solid oak coat rack stands stoicly in the south corner just inside the door, as if it guarding the entry into the rest of the house."

The umbrella-stand is a thing in the entryway.  The umbrella-stand is undescribed.  The umbrella-stand is scenery container.  The printed name of the umbrella-stand is "umbrella stand". The description of umbrella-stand is "The umbrella stand is pressed deep into the north corner of the entryway.  It's faux brass exterior gleams with the dimness of age, but it's functional and its deep interior will hold your umbrella (or other items) just fine."

Part 1 - Items

Chapter 1 - Map on wall

A town-map is a thing in the entryway.  The printed name of town-map is "framed map[if town-map is examined] of River Styx, Ohio". 
The description of town-map is "[town-map-description-text]".
Understand "map" and "frame" and "river styx map" and "river styx" and "framed map" and "framed" as town-map.  
The town-map can be hanging.  The town-map is hanging.
The town-map can be crooked.  The town-map is crooked.

To say town-map-description-text:
	say "The map displays a parcel map of the village of River Styx Ohio from the 1850s."

instead of examining the town-map for the first time:
	say "You look closely at the framed map.  It reads 'River Styx, Ohio - 1855'.  You notice that there is one road that is highlighted a light yellow."

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
	now the town-map is not hanging.

Chapter 2 - Slip of paper behind map

A slip-of-paper is a thing.  The description of slip-of-paper is "The slip of paper is no larger than the palm of your hand.  It is filled with writing on both sides."  The printed name of slip-of-paper is "slip of paper".
Understand "slip" and "paper" and "slip paper" and "slip of paper" as slip-of-paper.
The printing of the slip-of-paper is "Hi Jason".


Part 2 - Main Staircase

The entryway-staircase is a staircase in entryway.  The printed name of entryway-staircase is "stairs".  The entryway-staircase leads to upstairs-landing.  The entryway-staircase portals entryway-staircase-2.
Understand "stairs" and "staircase" as entryway-staircase when location is entryway.

The entryway-staircase-2 is a staircase in upstairs-landing.  The printed name of entrway-staircase-2 is "stairs".  The entryway-staircase-2 leads to entryway.  
Understand "stairs" and "staircase" as entryway-staircase-2 when location is upstairs-landing.

instead of going up in entryway:
	try entering entryway-staircase.

instead of going down in upstairs-landing:
	try entering entryway-staircase-2.
	
Book 4 - Parlor

The parlor is a room in ground-floor.  The parlor is north of the entryway.  The parlor is northeast of the living-room.  The printed name of parlor is "The Parlor".	

The description of the parlor is "The parlor is a small room that you use primarly as your office.  The walls are lined with [bookshelf] filled with your favorite books and research material for your own writing.  In the center of the room is a [small writing desk] where you do most of your work.   Windows on the north and east walls look out into little used portions of the your yard."

The bookshelf is a thing in the parlor.  The bookshelf is a container.  The description of bookshelf is "The bookshelves stretch from floor to ceiling, all shelves full of books, in some places multiple level deeps."  The printed name of bookshelf is "bookshelves".

The small writing desk is a supporter in the parlor.  The description of small writing desk is "The cherry writing desk is compact in size and room enough for a few writing implements and paper.  Their are two drawers, one on either side." 
Understand "cherry writing desk" as small writing desk.

The right drawer is a drawer.  It is part of small writing desk.  The printed name of right drawer is "right desk drawer".  
The left drawer is a drawer.  It is part of small writing desk.  The printed name of left drawer is "left desk drawer". 

Does the player mean doing something to the right drawer:  It is likely.





Volume 99 -  Unimplemented map

Book 3 - South Porch

south-porch is an outdoor room in near-house. 
The printed name of south-porch is "South Porch".

Book - South door

south-door is a door.  The south-door is south of the kitchen and north of south-porch.  The printed name of south-door is "sliding door".

Book - North West Porch

north-west-porch is an outdoor room in near-house.  
The printed name of north-west-porch is "Northwest Porch".

Book - Northwest-door

north-west-door is a door.  The north-west-door is north of the kitchen and south of the north-west-porch.

Book - North east porch

north-east-porch is an outdoor room in near-house.  
The printed name of north-east-porch is "Northeast Porch".

Book - Dining-room-door

The dining-room-door is a door.  The dining-room-door is north of the dining-room and south of the north-east-porch.

Book - Pergola

The pergola is an outdoor room in near-house.  The printed name of pergola is "Pergola"

Book - Patio door

the patio-door is a door.  The patio-door is east of the pergola and west of the pantry.


Book - North Yard

The north-yard is an outdoor room in north-side.  The north-yard is north of north-east-porch.  The north-yard is northeast of the north-west-porch.
The printed name of north-yard is "North Yard".

Book - East Stream Bed

The east-stream is an outdoor room in north-side.   The east-stream is north of the north-yard.
The printed name of east-stream is "Eastern Stream Bed".

Book - Middle Stream Bed

The middle-stream is an outdoor room in north-side.   The middle-stream is west of the east-stream.
The printed name of middle-stream is "Middle Stream Bed".

Book - North Stream Bed

The north-stream is an outdoor room in north-side.   The north-stream is north of the middle-stream.
The printed name of north-stream is "Northern Stream Bed".


Book - Backyard

The backyard is an outdoor room in west-side.  The backyard is west of pergola.  The backyard is southwest of north-yard.  The printed name of backyard is "Back yard"


Book - Orchard

The orchard is an outdoor room in west-side.  The orchard is west of backyard.
The printed name of orchard is "Orchard".

Book - West Woods

The west-woods is an outdoor room in west-side.  The west-woods is a west of orchard.
The printed name of west-woods is "West Woods".

Book - South Yard

south-yard is an outdoor room in south-side.  The south-yard is southeast of backyard.  The south-yard is south of south-porch.
The printed name of south-yard is "The Southern Yard".

Book - Amongst the Pine Trees

amongst-the-pines is an outdoor room in south-side.  Amongst-the-pines is south of south-yard.  The printed name of amonst the pines is "Amongst the Pines"


Book - Basement

The basement is a room in basement-region.  The printed name of basement is "Basement".

Book - Root Cellar

The root-cellar is a room in basement-region.  The printed name of root-cellar is "Root Cellar".  The root-cellar is east of basement.



Book - Exterior Basement Entrance

The exterior-basement-door is a door.  The printed name of exterior-basement-door is "outside basement entrance".  The exterior-basement-door is above root-cellar and below north-yard.  It is openable and closed.

Before going down in north-yard:
	try entering exterior-basement-door instead.
	

Book - Pantry

The pantry is a room in ground-floor.  The pantry is west of the kitchen.
The printed name of the pantry is "Pantry".

Book - Mudroom

The mud-room is a room in ground-floor.  The mud-room is north of the pantry. 
The printed name of mud-room is "Mud Room".

Book - Basement Stairs	

The basement-stairs is a staircase in mud-room.  The printed name of basement-stairs is "basement stairs".  The basement-stairs leads to basement.  The basement-stairs portals basement-stairs-2.
Understand "stairs" and "staircase" as basement-stairs when location is mud-room.

The basement-stairs-2 is a staircase in basement.  The printed name of basement-stairs-2 is "basement stairs".  The basement-stairs-2 leads to mud-room.  
Understand "stairs" and "staircase" as basement-stairs-2 when location is basement.

instead of going down in mud-room:
	try entering basement-stairs.

instead of going up in basement:
	try entering basement-stairs-2.



Book - Dining Room

The dining-room is a room in ground-floor.  The dining-room is north of the living-room.  The dining-room is west of the parlor.
The printed name of the dining-room is "Dining Room"

Book - Living Room

The living-room is a room in ground-floor.  The living-room is west of the entryway.
The printed name of the living-room is "Living Room"

Book - Kitchen

The main-kitchen is a kitchen in ground-floor.  The main-kitchen is west of the living-room and southwest of the dining-room.
The printed name of the main-kitchen is "Kitchen".

Book - Downstairs Bathroom

The downstairs-bathroom is a bathroom in ground-floor.  The downstairs-bathroom is east of the mud-room.
The printed name of the downstairs-bathroom is "Downstairs Bathroom".


Book - Servants Stairs

The servants-stairs is a staircase in pantry.  The printed name of servants-stairs is "servants stairs".  The servants-stairs leads to attic.  The servants-stairs portals servants-stairs-2.
Understand "stairs" and "staircase" as servants-stairs when location is pantry.

The servants-stairs-2 is a staircase in attic.  The printed name of servants-stairs-2 is "servants stairs".  The servants-stairs-2 leads to pantry.  
Understand "stairs" and "staircase" as servants-stairs-2 when location is attic.

instead of going up in pantry:
	try entering servants-stairs.

instead of going down in attic:
	try entering servants-stairs-2.

Book - Upstairs Landing

The upstairs-landing is a room in second-floor.
The printed name of upstairs-landing is "Second Floor Landing"

Book - Alcove

The alcove is a room in second-floor.  The alcove is east of the upstairs-landing.
The printed name of alcove is "Alcove".

Book - Kids room

The kids-room is a bedroom in second-floor.  The kids-room is north of the upstairs-landing.
The printed name of kids-room is "Kids Bedroom".

Book - Upstairs-hallway

The upstairs-hallway is a room in second-floor.  The upstairs-hallway is west of the upstairs-landing.
The printed name of upstairs-hallway is "Second Floor Hallway".

Book - Play room

The play-room is a room in second-floor.  The play-room is south of the upstairs-hallway.
The printed name of play-room is "Play Room".

Book - Kids Bathroom

The kids-bathroom is a bathroom in second-floor.  The kids-bathroom is north of the upstairs-hallway.
The printed name of kids-bathroom is "Second Floor Bathroom".

Book - Master Bedroom

The master-bedroom is a bedroom in second-floor.  The master-bedroom is west of the upstairs-hallway.
The printed name of master-bedroom is "Master Bedroom".

Book - Master Bath

The master-bath is a bathroom in second-floor.  The master-bath is northeast of the master-bedroom.
The printed name of master-bath is "Master Bathroom".

Book - Master Closet

The master-closet is a room in second-floor.  The master-closet is southeast of the master-bedroom.
The printed name of master-closet is "Master Closet".

Book - Master Walkin Closet

The master-walkin is a room in second-floor.  The master-walkin is west of the master-bedroom.
The printed name of master-walkin is "Master Walkin Closet".

Book - Attic

The attic is a room in the second-floor.  The attic is north of the master-walkin.
The printed name of attic is "Attic".

Book - Spring House

The spring-house is a room in north-side.  the spring-house is west of north-yard.
The printed name of spring-house is "Spring House".

Book - Workshop

The workshop is a room in west-side.  The workshop is south of orchard.   the workshop is southwest of backyard.
The printed name of workshop is "Workshop".