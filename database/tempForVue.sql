-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 10, 2020 at 03:40 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tempForVue`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `year` int(10) NOT NULL,
  `decade` int(11) NOT NULL,
  `description` varchar(800) NOT NULL,
  `image` varchar(150) NOT NULL,
  `iskids` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `year`, `decade`, `description`, `image`, `iskids`) VALUES
(1, 'Sleeping Beauty', 1959, 1950, 'A witch curses a princess that she will die on her 16th birthday, but a fairy alters the curse so that the princess will go into a deep sleep and can only be awakened by a prince\'s magical kiss.', 'sleepingBeauty', 1),
(2, 'Lady and the Tramp', 1955, 1950, 'Lady, a female dog, belongs to Jim and Darling. She feels neglected when they get a baby in the house. When Aunt Sarah gets her Siamese twin cats too, Lady is blamed for all the havoc they wreak.', 'ladyTramp', 1),
(3, 'Peter Pan', 1953, 1950, 'Peter Pan and his friend Tinker Bell, a fairy, whisk away siblings Wendy, John and Michael to the island of Never Land, where Captain Hook seeks vengeance against Peter for cutting off his hand.', 'peterPan', 1),
(4, 'Alice in Wonderland', 1951, 1950, 'After seeing a hurrying rabbit in a waistcoat, Alice, a young and curious girl, follows him down his hole to Wonderland, and meets an array of anthropomorphic creatures who question logic and fantasy.', 'wonderland', 1),
(5, 'The Seventh Seal', 1957, 1950, 'A medieval knight challenges Death to a chess game to save himself and his friends.', 'seventhSeal', 0),
(6, 'Godzilla', 1954, 1950, 'When a seemingly indestructible fire-breathing monster is created as a result of the testing of American nuclear weapons, the government takes help from a reclusive scientist to kill the monster.', 'godzilla', 0),
(7, 'North by Northwest', 1959, 1950, 'An ad-man becomes involved in a bewildering cross-country chase involving enemy spies, the police and a beautiful woman.', 'northwest', 0),
(8, 'Singin\' in the Rain', 1952, 1950, 'When the transition is being made from silent films to `talkies\', everyone has trouble adapting. Don and Lina have been cast repeatedly as a romantic couple, but when their latest film is remade into a musical, only Don has the voice for the new singing part. After a lot of practise with a diction coach, Lina still sounds terrible, and Kathy, a bright young aspiring actress, is hired to record over her voice.', 'singinrain', 1),
(9, 'The Bridge on the River Kwai', 1957, 1950, 'Colonel Nicholson reluctantly agrees to camp commander Saito\'s suggestion of getting the World War II POWs to build a railway bridge. However, the project soon becomes an obsession for him.', 'riverkwai', 0),
(10, 'Ben-Hur', 1959, 1950, 'Ben-Hur is a 1959 American epic historical drama film directed by William Wyler, produced by Sam Zimbalist, and starring Charlton Heston as the title character. A remake of the 1925 silent film with a similar title, it was adapted from Lew Wallace\'s 1880 novel Ben-Hur: A Tale of the Christ.', 'benhur', 1),
(11, 'Cinderella', 1950, 1950, 'When Cinderella\'s dream of attending the Royal Ball and meeting the Grand Duke is hindered by her cruel stepmother, she gets some astounding help from her Fairy Godmother.', 'cinderella', 1),
(12, 'The Day the Earth Stood Still', 1951, 1950, 'An alien and his bodyguard land on earth to deliver a very important message to leaders around the world, which could determine the earth\'s survival.', 'stoodstill', 0),
(13, 'Creature from the Black Lagoon', 1954, 1950, 'A scientific expedition is carried out along the Amazon River. They discover a Gill-man, an amphibious-humanoid creature known to the locals as the Black-Lagoon. Will they be able to capture it?', 'blacklagoon', 0),
(14, 'The Ten Commandments', 1956, 1950, 'Moses escapes death at the hands of the Egyptian Pharaoh. Years later, when he learns of his true heritage, he sets out on his divine mission as the deliverer of the people.', 'commandments', 1),
(15, 'The War of the Worlds', 1953, 1950, 'Dr Clayton Forrester and his colleagues go fishing when Earth is unexpectedly invaded by Martians. He, along with a few others, tries to fight the aliens by finding their weakness.', 'waroftheworlds', 0),
(16, 'Jason and the Argonauts', 1963, 1960, 'Jason, a young man seeking the magical Golden Fleece, sets on a voyage with a few of Greece\'s best warriors. On their perilous journey, the heroes fight a hydra, a few harpies and a skeleton army.', 'argonauts', 1),
(17, 'One Hundred and One Dalmations', 1961, 1960, 'Cruella de Vil, an evil heiress, wants to make a fur coat for herself out of the skins of a hundred and one Dalmatian puppies. She makes an effort to kidnap them by hiring a group of thugs.', 'dalmations', 1),
(18, 'The Sword in the Stone', 1963, 1960, 'Frustrated of living in a Medieval mess, Merlin uses all his magical powers to change a skinny little boy into a legendary hero.', 'swordstone', 1),
(19, 'Doctor Dolittle', 1967, 1960, 'Dr. John Dolittle (Rex Harrison) lives in a small English village where he specializes in caring for and verbally communicating with animals. When Dr. Dolittle is unjustly sent to an insane asylum for freeing a lovesick seal from captivity, his animals and two closest human friends, Matthew Mugg (Anthony Newley) and Tommy Stubbins (William Dix), liberate him. Afterward, they join Emma Fairfax (Samantha Eggar) and set out by boat to find a famed and elusive creature: the Great Pink Sea Snail.', 'dolittle', 1),
(20, 'A Boy Named Charlie Brown', 1969, 1960, 'When Charlie Brown (Peter Robbins) enters the school spelling bee, the perpetually crabby Lucy (Pamelyn Ferdin) predicts his humiliation. But with the help of his best friend, Linus (Glenn Gilger), and faithful dog, Snoopy (Bill Melendez), Charlie Brown not only wins the spelling bee, he\'s chosen to attend the national spelling bee in New York City, leading to many misadventures in the big city. This is the first animated feature based on Charles Schulz\'s comic strip, \"Peanuts.\"', 'charliebrown', 1),
(21, 'Psycho', 1960, 1960, 'Marion disappears after stealing money from her employer. Her lover and sister try to find her and end up reaching the infamous Bates Motel, where they meet Norman Bates.', 'psycho', 0),
(22, '2001: A Space Odyssey', 1968, 1960, 'The Discovery One and its revolutionary super computer seek a mysterious monolith that first appeared at the dawn of man.', 'spaceodyssey', 0),
(23, 'Dr. Strangelove', 1964, 1960, 'An American Brigadier puts the world on the verge of a nuclear catastrophe, when he deploys a B-52 bomber on the Russians, without informing his superiors.', 'strangelove', 0),
(24, 'Lawrence of Arabia', 1963, 1960, 'Lawrence, a lieutenant in the British Army, is asked by Colonel Brighton to moderately assess Faisal, their ally. Lawrence is impressed with Faisal and seeks his help to plan an attack on the enemy.', 'lawrence', 0),
(25, 'The Good, the Bad and the Ugly', 1966, 1960, 'During the Civil War, two men, Blondie and Tuco, form an uncomfortable alliance while looking for treasure. They must also outwit Angel Eyes, an outlaw who wants to plunder the riches for himself.', 'goodbadugly', 0),
(26, 'Goldfinger', 1964, 1960, 'MI6 agent James Bond investigates a gold-smuggling ring run by businessman Auric Goldfinger. As he delves deeper into his activities, he uncovers a sinister plan to attack Fort Knox\'s gold reserves.', 'goldfinger', 0),
(27, 'Planet of the Apes', 1968, 1960, 'When astronaut Taylor\'s spaceship crash-lands on an unknown planet, to his horror, he realizes the planet is ruled by apes much advanced than humans. How will Taylor lead his team to safety?', 'planetofapes', 0),
(28, 'Mary Poppins', 1964, 1960, 'Mr Banks is looking for a nanny for his two mischievous children and comes across Mary Poppins, an angelic nanny. She not only brings a change in their lives but also spreads happiness.', 'marypoppins', 1),
(29, 'Sound of Music', 1965, 1960, 'Maria, an aspiring nun, is sent as a governess to take care of seven motherless children. Soon her jovial and loving nature tames their hearts and the children become fond of her.', 'soundofmusic', 1),
(30, 'Night of the Living Dead', 1968, 1960, 'The radiation from a fallen satellite causes the recently deceased to rise from the grave and seek the living to use as food.', 'livingdead', 0),
(31, 'Willy Wonka and the Chocolate Factory', 1971, 1970, 'A factory owner gives 5 children a chance to win a lifetime supply of sweets. Charlie, along with four odious children enter the factory. Disasters befall each of the children. Will Charlie survive?', 'willywonka', 1),
(32, 'Jaws', 1975, 1970, 'A police chief, a marine scientist and a fisherman spring into action after a white shark terrorises the inhabitants of Amity, a quiet island.', 'jaws', 0),
(33, 'Star Wars: A New Hope', 1977, 1970, 'After Princess Leia, the leader of the Rebel Alliance, is held hostage by Darth Vader, Luke and Han Solo must free her and destroy the powerful weapon created by the Galactic Empire.', 'starwars4', 1),
(34, 'A Clockwork Orange', 1971, 1970, 'Alex, a psychopathic delinquent, is imprisoned for murder and rape. In order to reduce his sentence, he volunteers for an experimental therapy conducted by the government, but it goes askew.', 'orange', 0),
(35, 'The Exorcist', 1973, 1970, 'An actress notices dangerous changes in the behavior and physical make-up of her 12-year-old daughter. Meanwhile, a young priest begins to doubt his faith while dealing with his mother\'s sickness.', 'exorcist', 0),
(36, 'One Flew Over the Cuckoo\'s Nest', 1975, 1970, 'In order to escape the prison labour, McMurphy, a prisoner, fakes insanity and is shifted to the special ward for the mentally unstable. In this ward, he must rise up against a cruel nurse, Ratched.', 'cuckoo', 0),
(37, 'Alien', 1979, 1970, 'The crew of a spacecraft, Nostromo, intercept a distress signal from a planet and set out to investigate it. However, to their horror, they are attacked by an alien which later invades their ship.', 'alien', 0),
(38, 'Rocky', 1976, 1970, 'Rocky Balboa, a small-time boxer, gets a chance to fight heavyweight champion Apollo Creed. In a bid to earn respect and glory, Rocky jumps into the ring, unaware of the tough task ahead of him.', 'rocky', 0),
(39, 'Superman', 1978, 1970, 'Scientist Jor-El rockets his infant son, Kal-El, to safety on Earth. Kal is raised as Clark Kent and develops unusual abilities and powers to become Superman who fights for truth and justice.', 'superman', 1),
(40, 'Halloween', 1978, 1970, 'On a cold Halloween night in 1963, six year old Michael Myers brutally murdered his 17-year-old sister, Judith. He was sentenced and locked away for 15 years. But on October 30, 1978, while being transferred for a court date, a 21-year-old Michael Myers steals a car and escapes Smith\'s Grove. He returns to his quiet hometown of Haddonfield, Illinois, where he looks for his next victims.', 'halloween', 0),
(41, 'The Muppet Movie', 1979, 1970, 'Dom DeLuise persuades Kermit the Frog to pursue a career in Hollywood. He is joined by other Muppets like Miss Piggy and Fozzie Bear. But Hermit must avoid the owner of a frog-leg restaurant.', 'muppets', 1),
(42, 'Monty Python and the Holy Grail', 1975, 1970, 'A comedic send-up of the grim circumstances of the Middle Ages as told through the story of King Arthur and framed by a modern-day murder investigation. When the mythical king of the Britons leads his knights on a quest for the Holy Grail, they face a wide array of horrors, including a persistent Black Knight, a three-headed giant, a cadre of shrubbery-challenged knights, the perilous Castle Anthrax, a killer rabbit, a house of virgins, and a handful of rude Frenchmen.', 'montypython', 0),
(43, 'The Many Adventures of Winnie the Pooh', 1977, 1970, 'Sebastian Cabot narrates the adventures of bumbling bear Winnie the Pooh as he battles a nest of vicious bees over a trove of honey, weathers a terrible wind storm and endures the foibles of the hyperactive tiger Tigger, all while singing and bumbling his way through the Hundred Acre Wood. Kanga, Piglet, Owl, Rabbit and Eeyore round out the menagerie in this trio of animated tales adapted from A.A. Milne\'s celebrated series of children\'s books.', 'winniepooh', 1),
(44, 'Snoopy Come Home', 1972, 1970, 'Charlie Brown\'s (Chad Webber) beloved dog Snoopy (Bill Melendez) receives a letter from his original owner, Lila (Johanna Baer), who has been sick in the hospital. With his bird friend Woodstock, Snoopy goes to visit Lila, making his way across the country despite seeing \"no dogs allowed\" signs everywhere. When Lila gets better, she asks Snoopy to live with her. After a farewell party, he sets out to live with Lila, leaving Charlie Brown depressed.', 'snoopy', 1),
(45, 'A Christmas Carol', 1971, 1970, 'A Christmas Carol is an American animated adaptation of Charles Dickens\'s 1843 novella. The film was broadcast on U.S. television by ABC on December 21, 1971, and released theatrically soon after. In 1972, it won the Academy Award for Best Animated Short Film.', 'christmascarolanimated', 1),
(46, 'E.T. the Extra-Terrestrial', 1982, 1980, 'An alien is left behind on Earth and is saved by young Elliot who decides to keep him hidden. While the task force hunts for it, Elliot and his siblings form an emotional bond with their new friend.', 'ET', 1),
(47, 'Back to the Future', 1985, 1980, 'Marty travels back in time using an eccentric scientist\'s time machine. However, he must make his high-school-aged parents fall in love in order to return to the present.', 'backtothefuture', 1),
(48, 'Star Wars: The Empire Strikes Back', 1980, 1980, 'Darth Vader is adamant about turning Luke Skywalker to the dark side. Master Yoda trains Luke to become a Jedi Knight while his friends try to fend off the Imperial fleet.', 'starwars5', 1),
(49, 'Star Wars: Return of the Jedi', 1983, 1980, 'Luke Skywalker attempts to bring his father back to the light side of the Force. At the same time, the rebels hatch a plan to destroy the second Death Star.', 'starwars6', 1),
(50, 'Blade Runner', 1982, 1980, 'Rick Deckard, an ex-policeman, becomes a special agent with a mission to exterminate a group of violent androids. As he starts getting deeper into his mission, he questions his own identity.', 'bladerunner', 0),
(51, 'Ghostbusters', 1984, 1980, 'When Peter Venkman, Raymond Stantz and Egon Spengler lose their jobs as parapsychologists, they start an establishment called Ghostbusters to fight the evil ghosts lurking in New York City.', 'ghostbusters', 1),
(52, 'Indiana Jones: Raiders of the Lost Ark', 1981, 1980, 'Indiana Jones sets out in search of a biblical artefact called the Ark of the Covenant, which is coveted by many people. In his quest, he must face opposition from the Nazis.', 'indianajones', 0),
(53, 'The Princess Bride', 1987, 1980, 'A fairy tale adventure about a beautiful young woman and her one true love. He must find her after a long separation and save her. They must battle the evils of the mythical kingdom of Florin to be reunited with each other. Based on the William Goldman novel \"The Princess Bride\" which earned its own loyal audience.', 'princessbride', 0),
(54, 'Raging Bull', 1980, 1980, 'A middleweight ascends through the ranks to achieve his first shot at a boxing title. But his personal life, laden with paranoia, jealousy and rage, scuttles his professional growth.', 'ragingbull', 0),
(55, 'Nightmare on Elm Street', 1984, 1980, 'A young girl realises that she has to stay awake at any cost to avoid the clawed killer who is butchering her friends one by one in their dreams.', 'elmstreet', 0),
(56, 'Full Metal Jacket', 1987, 1980, 'During the Vietnam War, under the ruthless command of Hartman, a few recruits face mental breakdowns. After a bizarre event, the soldiers are left to deal with the war\'s hellish mayhem.', 'fullmetaljacket', 0),
(57, 'The Thing', 1982, 1980, 'In remote Antarctica, a group of American research scientists are disturbed at their base camp by a helicopter shooting at a sled dog. When they take in the dog, it brutally attacks both human beings and canines in the camp and they discover that the beast can assume the shape of its victims. A resourceful helicopter pilot (Kurt Russell) and the camp doctor (Richard Dysart) lead the camp crew in a desperate, gory battle against the vicious creature before it picks them all off, one by one.', 'thething', 0),
(58, 'Scarface', 1983, 1980, 'Tony Montana and his close friend Manny, build a strong drug empire in Miami. However as his power begins to grow, so does his ego and his enemies, and his own paranoia begins to plague his empire.', 'scarface', 0),
(59, 'The Little Mermaid', 1989, 1980, 'Ursula, the sea witch, makes a devious deal with Princess Ariel allowing her to meet Eric, the human prince she loves. Unaware of her true intentions, Ariel lands herself in trouble.', 'littlemermaid', 1),
(60, 'The Breakfast Club', 1985, 1980, 'Five high school students from different walks of life endure a Saturday detention under a power-hungry principal (Paul Gleason). The disparate group includes rebel John (Judd Nelson), princess Claire (Molly Ringwald), outcast Allison (Ally Sheedy), brainy Brian (Anthony Michael Hall) and Andrew (Emilio Estevez), the jock. Each has a chance to tell his or her story, making the others see them a little differently -- and when the day ends, they question whether school will ever be the same.', 'breakfastclub', 0),
(61, 'Home Alone', 1990, 1990, 'Eight-year-old Kevin is accidentally left behind when his family leaves for France. At first, he is happy to be in charge, but when thieves try to break into his home, he tries to put up a fight.', 'homealone', 1),
(62, 'Matilda', 1996, 1990, 'Matilda shares a home with her parents and brother, who do not appreciate her. When her principal tortures her and a kind-hearted teacher, she uses her telekinetic powers to settle scores.', 'matilda', 1),
(63, 'Hook', 1991, 1990, 'When Peter Pan\'s children are abducted by Captain Hook, he is forced to return to Neverland. With some help from Tinkerbell and the Lost Boys, he must battle against his old foe to save his kids.', 'hook', 1),
(64, 'The Lion King', 1994, 1990, 'As a cub, Simba is forced to leave the Pride Lands after his father Mufasa is murdered by his wicked uncle, Scar. Years later, he returns as a young lion to reclaim his throne.', 'lionking', 1),
(65, 'Beauty and the Beast', 1991, 1990, 'Belle, a beautiful young woman, agrees to live with the Beast in exchange for the return of her abducted father. Soon, Belle discovers that her hideous captor is actually an enchanted prince.', 'beautybeast', 1),
(66, 'Casper', 1995, 1990, 'Carrigan Crittenden hires paranormal expert Dr James Harvey to exorcise the ghosts from her mansion. The situation changes when Harvey\'s daughter befriends Casper, a friendly ghost.', 'casper', 1),
(67, 'Aladdin', 1992, 1990, 'Aladdin, a common thief, falls in love with Princess Jasmine, but cannot marry her as he is not a prince. Jafar, a royal vizier with a hidden agenda, enlists Aladdin\'s help to retrieve a magical lamp.', 'aladdin', 1),
(68, 'Titanic', 1992, 1990, 'Seventeen-year-old Rose hails from an aristocratic family and is set to be married. When she boards the Titanic, she meets Jack Dawson, an artist, and falls in love with him.', 'titanic', 0),
(69, 'Silence of the Lambs', 1991, 1990, 'Clarice Starling, an FBI agent, seeks help from Hannibal Lecter, a psychopathic serial killer and former psychiatrist, in order to apprehend another serial killer who has been claiming female victims.', 'silencelambs', 0),
(70, 'Pulp Fiction', 1994, 1990, 'In the realm of underworld, a series of incidents intertwines the lives of two Los Angeles mobsters, a gangster\'s wife, a boxer and two small-time criminals.', 'pulpfiction', 0),
(71, 'Jurassic Park', 1993, 1990, 'John Hammond, an entrepreneur, opens a wildlife park containing cloned dinosaurs. However, a breakdown of the island\'s security system causes the creatures to escape and bring about chaos.', 'jurassicpark', 0),
(72, 'The Matrix', 1999, 1990, 'Thomas Anderson, a computer programmer, is led to fight an underground war against powerful computers who have constructed his entire reality with a system called the Matrix.', 'matrix', 0),
(73, 'Schindler\'s List', 1993, 1990, 'Oskar Schindler, a German industrialist and member of the Nazi party, tries to save his Jewish employees after witnessing the persecution of Jews in Poland.', 'schindlerslist', 0),
(74, 'Scream', 1996, 1990, 'A year after Sidney\'s mom is murdered, more murders start to occur. She begins to suspect if these murders are related and tries to find the killer as everyone seems to be a suspect.', 'scream', 0),
(75, 'Edward Scissorhands', 1990, 1990, 'Edward, a synthetic man with scissor hands, is taken in by Peg, a kindly Avon lady, after the passing of his inventor. Things take a turn for the worse when he is blamed for a crime he did not commit.', 'scissorhands', 0);

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
CREATE TABLE IF NOT EXISTS `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `year` int(250) NOT NULL,
  `decade` int(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(250) NOT NULL,
  `isKids` int(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `name`, `year`, `decade`, `description`, `image`, `isKids`) VALUES
(1, 'All Shook Up', 1956, 1950, '\"All Shook Up\" is a song recorded by Elvis Presley, published by Elvis Presley Music, and composed by Otis Blackwell. The single topped the U.S. Billboard Hot 100 on April 13, 1957, staying there for eight weeks. It also topped the Billboard R&B chart for four weeks, becoming Presley\'s second single to do so, and peaked at No. 1 on the country chart as well.', 'shook', 1),
(3, 'The Great Pretender', 1955, 1950, '\"The Great Pretender\" is a popular song recorded by The Platters, with Tony Williams on lead vocals, and released as a single on November 3, 1955. The words and music were written by Buck Ram, the Platters\' manager and producer who was a successful songwriter before moving into producing and management. The song reached the UK charts peaking at number 5.', 'pretender', 1),
(4, 'In The Still of The Night', 1956, 1950, '\"In the Still of the Nite\", also subsequently titled \"In the Still of the Night\", is a song written by Fred Parris and recorded by his Five Satins.', 'night', 0),
(5, 'Wake Up Little Suzie', 1957, 1950, 'The song is best known in a recording by the Everly Brothers, issued by Cadence Records as catalog number 1337. The Everly Brothers record reached No. 1 on the Billboard Pop chart and the Cash Box Best Selling Records chart, despite having been banned from Boston radio stations for lyrics that, at the time, were considered suggestive, according to a 1986 interview with Don Everly.', 'suzie', 0),
(6, 'That\'ll Be The Day', 1957, 1950, '\"That\'ll Be the Day\" is a song written by Buddy Holly and Jerry Allison. It was first recorded by Buddy Holly and the Three Tunes in 1956 and was re-recorded in 1957 by Holly and his new band, the Crickets.', 'betheday', 0),
(7, 'Tom Dooley', 1958, 1950, '\"Tom Dooley\" is a North Carolina folk song based on the 1866 murder of a woman named Laura Foster in Wilkes County, North Carolina, allegedly by Tom Dula. The song is best known today because of a hit version recorded in 1958 by The Kingston Trio. This version was a multi-format hit, which reached #1 in Billboard and the Billboard R&B listing, and appeared in the Cashbox Country Music Top 20.', 'dooley', 0),
(8, 'Mr. Sandman', 1954, 1950, '\"Mr. Sandman\" (sometimes rendered as \"Mister Sandman\") is a popular song written by Pat Ballard which was published in 1954 and first recorded in May of that year by Vaughn Monroe & His Orchestra and later that same year by The Chordettes and The Four Aces.', 'sandman', 1),
(68, 'The Twist', 1959, 1950, 'The Twist\" is an American pop song written and originally released in early 1959 (having been recorded on November 11, 1958) by Hank Ballard and the Midnighters.', 'twist', 0),
(10, 'Jailhouse Rock', 1957, 1950, '\"Jailhouse Rock\" is a song written by Jerry Leiber and Mike Stoller that first became a hit for Elvis Presley. RCA Victor released the song on a 45 rpm single on September 24, 1957, the song had a film release of Presley\'s motion picture under the same name, Jailhouse Rock.', 'jailhouse', 1),
(11, 'Do You Want To Dance', 1958, 1950, '\"Do You Want to Dance\" is a song written by American singer Bobby Freeman and recorded by him in 1958. It reached number No. 5 on the United States Billboard Top 100 Sides pop chart and No. 2 on the Billboard R&B chart.', 'dance', 0),
(12, 'Summertime Blues', 1958, 1950, '\"Summertime Blues\" is a song co-written and recorded by American rockabilly artist Eddie Cochran. It was written by Cochran and his manager Jerry Capehart.', 'blues', 1),
(13, 'Beyond The Sea', 1959, 1950, '\"Beyond the Sea\" has been recorded by many artists, but Bobby Darin\'s version released in late 1959 is the best known by many, reaching No. 6 on the Billboard Hot 100.', 'sea', 1),
(14, 'Come Fly With Me', 1958, 1950, 'Sinatra\'s first collaboration with arranger/conductor Billy May, Come Fly with Me was designed as a musical trip around the world. Sammy Cahn and Jimmy Van Heusen wrote the title track at Sinatra\'s request.', 'comefly', 1),
(15, 'White Lightning', 1959, 1950, '\"White Lightning\" is a song written by the rockabilly artist J. P. Richardson, best known by his stage name, the Big Bopper. The song was recorded by American country music artist George Jones and released as a single in February 1959.', 'lightning', 1),
(16, 'Goodnight Irene', 1950, 1950, 'In 1950, one year after Lead Belly\'s death, the American folk band The Weavers recorded a version of \"Goodnight, Irene\".', 'goodnight', 0),
(17, 'Hey Jude', 1968, 1960, '\"Hey Jude\" is a song by the English rock band the Beatles that was released as a non-album single on 26 August 1968. It was written by Paul McCartney and credited to the Lennon–McCartney partnership.', 'jude', 1),
(18, 'I\'m A Believer', 1966, 1960, '\"I\'m a Believer\" is a song composed by Neil Diamond and recorded by The Monkees in 1966 with the lead vocals by Micky Dolenz.', 'believer', 0),
(19, 'I Get Around', 1963, 1960, '\"I Get Around\" is a song written by Brian Wilson and Mike Love for American rock band the Beach Boys.', 'beachboys', 0),
(20, 'I Want You Back', 1969, 1960, '\"I Want You Back\" is the first national single by the Jackson 5. It was released by Motown on October 7, 1969, and became the first number-one hit for the band on January 31, 1970.', 'five', 0),
(21, 'Louie Louie', 1966, 1960, '\"Louie Louie\" is a rhythm and blues song written and composed by American musician Richard Berry in 1955. It is best known for the 1963 hit version by the Kingsmen and has become a standard in pop and rock.', 'louie', 0),
(22, 'House of The Rising Sun', 1964, 1960, '\"The House of the Rising Sun\" is a traditional folk song, sometimes called \"Rising Sun Blues\". It tells of a life gone wrong in New Orleans; many versions also urge a sibling or parents and children to avoid the same fate.', 'house', 1),
(23, 'Only The Lonely', 1960, 1960, '\"Only the Lonely (Know the Way I Feel)\" is a 1960 song written by Roy Orbison and Joe Melson. Orbison\'s recording of the song, produced by Fred Foster for Monument Records, was the first major hit for the singer. It was described by The New York Times as expressing \"a clenched, driven urgency\".', 'lonely', 0),
(24, 'Like A Rolling Stone', 1965, 1960, '\"Like a Rolling Stone\" is a 1965 song by the American singer-songwriter Bob Dylan. Its confrontational lyrics originated in an extended piece of verse Dylan wrote in June 1965, when he returned exhausted from a grueling tour of England.', 'rolling', 0),
(25, 'Come Together', 1969, 1960, '\"Come Together\" is a song by the English rock band the Beatles, written primarily by John Lennon and credited to Lennon–McCartney.', 'cometogether', 1),
(26, 'Honky Tonk Women', 1969, 1960, 'Honky Tonk Women\" is a 1969 hit song by the Rolling Stones. It was a single-only release, available from 4 July 1969 in the United Kingdom, and a week later in the United States (although a country version called \"Country Honk\" was later included on the album Let It Bleed).', 'honky', 0),
(27, 'The Mamas & The Papas', 1966, 1960, '\"California Dreamin\'\" is a song written by John Phillips and Michelle Phillips and was first recorded by Barry McGuire. However, the best-known version is by the Mamas and the Papas, who sang backup on the original version and released it as a single in 1965.', 'california', 1),
(28, 'Whole Lotta Love', 1969, 1960, 'Whole Lotta Love\" is a song by English hard rock band Led Zeppelin. It is the opening track on the band\'s second album, Led Zeppelin II, and was released in the United States, several countries in Europe, and Japan as a single.', 'love', 0),
(29, 'You Can\'t Hurry Love', 1966, 1960, '\"You Can\'t Hurry Love\" is a 1966 song originally recorded by The Supremes on the Motown label.', 'hurry', 1),
(30, 'Please Mr. Postman', 1961, 1960, '\"Please Mr. Postman\" is a song written by Georgia Dobbins, William Garrett, Freddie Gorman, Brian Holland, and Robert Bateman. It is the debut single by the Marvelettes for the Tamla (Motown) label.', 'postman', 1),
(31, 'Iko Iko', 1964, 1960, 'Dixie Cups\', \"Iko Iko\"  is a much-covered New Orleans song that tells of a parade collision between two tribes of Mardi Gras Indians and the traditional confrontation.', 'dixie', 1),
(32, 'Stayin\' Alive', 1977, 1970, '\"Stayin\' Alive\" is a song written and performed by the Bee Gees from the Saturday Night Fever motion picture soundtrack. The song was released on 13 December 1977 as the second single from the Saturday Night Fever soundtrack.', 'alive', 1),
(33, 'My Sharona', 1979, 1970, 'My Sharona is the debut single by the Knack. The song was written by Berton Averre and Doug Fieger, and released in 1979 from their album Get the Knack.', 'sharona', 0),
(34, 'Heart of Glass', 1978, 1970, '\"Heart of Glass\" is a song by the American new wave band Blondie, written by singer Debbie Harry and guitarist Chris Stein. It was featured on the band\'s third studio album, Parallel Lines.', 'glass', 0),
(35, 'Dancing Queen', 1976, 1970, '\"Dancing Queen\" is a Europop song by the Swedish group ABBA, and the lead single from their fourth studio album, Arrival.', 'queen', 1),
(36, 'Don\'t Go Breaking My Heart', 1976, 1970, '\"Don\'t Go Breaking My Heart\" is a 1976 duet by Elton John and Kiki Dee. It was written by Elton John with Bernie Taupin under the pseudonyms \"Ann Orson\" and \"Carte Blanche\", respectively, and intended as an affectionate pastiche of the Motown style.', 'breaking', 0),
(37, 'Disorder', 1979, 1970, 'Unknown Pleasures is the debut studio album by English rock band Joy Division, released on 15 June 1979 by Factory Records featuring, \"Disorder.\"', 'disorder', 0),
(71, 'U Can\'t Touch This', 1990, 1990, '\"U Can\'t Touch This\" is a song cowritten, produced and performed by MC Hammer from his 1990 album Please Hammer, Don\'t Hurt \'Em. It is considered to be his signature song and is his most successful single.', 'touch', 0),
(39, 'Heroes', 1977, 1970, '\"Heroes\" is the 12th studio album by English singer-songwriter David Bowie, released on 14 October 1977 featuring the song \"Heroes.\"', 'heroes', 1),
(40, 'How Deep Is Your Love', 1977, 1970, '\"How Deep Is Your Love\" is a pop ballad written and recorded by the Bee Gees in 1977 and released as a single in September of that year.', 'deep', 0),
(41, 'Stairway To Heaven', 1971, 1970, '\"Stairway to Heaven\" is a song by the English rock band Led Zeppelin, released in late 1971. It was composed by the band\'s guitarist Jimmy Page and vocalist Robert Plant for their untitled fourth studio album (often called Led Zeppelin IV).', 'heaven', 1),
(42, 'Killing Me Softly With His Song', 1973, 1970, 'Killing Me Softly is a studio album by American singer-songwriter Roberta Flack, released on August 1, 1973 featuring \"Killing Me Softly.\"', 'softly', 0),
(43, 'It\'s Too Late', 1971, 1970, '\"It\'s Too Late\" is a song from Carole King\'s 1971 album Tapestry. Toni Stern wrote the lyrics and King wrote the music. It was released as a single in April 1971 and reached number 1 on the Billboard Hot 100.', 'late', 0),
(44, 'Best of My Love', 1977, 1970, '\"Best of My Love\" is a song by American band The Emotions from their fourth studio album Rejoice (1977). It was composed by Maurice White and Al McKay of Earth, Wind & Fire, and produced by White and Clarence McDonald.', 'bestofmylove', 1),
(45, 'Superstition', 1972, 1970, '\"Superstition\" is a song by American singer-songwriter Stevie Wonder. It was released on October 24, 1972, as the lead single from his fifteenth studio album, Talking Book (1972), by Tamla. The lyrics describes popular superstitions and their negative effects.', 'superstition', 1),
(46, 'You\'re So Vain', 1972, 1970, 'No Secrets is the third studio album by American singer and songwriter Carly Simon, released on November 28, 1972 featuring \"You\'re So Vain.\"', 'vain', 0),
(47, 'Play That Funky Music', 1976, 1970, 'Play That Funky Music\" is a song written by Rob Parissi and recorded by the band Wild Cherry.', 'funky', 0),
(48, 'Billie Jean', 1982, 1980, '\"Billie Jean\" is a song by American singer Michael Jackson, released by Epic Records on January 2, 1983, as the second single from Jackson\'s sixth studio album, Thriller (1982).', 'billie', 0),
(49, 'I Wanna Dance With Somebody', 1987, 1980, '\"I Wanna Dance with Somebody (Who Loves Me)\" is the first single from Whitney Houston\'s second studio album, Whitney. It was released on May 2, 1987 by Arista Records.', 'iwannadance', 0),
(50, 'Livin\' On A Prayer', 1986, 1980, '\"Livin\' on a Prayer\" is Bon Jovi\'s second chart-topping single from their third album Slippery When Wet.', 'prayer', 1),
(51, 'Eye of The Tiger', 1982, 1980, '\"Eye of the Tiger\" is a song by American rock band Survivor. It was released as a single from their third album of the same name and was also the theme song for the film Rocky III, which was released a day before the single.', 'tiger', 1),
(52, 'Don\'t You Want Me', 1983, 1980, 'Don\'t You Want Me\" is a single by British synthpop group The Human League, released on 27 November 1981 as the fourth single from their third studio album Dare (1981).', 'wantme', 0),
(53, 'Take On Me', 1985, 1980, 'Take On Me\" is a song by Norwegian synth-pop band A-ha, first released in 1984.', 'takeonme', 1),
(54, 'All Night Long', 1983, 1980, '\"All Night Long (All Night)\" is a hit single by American singer Lionel Richie from 1983. Taken from his second solo album, Can\'t Slow Down (1983), it combined Richie\'s soulful Commodores style with Caribbean influences.', 'allnight', 1),
(55, 'Like A Virgin', 1984, 1980, '\"Like a Virgin\" is a song recorded by American singer Madonna for her second studio album Like a Virgin (1984).', 'virgin', 0),
(57, 'Sweet Dreams (Are Made Of This)', 1983, 1980, '\"Sweet Dreams (Are Made of This)\" is a song by the British new wave music duo Eurythmics. The song is the title track of their album of the same name and was released as the fourth and final single from the album in early 1983.', 'dreams', 0),
(58, 'When Doves Cry', 1984, 1980, '\"When Doves Cry\" is a song by American singer Prince, and the lead single from his 1984 album Purple Rain. According to the Purple Rain DVD, Prince was asked by the director to write a song to match the theme of a particular segment of the film – one that involved intermingled parental difficulties and a love affair.', 'doves', 0),
(69, 'Losing My Religion', 1991, 1990, 'Losing My Religion\" is a song by the American alternative rock band R.E.M. The song was released as the first single from the group\'s 1991 album Out of Time.', 'religion', 1),
(70, 'Good Vibrations', 1993, 1990, '\"Good Vibrations\" is a song by American group Marky Mark and the Funky Bunch. It was released in July 1991 as the lead single from their debut album Music for the People. ', 'vibration', 0),
(60, 'Total Eclipse of the Heart', 1983, 1980, '\"Total Eclipse of the Heart\" is a song recorded by Welsh singer Bonnie Tyler. It was written and produced by Jim Steinman, and released on Tyler\'s fifth studio album, Faster Than the Speed of Night (1983).', 'eclipse', 1),
(61, 'Wake Me Up Before You Go-Go', 1984, 1980, '\"Wake Me Up Before You Go-Go\" is a song by the English duo Wham!, first released as a single in the UK on 14 May 1984.', 'wakemeup', 1),
(62, 'Never Gonna Give You Up', 1987, 1980, '\"Never Gonna Give You Up\" is a song recorded by British singer and songwriter Rick Astley, released as a single on 27 July 1987.', 'giveyouup', 1),
(63, 'Woman in Love', 1980, 1980, '\"Woman in Love\" is a song performed by Barbra Streisand and taken from her 1980 album, Guilty. The song was written by Barry and Robin Gibb of the Bee Gees, who received the 1980 Ivor Novello award for Best Song Musically and Lyrically.', 'inlove', 0),
(64, 'Smells Like Teen Spirit', 1991, 1990, '\"Smells Like Teen Spirit\" is a song by American rock band Nirvana. It is the opening track and lead single from the band\'s second album, Nevermind (1991).', 'teenspirit', 0),
(65, 'I Want It That Way', 1999, 1990, '\"I Want It That Way\" is a song by American boy band the Backstreet Boys. It was released on April 12, 1999, as the lead single from their third studio album, Millennium.', 'thatway', 1),
(66, '...Baby One More Time', 1998, 1990, '\"...Baby One More Time\" is the debut single by American singer Britney Spears from her debut studio album of the same title (1999).', 'time', 0),
(67, 'Loser', 1993, 1990, '\"Loser\" is a song by American musician Beck. It was written by Beck and record producer Carl Stephenson, who both produced the song with Tom Rothrock.', 'loser', 0),
(72, 'Jump', 1992, 1990, '\"Jump\" is the hit debut single by American hip hop duo Kris Kross. It was released on February 6, 1992, as a single from their debut studio album Totally Krossed Out.', 'krisskross', 1),
(73, 'I\'m Too Sexy', 1991, 1990, '\"I\'m Too Sexy\" is the debut song by British group Right Said Fred. The single peaked at number two on the UK Singles Chart. Outside the United Kingdom, \"I\'m Too Sexy\" topped the charts in six countries, including Australia, Ireland, and the United States.', 'sexy', 0),
(74, 'Say My Name', 1999, 1990, '\"Say My Name\" is a song by the American girl group Destiny\'s Child from their second studio album The Writing\'s on the Wall (1999).', 'myname', 0),
(75, 'Enter Sandman', 1991, 1990, '\"Enter Sandman\" is a song by American heavy metal band Metallica. It is the opening track and lead single from their self-titled fifth album, Metallica, released in 1991.', 'metallica', 0),
(76, 'Don\'t Speak', 1995, 1990, 'Don\'t Speak\" is a song by the American ska band No Doubt from their third studio album Tragic Kingdom (1995). It was released on April 15, 1996 in the United States as the third single from Tragic Kingdom.', 'speak', 1),
(77, 'Sock It 2 Me', 1997, 1990, '\"Sock It 2 Me\" is a song recorded by American rapper Missy \"Misdemeanor\" Elliott featuring American rapper Da Brat.', 'sock', 1),
(78, 'Waterfalls', 1994, 1990, '\"Waterfalls\" is a song by American recording group TLC. It was written by band member Lisa \"Left Eye\" Lopes with Marqueze Etheridge and Organized Noize for TLC\'s second album, CrazySexyCool (1994).', 'waterfalls', 1),
(79, 'All Star', 1999, 1990, '\"All Star\" is a song by the American rock band Smash Mouth. It was released on May 4, 1999, as the second single from their album Astro Lounge, and it is one of the group\'s most successful songs, peaking at No. 4 on the US Billboard Hot 100', 'allstar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `profileName` varchar(50) NOT NULL,
  `profileImg` varchar(90) NOT NULL,
  `isKid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `username`, `profileName`, `profileImg`, `isKid`) VALUES
(1, 'admin', 'Dad', 'adults.jpg', 0),
(2, 'test2', 'test2', '', 2),
(3, 'admin', 'Kids', 'kids.jpg', 1),
(4, 'admin', 'Mom', 'adult2.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
CREATE TABLE IF NOT EXISTS `shows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `year` int(11) NOT NULL,
  `decade` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(250) NOT NULL,
  `isKids` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `name`, `year`, `decade`, `description`, `image`, `isKids`) VALUES
(1, 'Adventures of Superman', 1952, 1950, 'It\'s a bird! It\'s a plane! It\'s a syndicated TV adaptation of the beloved DC Comics superhero! You know the drill: When he isn\'t fighting for truth, justice and the American way, the man in tights dons a suit and glasses for his secret identity as Daily Planet newspaper reporter Clark Kent, who works alongside friends Lois Lane and Jimmy Olsen for gruff boss Perry White.', 'adventures', 1),
(2, 'Captain Kangaroo', 1955, 1950, 'Captain Kangaroo was an American children\'s television series that aired weekday mornings on the American television network CBS from 1955 to 1984, making it the longest-running nationally broadcast children\'s television program of its day.', 'captainkangaroo', 1),
(3, 'Father Knows Best', 1954, 1950, 'The popular radio show comes to life in this hit sitcom about a wise family man, Jim Anderson, his common-sense wife Margaret and their children Betty, Bud and Kathy. Whenever the kids need advice on anything at all, they can always turn to their father, because father knows best.', 'fatherknowsbest', 1),
(4, 'Gumby', 1955, 1950, 'Innovative \"Claymation\" adventures of Gumby and his horse Pokey.', 'gumby', 0),
(5, 'Gunsmoke', 1955, 1950, 'Marshal Matt Dillon is in charge of Dodge City, a town in the wild west where people often have no respect for the law. He deals on a daily basis with the problems associated with frontier life: cattle rustling, gunfights, brawls, standover tactics, and land fraud. Such situations call for sound judgement and brave actions: of which Marshal Dillon has plenty.', 'gunsmoke', 0),
(6, 'I Love Lucy', 1951, 1950, 'Cuban Bandleader Ricky Ricardo would be happy if his wife Lucy would just be a housewife. Instead she tries constantly to perform at the Tropicana where he works, and make life comically frantic in the apartment building they share with landlords Fred and Ethel Mertz. The first major show to be put on film rather than kinescope.', 'ilovelucy', 0),
(7, 'Lassie', 1954, 1950, 'The ongoing saga of the Martin family and their beloved collie, Lassie.', 'lassie', 1),
(11, 'Leave It To Beaver', 1957, 1950, 'The Cleavers are the 1950\'s \'All-American Family\' in this \'feel-good\' family sitcom. Parents Ward and June, and older brother Wally, try to keep Theodore (\'the Beaver\') out of trouble. However, Beaver continues to end up in one kind of jam or another. Unlike real life, these situations are always easily resolved to the satisfaction of all involved and the Beaver gets off with a few stern moralistic words of parental advice.', 'leaveittobeaver', 0),
(12, 'The Mickey Mouse Club', 1955, 1950, 'Mickey Mouse is the host of this variety show with a club attended by a variety of kids being the Mouseketeers. The usual content includes in-studio comedy and musical acts by those kids, classic as well as original cartoons and dramatic serials like \"Spin and Marty\" and \"The Hardy Boys.\"', 'mickeymouseclub', 1),
(13, 'The Adventures of Rin Tin Tin ', 1954, 1950, 'Rusty was orphaned in an Indian raid. He and his dog Rin Tin Tin were adopted by the troops at Fort Apache in Arizona, and helped establish law and order in and around Mesa Grande.', 'rintintin', 1),
(14, 'The Bullwinkle Show', 1959, 1950, 'The Bullwinkle show continuing story involved Rocky and Bullwinkle in conflict with spies Boris and Natasha.', 'rockyandbullwinkle', 1),
(15, 'The Honeymooners', 1955, 1950, 'Ralph Kramden is a New York bus driver who dreams of a better life. With his eccentric good friend, Ed Norton the sewer worker, he constantly tries crackpot schemes to strike it rich. All the while, his exasperated wife, Alice, is always there to bring him down to earth or to pick him up if he beats her to it. ', 'thehoneymooners', 0),
(16, 'The Twighlight Zone', 1959, 1950, 'The Twilight Zone is a place that exists at any moment of time, of space or of mind....but always when you least expect it. When you find yourself in this realm of unlimited possibility, be careful what you say or do. The right decisions may help you find your way back out....sometimes with greater happiness and wealth.', 'thetwighlightzone', 0),
(17, 'The Woody Woodpecker Show', 1957, 1950, 'A TV show featuring funny old and new shorts starred by Woody Woodpecker and his friends like Andy Panda, Chilly Willy, inspector Willighby and the Beary family in addition to live cut scenes of Walter Lantz talking about the wonders of the world and advances in the cartoon animation techniques.', 'woodywoodpecker', 1),
(18, 'Zorro', 1957, 1950, 'The only son of Don Alejandro returns to 1820s California to fight the corrupt local military. He plays the foppish dandy by day and the masked swordsman Zorro who slashes \"Z\"s everywhere by night. His horses (black and white) are Tornado and Phantom.', 'zorro', 0),
(19, 'The Andy Griffith Show', 1960, 1960, 'Widower Sheriff Andy Taylor, and his son Opie, live with Andy\'s Aunt Bee in Mayberry, North Carolina. With virtually no crimes to solve, most of Andy\'s time is spent philosophizing and calming down his cousin Deputy Barney Fife.', 'andygriffith', 0),
(20, 'Batman', 1966, 1960, 'Eccentric Gotham City tycoon Bruce Wayne dons tights to fight crime as Batman, aided by pal Dick Ward as equally Spandex-clad Robin, in this \'60s camp classic. Together, they fight evildoers such as the Penguin, the Joker, the Riddler, Egghead, Catwoman and Mr. Freeze.', 'batman', 0),
(21, 'Bewitched', 1964, 1960, 'Darrin (Dick York/Dick Sargent) and Samantha Stephens (Elizabeth Montgomery) are a young, bi-species married couple: he\'s a mortal human being, she\'s a witch, something which she does not divulge to him until after their wedding.', 'bewitched', 1),
(22, 'The Flintstones', 1960, 1960, 'This popular animated television cartoon featured two Stone Age families, the Flintstones and their neighbors, the Rubbles. Much of the humor was based on its comic portrayals of modern conveniences, reinterpreted using Stone Age \'technology.\' Most notably were their cars, complete with absence of floorboards to allow them to be \'foot-powered.\'', 'flintstones', 1),
(23, 'Get Smart ', 1965, 1960, 'Maxwell Smart, a highly intellectual but bumbling spy working for the CONTROL agency, battles the evil forces of rival spy agency KAOS with the help of his competent partner Agent 99.', 'getsmart', 0),
(24, 'Gilligan\'s Island', 1964, 1960, 'During what was supposed to be a three-hour tour, the S.S. Minnow is shipwrecked on an uncharted tropical island following a typhoon.', 'gilligansisland', 1),
(25, 'The Beverly Hillbillies', 1962, 1960, 'A nouveau riche hillbilly family moves to Beverly Hills and shakes up the privileged society with their hayseed ways.', 'hillbillies', 0),
(26, 'Mr. Dressup', 1962, 1960, 'An amiable man teaches preschool subjects with his puppet friends with games, songs and the infinite number of costumes inside his tickle trunk.', 'mrdressup', 1),
(27, 'Mister Rogers\' Neighborhood', 1968, 1960, 'Fred Rogers (known to millions as simply Mister Rogers) uses his gentle charm to communicate with his audience of children.', 'mrrodgers', 1),
(28, 'Sesame Street', 1969, 1960, 'On a special inner city street, the inhabitants, human and muppet, teach preschool subjects with comedy, cartoons, games, and songs.', 'sesamestreet', 1),
(29, 'Star Trek', 1966, 1960, 'In the 23rd Century, Captain James T. Kirk and the crew of the U.S.S. Enterprise explore the galaxy and defend the United Federation of Planets.', 'startrek', 0),
(30, 'The Jetsons', 1962, 1960, 'The Jetsons are a family living in the future. They have all manner of technological appliances to help around the house. George Jetson works at Spaceley\'s Sprockets, doing his best for his family.', 'thejetsons', 1),
(31, 'The Munsters', 1964, 1960, 'A family of friendly monsters have misadventures, never quite understanding why people react to them so strangely.', 'themunsters', 0),
(32, 'Thunderbirds', 1965, 1960, 'In the 21st century, the Tracy family operate a unique private mechanized emergency response service.', 'thunderbirds', 1),
(33, 'The Yogi Bear Show', 1961, 1960, 'Yogi Bear is an anthropomorphic funny animal who has appeared in numerous comic books, animated television shows and films.', 'yogi', 1),
(34, 'All in the Family', 1971, 1970, 'Archie Bunker, was a bigoted working-class family man who held his views of the world. His viewpoints clash with nearly everyone he comes into contact with especially his son-in-law', 'allinthefamily', 0),
(35, 'Bagpuss', 1974, 1970, 'Bagpuss and his friends are toys in a turn of the century shop for \'found things\'. When young Emily brings them a new object, the toys come to life to work out what the strange new thing could possibly be.', 'bagpuss', 1),
(36, 'Far Out Space Nuts', 1975, 1970, 'The misadventures of two maintenance workers who are accidentally launched into space.', 'faroutspacenuts', 1),
(37, 'Fat Albert', 1977, 1970, 'While attempting their Halloween mischief, the kids get the ultimate scare from the lady who lives in the spooky house by the graveyard. When some of the kids do not return from trick-or-treating, which Cosby kid will show the most courage?', 'fatalbert', 1),
(38, 'Good Times', 1974, 1970, 'Life in the Chicago projects is never easy, However, the Evans family never gives up trying to make the best of things. While Florida and James struggle to provide for their family, their sons J.J., an aspiring painter, Micheal, the undying political crusader, causing trouble while their sister, Thelma, stands between them as the voice of reason.', 'goodtimes', 1),
(39, 'Happy Days', 1974, 1970, 'Set in 1950s and 1960s Milwaukee, this series tells the story of the Cunningham family.', 'happydays', 1),
(40, 'Lancelot Link, Secret Chimp', 1970, 1970, 'In a world inhabited by chimps instead of humans, Lancelot Link, along with partner Mata Hairi, is one of the top agents of the Agency to Prevent Evil (APE), a secret organisation led by Commander Darwin that protects the world from wrongdoers.', 'lacelot', 1),
(41, 'Laverne and Shirley', 1976, 1970, 'Laverne DeFazio and Shirley Feeney were best friends and roommates coping with dates, neighbors, and each other During the late \'50s and early \'60s they worked as bottlecappers for Shotz Brewery in Milwaukee. They moved to Burbank, California in 1965 to start a new life when they got replaced at the brewery by an automated bottlecapper.', 'laverneandshirley', 1),
(42, 'Lidsville', 1971, 1970, 'Young Mark sneaks backstage at a magician\'s show and manages to fall into a HUGE top hat. The hat is apparently a gateway to another dimension where all the inhabitants are talking, ambulatory hats. The evil magician tries to capture Mark, while Mark and his hat friends try to find a way to get him back to the real world.', 'lidsville', 1),
(43, 'M*A*S*H', 1972, 1970, 'The 4077th Mobile Army Surgical Hospital is stuck in the middle of the Korean War. With little help from the circumstance in which they find themselves, they are forced to make their own fun. Fond of practical jokes and revenge, the doctors, nurses, administrators, and soldiers often find ways of making wartime life bearable. Nevertheless, the war goes on.', 'mash', 0),
(44, 'Paddington Bear', 1976, 1970, 'Paddington Bear is a child-like honey-bear from South America (Peru) with a passion for marmalade sandwiches, who is adopted by Mr. and Mrs. Brown when they find him sitting on his suitcase at Paddington Station.', 'paddingtonbear', 1),
(45, 'The Electric Company', 1971, 1970, '\"The Electric Company,\" was designed to teach basic reading concepts to its young viewers. Skits featuring the show\'s regulars, cartoons, vignettes, and regular features revolved around sound clusters and punctuation marks.', 'theelectriccompany', 1),
(46, 'The Jeffersons', 1975, 1970, '\"The Jeffersons\" was perhaps the most-successful spinoff series to \"All in the Family.\" George Jefferson was the black version of Archie Bunker in many respects, both were loud-mouthed, opinionated and set in their bigoted ways.', 'thejeffersons', 0),
(47, 'The Muppet Show', 1976, 1970, 'Kermit the Frog is the manager of a cabaret-style theatre house, which invariably has more drama behind the stage than on it.', 'themuppetshow', 1),
(48, 'Three\'s Company', 1976, 1970, 'Janet and Chrissy get Jack as a roommate for their Santa Monica apartment. Jack can cook (he\'s studying to be a chef) and, when called to do so, pretends he\'s gay to legitimize the arrangement.', 'threescompany', 0),
(49, 'Alf', 1986, 1980, 'A furry alien wiseguy comes to live with the Tanner family after crashing into their garage.', 'alf', 1),
(50, 'Care Bears', 1985, 1980, 'The Care Bears live in a faraway place up in the clouds called Care-a-Lot. They travel around the world on Missions in Caring, whilst evil villains such as Professor Coldheart and Lord No Heart, try to thwart their plans.', 'carebears', 1),
(51, 'Cheers', 1982, 1980, 'The lives of the disparate group of employees and patrons at a Boston watering hole called \"Cheers\" over eleven years is presented.', 'cheers', 0),
(52, 'Fragglerock', 1983, 1980, 'Doc and his dog Sprocket have a hole in their wall, behind which live little furry creatures known as Fraggles in a place called Fraggle Rock.', 'fragglerock', 1),
(53, 'Heman', 1983, 1980, 'In a distant and mystical land, wimpy Prince Adam leads the life of royalty. Unknown to all but a few close friends/allies, Prince Adam is actually a hero, the mighty He-Man. Together with his friends, He-Man battles the evil Skeletor and his minions for control of the world, and, more importantly, for the control, power and \"honor of Greyskull,\" the mysterious castle from which He-Man derives his powers.', 'heman', 1),
(54, 'Inspector Gadget', 1983, 1980, 'A bumbling bionic police inspector stumbles about on his cases, while his niece and dog secretly do the real investigative work.', 'inspectorgadget', 1),
(55, 'Knight Rider ', 1982, 1980, 'Michael Long is a crimefighter who is seriously wounded during his work. Nursed back to health by a mysterious benefactor (chairman of the Knight Industries), he regains consciousness a new man with a new face and a new name: Michael Knight. His mysterious benefactor (through the guise of associate Devon Miles) provides Michael with equipment and support so that he can continue his crime fighting work.', 'knightrider', 0),
(56, 'Macgyver', 1985, 1980, 'MacGyver is a top agent for the Phoenix Foundation, a progressive agency devoted to righting the wrongs of the world. Even more progressive is the genius MacGyver, who never carries a gun and always thwarts the enemy with vast scientific knowledge - sometimes with little more than a paper clip.', 'macgyver', 0),
(57, 'Miami Vice', 1984, 1980, 'Resplendent with authentic 1980\'s music, fashion and vibe, \"Miami Vice\" follows two undercover detectives and their extended team through the mean streets of Miami.', 'miamivice', 0),
(58, 'Night Court', 1984, 1980, 'Judge Harold T. Stone presides over \"Night Court\", a court which deals with petty crimes which can be dealt with in a dime-a-dozen manner.', 'nightcourt', 0),
(59, 'Pingu', 1986, 1980, 'Who is Pingu? He\'s a charming and cheeky young penguin who lives in the snow and ice of the South Pole. Often finding himself in tricky and comical situations, the mischievous penguin meets the challenges of life head on, as he grows into a cooler and wiser penguin along the way.', 'pingu', 1),
(60, 'Reading Rainbow', 1983, 1980, 'LeVar Burton introduces an appropriate subject for each episode to go with the featured children\'s book that is read in its entirety. This is followed by suggestions of other books for further reading.', 'readingrainbow', 1),
(61, 'The A Team', 1983, 1980, 'A team of ex-special forces soldiers on the lam from the military police (even though they didn\'t really commit the crime for which they\'d been imprisoned) leaves a trail of explosions in its wake.', 'theateam', 0),
(62, 'The Golden Girls', 1985, 1980, 'The Golden Girls is based on the lives and interactions of four older women who have all been divorced/widowed, and are now roommates. Dorothy\'s main goal during the series is to find a companion she can relate to while her mother Sophia adds her comical outlook and frequents \"Picture This\" stories.', 'thegoldengirls', 0),
(63, 'The Smurfs', 1981, 1980, 'The Smurfs are little blue creatures that live in mushroom houses in a forest inhabited mainly by their own kind. The smurfs average daily routine is attempting to avoid Gargomel, an evil man who wants to kill our little blue friends.', 'thesmurfs', 1),
(64, 'Animaniacs', 1993, 1990, 'Ensemble cast of off-the-wall Warner Brothers characters, appearing in a wide variety of roles - staring the Warner Siblings Wakko, Yakko, and Dot.', 'animaniacs', 1),
(65, 'Blues Clues', 1996, 1990, 'Blue is a dog who always wants to do something but Steve never knows what. Steve interacts with the viewers through the television and they play Blue\'s clues, to see what Blue wants to do.', 'bluesclues', 1),
(66, 'Dexter\'s Laboratory', 1995, 1990, 'Dexter, a boy genius, slips away to his secret laboratory to come up with scientific inventions. However, he struggles to keep his sister, Dee Dee, away from his inventions and experiments.', 'dexterslab', 1),
(67, 'Frasier', 1993, 1990, 'Dr. Frasier Crane, a successful Boston therapist, moves to Seattle to get a new start on life. He has a radio talk show, which he uses to relay his wit and wisdom to others, but at times he struggles with his own problems with his salt-of-the-earth father, his pretentious brother, and his friends and co-workers.', 'frasier', 0),
(68, 'The Fresh Prince of Belair', 1990, 1990, 'When Will (Will Smith), an inner-city teenager from Philly is sent by his mother to live with his relatives (the Banks) in Bel-Air, everybody is in for a surprise. It is funny how influence can go both ways.', 'freshprince', 0),
(69, 'Friends', 1994, 1994, 'Rachel Green, Ross Geller, Monica Geller, Joey Tribbiani, Chandler Bing and Phoebe Buffay are six 20 something year-olds, living off of one another in the heart of New York City. Over the course of ten years, this average group of buddies goes through massive mayhem, family trouble, past and future romances, fights, laughs, tears and surprises as they learn what it really means to be a friend.', 'friends', 0),
(70, 'Hey Arnold', 1996, 1990, 'he adventures of a daydreaming, jazz-loving, football-headed 9-year-old, who lives in a boarding house with his grandparents and some eccentric boarders; encounters life in the city with his best friend Gerald, a loofah-haired kid who is the keeper of the urban tales and coolest kid in class; and is tormented by Helga, who loves him secretly.', 'heyarnold', 1),
(71, 'Home Improvement', 1991, 1990, 'The daily trials and tribulations of Tim \"The Tool Man\" Taylor, a television show host raising three mischievous boys with help from his loyal co-host, loving wife, and eccentric neighbor.', 'homeimprovement', 0),
(72, 'The Powerpuff Girls', 1998, 1990, 'The straight-laced Prof. Utonium\'s attempt to create perfect little girls accidentally includes \"Chemical X\", resulting in take-charge red-head Blossom, blonde sweety-pie Bubbles and ready-to-fight brunette Buttercup. These flying, super-strong, karate-chopping girls with the occasional heat vision race into action to save the city of Townsville (and, we\'re told, the world) from all sorts of crimes and creatures.', 'powerpuffgirls', 1),
(73, 'Rocko\'s Modern Life', 1993, 1990, 'Rocko is a wallaby who has emmigrated to America from Australia. He lives in O Town and tries to get through life but, of course, comes across a multitude of dilemmas and misadventures he must get through.', 'rockosmodernlife', 1),
(74, 'Rugrats', 1990, 1990, 'Rugrats is a show about 4 babies, Tommy Pickles, Chuckie Finster, and Phil and Lil Deville. As we see their lives unravel, we get to hear them talk. On the sidelines are Tommy\'s mean cousin Angelica, their friend Susie Carmichael (same age as Angelica), and everybody\'s parents.', 'rugrats', 1),
(75, 'Seinfeld', 1990, 1990, 'Jerry Seinfeld stars in this television comedy series as himself, a comedian. The premise of this sitcom is Jerry and his friends going through everyday life, discussing various quirky situations, to which we can all relate (especially if we live in New York City). The eccentric personalities of the offbeat characters who make up Jerry\'s social circle contribute to the fun.', 'seinfeld', 0),
(76, 'Spongebob', 1999, 1990, 'The character-driven cartoon chronicles the nautical and often nonsensical adventures of SpongeBob, an incurably optimistic and earnest sea sponge, and his underwater friends. Dwelling a few fathoms beneath the tropical isle of Bikini Atoll in the sub-surface city of Bikini Bottom, SpongeBob lives in a two-story pineapple.', 'spongebob', 1),
(77, 'The Simpsons', 1990, 1990, 'This is an animated sitcom about the antics of a dysfunctional family. Homer is the oafish unhealthy beer loving father, Marge is the hardworking homemaker wife, Bart is the perpetual ten-year-old underachiever (and proud of it), Lisa is the unappreciated eight-year-old genius, and Maggie is the cute, pacifier loving silent infant.', 'thesimpsons', 0),
(78, 'The X Files', 1993, 1990, 'Two FBI agents, Fox Mulder and Dana Scully work in an unassigned detail of the bureau called the X-Files investigating cases dealing with unexplained paranormal phenomena. Mulder, a true believer, and Scully, a skeptic, perceive their cases from stand points of science and the paranormal.', 'thexfiles', 0),
(79, 'Twin Peaks', 1990, 1990, 'The body of a young girl (Laura Palmer) is washed up on a beach near the small Washington state town of Twin Peaks. FBI Special Agent Dale Cooper is called in to investigate her strange demise only to uncover a web of mystery that ultimately leads him deep into the heart of the surrounding woodland and his very own soul.', 'twinpeaks', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_avatar` varchar(60) NOT NULL,
  `user_permissions` int(11) NOT NULL,
  `user_admin` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_avatar`, `user_permissions`, `user_admin`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@admin.com', '2020-04-08 16:44:30', '::1', '', 5, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
