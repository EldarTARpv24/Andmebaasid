--AB loomine
Create database AlievBaas;

use AlievBaas;
CREATE TABLE opilane(
opilaneId int primary key identity(1,1),
eesnimi varchar(25) not null,
perenimi varchar(25) not null,
synniaeg date,
stip bit,
aadress text,
keskmine_hinne decimal(2,1)
)
select * from opilane;
--andmete lisamine tabelisse
INSERT INTO opilane(eesnimi,
perenimi,
synniaeg,
stip,
keskmine_hinne)
VALUES(
'Eldar',
'Eldar',
'2003-05-04',
1,
4.5),
(
'Eldar2',
'Eldar2',
'2003-05-04',
1,
4.5),
(
'Eldar3',
'Eldar3',
'2003-05-04',
1,
4.5),
(
'Eldar4',
'Eldar4',
'2003-05-04',
1,
4.5),
(
'Eldar5',
'Eldar5',
'2003-05-04',
1,
4.5)

--tabell kustutamine
-- drop table opilane(почистить таблицу)
--rida kustutamine, kuson opilaneId=2
DELETE FROM opilane WHERE opilaneId=2;

--andmete uuendamine
UPDATE opilane SET aadress ='Tallinn'
WHERE opilaneId=3

CREATE TABLE Language
(
ID int NOT NULL PRIMARY KEY,
Code char(3) NOT NULL,
Language varchar(50) NOT NULL,
IsOfficial bit,
Percentage smallint
);
select * from Language

insert into Language(ID, Code, Language)
values(1, 'EST', 'eesti'), (2, 'RUS', 'vene'), (3, 'ENG', 'inglise'), (4, 'DE', 'saksa')

create table keeleValik(
keeleValikId int primary key identity(1,1),
valikuNimetus varchar(10) not null,
opilaneId int,
foreign key (opilaneId) references opilane(opilaneId),
Language int,
Foreign key (Language) references Language(ID)
)
select * from keeleValik;
select * from Language;
select * from opilane;

insert into keeleValik(valikuNimetus, opilaneId, Language)
values('valik B', 2, 2)

select opilane.eesnimi, Language.Language
from opilane, Language, keeleValik
where opilane.opilaneId = keeleValik.opilaneId
and Language.ID=keeleValik.Language

select *
from opilane, Language, keeleValik
where opilane.opilaneId = keeleValik.opilaneId
and Language.ID=keeleValik.Language

create table oppimine(
oppimineId int primary key identity(1,1),
aine varchar(10) not null,
opilaneId int,
hinne int,
opetaja varchar(20)
foreign key (opilaneId) references opilane(opilaneId)
)

insert into oppimine(aine, opilaneId, hinne,opetaja)
values('Math', 1, 5, 'Merk')

select * from oppimine;

drop table oppimine
