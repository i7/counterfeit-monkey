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

["Padding" side images]
Figure of padding left is the file "map-extend-left.png".
Figure of padding right is the file "map-extend-right.png".

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



The map marker left of Abandoned Park is 547. The map marker top of Abandoned Park is 462. The map marker width of Abandoned Park is 26. The map marker height of Abandoned Park is 27.
The map marker left of Abandoned Shore is 588. The map marker top of Abandoned Shore is 148. The map marker width of Abandoned Shore is 27. The map marker height of Abandoned Shore is 27.
The map marker left of All-purpose Office is 526. The map marker top of All-purpose Office is 547. The map marker width of All-purpose Office is 27. The map marker height of All-purpose Office is 28.
The map marker left of Ampersand Bend is 171. The map marker top of Ampersand Bend is 481. The map marker width of Ampersand Bend is 26. The map marker height of Ampersand Bend is 28.
The map marker left of Antechamber is 472. The map marker top of Antechamber is 557. The map marker width of Antechamber is 26. The map marker height of Antechamber is 27.
The map marker left of Apartment Bathroom is 334. The map marker top of Apartment Bathroom is 676. The map marker width of Apartment Bathroom is 26. The map marker height of Apartment Bathroom is 27.
The map marker left of Aquarium Bookstore is 479. The map marker top of Aquarium Bookstore is 364. The map marker width of Aquarium Bookstore is 26. The map marker height of Aquarium Bookstore is 27.
The map marker left of Arbot Maps & Antiques is 293. The map marker top of Arbot Maps & Antiques is 605. The map marker width of Arbot Maps & Antiques is 27. The map marker height of Arbot Maps & Antiques is 27.
The map marker left of Babel Café is 392. The map marker top of Babel Café is 695. The map marker width of Babel Café is 26. The map marker height of Babel Café is 27.
The map marker left of Back Alley is 105. The map marker top of Back Alley is 596. The map marker width of Back Alley is 26. The map marker height of Back Alley is 27.
The map marker left of Brock's Head is 402. The map marker top of Brock's Head is 301. The map marker width of Brock's Head is 41. The map marker height of Brock's Head is 40.
The map marker left of Brock's Stateroom is 438. The map marker top of Brock's Stateroom is 265. The map marker width of Brock's Stateroom is 41. The map marker height of Brock's Stateroom is 39.
The map marker left of Brown's Lab is 422. The map marker top of Brown's Lab is 772. The map marker width of Brown's Lab is 17. The map marker height of Brown's Lab is 10.
The map marker left of Bureau Basement Middle is 526. The map marker top of Bureau Basement Middle is 547. The map marker width of Bureau Basement Middle is 27. The map marker height of Bureau Basement Middle is 28.
The map marker left of Bureau Basement Secret Section is 526. The map marker top of Bureau Basement Secret Section is 547. The map marker width of Bureau Basement Secret Section is 27. The map marker height of Bureau Basement Secret Section is 28.
The map marker left of Bureau Basement South is 526. The map marker top of Bureau Basement South is 547. The map marker width of Bureau Basement South is 27. The map marker height of Bureau Basement South is 28.
The map marker left of Bureau Hallway is 526. The map marker top of Bureau Hallway is 547. The map marker width of Bureau Hallway is 27. The map marker height of Bureau Hallway is 28.
The map marker left of Bus Station is 616. The map marker top of Bus Station is 504. The map marker width of Bus Station is 27. The map marker height of Bus Station is 27.
The map marker left of Cathedral Gift Shop is 54. The map marker top of Cathedral Gift Shop is 434. The map marker width of Cathedral Gift Shop is 27. The map marker height of Cathedral Gift Shop is 27.
The map marker left of Church Forecourt is 118. The map marker top of Church Forecourt is 381. The map marker width of Church Forecourt is 26. The map marker height of Church Forecourt is 27.
The map marker left of Church Garden is 12. The map marker top of Church Garden is 399. The map marker width of Church Garden is 26. The map marker height of Church Garden is 27.
The map marker left of Cinema is 145. The map marker top of Cinema is 346. The map marker width of Cinema is 26. The map marker height of Cinema is 27.
The map marker left of Cold Storage is 526. The map marker top of Cold Storage is 547. The map marker width of Cold Storage is 27. The map marker height of Cold Storage is 28.
The map marker left of Counterfeit Monkey is 343. The map marker top of Counterfeit Monkey is 257. The map marker width of Counterfeit Monkey is 26. The map marker height of Counterfeit Monkey is 28.
The map marker left of Crawlspace is 500. The map marker top of Crawlspace is 310. The map marker width of Crawlspace is 12. The map marker height of Crawlspace is 15.
The map marker left of Crew Cabin is 439. The map marker top of Crew Cabin is 149. The map marker width of Crew Cabin is 41. The map marker height of Crew Cabin is 39.
The map marker left of Crumbling Wall is 252. The map marker top of Crumbling Wall is 208. The map marker width of Crumbling Wall is 26. The map marker height of Crumbling Wall is 27.
The map marker left of Customs House is 535. The map marker top of Customs House is 272. The map marker width of Customs House is 26. The map marker height of Customs House is 27.
The map marker left of Deep Street is 454. The map marker top of Deep Street is 379. The map marker width of Deep Street is 26. The map marker height of Deep Street is 27.
The map marker left of Display Reloading Room is 526. The map marker top of Display Reloading Room is 547. The map marker width of Display Reloading Room is 27. The map marker height of Display Reloading Room is 28.
The map marker left of Docks is 426. The map marker top of Docks is 263. The map marker width of Docks is 26. The map marker height of Docks is 27.
The map marker left of Dormitory Room is 290. The map marker top of Dormitory Room is 433. The map marker width of Dormitory Room is 26. The map marker height of Dormitory Room is 27.
The map marker left of Equipment Archive is 526. The map marker top of Equipment Archive is 547. The map marker width of Equipment Archive is 27. The map marker height of Equipment Archive is 28.
The map marker left of Fair is 159. The map marker top of Fair is 442. The map marker width of Fair is 26. The map marker height of Fair is 27.
The map marker left of Fish Market is 384. The map marker top of Fish Market is 303. The map marker width of Fish Market is 27. The map marker height of Fish Market is 28.
The map marker left of Fleur d'Or Drinks Club is 284. The map marker top of Fleur d'Or Drinks Club is 521. The map marker width of Fleur d'Or Drinks Club is 27. The map marker height of Fleur d'Or Drinks Club is 27.
The map marker left of Fleur d'Or Lobby is 350. The map marker top of Fleur d'Or Lobby is 521. The map marker width of Fleur d'Or Lobby is 27. The map marker height of Fleur d'Or Lobby is 27.
The map marker left of Foredeck is 442. The map marker top of Foredeck is 132. The map marker width of Foredeck is 42. The map marker height of Foredeck is 39.
The map marker left of Galley is 465. The map marker top of Galley is 344. The map marker width of Galley is 41. The map marker height of Galley is 39.
The map marker left of Generator Room is 526. The map marker top of Generator Room is 547. The map marker width of Generator Room is 27. The map marker height of Generator Room is 28.
The map marker left of Graduate Student Office is 465. The map marker top of Graduate Student Office is 776. The map marker width of Graduate Student Office is 15. The map marker height of Graduate Student Office is 7.
The map marker left of Heritage Corner is 253. The map marker top of Heritage Corner is 442. The map marker width of Heritage Corner is 26. The map marker height of Heritage Corner is 27.
The map marker left of Hesychius Street is 192. The map marker top of Hesychius Street is 292. The map marker width of Hesychius Street is 26. The map marker height of Hesychius Street is 27.
The map marker left of Higgate's Office is 537. The map marker top of Higgate's Office is 760. The map marker width of Higgate's Office is 27. The map marker height of Higgate's Office is 28.
The map marker left of High Street is 316. The map marker top of High Street is 398. The map marker width of High Street is 26. The map marker height of High Street is 27.
The map marker left of Hostel is 290. The map marker top of Hostel is 433. The map marker width of Hostel is 26. The map marker height of Hostel is 27.
The map marker left of Language Studies Department Office is 537. The map marker top of Language Studies Department Office is 760. The map marker width of Language Studies Department Office is 27. The map marker height of Language Studies Department Office is 28.
The map marker left of Language Studies Seminar Room is 415. The map marker top of Language Studies Seminar Room is 762. The map marker width of Language Studies Seminar Room is 27. The map marker height of Language Studies Seminar Room is 27.
The map marker left of Lecture Hall 1 is 544. The map marker top of Lecture Hall 1 is 751. The map marker width of Lecture Hall 1 is 26. The map marker height of Lecture Hall 1 is 27.
The map marker left of Lecture Hall 2 is 544. The map marker top of Lecture Hall 2 is 751. The map marker width of Lecture Hall 2 is 26. The map marker height of Lecture Hall 2 is 27.
The map marker left of Long Street North is 389. The map marker top of Long Street North is 522. The map marker width of Long Street North is 27. The map marker height of Long Street North is 28.
The map marker left of Long Street South is 387. The map marker top of Long Street South is 591. The map marker width of Long Street South is 27. The map marker height of Long Street South is 28.
The map marker left of Midway is 123. The map marker top of Midway is 444. The map marker width of Midway is 26. The map marker height of Midway is 27.
The map marker left of Monumental Staircase is 265. The map marker top of Monumental Staircase is 348. The map marker width of Monumental Staircase is 26. The map marker height of Monumental Staircase is 27.
The map marker left of My Apartment is 334. The map marker top of My Apartment is 676. The map marker width of My Apartment is 26. The map marker height of My Apartment is 27.
The map marker left of Navigation Area is 440. The map marker top of Navigation Area is 445. The map marker width of Navigation Area is 42. The map marker height of Navigation Area is 40.
The map marker left of New Church is 54. The map marker top of New Church is 397. The map marker width of New Church is 26. The map marker height of New Church is 27.
The map marker left of Old City Walls is 242. The map marker top of Old City Walls is 308. The map marker width of Old City Walls is 26. The map marker height of Old City Walls is 27.
The map marker left of Old Hexagonal Turret is 287. The map marker top of Old Hexagonal Turret is 308. The map marker width of Old Hexagonal Turret is 26. The map marker height of Old Hexagonal Turret is 27.
The map marker left of Open Sea is 577. The map marker top of Open Sea is 61. The map marker width of Open Sea is 26. The map marker height of Open Sea is 27.
The map marker left of Oracle Project is 526. The map marker top of Oracle Project is 547. The map marker width of Oracle Project is 27. The map marker height of Oracle Project is 28.
The map marker left of Outdoor Cafe is 369. The map marker top of Outdoor Cafe is 373. The map marker width of Outdoor Cafe is 26. The map marker height of Outdoor Cafe is 27.
The map marker left of Palm Square is 388. The map marker top of Palm Square is 671. The map marker width of Palm Square is 27. The map marker height of Palm Square is 27.
The map marker left of Park Center is 191. The map marker top of Park Center is 393. The map marker width of Park Center is 26. The map marker height of Park Center is 27.
The map marker left of Patriotic Chard-Garden is 215. The map marker top of Patriotic Chard-Garden is 191. The map marker width of Patriotic Chard-Garden is 26. The map marker height of Patriotic Chard-Garden is 27.
The map marker left of Personal Apartment is 526. The map marker top of Personal Apartment is 547. The map marker width of Personal Apartment is 27. The map marker height of Personal Apartment is 28.
The map marker left of Precarious Perch is 595. The map marker top of Precarious Perch is 172. The map marker width of Precarious Perch is 27. The map marker height of Precarious Perch is 27.
The map marker left of Private Beach is 93. The map marker top of Private Beach is 63. The map marker width of Private Beach is 27. The map marker height of Private Beach is 27.
The map marker left of Private Solarium is 526. The map marker top of Private Solarium is 547. The map marker width of Private Solarium is 27. The map marker height of Private Solarium is 28.
The map marker left of Projection Booth is 69. The map marker top of Projection Booth is 328. The map marker width of Projection Booth is 26. The map marker height of Projection Booth is 27.
The map marker left of Public Convenience is 681. The map marker top of Public Convenience is 508. The map marker width of Public Convenience is 27. The map marker height of Public Convenience is 27.
The map marker left of Rectification Room is 422. The map marker top of Rectification Room is 749. The map marker width of Rectification Room is 17. The map marker height of Rectification Room is 14.
The map marker left of Roget Close is 103. The map marker top of Roget Close is 246. The map marker width of Roget Close is 26. The map marker height of Roget Close is 27.
The map marker left of Rotunda is 471. The map marker top of Rotunda is 527. The map marker width of Rotunda is 26. The map marker height of Rotunda is 27.
The map marker left of Roundabout is 388. The map marker top of Roundabout is 416. The map marker width of Roundabout is 26. The map marker height of Roundabout is 27.
The map marker left of Samuel Johnson Basement is 459. The map marker top of Samuel Johnson Basement is 749. The map marker width of Samuel Johnson Basement is 7. The map marker height of Samuel Johnson Basement is 16.
The map marker left of Samuel Johnson Hall is 458. The map marker top of Samuel Johnson Hall is 758. The map marker width of Samuel Johnson Hall is 27. The map marker height of Samuel Johnson Hall is 27.
The map marker left of Screening Room is 69. The map marker top of Screening Room is 328. The map marker width of Screening Room is 26. The map marker height of Screening Room is 27.
The map marker left of Sensitive Equipment Testing Room is 526. The map marker top of Sensitive Equipment Testing Room is 547. The map marker width of Sensitive Equipment Testing Room is 27. The map marker height of Sensitive Equipment Testing Room is 28.
The map marker left of Shadow Chamber is 526. The map marker top of Shadow Chamber is 547. The map marker width of Shadow Chamber is 27. The map marker height of Shadow Chamber is 28.
The map marker left of Sigil Street is 61. The map marker top of Sigil Street is 519. The map marker width of Sigil Street is 26. The map marker height of Sigil Street is 27.
The map marker left of Slango's Bunk is 386. The map marker top of Slango's Bunk is 442. The map marker width of Slango's Bunk is 40. The map marker height of Slango's Bunk is 39.
The map marker left of Slango's Head is 381. The map marker top of Slango's Head is 510. The map marker width of Slango's Head is 41. The map marker height of Slango's Head is 38.
The map marker left of Sunning Deck is 443. The map marker top of Sunning Deck is 658. The map marker width of Sunning Deck is 42. The map marker height of Sunning Deck is 39.
The map marker left of Surveillance Room is 526. The map marker top of Surveillance Room is 547. The map marker width of Surveillance Room is 27. The map marker height of Surveillance Room is 28.
The map marker left of Tall Street is 469. The map marker top of Tall Street is 447. The map marker width of Tall Street is 27. The map marker height of Tall Street is 28.
The map marker left of Tin Hut is 492. The map marker top of Tin Hut is 304. The map marker width of Tin Hut is 26. The map marker height of Tin Hut is 28.
The map marker left of Tools Exhibit is 501. The map marker top of Tools Exhibit is 503. The map marker width of Tools Exhibit is 26. The map marker height of Tools Exhibit is 27.
The map marker left of Traffic Circle is 389. The map marker top of Traffic Circle is 447. The map marker width of Traffic Circle is 26. The map marker height of Traffic Circle is 27.
The map marker left of Tunnel Through Chalk is 526. The map marker top of Tunnel Through Chalk is 547. The map marker width of Tunnel Through Chalk is 27. The map marker height of Tunnel Through Chalk is 28.
The map marker left of University Oval is 463. The map marker top of University Oval is 673. The map marker width of University Oval is 27. The map marker height of University Oval is 27.
The map marker left of Waterstone's Office is 537. The map marker top of Waterstone's Office is 760. The map marker width of Waterstone's Office is 27. The map marker height of Waterstone's Office is 28.
The map marker left of Webster Court is 172. The map marker top of Webster Court is 219. The map marker width of Webster Court is 26. The map marker height of Webster Court is 27.
The map marker left of Winding Footpath is 78. The map marker top of Winding Footpath is 132. The map marker width of Winding Footpath is 27. The map marker height of Winding Footpath is 27.
The map marker left of Wonderland is 526. The map marker top of Wonderland is 547. The map marker width of Wonderland is 27. The map marker height of Wonderland is 28.
The map marker left of Workshop is 526. The map marker top of Workshop is 547. The map marker width of Workshop is 27. The map marker height of Workshop is 28.
The map marker left of Your Bunk is 494. The map marker top of Your Bunk is 453. The map marker width of Your Bunk is 42. The map marker height of Your Bunk is 39.
The map marker left of Your Head is 500. The map marker top of Your Head is 511. The map marker width of Your Head is 40. The map marker height of Your Head is 38.

Every turn when the location is Roundabout:
	if local map of Roundabout is Figure of Roundabout-4:
		now the local map of Roundabout is Figure of Roundabout-3;
		now the map marker left of Roundabout is 389;
		now the map marker top of Roundabout is 480;
		now the map marker width of Roundabout is 27;
		now the map marker height of Roundabout is 27;
	else if local map of Roundabout is Figure of Roundabout-3:
		now the local map of Roundabout is Figure of Roundabout-2;
		now the map marker left of Roundabout is 356;
		now the map marker top of Roundabout is 450;
		now the map marker width of Roundabout is 27;
		now the map marker height of Roundabout is 26;
	else if local map of Roundabout is Figure of Roundabout-2:
		now the local map of Roundabout is Figure of Roundabout;
		now the map marker left of Roundabout is 388;
		now the map marker top of Roundabout is 416;
		now the map marker width of Roundabout is 26;
		now the map marker height of Roundabout is 27;
	else if local map of Roundabout is Figure of Roundabout:
		now the local map of Roundabout is Figure of Roundabout-4;
		now the map marker left of Roundabout is 418;
		now the map marker top of Roundabout is 448;
		now the map marker width of Roundabout is 27;
		now the map marker height of Roundabout is 27;
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

["Padding" side images]
Figure of nautical padding left is the file "map-navigation-extend-left.png".
Figure of nautical padding right is the file "map-navigation-extend-right.png".

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
