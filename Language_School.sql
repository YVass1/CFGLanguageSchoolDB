-- Language School Database
-- Yogini Vassaramo & Nathalie Fernando

CREATE DATABASE languageschool;
USE languageschool;

CREATE TABLE students (
  Student_id int NOT NULL,
  First_name varchar(55) NOT NULL,
  Last_name varchar(55) NOT NULL,
  DOB date NOT NULL,
  Telephone varchar(12) NOT NULL,
  Email varchar(55) NOT NULL,
  Postcode varchar(10) NOT NULL,
  PRIMARY KEY (Student_id)
);

INSERT INTO students 
(Student_id, First_name, Last_name, DOB, Telephone, Email, Postcode)
VALUES 
(120,'Mari-anna','Rose','2000-12-04','07356367018','Mari-annaRose6@gmail.com','FY3 3PJ'),
(220,'Amelia','David','1998-05-05','07976341322','AmeliaDavid73@gmail.com','ZB4 4EU'),
(320,'Violet','Wright','1999-03-18','07031263379','VioletWright37@gmail.com','QY1 5BT'),
(420,'Yasmin','Lovatt','1997-09-21','07038950983','YasminLovatt7@gmail.com','ZW4 6DQ'),
(520,'Theo ','Archer','1995-07-19','07045706013','Theo Archer78@gmail.com','SU3 8QY'),
(620,'Isabelle','Lee','1991-09-27','07654802874','IsabelleLee32@gmail.com','FA6 7KN'),
(720,'Mark','David','2001-12-10','07746044384','MarkDavid95@gmail.com','UG9 4IE'),
(820,'Jack','Myers','1993-11-22','07197490819','JackMyers73@gmail.com','QW7 6CO'),
(920,'Jack','Ansell','2000-06-29','07937838392','JackAnsell10@gmail.com','RF2 2NE'),
(1020,'Maxence','Pierre','1990-07-14','07380193474','MaxencePierre90@gmail.com','LD1 4RN'),
(1120,'Alexander','Yanov','2001-12-31','07038147584','AlexanderYanov99@gmail.com','RN2 8CQ'),
(1220,'Zeus','Mozoc','1991-01-16','07765018373','ZeusMozoc72@gmail.com','PG8 4BA'),
(1320,'Abdul','Yusef','1990-05-06','07948037510','AbdulYusef12@gmail.com','MX8 2YD'),
(1420,'Yusef','Talati','1997-04-13','07031470314','YusefTalati98@gmail.com','FB5 3ZX'),
(1520,'Zaraa','Taylor','1983-11-24','07943877581','ZaraaTaylor19@gmail.com','VC7 3SI'),
(1620,'Natasha','Costa','1995-10-23','07108747257','NatashaCosta46@gmail.com','SG1 3FW'),
(1720,'Marcel','Dupont','1993-08-12','07198683230','MarcelDupont95@gmail.com','PV1 3UJ'),
(1820,'Naomi','Wilson','1997-02-03','07018498539','NaomiWilson27@gmail.com','NW1 8RD'),
(1920,'Athena','Huang','2000-02-07','07375093012','AthenaHuang12@gmail.com','WA3 3HD'),
(2020,'Oliver','Hamilton','2001-07-30','07120985383','OliverHamilton75@gmail.com','IN2 3CL'),
(2120,'Maya','Martinez','1989-09-27','07384874221','MayaMartinez54@gmail.com','FL1 2NU'),
(2220,'Roshni','Verma','1990-01-14','07072300153','RoshniVerma14@gmail.com','PQ8 3CJ'),
(2320,'Vishal','Patel','1999-12-25','07754502156','VishalPatel87@gmail.com','SB4 7FW'),
(2420,'Ava','Meir','1991-05-10','07578202378','AvaMeir97@gmail.com','ZN8 5IO'),
(2520,'Sophia','Young','1983-10-07','07086549563','SophiaYoung62@gmail.com','RV1 3WC'),
(2620,'Mia','Khan','1983-02-13','07048340967','MiaKhan94@gmail.com','OJ9 3XH'),
(2720,'Yuri','Takeki','1974-04-09','07430703955','YuriTakeki70@gmail.com','PY7 3ZP'),
(2820,'Dimitri','Thessaloniki','1987-06-17','07095895894','DimitriThessaloniki69@gmail.com','XP5 6FQ'),
(2920,'Asnee','Jameson','1995-06-08','07359084300','AsneeJameson28@gmail.com','FA5 3NL'),
(3020,'Xiu','Li','1986-01-24','07540796022','XiuLi80@gmail.com','OL4 4HT'),
(3120,'Olive','Anderson','1977-08-28','07684389437','OliveAnderson13@gmail.com','EW4 3RA'),
(3220,'Saeed ','Mustafa','1990-12-04','07039485466','Saeed Mustafa84@gmail.com','PL2 9AX'),
(3320,'Dunni ','Mbanne','1986-05-11','07340967672','Dunni Mbanne53@gmail.com','AC6 2CL'),
(3420,'Jenessi','Maturri','1995-11-26','07943755943','JenessiMaturri79@gmail.com','BX7 4EN'),
(3520,'Juan','Garcia','1989-03-25','07865798688','JuanGarcia92@gmail.com','GO3 6VE');

CREATE TABLE classroom_location (
  Location_id int NOT NULL,
  Location_name varchar(45) NOT NULL,
  Classroom_number int NOT NULL,
  Max_capacity int NOT NULL,
  PRIMARY KEY (Location_id)
);

INSERT INTO classroom_location 
(Location_id, Location_name, Classroom_number, Max_capacity)
VALUES 
(181,'The Theological Archives',4,10),
(182,'The Theological Archives',90,12),
(183,'The Theological Archives',101,13),
(201,'Bailieu Institute ',12,15),
(202,'Bailieu Institute ',21,22),
(203,'Bailieu Institute ',77,13),
(501,'Emmerson Building',32,7),
(502,'Emmerson Building',34,15),
(503,'Emmerson Building',77,18);

CREATE TABLE term_dates (
  Term_id int NOT NULL,
  Term varchar(45) NOT NULL,
  Start_date date NOT NULL,
  End_date date NOT NULL,
  Length_Weeks float NOT NULL,
  Course_id int NOT NULL,
  PRIMARY KEY (Term_id)
);

INSERT INTO term_dates
(Term_id, Term, Start_date, End_date, Length_Weeks, Course_id)
 VALUES 
 (901,'Winter','2021-10-17','2022-01-10',11,101),
 (902,'Spring','2021-02-01','2021-05-04',12.5,201),
 (903,'Winter','2021-10-17','2022-01-28',13.5,301),
 (904,'Spring','2021-02-01','2021-05-04',11,102),
 (905,'Spring','2021-02-01','2021-05-04',12.5,202),
 (906,'Winter','2021-10-17','2022-01-28',13.5,302),
 (907,'Spring','2021-02-01','2021-05-04',11,103),
 (908,'Summer','2021-06-12','2021-09-26',14,203),
 (909,'Winter','2021-10-17','2022-01-28',13.5,303);


CREATE TABLE courses(
  Course_id int NOT NULL,
  Location_id int NOT NULL,
  Term_id int NOT NULL,
  Language varchar(45),
  Level varchar(45),
  Course_Fee float NOT NULL,
  Total_Students int NOT NULL,
  PRIMARY KEY (Course_id), 
  FOREIGN KEY (Term_id) REFERENCES term_dates (Term_id),
  FOREIGN KEY (Location_id) REFERENCES classroom_location(Location_id)
);

INSERT INTO courses 
(Course_id, Location_id, Term_id, Language, Level, Course_Fee, Total_Students)
VALUES 
(101,501,901,'French','Beginner',330,7),
(102,502,904,'Spanish','Beginner',330,3),
(103,503,907,'German','Beginner',330,2),
(201,201,902,'French','Intermediate',380,6),
(202,202,905,'Spanish','Intermediate',380,5),
(203,203,908,'German','Intermediate',380,4),
(301,181,903,'French','Advanced',410,2),
(302,182,906,'Spanish','Advanced',410,1),
(303,183,909,'German','Advanced',410,5);

CREATE TABLE teachers (
  Teacher_id int NOT NULL,
  First_name varchar(45) NOT NULL,
  Last_name varchar(45) NOT NULL,
  DOB date NOT NULL,
  Telephone varchar(12) NOT NULL,
  Email varchar(45) NOT NULL,
  Postcode varchar(10) NOT NULL,
  Language_taught varchar(45) NOT NULL,
  PRIMARY KEY (Teacher_id)
);

INSERT INTO teachers 
(Teacher_id, First_name, Last_name, DOB, Telephone, Email, Postcode, Language_taught)
VALUES 
(382,'Maria','Gomez','1998-11-30','07652392291','MariaGomez67@gmail.com','GW2 7OG','Spanish'),
(390,'Julio','Lourenco','1975-09-21','07462999846','JulioLourenco63@hotmail.co.uk','BJ4 9HA','Spanish'),
(418,'Alexander','Popoulous','1994-02-12','07981244734','AlexanderPopoulous77@yahooo.com','ZX8 2ZN','French'),
(425,'Hans','Erikson','1982-08-10','07349452622','HansErikson26@gmail.com','JO5 3BZ','German'),
(435,'Alix','Merlot','1986-05-16','07338199275','AlixMerlot80@gmail.com','DG3 5NL','French'),
(827,'Joseph','Alejandro','1961-03-08','07754393395','JosephAlejandro12@hotmail.co.uk','HQ5 2OJ','Spanish'),
(716, 'Angela', 'Vurstein', '1978-04-29', '07856601292', 'AngelaVurstein54@gmail.com', 'CL8 6ST', 'German ');

CREATE TABLE attendance (
  Course_id int NOT NULL,
  Student_id int NOT NULL,
  Number_of_classes int NOT NULL,
  Classes_attended int NOT NULL,
  Seventy_percent_attendance varchar(3) NOT NULL,
  Last_updated date NOT NULL,
  Attendance_id int NOT NULL,
  PRIMARY KEY (Attendance_id),
  FOREIGN KEY (Student_id) REFERENCES Students(Student_id),
  FOREIGN KEY (Course_id) REFERENCES Courses(Course_id)
);

INSERT INTO 
attendance 
(Course_id, Student_id, Number_of_classes, Classes_attended, Seventy_percent_attendance, Last_updated, Attendance_id)
VALUES 
(202,120,2,2,'yes','2022-08-21',1111),
(202,220,2,2,'yes','2022-08-22',1112),
(301,320,2,1,'no','2022-08-23',1113),
(102,420,2,0,'no','2022-08-24',1114),
(201,520,2,2,'yes','2022-08-25',1115),
(303,620,2,1,'no','2022-08-26',1116),
(102,720,2,0,'no','2022-08-27',1117),
(303,820,2,1,'no','2022-08-28',1118),
(303,920,2,2,'yes','2022-08-29',1119),
(101,1020,2,1,'no','2022-08-30',1120),
(101,1120,2,2,'yes','2022-08-31',1121),
(202,1220,2,1,'no','2022-09-01',1122),
(301,1320,2,0,'no','2022-09-02',1123),
(202,1420,2,1,'no','2022-09-03',1124),
(102,1520,2,2,'yes','2022-09-04',1125),
(203,1620,2,0,'no','2022-09-05',1126),
(101,1720,2,2,'yes','2022-09-06',1127),
(201,1820,2,2,'yes','2022-09-07',1128),
(303,1920,2,1,'no','2022-09-08',1129),
(101,2020,2,1,'no','2022-09-09',1130),
(101,2120,2,2,'yes','2022-09-10',1131),
(101,2220,2,0,'no','2022-09-11',1132),
(201,2320,2,1,'no','2022-09-12',1133),
(303,2420,2,1,'no','2022-09-13',1134),
(201,2520,2,2,'yes','2022-09-14',1135),
(203,2620,2,1,'no','2022-09-15',1136),
(103,2720,2,2,'yes','2022-09-16',1137),
(202,2820,2,1,'no','2022-09-17',1138),
(201,2920,2,2,'yes','2022-09-18',1139),
(101,3020,2,2,'yes','2022-09-19',1140),
(103,3120,2,2,'yes','2022-09-20',1141),
(203,3220,2,2,'yes','2022-09-21',1142),
(201,3320,2,2,'yes','2022-09-22',1143),
(203,3420,2,1,'no','2022-09-23',1144),
(302,3520,2,1,'no','2022-09-24',1145);


CREATE TABLE class_schedule (
  Class_id int NOT NULL,
  Course_id int NOT NULL,
  Term_id int NOT NULL,
  Day varchar(45),
  Start_time time NOT NULL,
  End_time time NOT NULL,
  Location_name varchar(45),
  Teacher_id int NOT NULL,
  Last_updated date NOT NULL,
  PRIMARY KEY (Class_id),
  FOREIGN KEY (Course_id) REFERENCES courses (Course_id),
  FOREIGN KEY (Teacher_id) REFERENCES teachers (Teacher_id),
  FOREIGN KEY (Term_id) REFERENCES term_dates (Term_id)
);

INSERT INTO class_schedule 
VALUES 
(1011,101,901,'Tuesday','17:30:00','19:30:00','Emmerson Building',418,'2020-08-21'),
(1021,102,904,'Tuesday','17:30:00','19:30:00','Emmerson Building',390,'2020-08-21'),
(1031,103,907,'Tuesday','17:30:00','19:30:00','Emmerson Building',425,'2020-08-21'),
(2011,201,902,'Wednesday','18:00:00','20:00:00','Bailieu Institute' ,435,'2020-08-21'),
(2021,202,905,'Wednesday','18:00:00','20:00:00','Bailieu Institute' ,382,'2020-08-21'),
(2031,203,908,'Wednesday','18:00:00','20:00:00','Bailieu Institute' ,716,'2020-08-21'),
(3011,301,903,'Thursday','18:30:00','20:30:00','The Theological Archives',435,'2020-08-21'),
(3021,302,906,'Thursday','18:30:00','20:30:00','The Theological Archives',827,'2020-08-21'),
(3031,303,909,'Thursday','18:30:00','20:30:00','The Theological Archives',716,'2020-08-21'),
(1012,101,901,'Monday','17:00:00','19:00:00','Emmerson Building',418,'2020-08-21'),
(1022,102,904,'Monday','17:00:00','19:00:00','Emmerson Building',390,'2020-08-21'),
(1032,103,907,'Monday','17:00:00','19:00:00','Emmerson Building',425,'2020-08-21'),
(2012,201,902,'Tuesday','18:00:00','20:00:00','Bailieu Institute' ,435,'2020-08-21'),
(2022,202,905,'Tuesday','18:00:00','20:00:00','Bailieu Institute' ,382,'2020-08-21'),
(2032,203,908,'Tuesday','18:00:00','20:00:00','Bailieu Institute' ,716,'2020-08-21'),
(3012,301,903,'Friday','17:00:00','19:00:00','The Theological Archives',435,'2020-08-21'),
(3022,302,906,'Friday','17:00:00','19:00:00','The Theological Archives',827,'2020-08-21'),
(3032,303,909,'Friday','17:00:00','19:00:00','The Theological Archives',716,'2020-08-21')
;


CREATE TABLE payments (
  Payment_id int NOT NULL,
  Student_id int NOT NULL,
  Course_id int NOT NULL,
  Account_number int NOT NULL,
  Sort_code varchar(8) NOT NULL,
  Course_fee int NOT NULL,  -- CHANGE TO FLOAT
  PRIMARY KEY (Payment_id),
  FOREIGN KEY (Student_id) REFERENCES students (Student_id),
  FOREIGN KEY (Course_id) REFERENCES courses (Course_id)
);

INSERT INTO payments 
(Payment_id, Student_id, Course_id, Account_number, Sort_code, Course_fee)
VALUES 
(1001,120,202,25554457,'08-02-18',380),
(1002,220,202,23129287,'02-45-21',380),
(1003,320,301,40644499,'09-21-44',410),
(1004,420,102,22667115,'07-05-56',330),
(1005,520,201,69899018,'31-03-21',380),
(1006,620,303,26007564,'05-04-96',410),
(1007,720,102,10434387,'12-09-17',330),
(1008,820,303,48779946,'04-13-22',410),
(1009,920,303,84227517,'93-52-02',410),
(1010,1020,101,56531891,'02-05-73',330),
(1011,1120,101,14889170,'19-85-18',330),
(1012,1220,202,67221485,'50-11-69',380),
(1013,1320,301,74475996,'69-24-66',410),
(1014,1420,202,45265744,'37-67-70',380),
(1015,1520,102,18753925,'59-98-86',330),
(1016,1620,203,17684944,'95-44-64',380),
(1017,1720,101,88770655,'82-84-09',330),
(1018,1820,201,79779537,'93-30-45',380),
(1019,1920,303,64285640,'54-53-33',410),
(1020,2020,101,17762412,'44-16-52',330),
(1021,2120,101,12098640,'61-58-07',330),
(1022,2220,101,54939170,'56-97-65',330),
(1023,2320,201,69997385,'16-52-90',380),
(1024,2420,303,97546951,'13-21-44',410),
(1025,2520,201,23025866,'04-53-62',380),
(1026,2620,203,24699642,'52-60-55',380),
(1027,2720,103,60399635,'86-43-54',330),
(1028,2820,202,67369890,'12-61-36',380),
(1029,2920,201,87719857,'87-49-68',380),
(1030,3020,101,18166888,'97-96-78',330),
(1031,3120,103,77087186,'85-52-95',330),
(1032,3220,203,68845154,'90-70-21',380),
(1033,3320,201,92495180,'75-91-91',380),
(1034,3420,203,17536766,'08-10-82',380),
(1035,3520,302,15477241,'18-99-55',410);


CREATE TABLE placement_test_scores (
  Student_id int NOT NULL,
  Language varchar(45) NOT NULL,
  Reading_Score int DEFAULT NULL,
  Writing_Score int DEFAULT NULL,
  Speaking_Score int DEFAULT NULL,
  Total_Score int NOT NULL,
  Level_Allocation varchar(45) NOT NULL,
  Placement_id int NOT NULL,
  PRIMARY KEY (Placement_id),
  FOREIGN KEY (Student_id) REFERENCES Students(Student_id)
);

INSERT INTO placement_test_scores 
(Student_id, Language, Reading_Score, Writing_Score, Speaking_Score, Total_Score, Level_Allocation, Placement_id)
VALUES 
(120,'Spanish',10,10,18,43,'Intermediate',2221),
(220,'Spanish',65,72,69,69,'Intermediate',2222),
(320,'French',92,81,89,87,'Advanced',2223),
(420,'Spanish',24,15,20,20,'Beginner',2224),
(520,'French',55,38,34,42,'Intermediate',2225),
(620,'German',88,71,71,77,'Advanced',2226),
(720,'Spanish',23,31,41,32,'Beginner',2227),
(820,'German',87,81,77,82,'Advanced',2228),
(920,'German',68,73,71,71,'Advanced',2229),
(1020,'French',21,27,32,27,'Beginner',2230),
(1120,'French',33,22,55,37,'Beginner',2231),
(1220,'Spanish',52,50,51,51,'Intermediate',2232),
(1320,'French',88,91,74,84,'Advanced',2233),
(1420,'Spanish',82,29,75,62,'Intermediate',2234),
(1520,'Spanish',38,39,16,31,'Beginner',2235),
(1620,'German',3,99,80,61,'Intermediate',2236),
(1720,'French',38,23,12,24,'Beginner',2237),
(1820,'French',11,17,20,16,'Beginner',2238),
(1920,'German',99,90,57,82,'Advanced',2239),
(2020,'French',11,5,29,15,'Beginner',2240),
(2120,'French',37,37,38,37,'Beginner',2241),
(2220,'French',58,30,31,40,'Beginner',2242),
(2320,'French',74,10,91,58,'Intermediate',2243),
(2420,'German',96,60,62,73,'Advanced',2244),
(2520,'French',57,85,59,67,'Intermediate',2245),
(2620,'German',83,2,36,40,'Intermediate',2246),
(2720,'German',12,44,26,27,'Beginner',2247),
(2820,'Spanish',82,67,45,65,'Intermediate',2248),
(2920,'French',53,66,67,62,'Intermediate',2249),
(3020,'French',35,17,23,25,'Beginner',2250),
(3120,'German',13,22,18,18,'Beginner',2251),
(3220,'German',91,26,65,61,'Intermediate',2252),
(3320,'French',56,39,91,62,'Intermediate',2253),
(3420,'German',49,22,90,54,'Intermediate',2254),
(3520,'Spanish',60,62,99,74,'Advanced',2255);

ALTER TABLE term_dates
ADD CONSTRAINT Course_id
FOREIGN KEY (Course_id)
REFERENCES courses(Course_id);

