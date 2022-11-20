/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: fejleszto
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `fejleszto` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: hibaBejelentes
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `hibaBejelentes` (
  `cim` varchar(255) DEFAULT NULL,
  `ticketSorszam` int NOT NULL AUTO_INCREMENT,
  `prioritas` tinyint DEFAULT NULL,
  PRIMARY KEY (`ticketSorszam`)
) ENGINE = InnoDB AUTO_INCREMENT = 40 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: javitasok
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `javitasok` (
  `id` varchar(255) NOT NULL,
  `storyPoint` tinyint NOT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `datum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: jogosultsag
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `jogosultsag` (
  `pos` varchar(255) NOT NULL,
  `admin` bit(1) DEFAULT NULL,
  `sudoer` bit(1) DEFAULT NULL,
  `editor` bit(1) DEFAULT NULL,
  PRIMARY KEY (`pos`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: korabbi_javitasok
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `korabbi_javitasok` (
  `fejleszto_email` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: fejleszto
# ------------------------------------------------------------

INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Albert Owens', 'Albert_Owens@gmail.com', 'DevOps');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Alex Davis', 'Alex_Davis@gmail.com', 'backend');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Alison Stafford',
    'Alison_Stafford@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Amy Collins',
    'Amy_Collins@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Amy Williams',
    'Amy_Williams@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Andrea Williams',
    'Andrea_Williams@gmail.com',
    'tester'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Anita Dunlap', 'Anita_Dunlap@gmail.com', 'DevOps');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Anita Pace', 'Anita_Pace@gmail.com', 'tester');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Anna Brown', 'Anna_Brown@gmail.com', 'DevOps');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Anna Fischer',
    'Anna_Fischer@gmail.com',
    'frontend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Anthony Wood',
    'Anthony_Wood@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Antonio Hughes',
    'Antonio_Hughes@gmail.com',
    'tester'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Ashley Harris',
    'Ashley_Harris@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Ashley Valdez',
    'Ashley_Valdez@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Barbara Johnson',
    'Barbara_Johnson@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Brenda Fuentes',
    'Brenda_Fuentes@gmail.com',
    'frontend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Brenda Mcdonald',
    'Brenda_Mcdonald@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Calvin Davis',
    'Calvin_Davis@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Carlos Fox', 'Carlos_Fox@gmail.com', 'DevOps');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Carrie Pitts',
    'Carrie_Pitts@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Casey Gilbert',
    'Casey_Gilbert@gmail.com',
    'DevOps'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Charles Maxwell',
    'Charles_Maxwell@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Christopher Castro',
    'Christopher_Castro@gmail.com',
    'frontend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Clinton Caldwell',
    'Clinton_Caldwell@gmail.com',
    'tester'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Courtney Jackson',
    'Courtney_Jackson@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Dana Sullivan',
    'Dana_Sullivan@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Daniel Blair', 'Daniel_Blair@gmail.com', 'DevOps');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('David Gray', 'David_Gray@gmail.com', 'fullstack');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Derek Strong',
    'Derek_Strong@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Derrick Johnson',
    'Derrick_Johnson@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Diane Munoz',
    'Diane_Munoz@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Dwayne Williams',
    'Dwayne_Williams@gmail.com',
    'DevOps'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Emily Cox', 'Emily_Cox@gmail.com', 'DevOps');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Eric Berry', 'Eric_Berry@gmail.com', 'backend');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Heather Morales',
    'Heather_Morales@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Henry Buchanan',
    'Henry_Buchanan@gmail.com',
    'tester'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Jacqueline Cunningham',
    'Jacqueline_Cunningham@gmail.com',
    'frontend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Jade Alvarado',
    'Jade_Alvarado@gmail.com',
    'DevOps'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('James Baker', 'James_Baker@gmail.com', 'DevOps');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('James Dalton', 'James_Dalton@gmail.com', 'DevOps');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Jeffrey Griffin',
    'Jeffrey_Griffin@gmail.com',
    'tester'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Jennifer Williams',
    'Jennifer_Williams@gmail.com',
    'DevOps'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Jessica Yates',
    'Jessica_Yates@gmail.com',
    'frontend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Jillian Gaines',
    'Jillian_Gaines@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'John Williams',
    'John_Williams@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('John Wood', 'John_Wood@gmail.com', 'DevOps');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Jonathan Snyder',
    'Jonathan_Snyder@gmail.com',
    'tester'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Kaitlin Bell', 'Kaitlin_Bell@gmail.com', 'DevOps');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Karen James', 'Karen_James@gmail.com', 'DevOps');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Karen Watson',
    'Karen_Watson@gmail.com',
    'frontend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Katie Solomon',
    'Katie_Solomon@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Kayla Johnson',
    'Kayla_Johnson@gmail.com',
    'tester'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Kelly Miller',
    'Kelly_Miller@gmail.com',
    'frontend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Kelly Morse', 'Kelly_Morse@gmail.com', 'frontend');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Kenneth Walker',
    'Kenneth_Walker@gmail.com',
    'DevOps'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Kim Chapman', 'Kim_Chapman@gmail.com', 'tester');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Kristen Pham', 'Kristen_Pham@gmail.com', 'tester');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Larry King', 'Larry_King@gmail.com', 'tester');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Laura Stevens',
    'Laura_Stevens@gmail.com',
    'frontend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Loretta Patel',
    'Loretta_Patel@gmail.com',
    'frontend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Margaret Hill',
    'Margaret_Hill@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Margaret Jordan',
    'Margaret_Jordan@gmail.com',
    'tester'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Margaret Tran',
    'Margaret_Tran@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Mark White', 'Mark_White@gmail.com', 'tester');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Matthew Peterson',
    'Matthew_Peterson@gmail.com',
    'DevOps'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Mckenzie Cantu',
    'Mckenzie_Cantu@gmail.com',
    'DevOps'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Melissa Pena',
    'Melissa_Pena@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Michael Ramirez',
    'Michael_Ramirez@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Michele Martin',
    'Michele_Martin@gmail.com',
    'frontend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Michelle Jones',
    'Michelle_Jones@gmail.com',
    'tester'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Molly Gray', 'Molly_Gray@gmail.com', 'fullstack');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Natalie Newton',
    'Natalie_Newton@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Nicholas Blankenship',
    'Nicholas_Blankenship@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Nicole Cook', 'Nicole_Cook@gmail.com', 'backend');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Nicole Reid', 'Nicole_Reid@gmail.com', 'tester');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Pam Wang', 'Pam_Wang@gmail.com', 'backend');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Paul Hudson', 'Paul_Hudson@gmail.com', 'backend');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Paul Underwood',
    'Paul_Underwood@gmail.com',
    'frontend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Richard Brown',
    'Richard_Brown@gmail.com',
    'DevOps'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Robert Barnett',
    'Robert_Barnett@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Samantha Proctor',
    'Samantha_Proctor@gmail.com',
    'tester'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Samantha Smith',
    'Samantha_Smith@gmail.com',
    'frontend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Samuel Miller',
    'Samuel_Miller@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Sarah Fleming',
    'Sarah_Fleming@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Savannah Taylor',
    'Savannah_Taylor@gmail.com',
    'frontend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Scott Cook', 'Scott_Cook@gmail.com', 'backend');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Scott Shepard',
    'Scott_Shepard@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Spencer Mckinney',
    'Spencer_Mckinney@gmail.com',
    'DevOps'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Stephanie House',
    'Stephanie_House@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Thomas Wood', 'Thomas_Wood@gmail.com', 'backend');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Timothy Yang',
    'Timothy_Yang@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Tonya Baldwin',
    'Tonya_Baldwin@gmail.com',
    'frontend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Tyler Rojas', 'Tyler_Rojas@gmail.com', 'tester');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Victoria Adams',
    'Victoria_Adams@gmail.com',
    'frontend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Vincent Gonzalez',
    'Vincent_Gonzalez@gmail.com',
    'DevOps'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Wendy Ford', 'Wendy_Ford@gmail.com', 'frontend');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('Wendy Hill', 'Wendy_Hill@gmail.com', 'DevOps');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'William Allen',
    'William_Allen@gmail.com',
    'fullstack'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'William Figueroa',
    'William_Figueroa@gmail.com',
    'DevOps'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'William Rojas',
    'William_Rojas@gmail.com',
    'DevOps'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: hibaBejelentes
# ------------------------------------------------------------

INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Fight trade ability kind cultural give rate.',
    1,
    1
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Standard teacher unit give that concern.', 2, 2);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Agent consumer step simple law how.', 3, 0);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Will ok our.', 4, 3);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Consumer evidence interview individual feeling long.',
    5,
    1
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Reveal themselves happen.', 6, 1);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Budget reason top.', 7, 2);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Sit power world director sport.', 8, 9);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('State best however.', 9, 10);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Crime employee wife ahead enter.', 10, 4);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Information hard government whatever likely edge.',
    11,
    0
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Help eye store year on.', 12, 0);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Religious you son begin democratic stuff.', 13, 3);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Nature form guy individual.', 14, 0);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Focus scientist very join international operation and least.',
    15,
    1
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Agree parent size staff according.', 16, 1);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Bag role trade news.', 17, 5);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Whether what as skin.', 18, 9);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Tend sit knowledge ten box somebody especially.',
    19,
    5
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Task member hard front third born information of.',
    20,
    6
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Magazine hotel impact.', 21, 2);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Build wind there product begin knowledge yes.',
    22,
    8
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Use yard Republican five rate those.', 23, 7);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Action want our forward current.', 24, 4);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Local trouble wall any energy very idea staff.',
    25,
    1
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Suddenly personal among then charge seat.', 26, 4);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Rule fly another see.', 27, 1);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Also buy reveal.', 28, 8);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Try movie red first together stay audience.',
    29,
    9
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Music represent determine find.', 30, 0);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Too finish main same any travel professional.',
    31,
    7
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Focus group upon in.', 32, 6);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Son up because direction arm source group.',
    33,
    3
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Step theory create ever film.', 34, 7);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('To friend also money.', 35, 10);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Bag single three field.', 36, 1);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Institution he environmental now fact.', 37, 8);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Station agreement mind exist.', 38, 7);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Begin position ask him.', 39, 6);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: javitasok
# ------------------------------------------------------------

INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'ARDAANLLCC',
    4,
    ' Random leiras ',
    '2020-01-23 13:25:27'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'AWEISUYBAB',
    1,
    ' Random leiras ',
    '2007-12-23 06:40:17'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'AYMWHSSYQC',
    1,
    ' Random leiras ',
    '2021-08-24 11:14:50'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'AZBBGJSIZQ',
    1,
    ' Random leiras ',
    '2007-03-19 20:15:50'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'BCDVZLSLWN',
    1,
    ' Random leiras ',
    '2001-10-18 17:14:43'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'BQNBBXDUEN',
    1,
    ' Random leiras ',
    '1993-12-12 05:18:55'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'BXQDGRBWLS',
    0,
    ' Random leiras ',
    '2013-11-07 20:25:07'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'CDMWPLWCBI',
    0,
    ' Random leiras ',
    '2013-01-02 06:33:53'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'CKMXZVPQCL',
    2,
    ' Random leiras ',
    '1996-10-22 23:04:05'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'CPJWCIQPXL',
    0,
    ' Random leiras ',
    '2003-11-01 16:46:33'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'CVBJJQXMUF',
    2,
    ' Random leiras ',
    '2015-05-21 09:48:23'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'DDQNCAARMI',
    2,
    ' Random leiras ',
    '1995-01-30 05:37:24'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'DUYOZDQCNS',
    3,
    ' Random leiras ',
    '2018-08-17 22:24:33'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'ECCFUJRBTV',
    5,
    ' Random leiras ',
    '1996-02-27 16:57:21'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'EHHYLBGRUO',
    0,
    ' Random leiras ',
    '2017-03-15 00:47:16'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'EHTFVTCAGL',
    4,
    ' Random leiras ',
    '2014-04-14 08:26:08'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'EJICHNHWGZ',
    3,
    ' Random leiras ',
    '2013-02-02 10:18:23'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'EVNAIXCOZF',
    5,
    ' Random leiras ',
    '2008-06-13 04:01:43'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'EXPUZBWVBR',
    0,
    ' Random leiras ',
    '2002-12-25 03:01:44'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'FAEEBHNXWV',
    0,
    ' Random leiras ',
    '2002-03-12 16:22:37'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'FAIBPUCMGN',
    3,
    ' Random leiras ',
    '2017-01-17 10:52:09'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'FALMTBBCUK',
    2,
    ' Random leiras ',
    '2014-02-14 21:01:31'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'FOGIQVMZBO',
    0,
    ' Random leiras ',
    '2001-11-21 14:28:00'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'FONURPBJEO',
    5,
    ' Random leiras ',
    '1993-11-15 02:48:43'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'GLIXWCXFHL',
    3,
    ' Random leiras ',
    '2020-10-26 22:40:01'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'GOFKDVKCES',
    5,
    ' Random leiras ',
    '2022-04-06 22:06:33'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'GUZWNQKHKN',
    3,
    ' Random leiras ',
    '2010-09-28 23:23:12'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'HDBPZFRSWK',
    1,
    ' Random leiras ',
    '2014-10-26 03:30:20'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'HTPFFVTEBY',
    4,
    ' Random leiras ',
    '2002-05-14 10:31:30'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'IBNTEBNQSK',
    4,
    ' Random leiras ',
    '2015-07-22 08:26:30'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'IFPUEVVEHS',
    0,
    ' Random leiras ',
    '2019-05-28 03:05:14'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'IIUOJHVXSF',
    4,
    ' Random leiras ',
    '2007-08-29 06:30:37'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'IULSVLMVOL',
    0,
    ' Random leiras ',
    '2018-03-11 05:16:18'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'IWDEVVRKAY',
    5,
    ' Random leiras ',
    '2003-10-17 20:47:35'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'JBWUEVJXAR',
    4,
    ' Random leiras ',
    '1993-07-04 18:23:28'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'JLGBSQQARQ',
    1,
    ' Random leiras ',
    '2012-05-07 09:38:59'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'JTXTNLOZUJ',
    2,
    ' Random leiras ',
    '1995-09-14 20:16:57'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'KEAEEIKQUL',
    3,
    ' Random leiras ',
    '2010-11-24 22:11:52'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'KNNJSUAAOB',
    0,
    ' Random leiras ',
    '2009-08-27 09:21:37'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'KTFAHYYOOQ',
    4,
    ' Random leiras ',
    '1997-06-21 10:44:32'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'MAJXYTYDPF',
    4,
    ' Random leiras ',
    '2015-07-07 07:16:46'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'MLJUFTTLZC',
    0,
    ' Random leiras ',
    '1998-03-09 22:00:00'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'MMRULGTDBZ',
    1,
    ' Random leiras ',
    '2012-07-06 20:52:44'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'MNPBQMLPBW',
    4,
    ' Random leiras ',
    '2021-08-29 06:31:01'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'MOFZQDHEUP',
    5,
    ' Random leiras ',
    '2015-09-01 21:16:00'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'NQMBXNCTJC',
    4,
    ' Random leiras ',
    '1997-09-23 09:02:17'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'NQQLBBUZJY',
    3,
    ' Random leiras ',
    '1997-03-07 20:03:20'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'NUUIPEDPUP',
    1,
    ' Random leiras ',
    '2015-09-30 01:20:39'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'NZDEQSUHWP',
    0,
    ' Random leiras ',
    '2009-08-22 23:33:52'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'NZFPLPSNWR',
    3,
    ' Random leiras ',
    '2015-11-18 14:44:22'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'OFSXSRJDIB',
    3,
    ' Random leiras ',
    '2002-05-13 07:00:36'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'OKLDNUZUQM',
    1,
    ' Random leiras ',
    '2013-09-14 13:39:39'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'OVNLKBUULG',
    0,
    ' Random leiras ',
    '2008-02-14 11:21:42'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'POWIONUZBU',
    1,
    ' Random leiras ',
    '2019-10-27 05:19:20'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'QDSERENKHZ',
    5,
    ' Random leiras ',
    '1998-09-05 20:27:42'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'QFTLMNWZGD',
    4,
    ' Random leiras ',
    '2008-09-20 12:44:00'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'QGLGXNFYEI',
    1,
    ' Random leiras ',
    '2017-02-16 14:48:12'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'QXVQLTAZTQ',
    0,
    ' Random leiras ',
    '2015-10-30 13:08:30'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'RDZZGAPIOA',
    4,
    ' Random leiras ',
    '2006-03-13 13:41:37'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'RITYCQGCHQ',
    4,
    ' Random leiras ',
    '2013-08-30 18:36:55'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'ROVRXOTDWF',
    1,
    ' Random leiras ',
    '2018-09-12 11:20:46'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'SBPNCQNGUS',
    0,
    ' Random leiras ',
    '2008-07-15 01:36:12'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'SKPOLFRPQH',
    5,
    ' Random leiras ',
    '1998-05-21 14:52:01'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'SLVLPANHAN',
    1,
    ' Random leiras ',
    '1999-09-08 05:39:05'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'SPTJRIEZHI',
    1,
    ' Random leiras ',
    '2018-06-05 02:22:41'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'TJMCWRYPER',
    5,
    ' Random leiras ',
    '2006-05-13 12:24:04'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'TQFBTDNGNP',
    1,
    ' Random leiras ',
    '2009-04-12 13:50:40'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'TRXAYRFCXA',
    4,
    ' Random leiras ',
    '2018-05-04 18:25:14'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'TXZKWUEUQS',
    2,
    ' Random leiras ',
    '2014-06-06 04:11:26'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'TZMKYHRNWS',
    5,
    ' Random leiras ',
    '1997-09-18 10:12:15'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'UAHZENQQHN',
    1,
    ' Random leiras ',
    '2019-07-19 03:23:25'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'UIHKNRDXWT',
    2,
    ' Random leiras ',
    '2010-08-01 22:58:12'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'UNHNMLFUTR',
    1,
    ' Random leiras ',
    '2019-10-14 17:18:35'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'USDAGFMIRW',
    2,
    ' Random leiras ',
    '2022-10-07 06:53:49'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'VHFCVFVWUL',
    2,
    ' Random leiras ',
    '2015-11-17 11:20:29'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'VHTOIJTKDI',
    0,
    ' Random leiras ',
    '2016-02-13 22:08:26'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'VOLMNIFNCY',
    4,
    ' Random leiras ',
    '2014-10-02 14:37:39'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'VXMXOOEVBJ',
    5,
    ' Random leiras ',
    '2017-09-18 03:31:34'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'WJXKDCVYSL',
    2,
    ' Random leiras ',
    '1993-07-08 19:28:45'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'WTKOEPPIQJ',
    5,
    ' Random leiras ',
    '1998-03-29 05:53:10'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'WUMNULTTEQ',
    2,
    ' Random leiras ',
    '1998-03-08 04:34:54'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'WWBBYSUYLZ',
    5,
    ' Random leiras ',
    '2021-03-28 03:07:11'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'XEWZLZGHAZ',
    3,
    ' Random leiras ',
    '2005-12-19 15:35:21'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'XFCKVRXXHA',
    3,
    ' Random leiras ',
    '2014-05-24 04:00:53'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'YEXNOQWDCJ',
    5,
    ' Random leiras ',
    '2015-06-23 17:55:56'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'YHWJBHEYRS',
    1,
    ' Random leiras ',
    '1993-02-21 00:14:18'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'YKPUXGHEBL',
    3,
    ' Random leiras ',
    '2008-02-02 11:56:12'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'YNUWJVSWWL',
    5,
    ' Random leiras ',
    '2022-02-08 17:34:52'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'YPRSDHFPCO',
    1,
    ' Random leiras ',
    '2019-12-26 09:32:36'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'YYSTDMLRAU',
    2,
    ' Random leiras ',
    '1999-05-19 14:13:30'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'ZBIFDQXVBL',
    2,
    ' Random leiras ',
    '2021-06-14 20:55:20'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'ZGSCXSFHES',
    4,
    ' Random leiras ',
    '1995-11-19 00:39:10'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'ZJEJXTRHWA',
    0,
    ' Random leiras ',
    '2012-10-03 16:48:04'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'ZLLAAIKDSE',
    3,
    ' Random leiras ',
    '2001-03-04 11:32:33'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'ZPTDQUWCMX',
    3,
    ' Random leiras ',
    '1995-05-24 23:54:52'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'ZSHHYORIPS',
    2,
    ' Random leiras ',
    '2017-05-08 15:59:53'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'ZURPXVRDPI',
    4,
    ' Random leiras ',
    '2013-10-08 09:56:34'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'ZVDPDSHVSA',
    5,
    ' Random leiras ',
    '1996-11-11 11:21:17'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'ZXJZSQHOWJ',
    3,
    ' Random leiras ',
    '2016-01-07 01:27:43'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`, `datum`)
VALUES
  (
    'ZXZTETGGRP',
    0,
    ' Random leiras ',
    '2015-06-02 07:12:55'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: jogosultsag
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: korabbi_javitasok
# ------------------------------------------------------------

INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Emily Cox@gmail.com', 'ARDAANLLCC');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Alison Stafford@gmail.com', 'AWEISUYBAB');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Kelly Miller@gmail.com', 'AYMWHSSYQC');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Anna Brown@gmail.com', 'AZBBGJSIZQ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Kayla Johnson@gmail.com', 'BCDVZLSLWN');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Amy Williams@gmail.com', 'BQNBBXDUEN');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Samantha Proctor@gmail.com', 'BXQDGRBWLS');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Antonio Hughes@gmail.com', 'CDMWPLWCBI');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Kayla Johnson@gmail.com', 'CKMXZVPQCL');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Melissa Pena@gmail.com', 'CPJWCIQPXL');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Ashley Harris@gmail.com', 'CVBJJQXMUF');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Kelly Morse@gmail.com', 'DDQNCAARMI');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Kim Chapman@gmail.com', 'DUYOZDQCNS');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Nicole Cook@gmail.com', 'ECCFUJRBTV');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Spencer Mckinney@gmail.com', 'EHHYLBGRUO');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Scott Cook@gmail.com', 'EHTFVTCAGL');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Molly Gray@gmail.com', 'EJICHNHWGZ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Charles Maxwell@gmail.com', 'EVNAIXCOZF');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Nicole Cook@gmail.com', 'EXPUZBWVBR');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Christopher Castro@gmail.com', 'FAEEBHNXWV');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Ashley Harris@gmail.com', 'FAIBPUCMGN');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Barbara Johnson@gmail.com', 'FALMTBBCUK');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Molly Gray@gmail.com', 'FOGIQVMZBO');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('William Allen@gmail.com', 'FONURPBJEO');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Anita Pace@gmail.com', 'GLIXWCXFHL');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Scott Cook@gmail.com', 'GOFKDVKCES');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Alison Stafford@gmail.com', 'GUZWNQKHKN');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Amy Collins@gmail.com', 'HDBPZFRSWK');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Alison Stafford@gmail.com', 'HTPFFVTEBY');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Margaret Tran@gmail.com', 'IBNTEBNQSK');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Anita Pace@gmail.com', 'IFPUEVVEHS');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Alex Davis@gmail.com', 'IIUOJHVXSF');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Thomas Wood@gmail.com', 'IULSVLMVOL');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Katie Solomon@gmail.com', 'IWDEVVRKAY');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Clinton Caldwell@gmail.com', 'JBWUEVJXAR');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Michael Ramirez@gmail.com', 'JLGBSQQARQ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Derrick Johnson@gmail.com', 'JTXTNLOZUJ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Clinton Caldwell@gmail.com', 'KEAEEIKQUL');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Kayla Johnson@gmail.com', 'KNNJSUAAOB');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('John Wood@gmail.com', 'KTFAHYYOOQ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Charles Maxwell@gmail.com', 'MAJXYTYDPF');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Scott Cook@gmail.com', 'MLJUFTTLZC');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Henry Buchanan@gmail.com', 'MMRULGTDBZ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Michael Ramirez@gmail.com', 'MNPBQMLPBW');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Jade Alvarado@gmail.com', 'MOFZQDHEUP');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Victoria Adams@gmail.com', 'NQMBXNCTJC');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Tonya Baldwin@gmail.com', 'NQQLBBUZJY');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Brenda Mcdonald@gmail.com', 'NUUIPEDPUP');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Charles Maxwell@gmail.com', 'NZDEQSUHWP');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Scott Shepard@gmail.com', 'NZFPLPSNWR');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('John Williams@gmail.com', 'OFSXSRJDIB');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Thomas Wood@gmail.com', 'OKLDNUZUQM');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Tyler Rojas@gmail.com', 'OVNLKBUULG');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Nicole Cook@gmail.com', 'POWIONUZBU');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Kristen Pham@gmail.com', 'QDSERENKHZ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Jacqueline Cunningham@gmail.com', 'QFTLMNWZGD');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Ashley Valdez@gmail.com', 'QGLGXNFYEI');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Matthew Peterson@gmail.com', 'QXVQLTAZTQ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Dana Sullivan@gmail.com', 'RDZZGAPIOA');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Courtney Jackson@gmail.com', 'RITYCQGCHQ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('James Baker@gmail.com', 'ROVRXOTDWF');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Karen Watson@gmail.com', 'SBPNCQNGUS');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Michelle Jones@gmail.com', 'SKPOLFRPQH');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Margaret Tran@gmail.com', 'SLVLPANHAN');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Kelly Miller@gmail.com', 'SPTJRIEZHI');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('James Dalton@gmail.com', 'TJMCWRYPER');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Jennifer Williams@gmail.com', 'TQFBTDNGNP');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Savannah Taylor@gmail.com', 'TRXAYRFCXA');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Barbara Johnson@gmail.com', 'TXZKWUEUQS');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Michael Ramirez@gmail.com', 'TZMKYHRNWS');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Jeffrey Griffin@gmail.com', 'UAHZENQQHN');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Laura Stevens@gmail.com', 'UIHKNRDXWT');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Thomas Wood@gmail.com', 'UNHNMLFUTR');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Brenda Fuentes@gmail.com', 'USDAGFMIRW');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('John Wood@gmail.com', 'VHFCVFVWUL');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Wendy Hill@gmail.com', 'VHTOIJTKDI');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Andrea Williams@gmail.com', 'VOLMNIFNCY');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Thomas Wood@gmail.com', 'VXMXOOEVBJ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Ashley Valdez@gmail.com', 'WJXKDCVYSL');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Casey Gilbert@gmail.com', 'WTKOEPPIQJ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Amy Williams@gmail.com', 'WUMNULTTEQ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Savannah Taylor@gmail.com', 'WWBBYSUYLZ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Anita Dunlap@gmail.com', 'XEWZLZGHAZ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Michele Martin@gmail.com', 'XFCKVRXXHA');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Tonya Baldwin@gmail.com', 'YEXNOQWDCJ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Charles Maxwell@gmail.com', 'YHWJBHEYRS');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Kayla Johnson@gmail.com', 'YKPUXGHEBL');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Natalie Newton@gmail.com', 'YNUWJVSWWL');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Timothy Yang@gmail.com', 'YPRSDHFPCO');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Calvin Davis@gmail.com', 'YYSTDMLRAU');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Margaret Jordan@gmail.com', 'ZBIFDQXVBL');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('David Gray@gmail.com', 'ZGSCXSFHES');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Calvin Davis@gmail.com', 'ZJEJXTRHWA');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Jade Alvarado@gmail.com', 'ZLLAAIKDSE');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Clinton Caldwell@gmail.com', 'ZPTDQUWCMX');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Alex Davis@gmail.com', 'ZSHHYORIPS');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Karen Watson@gmail.com', 'ZURPXVRDPI');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Dwayne Williams@gmail.com', 'ZVDPDSHVSA');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Larry King@gmail.com', 'ZXJZSQHOWJ');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Savannah Taylor@gmail.com', 'ZXZTETGGRP');

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
