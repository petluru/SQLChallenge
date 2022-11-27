-- Active: 1668316935025@@127.0.0.1@3306
use SQLChallenge1;
show tables;
/*Q1. Query all columns for all American cities in the CITY table with populations larger than 100000.*/
--The CountryCode for America is USA.
--Creating table and inserting records in it
drop table if exists CITY;
create table if not exists CITY (ID INT,
                   NAME VARCHAR(17),
                   COUNTRYCODE VARCHAR(3),
                   DISTRICT VARCHAR(20),
                   POPULATION BIGINT
                   );
/* Observed one error in Dataset at ID 924 the values of COUNTRYCODE &
   DISTRICT are swapped
    924	Villa	Nueva	GTM	101295
*/
insert into CITY (ID,NAME,COUNTRYCODE,DISTRICT,POPULATION)
VALUES (6,'Rotterdam','NLD','Zuid-Holland',593321),
       (19,"Zaanstad","NLD","Noord-Holland",135621),
       (214,"Porto Alegre","BRA","Rio Grande do Sul",1314032),
       (397,"Lauro de Freitas","BRA","Bahia",109236),
       (547,"Dobric","BGR","Varna",100399),
       (552,"Bujumbura","BDI","Bujumbura",300000),
       (554,"Santiago de Chile","CHL","Santiago",4703954),
       (626,"al-Minya","EGY","al-Minya",201360),
       (646,"Santa Ana","SLV","Santa Ana",139389),
       (762,"Bahir","Dar","ETH Amhara",96140),
       (796,"Baguio","PHL","CAR",252386),
       (896,"Malungon","PHL","Southern Mindanao",93232),
       (904,"Banjul","GMB","Banjul",42326),
       (924,"Villa","GTM","Nueva",101295),
       (990,"Waru","IDN","East Java",124300),
       (1155,"Latur","IND","Maharashtra",197408),
       (1222,"Tenali","IND","Andhra Pradesh",143726),
       (1235,"Tirunelveli","IND","Tamil Nadu",135825),
       (1256,"Alandur","IND","Tamil Nadu",125244),
       (1279,"Neyveli","IND","Tamil Nadu",118080),
       (1293,"Pallavaram","IND","Tamil Nadu",111866),
       (1350,"Dehri","IND","Bihar",94526),
       (1383,"Tabriz","IRN","East Azerbaidzan",1191043),
       (1385,"Karaj","IRN","Teheran",940968),
       (1508,"Bolzano","ITA","Trentino-Alto Adige",97232),
       (1520,"Cesena","ITA","Emilia-Romagna",89852),
       (1613,"Neyagawa","JPN","Osaka",257315),
       (1630,"Ageo",	"JPN","Saitama",209442),
       (1661,"Sayama","JPN","Saitama",162472),
       (1681,"Omuta","JPN","Fukuoka",142889),
       (1739,"Tokuyama","JPN","Yamaguchi",107078),
       (1793,"Novi Sad","YUG","Vojvodina",179626),
       (1857,"Kelowna","CAN","British Colombia",89442),
       (1895,"Harbin","CHN","Heilongjiang",4289800),
       (1900,"Changchun","CHN","Jilin",2812000),
       (1913,"Lanzhou","CHN","Gansu",1565800),
       (1947,"Changzhou","CHN","Jiangsu",530000),
       (2070,"Dezhou","CHN","Shandong",195485),
       (2081,"Heze",	"CHN","Shandong",189293),
       (2111,"Chenzhou","CHN","Hunan",169400),
       (2153,"Xianning","CHN","Hubei",136811),
       (2192,"Lhasa","CHN","Tibet",120000),
       (2193,"Lianyuan","CHN","Hunan",118858),
       (2227,"Xingcheng","CHN","Liaoning",102384),
       (2273,"Villavicencio","COL","Meta",273140),
       (2384,"Tong-yong","KOR","Kyongsangnam",131717),
       (2386,"Yongju","KOR","Kyongsangbuk",131097),
       (2387,"Chinhae","KOR","Kyongsangnam",125997),
       (2388,"Sangju","KOR","Kyongsangbuk",124116),
       (2406,"Herakleion","GRC","Crete",116178),
       (2440,"Monrovia","LBR","Montserrado",850000),
       (2462,"Lilongwe","MWI","Lilongwe",435964),
       (2505,"Taza",	"MAR","Taza-Al Hoceima-Taou",92700),
       (2555,"Xalapa","MEX","Veracruz",390058),
       (2602,"Ocosingo","MEX","Chiapas",171495),
       (2609,"Nogales","MEX","Sonora",159103),
       (2670,"San Pedro Cholula","MEX","Puebla",99734),
       (2689,"Palikir","FSM","Pohnpei",8600),
       (2706,"Tete","MOZ","Tete",101984),
       (2716,"Sittwe (Akyab)","MMR","Rakhine",137600),
       (2922,"Carolina","PRI","Carolina",186076),
       (2967,"Grudziadz","POL","Kujawsko-Pomorskie",102434),
       (2972,"Malabo","GNQ","Bioko",40000),
       (3073,"Essen","DEU","Nordrhein-Westfalen",599515),
       (3169,"Apia","WSM","Upolu",35900),
       (3198,"Dakar","SEN","Cap-Vert",785071),
       (3253,"Hama","SYR","Hama",343361),
       (3288,"Luchou","TWN","Taipei",160516),
       (3309,"Tanga","TZA","Tanga",137400),
       (3353,"Sousse","TUN","Sousse",145900),
       (3377,"Kahramanmaras","TUR","Kahramanmaras",245772),
       (3430,"Odesa","UKR","Odesa",1011000),
       (3581,"St Petersburg","RUS","Pietari",4694000),
       (3770,	"Hanoi","VNM","Hanoi",1410000),
       (3815,	"El Paso","USA","Texas",563662),
       (3878,'Scottsdale','USA','Arizona',202705),
       (3965,'Corona','USA','California',124966),
       (3973,'Concord','USA','California',121780),
       (3977,'Cedar Rapids','USA','Iowa',120758),
       (3982,'Coral Springs','USA','Florida',117549),
       (4054,'Fairfield','USA','California',92256),
       (4058,'Boulder','USA','Colorado',91238),
       (4061,'Fall River','USA','Massachusetts',90555);
--Answer 1
select * from CITY where COUNTRYCODE = 'USA' and POPULATION > 100000;
/*Q2.Query the NAME field for all American cities in the CITY table with populations larger than 120000*/
--The CountryCode for America is USA.
--Answer 2       
select NAME from CITY where COUNTRYCODE = 'USA' and POPULATION > 120000;
/*Q3.Query all columns (attributes) for every row in the CITY table.*/
--Answer 3
select * from CITY;
/*Q4.Query all columns for a city in CITY with the ID 1661*/
--Answer 4
select * from CITY where  ID = 1661;
/*Q5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is
JPN.*/
--Answer 5
select * from CITY where COUNTRYCODE = 'JPN';
/*Q6. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is
JPN.*/
--Answer 6
select NAME from CITY where COUNTRYCODE = 'JPN';
/*Q7. Query a list of CITY and STATE from the STATION table.
The STATION table is described as follows:*/
drop table if exists STATION;
create table if not exists STATION (ID INT,
                   CITY VARCHAR(21),
                   STATE VARCHAR(2),
                   LAT_N INT,
                   LONG_W INT
                   );
/*BUG in Data: For Record with Station ID 566 there is no value
 For Solving the Question I have inserted Null Value*/
INSERT INTO STATION (ID,CITY,STATE,LAT_N,LONG_W)
VALUES (794,"Kissee Mills","MO",139,73),
(824,"Loma Mar","CA",48,130),
(603,"Sandy Hook","CT",72,148),
(478,"Tipton","IN",33,97),
(619,"Arlington","CO",75,92),
(711,"Turner","AR",50,101),
(839,"Slidell","LA",85,151),
(411,"Negreet","LA",98,105),
(588,"Glencoe","KY",46,136),
(665,"Chelsea","IA",98,59),
(342,"Chignik Lagoon","AK",103,153),
(733,"Pelahatchie","MS",38,28),
(441,"Hanna City","IL",50,136),
(811,"Dorrance","KS",102,121),
(698,"Albany","CA",49,80),
(325,"Monument","KS",70,141),
(414,"Manchester","MD",73,37),
(113,"Prescott","IA",39,65),
(971,"Graettinger","IA",94,150),
(266,"Cahone","CO",116,127),
(617,"Sturgis","MS",36,126),
(495,"Upperco","MD",114,29),
(473,"Highwood","IL",27,150),
(959,"Waipahu","HI",106,33),
(438,"Bowdon","GA",88,78),
(571,"Tyler","MN",133,58),
(92,"Watkins","CO",83,96),
(399,"Republic","MI",75,130),
(426,"Millville","CA",32,145),
(844,"Aguanga","CA",79,65),
(321,"Bowdon Junction","GA",85,33),
(606,"Morenci","AZ",104,110),
(957,"South El Monte","CA",74,79),
(833,"Hoskinston","KY",65,65),
(843,"Talbert","KY",39,58),
(166,"Mccomb","MS",74,42),
(339,"Kirk","CO",141,136),
(909,"Carlock","IL",117,84),
(829,"Seward","IL",72,90),
(766,"Gustine","CA",111,140),
(392,"Delano","CA",126,91),
(555,"Westphalia","MI",32,143),
(33,"Saint Elmo","AL",27,50),
(728,"Roy","MT",41,51),
(656,"Pattonsburg","MO",138,32),
(394,"Centertown","MO",133,93),
(366,"Norvell","MI",125,93),
(96,"Raymondville","MO",70,148),
(867,"Beaver Island","MI",81,164),
(977,"Odin","IL",53,115),
(741,"Jemison","AL",62,25),
(436,"West Hills","CA",68,73),
(323,"Barrigada","GU",60,147),
(3,"Hesperia","CA",106,71),
(814,"Wickliffe","KY",80,46),
(375,"Culdesac","ID",47,78),
(467,"Roselawn","IN",87,51),
(604,"Forest Lakes","AZ",144,114),
(551,"San Simeon","CA",37,28),
(706,"Little Rock","AR",122,121),
(647,"Portland","AR",83,44),
(25,"New Century","KS",135,79),
(250,"Hampden","MA",76,26),
(124,"Pine City","MN",119,129),
(547,"Sandborn","IN",55,93),
(701,"Seaton","IL",128,78),
(197,"Milledgeville","IL",90,113),
(613,"East China","MI",108,42),
(630,"Prince Frederick","MD",104,57),
(767,"Pomona Park","FL",100,163),
(679,"Gretna","LA",75,142),
(896,"Yazoo City","MS",95,85),
(403,"Zionsville","IN",57,36),
(519,"Rio Oso","CA",29,105),
(482,"Jolon","CA",66,52),
(252,"Childs","MD",92,104),
(600,"Shreveport","LA",136,38),
(14,"Forest","MS",120,50),
(260,"Sizerock","KY",116,112),
(65,"Buffalo Creek","CO",47,148),
(753,"Algonac","MI",118,80),
(174,"Onaway","MI",108,55),
(263,"Irvington","IL",96,68),
(253,"Winsted","MN",68,72),
(557,"Woodbury","GA",102,93),
(897,"Samantha","AL",75,35),
(98,"Hackleburg","AL",119,120),
(423,"Soldier","KS",77,152),
(361,"Arrowsmith","IL",28,109),
(409,"Columbus","GA",67,46),
(312,"Bentonville","AR",36,78),
(854,"Kirkland","AZ",86,57),
(160,"Grosse Pointe","MI",102,91),
(735,"Wilton","ME",56,157),
(608,"Busby","MT",104,29),
(122,"Robertsdale","AL",97,85),
(93,"Dale","IN",69,34),
(67,"Reeds","MO",30,42),
(906,"Hayfork","CA",35,116),
(34,"Mcbrides","MI",74,35),
(921,"Lee Center","IL",95,77),
(401,"Tennessee","IL",55,155),
(536,"Henderson","IA",77,77),
(953,"Udall","KS",112,59),
(370,"Palm Desert","CA",106,145),
(614,"Benedict","KS",138,95),
(998,"Oakfield","ME",47,132),
(805,"Tamms","IL",59,75),
(235,"Haubstadt","IN",27,32),
(820,"Chokio","MN",81,134),
(650,"Clancy","MT",45,164),
(791,"Scotts Valley","CA",119,90),
(324,"Norwood","MN",144,34),
(442,"Elkton","MD",103,156),
(633,"Bertha","MN",39,105),
(109,"Bridgeport","MI",50,79),
(780,"Cherry","IL",68,46),
(492,"Regina","KY",131,90),
(965,"Griffin","GA",38,151),
(778,"Pine Bluff","AR",60,145),
(337,"Mascotte","FL",121,146),
(259,"Baldwin","MD",81,40),
(955,"Netawaka","KS",109,119),
(752,"East Irvine","CA",106,115),
(886,"Pony","MT",99,162),
(200,"Franklin","LA",82,31),
(384,"Amo","IN",103,159),
(518,"Vulcan","MO",108,91),
(188,"Prairie Du Rocher","IL",75,70),
(161,"Alanson","MI",90,72),
(486,"Delta","LA",136,49),
(406,"Carver","MN",45,122),
(940,"Paron","AR",59,104),
(237,"Winchester","ID",38,80),
(465,"Jerome","AZ",121,34),
(591,"Baton Rouge","LA",129,71),
(570,"Greenview","CA",80,57),
(429,"Lucerne Valley","CA",35,48),
(278,"Cromwell","MN",128,53),
(927,"Quinter","KS",59,25),
(59,"Whitewater","MO",82,71),
(218,"Round Pond","ME",127,124),
(291,"Clarkdale","AZ",58,73),
(668,"Rockton","IL",116,86),
(682,"Pheba","MS",90,127),
(775,"Eleele","HI",80,152),
(527,"Auburn","IA",95,137),
(108,"North Berwick","ME",70,27),
(190,"Oconee","GA",92,119),
(232,"Grandville","MI",38,70),
(405,"Susanville","CA",128,80),
(273,"Rosie","AR",72,161),
(813,"Verona","MO",109,152),
(444,"Richland","GA",105,113),
(899,"Fremont","MI",54,150),
(738,"Philipsburg","MT",95,72),
(215,"Kensett","IA",55,139),
(743,"De Tour Village","MI",25,25),
(377,"Koleen","IN",137,110),
(727,"Winslow","IL",113,38),
(363,"Reasnor","IA",41,162),
(117,"West Grove","IA",127,99),
(420,"Frankfort Heights","IL",71,30),
(888,"Bono","AR",133,150),
(784,"Biggsville","IL",85,138),
(413,"Linthicum Heights","MD",127,67),
(695,"Amazonia","MO",45,148),
(609,"Marysville","MI",85,132),
(471,"Cape Girardeau","MO",73,90),
(649,"Pengilly","MN",25,154),
(946,"Newton Center","MA",48,144),
(380,"Crane Lake","MN",72,43),
(383,"Newbury","MA",128,85),
(44,"Kismet","KS",99,156),
(433,"Canton","ME",98,105),
(283,"Clipper Mills","CA",113,56),
(474,"Grayslake","IL",61,33),
(233,"Pierre Part","LA",52,90),
(990,"Bison","KS",132,74),
(502,"Bellevue","KY",127,121),
(327,"Ridgway","CO",77,110),
(4,"South Britain","CT",65,33),
(228,"Rydal","GA",35,78),
(642,"Lynnville","KY",25,146),
(885,"Deerfield","MO",40,35),
(539,"Montreal","MO",129,127),
(202,"Hope","MN",140,43),
(593,"Aliso Viejo","CA",67,131),
(521,"Gowrie","IA",130,127),
(938,"Andersonville","GA",141,72),
(919,"Knob Lick","KY",135,33),
(528,"Crouseville","ME",36,81),
(331,"Cranks","KY",55,27),
(45,"Rives Junction","MI",94,116),
(944,"Ledyard","CT",134,143),
(949,"Norway","ME",83,88),
(88,"Eros","LA",95,58),
(878,"Rantoul","KS",31,118),
(35,"Richmond Hill","GA",39,113),
(17,"Fredericktown","MO",105,112),
(447,"Arkadelphia","AR",98,49),
(498,"Glen Carbon","IL",60,140),
(351,"Fredericksburg","IN",44,78),
(774,"Manchester","IA",129,123),
(116,"Mc Henry","MD",93,112),
(963,"Eriline","KY",93,65),
(643,"Wellington","KY",100,31),
(781,"Hoffman Estates","IL",129,53),
(364,"Howard Lake","MN",125,78),
(777,"Edgewater","MD",130,72),
(15,"Ducor","CA",140,102),
(910,"Salem","KY",86,113),
(612,"Sturdivant","MO",93,86),
(537,"Hagatna","GU",97,151),
(970,"East Haddam","CT",115,132),
(510,"Eastlake","MI",134,38),
(354,"Larkspur","CA",107,65),
(983,"Patriot","IN",82,46),
(799,"Corriganville","MD",141,153),
(581,"Carlos","MN",114,66),
(825,"Addison","MI",96,142),
(526,"Tarzana","CA",135,81),
(176,"Grapevine","AR",92,84),
(994,"Kanorado","KS",65,85),
(704,"Climax","MI",127,107),
(582,"Curdsville","KY",84,150),
(884,"Southport","CT",59,63),
(196,"Compton","IL",106,99),
(605,"Notasulga","AL",66,115),
(430,"Rumsey","KY",70,50),
(234,"Rogers","CT",140,33),
(700,"Pleasant Grove","AR",135,145),
(702,"Everton","MO",119,51),
(662,"Skanee","MI",70,129),
(171,"Springerville","AZ",124,150),
(615,"Libertytown","MD",144,111),
(26,"Church Creek","MD",39,91),
(692,"Yellow Pine","ID",83,150),
(336,"Dumont","MN",57,129),
(464,"Gales Ferry","CT",104,37),
(315,"Ravenna","KY",79,106),
(505,"Williams","AZ",73,111),
(842,"Decatur","MI",63,161),
(982,"Holbrook","AZ",134,103),
(868,"Sherrill","AR",79,152),
(554,"Brownsdale","MN",52,50),
(199,"Linden","MI",53,32),
(453,"Sedgwick","AR",68,75),
(451,"Fort Atkinson","IA",142,140),
(950,"Peachtree City","GA",80,155),
(326,"Rocheport","MO",114,64),
(189,"West Somerset","KY",73,45),
(638,"Clovis","CA",92,138),
(156,"Heyburn","ID",82,121),
(861,"Peabody","KS",75,152),
(722,"Marion Junction","AL",53,31),
(428,"Randall","KS",47,135),
(677,"Hayesville","IA",119,42),
(183,"Jordan","MN",68,35),
(322,"White Horse  Beach","MA",54,59),
(827,"Greenville","IL",50,153),
(242,"Macy","IN",138,152),
(621,"Flowood","MS",64,149),
(960,"Deep River","IA",75,38),
(180,"Napoleon","IN",32,160),
(382,"Leavenworth","IN",100,121),
(853,"Coldwater","KS",47,26),
(105,"Weldon","CA",134,118),
(357,"Yellville","AR",35,42),
(710,"Turners Falls","MA",31,125),
(520,"Delray Beach","FL",27,158),
(920,"Eustis","FL",42,39),
(684,"Mineral Point","MO",91,41),
(355,"Weldona","CO",32,58),
(389,"Midpines","CA",106,59),
(303,"Cascade","ID",31,157),
(501,"Tefft","IN",93,150),
(673,"Showell","MD",44,163),
(834,"Bayville","ME",106,143),
(255,"Brighton","IL",107,32),
(595,"Grimes","IA",42,74),
(709,"Nubieber","CA",132,49),
(100,"North Monmouth","ME",130,78),
(522,"Harmony","MN",124,126),
(16,"Beaufort","MO",71,85),
(231,"Arispe","IA",31,137),
(923,"Union Star","MO",79,132),
(891,"Humeston","IA",74,122),
(165,"Baileyville","IL",82,61),
(757,"Lakeville","CT",59,94),
(506,"Firebrick","KY",49,95),
(76,"Pico Rivera","CA",143,116),
(246,"Ludington","MI",30,120),
(583,"Channing","MI",117,56),
(666,"West Baden Springs","IN",30,96),
(373,"Pawnee","IL",85,81),
(504,"Melber","KY",37,55),
(901,"Manchester","MN",71,84),
(306,"Bainbridge","GA",62,56),
(821,"Sanders","AZ",130,96),
(586,"Ottertail","MN",100,44),
(95,"Dupo","IL",41,29),
(524,"Montrose","CA",136,119),
(716,"Schleswig","IA",119,51),
(849,"Harbor Springs","MI",141,148),
(611,"Richmond","IL",113,163),
(904,"Ermine","KY",119,62),
(740,"Siler","KY",137,117),
(439,"Reeves","LA",35,51),
(57,"Clifton","AZ",30,135),
(155,"Casco","MI",138,109),
(755,"Sturgis","MI",117,135),
(11,"Crescent City","FL",58,117),
(287,"Madisonville","LA",112,53),
(435,"Albion","IN",44,121),
(672,"Lismore","MN",58,103),
(572,"Athens","IN",75,120),
(890,"Eufaula","AL",140,103),
(975,"Panther Burn","MS",116,164),
(914,"Hanscom Afb","MA",129,136),
(119,"Wildie","KY",69,111),
(540,"Mosca","CO",89,141),
(678,"Bennington","IN",35,26),
(208,"Lottie","LA",109,82),
(512,"Garland","ME",108,134),
(352,"Clutier","IA",61,127),
(948,"Lupton","MI",139,53),
(503,"Northfield","MN",61,37),
(288,"Daleville","AL",121,136),
(560,"Osage City","KS",110,89),
(479,"Cuba","MO",63,87),
(826,"Norris","MT",47,37),
(651,"Clopton","AL",40,84),
(143,"Renville","MN",142,99),
(240,"Saint Paul","KS",66,163),
(102,"Kirksville","MO",140,143),
(69,"Kingsland","AR",78,85),
(181,"Fairview","KS",80,164),
(175,"Lydia","LA",41,39),
(80,"Bridgton","ME",93,140),
(596,"Brownstown","IL",48,63),
(301,"Monona","IA",144,81),
(987,"Hartland","MI",136,107),
(973,"Andover","CT",51,52),
(981,"Lakota","IA",56,92),
(440,"Grand Terrace","CA",37,126),
(110,"Mesick","MI",82,108),
(396,"Dryden","MI",69,47),
(637,"Beverly","KY",57,126),
(566,"Marine On Saint Croix","MN",126,NULL),
(801,"Pocahontas","IL",109,83),
(739,"Fort Meade","FL",43,35),
(130,"Hayneville","AL",109,157),
(345,"Yoder","IN",83,143),
(851,"Gatewood","MO",76,145),
(489,"Madden","MS",81,99),
(223,"Losantville","IN",112,106),
(538,"Cheswold","DE",31,59),
(329,"Caseville","MI",102,98),
(815,"Pomona","MO",52,50),
(789,"Hopkinsville","KY",27,47),
(269,"Jack","AL",49,85),
(969,"Dixie","GA",27,36),
(271,"Hillside","CO",99,68),
(667,"Hawarden","IA",90,46),
(350,"Cannonsburg","MI",91,120),
(49,"Osborne","KS",70,139),
(332,"Elm Grove","LA",45,29),
(172,"Atlantic Mine","MI",131,99),
(699,"North Branford","CT",37,95),
(417,"New Liberty","IA",139,94),
(99,"Woodstock Valley","CT",117,162),
(404,"Farmington","IL",91,72),
(23,"Honolulu","HI",110,139),
(1,"Pfeifer","KS",37,65),
(127,"Oshtemo","MI",100,135),
(657,"Gridley","KS",118,55),
(261,"Fulton","KY",111,51),
(182,"Winter Park","FL",133,32),
(328,"Monroe","LA",28,108),
(779,"Del Mar","CA",59,95),
(646,"Greens Fork","IN",133,135),
(756,"Garden City","AL",96,105),
(157,"Blue River","KY",116,161),
(400,"New Ross","IN",134,120),
(61,"Brilliant","AL",86,159),
(610,"Archie","MO",40,28),
(985,"Winslow","AR",126,126),
(207,"Olmitz","KS",29,38),
(941,"Allerton","IA",61,112),
(70,"Norphlet","AR",144,61),
(343,"Mechanic Falls","ME",71,71),
(531,"North Middletown","KY",42,141),
(996,"Keyes","CA",76,85),
(167,"Equality","AL",106,116),
(750,"Neon","KY",101,147),
(410,"Calhoun","KY",95,56),
(725,"Alpine","AR",116,114),
(988,"Mullan","ID",143,154),
(55,"Coalgood","KY",57,149),
(640,"Walnut","MS",40,76),
(302,"Saint Petersburg","FL",51,119),
(387,"Ojai","CA",68,119),
(476,"Julian","CA",130,101),
(907,"Veedersburg","IN",78,94),
(294,"Orange Park","FL",59,137),
(661,"Payson","AZ",126,154),
(745,"Windom","KS",114,126),
(631,"Urbana","IA",142,29),
(356,"Ludlow","CA",110,87),
(419,"Lindsay","MT",143,67),
(494,"Palatka","FL",94,52),
(625,"Bristol","ME",87,95),
(459,"Harmony","IN",135,70),
(636,"Ukiah","CA",86,89),
(106,"Yuma","AZ",111,153),
(204,"Alba","MI",91,103),
(344,"Zachary","LA",60,152),
(599,"Esmond","IL",75,90),
(515,"Waresboro","GA",144,153),
(497,"Hills","MN",137,134),
(162,"Montgomery City","MO",70,44),
(499,"Delavan","MN",32,64),
(362,"Magnolia","MS",112,31),
(545,"Byron","CA",136,120),
(712,"Dundee","IA",61,105),
(257,"Eureka Springs","AR",72,34),
(154,"Baker","CA",31,148),
(715,"Hyde Park","MA",65,156),
(493,"Groveoak","AL",53,87),
(836,"Kenner","LA",91,126),
(82,"Many","LA",36,94),
(644,"Seward","AK",120,35),
(391,"Berryton","KS",60,139),
(696,"Chilhowee","MO",79,49),
(905,"Newark","IL",72,129),
(81,"Cowgill","MO",136,27),
(31,"Novinger","MO",108,111),
(299,"Goodman","MS",101,117),
(84,"Cobalt","CT",87,26),
(754,"South Haven","MI",144,52),
(144,"Eskridge","KS",107,63),
(305,"Bennington","KS",93,83),
(226,"Decatur","MS",71,117),
(224,"West Hyannisport","MA",58,96),
(694,"Ozona","FL",144,120),
(623,"Jackson","AL",111,67),
(543,"Lapeer","MI",128,114),
(819,"Peaks Island","ME",59,110),
(243,"Hazlehurst","MS",49,108),
(457,"Chester","CA",69,123),
(871,"Clarkston","MI",93,80),
(470,"Healdsburg","CA",111,54),
(705,"Hotchkiss","CO",69,71),
(690,"Ravenden Springs","AR",67,108),
(62,"Monroe","AR",131,150),
(365,"Payson","IL",81,92),
(922,"Kell","IL",70,58),
(838,"Strasburg","CO",89,47),
(286,"Five Points","AL",45,122),
(968,"Norris City","IL",53,76),
(928,"Coaling","AL",144,52),
(746,"Orange City","IA",93,162),
(892,"Effingham","KS",132,97),
(193,"Corcoran","CA",81,139),
(225,"Garden City","IA",54,119),
(573,"Alton","MO",79,112),
(830,"Greenway","AR",119,35),
(241,"Woodsboro","MD",76,141),
(783,"Strawn","IL",29,51),
(675,"Dent","MN",70,136),
(270,"Shingletown","CA",61,102),
(378,"Clio","IA",46,115),
(104,"Yalaha","FL",120,119),
(460,"Leakesville","MS",107,72),
(804,"Fort Lupton","CO",38,93),
(53,"Shasta","CA",99,155),
(448,"Canton","MN",123,151),
(751,"Agency","MO",59,95),
(29,"South Carrollton","KY",57,116),
(718,"Taft","CA",107,146),
(213,"Calpine","CA",46,43),
(624,"Knobel","AR",95,62),
(908,"Bullhead City","AZ",94,30),
(845,"Tina","MO",131,28),
(685,"Anthony","KS",45,161),
(731,"Emmett","ID",57,31),
(311,"South Haven","MN",30,87),
(866,"Haverhill","IA",61,109),
(598,"Middleboro","MA",108,149),
(541,"Siloam","GA",105,92),
(889,"Lena","LA",78,129),
(654,"Lee","IL",27,51),
(841,"Freeport","MI",113,50),
(446,"Mid Florida","FL",110,50),
(249,"Acme","LA",73,67),
(376,"Gorham","KS",111,64),
(136,"Bass Harbor","ME",137,61),
(455,"Granger","IA",33,102);
--Answer 7
select CITY,STATE from STATION;
/*Q8. Query a list of CITY names from STATION for cities that have an even ID number. Print the results
in any order, but exclude duplicates from the answer*/
--Answer 8
select CITY from STATION where ID % 2 = 0;
/*Q9. Find the difference between the total number of CITY entries in the table and the number of
distinct CITY entries in the table.*/
--Answer 9
select  count(CITY) - count(distinct CITY) as 'Difference between Total and distinct cities' from STATION;
/*Q10. Query the two cities in STATION with the shortest and longest CITY names, as well as their
respective lengths (i.e.: number of characters in the name). If there is more than one smallest or
largest city, choose the one that comes first when ordered alphabetically.*/
--Answer 10
select * from (
         select  CITY, LENGTH(CITY) cityLength,"Shortest City" citytype from STATION order by cityLength ASC limit 1) as Minimum
       UNION
       select * from (
       select CITY, LENGTH(CITY) cityLength,"Longest City" citytype from STATION order by cityLength desc limit 1) as Maximum;

/*Q11. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result
cannot contain duplicates.*/
--Answer 11
select distinct CITY from STATION where lower(CITY) like 'a%' or lower(CITY) like 'e%' or lower(CITY) like 'i%' or
                               lower(CITY) like 'o%' or lower(CITY) like 'u%';
/*Q12. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot
contain duplicates.*/
--Answer 12
select distinct CITY from STATION where lower(CITY) like '%a' or lower(CITY) like '%e' or lower(CITY) like '%i' or
                               lower(CITY) like '%o' or lower(CITY) like '%u';
/*Q13. Query the list of CITY names from STATION that do not start with vowels. Your result cannot
contain duplicates.*/
--Answer 13
select distinct CITY from STATION where  not (lower(CITY) like 'a%' or lower(CITY) like 'e%' or  lower(CITY) like 'i%' or
                                lower(CITY) like 'o%' or  lower(CITY) like 'u%');
/*Q14. Query the list of CITY names from STATION that do not end with vowels. Your result cannot
contain duplicates.*/
--Answer 14
select distinct CITY from STATION where not (lower(CITY) like '%a' or lower(CITY) like '%e' or lower(CITY) like '%i' or
                               lower(CITY) like '%o' or lower(CITY) like '%u');
/*Q15. Query the list of CITY names from STATION that either do not start with vowels or do not end
with vowels. Your result cannot contain duplicates.*/
--Answer 15
select distinct CITY from STATION where not (lower(CITY) like 'a%' or lower(CITY) like 'e%' or 
                                             lower(CITY) like 'i%' or lower(CITY) like 'o%' or
                                             lower(CITY) like 'u%' or lower(CITY) like '%a' or
                                             lower(CITY) like '%e' or lower(CITY) like '%i' or
                                             lower(CITY) like '%o' or lower(CITY) like '%u');
/*Q16. Query the list of CITY names from STATION that do not start with vowels and do not end with
vowels. Your result cannot contain duplicates.*/
--Answer 16
select distinct CITY from STATION where not (lower(CITY) like 'a%' or lower(CITY) like 'e%' or 
                                             lower(CITY) like 'i%' or lower(CITY) like 'o%' or
                                             lower(CITY) like 'u%')
                                             and not(lower(CITY) like '%a' or
                                             lower(CITY) like '%e' or lower(CITY) like '%i' or
                                             lower(CITY) like '%o' or lower(CITY) like '%u');
/*Q17. Write an SQL query that reports the products that were only sold in the first quarter of 2019. That is,
between 2019-01-01 and 2019-03-31 inclusive.
Return the result table in any order.*/
--Table Creation Scripts
drop table if exists Product;
create table if not exists Product (product_id int,
                      product_name varchar(25),
                      unit_price int,
                      constraint pk Primary Key (product_id));
drop table if exists Sales;

create table if not exists Sales (seller_id int,
                    product_id int,
                    buyer_id int,
                    sale_date date,
                    quantity int,
                    price int,
                    constraint fk Foreign Key (product_id) REFERENCES Product(product_id));
--Insert
insert into Product (product_id,product_name,unit_price)
values (1,"S8",1000),(2,"G4",800),(3,"iPhone",1400);
insert into Sales (seller_id,product_id,buyer_id,sale_date,quantity,price)
values (1,1,1,"2019-01-21",2,2000),(1,2,2,"2019-02-17",1,800),(2,2,3,"2019-06-02",1,800),(3,3,4,"2019-05-13",2,2800);
--Answer 17
select S.product_id,P.product_name from Product P 
inner join Sales S on P.product_id = S.product_id
where S.sale_date between "2019-01-01" and "2019-03-31" and S.product_id not in
(select product_id from Sales where sale_date not between "2019-01-01" and "2019-03-31");
/*Q18. Write an SQL query to find all the authors that viewed at least one of their own articles.
Return the result table sorted by id in ascending order.
The query result format is in the following example.*/

--Table Creation Script
drop table if exists Views;
Create TABLE if not exists Views (article_id int,author_id int,viewer_id int,view_date date);
insert into Views (article_id,author_id,viewer_id,view_date)
values (1, 3, 5, '2019-08-01'),(1, 3, 6, '2019-08-02'),(2, 7, 7, '2019-08-01'),(2, 7, 6, '2019-08-02'),(4, 7, 1, '2019-07-22'),
(3, 4, 4, '2019-07-21'),(3, 4, 4, '2019-07-21');
--Answer 18
select distinct author_id from Views where author_id = viewer_id order by author_id;
/*Q19. Write an SQL query to find the percentage of immediate orders in the table, rounded to 2 decimal
places.*/
--Table Creation Script
drop table if exists Delivery;
create table if not exists Delivery (delivery_id int,customer_id int,order_date date,customer_pref_delivery_date date);
insert into Delivery (delivery_id,customer_id,order_date,customer_pref_delivery_date)
values (1, 1, '2019-08-01', '2019-08-02'),(2, 5, '2019-08-02', '2019-08-02'),(3, 1, '2019-08-11', '2019-08-11'),
(4, 3, '2019-08-24', '2019-08-26'),(5, 4, '2019-08-21', '2019-08-22'),(6, 2, '2019-08-11', '2019-08-13');
--Answer 19
with ImmediateOrders as (select 1 as 'Key',count(*) as 'OrdersCount' from Delivery where order_date = customer_pref_delivery_date),
TotalOrders as (select 1 as 'Key',count(*) as 'OrdersCount'  from Delivery)
select (I.OrdersCount / T.OrdersCount) * 100 as "immediate_percentage"
from TotalOrders T inner join ImmediateOrders I on I.Key=T.Key;
/*Q20.Write an SQL query to find the ctr of each Ad. Round ctr to two decimal points.
Return the result table ordered by ctr in descending order and by ad_id in ascending order in case of a
tie.*/
drop table if exists Ads;
create table if not exists Ads (ad_id int,
              user_id int,
              action enum('Clicked', 'Viewed', 'Ignored'),
              constraint pk PRIMARY KEY (ad_id,user_id)
             );
insert into Ads(ad_id,user_id,action)
values(1,1,'Clicked'),(2,2,'Clicked'),(3,3,'Viewed'),(5,5,'Ignored'),(1,7,'Ignored'),(2,7,'Viewed'),(3,5,'Clicked'),(1,4,'Viewed'),
      (2,11,'Viewed'),(1,2,'Clicked');
drop table if exists ClickedCount;
drop table if exists ViewedCount;
drop table if exists IgnoredCount;
drop table if exists FinalTable;
--Answer 20
with ClickedCount as (select ad_id,count(ad_id) as 'Count' from Ads where action = 'Clicked' group by ad_id),
     ViewedCount as (select ad_id,count(ad_id) as 'Count'  from Ads where action = 'viewed' group by ad_id),
     IgnoredCount as (select ad_id,count(ad_id) as 'Count' from Ads where action = 'Ignored' group by ad_id),
FinalTable as (
select distinct F.ad_id,COALESCE(C.Count,0) as 'ClickedCount',COALESCE(V.Count,0) as 'ViewedCount',COALESCE(I.Count,0) as 'IgnoredCount'
                       from Ads F left join ClickedCount C on C.ad_id=F.ad_id
                        left join ViewedCount  V on V.ad_id=F.ad_id
                        left join IgnoredCount I on I.ad_id=F.ad_id)
select ad_id,case 
             when ClickedCount > 0 and ViewedCount > 0 then ROUND(ClickedCount / (ClickedCount + ViewedCount) * 100,2)
             else 0
             end as 'ctr'
             from FinalTable;
 /*Q21. Write an SQL query to find the team size of each of the employees.
Return result table in any order.
The query result format is in the following example.*/
drop table if exists Employee;
create table if not exists Employee (employee_id int PRIMARY KEY,team_id int);
insert into Employee (employee_id,team_id)
values (1,8), (2,8), (3,8), (4,7),(5,9),(6,9);
drop table if exists TeamCount;
--Answer 21
with TeamCount as (select team_id,count(employee_id) "team_size" from Employee
group by team_id)
select E.employee_id,T.team_size from Employee E
left join  TeamCount T ON E.team_id = T.team_id; 
/*Q22.Write an SQL query to find the type of weather in each country for November 2019.
The type of weather is:
 ● Cold if the average weather_state is less than or equal 15,
 ● Hot if the average weather_state is greater than or equal to 25, and
 ● Warm otherwise.(
Return result table in any order.
*/
drop table if exists Countries;
create table if not exists Countries(country_id int PRIMARY KEY,country_name varchar(255));
drop table if exists Weather;
create table if not exists Weather(country_id int,weather_state int,day date,
constraint pk PRIMARY KEY (country_id,day));
insert into Countries (country_id,country_name)
values (2,"USA"),(3,"Australia"),(7,"Peru"),(5,"China"),(8,"Morocco"),(9,"Spain");
insert into Weather(country_id,weather_state,day)
values (2,15,"2019-11-01"),(2,12,"2019-10-28"),(2,12,"2019-10-27"),
       (3,-2,"2019-11-10"),(3,0,"2019-11-11"),(3,3,"2019-11-12"),
       (5,16,"2019-11-07"),(5,18,"2019-11-09"),(5,21,"2019-11-23"),
       (7,25,"2019-11-28"),(7,22,"2019-12-01"),(7,20,"2019-12-02"),
       (8,25,"2019-11-05"),(8,27,"2019-11-15"),(8,31,"2019-11-25"), 
       (9,7,"2019-10-23"),(9,3,"2019-12-23");
drop table if exists TemparatureTable;
--Answer 22
with TemparatureTable as (select country_id,round(avg(weather_state)) 'Temparature' from Weather where month(day) = 11
group by country_id)
select C.country_id,C.country_name,CASE
                        when T.Temparature >= 25 then 'Hot'
                        when T.Temparature <= 15 then 'Cold'
                        else 'Warm'
                        end as weather_type
                   FROM Countries C
inner join TemparatureTable T on C.country_id=T.country_id;

/*Q23. Write an SQL query to find the average selling price for each product. average_price should be
rounded to 2 decimal places.*/
drop table if exists Prices;
create table if not exists Prices (product_id int,
                     start_date date,
                     end_date date,
                     price int,
                     constraint pk PRIMARY KEY (product_id,start_date,end_date));
drop table if exists UnitsSold;

create table if not exists UnitsSold (product_id int,
                     start_date date,
                     purchase_date date,
                     units int);
insert into Prices (product_id,start_date,end_date,price)
values (1,'2019-02-17', '2019-02-28', 5),(1, '2019-03-01', '2019-03-22', 20),(2, '2019-02-01', '2019-02-20', 15),
       (2, '2019-02-21', '2019-03-31', 30);

insert into UnitsSold (product_id,purchase_date,units)
values (1, '2019-02-25', 100),(1, '2019-03-01',15),(2, '2019-02-10', 200),
       (2, '2019-03-22', 30);
drop table if exists UnitsDetails;
drop table if exists TotalProductPrice;
--Answer 23
with UnitsDetails as (select distinct product_id,
       sum(units) over(partition by product_id) as total_unit_price
from UnitsSold),
TotalProductPrice as (select P.product_id as "product_id",
       sum(P.price * U.units)  as "TotalPrice" 
       from Prices P
       left join UnitsSold U
       on P.product_id = U.product_id
       and month(U.purchase_date) = month(P.end_date) and year(U.purchase_date) = year(P.end_date)
       and day(U.purchase_date) <= day(P.end_date) and day(U.purchase_date) >= day(P.start_date)
       group by product_id)

select TP.product_id,round(TP.TotalPrice / UD.total_unit_price,2) average_price
from  TotalProductPrice TP inner join UnitsDetails UD on TP.product_id = UD.product_id;


/*Q24. Write an SQL query to report the first login date for each player.
Return the result table in any order*/
drop table if exists Activity;
create table if not exists Activity (player_id int,
                       device_id int,
                       event_date date,
                       games_played int,
                       constraint pk2 PRIMARY KEY (player_id,event_date));
insert into Activity (player_id,device_id,event_date,games_played)
values (1, 2, "2016-03-01", 5),(1, 2, "2016-05-02", 6),(2, 3, "2017-06-25", 1),(3, 1, "2016-03-02", 0),
       (3, 4 ,"2018-07-03", 5);
--Answer 24
with PlayerDetails as (select *,
       rank() over(partition by player_id order by event_date) as rank_val
from Activity where games_played > 0)
select player_id,event_date first_login from PlayerDetails
where rank_val = 1;

/*Q25. Write an SQL query to report the device that is first logged in for each player.
Return the result table in any order*/
drop table if exists Activity;
create table if not exists Activity (player_id int,
                       device_id int,
                       event_date date,
                       games_played int,
                       constraint pk2 PRIMARY KEY (player_id,event_date));
insert into Activity (player_id,device_id,event_date,games_played)
values (1, 2, "2016-03-01", 5),(1, 2, "2016-05-02", 6),(2, 3, "2017-06-25", 1),(3, 1, "2016-03-02", 0),
       (3, 4 ,"2018-07-03", 5);

--Answer 25
with PlayerDetails as (select *,
       rank() over(partition by player_id order by event_date) as rank_val
from Activity)
select player_id,device_id from PlayerDetails
where rank_val = 1;

/*Q26. Write an SQL query to get the names of products that have at least 100 units ordered in February 2020
and their amount.*/
drop table if exists Products;
create table if not exists Products (product_id int PRIMARY KEY,
                       product_name varchar(100),
                       product_category varchar(50));
create table if not exists Orders (product_id int,
                     order_date date,
                     unit int,
                     constraint fk2 FOREIGN KEY (product_id) REFERENCES Products(product_id));
insert into Products (product_id,product_name,product_category)
values (1,"Leetcode Solutions","Book"),(2,"Jewels of Stringology","Book"),(3,"HP","Laptop"),(4,"Lenovo","Laptop"),
       (5,"Leetcode Kit","T-shirt");
insert into Orders (product_id,order_date,unit)
values (1, "2020-02-05", 60),(1, "2020-02-10", 70),(2, "2020-01-18", 30),
       (2, "2020-02-11", 80),(3, "2020-02-17", 2),(3, "2020-02-24", 3),
       (4, "2020-03-01", 20),(4, "2020-03-04", 30),(4," 2020-03-04", 60),
       (5, "2020-02-25", 50),(5, "2020-02-27", 50),(5, "2020-03-01", 50);
drop table if exists ProductDetails;
--Answer 26
with ProductDetails as (select product_id,sum(unit) TotalUnits from Orders
where month(order_date) = 2 and year(order_date) = 2020
group by product_id)
select P.product_name,PD.TotalUnits unit from ProductDetails PD left join Products P
ON PD.product_id = P.product_id where PD.TotalUnits >= 100;


/*Q27. Write an SQL query to find the users who have valid emails.
A valid e-mail has a prefix name and a domain where:
● The prefix name is a string that may contain letters (upper or lower case), digits, underscore
'_', period '.', and/or dash '-'. The prefix name must start with a letter.
● The domain is '@leetcode.com'.
Return the result table in any order*/
drop table if exists Users;
create table if not exists Users (user_id int PRIMARY KEY,name varchar(155),mail varchar(155));
insert into Users (user_id,name,mail)
values (1, "Winston","winston@leetcode.com"),(2, "Jonathan", "jonathanisgreat"),(3, "Annabelle", "bella-@leetcode.com"),
       (4, "Sally", "sally.come@leetcode.com"),(5, "Marwan","quarz#2020@leetcode.com"),(6, "David","david69@gmail.com"),
       (7, "Shapiro",".shapo@leetcode.com");
--Answer 27
select user_id,name,mail from Users where mail REGEXP '@leetcode.com$' and mail REGEXP '^[a-z]|^[A-Z]' and mail REGEXP '[._-]+'
and mail REGEXP '^[^÷#%&()=!$*]+$';   

/*Q40. Write an SQL query to find the average selling price for each product. average_price should be
rounded to 2 decimal places.*/
drop table if exists Prices;
create table if not exists Prices (product_id int,
                     start_date date,
                     end_date date,
                     price int,
                     constraint pk PRIMARY KEY (product_id,start_date,end_date));
drop table if exists UnitsSold;

create table if not exists UnitsSold (product_id int,
                     start_date date,
                     purchase_date date,
                     units int);
insert into Prices (product_id,start_date,end_date,price)
values (1,'2019-02-17', '2019-02-28', 5),(1, '2019-03-01', '2019-03-22', 20),(2, '2019-02-01', '2019-02-20', 15),
       (2, '2019-02-21', '2019-03-31', 30);

insert into UnitsSold (product_id,purchase_date,units)
values (1, '2019-02-25', 100),(1, '2019-03-01',15),(2, '2019-02-10', 200),
       (2, '2019-03-22', 30);
drop table if exists UnitsDetails;
drop table if exists TotalProductPrice;
--Answer 40
with UnitsDetails as (select distinct product_id,
       sum(units) over(partition by product_id) as total_unit_price
from UnitsSold),
TotalProductPrice as (select P.product_id as "product_id",
       sum(P.price * U.units)  as "TotalPrice" 
       from Prices P
       left join UnitsSold U
       on P.product_id = U.product_id
       and month(U.purchase_date) = month(P.end_date) and year(U.purchase_date) = year(P.end_date)
       and day(U.purchase_date) <= day(P.end_date) and day(U.purchase_date) >= day(P.start_date)
       group by product_id)

select TP.product_id,round(TP.TotalPrice / UD.total_unit_price,2) average_price
from  TotalProductPrice TP inner join UnitsDetails UD on TP.product_id = UD.product_id;

/*Q42. Write an SQL query to report the difference between the number of apples and oranges sold each day.
Return the result table ordered by sale_date.
The query result format is in the following example*/
drop table if exists Sales;
create table if not exists Sales(sale_date date,fruit enum("apples","oranges"),sold_num int,
                                 constraint Sales_pk PRIMARY KEY (sale_date,fruit));
insert into Sales(sale_date,fruit,sold_num)
values("2020-05-01", "apples", 10),("2020-05-01", "oranges", 8),("2020-05-02", "apples", 15),
      ("2020-05-02", "oranges", 15),("2020-05-03", "apples", 20),("2020-05-03", "oranges", 0),
      ("2020-05-04", "apples", 15),("2020-05-04", "oranges", 16) ;          

 
 select sale_date,(apples_sold - oranges_sold) diff
 from
 (
 select sale_date,
  sum(case when fruit = "apples" then sold_num else 0 end) apples_sold,
  sum(case when fruit = "oranges" then sold_num else 0 end) oranges_sold
 from Sales 
 group by sale_date order by sale_date) A
 ;

/*Q43. Write an SQL query to report the fraction of players that logged in again on the day after the day they
first logged in, rounded to 2 decimal places. In other words, you need to count the number of players
that logged in for at least two consecutive days starting from their first login date, then divide that
number by the total number of players.*/

drop table if exists Activity;
create table Activity (player_id int,
                       device_id int,
                       event_date date,
                       games_played int,
                       constraint Activity_pk PRIMARY KEY (player_id,event_date));
insert into Activity (player_id,device_id,event_date,games_played)
values (1, 2, "2016-03-01", 5),(1, 2, "2016-03-02", 6),(2, 3, "2017-06-25", 1),(3, 1, "2016-03-02", 0),
       (3, 4 ,"2018-07-03", 5);
drop table if exists result;
with result as (select player_id,count(*) over (partition by player_id) loggedCount
from Activity where player_id not in
(select player_id from Activity where games_played = 0)),
FinalResult as (
select  loggedbackPlayerCnt / TotPlayerCnt fraction from (
 (select count(distinct player_id) TotPlayerCnt from Activity) C1,
 (select count(distinct player_id)  loggedbackPlayerCnt from result where loggedCount > 1)  C2
))
select round(fraction,2) from FinalResult;


/*Q45. Write an SQL query to report the respective department name and number of students majoring in
each department for all departments in the Department table (even ones with no current students).
Return the result table ordered by student_number in descending order. In case of a tie, order them by
dept_name alphabetically*/

drop table if exists Student;
drop table if exists Department;
create table if not exists Department(dept_id int PRIMARY KEY,dept_name varchar(50));
create table if not exists Student(student_id int,
                                  student_name varchar(30),
                                  gender varchar(7),
                                  dept_id int,
                                  constraint Student_pk PRIMARY KEY (student_id),
                                  constraint Dept_fk FOREIGN KEY (dept_id) REFERENCES Department(dept_id));
insert into Department(dept_id,dept_name)
values(1,"Engineering"),(2,"Science"),(3,"Law");
insert into Student(student_id,student_name,gender,dept_id)
values(1, "Jack", "M", 1),(2, "Jane", "F", 1),(3, "Mark", "M", 2);

with r as (
SELECT distinct D.dept_id,D.dept_name , count(S.student_id) over(partition by D.dept_id ) student_number from Department  D
left join Student S on D.dept_id  = S.dept_id)
select dept_name,student_number from r;

/*Q48.Write an SQL query that reports the books that have sold less than 10 copies in the last year,
excluding books that have been available for less than one month from today. Assume today is
2019-06-23.*/
drop table if exists Orders;
drop table if exists Books;
create table if not exists Books(book_id int PRIMARY KEY,
                                 name varchar(50),
                                 available_from date);

create table if not exists Orders(order_id int,
                                  book_id int,
                                  quantity int,
                                  dispatch_date date,
                                  constraint Orders_pk PRIMARY KEY (order_id),
                                  constraint Books_Fk FOREIGN KEY (book_id) REFERENCES Books(book_id));
insert into Books(book_id,name,available_from)
values(1,"Kalila And Demna", "2010-01-01"),
      (2, "28 Letters", "2012-05-12"),
      (3, "The Hobbit", "2019-06-10"),
      (4, "13 Reasons Why", "2019-06-01"),
      (5,"The Hunger Games", "2008-09-21");
insert into Orders(order_id,book_id,quantity,dispatch_date)
values(1, 1, 2, "2018-07-26"),
(2, 1, 1, "2018-11-05"),
(3, 3, 8, "2019-06-11"),
(4, 4, 6, "2019-06-05"),
(5, 4, 5, "2019-06-20"),
(6, 5, 9, "2009-02-02"),
(7, 5, 8, "2010-04-13");

select distinct B.name from Books B inner join Orders O
on B.book_id = O.book_id
where DATEDIFF("2019-06-23",B.available_from) > 30
and year(O.dispatch_date) = year("2019-06-23") - 1
and O.quantity < 10;

/*Q49.Write a SQL query to find the highest grade with its corresponding course for each student. In case of
a tie, you should find the course with the smallest course_id.
Return the result table ordered by student_id in ascending order.
The query result format is in the following example.
*/
drop table if exists Enrollments;
create table if not exists Enrollments(student_id int,course_id int,
                                       grade int,
                        constraint Enrollments_pk PRIMARY KEY (student_id, course_id));
insert into Enrollments(student_id,course_id,grade)
values(2, 2, 95),
      (2, 3, 95),
      (1, 1, 90),
      (1, 2, 99),
      (3, 1, 80),
      (3, 2, 75),
      (3, 3, 82);
SELECT
    student_id,
    course_id,
    grade
FROM (
SELECT
    student_id,
    course_id,
    grade,
    DENSE_RANK() OVER(PARTITION BY student_id ORDER BY grade DESC, course_id) as rnk
FROM Enrollments
    ) x
WHERE rnk=1
ORDER BY 1;
/*Q51. Write an SQL query to report the name, population, and area of the big countries.
Return the result table in any order*/
drop table if exists World;
create table if not exists World(name varchar(50) PRIMARY KEY,continent varchar(50),area int,population bigint,gdp bigint);
insert into World(name,continent,area,population,gdp)
values ("Afghanistan", "Asia", 652230, 25500100, 20343000000),
       ("Albania", "Europe", 28748, 2831741, 12960000000),
       ("Algeria", "Africa", 2381741, 37100000, 188681000000),
       ("Andorra", "Europe", 468, 78115, 3712000000),
       ("Angola", "Africa", 1246700, 20609294, 100990000000);

select name,population,area from World where area >= 3000000 or population >= 25000000;

/*Q52.Write an SQL query to report the names of the customer that are not referred by the customer with id
= 2.*/
drop table if exists Customers;
create table if not exists Customer(id int primary key,name varchar(50),referee_id int);
insert into Customer(id,name,referee_id)
values (1,'Will', null),(2, 'Jane', null),(3, 'Alex', 2),(4, 'Bill', null),(5, 'Zack', 1),(6, 'Mark', 2);

select name from Customer
where COALESCE(referee_id,0) <> 2;

/*Q53.Write an SQL query to report all customers who never order anything.
Return the result table in any order.*/
drop table if exists Customers;
create table if not exists Customers (id int PRIMARY KEY,name varchar(155));
drop table if exists Orders;
create table Orders (id int PRIMARY KEY,
                      customer_id int,
                     constraint Orders_fk FOREIGN KEY (customer_id) REFERENCES Customers(id));
insert into Customers(id,name)
values (1 ,"Joe"),(2, "Henry"),(3, "Sam"),(4, "Max");
insert into Orders(id,customer_id)
values (1, 3),(2, 1);
--Answer 53
select name from Customers where id not in (select distinct customer_id from Orders);

/*Q54.Write an SQL query to find the team size of each of the employees.
Return result table in any order*/
drop table if exists Employee;
create table if not exists Employee (employee_id int PRIMARY KEY,team_id int);
insert into Employee (employee_id,team_id)
values (1,8),(2,8),(3,8),(4,7),(5,9),(6,9);
--Answer 54
select employee_id ,count(team_id) over(partition by team_id) as team_size
from Employee order by employee_id;

/*Q55.A telecommunications company wants to invest in new countries. The company intends to invest in
the countries where the average call duration of the calls in this country is strictly greater than the
global average call duration.
Write an SQL query to find the countries where this company can invest.*/
drop table if exists Person;
drop table if exists Country;
drop table if exists Calls;
create table if not exists Person(id int PRIMARY KEY,
                                  name varchar(50),
                                  phone_number varchar(15));
create table if not exists Calls(caller_id int,
                                 callee_id int,
                                 duration int);
create table if not exists Country(name varchar(50),
                                   country_code varchar(3) PRIMARY KEY);
insert into Person(id,name,phone_number)
values(3, "Jonathan", "051-1234567"),
      (12, "Elvis", "051-7654321"),
      (1, "Moncef", "212-1234567"),
      (2, "Maroua", "212-6523651"),
      (7, "Meir", "972-1234567"),
      (9, "Rachel", "972-0011100");
insert into Country(name,country_code)
values("Peru", 51),("Israel", 972),("Morocco", 212),("Germany", 49),("Ethiopia", 251);
insert into Calls(caller_id,callee_id,duration)
values(1, 9, 33),(2, 9, 4),(1, 2, 59),(3 ,12, 102),(3, 12, 330),(12, 3, 5),(7, 9, 13),(7, 1, 3),(9, 7, 1),(1, 7, 7);

with r1 as (
select caller_id as id, duration as total
from
(select caller_id, duration
from Calls
union all
select callee_id, duration
from Calls) a
),
r2 as (
select distinct r1.id,substring(P.phone_number from 1 for 3) as code,r1.total,
avg(r1.total) over (partition by substring(P.phone_number from 1 for 3) order by id) as avg_call,
avg(r1.total) over () as global_avg
from Person P right join r1 on r1.id = P.id
)
select distinct C.name from r2 left join Country C on TRIM(LEADING '0' FROM r2.code) = C.country_code
where r2.avg_call > r2.global_avg;

/*Q56. Write an SQL query to report the device that is first logged in for each player.*/
drop table if exists Activity;
create table Activity (player_id int,
                       device_id int,
                       event_date date,
                       games_played int,
                       constraint Activity_pk PRIMARY KEY (player_id,event_date));
insert into Activity (player_id,device_id,event_date,games_played)
values (1, 2, "2016-03-01", 5),(1, 2, "2016-05-02", 6),(2, 3, "2017-06-25", 1),(3, 1, "2016-03-02", 0),
       (3, 4 ,"2018-07-03", 5);
drop table if exists PlayerDetails;
--Answer 56
with PlayerDetails as (select *,
       rank() over(partition by player_id order by event_date) as rank_val
from Activity)
select player_id,device_id from PlayerDetails
where rank_val = 1;

/*Q57 Write an SQL query to find the customer_number for the customer who has placed the largest
number of orders.*/
drop table if exists Orders;
create table Orders (order_number int,customer_number int);
insert into Orders(order_number,customer_number)
values (1,1),(2,2),(3,3),(4,3);
drop table if exists OrderTable; 
--Answer 57
with OrderTable as (select *,
       count(customer_number) over(partition by customer_number) as OrderCount
from Orders)
select distinct customer_number from OrderTable where OrderCount in(
select max(OrderCount) from OrderTable);

/*Follow up: What if more than one customer has the largest number of orders, can you find all the
customer_number in this case?
--Answer
The above query works for multiple customers having highest orders also as it queries
customers having maximum order count it works in that scenario also.*/
/*Q58. Write an SQL query to report all the consecutive available seats in the cinema.
Return the result table ordered by seat_id in ascending order.*/
drop table if exists Cinema;
Create table If Not Exists Cinema (
    seat_id int auto_increment, 
    free bool,
    constraint pk PRIMARY KEY (seat_id));
insert into Cinema (seat_id, free) values ('1', '1'),
('2', '0'),
('3', '1'),
('4', '1'),
('5', '1');
--Answer 58
SELECT 
     DISTINCT(a.seat_id) 
FROM Cinema a 
INNER JOIN Cinema b 
ON abs(a.seat_id - b.seat_id) = 1 
WHERE a.free = 1 and b.free = 1 
ORDER BY a.seat_id;

/*Q59. Write an SQL query to report the names of all the salespersons who did not have any orders related to
the company with the name "RED".*/
drop table if  exists SalesPerson;
create table if not exists SalesPerson(sales_id int PRIMARY KEY,
                                       name varchar(100),
                                       salary int,
                                       commission_rate int,
                                       hire_date date);
drop table if exists Company;
create table if not exists Company(com_id int PRIMARY KEY,
                                   name varchar(50),
                                   city varchar(15));
drop table if exists Orders;
create table if not exists Orders(order_id int PRIMARY KEY,
                                  order_date date,
                                  com_id int,
                                  sales_id int,
                                  amount int,
                                  constraint Orders_fk FOREIGN KEY (com_id) REFERENCES Company(com_id),
                                  constraint Orders_fk1 FOREIGN KEY (sales_id) REFERENCES SalesPerson(sales_id)
                                  );
insert into SalesPerson(sales_id,name,salary,commission_rate,hire_date)
values(1,"John",100000,6,STR_TO_DATE("4/1/2006",'%m/%d/%Y')),
      (2, "Amy", 12000, 5, STR_TO_DATE("5/1/2010",'%m/%d/%Y')),
      (3, "Mark", 65000, 12, STR_TO_DATE("12/25/2008",'%m/%d/%Y')),
      (4, "Pam", 25000, 25, STR_TO_DATE("1/1/2005",'%m/%d/%Y')),
      (5, "Alex", 5000, 10, STR_TO_DATE("2/3/2007",'%m/%d/%Y'));

insert into Company(com_id,name,city)
values(1, "RED", "Boston"),(2, "ORANGE", "New York"),(3, "YELLOW", "Boston"),
      (4, "GREEN", "Austin");
insert into Orders(order_id,order_date,com_id,sales_id,amount)
values(1, STR_TO_DATE("1/1/2014",'%m/%d/%Y'), 3, 4, 10000),(2, STR_TO_DATE("2/1/2014",'%m/%d/%Y'), 4, 5, 5000),
      (3, STR_TO_DATE("3/1/2014",'%m/%d/%Y'), 1, 1, 50000),(4, STR_TO_DATE("4/1/2014",'%m/%d/%Y'), 1, 4, 25000);

-- Answer 59
select name from SalesPerson where sales_id not in (select distinct sales_id from Orders
where com_id in (select distinct com_id from Company where name = "RED"));

/*Q60. Write an SQL query to report for every three line segments whether they can form a triangle*/
drop table if exists Triangle;
create table if not exists Triangle(x int,
                                    y int,
                                    z int,
                                    constraint Triangle_pk PRIMARY KEY (x,y,z));
insert into Triangle(x,y,z)
values(13,15,30),(10,20,15);
--Answer 60
select *,CASE
           WHEN x + y > z and x + z > y and y + z > x THEN "Yes"
           ELSE "No"
           END AS triangle
           from Triangle; 
/*Q61.Write an SQL query to report the shortest distance between any two points from the Point table.*/
drop table if exists Point;
create table if not exists Point(x int PRIMARY KEY);
insert into Point(x)
values(-1),(0),(2);
drop table if exists DistanceTable;
--Answer 61
with DistanceTable as (
select A.x PointA,B.x PointB,abs(A.x-B.x) Distance from Point A CROSS JOIN Point B
where A.x <> B.x order by abs(A.x-B.x))
select min(Distance) shortest from DistanceTable;

/*Follow up: How could you optimise your query if the Point table is ordered in ascending order?
 --Answer
 The above answer works irrespective of order of the input table x attribute values*/

/*Q62.Write a SQL query for a report that provides the pairs (actor_id, director_id) where the actor has
cooperated with the director at least three times.*/
drop table if exists ActorDirector;
create table if not exists ActorDirector(actor_id int,director_id int,timestamp int PRIMARY KEY);
insert into ActorDirector (actor_id,director_id,timestamp)
values(1,1,0),(1,1,1),(1,1,2),(1,2,3),(1,2,4),(2,1,5),(2,1,6);
drop table if exists CooperationTable; 
drop table if exists CooperationCountTable; 
--Answer 62

with CooperationTable as (select actor_id,director_id,case
                            when actor_id = director_id then 1
                            else 0
                            end as 'MatchCount' from ActorDirector),
CooperationCountTable as (
select actor_id,director_id,sum(MatchCount) TotalCount from  CooperationTable
group by actor_id,director_id)
select distinct actor_id,director_id from CooperationCountTable
where TotalCount in (select max(TotalCount) from CooperationCountTable);

/*Q63.Write an SQL query that reports the product_name, year, and price for each sale_id in the Sales table.
Return the resulting table in any order.*/
drop table if exists Product;
create table if not exists Product(product_id int PRIMARY KEY,product_name varchar(100));
drop table if exists Sales;
create table if not exists Sales(sale_id int,
                                 product_id int,
                                 year int,
                                 quantity int,
                                 price int,
                                 constraint Sales_pk PRIMARY KEY (sale_id,year),
                                 constraint Product_pk FOREIGN KEY (product_id) REFERENCES Product(product_id));
insert into Product(product_id,product_name)
values (100,"Nokia"),(200,"Apple"),(300,"Samsung");
insert into Sales(sale_id,product_id,year,quantity,price)
values(1, 100, 2008, 10, 5000),(2, 100, 2009, 12, 5000),(7, 200, 2011, 15, 9000);
select P.product_name,S.year,S.price from Sales S left join Product P
ON S.product_id = P.product_id;

/*Q64.Write an SQL query that reports the average experience years of all the employees for each project,
rounded to 2 digits*/
drop table if exists Employee;
create table if not exists Employee(employee_id int PRIMARY KEY,name varchar(50),experience_years int);
insert into Employee(employee_id,name,experience_years)
values(1, "Khaled", 3),(2, "Ali", 2),(3, "John", 1),(4, "Doe", 2);
drop table if exists Project;
create table if not exists Project(project_id int,
                                   employee_id int,
                                   constraint Project_pk PRIMARY KEY (project_id,employee_id),
                                   constraint Employee_fk FOREIGN KEY (employee_id) REFERENCES Employee(employee_id));
insert into Project(project_id,employee_id)
values (1,1),(1,2),(1,3),(2,1),(2,4);
--Answer 64
select distinct project_id,round(avg(experience_years) over (partition by project_id),2) average_years from Project P left join Employee E
ON P.employee_id = E.employee_id;

/*Q65.Write an SQL query that reports the best seller by total sales price, If there is a tie, report them all*/

drop table if exists Product;
create table if not exists Product(product_id int PRIMARY KEY,
                                   product_name varchar(50),
                                   unit_price int);
insert into Product(product_id,product_name,unit_price)
values (1, "S8", 1000),(2, "G4", 800),(3, "iPhone", 1400);
drop table if exists Sales;
create table if not exists Sales(seller_id int,
                                 product_id int,
                                 buyer_id int,
                                 sale_date date,
                                 quantity int,
                                 price int,
                                 constraint Product_fk FOREIGN KEY (product_id) REFERENCES Product(product_id));
insert into Sales(seller_id,product_id,buyer_id,sale_date,quantity,price)
values(1, 1, 1, "2019-01-21", 2, 2000),(1, 2, 2, "2019-02-17", 1, 800),(2, 2, 3, "2019-06-02", 1, 800),
(3, 3, 4, "2019-05-13", 2, 2800);
drop table if exists TotAmount;
--Answer 65
with TotAmount as (
select seller_id,sum(price) amount from Sales
group by seller_id order by sum(price) desc)
select seller_id from TotAmount
where amount in (select max(amount) from TotAmount);

/*Q66.Write an SQL query that reports the buyers who have bought S8 but not iPhone. Note that S8 and
iPhone are products present in the Product table.*/

--Answer 66
select product_id from (select buyer_id,product_id from Sales
where product_id not in (select product_id from Product where product_name != 'S8')
) FinalTable;


/*Q67. Write an SQL query to compute the moving average of how much the customer paid in a seven days
window (i.e., current day + 6 days before). average_amount should be rounded to two decimal places.
Return result table ordered by visited_on in ascending order.*/
drop table if exists Customer;
create table if not exists Customer(customer_id int,
                                    name varchar(50),
                                    visited_on date,
                                    amount int,
                                    constraint Customer_pk PRIMARY KEY (customer_id,visited_on));
insert into Customer(customer_id,name,visited_on,amount)
values(1,"Jhon","2019-01-01",100),(2,"Daniel","2019-01-02",110),(3,"Jade","2019-01-03",120),
      (4,"Khaled","2019-01-04",130),(5,"Winston","2019-01-05",110),(6,"Elvis","2019-01-06",120),
      (7,"Anna","2019-01-07",150),(8,"Maria","2019-01-08",80),(9,"Jaze","2019-01-09",110),
      (1,"Jhon","2019-01-10",130),(3,"Jade","2019-01-10",150);
--Answer 67
WITH result as (
SELECT 
    visited_on,
    SUM(amount) as amount
FROM Customer
GROUP BY visited_on
), result2 as (
SELECT
    visited_on,
    SUM(amount) OVER(ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) as amount,
    ROUND(AVG(amount) OVER(ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2) as average_amount,
    DENSE_RANK() OVER(ORDER BY visited_on) as rnk
FROM result
) 
SELECT 
	visited_on,
    amount,
    average_amount
FROM result2
WHERE rnk > 6;

/*Q68. Write an SQL query to find the total score for each gender on each day.
Return the result table ordered by gender and day in ascending order.*/

drop table if exists Scores;
create table Scores (player_name varchar(50),
                     gender varchar(10),
                     day date,
                     score_points int,
                     constraint Scores_pk PRIMARY KEY (gender, day));
insert into Scores(player_name,gender,day,score_points)
values ("Aron", "F", "2020-01-01", 17),("Alice", "F", "2020-01-07", 23),("Bajrang", "M", "2020-01-07", 7),
       ("Khali", "M", "2019-12-25", 11),("Slaman", "M", "2019-12-30", 13),("Joe", "M", "2019-12-31", 3),
       ("Jose", "M", "2019-12-18", 2),("Priya", "F", "2019-12-31", 23),("Priyanka", "F", "2019-12-30", 17);
--Answer 68
select gender,day,sum(score_points) over (partition by gender order by gender,day) total
from Scores;

/*Q69 Write an SQL query to find the start and end number of continuous ranges in the table Logs.
Return the result table ordered by start_id.*/

drop table if exists Logs;
create table if not exists Logs(log_id int PRIMARY KEY);
insert into Logs(log_id)
values (1),(2),(3),(7),(8),(10);

select log_start.log_id as START_ID, min(log_end.log_id) as END_ID from 
    (select log_id from Logs where log_id - 1 not in (select * from Logs)) log_start,
    (select log_id from Logs where log_id + 1 not in (select * from Logs)) log_end
    where log_start.log_id <= log_end.log_id
    group by log_start.log_id;


/*Q70. Write an SQL query to find the number of times each student attended each exam.
Return the result table ordered by student_id and subject_name*/
drop table if exists Students;
create table if not exists Students(student_id int PRIMARY KEY,student_name varchar(50));
drop table if exists Subjects;
create table if not exists Subjects(subject_name varchar(50) PRIMARY KEY);
drop table if exists Examinations;
create table if not exists Examinations(student_id int,
                                        subject_name varchar(50)
                                        );
insert into Students(student_id,student_name)
values (1, "Alice"),(2, "Bob"),(13, "John"),(6, "Alex");
insert into Subjects(subject_name)
values ("Math"),("Physics"),("Programming");
insert into Examinations(student_id,subject_name)
values (1,"Math"),(1,"Physics"),(1,"Programming"),(2,"Programming"),(1,"Physics"),(1,"Math"),(13,"Math"),
       (13,"Programming"),(13,"Physics"),(2,"Math"),(1,"Math");

select distinct S.student_id,S.student_name,SU.subject_name,count(E.student_id) over(partition by S.student_id,S.student_name,SU.subject_name order by S.student_id,SU.subject_name) attended_exams
from (Students S inner join Subjects SU on 1=1)
left join Examinations E on (S.student_id, SU.subject_name) = (E.student_id, E.subject_name);


/*Q71.Write an SQL query to find employee_id of all employees that directly or indirectly report their work to
the head of the company.
The indirect relation between managers will not exceed three managers as the company is small.
Return the result table in any order*/

drop table if exists Employees;
create table if not exists Employees(employee_id int PRIMARY KEY,
                                     employee_name varchar(50),
                                     manager_id int);
insert into Employees(employee_id,employee_name,manager_id)
values(1, "Boss", 1),(3, "Alice", 3),(2, "Bob", 1),(4, "Daniel", 2),(7, "Luis", 4),
      (8, "Jhon", 3),(9, "Angela", 8),(77, "Robert", 1);
drop table if exists emp_hir;
--Answer 71
with recursive emp_hir as  
(
   select employee_id, employee_name, manager_id,  1 as lvl from Employees where employee_id=1
   UNION
   select em.employee_id, em.employee_name, em.manager_id, eh.lvl + 1 as lvl from emp_hir eh
   inner join Employees em on eh.employee_id = em.manager_id
   where eh.lvl + 1 <= 4
)

select distinct employee_id from emp_hir where employee_id <> 1;


/*Q72. Write an SQL query to find for each month and country, the number of transactions and their total
amount, the number of approved transactions and their total amount.
*/

drop table if exists Transactions;
create table if not exists Transactions(id int PRIMARY KEY,
                                        country varchar(2),
                                        state enum("approved", "declined"),
                                        amount int,
                                        trans_date date); 
insert into Transactions(id,country,state,amount,trans_date)
values(121,"US","approved",1000,"2018-12-18"),(122,"US","declined",2000,"2018-12-19"),
      (123,"US","approved",2000,"2019-01-01"),(124,"DE","approved",2000,"2019-01-07");

with Transaction_CTE as (
select month(trans_date) tr_month,
country,count(id) as "trans_count",
sum(CASE WHEN state = "approved" THEN 1 else 0 end) approved_count,
sum(amount) as "trans_total_amount",
sum(CASE WHEN state = "approved" THEN amount else 0 end) approved_total_amount 
from Transactions
group by month(trans_date),country)

select distinct concat(year(T.trans_date),"-",CTE.tr_month) month,CTE.country,
CTE.trans_count,CTE.approved_count,CTE.trans_total_amount,CTE.approved_total_amount
from Transaction_CTE CTE left join Transactions T
on CTE.tr_month = month(T.trans_date) and CTE.country = T.country;

/*Q74. Write an SQL query to report the fraction of players that logged in again on the day after the day they
first logged in, rounded to 2 decimal places. In other words, you need to count the number of players
that logged in for at least two consecutive days starting from their first login date, then divide that
number by the total number of players.*/

drop table if exists Activity;
create table Activity (player_id int,
                       device_id int,
                       event_date date,
                       games_played int,
                       constraint Activity_pk PRIMARY KEY (player_id,event_date));
insert into Activity (player_id,device_id,event_date,games_played)
values (1, 2, "2016-03-01", 5),(1, 2, "2016-03-02", 6),(2, 3, "2017-06-25", 1),(3, 1, "2016-03-02", 0),
       (3, 4 ,"2018-07-03", 5);
drop table if exists result;
with result as (select player_id,count(*) over (partition by player_id) loggedCount
from Activity where player_id not in
(select player_id from Activity where games_played = 0)),
FinalResult as (
select  loggedbackPlayerCnt / TotPlayerCnt fraction from (
 (select count(distinct player_id) TotPlayerCnt from Activity) C1,
 (select count(distinct player_id)  loggedbackPlayerCnt from result where loggedCount > 1)  C2
))
select round(fraction,2) from FinalResult;

/*Q75. Write an SQL query to report the fraction of players that logged in again on the day after the day they
first logged in, rounded to 2 decimal places. In other words, you need to count the number of players
that logged in for at least two consecutive days starting from their first login date, then divide that
number by the total number of players.*/

drop table if exists Activity;
create table Activity (player_id int,
                       device_id int,
                       event_date date,
                       games_played int,
                       constraint Activity_pk PRIMARY KEY (player_id,event_date));
insert into Activity (player_id,device_id,event_date,games_played)
values (1, 2, "2016-03-01", 5),(1, 2, "2016-03-02", 6),(2, 3, "2017-06-25", 1),(3, 1, "2016-03-02", 0),
       (3, 4 ,"2018-07-03", 5);
drop table if exists result;
with result as (select player_id,count(*) over (partition by player_id) loggedCount
from Activity where player_id not in
(select player_id from Activity where games_played = 0)),
FinalResult as (
select  loggedbackPlayerCnt / TotPlayerCnt fraction from (
 (select count(distinct player_id) TotPlayerCnt from Activity) C1,
 (select count(distinct player_id)  loggedbackPlayerCnt from result where loggedCount > 1)  C2
))
select round(fraction,2) from FinalResult;

/*Q76.Write an SQL query to find the salaries of the employees after applying taxes. Round the salary to the
nearest integer.
The tax rate is calculated for each company based on the following criteria:
● 0% If the max salary of any employee in the company is less than $1000.
● 24% If the max salary of any employee in the company is in the range [1000, 10000] inclusive.
● 49% If the max salary of any employee in the company is greater than $10000.*/

drop table if exists Salaries;
create table if not exists Salaries(company_id int,
                                    employee_id int,
                                    employee_name varchar(50),
                                    salary int);
insert into Salaries(company_id,employee_id,employee_name,salary)
values(1, 1, "Tony", 2000),(1, 2, "Pronub", 21300),(1, 3, "Tyrrox", 10800),(2, 1, "Pam", 300),
      (2, 7, "Bassem", 450),(2, 9, "Hermione", 700),(3, 7, "Bocaben", 100),(3, 2, "Ognjen", 2200),
      (3, 13, "Nyan Cat", 3300),(3, 15, "Morning Cat", 7777);
--Answer 76
with result_CTE1 as (
select company_id,employee_id,employee_name,salary as originalSalary,max(salary) over(partition by company_id) maxSalaryinCompany
from Salaries)

select company_id,employee_id,employee_name,
                               case
                                 when (maxSalaryinCompany < 1000) then originalSalary
                                 when (maxSalaryinCompany >= 1000 and maxSalaryinCompany <= 10000)
                                      then round(originalSalary - (originalSalary * 0.24))
                                 else round(originalSalary - (originalSalary * 0.49))
                                 end as salary
from result_CTE1;

/*Q77. Write an SQL query to evaluate the boolean expressions in Expressions table.
Return the result table in any order.
The query result format is in the following example.*/

drop table if exists Variables;
drop table if exists Expressions;
create table if not exists Variables(name varchar(1) primary key,value int);
create table if not exists Expressions(left_operand varchar(1),
                                        operator enum("<",">", "="),
                                        right_operand varchar(1),
                                        constraint Expression_pk PRIMARY KEY (left_operand,operator,right_operand));
insert into Variables(name,value)
values("x", 66),("y", 77) ;

insert into Expressions(left_operand,operator,right_operand)
values("x", ">" ,"y"),("x", "<", "y"),("x", "=", "y"),("y", ">", "x"),("y", "<" ,"x"),
      ("x","=","x");
--Answer 77
select e.left_operand, e.operator, e.right_operand,
       case when 
       e.operator = '<' then if(l.value < r.value, 'true', 'false')
       when e.operator = '>' then if(l.value > r.value, 'true', 'false')
       else if(l.value = r.value, 'true', 'false') end
       as value
from Expressions e
join Variables l
on e.left_operand = l.name
join Variables r
on e.right_operand = r.name
;

/*Q78.A telecommunications company wants to invest in new countries. The company intends to invest in
the countries where the average call duration of the calls in this country is strictly greater than the
global average call duration.
Write an SQL query to find the countries where this company can invest.*/

drop table if exists Person;
drop table if exists Country;
drop table if exists Calls;
create table if not exists Person(id int PRIMARY KEY,
                                  name varchar(50),
                                  phone_number varchar(15));
create table if not exists Calls(caller_id int,
                                 callee_id int,
                                 duration int);
create table if not exists Country(name varchar(50),
                                   country_code varchar(3) PRIMARY KEY);
insert into Person(id,name,phone_number)
values(3, "Jonathan", "051-1234567"),
      (12, "Elvis", "051-7654321"),
      (1, "Moncef", "212-1234567"),
      (2, "Maroua", "212-6523651"),
      (7, "Meir", "972-1234567"),
      (9, "Rachel", "972-0011100");
insert into Country(name,country_code)
values("Peru", 51),("Israel", 972),("Morocco", 212),("Germany", 49),("Ethiopia", 251);
insert into Calls(caller_id,callee_id,duration)
values(1, 9, 33),(2, 9, 4),(1, 2, 59),(3 ,12, 102),(3, 12, 330),(12, 3, 5),(7, 9, 13),(7, 1, 3),(9, 7, 1),(1, 7, 7);
--Answer 78
with r1 as (
select caller_id as id, duration as total
from
(select caller_id, duration
from Calls
union all
select callee_id, duration
from Calls) a
),
r2 as (
select distinct r1.id,substring(P.phone_number from 1 for 3) as code,r1.total,
avg(r1.total) over (partition by substring(P.phone_number from 1 for 3) order by id) as avg_call,
avg(r1.total) over () as global_avg
from Person P right join r1 on r1.id = P.id
)
select distinct C.name from r2 left join Country C on TRIM(LEADING '0' FROM r2.code) = C.country_code
where r2.avg_call > r2.global_avg;

/*Q79. Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in
alphabetical order.
*/
drop table if exists Employee;
create table if not exists Employee(employee_id int PRIMARY KEY,name varchar(20),months int,salary int);
insert into Employee(employee_id,name,months,salary)
values(12228,"Rose",15,1968),(33645,"Angela",1,3443),(45692,"Frank",17,1608),(56118,"Patrick",7,1345),
      (59725,"Lisa",11,2330),(74197,"Kimberly",16,4372),(78454,"Bonnie",8,1771),(83565,"Michael",6,2017),
      (98607,"Todd",5,3396),(99989,"Joe",9,3573);
select name from Employee order by name;

/*Q88. Write an SQL query to find the total score for each gender on each day.
Return the result table ordered by gender and day in ascending order.
The query result format is in the following example.*/

drop table if exists Scores;
create table Scores (player_name varchar(50),
                     gender varchar(10),
                     day date,
                     score_points int,
                     constraint Scores_pk PRIMARY KEY (gender, day));
insert into Scores(player_name,gender,day,score_points)
values ("Aron", "F", "2020-01-01", 17),("Alice", "F", "2020-01-07", 23),("Bajrang", "M", "2020-01-07", 7),
       ("Khali", "M", "2019-12-25", 11),("Slaman", "M", "2019-12-30", 13),("Joe", "M", "2019-12-31", 3),
       ("Jose", "M", "2019-12-18", 2),("Priya", "F", "2019-12-31", 23),("Priyanka", "F", "2019-12-30", 17);
--Answer 88
select gender,day,sum(score_points) over (partition by gender order by gender,day) total
from Scores;

/*Q89.A telecommunications company wants to invest in new countries. The company intends to invest in
the countries where the average call duration of the calls in this country is strictly greater than the
global average call duration.
Write an SQL query to find the countries where this company can invest.
Return the result table in any order.*/
drop table if exists Person;
drop table if exists Country;
drop table if exists Calls;
create table if not exists Person(id int PRIMARY KEY,
                                  name varchar(50),
                                  phone_number varchar(15));
create table if not exists Calls(caller_id int,
                                 callee_id int,
                                 duration int);
create table if not exists Country(name varchar(50),
                                   country_code varchar(3) PRIMARY KEY);
insert into Person(id,name,phone_number)
values(3, "Jonathan", "051-1234567"),
      (12, "Elvis", "051-7654321"),
      (1, "Moncef", "212-1234567"),
      (2, "Maroua", "212-6523651"),
      (7, "Meir", "972-1234567"),
      (9, "Rachel", "972-0011100");
insert into Country(name,country_code)
values("Peru", 51),("Israel", 972),("Morocco", 212),("Germany", 49),("Ethiopia", 251);
insert into Calls(caller_id,callee_id,duration)
values(1, 9, 33),(2, 9, 4),(1, 2, 59),(3 ,12, 102),(3, 12, 330),(12, 3, 5),(7, 9, 13),(7, 1, 3),(9, 7, 1),(1, 7, 7);
--Answer 89
with r1 as (
select caller_id as id, duration as total
from
(select caller_id, duration
from Calls
union all
select callee_id, duration
from Calls) a
),
r2 as (
select distinct r1.id,substring(P.phone_number from 1 for 3) as code,r1.total,
avg(r1.total) over (partition by substring(P.phone_number from 1 for 3) order by id) as avg_call,
avg(r1.total) over () as global_avg
from Person P right join r1 on r1.id = P.id
)
select distinct C.name from r2 left join Country C on TRIM(LEADING '0' FROM r2.code) = C.country_code
where r2.avg_call > r2.global_avg;

/*Q91.Write an SQL query to report the comparison result (higher/lower/same) of the average salary of
employees in a department to the company's average salary.*/
drop table if exists Salary;
drop table if exists Employee;
create table if not exists Employee(employee_id int primary key,department_id int);
;
create table if not exists Salary(id int primary key,
                                  employee_id int,
                                  amount int,
                                  pay_date date,
                                  constraint Salary_fk FOREIGN KEY (employee_id) REFERENCES Employee(employee_id));
insert into Employee(employee_id,department_id)
values(1,1),(2,2),(3,2);
insert into Salary(id,employee_id,amount,pay_date)
values(1, 1, 9000, "2017/03/31"),(2, 2, 6000, "2017/03/31"),(3, 3, 10000, "2017/03/31"),
      (4, 1, 7000, "2017/02/28"),(5, 2, 6000, "2017/02/28"),(6, 3, 8000, "2017/02/28");
-- Answer 91
WITH r1 AS(
    SELECT 
        date_format(pay_date, '%Y-%m') as month,
        AVG(amount) as company_avg_salary
    FROM Salary
    GROUP BY 1
),

r2 AS (
    SELECT 
        date_format(pay_date, '%Y-%m') as month,
        e.department_id,
        AVG(s.amount) as dept_avg_salary
    FROM Salary as s JOIN Employee as e
    ON s.employee_id = e.employee_id
    GROUP BY 1, 2
)

SELECT
    d.month as pay_month,
    d.department_id,
    CASE WHEN d.dept_avg_salary > c.company_avg_salary THEN 'higher'
        WHEN d.dept_avg_salary < c.company_avg_salary THEN 'lower'
        ELSE 'same'
    END AS comparison
FROM r2 as d LEFT JOIN r1 as c
ON d.month = c.month
ORDER BY 1 DESC;


/*Q92. Write an SQL query to report for each install date, the number of players that installed the game on
that day, and the day one retention.*/

drop table if exists Activity;
create table if not exists Activity (player_id int,
                       device_id int,
                       event_date date,
                       games_played int,
                       constraint pk2 PRIMARY KEY (player_id,event_date));
insert into Activity (player_id,device_id,event_date,games_played)
values (1, 2, "2016-03-01", 5),(1, 2, "2016-03-02", 6),(2, 3, "2017-06-25", 1),(3, 1, "2016-03-01", 0),
       (3, 4 ,"2016-07-03", 5);

--Answer 92
with r1 as (
select event_date as install_dt,
       count(player_id) over(partition by event_date) as installs,
       player_id,
       rank() over(partition by player_id order by event_date) as rank_val,
       games_played
from Activity),r2 as (
select * from r1 where player_id not in (select player_id from Activity where games_played = 0)
and rank_val = 1),r3 as (
select R.install_dt,R.installs,A.player_id,case
                    when DATE_ADD(A.event_date,INTERVAL 1 DAY) in (select distinct event_date from Activity) then 1
                    else 0
                  end as logged_backcount
  from Activity A left join r2 R on R.install_dt = A.event_date and R.player_id=A.player_id
  where A.player_id in (select distinct player_id from r2) and R.install_dt is not null)
select install_dt,installs,round(logged_backcount/installs,1) Day1_retention
from r3;


  