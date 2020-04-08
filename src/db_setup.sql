CREATE TABLE user (userID int, loginID varchar(256) PRIMARY KEY,
loginPWD varchar(256),
firstName varchar(20),
lastName varchar(20),
lastModified DATETIME);

INSERT INTO user(userID, loginID, loginPWD, firstName, lastName)
VALUES (1, 'admin', 'password', 'Admin', 'User'),
       (2, 'coffee247', 'clearpass', 'James', 'Stallings');

CREATE VIEW users_List_View AS
    SELECT CONCAT(firstName, ' ',
        lastName, ': (', LoginID, ')') AS "Full_Name",
           LoginID AS "Login ID" FROM user ORDER BY lastName, firstName;

CREATE TRIGGER `User_Modified_Trigger`
    BEFORE UPDATE ON `user`
    FOR EACH ROW
    SET new.lastmodified = CURRENT_TIMESTAMP;

create Table BimsRange (RangeID int AUTO_INCREMENT primary key,
    dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    scrn1_to_scrn2 float, scrn2_to_target float,
    mid_to_scrn2 float, muz_to_mid float);

insert into BimsRange (scrn1_to_scrn2, scrn2_to_target, mid_to_scrn2, muz_to_mid)
    values (36, 20, 18, 72),
           (38, 20, 19, 96);

create Table Environment (EnvID int AUTO_INCREMENT primary key,
    humidityPercent float,
    tempFloat float);

insert into Environment (humidityPercent, tempFloat)
    values (5.8, 72),
           (15.2, 85.5);

create TABLE threatGrain (grain int(6) primary key);

INSERT INTO threatGrain(grain)
    VALUES (240),
           (147),
           (61),
           (124),
           (158),
           (125),
           (180);

create Table shot (SHOTID int AUTO_INCREMENT primary key,
    ShotDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    scrset1rawdat float,
    scrset2rawdat float,
    magrawdat float);

insert into shot(ShotDate, scrset1rawdat, scrset2rawdat, magrawdat)
    values ('2020-03-29 19:56:42', 0.023453456, 0.023453441, 0.023423457),
           ('2020-03-30 14:30:42', 0.523453456, 0.623453441, 0.723423457);

create Table querries (Descr varchar(256) primary key, TheQuery varchar(512));

insert into querries(Descr, TheQuery)
    values ('Show all shots (order by date)', 'select * from shot order by ShotDate ASC'), ('Show all shots (order by descending date)', 'select * from shot order by ShotDate DESC'),('List 44 mag (order by mass ASC)', 'select * from projo where projectileType like \'%44%ag%\' order by projo_mass asc');

create TABLE ballisticians (ballistician varchar(30) primary key);

INSERT INTO ballisticians(ballistician) VALUES ('Luke Jeter'),('Eric Key'), ('Luke Jeter - Eric Key');

create TABLE threatPowder (powderType varchar(30) primary key);

INSERT INTO threatPowder(powderType)
    VALUES ('Accurate #2'),
           ('Accurate #9'),
           ('Alliant Herc. Bullseye'),
           ('Alliant 2400'),
           ('Hercules'),
           ('Hi-Skor 700x'),
           ('Hi-Skor 800x'),
           ('IMR-4198'),
           ('IMR-4756'),
           ('IMR-4895'),
           ('Power Pistol'),
           ('Winchester Ball'),
           ('Winchester 231'),
           ('Winchester 296');

CREATE TABLE projo (projectileType varchar(20),
    projo_mass float,
    projo_DragCoef float,
    projectile_ID int(4) unique key auto_increment,
    primary key(projectileType, projo_mass, projo_DragCoef));

INSERT INTO projo(projectileType, projo_mass, projo_DragCoef)
    VALUES ('44 mag JSP', 8.1, 0.023),
           ('9mm Luger', 5.6, 0.0005),
           ('7.62 AP', 7.75, 0.003),
           ('0.44 Rem Mag', 0.0, 0.0),
           ('5.56 AP', 0.0, 0.0),
           ('.357 SIG', 0.0, 0.0),
           ('0.357 MAG JHP', 0.0, 0.0),
           ('40 S&W', 0.0, 0.0),
           ('.223 JHP', 0.0, 0.0),
           ('.308 FMJ (1992)', 0.0, 0.0),
           ('.308 FMJ Ball', 0.0, 0.0),
           ('.308 JSP', 0.0, 0.0),
           ('.38 SPECIAL', 0.0, 0.0),
           ('.438 sab. FSP', 0.0, 0.0),
           ('.438 sab. RCC', 0.0, 0.0),
           ('30.06 M2 AP', 0.0, 0.0),
           ('357 MAGNUM', 0.0, 0.0),
           ('5.56 NATO / 223', 0.0, 0.0),
           ('7.62 / 308 Win', 0.0, 0.0),
           ('9mm FMJ (38 cal)', 0.0, 0.0),
           ('9mm FMJ (9 mm)', 0.0, 0.0);

CREATE TABLE fiber_types (fiberType varchar(30) primary key);

INSERT INTO fiber_types (fiberType) VALUES ('Kevlar'), ('Spectra'), ('Twaron'), ('Dyneema');

UPDATE user SET firstName = 'Jimmy' where loginID = 'coffee247';

create TABLE backings (backing varchar(20) primary key);

INSERT INTO backings (backing)
    VALUES ('Clay'), ('Aluminum'), ('Air');

create table manufacturers (Mfr_name varchar(30) primary key);

insert into manufacturers (Mfr_name)
    values ('JPS'),
           ('Lincoln Fabrics'),
           ('DuPont'),
           ('Honeywell'),
           ('Artec'),
           ('Saint Gobian');

create table sample_types (type_name varchar(30) primary key);

insert into sample_types (type_name)
    values ('Vest'),
           ('Helmet'),
           ('Shield'),
           ('Plate');


create table fiber_styles (style_name varchar(30) primary key);

insert into fiber_styles (style_name) values ('woven'), ('uni directional'), ('multi axial');