create database ejercicio_ISPC;
-- USAR BASE DE DATOS

use ejercicio_ISPC;

-- CREAR TABLA Dueno
create table Dueno (
	DNI int not null,
    Nombre varchar(25),
    Apellido varchar(25),
    Telefono int,
    Direccion varchar(150),
    constraint pk_cc primary key(DNI)
);

-- CREAR TABLA Perro
create table Perro
 (
 ID_Perro int,
 Nombre_p varchar(25),
 Fecha_nac date,
 Sexo varchar(6),
 DNI_dueno int,
 constraint pk_cc primary key (ID_Perro),
 constraint fk_DNIdueno foreign key (DNI_dueno) references dueno (DNI)
 );
 -- CREAR TABLA Historial
 create table Historial
 (
 ID_Historial int,
 Fecha date,
 Perro int,
 Descripcion varchar(50),
 Monto decimal(10,2),
 constraint IDHistorial primary key (ID_Historial),
 constraint fk_Perro foreign key (Perro) references perro (ID_Perro)
 );
 Insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values
 (28659825, 'Nicolás', 'Reales', 45251256, 'Calle Obispo Oro 345'),
 (15268945, 'Pedro', 'Villanueva', 351879201, 'Calle Chacabuco 897'),
 (42589625, 'Milagros', 'Villalobos', 123789456, 'Calle Las Piedras 450'),
 (35596935, 'Santiago', 'Rodríguez', 388666717, 'Calle Presidente Perón 435'),
 (32985784, 'Martina', 'Ramírez', 44548932, 'Avenida Patria 525');
 
  Insert into Perro (ID_Perro, Nombre_p, Fecha_nac, Sexo, DNI_dueno) values
 (5, 'Doki', '2015-05-06', 'Macho',28659825),
 (6, 'Rubia', '2020-06-11', 'Hembra', 15268945),
 (7, 'Ellie', '2020-04-15', 'Hembra',42589625),
 (8, 'Apolo', '2019-11-11', 'Macho', 35596935),
 (9, 'Lumen', '2022-05-22', 'Hembra', 32985784);
 
 INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES
 (1, '2022-05-18', 5, 'Baño y corte', 1800),
 (2, '2022-08-01', 6, 'Baño', 1000),
 (3, '2022-09-10', 7, 'Baño y corte', 1800),
 (4, '2021-05-06', 8, 'Baño y corte', 1800),
 (5, '2021-12-20', 9, 'Baño y corte de uñas', 1500);
-- Actualización de fecha de nacimiento
Update Perro
set Fecha_nac= '2015-06-05'
where ID_Perro ='5'
