CREATE TABLE user (userID int, loginID varchar(256) PRIMARY KEY, loginPWD varchar(256), firstName varchar(20), lastName varchar(20), lastModified DATETIME);

INSERT INTO user(userID, loginID, loginPWD, firstName, lastName) VALUES (1, 'admin', 'password', 'Admin', 'User'),(2, 'coffee247', 'clearpass', 'James', 'Stallings');

CREATE VIEW users_List_View AS SELECT CONCAT(firstName, ' ', lastName, ': (', LoginID, ')') AS "Full_Name", LoginID AS "Login ID" FROM user ORDER BY lastName, firstName;

CREATE TRIGGER `User_Modified_Trigger` BEFORE UPDATE ON `user` FOR EACH ROW SET new.lastmodified = CURRENT_TIMESTAMP;

create Table BimsRange (RangeID int AUTO_INCREMENT primary key, dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP, scrn1_to_scrn2 float, scrn2_to_target float, mid_to_scrn2 float, muz_to_mid float);

insert into BimsRange (scrn1_to_scrn2, scrn2_to_target, mid_to_scrn2, muz_to_mid) values (36, 20, 18, 72), (38, 20, 19, 96);

create Table Environment (EnvID int AUTO_INCREMENT primary key, humidityPercent float, tempFloat float);

insert into Environment (humidityPercent, tempFloat) values (5.8, 72), (15.2, 85.5);

create TABLE threatGrain (grain int(6) primary key);

INSERT INTO threatGrain(grain) VALUES (240),(147),(61),(124),(158),(125),(180);

create Table shot (SHOTID int AUTO_INCREMENT primary key, ShotDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, scrset1rawdat float, scrset2rawdat float, magrawdat float);

insert into shot(ShotDate, scrset1rawdat, scrset2rawdat, magrawdat) values ('2020-03-29 19:56:42', 0.023453456, 0.023453441, 0.023423457),('2020-03-30 14:30:42', 0.523453456, 0.623453441, 0.723423457);

create Table querries (Descr varchar(256) primary key, TheQuery varchar(512));

insert into querries(Descr, TheQuery) values ('Show all shots (order by date)', 'select * from shot order by ShotDate ASC'), ('Show all shots (order by descending date)', 'select * from shot order by ShotDate DESC'),('List 44 mag (order by mass ASC)', 'select * from projo where projectileType like \'%44%ag%\' order by projo_mass asc');

create TABLE ballisticians (ballistician varchar(20) primary key);

INSERT INTO ballisticians(ballistician) VALUES ('Luke Jeter'),('James Stallings'),('Micah Parks');

create TABLE threatPowder (powderType varchar(30) primary key);

INSERT INTO threatPowder(powderType) VALUES ('Accurate #2'),('Accurate #1'),('Accurate #7'),('Accurate #9'),('Accurate 4100'),('Accurate 11FS'),('Accurate TCM');

CREATE TABLE projo (projectileType varchar(20), projo_mass float, projo_DragCoef float, primary key(projectileType, projo_mass, projo_DragCoef));

INSERT INTO projo(projectileType, projo_mass, projo_DragCoef) VALUES ('44 mag', 8.1, 0.023),('9mm Luger', 5.6, 0.0005),('7.62 AP', 7.75, 0.003),('0.44 Rem Mag', 0.0, 0.0),('5.56 AP', 0.0, 0.0),('.357 SIG', 0.0, 0.0),('0.357 MAG', 0.0, 0.0),('40 S&W', 0.0, 0.0);

CREATE TABLE fabrics (fabricType varchar(30) primary key);

INSERT INTO fabrics (fabricType) VALUES ('Kevlar Ballistic Fiber');

UPDATE user SET firstName = 'Jimmy' where loginID = 'coffee247'


