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
