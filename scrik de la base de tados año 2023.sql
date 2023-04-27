
CREATE TABLE BUSES (
  id_buses INT PRIMARY KEY,
  modelo VARCHAR(50),
  marca VARCHAR(50),
  numero VARCHAR(10),
  color_bus VARCHAR(20)
);

-- Insertar 10 registros en la tabla BUSES
INSERT INTO BUSES (id_buses, modelo, marca, numero, color_bus)
VALUES (1, 'Sprinter', 'Mercedes-Benz', '001', 'Rojo'),
       (2, 'Urbanway', 'Iveco', '002', 'Azul'),
       (3, 'New City', 'Scania', '003', 'Verde'),
       (4, 'Urbano', 'Volvo', '004', 'Amarillo'),
       (5, 'Citaro', 'Mercedes-Benz', '005', 'Blanco'),
       (6, 'Cityclass', 'MAN', '006', 'Gris'),
       (7, 'Citywide', 'Iveco', '007', 'Naranja'),
       (8, 'Noge', 'MAN', '008', 'Morado'),
       (9, 'Agora', 'Irisbus', '009', 'Negro'),
       (10, 'Catalyst', 'Volvo', '010', 'Plateado');

select * from BUSES;
-- Crear la tabla CLIENTES
CREATE TABLE CLIENTES (
  id_clientes INT PRIMARY KEY,
  nombre VARCHAR(50),
  metodo_pago VARCHAR(20),
  pago_realizado BOOLEAN,
  id_buses INT,
  FOREIGN KEY (id_buses) REFERENCES BUSES(id_buses)
);

-- Insertar 10 registros en la tabla CLIENTES
INSERT INTO CLIENTES (id_clientes, nombre, metodo_pago, pago_realizado, id_buses)
VALUES (1, 'Juan Pérez', 'Tarjeta de crédito', true, 3),
       (2, 'Ana García', 'Efectivo', false, 4),
       (3, 'Carlos Ruiz', 'Tarjeta de débito', true, 1),
       (4, 'María López', 'Transferencia bancaria', true, 2),
       (5, 'Pedro Hernández', 'Efectivo', false, 5),
       (6, 'Laura González', 'Tarjeta de crédito', true, 6),
       (7, 'Roberto Sánchez', 'Tarjeta de débito', true, 7),
       (8, 'Sofía Torres', 'Efectivo', false, 8),
       (9, 'Javier Díaz', 'Transferencia bancaria', true, 9),
       (10, 'Isabel Moreno', 'Tarjeta de crédito', true, 10);

-- Crear la tabla RUTAS
CREATE TABLE RUTAS (
  id_ruta INT PRIMARY KEY,
  origen VARCHAR(50),
  destino VARCHAR(50)
);
-- Crear la tabla CONDUCTORES
CREATE TABLE CONDUCTORES (
  id_conductores INT PRIMARY KEY,
  nombre VARCHAR(50),
  apellidos VARCHAR(50),
  numero_licencia VARCHAR(20)
);

-- Insertar 10 registros en la tabla CONDUCTORES
INSERT INTO CONDUCTORES (id_conductores, nombre, apellidos, numero_licencia)
VALUES (1, 'Juan', 'García Pérez', '01234567A'),
       (2, 'Ana', 'Martínez Sánchez', '12345678B'),
       (3, 'Carlos', 'Gómez Ruiz', '23456789C'),
       (4, 'María', 'Fernández López', '34567890D'),
       (5, 'Pedro', 'Hernández García', '45678901E'),
       (6, 'Laura', 'González Rodríguez', '56789012F'),
       (7, 'Roberto', 'Sánchez Torres', '67890123G'),
       (8, 'Sofía', 'Torres Díaz', '78901234H'),
       (9, 'Javier', 'Díaz Moreno', '89012345I'),
       (10, 'Isabel', 'Moreno Gómez', '90123456J');

-- se crear una consulta para cambiar el encabezado de la tabla clientes
select nombre"nombre_actualizado" from clientes;

-- se crear una consulta para cambiar el encabezado de la tabla buses
select modelo"modelo_actualizado" from buses;

-- se crear una consulta para cambiar el encabezado de la tabla conductores
select apellido "apellidos_actualizados" from conductores

-- se crear una consulta para cambiar el encabezado de la tabla rutas
select origen "origen_actualizado" from rutas;

select * from BUSES; --se muestran los datos de la tabla BUSES

select * from clientes; -- se muestran los datos de la tabla CLIENTES

select * from RUTAS; -- se muestran los datos de la tabla RUTAS

select * from CONDUCTORES; --se muestran los datos de la tabla CONDUCTORES

SELECT * FROM CLIENTES WHERE mod(id,2) = 1 -- SE VISUALIZARON 4 REGISTROS PARES

SELECT * FROM BUSES WHERE mod(id,2) = 1 -- SE VISUALIZARON 5 REGISTROS PARES

SELECT * FROM CONDUCTORES WHERE mod(id,2) = 1-- SE VISUALIZARON 7 REGISTROS PARES

SELECT id_conductores , id_buses FROM BUSES;
