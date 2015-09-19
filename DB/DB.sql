create database FisicaLab;
use FisicaLab;

/*
 creacion de la tabla tipo_usuarios
*/
create table tipo_usuarios(
id_tipoUsr int not null primary key auto_increment,
tipoUsr nvarchar(50));

/*
	creacion de la tabla usuarios con llave foranea a tabla tipo_usuarios elemento id_tipoUsr
*/
create table usuarios (
id_usr int not null primary key auto_increment,
nombre nvarchar(20),
email nvarchar (100) ,
id_tipoUsr int not null,
pass nvarchar (20),
foreign key (id_tipoUsr) references tipo_usuarios(id_tipoUsr) on delete cascade);
/*
	creacion de la tabla grupo con llave foranea a la tabla  a la tabla estudiantes elemento id_usr
*/

create table grupo (
id_gpo int not null auto_increment primary key,
id_usr int not null,
nombre nvarchar(20));

/*
  creacion de la tabla estudiantes con llave foraneas id_grupo a la tabla grupo elemento (id_gpo)
  llave foranea id_usr a la tabla usuarios (id_usr)
*/

create table estudiantes (
id_est int not null primary key auto_increment,
id_grupo int not null,
id_usr int not null ,
boleta int not null);

/*
 * Añado asi estas llaves foranenas ya que mi Mysql es estupdo
*/ 
alter table grupo add constraint foreign key (id_usr) references estudiantes(id_usr) on delete cascade;
alter table estudiantes add constraint foreign key (id_grupo) references grupo(id_gpo) on delete cascade;
alter table estudiantes add constraint foreign key (id_usr) references usuarios(id_usr) on delete cascade;


/*
creacion de la tabla tipo_item
*/

create table tipo_item(
id_tipoitem int not null primary key auto_increment,
tipo nvarchar(50));

/*
	Creacion de la tabla item con llave foranea tabla tipo item elemento id tipo_item
*/

create table items(
id_item int not null primary key auto_increment,
id_tipoitem int not null,
fecha_pub timestamp,
foreign key (id_tipoitem) references tipo_item(id_tipoitem) on delete cascade);


/*
	crear la tabla amm alumno_cuestionarios con una llave foranea al id_est
*/

create table alumno_cuestionarios(
id_ac int not null primary key auto_increment,
id_est int not null,
id_item int not null,
respuestas varchar(50),
tiempo time,
foreign key (id_est) references estudiantes (id_est) on delete cascade,
foreign key (id_item) references items(id_item) on delete cascade);

/*
	Creacion de la tabla articulos llave foranea a la tabla items elemento id_items
*/
create table articulos (
id_art int not null primary key auto_increment,
id_item int not null,
visitas int,
foreign key (id_item) references items(id_item) on delete cascade);


/*
	Creacion de la tabla tiempos_articulos con llave foranea a la tabla grupos elemento id_gpo y llave foranea a la tabla 
	articulos id_art
*/

create table tiempos_articulos(
id_ta int not null primary key auto_increment,
id_grupo int not null,
id_art int not null,
tiempo time,
foreign key (id_grupo) references grupo (id_gpo) on delete cascade,
foreign key (id_art) references articulos (id_art) on delete cascade);
