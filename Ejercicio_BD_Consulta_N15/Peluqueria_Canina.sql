-- CREAR BASE DE DATOS
CREATE DATABASE Peluqueria_Canina;

-- USAR BASE DE DATOS
USE Peluqueria_Canina;

-- CREAR TABLA Dueno
CREATE TABLE Dueno (
	DNI INT NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Telefono BIGINT,
    Direccion VARCHAR(150),
    PRIMARY KEY (DNI)
);

-- CREAR TABLA Perro
CREATE TABLE Perro (
	ID_Perro INT AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Fecha DATE NOT NULL,
    Sexo VARCHAR(50) NOT NULL,
    DNI_dueno_1 INT NOT NULL,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_dueno_1) REFERENCES Dueno (DNI)
);

-- CREAR TABLA Historial
CREATE TABLE Historial (
	ID_Historial INT AUTO_INCREMENT,
    Fecha DATE NOT NULL,
    Perro INT NOT NULL,
    Descripcion VARCHAR(500),
    Monto DECIMAL(8,2),
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES Perro (ID_Perro)
);

-- PRIMER DUEÑO
INSERT INTO Dueno (
	DNI,
    Nombre,
    Apellido,
    Telefono,
    Direccion
)
VALUES (
	30459393,
    "Rodrigo",
    "Lopez",
    3816538895,
    "Coronel Suarez 1500"
);
-- PRIMER MASCOTA
INSERT INTO Perro (
	Nombre,
    Fecha,
    Sexo,
    DNI_dueno_1
)
VALUES (
	"Toby",
    "2022-01-21",
    "Macho",
    30459393
);

-- HISTORIAL PRIMER DUEÑO Y PRIMER PERRO
INSERT INTO Historial (
	Fecha,
    Perro,
    Descripcion,
    Monto
)
VALUES (
	"2022-04-25",
    1,
    "Cachorro de tres meses jugueton necesitado de un corte",
    2500.00
    
);

SELECT * FROM Perro;

-- SEGUNDO DUEÑO 
INSERT INTO Dueno (
	DNI,
    Nombre,
    Apellido,
    Telefono,
    Direccion
)
VALUES (
	40595458,
    "Romina",
    "García",
    3816546776,
    "Gobernador del Campo 1100"
);

-- PERRO DEL SEGUNDO DUEÑO
INSERT INTO Perro (
	Nombre,
    Fecha,
    Sexo,
    DNI_dueno_1
)
VALUES (
	"Deron",
    "2020-06-10",
    "Macho",
    40595458
);

-- HISTORIAL SEGUNDO DUEÑO Y SEGUNDO PERRO
INSERT INTO Historial (
		Fecha,
        Perro,
        Descripcion,
        Monto
)
VALUES (
	"2021-07-02",
    2,
    "Perro joven de poco mas de un año de edad tamaño mediano",
    2000.00
);

-- TERCER DUEÑO
INSERT INTO Dueno (
	DNI,
    Nombre,
    Apellido,
    Telefono,
    Direccion
)
VALUES (
	42590239,
    "Tisiana",
    "Bordón",
    "3815788235",
    "España 1000"
);

-- PERRO DEL TERCER  DUEÑO

INSERT INTO Perro (
	Nombre,
    Fecha,
    Sexo,
    DNI_dueno_1
)
VALUES (
	"Lolita",
    "2019-11-23",
    "Hembra",
    42590239
);

-- HISTORIAL TERCER DUEÑO Y TERCER PERRO
INSERT INTO Historial (
	Fecha,
    Perro,
    Descripcion,
    Monto
)
VALUES (
	"2020-02-19",
    3,
    "Cachorra joven y pequeñita",
    1800.00
);

-- CONSULTA N°12 - TRABAJO SQL ISPC
SELECT * FROM Perro WHERE Sexo="Macho" AND Fecha BETWEEN "2020-00-00" AND "2022-00-00";
/* Perro obtenido de la consulta Perro de ID_Perro = 2*/