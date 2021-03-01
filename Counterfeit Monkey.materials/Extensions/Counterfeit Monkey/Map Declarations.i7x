Map Declarations by Counterfeit Monkey begins here.

Use authorial modesty.


Book 6 - Map Declarations

Chapter 1 - Main Map

[ The idea of having a map came in fairly early in the project, but it wasn't until late that I decided on the style.

I felt that this was the single most important piece of art to provision, since the player was going to have to spend the whole game staring at it, but even though I found some artists whose styles I really liked in general, I wasn't sure they suited Atlantis. I wanted something that instantly conveyed a sense of the major thoroughfares and significant monuments, but didn't take away from the pleasure of reading room descriptions for the first time. I wanted something less bland than a street map, less silly than a standard tourist map. It also needed to be clean enough not to distract the player with locations that weren't going to be accessible, and that was tricky because in practice this amount of urban space would contain many many more buildings than the player actually gets to go inside.

Ultimately I decided the typographical map would provide the right level of abstraction, fit Atlantis better than any of the other options, and also be something I might be able to put together myself. I started by having Inform build an EPS map of the game space, and then I started layering text layers over that. The majority of the fonts used are from the collection of HP Lovecraft Historical Society prop fonts ( http://www.cthulhulives.org/toybox/propdocs/propfonts.html ), a collection I bought a few years ago and have found almost endlessly useful: they come in many weights and densities and play together nicely.

There are a couple of exceptions. The font used for the half-hidden Greek font under New Church is Porson, a classic 19th century font for Greek lettering and one of my favorites for extended reading. The Bureau buildings are done inevitably in medium Helvetica, which is intentionally unaesthetic in context. Hoefler Ornaments provides the printer's ornament for the center of the roundabout.

For the player's you-are-here symbol, I used a nethack-like @ . I also experimented with a double dagger ‡ -- which to my eye was vaguely reminiscent of a stick figure but sort of doubled, as Alex and Andra are. But in the end I found that the round form of the @ was easier to position attractively in a range of locations; it especially looked better inside the O of the rotunda or inside the turret.

The @ sign indicating the player could in theory be placed as a transparent sprite over the appropriate part of the map. In practice, however, I needed to do a lot of brightness and outline adjustment to the @ sign depending on what was going beneath it. There were also particular small touches that would have been harder to add with a sprite, such as rotating the @ sign when the player was traveling on the winding path to the beach, or showing it underneath a layer of other text when the player was down in the crawlspace. I wanted the map to have a playful quality -- to feel individually considered, rather than mechanized.

Consequently, each place where the player's @ can appear gets its own copy of the image.

These are the definitions of images associated with room maps. They have to go after the rooms themselves are defined, and it was easier keeping them all in one place than scattering the declarations through the rest of code, so this section could be commented out for testing.]

[Figure of Background is the file "map-background.png".]
Figure of Back-Alley is the file "map-back-alley.png" ("A city map.").
Figure of Sigil-St is the file "map-sigil-street.png" ("A city map.").
Figure of Amp-Bend is the file "map-ampersand-bend.png" ("A city map.").
Figure of Abandoned-Park is the file "map-abandoned-park.png" ("A city map.").
Figure of Antechamber is the file "map-antechamber.png" ("A city map.").
Figure of Apartment is the file "map-apartment.png" ("A city map.").
Figure of Aquarium is the file "map-aquarium.png" ("A city map.").
Figure of Arbot is the file "map-arbot.png" ("A city map.").
Figure of Babel is the file "map-babel.png" ("A city map.").
Figure of Beach is the file "map-beach.png" ("A city map.").
Figure of Browns is the file "map-browns.png" ("A city map.").
Figure of Bus-station is the file "map-bus-station.png" ("A city map.").
Figure of Church-garden is the file "map-church-garden.png" ("A city map.").
Figure of Cinema is the file "map-cinema.png" ("A city map.").
Figure of Counterfeit-monkey is the file "map-counterfeit-monkey.png" ("A city map.").
Figure of Cove is the file "map-cove.png" ("A city map.").
Figure of Customs House is the file "map-customs-house.png" ("A city map.").
Figure of Crawlspace is the file "map-crawlspace.png" ("A city map.").
Figure of Tin Hut is the file "map-tin-hut.png" ("A city map.").
Figure of Crumbling Wall is the file "map-crumbling-wall.png" ("A city map.").
Figure of Deep Street is the file "map-deep-street.png" ("A city map.").
Figure of Docks is the file "map-docks.png" ("A city map.").
Figure of Drinks Club is the file "map-drinks-club.png" ("A city map.").
Figure of Fair is the file "map-fair.png" ("A city map.").
Figure of Fish Market is the file "map-fish-market.png" ("A city map.").
Figure of Fleur is the file "map-fleur.png" ("A city map.").
Figure of Game Zone is the file "map-game-zone.png" ("A city map.").
Figure of Gift Shop is the file "map-giftshop.png" ("A city map.").
Figure of Grad Room is the file "map-gradroom.png" ("A city map.").
Figure of Heritage Corner is the file "map-heritage.png" ("A city map.").
Figure of Hesychius is the file "map-hesychius-street.png" ("A city map.").
Figure of High Street is the file "map-high-street.png" ("A city map.").
Figure of Hostel is the file "map-hostel.png" ("A city map.").
Figure of Inside Bureau is the file "map-inside-bureau.png" ("A city map.").
Figure of Long North is the file "map-long-north.png" ("A city map.").
Figure of Long South is the file "map-long-south.png" ("A city map.").
Figure of Monumental Staircase is the file "map-monumental-staircase.png" ("A city map.").
Figure of New Church is the file "map-new-church.png" ("A city map.").
Figure of OCW is the file "map-old-city-walls.png" ("A city map.").
Figure of Open Sea is the file "map-open-sea.png" ("A city map.").
Figure of Outdoor-cafe is the file "map-outdoor-cafe.png" ("A city map.").
Figure of Outside-church is the file "map-outside-church.png" ("A city map.").
Figure of Oval is the file "map-oval.png" ("A city map.").
Figure of Palm Square is the file "map-palm-square.png" ("A city map.").
Figure of Park Center is the file "map-park-center.png" ("A city map.").
Figure of Patriotic Chard Garden is the file "map-patriotic-chard.png" ("A city map.").
Figure of Precarious Perch is the file "map-precarious.png" ("A city map.").
Figure of Public Convenience is the file "map-public-convenience.png" ("A city map.").
Figure of Reclamation is the file "map-reclamation.png" ("A city map.").
Figure of Roget Close is the file "map-roget-close.png" ("A city map.").
Figure of Rotunda is the file "map-rotunda.png" ("A city map.").
Figure of Roundabout is the file "map-roundabout.png" ("A city map.").
Figure of Roundabout-2 is the file "map-roundabout-2.png" ("A city map.").
Figure of Roundabout-3 is the file "map-roundabout-3.png" ("A city map.").
Figure of Roundabout-4 is the file "map-roundabout-4.png" ("A city map.").
Figure of Screening Room is the file "map-screening-room.png" ("A city map.").
Figure of SJ-Basement is the file "map-sj-basement.png" ("A city map.").
Figure of SJ-Department is the file "map-sj-department.png" ("A city map.").
Figure of SJ-Lecture is the file "map-sj-lecture.png" ("A city map.").
Figure of SJ-Seminar is the file "map-sj-seminar-room.png" ("A city map.").
Figure of SJ-Hall is the file "map-sjhall.png" ("A city map.").
Figure of Tall Street is the file "map-tall-street.png" ("A city map.").
Figure of Tools Exhibit is the file "map-tools-exhibit.png" ("A city map.").
Figure of Traffic Circle is the file "map-traffic-circle.png" ("A city map.").
Figure of Turret is the file "map-turret.png" ("A city map.").
Figure of Webster Court is the file "map-webster-court.png" ("A city map.").
Figure of Winding Path is the file "map-winding-path.png" ("A city map.").

A room has a figure-name called the local map.

The local map of Back Alley is the figure of back-alley.
The local map of Sigil Street is the figure of Sigil-St.
The local map of Ampersand Bend is the figure of Amp-Bend.
The local map of Abandoned Park is the figure of Abandoned-Park.
The local map of Antechamber is the figure of Antechamber.
The local map of Apartment Bathroom is the figure of Apartment.
The local map of My Apartment is the figure of Apartment.
The local map of Aquarium Bookstore is the figure of Aquarium.
The local map of Arbot Maps & Antiques is the figure of Arbot.
The local map of Babel Café is the figure of Babel.
The local map of Private Beach is the figure of Beach.
The local map of Brown's Lab is the figure of Browns.
The local map of Bus Station is the figure of Bus-station.
The local map of Church Garden is the figure of Church-garden.
The local map of Cinema is the figure of Cinema.
The local map of Counterfeit Monkey is the figure of Counterfeit-monkey.
The local map of Abandoned Shore is the figure of Cove.
The local map of Customs House is the figure of Customs House.
The local map of Crawlspace is the figure of Crawlspace.
The local map of Tin Hut is the figure of Tin Hut.
The local map of Crumbling Wall is the figure of Crumbling Wall.
The local map of Deep Street is the figure of Deep Street.
The local map of Docks is the figure of Docks.
The local map of Fleur d'Or Drinks Club is Figure of Drinks Club.
The local map of Fair is Figure of Fair.
The local map of Fish Market is figure of Fish Market.
The local map of Fleur d'Or Lobby is the figure of Fleur.
The local map of Midway is the figure of Game Zone.
The local map of Cathedral Gift Shop is the figure of Gift Shop.
The local map of Graduate Student Office is the figure of Grad Room.
The local map of Heritage Corner is the figure of Heritage Corner.
The local map of Hesychius Street is the figure of Hesychius.
The local map of High Street is the figure of High Street.
The local map of Hostel is the figure of Hostel.
The local map of Dormitory Room is the figure of Hostel.
The local map of Bureau Hallway is the figure of Inside Bureau.
The local map of All-purpose Office is the figure of Inside Bureau.
The local map of Bureau Basement South is the figure of Inside Bureau.
The local map of Bureau Basement Middle is the figure of Inside Bureau.
The local map of Bureau Basement Secret Section is the figure of Inside Bureau.
The local map of Tunnel Through Chalk is the figure of Inside Bureau.
The local map of Personal Apartment is the figure of Inside Bureau.
The local map of Private Solarium is the figure of Inside Bureau.
The local map of Sensitive Equipment Testing Room is the figure of Inside Bureau.
The local map of Display Reloading Room is the figure of Inside Bureau.
The local map of Surveillance Room is the figure of Inside Bureau.
The local map of Generator Room is the figure of Inside Bureau.
The local map of Equipment Archive is the figure of Inside Bureau.
The local map of Wonderland is the figure of Inside Bureau.
The local map of Oracle Project is the figure of Inside Bureau.
The local map of Workshop is the figure of Inside Bureau.
The local map of Cold Storage is the figure of Inside Bureau.
The local map of Shadow Chamber is the figure of Inside Bureau.
The local map of Long Street North is the figure of Long North.
The local map of Long Street South is the figure of Long South.
The local map of Monumental Staircase is the figure of Monumental Staircase.
The local map of New Church is the figure of New Church.
The local map of Old City Walls is the figure of OCW.
The local map of Open Sea is the figure of Open Sea.
The local map of Outdoor Cafe is the figure of outdoor-cafe.
The local map of Church Forecourt is the figure of outside-church.
The local map of University Oval is the Figure of Oval.
The local map of Palm Square is the Figure of Palm Square.
The local map of Park Center is the Figure of Park Center.
The local map of Patriotic Chard-Garden is the Figure of Patriotic Chard Garden.
The local map of Precarious Perch is the Figure of Precarious Perch.
The local map of Public Convenience is the Figure of Public Convenience.
The local map of Rectification Room is the Figure of Reclamation.
The local map of Roget Close is the Figure of Roget Close.
The local map of Rotunda is the Figure of Rotunda.
The local map of Roundabout is the Figure of Roundabout.
The local map of Screening Room is the Figure of Screening Room.
The local map of Projection Booth is the Figure of Screening Room.
The local map of Samuel Johnson Basement is the Figure of SJ-Basement.
The local map of Language Studies Department Office is the Figure of SJ-Department.
The local map of Higgate's Office is the Figure of SJ-Department.
The local map of Waterstone's Office is the Figure of SJ-Department.
The local map of Lecture Hall 1 is the Figure of SJ-Lecture.
The local map of Lecture Hall 2 is the Figure of SJ-Lecture.
The local map of Language Studies Seminar Room is the Figure of SJ-Seminar.
The local map of Samuel Johnson Hall is the Figure of SJ-Hall.
The local map of Tall Street is the Figure of Tall Street.
The local map of Tools Exhibit is the Figure of Tools Exhibit.
The local map of Traffic Circle is the Figure of Traffic Circle.
The local map of Old Hexagonal Turret is the Figure of Turret.
The local map of Webster Court is the Figure of Webster Court.
The local map of Winding Footpath is the Figure of Winding Path.



Every turn when the location is Roundabout:
	if local map of Roundabout is Figure of Roundabout-4:
		now the local map of Roundabout is Figure of Roundabout-3;
	else if local map of Roundabout is Figure of Roundabout-3:
		now the local map of Roundabout is Figure of Roundabout-2;
	else if local map of Roundabout is Figure of Roundabout-2:
		now the local map of Roundabout is Figure of Roundabout;
	else if local map of Roundabout is Figure of Roundabout:
		now the local map of Roundabout is Figure of Roundabout-4;
	follow the compass-drawing rule.


Chapter 2 - Inside the Bureau

[

The design aims for the Bureau-internal maps are:

-- to create a sense of forward movement and discovery, both by opening new territory that the protagonists haven't seen before, and by rewarding the player's exploration with further map revelations
-- to establish a kind of chaos and alarm in the Wonderland portions of the map

]

Chapter 3 - Aboard the Yacht

[The yacht plans are different in almost every respect from the maps elsewhere. They use images exclusively rather than words, replace the player's @ sign with a yellow you-are-here star, and portray close-up details (such as beds and even toilets) that wouldn't even be hinted at in the main game area.

The design aims for the yacht plans are:

-- to convey the scope and concept of the yacht almost instantly, because the player will have relatively little time to explore
-- to make it clear that we're in a different sort of environment -- metaphysically different, even -- from Atlantis, and to suggest movement away from Atlantis (the bottom half of the screen is Bureau blue, the top half black)
-- to establish the claustrophobic self-containment of this little world
-- to keep rewarding the player with slightly surprising new visuals even at the end of the game
-- at the same time, to present an image whose colors and crisp design sensibilities do line up with those of the earlier maps]

Figure of Sunning Deck is the file "map-sunning-deck.png" ("The floor plan of a yacht.").
Figure of Galley is the file "map-galley.png" ("The floor plan of a yacht.").
Figure of Navigation is the file "map-navigation.png" ("The floor plan of a yacht.").
Figure of Foredeck is the file "map-fore.png" ("The floor plan of a yacht.").
Figure of Your-Bunk is the file "map-your-bunk.png" ("The floor plan of a yacht.").
Figure of Slango-Bunk is the file "map-slango-bunk.png" ("The floor plan of a yacht.").
Figure of Your-Head is the file "map-your-head.png" ("The floor plan of a yacht.").
Figure of Slango-Head is the file "map-slango-head.png" ("The floor plan of a yacht.").
Figure of Brock-Bunk is the file "map-brock-bunk.png" ("The floor plan of a yacht.").
Figure of Brock-head is the file "map-brock-head.png" ("The floor plan of a yacht.").
Figure of Crew-Bunk is the file "map-crew-bunk.png" ("The floor plan of a yacht.").

The local map of Sunning Deck is the Figure of Sunning Deck.
The local map of Galley is the Figure of Galley.
The local map of Navigation Area is the Figure of Navigation.
The local map of Foredeck is the Figure of Foredeck.
The local map of Crew Cabin is the Figure of Crew-Bunk.
The local map of Brock's Stateroom is the Figure of Brock-Bunk.
The local map of Brock's Head is the Figure of Brock-head.
The local map of Your Bunk is the Figure of Your-Bunk.
The local map of Your Head is the Figure of Your-Head.
The local map of Slango's Bunk is the Figure of Slango-Bunk.
The local map of Slango's Head is the Figure of Slango-Head.


Map Declarations ends here.
