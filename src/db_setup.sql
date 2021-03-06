
create Table BimsRange (RangeID int AUTO_INCREMENT primary key,
    dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    scrn1_to_scrn2 float, scrn2_to_target float,
    mid_to_scrn2 float, muz_to_mid float);

insert into BimsRange (scrn1_to_scrn2, scrn2_to_target, mid_to_scrn2, muz_to_mid)
    values (36.5, 20, 18.5, 72),
           (38.25, 20, 19.5, 96.25);

create Table Environment (EnvID int AUTO_INCREMENT primary key,
    barPress float,
    humidityPercent float,
    tempFloat float);

insert into Environment (humidityPercent, tempFloat)
    values (29.85, 5.8, 72),
           (28.5, 15.2, 85.5);

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
    magrawdat float,
    obliquity int(3),
    backingID varchar(20),
    rangeID int(11),
    ballistician varchar(30),
    envID int(11),
    fabricID varchar(30),
    projoID int(4),
    grains int(6),
    powder varchar(30)
                  );
insert into shot(ShotDate, scrset1rawdat, scrset2rawdat,
                 magrawdat, obliquity, backingID, rangeID,
                 ballistician, envID, fabricID, projoID,
                 grains, powder)
    values ('2020-03-29 19:56:42', 0.023453456, 0.073453441, 0.073423457,
            90, 'Air', 12, 'Luke Jeter', 1, 'fabric 1', 17, 147, 'Accurate #9'),
           ('2020-03-30 14:30:42', 0.523453456, 0.723453441, 0.623423457,
            90, 'Aluminum', 13, 'Eric Key', 1, 'second fabric', 33, 147, 'Hi-Skor 700x'),
           ('2020-02-20 17:56:42', 0.023253456, 0.063453441, 0.073423457,
            90, 'Clay', 12, 'Luke Jeter', 1, 'fabric 1', 17, 125, 'Accurate #9'),
           ('2020-01-18 14:33:43', 0.523253456, 0.523453441, 0.423423457,
            90, 'Aluminum', 13, 'Eric Key', 1, 'second fabric', 33, 147, 'Hi-Skor 700x'),
           ('2019-03-29 18:56:42', 0.043453456, 0.043453441, 0.053423457,
            90, 'Clay', 12, 'Luke Jeter', 2, 'fabric 1', 17, 158, 'Accurate #9'),
           ('2020-03-29 14:40:42', 0.223453456, 0.323453441, 0.223423457,
            90, 'Aluminum', 13, 'Eric Key', 1, 'second fabric', 33, 147, 'IMR-4756');

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



create table fabric (fabric_id varchar(30) primary key, fabric_descript varchar(120));

insert into fabric (fabric_id, fabric_descript)
    values('fabric 1', 'Test fabric number 1'),
           ('second fabric', 'Fabric 2 test description');

Create table ply (
    ply_descript varchar(120),
    fiber_style varchar(30),
    fiber_type varchar(30),
    ply_weight int(5),
    fabric_id varchar(30),
    ply_id int auto_increment primary key,
    CONSTRAINT FK_ply_fabric FOREIGN KEY (fabric_id) references fabric (fabric_id)
    );

insert into ply(ply_descript, fiber_style, fiber_type, ply_weight, fabric_id)
    values ('test ply description', 'multi axial', 'Spectra', 10, 'fabric 1'),
           ('another ply description', 'uni-directional', 'Twaron', 30, 'fabric 1'),
           ('test ply for second fabric described here', 'multi axial', 'Spectra', 5, 'second fabric'),
           ('There are a lot of plies in this fabric', 'woven', 'Kevlar', 12, 'fabric 1'),
           ('test ply description','multi axial','Spectra',10,'second fabric');

Create table projects (
    project_descript varchar(120),
    client_id varchar(30),
    project_id varchar(30) primary key);


Create table sample (
    sample_description varchar(30),
    backing varchar(20),
    sample_type varchar(30),
    manufacturer varchar(30),
    dimensions_w int(4),
    dimensions_h int(4),
    fabric_id varchar(30),
    project_id varchar(30),
    sample_id int auto_increment primary key,
    CONSTRAINT FK_sample_backing FOREIGN KEY (backing)
    REFERENCES backings(backing),
    CONSTRAINT FK_sample_samplyType FOREIGN KEY (sample_type)
    REFERENCES sample_types(type_name),
    CONSTRAINT FK_sample_manufacturer FOREIGN KEY (manufacturer)
    REFERENCES manufacturers(Mfr_name),
    CONSTRAINT FK_sample_project FOREIGN KEY (project_id)
    REFERENCES projects(project_id),
    CONSTRAINT FK_sample_fabric FOREIGN KEY (fabric_id)
    REFERENCES fabric(fabric_id)
    );