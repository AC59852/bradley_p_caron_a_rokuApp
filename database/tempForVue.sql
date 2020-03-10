-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 10, 2020 at 04:18 PM
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
  `description` varchar(800) NOT NULL,
  `image` varchar(150) NOT NULL,
  `iskids` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `year`, `description`, `image`, `iskids`) VALUES
(1, 'Sleeping Beauty', 1959, 'A witch curses a princess that she will die on her 16th birthday, but a fairy alters the curse so that the princess will go into a deep sleep and can only be awakened by a prince\'s magical kiss.', 'sleepingBeauty', 1),
(2, 'Lady and the Tramp', 1955, 'Lady, a female dog, belongs to Jim and Darling. She feels neglected when they get a baby in the house. When Aunt Sarah gets her Siamese twin cats too, Lady is blamed for all the havoc they wreak.', 'ladyTramp', 1),
(3, 'Peter Pan', 1953, 'Peter Pan and his friend Tinker Bell, a fairy, whisk away siblings Wendy, John and Michael to the island of Never Land, where Captain Hook seeks vengeance against Peter for cutting off his hand.', 'peterPan', 1),
(4, 'Alice in Wonderland', 1951, 'After seeing a hurrying rabbit in a waistcoat, Alice, a young and curious girl, follows him down his hole to Wonderland, and meets an array of anthropomorphic creatures who question logic and fantasy.', 'wonderland', 1),
(5, 'The Seventh Seal', 1957, 'A medieval knight challenges Death to a chess game to save himself and his friends.', 'seventhSeal', 0),
(6, 'Godzilla', 1954, 'When a seemingly indestructible fire-breathing monster is created as a result of the testing of American nuclear weapons, the government takes help from a reclusive scientist to kill the monster.', 'godzilla', 0),
(7, 'North by Northwest', 1959, 'An ad-man becomes involved in a bewildering cross-country chase involving enemy spies, the police and a beautiful woman.', 'northwest', 0),
(8, 'Singin\' in the Rain', 1952, 'When the transition is being made from silent films to `talkies\', everyone has trouble adapting. Don and Lina have been cast repeatedly as a romantic couple, but when their latest film is remade into a musical, only Don has the voice for the new singing part. After a lot of practise with a diction coach, Lina still sounds terrible, and Kathy, a bright young aspiring actress, is hired to record over her voice.', 'singinrain', 1),
(9, 'The Bridge on the River Kwai', 1957, 'Colonel Nicholson reluctantly agrees to camp commander Saito\'s suggestion of getting the World War II POWs to build a railway bridge. However, the project soon becomes an obsession for him.', 'riverkwai', 0),
(10, 'Ben-Hur', 1959, 'Ben-Hur is a 1959 American epic historical drama film directed by William Wyler, produced by Sam Zimbalist, and starring Charlton Heston as the title character. A remake of the 1925 silent film with a similar title, it was adapted from Lew Wallace\'s 1880 novel Ben-Hur: A Tale of the Christ.', 'benhur', 1),
(11, 'Cinderella', 1950, 'When Cinderella\'s dream of attending the Royal Ball and meeting the Grand Duke is hindered by her cruel stepmother, she gets some astounding help from her Fairy Godmother.', 'cinderella', 1),
(12, 'The Day the Earth Stood Still', 1951, 'An alien and his bodyguard land on earth to deliver a very important message to leaders around the world, which could determine the earth\'s survival.', 'stoodstill', 0),
(13, 'Creature from the Black Lagoon', 1954, 'A scientific expedition is carried out along the Amazon River. They discover a Gill-man, an amphibious-humanoid creature known to the locals as the Black-Lagoon. Will they be able to capture it?', 'blacklagoon', 0),
(14, 'The Ten Commandments', 1956, 'Moses escapes death at the hands of the Egyptian Pharaoh. Years later, when he learns of his true heritage, he sets out on his divine mission as the deliverer of the people.', 'commandments', 1),
(15, 'The War of the Worlds', 1953, 'Dr Clayton Forrester and his colleagues go fishing when Earth is unexpectedly invaded by Martians. He, along with a few others, tries to fight the aliens by finding their weakness.', 'waroftheworlds', 0),
(16, 'Jason and the Argonauts', 1963, 'Jason, a young man seeking the magical Golden Fleece, sets on a voyage with a few of Greece\'s best warriors. On their perilous journey, the heroes fight a hydra, a few harpies and a skeleton army.', 'argonauts', 1),
(17, 'One Hundred and One Dalmations', 1961, 'Cruella de Vil, an evil heiress, wants to make a fur coat for herself out of the skins of a hundred and one Dalmatian puppies. She makes an effort to kidnap them by hiring a group of thugs.', 'dalmations', 1),
(18, 'The Sword in the Stone', 1963, 'Frustrated of living in a Medieval mess, Merlin uses all his magical powers to change a skinny little boy into a legendary hero.', 'swordstone', 1),
(19, 'Doctor Dolittle', 1967, 'Dr. John Dolittle (Rex Harrison) lives in a small English village where he specializes in caring for and verbally communicating with animals. When Dr. Dolittle is unjustly sent to an insane asylum for freeing a lovesick seal from captivity, his animals and two closest human friends, Matthew Mugg (Anthony Newley) and Tommy Stubbins (William Dix), liberate him. Afterward, they join Emma Fairfax (Samantha Eggar) and set out by boat to find a famed and elusive creature: the Great Pink Sea Snail.', 'dolittle', 1),
(20, 'A Boy Named Charlie Brown', 1969, 'When Charlie Brown (Peter Robbins) enters the school spelling bee, the perpetually crabby Lucy (Pamelyn Ferdin) predicts his humiliation. But with the help of his best friend, Linus (Glenn Gilger), and faithful dog, Snoopy (Bill Melendez), Charlie Brown not only wins the spelling bee, he\'s chosen to attend the national spelling bee in New York City, leading to many misadventures in the big city. This is the first animated feature based on Charles Schulz\'s comic strip, \"Peanuts.\"', 'charliebrown', 1),
(21, 'Psycho', 1960, 'Marion disappears after stealing money from her employer. Her lover and sister try to find her and end up reaching the infamous Bates Motel, where they meet Norman Bates.', 'psycho', 0),
(22, '2001: A Space Odyssey', 1968, 'The Discovery One and its revolutionary super computer seek a mysterious monolith that first appeared at the dawn of man.', 'spaceodyssey', 0),
(23, 'Dr. Strangelove', 1964, 'An American Brigadier puts the world on the verge of a nuclear catastrophe, when he deploys a B-52 bomber on the Russians, without informing his superiors.', 'strangelove', 0),
(24, 'Lawrence of Arabia', 1963, 'Lawrence, a lieutenant in the British Army, is asked by Colonel Brighton to moderately assess Faisal, their ally. Lawrence is impressed with Faisal and seeks his help to plan an attack on the enemy.', 'lawrence', 0),
(25, 'The Good, the Bad and the Ugly', 1966, 'During the Civil War, two men, Blondie and Tuco, form an uncomfortable alliance while looking for treasure. They must also outwit Angel Eyes, an outlaw who wants to plunder the riches for himself.', 'goodbadugly', 0),
(26, 'Goldfinger', 1964, 'MI6 agent James Bond investigates a gold-smuggling ring run by businessman Auric Goldfinger. As he delves deeper into his activities, he uncovers a sinister plan to attack Fort Knox\'s gold reserves.', 'goldfinger', 0),
(27, 'Planet of the Apes', 1968, 'When astronaut Taylor\'s spaceship crash-lands on an unknown planet, to his horror, he realizes the planet is ruled by apes much advanced than humans. How will Taylor lead his team to safety?', 'planetofapes', 0),
(28, 'Mary Poppins', 1964, 'Mr Banks is looking for a nanny for his two mischievous children and comes across Mary Poppins, an angelic nanny. She not only brings a change in their lives but also spreads happiness.', 'marypoppins', 1),
(29, 'Sound of Music', 1965, 'Maria, an aspiring nun, is sent as a governess to take care of seven motherless children. Soon her jovial and loving nature tames their hearts and the children become fond of her.', 'soundofmusic', 1),
(30, 'Night of the Living Dead', 1968, 'The radiation from a fallen satellite causes the recently deceased to rise from the grave and seek the living to use as food.', 'livingdead', 0),
(31, 'Willy Wonka and the Chocolate Factory', 1971, 'A factory owner gives 5 children a chance to win a lifetime supply of sweets. Charlie, along with four odious children enter the factory. Disasters befall each of the children. Will Charlie survive?', 'willywonka', 1),
(32, 'Jaws', 1975, 'A police chief, a marine scientist and a fisherman spring into action after a white shark terrorises the inhabitants of Amity, a quiet island.', 'jaws', 0),
(33, 'Star Wars: A New Hope', 1977, 'After Princess Leia, the leader of the Rebel Alliance, is held hostage by Darth Vader, Luke and Han Solo must free her and destroy the powerful weapon created by the Galactic Empire.', 'starwars4', 1),
(34, 'A Clockwork Orange', 1971, 'Alex, a psychopathic delinquent, is imprisoned for murder and rape. In order to reduce his sentence, he volunteers for an experimental therapy conducted by the government, but it goes askew.', 'orange', 0),
(35, 'The Exorcist', 1973, 'An actress notices dangerous changes in the behavior and physical make-up of her 12-year-old daughter. Meanwhile, a young priest begins to doubt his faith while dealing with his mother\'s sickness.', 'exorcist', 0),
(36, 'One Flew Over the Cuckoo\'s Nest', 1975, 'In order to escape the prison labour, McMurphy, a prisoner, fakes insanity and is shifted to the special ward for the mentally unstable. In this ward, he must rise up against a cruel nurse, Ratched.', 'cuckoo', 0),
(37, 'Alien', 1979, 'The crew of a spacecraft, Nostromo, intercept a distress signal from a planet and set out to investigate it. However, to their horror, they are attacked by an alien which later invades their ship.', 'alien', 0),
(38, 'Rocky', 1976, 'Rocky Balboa, a small-time boxer, gets a chance to fight heavyweight champion Apollo Creed. In a bid to earn respect and glory, Rocky jumps into the ring, unaware of the tough task ahead of him.', 'rocky', 0),
(39, 'Superman', 1978, 'Scientist Jor-El rockets his infant son, Kal-El, to safety on Earth. Kal is raised as Clark Kent and develops unusual abilities and powers to become Superman who fights for truth and justice.', 'superman', 1),
(40, 'Halloween', 1978, 'On a cold Halloween night in 1963, six year old Michael Myers brutally murdered his 17-year-old sister, Judith. He was sentenced and locked away for 15 years. But on October 30, 1978, while being transferred for a court date, a 21-year-old Michael Myers steals a car and escapes Smith\'s Grove. He returns to his quiet hometown of Haddonfield, Illinois, where he looks for his next victims.', 'halloween', 0),
(41, 'The Muppet Movie', 1979, 'Dom DeLuise persuades Kermit the Frog to pursue a career in Hollywood. He is joined by other Muppets like Miss Piggy and Fozzie Bear. But Hermit must avoid the owner of a frog-leg restaurant.', 'muppets', 1),
(42, 'Monty Python and the Holy Grail', 1975, 'A comedic send-up of the grim circumstances of the Middle Ages as told through the story of King Arthur and framed by a modern-day murder investigation. When the mythical king of the Britons leads his knights on a quest for the Holy Grail, they face a wide array of horrors, including a persistent Black Knight, a three-headed giant, a cadre of shrubbery-challenged knights, the perilous Castle Anthrax, a killer rabbit, a house of virgins, and a handful of rude Frenchmen.', 'montypython', 0),
(43, 'The Many Adventures of Winnie the Pooh', 1977, 'Sebastian Cabot narrates the adventures of bumbling bear Winnie the Pooh as he battles a nest of vicious bees over a trove of honey, weathers a terrible wind storm and endures the foibles of the hyperactive tiger Tigger, all while singing and bumbling his way through the Hundred Acre Wood. Kanga, Piglet, Owl, Rabbit and Eeyore round out the menagerie in this trio of animated tales adapted from A.A. Milne\'s celebrated series of children\'s books.', 'winniepooh', 1),
(44, 'Snoopy Come Home', 1972, 'Charlie Brown\'s (Chad Webber) beloved dog Snoopy (Bill Melendez) receives a letter from his original owner, Lila (Johanna Baer), who has been sick in the hospital. With his bird friend Woodstock, Snoopy goes to visit Lila, making his way across the country despite seeing \"no dogs allowed\" signs everywhere. When Lila gets better, she asks Snoopy to live with her. After a farewell party, he sets out to live with Lila, leaving Charlie Brown depressed.', 'snoopy', 1),
(45, 'A Christmas Carol', 1971, 'A Christmas Carol is an American animated adaptation of Charles Dickens\'s 1843 novella. The film was broadcast on U.S. television by ABC on December 21, 1971, and released theatrically soon after. In 1972, it won the Academy Award for Best Animated Short Film.', 'christmascarolanimated', 1),
(46, 'E.T. the Extra-Terrestrial', 1982, 'An alien is left behind on Earth and is saved by young Elliot who decides to keep him hidden. While the task force hunts for it, Elliot and his siblings form an emotional bond with their new friend.', 'ET', 1),
(47, 'Back to the Future', 1985, 'Marty travels back in time using an eccentric scientist\'s time machine. However, he must make his high-school-aged parents fall in love in order to return to the present.', 'backtothefuture', 1),
(48, 'Star Wars: The Empire Strikes Back', 1980, 'Darth Vader is adamant about turning Luke Skywalker to the dark side. Master Yoda trains Luke to become a Jedi Knight while his friends try to fend off the Imperial fleet.', 'starwars5', 1),
(49, 'Star Wars: Return of the Jedi', 1983, 'Luke Skywalker attempts to bring his father back to the light side of the Force. At the same time, the rebels hatch a plan to destroy the second Death Star.', 'starwars6', 1),
(50, 'Blade Runner', 1982, 'Rick Deckard, an ex-policeman, becomes a special agent with a mission to exterminate a group of violent androids. As he starts getting deeper into his mission, he questions his own identity.', 'bladerunner', 0),
(51, 'Ghostbusters', 1984, 'When Peter Venkman, Raymond Stantz and Egon Spengler lose their jobs as parapsychologists, they start an establishment called Ghostbusters to fight the evil ghosts lurking in New York City.', 'ghostbusters', 1),
(52, 'Indiana Jones: Raiders of the Lost Ark', 1981, 'Indiana Jones sets out in search of a biblical artefact called the Ark of the Covenant, which is coveted by many people. In his quest, he must face opposition from the Nazis.', 'indianajones', 0),
(53, 'The Princess Bride', 1987, 'A fairy tale adventure about a beautiful young woman and her one true love. He must find her after a long separation and save her. They must battle the evils of the mythical kingdom of Florin to be reunited with each other. Based on the William Goldman novel \"The Princess Bride\" which earned its own loyal audience.', 'princessbride', 0),
(54, 'Raging Bull', 1980, 'A middleweight ascends through the ranks to achieve his first shot at a boxing title. But his personal life, laden with paranoia, jealousy and rage, scuttles his professional growth.', 'ragingbull', 0),
(55, 'Nightmare on Elm Street', 1984, 'A young girl realises that she has to stay awake at any cost to avoid the clawed killer who is butchering her friends one by one in their dreams.', 'elmstreet', 0),
(56, 'Full Metal Jacket', 1987, 'During the Vietnam War, under the ruthless command of Hartman, a few recruits face mental breakdowns. After a bizarre event, the soldiers are left to deal with the war\'s hellish mayhem.', 'fullmetaljacket', 0),
(57, 'The Thing', 1982, 'In remote Antarctica, a group of American research scientists are disturbed at their base camp by a helicopter shooting at a sled dog. When they take in the dog, it brutally attacks both human beings and canines in the camp and they discover that the beast can assume the shape of its victims. A resourceful helicopter pilot (Kurt Russell) and the camp doctor (Richard Dysart) lead the camp crew in a desperate, gory battle against the vicious creature before it picks them all off, one by one.', 'thething', 0),
(58, 'Scarface', 1983, 'Tony Montana and his close friend Manny, build a strong drug empire in Miami. However as his power begins to grow, so does his ego and his enemies, and his own paranoia begins to plague his empire.', 'scarface', 0),
(59, 'The Little Mermaid', 1989, 'Ursula, the sea witch, makes a devious deal with Princess Ariel allowing her to meet Eric, the human prince she loves. Unaware of her true intentions, Ariel lands herself in trouble.', 'littlemermaid', 1),
(60, 'The Breakfast Club', 1985, 'Five high school students from different walks of life endure a Saturday detention under a power-hungry principal (Paul Gleason). The disparate group includes rebel John (Judd Nelson), princess Claire (Molly Ringwald), outcast Allison (Ally Sheedy), brainy Brian (Anthony Michael Hall) and Andrew (Emilio Estevez), the jock. Each has a chance to tell his or her story, making the others see them a little differently -- and when the day ends, they question whether school will ever be the same.', 'breakfastclub', 0),
(61, 'Home Alone', 1990, 'Eight-year-old Kevin is accidentally left behind when his family leaves for France. At first, he is happy to be in charge, but when thieves try to break into his home, he tries to put up a fight.', 'homealone', 1),
(62, 'Matilda', 1996, 'Matilda shares a home with her parents and brother, who do not appreciate her. When her principal tortures her and a kind-hearted teacher, she uses her telekinetic powers to settle scores.', 'matilda', 1),
(63, 'Hook', 1991, 'When Peter Pan\'s children are abducted by Captain Hook, he is forced to return to Neverland. With some help from Tinkerbell and the Lost Boys, he must battle against his old foe to save his kids.', 'hook', 1),
(64, 'The Lion King', 1994, 'As a cub, Simba is forced to leave the Pride Lands after his father Mufasa is murdered by his wicked uncle, Scar. Years later, he returns as a young lion to reclaim his throne.', 'lionking', 1),
(65, 'Beauty and the Beast', 1991, 'Belle, a beautiful young woman, agrees to live with the Beast in exchange for the return of her abducted father. Soon, Belle discovers that her hideous captor is actually an enchanted prince.', 'beautybeast', 1),
(66, 'Casper', 1995, 'Carrigan Crittenden hires paranormal expert Dr James Harvey to exorcise the ghosts from her mansion. The situation changes when Harvey\'s daughter befriends Casper, a friendly ghost.', 'casper', 1),
(67, 'Aladdin', 1992, 'Aladdin, a common thief, falls in love with Princess Jasmine, but cannot marry her as he is not a prince. Jafar, a royal vizier with a hidden agenda, enlists Aladdin\'s help to retrieve a magical lamp.', 'aladdin', 1),
(68, 'Titanic', 1992, 'Seventeen-year-old Rose hails from an aristocratic family and is set to be married. When she boards the Titanic, she meets Jack Dawson, an artist, and falls in love with him.', 'titanic', 0),
(69, 'Silence of the Lambs', 1991, 'Clarice Starling, an FBI agent, seeks help from Hannibal Lecter, a psychopathic serial killer and former psychiatrist, in order to apprehend another serial killer who has been claiming female victims.', 'silencelambs', 0),
(70, 'Pulp Fiction', 1994, 'In the realm of underworld, a series of incidents intertwines the lives of two Los Angeles mobsters, a gangster\'s wife, a boxer and two small-time criminals.', 'pulpfiction', 0),
(71, 'Jurassic Park', 1993, 'John Hammond, an entrepreneur, opens a wildlife park containing cloned dinosaurs. However, a breakdown of the island\'s security system causes the creatures to escape and bring about chaos.', 'jurassicpark', 0),
(72, 'The Matrix', 1999, 'Thomas Anderson, a computer programmer, is led to fight an underground war against powerful computers who have constructed his entire reality with a system called the Matrix.', 'matrix', 0),
(73, 'Schindler\'s List', 1993, 'Oskar Schindler, a German industrialist and member of the Nazi party, tries to save his Jewish employees after witnessing the persecution of Jews in Poland.', 'schindlerslist', 0),
(74, 'Scream', 1996, 'A year after Sidney\'s mom is murdered, more murders start to occur. She begins to suspect if these murders are related and tries to find the killer as everyone seems to be a suspect.', 'scream', 0),
(75, 'Edward Scissorhands', 1990, 'Edward, a synthetic man with scissor hands, is taken in by Peg, a kindly Avon lady, after the passing of his inventor. Things take a turn for the worse when he is blamed for a crime he did not commit.', 'scissorhands', 0);

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
(1, 'test', 'Adults', 'adults.jpg', 0),
(2, 'test2', 'test2', '', 2),
(3, 'test', 'Kids', 'kids.jpg', 1),
(4, 'test', 'Adults2', 'adults', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `isadmin` int(11) NOT NULL,
  `authenticated` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `avatar`, `isadmin`, `authenticated`) VALUES
(2, 'test', 'test', 'test', 'a_caron59852@fanshaweonline.ca', '', 1, 'true');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
