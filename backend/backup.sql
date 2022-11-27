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
) ENGINE = InnoDB AUTO_INCREMENT = 66 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: javitasok
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `javitasok` (
  `id` int NOT NULL,
  `storyPoint` tinyint NOT NULL,
  `descript` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: jogosultsag
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `jogosultsag` (
  `pos` varchar(255) NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `sudoer` tinyint(1) DEFAULT NULL,
  `editor` tinyint(1) DEFAULT NULL,
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
  (
    'Eric Stanley',
    'Eric_Stanley@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  ('James Best', 'James_Best@gmail.com', 'tester');
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Joshua Watkins',
    'Joshua_Watkins@gmail.com',
    'tester'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Mary Johnson',
    'Mary_Johnson@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Michelle Foley',
    'Michelle_Foley@gmail.com',
    'DevOps'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Ronald Reilly',
    'Ronald_Reilly@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Sandra Black',
    'Sandra_Black@gmail.com',
    'backend'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Savannah Miller',
    'Savannah_Miller@gmail.com',
    'DevOps'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Shelley Perez',
    'Shelley_Perez@gmail.com',
    'tester'
  );
INSERT INTO
  `fejleszto` (`name`, `email`, `pos`)
VALUES
  (
    'Trevor David',
    'Trevor_David@gmail.com',
    'fullstack'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: hibaBejelentes
# ------------------------------------------------------------

INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Build national team through break can.', 1, 5);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Reach cut water street wife life participant.',
    2,
    5
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Debate economic instead whether lose.', 3, 7);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Long group politics move light yeah scientist.',
    4,
    3
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Research art home management.', 5, 7);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Old college many present ground sit value.',
    6,
    10
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Instead offer management present level question sit.',
    7,
    9
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Whole event relationship adult here safe.', 8, 9);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Mission current time see part federal political.',
    9,
    9
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Opportunity wonder tell parent.', 10, 3);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Network up lose response sense man thought big.',
    11,
    1
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Particular provide civil beautiful occur.', 12, 9);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Opportunity affect grow unit picture.', 13, 0);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Camera star program base window turn full.',
    14,
    6
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Since help fly sit team administration minute.',
    15,
    9
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Laugh doctor tax loss night.', 16, 9);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Laugh return debate design.', 17, 0);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Two else answer someone.', 18, 4);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Serious grow generation owner couple.', 19, 10);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Concern player create address.', 20, 10);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Close mention put middle including.', 21, 0);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Cost although network nearly film.', 22, 9);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Agency new not chair.', 23, 5);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Music most affect institution red generation understand.',
    24,
    9
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Figure subject spend rich past spring.', 25, 10);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('My attorney you control.', 26, 7);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Security president sit position.', 27, 9);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Center beat available pretty physical put relate.',
    28,
    1
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Lead so reality account we television direction.',
    29,
    0
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Might region back expect trip company.', 30, 1);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Prevent stuff yeah work.', 31, 1);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Know truth language each suddenly might.', 32, 3);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Goal president brother indeed rich card probably.',
    33,
    5
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Gun those bag enough arrive.', 34, 7);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Strong two discussion discuss happen whole mean.',
    35,
    4
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Question sit prove.', 36, 7);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Weight training third career four.', 37, 10);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Control spring offer some also let drive.', 38, 2);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Piece sound two throw prevent.', 39, 3);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Street age those eat enjoy so receive all.',
    40,
    3
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Computer still never.', 41, 0);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Glass information common put compare walk.',
    42,
    6
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Price financial former professional difficult state house.',
    43,
    3
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Born drive imagine deal under store attorney.',
    44,
    5
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Raise very third account.', 45, 8);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Product wear nice billion better weight.', 46, 2);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Understand decide some president daughter leg her.',
    47,
    10
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('West Republican blue well grow.', 48, 5);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Science local star care less base seat.', 49, 9);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Player value environment none.', 50, 3);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Rate official century two lawyer message.', 51, 4);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Purpose bill condition card role.', 52, 9);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Need play traditional billion.', 53, 9);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Wide order mouth leg plant name whole.', 54, 5);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Gun simple idea join success.', 55, 3);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Cut quality laugh oil age career.', 56, 2);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Study to interesting investment benefit hospital their.',
    57,
    0
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Test international future have.', 58, 3);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Continue body with.', 59, 8);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Level choice view.', 60, 2);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Across article popular apply who require.', 61, 7);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Culture nothing could seem.', 62, 5);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  (
    'Possible receive short buy individual leave lot.',
    63,
    1
  );
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('She decade kitchen game.', 64, 9);
INSERT INTO
  `hibaBejelentes` (`cim`, `ticketSorszam`, `prioritas`)
VALUES
  ('Movement new bank place use.', 65, 3);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: javitasok
# ------------------------------------------------------------

INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (1, 0, 'Spring thousand accept civil past.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (2, 4, 'Drop number else air push share seven.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (3, 2, 'War interest keep break financial out.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (4, 0, 'Term wish many city hundred three market.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (5, 2, 'Third two court pick machine.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (6, 1, 'Nearly whole wide party bag friend after.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (7, 1, 'Yourself each easy choice.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (8, 3, 'Who determine paper would among.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (9, 2, 'Water action side president store.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (10, 1, 'Expert political meeting main.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (11, 5, 'Since him eat herself you.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (12, 4, 'Get per listen source everybody.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    13,
    5,
    'Scientist include arm democratic either mention relate.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (14, 4, 'Address example travel cultural million.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (15, 2, 'Machine special store number.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    16,
    2,
    'Difficult old position media even season mouth seek.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    17,
    2,
    'Capital skin democratic event artist go claim.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    18,
    5,
    'Friend or avoid room question size everybody.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (19, 2, 'Wish safe quite court deep grow.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (20, 0, 'Something something government body.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (21, 1, 'Agent down maybe seek camera go.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    22,
    3,
    'Detail sure sort reflect happen interest really eat.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (23, 2, 'Road site than blood north point subject.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (24, 2, 'Must them improve notice.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (25, 1, 'Southern but office per however class.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    26,
    0,
    'Young scientist car policy difference summer.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    27,
    2,
    'Individual total in subject performance power soon.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (28, 4, 'Hear each possible deal meet effect.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (29, 1, 'Law bill law wrong modern artist artist.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (30, 4, 'Decide our seem.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    31,
    0,
    'Order visit send rate staff market reality morning.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (32, 4, 'Few hear medical with listen feel read.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    33,
    0,
    'Goal decision affect situation western art including.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (34, 1, 'Sort rest staff prove.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    35,
    0,
    'Campaign focus with continue player relate prove.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    36,
    4,
    'Firm positive air exist television store community while.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (37, 0, 'Listen cell teach purpose air.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    38,
    4,
    'Station table drug should industry green lead.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (39, 3, 'Page five north current watch than.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (40, 3, 'Consider industry media present goal.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (41, 1, 'Find source second moment reason.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    42,
    3,
    'Senior above oil number win center member.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (43, 3, 'Minute particularly edge sport.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (44, 1, 'Surface indicate strategy answer.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    45,
    3,
    'Finally step before almost eye woman agent watch.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (46, 1, 'College person defense none.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (47, 1, 'These movement task food war good plan.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (48, 3, 'Pattern grow hope.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (49, 1, 'Phone successful building.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (50, 5, 'Wish reduce front yes design data bad.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (51, 3, 'Brother civil and.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    52,
    5,
    'Make open painting hot even side every sister.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (53, 1, 'Surface source her thought continue.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    54,
    3,
    'It sign wife then degree message than audience.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (55, 2, 'American movement building public.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    56,
    3,
    'Lot like mouth kitchen without green sort.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (57, 4, 'Yet bed indeed should.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (58, 2, 'Smile during matter.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (59, 5, 'Customer price agreement money shake.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (
    60,
    0,
    'Election bed international throughout meet act concern across.'
  );
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (61, 5, 'Near short since bring hot.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (62, 3, 'Choose car allow level day.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (63, 0, 'Than white lose cover Mrs.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (64, 4, 'As rock provide lay red.');
INSERT INTO
  `javitasok` (`id`, `storyPoint`, `descript`)
VALUES
  (65, 0, 'Baby world have trade.');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: jogosultsag
# ------------------------------------------------------------

INSERT INTO
  `jogosultsag` (`pos`, `admin`, `sudoer`, `editor`)
VALUES
  ('backend', 0, 1, 0);
INSERT INTO
  `jogosultsag` (`pos`, `admin`, `sudoer`, `editor`)
VALUES
  ('DevOps', 1, 1, 0);
INSERT INTO
  `jogosultsag` (`pos`, `admin`, `sudoer`, `editor`)
VALUES
  ('fullstack', 0, 0, 0);
INSERT INTO
  `jogosultsag` (`pos`, `admin`, `sudoer`, `editor`)
VALUES
  ('tester', 1, 0, 1);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: korabbi_javitasok
# ------------------------------------------------------------

INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Joshua_Watkins@gmail.com', '1');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Sandra_Black@gmail.com', '10');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Joshua_Watkins@gmail.com', '11');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Sandra_Black@gmail.com', '12');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Ronald_Reilly@gmail.com', '13');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Shelley_Perez@gmail.com', '14');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Mary_Johnson@gmail.com', '15');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Joshua_Watkins@gmail.com', '16');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Sandra_Black@gmail.com', '17');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('James_Best@gmail.com', '18');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Mary_Johnson@gmail.com', '19');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Mary_Johnson@gmail.com', '2');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Shelley_Perez@gmail.com', '20');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Ronald_Reilly@gmail.com', '21');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Sandra_Black@gmail.com', '22');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Sandra_Black@gmail.com', '23');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Mary_Johnson@gmail.com', '24');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Ronald_Reilly@gmail.com', '25');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Savannah_Miller@gmail.com', '26');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Mary_Johnson@gmail.com', '27');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Savannah_Miller@gmail.com', '28');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Trevor_David@gmail.com', '29');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Mary_Johnson@gmail.com', '3');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Savannah_Miller@gmail.com', '30');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Mary_Johnson@gmail.com', '31');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Shelley_Perez@gmail.com', '32');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Ronald_Reilly@gmail.com', '33');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Eric_Stanley@gmail.com', '34');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Eric_Stanley@gmail.com', '35');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Trevor_David@gmail.com', '36');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Savannah_Miller@gmail.com', '37');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Joshua_Watkins@gmail.com', '38');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Savannah_Miller@gmail.com', '39');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Ronald_Reilly@gmail.com', '4');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Shelley_Perez@gmail.com', '40');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Mary_Johnson@gmail.com', '41');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Joshua_Watkins@gmail.com', '42');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Ronald_Reilly@gmail.com', '43');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Michelle_Foley@gmail.com', '44');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Michelle_Foley@gmail.com', '45');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Sandra_Black@gmail.com', '46');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Savannah_Miller@gmail.com', '47');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('James_Best@gmail.com', '48');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Eric_Stanley@gmail.com', '49');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Shelley_Perez@gmail.com', '5');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Joshua_Watkins@gmail.com', '50');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Shelley_Perez@gmail.com', '51');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Savannah_Miller@gmail.com', '52');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Sandra_Black@gmail.com', '53');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Joshua_Watkins@gmail.com', '54');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Michelle_Foley@gmail.com', '55');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Trevor_David@gmail.com', '56');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('James_Best@gmail.com', '57');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Trevor_David@gmail.com', '58');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Shelley_Perez@gmail.com', '59');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Shelley_Perez@gmail.com', '6');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('James_Best@gmail.com', '60');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Shelley_Perez@gmail.com', '61');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('James_Best@gmail.com', '62');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Sandra_Black@gmail.com', '63');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Sandra_Black@gmail.com', '64');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Shelley_Perez@gmail.com', '65');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Joshua_Watkins@gmail.com', '7');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Mary_Johnson@gmail.com', '8');
INSERT INTO
  `korabbi_javitasok` (`fejleszto_email`, `id`)
VALUES
  ('Joshua_Watkins@gmail.com', '9');

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
