CREATE DATABASE Peluqueria_Canina

USE Peluqueria_Canina

 CREATE TABLE Dueno
 (
 DNI int,
 Nombre_d varchar(25),
 Apellido varchar(25),
 Telefono int,
 Direccion varchar(50),
 CONSTRAINT P_DNI PRIMARY KEY (DNI)
 );
 
  CREATE TABLE Perro
 (
 ID_Perro int,
 Nombre_p varchar(25),
 Fecha_nac DATE,
 Sexo varchar(6),
 DNI_dueno int,
 CONSTRAINT IDPerro PRIMARY KEY (ID_Perro),
 CONSTRAINT DNIdueno FOREIGN KEY (DNI_dueno) REFERENCES dueno (DNI)
 );
 
  CREATE TABLE Historial
 (
 ID_Historial int,
 Fecha DATE,
 Perro int,
 Descripcion varchar(50),
 Monto decimal(10,2),
 CONSTRAINT IDHistorial PRIMARY KEY (ID_Historial),
 CONSTRAINT F_Perro FOREIGN KEY (Perro) REFERENCES Perro (ID_Perro)
 );
 
  INSERT INTO Dueno (DNI, Nombre_d, Apellido, Telefono, Direccion) VALUES
 ('20145258', 'Alejandro', 'Ledesma', '45251256', 'Calle La Pampa 294'),
 ('17256357', 'Pedro', 'Villanueva', '45636768', 'Calle San Juan 897'),
 ('32145892', 'Alejandro', 'Ledesma', '45251256', 'Calle La Pampa 294'),
 ('35596935', 'Pedro', 'Romero', '45636768', 'Calle San Juan 897'),
 ('35525486', 'Carolina', 'Araujo', '44548932', 'Calle Salta 820');
 
  INSERT INTO Perro (ID_Perro, Nombre_p, Fecha_nac, Sexo, DNI_dueno) VALUES
 ('10', 'Firulais', '2017-01-12', 'Macho','20145258'),
 ('11', 'Pepita', '2020-06-11', 'Hembra', '17256357'),
 ('12', 'Loli', '2021-03-14', 'Macho','32145892'),
 ('13', 'Milu', '2019-02-11', 'Hembra', '35596935'),
 ('14', 'Dylanchu', '2022-01-17', 'Macho', '35525486');
 
  INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES
 ('1', '2022-07-12', '10', 'Baño y corte', '1800'),
 ('2', '2021-08-01', '11', 'Baño', '1000'),
 ('3', '2022-07-10', '12', 'Baño y corte higiénico', '1500'),
 ('4', '2019-05-12', '13', 'Baño y corte', '1800'),
 ('5', '2021-12-20', '14', 'Baño', '1000');
 
  SELECT Nombre_p FROM Perro
  INNER JOIN Dueno ON Perro.DNI_dueno=Dueno.DNI
  WHERE Nombre_d='Pedro'
 