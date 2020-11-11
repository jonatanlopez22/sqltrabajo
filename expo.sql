create database cyberGamesX

use cyberGamesX


create table cliente(
id_cliente int,
saldo float,
juegos varchar(100),
pedirSoporte varchar(50),
constraint cli1 primary key (id_cliente))

create table entrenador(
id_entrenador int,
salario int,
constraint entre1 primary key (id_entrenador))

 create table administrador(
id_admin int,
soporte varchar(50),
constraint admin1 primary key (id_admin))

create table clan(
id_clan int,
equipo varchar(100),
id_cliente1 int,
id_entrenador1 int,
id_admin1 int
constraint cla1 primary key (id_clan),
constraint cla2 foreign key (id_cliente1) references cliente(id_cliente),
constraint cla3 foreign key (id_entrenador1) references entrenador(id_entrenador))

create table usuario(
id_usuario int,
nombre varchar(100),
telefono varchar(100),
correo varchar(100),
id_admin1 int,
id_cliente2 int,
id_entrenador3 int,
constraint usu1 primary key (id_usuario),
constraint usu2 foreign key (id_admin1) references administrador (id_admin),
constraint usu3 foreign key (id_cliente2) references cliente(id_cliente),
constraint usu4 foreign key (id_entrenador3) references entrenador(id_entrenador))

create table juegos(
id_juegos int,
nom_juego varchar (50),
tipo varchar (50),
constraint event1 primary key (id_juegos))

create table ranking(
id_ranking int,
id_cliente4 int,
id_clan1 int,
id_juego1 int,
constraint service1 primary key (id_ranking),
constraint ra1 foreign key (id_cliente4) references cliente(id_cliente),
constraint ra2 foreign key (id_juego1) references juegos(id_juegos),
constraint ra3 foreign key (id_clan1) references clan(id_clan))

create table eventos(
id_evento int,
torneos varchar(10),
lanparty varchar(100),
id_ranking1 int,
id_juegos2 int,
premios varchar(100),
constraint even1 primary key (id_evento),
constraint even2 foreign key (id_juegos2) references juegos(id_juegos),
constraint even3 foreign key (id_ranking1) references ranking(id_ranking))



create table servicio(
id_servicio int,
valorHora float,
reserva varchar(10),
id_admin3 int,
constraint ser1 primary key (id_servicio),
constraint ser2 foreign key (id_admin3) references administrador(id_admin))


create table transaccion(
id_transaccion int,
fecha varchar(10),
monto float,
id_cliente5 int,
id_admin2 int
constraint tr1 primary key (id_transaccion),
constraint tr2 foreign key (id_cliente5) references cliente(id_cliente),
constraint tr3 foreign key (id_admin2) references administrador(id_admin))

/*   se crean tablas intermedias        */



create table servicio_evento(
id_servicio2 int,
id_evento1 int,
constraint userClient1 foreign key (id_servicio2) references servicio(id_servicio),
constraint userclient2 foreign key (id_evento1) references eventos(id_evento))

create table servicio_cliente(
id_servicio1 int,
id_cliente6 int,
constraint sercli1 foreign key (id_servicio1) references servicio(id_servicio),
constraint sercli2 foreign key (id_cliente6) references cliente(id_cliente))


/*   se llenan las tablas     */



select * from cliente
insert into cliente values(101,10000,'HALO','SI')
insert into cliente values(102,20000,'LOL','SI')

select * from administrador
insert into administrador values(301,'PC-1 BUENO')
insert into administrador values(302,'PC-2 BUENO')

select * from entrenador
insert into entrenador values(201,760000)
insert into entrenador values(202,760000)

select * from clan
insert into clan values(1,'Ateam',101,201,301)
insert into clan values(2,'Bteam',102,202,302)

select * from juegos
insert into juegos values(601,'HALO','FPS')
insert into juegos values(602,'LOL','MOBA')
insert into juegos values(603,'COD','FPS')
insert into juegos values(604,'FIFA','SPORT')

select * from usuario
insert into usuario values(111,'JUAN','1234455','JUAN@GMAIL.COM',NULL,NULL,201)
insert into usuario values(222,'ANA','33334343','ANA@GMAIL.COM',null,null,202)
insert into usuario values(333,'JAIME','44343455','JAIME@GMAIL.COM',301,NULL,NULL)





select * from eventos
insert into servicio values(701,'ESEA','NO',501,601,'1PR-100 TOKENS,2PR-80 TOKENS ,3PR-50 TOKENS')
insert into servicio values(701,'ESEA','SI',501,602,'1PR-100 TOKENS,2PR-80 TOKENS ,3PR-50 TOKENS')

create database cyberGamesX

use cyberGamesX


create table cliente(
id_cliente int,
saldo float,
juegos varchar(100),
pedirSoporte varchar(50),
constraint cli1 primary key (id_cliente))

create table entrenador(
id_entrenador int,
salario int,
constraint entre1 primary key (id_entrenador))

 create table administrador(
id_admin int,
soporte varchar(50),
constraint admin1 primary key (id_admin))

create table clan(
id_clan int,
equipo varchar(100),
id_cliente1 int,
id_entrenador1 int,
id_admin1 int
constraint cla1 primary key (id_clan),
constraint cla2 foreign key (id_cliente1) references cliente(id_cliente),
constraint cla3 foreign key (id_entrenador1) references entrenador(id_entrenador))

create table usuario(
id_usuario int,
nombre varchar(100),
telefono varchar(100),
correo varchar(100),
id_admin1 int,
id_cliente2 int,
id_entrenador3 int,
constraint usu1 primary key (id_usuario),
constraint usu2 foreign key (id_admin1) references administrador (id_admin),
constraint usu3 foreign key (id_cliente2) references cliente(id_cliente),
constraint usu4 foreign key (id_entrenador3) references entrenador(id_entrenador))

create table juegos(
id_juegos int,
nom_juego varchar (50),
tipo varchar (50),
constraint event1 primary key (id_juegos))

create table ranking(
id_ranking int,
id_cliente4 int,
id_clan1 int,
id_juego1 int,
constraint service1 primary key (id_ranking),
constraint ra1 foreign key (id_cliente4) references cliente(id_cliente),
constraint ra2 foreign key (id_juego1) references juegos(id_juegos),
constraint ra3 foreign key (id_clan1) references clan(id_clan))

create table eventos(
id_evento int,
torneos varchar(10),
lanparty varchar(100),
id_ranking1 int,
id_juegos2 int,
premios varchar(100),
constraint even1 primary key (id_evento),
constraint even2 foreign key (id_juegos2) references juegos(id_juegos),
constraint even3 foreign key (id_ranking1) references ranking(id_ranking))



create table servicio(
id_servicio int,
valorHora float,
reserva varchar(10),
id_admin3 int,
constraint ser1 primary key (id_servicio),
constraint ser2 foreign key (id_admin3) references administrador(id_admin))


create table transaccion(
id_transaccion int,
fecha varchar(10),
monto float,
id_cliente5 int,
id_admin2 int
constraint tr1 primary key (id_transaccion),
constraint tr2 foreign key (id_cliente5) references cliente(id_cliente),
constraint tr3 foreign key (id_admin2) references administrador(id_admin))


create table transaccion_administrador(
id_transaccion2 int,
id_admin4 int,
constraint ta1 foreign key (id_transaccion2) references transaccion(id_transaccion),
constraint ta2 foreign key (id_admin4) references administrador(id_admin))


/*   se crean tablas intermedias        */



create table servicio_evento(
id_servicio2 int,
id_evento1 int,
constraint userClient1 foreign key (id_servicio2) references servicio(id_servicio),
constraint userclient2 foreign key (id_evento1) references eventos(id_evento))

create table servicio_cliente(
id_servicio1 int,
id_cliente6 int,
constraint sercli1 foreign key (id_servicio1) references servicio(id_servicio),
constraint sercli2 foreign key (id_cliente6) references cliente(id_cliente))


/*   se llenan las tablas     */



select * from cliente
insert into cliente values(101,10000,'HALO','SI')
insert into cliente values(102,20000,'LOL','SI')

select * from administrador
insert into administrador values(301,'PC-1 BUENO')
insert into administrador values(302,'PC-2 BUENO')

select * from entrenador
insert into entrenador values(201,760000)
insert into entrenador values(202,760000)

select * from clan
insert into clan values(1,'Ateam',101,201,301)
insert into clan values(2,'Bteam',102,202,302)

select * from juegos
insert into juegos values(601,'HALO','FPS')
insert into juegos values(602,'LOL','MOBA')
insert into juegos values(603,'COD','FPS')
insert into juegos values(604,'FIFA','SPORT')

select * from usuario
insert into usuario values(111,'JUAN','1234455','JUAN@GMAIL.COM',NULL,NULL,201)
insert into usuario values(222,'ANA','33334343','ANA@GMAIL.COM',null,null,202)
insert into usuario values(333,'JAIME','44343455','JAIME@GMAIL.COM',101,NULL,NULL)


select * from servicio
insert into servicio values(401,12000,'SI',301) /*  ED CAMPO */
insert into servicio values(402,35000,'SI',302)

select * from ranking
insert into ranking values(501,101,1,601)
insert into ranking values(502,102,2,602)

select * from transaccion
insert into transaccion values(901,'22-12-2020',150000,101,301)
insert into transaccion values(902,'23-12-2020',320000,102,302)

select * from eventos
insert into eventos values(701,'ESEA','NO',501,601,'1-100 TOKENS,2-80 TOKENS,3-50 TOKENS')
insert into eventos values(702,'ESEA','SI',502,602,'1-100 TOKENS,2-80 TOKENS,3-50 TOKENS')

select * from servicio_cliente
insert into servicio_cliente values(101,401)
insert into servicio_cliente values(102,402)


select * from servicio_evento
insert into servicio values(401,701)
insert into servicio values(402,702)

select * from servicio_cliente
insert into servicio_cliente values(401,101)
insert into servicio_cliente values(402,102)

select * from transaccion_administrador
insert into transaccion_administrador values(301,301)
insert into transaccion_administrador values(302,302)


select * from servicio_evento
insert into servicio_evento values(401,701)
insert into servicio_evento values(402,702)


 /*  SE MODIFICA EL TIPO DE CAMPO */
 alter table eventos alter column lanparty varchar(5)



  /*  SE SE ELIMINAN LOS CAMPOS CAMPO */
 delete transaccion_administrador



  /*  SE MODIFICAN LOS DATOS DEL CAMPO */
  update eventos set torneos='SAS'



   /*  SE RENOMBRA CAMPO DE LA TABLA SERVICIO */
  select * from servicio
  EXEC sp_rename'servicio.valorHora','varoTiempo'
  select * from servicio


  /*  SE BUSCA CAMPO DE LA TABLA USUARIO */
  select * from usuario
  select distinct nombre from usuario



  /*  SE ORDENA DATOS USUARIO POR TELEFONO */
  select * from usuario order by telefono



  /*  SE AGREGA UN NUEVO CAMPO A LA TABLA USUARIO  */
 alter table usuario add direccion varchar(10)


 
   /*  SE RENOMBRA LA TABLA ENTRENADOR */
  select * from entrenador
  EXEC sp_rename'entrenador','instructor'
  select * from instructor


   /*  SE ELIMINA LA TABLA ENTRENADOR */

   drop table transaccion_administrador


