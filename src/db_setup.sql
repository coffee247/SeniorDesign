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

create TABLE curDefaults (grain int(6), powder varchar(30), projectile varchar(20));

insert into curDefaults(grain, powder, projectile) VALUES (158, 'Accurate #9', '44 mag');

create TABLE threatPowder (powderType varchar(30) primary key);

INSERT INTO threatPowder(powderType) VALUES ('Accurate #2'),('Accurate #1'),('Accurate #7'),('Accurate #9'),('Accurate 4100'),('Accurate 11FS'),('Accurate TCM');

CREATE TABLE projo (projectileType varchar(20) primary key, projo_mass float, projo_DragCoef float);

INSERT INTO projo(projectileType, projo_mass, projo_DragCoef) VALUES ('44 mag', 0.0, 0.0),('9mm Luger', 0.0, 0.0),('7.62 AP', 0.0, 0.0),('0.44 Rem Mag', 0.0, 0.0),('5.56 AP', 0.0, 0.0),('.357 SIG', 0.0, 0.0),('0.357 MAG', 0.0, 0.0),('40 S&W', 0.0, 0.0);

UPDATE user SET firstName = 'Jimmy' where loginID = 'coffee247'

