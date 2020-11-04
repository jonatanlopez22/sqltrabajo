create database aeropuerto
use aeropuerto
create table piloto(
id_piloto int,
nom_piloto varchar(10),
horasvuelo float,
constraint sda1 primary key (id_piloto))

create table tripulacion(
id_tripulacion int,
nom_tripulacion varchar(10),
constraint swda1 primary key (id_tripulacion))

create table avion(
placa_avion int,
nom_avion varchar(10),
constraint sdaq1 primary key (placa_avion))

create table vuelo(
id_vuelo int,
origen varchar(10),
destino varchar(10),
hora_deter datetime,
placa_avion1 int,
constraint sdasq1 primary key (id_vuelo),
constraint sdsaaq1 foreign key (placa_avion1) references avion(placa_avion))

create table base(
id_base int,
nom_base varchar(10),
constraint sdaa2 primary key (id_base))

create table piloto_vuelo(
id_piloto1 int,
id_vuelo1 int,
constraint sdsssaaq1 foreign key (id_piloto1) references piloto(id_piloto),
constraint sdreaq1 foreign key (id_vuelo1) references vuelo(id_vuelo))

create table avion_base(
placa_avion2 int,
id_base1 int,
constraint xssaaq1 foreign key (placa_avion2) references avion(placa_avion),
constraint sdrx1 foreign key (id_base1) references base(id_base))

create table tripulacion_vuelo(
id_tripulacion1 int,
id_vuelo2 int,
constraint qsaaq1 foreign key (id_tripulacion1) references tripulacion(id_tripulacion),
constraint sqrx1 foreign key (id_vuelo2) references vuelo(id_vuelo))


select * from avion
insert into avion values(1,'a')
insert into avion values(2,'a')

select * from base
insert into base values(101,'b')
insert into base values(102,'b')

select * from piloto
insert piloto  values(201,'juan',100)
insert piloto  values(202,'carlos',120)

select * from tripulacion
insert tripulacion  values(301,'camila')
insert tripulacion  values(302,'jose')

select * from vuelo
insert vuelo  values(401,'cali','paris',11,1)
insert vuelo  values(402,'bogota','roma',12,2)

select * from piloto_vuelo
insert piloto_vuelo  values(201,401)
insert piloto_vuelo  values(202,402)

select * from tripulacion_vuelo
insert tripulacion_vuelo  values(301,401)
insert tripulacion_vuelo  values(302,402)

select * from avion_base
insert avion_base  values(1,101)
insert avion_base  values(2,102)
