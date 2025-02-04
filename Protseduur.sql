
-- SQL salvestatud protseduur - funktsioon, mis käivitab serveris mitu SQL tegevust järjest
-- Kasutame SQL Server

create database protseduurAliev;
use protseduurAliev;
Create table linn(
linnId int Primary Key identity (1,1),
linnNimi varchar(30),
rahvaArv int);
-- ниже показывает табличку
Select * from linn;
Insert into linn(linnNimi, rahvaArv)
Values ('Narva', 10000)
--Protseduuri loomine
--protseduur, mis lisab uus linn ja kohe näitab tabelis

create procedure LisaLinn
@inim varchar(30),
@rarv int
as
begin

Insert into linn(linnNimi, rahvaArv)
Values(@inim, @rarv);
select * from linn;

end;

--protseduuri kutse
exec LisaLinn @inim = 'Paide', @rArv = 13337
--lihtsam
exec LisaLinn 'Tarty228', 1256
--kirje kustutamine
delete from linn where linnId = 3;

--protseduur, mis kutsutab Linn id järgi
create procedure kutsutaLinn
@delete int 
as
begin
select * from linn;
delete from linn where linnId = @delete;
select * from linn;
end;

--kutse
exec kutsutaLinn 6;
--proceduri kustutamine
drop procedure kutsutaLinn;

--protseduur, mis otsib linn esimese tähte järgi
create procedure linnaotsin
@taht char(1)
as
begin
select * from linn
where linnNimi like @taht + '%';
--% - kõik teised tähed 
end;
-- kutse
exec linnaotsin T;
