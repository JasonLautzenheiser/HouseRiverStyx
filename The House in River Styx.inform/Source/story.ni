"The House in River Styx" by Jason Lautzenheiser

[This game is copyrighted 2015 by Jason Lautzenheiser, who asserts the moral right to be recognized as the author.  It is released under the GNU Public License 3.0.  See http://www.gnu.org/copyleft/gpl.html for further details.]

Volume 0 - Meta

Book 0 - Meta Stuff

The story genre is "Fantasy".
Use American dialect, full-length room descriptions, and the serial comma.


Book 1 - Includes

Include Punctuation Removal by Emily Short.
Include Room Description Control by Emily Short.
Include Tailored Room Description by Emily Short.
Include Modern Conveniences by Emily Short.
Include Postures by Emily Short.

Include Response Assistant by Aaron Reed.








Volume 1 - Utilities and General Stuff

Book 1 - Seen / Unseen

A thing can be seen or unseen.  A thing is usually unseen.  The player is seen.  
After printing the name of something (called the target): 
	now the target is seen.
	
Book 2 - Automatic Examining

A thing can be examined or unexamined.  A thing is usually unexamined.  
Carry out examining something:
	now the noun is examined.
	
After taking something unexamined:
	say "Taken.  [run paragraph on]";
	try examining the noun.

Book 3 - Listening & Sounds

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


Book 5 - New Kinds

Part 1 - Stairs

A staircase is a kind of door.  A staircase is usually open.  A staircase is seldom openable.

Instead of climbing a staircase:
	try entering the noun.
	
Book 6 - Replacing Default Messages / Style Changes

Part 1 - Undescribed items

The description of a thing is usually "[We] give [the noun] a glance, but realize [regarding the noun][they] probably [aren't] important.";

Part 2 - Pronouns and aliases

To set the/-- pronoun it to (O - an object): (- LanguagePronouns-->3 = {O}; -).
To set the/-- pronoun him to (O - an object): (- LanguagePronouns-->6 = {O}; -).
To set the/-- pronoun her to (O - an object): (- LanguagePronouns-->9 = {O}; -).
To set the/-- pronoun them to (O - an object): (- LanguagePronouns-->12 = {O}; -).

Part 3 - Inventory Listing

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
	say ".[para]".

Part 4 - Elimnating mention of stuff on scenery supporters

The describe what's on scenery supporters in room descriptions rule is not listed in any rulebook.

After examining a scenery supporter (called the holder):
	if the holder encloses something:
		say "On [the holder] [we] can see [a list of things that are on the holder].";
	continue the action.
	
Part 5 - Standard Responses

The block saying sorry rule response (A) is "You mumble something apologetic under your breath."

Part 6 - Listing exits

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

Book 7 - Take all

Rule for deciding whether all includes scenery:  it does not.
Rule for deciding whether all includes people while taking: it does not.
Rule for deciding whether all includes fixed in place things while taking: it does not.
	
Book 8- Typographical Conveniences

Part 1 - Input editing

First after reading a command:
	remove stray punctuation.

Part  2 - Output Shorthand

To say para -- running on: 
	(- DivideParagraphPoint(); new_line; -). 
	
To say i -- beginning say_i -- running on: (- style underline; -). 
To say /i -- ending say_i -- running on: (- style roman; -). 
To say b -- beginning say_b -- running on: (- style bold; -). 
To say /b -- ending say_b -- running on: (- style roman; -).
	
Book 9 - Not for release

To say TODO:
	say "TODO: ".
	
Part 1 - Random number generator

When play begins, seed the random-number generator with 88.

Part 2 - Glk Typesize

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

Book 10 - Valid directions

Definition: a direction (called thataway) is viable if the room thataway from the location is a room.

Instead of going nowhere:
	let count of exits be the number of viable directions;
	if the count of exits is 0, say "You appear to be trapped in here." instead;
	if the count of exits is 1, say "From here, the only way to go is [a list of viable directions].";
	otherwise say "From here, the viable exits are to [a list of viable directions]."
	
A direction can be proper-named. Down is proper-named. Up is proper-named.

Book 11 - New Actions

Understand "release [something]" as dropping.

Part 1 - Look at Location as LOOK

Definition: a room is locally-present if it is the location.

Understand "here" or "surroundings" as a room when the item described is the location.

Understand "examine [any locally-present room]" or "look at [any locally-present room]" or "look [any locally-present room]" as local looking.  
Understand "look around" as looking.

Local looking is an action applying to one thing.

Carry out local looking:
	try looking.

Book 12 - Backdrops

An outdoor room is a kind of room.

Part 1 - Sky

The sky is a backdrop.  The sky is everywhere.  The description of the sky is "[if the location is an outdoor room]A cloudy dreary afternoon sky, low hanging clouds threatening a cool rain.[otherwise]If you want to gaze at the sky, you'll have to go outside.  However the ceiling is very nice.[end if]".

Understand "blue" and "brilliant" as the sky.

Before doing anything other than examining to the sky, say "[if the location is an outdoor room]The sky is too far away[otherwise]That would be impractical, but it hardly matters, as you're indoors and there's no sky here[end if]." instead.

Part 2 - Ground

The grnd is a backdrop. The grnd is everywhere. The grnd is privately-named. The printed name of the grnd is "ground". The description of the grnd is "[if the location is an outdoor room]Because of the recent rains, the ground is quite soft, though really not very interesting[otherwise]If you want to investigate the ground (not that there's much reason to), you'll need to go outside[end if]."

[This usage of "dirt" probably conflicts with the mud in the farm.]
Understand "dirt" and "earth" and "ground" as the grnd when the location is an outdoor room.

Before doing anything other than examining to the grnd, say "[if the location is an outdoor room]There's probably no need to do that[otherwise]If you want to do that, you'll need to go outdoors[end if]." instead.


Part 3 - Ceiling

The ceiling is a backdrop.  The ceiling is everywhere.  "[TODO]Ceiling description"	

Part 4 - Floor

The floor is a backdrop.  The floor is everywhere.  "[TODO]floor description"	

Understand "ground" as floor when the location is not an outdoor room.


Book 13 - Introductions

A thing has some text called the introduction.  The introduction of a thing is usually "".
A room has some text called the introduction.  The introduction of a thing is usually "".

Rule for writing a paragraph about an as-yet-unknown introduceable thing (called special-target):
	carry out the writing a topic sentence about activity with the special-target;
	introduce the special-target;
	say para.

To introduce (special-target - an object):
	now the special-target is introduced;
	say "[introduction of the special-target]".
	
Definition: a thing is introduceable if the introduction of it is not "".
Definition: a room is introduceable if the introduction of it is not "".

A thing can be as-yet-unknown or introduced.  A thing is usually as-yet-unknown.
A room can be as-yet-unknown or introduced.  A room is usually as-yet-unknown.

The first time looking rule is listed after new object description rule in the carry out looking rules.

This is the first time looking rule:
	if location is introduceable and the location is as-yet-unknown:
		introduce the location;
		say para.
		
This is the description-concealing rule:
	now every thing which is held by an as-yet-unknown introduceable person is not marked for listing.





Book 14 - Default world model tweaks

Part 1 - Special doors and barriers

Chapter 1 - Door descriptions

The description of a door is usually "[if open]The [the item described] stand[s] open[otherwise if locked]Closed and locked[otherwise][Cap it-they of the item described] [is-are] closed[end if]."

Chapter 2 - Knocking

Understand "knock on [door]" as knocking on.  Knocking on is an action applying to one thing.  Understand "knock on [something]" as attacking.

Check knocking on an open door:
	say "It's open:  [we] could just go in." instead.
	
Check knocking on a door:
	let far side be the other side of the noun;
	if the far side does not enclose someone:
		say "No one answers." instead.
		

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


Book 99 - Other Stuff

Understand "xyzzy" or "say xyzzy" as xyzzying.  Xyzzying is an action applying to nothing.  Carry out xyzzying: say "Ulp."





Volume 2 - Characters

Book 1 - Player

Part 1 - Some activities on oneself

Understand "you" or "body" as yourself.

The report touching yourself rule response (A) is "[We] seem to be all in one piece."

Volume 3 - Intro

Book 1 - When play begins

After printing the banner text, say "This work is licensed under the GNU Public License, version 3 or later."


Volume  99 - Map

Book - Outside

outside-house is a region.

Part - Near House

near-house is a region in outside-house.

Chapter - Front Porch

front-porch is an outdoor room in near-house.  
The printed name of front-porch is "Front Porch".

Chapter - Front Door

front-door is a door.  The front-door is west of front-porch and east of entryway.   
Understand "door" or "front door" as front-door when the location is front-porch.

The printed name of front-door is "front door".

Chapter - South Porch

south-porch is an outdoor room in near-house. 
The printed name of south-porch is "South Porch".

Chapter - South door

south-door is a door.  The south-door is south of the kitchen and north of south-porch.  The printed name of south-door is "sliding door".

Chapter - North West Porch

north-west-porch is an outdoor room in near-house.  
The printed name of north-west-porch is "Northwest Porch".

Chapter - Northwest-door

north-west-door is a door.  The north-west-door is north of the kitchen and south of the north-west-porch.

Chapter - North east porch

north-east-porch is an outdoor room in near-house.  
The printed name of north-east-porch is "Northeast Porch".

Chapter - Dining-room-door

The dining-room-door is a door.  The dining-room-door is north of the dining-room and south of the north-east-porch.

Chapter - Pergola

The pergola is an outdoor room in near-house.  The printed name of pergola is "Pergola"

Chapter - Patio door

the patio-door is a door.  The patio-door is east of the pergola and west of the pantry.

Part - North Side

north-side is a region in outside-house.

Chapter - North Yard

The north-yard is an outdoor room in north-side.  The north-yard is north of north-east-porch.  The north-yard is northeast of the north-west-porch.
The printed name of north-yard is "North Yard".

Chapter - East Stream Bed

The east-stream is an outdoor room in north-side.   The east-stream is north of the north-yard.
The printed name of east-stream is "Eastern Stream Bed".

Chapter - Middle Stream Bed

The middle-stream is an outdoor room in north-side.   The middle-stream is west of the east-stream.
The printed name of middle-stream is "Middle Stream Bed".

Chapter - North Stream Bed

The north-stream is an outdoor room in north-side.   The north-stream is north of the middle-stream.
The printed name of north-stream is "Northern Stream Bed".

Part - West Side

west-side is a region in outside-house.

Chapter - Backyard

The backyard is an outdoor room in west-side.  The backyard is west of pergola.  The backyard is southwest of north-yard.  The printed name of backyard is "Back yard"


Chapter - Orchard

The orchard is an outdoor room in west-side.  The orchard is west of backyard.
The printed name of orchard is "Orchard".

Chapter - West Woods

The west-woods is an outdoor room in west-side.  The west-woods is a west of orchard.
The printed name of west-woods is "West Woods".

Part - South Side

south-side is a region in outside-house

Chapter - South Yard

south-yard is an outdoor room in south-side.  The south-yard is southeast of backyard.  The south-yard is south of south-porch.
The printed name of south-yard is "The Southern Yard".

Chapter - Amongst the Pine Trees

amongst-the-pines is an outdoor room in south-side.  Amongst-the-pines is south of south-yard.  The printed name of amonst the pines is "Amongst the Pines"

Book - House

inside-house is a region.

Part - Basement

basement-region is a region in inside-house.

Chapter - Basement

The basement is a room in basement-region.  The printed name of basement is "Basement".

Chapter - Root Cellar

The root-cellar is a room in basement-region.  The printed name of root-cellar is "Root Cellar".  The root-cellar is east of basement.

Chapter - Basement Stairs	

The basement-stairs is a staircase.  The printed name of basement-stairs is "basement stairs".  The basement-stairs are below the mud-room and above the basement.

Chapter - Exterior Basement Entrance

The exterior-basement-door is a door.  The printed name of exterior-basement-door is "outside basement entrance".  The exterior-basement-door is above root-cellar and below north-yard.  It is openable and closed.

Before going down in north-yard:
	try entering exterior-basement-door instead.
	


Part - Ground Floor

ground-floor is a region in inside-house.

Chapter - Pantry

The pantry is a room in ground-floor.  The pantry is west of the kitchen.
The printed name of the pantry is "Pantry".

Chapter - Mudroom

The mud-room is a room in ground-floor.  The mud-room is north of the pantry. 
The printed name of mud-room is "Mud Room".

Chapter - EntryWay

The entryway is a room in ground-floor.  The printed name of entryway is "Entryway"

Chapter - Parlor

The parlor is a room in ground-floor.  The parlor is north of the entryway.  The parlor is northeast of the living-room.  The printed name of parlor is "The Parlor".

Chapter - Dining Room

The dining-room is a room in ground-floor.  The dining-room is north of the living-room.  The dining-room is west of the parlor.
The printed name of the dining-room is "Dining Room"

Chapter - Living Room

The living-room is a room in ground-floor.  The living-room is west of the entryway.
The printed name of the living-room is "Living Room"

Chapter - Kitchen

The main-kitchen is a kitchen in ground-floor.  The main-kitchen is west of the living-room and southwest of the dining-room.
The printed name of the main-kitchen is "Kitchen".

Chapter - Downstairs Bathroom

The downstairs-bathroom is a bathroom in ground-floor.  The downstairs-bathroom is east of the mud-room.
The printed name of the downstairs-bathroom is "Downstairs Bathroom".

Chapter - Stairs to Second Floor

The main-stairs is a staircase.  The main-stairs is above the entryway and below the upstairs-landing.
The printed name of main-stairs is "staircase to the second floor".

Chapter - Servents Stairs

The servants-stairs is a staircase.  The servants-stairs is above the pantry and below the attic.
The printed name of the servants-stairs is "servants staircase".

Part - Upstairs

second-floor is a region in inside-house.

Chapter - Upstairs Landing

The upstairs-landing is a room in second-floor.
The printed name of upstairs-landing is "Second Floor Landing"

Chapter - Alcove

The alcove is a room in second-floor.  The alcove is east of the upstairs-landing.
The printed name of alcove is "Alcove".

Chapter - Kids room

The kids-room is a bedroom in second-floor.  The kids-room is north of the upstairs-landing.
The printed name of kids-room is "Kids Bedroom".

Chapter - Upstairs-hallway

The upstairs-hallway is a room in second-floor.  The upstairs-hallway is west of the upstairs-landing.
The printed name of upstairs-hallway is "Second Floor Hallway".

Chapter - Play room

The play-room is a room in second-floor.  The play-room is south of the upstairs-hallway.
The printed name of play-room is "Play Room".

Chapter - Kids Bathroom

The kids-bathroom is a bathroom in second-floor.  The kids-bathroom is north of the upstairs-hallway.
The printed name of kids-bathroom is "Second Floor Bathroom".

Chapter - Master Bedroom

The master-bedroom is a bedroom in second-floor.  The master-bedroom is west of the upstairs-hallway.
The printed name of master-bedroom is "Master Bedroom".

Chapter - Master Bath

The master-bath is a bathroom in second-floor.  The master-bath is northeast of the master-bedroom.
The printed name of master-bath is "Master Bathroom".

Chapter - Master Closet

The master-closet is a room in second-floor.  The master-closet is southeast of the master-bedroom.
The printed name of master-closet is "Master Closet".

Chapter - Master Walkin Closet

The master-walkin is a room in second-floor.  The master-walkin is west of the master-bedroom.
The printed name of master-walkin is "Master Walkin Closet".

Chapter - Attic

The attic is a room in the second-floor.  The attic is north of the master-walkin.
The printed name of attic is "Attic".

Book - Spring House

The spring-house is a room in north-side.  the spring-house is west of north-yard.
The printed name of spring-house is "Spring House".

Book - Workshop

The workshop is a room in west-side.  The workshop is south of orchard.   the workshop is southwest of backyard.
The printed name of workshop is "Workshop".