drop database if exists testt;
create database testt;
use testt;
create table alumnos (
id int(10) primary key,
nombre varchar(25) not null,
apellido_p varchar(25) not null,
apellido_m varchar(25) not null,
nota int(10) not null);
describe alumnos;
create table registro_alumnos (
new_id int(10) primary key,
new_nombre varchar(25) not null,
new_apellido_p varchar(25) not null,
new_apellido_m varchar(25) not null,
new_nota int(10) not null);
describe registro_alumnos;
create trigger registrar_alumnos_AI after insert on alumnos
for each row
insert into registro_alumnos
values(
new.id,
new.nombre,
new.apellido_p,
new.apellido_m,
new.nota);
drop trigger registrar_alumnos_AI;
DELIMITER $$
create trigger nota_BI before insert on alumnos
for each row
begin
  if new.nota<5 then
  set new.nota = 5;
  end if;
  if new.nota>=10 then 
  set new.nota = 10;
  end if;
  end$$
  DELIMITER $$
  DELIMITER $$
create trigger nota_act_BU before update on alumnos
for each row
begin
  if new.nota<5 then
  set new.nota = 5;
  end if;
  if new.nota>=10 then 
  set new.nota = 10;
  end if;
  end$$
  DELIMITER $$
    update alumnos set nota = 3 where id= 4;
select * from alumnos;
  
  




