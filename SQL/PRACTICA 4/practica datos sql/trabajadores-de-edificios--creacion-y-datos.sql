CREATE TABLE trabajador
(legajo int primary key,
	nombre varchar(12),
	tarifa int,
	oficio varchar(12)
);


alter table trabajador
add legajo_supv INT NULL REFERENCES trabajador;


INSERT INTO trabajador
(legajo, nombre, tarifa, oficio, legajo_supv)
VALUES
(1235, 'M. Fernandez', 12.5, 'electricista', 1311),
(1311, 'C. Garcia', 15.5, 'electricista', 1311),
(1412, 'C. Gonzalez', 13.75, 'plomero', 1520),
(1520, 'H. Caballero', 11.75, 'plomero', 1520),
(2920, 'R. Perez', 10.0, 'albanhil', 2920),
(3001, 'J. Gutierrez', 8.2, 'carpintero', 3231),
(3231, 'P. Alvarez', 17.4, 'carpintero', 3231)
;

CREATE TABLE edificio
(id_e int primary key,
	dir varchar(20),
	tipo varchar(10),
	nivel_calidad int,
	categoria int)
	;

	INSERT INTO edificio
	(id_e, dir, tipo, nivel_calidad, categoria)
	VALUES
	(111, 'Av. Paseo Colon 1213', 'oficina', 4, 1),
	(210, 'Rivadavia 1011', 'oficina', 3, 1),
	(312, 'Tucuman 123', 'oficina', 2, 2),
	(435, 'Cabildo 456', 'comercio', 1, 1),
	(460, 'Santa Fe 1415', 'almacen', 3, 3),
	(515, 'Chile 789', 'residencia', 3, 2)
	;

	CREATE TABLE asignacion
	(legajo int,
		id_e int,
		fecha_inicio timestamp,
		num_dias int,
		constraint fk_legajo foreign key (legajo)
		references trabajador(legajo),
		constraint fk_id_e foreign key (id_e)
		references edificio(id_e)
	)
	;

	INSERT INTO asignacion
	(legajo, id_e, fecha_inicio, num_dias)
	VALUES
	(1235, 312, '2014-10-10 00:00:00', 5),
	(1235, 515, '2014-10-17 00:00:00', 22),
	(1311, 435, '2014-10-08 00:00:00', 12),
	(1311, 460, '2014-10-23 00:00:00', 24),
	(1412, 111, '2014-12-01 00:00:00', 4),
	(1412, 210, '2014-11-15 00:00:00', 12),
	(1412, 312, '2014-10-01 00:00:00', 10),
	(1412, 435, '2014-10-15 00:00:00', 15),
	(1412, 460, '2014-10-08 00:00:00', 18),
	(1412, 515, '2014-11-05 00:00:00', 8),
	(1520, 312, '2014-10-30 00:00:00', 17),
	(1520, 515, '2014-10-09 00:00:00', 14),
	(2920, 210, '2014-11-10 00:00:00', 15),
	(2920, 460, '2014-05-20 00:00:00', 18),
	(3001, 111, '2014-10-08 00:00:00', 14),
	(3001, 210, '2014-10-27 00:00:00', 14),
	(3231, 111, '2014-10-10 00:00:00', 8),
	(3231, 312, '2014-10-24 00:00:00', 20)
	;
