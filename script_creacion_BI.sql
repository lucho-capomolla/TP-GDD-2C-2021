USE GD2C2021
GO


/*---------------------------------------------------------------------------------------------------------------------------
							BORRADO DE TABLAS
---------------------------------------------------------------------------------------------------------------------------*/

IF OBJECT_ID('UTNIX.BI_Tiempo', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Tiempo
GO

IF OBJECT_ID('UTNIX.BI_Rango_Edad', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Rango_Edad
GO

IF OBJECT_ID('UTNIX.BI_Material_x_Tarea', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Material_x_Tarea
GO

IF OBJECT_ID('UTNIX.BI_Material', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Material
GO

IF OBJECT_ID('UTNIX.BI_Tarea_a_Realizar', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Tarea_a_Realizar
GO

IF OBJECT_ID('UTNIX.BI_Tarea', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Tarea
GO

IF OBJECT_ID('UTNIX.BI_Tipo_Tarea', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Tipo_Tarea
GO

IF OBJECT_ID('UTNIX.BI_Mecanico', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Mecanico
GO

IF OBJECT_ID('UTNIX.BI_Orden_Trabajo', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Orden_Trabajo
GO

IF OBJECT_ID('UTNIX.BI_Taller', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Taller
GO

IF OBJECT_ID('UTNIX.BI_Estado', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Estado
GO

IF OBJECT_ID('UTNIX.BI_Paquete', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Paquete
GO

IF OBJECT_ID('UTNIX.BI_Tipo_Paquete', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Tipo_Paquete
GO

IF OBJECT_ID('UTNIX.BI_Viaje', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Viaje
GO

IF OBJECT_ID('UTNIX.BI_Camion', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Camion
GO

IF OBJECT_ID('UTNIX.BI_Marca', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Marca
GO

IF OBJECT_ID('UTNIX.BI_Modelo', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Modelo
GO

IF OBJECT_ID('UTNIX.BI_Chofer', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Chofer
GO

IF OBJECT_ID('UTNIX.BI_Recorrido', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Recorrido
GO

IF OBJECT_ID('UTNIX.BI_Ciudad', 'U') IS NOT NULL
	DROP TABLE UTNIX.BI_Ciudad
GO


/*---------------------------------------------------------------------------------------------------------------------------
							BORRADO DE FUNCIONES
---------------------------------------------------------------------------------------------------------------------------*/

IF OBJECT_ID('UTNIX.Obtener_Cuatrimestre') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_Cuatrimestre
GO

/*---------------------------------------------------------------------------------------------------------------------------
							BORRADO DE PROCEDURES
---------------------------------------------------------------------------------------------------------------------------*/

IF OBJECT_ID('UTNIX.BI_Migrar_Tiempo') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Tiempo
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Rango_Edad') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Rango_Edad
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Material') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Material
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Material_x_Tarea') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Material_x_Tarea
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Tipo_Tarea') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Tipo_Tarea
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Tarea') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Tarea
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Tipo_Paquete') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Tipo_Paquete
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Chofer') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Chofer
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Modelo') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Modelo
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Marca') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Marca
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Mecanico') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Mecanico
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Ciudad') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Ciudad
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Recorrido') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Recorrido
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Camion') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Camion
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Orden_Trabajo') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Orden_Trabajo
GO
	
IF OBJECT_ID('UTNIX.BI_Migrar_Camion') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Camion
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Estado') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Estado
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Paquete') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Paquete
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Taller') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Taller
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Viaje') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Viaje
GO

IF OBJECT_ID('UTNIX.BI_Migrar_Tarea_a_Realizar') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Tarea_a_Realizar
GO


/*---------------------------------------------------------------------------------------------------------------------------
							BORRADO DE VISTAS
---------------------------------------------------------------------------------------------------------------------------*/



/*---------------------------------------------------------------------------------------------------------------------------
							CREACION DE TABLAS
---------------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE UTNIX.BI_Tiempo(
		bi_tiempo_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),	
		bi_tiempo_anio DECIMAL(18,0) NOT NULL,
		bi_tiempo_cuatrimestre DECIMAL(18,0) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Rango_Edad(
		bi_rango_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		bi_rango_edad NVARCHAR(255) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Ciudad (
		bi_ciudad_codigo DECIMAL(18,0) PRIMARY KEY,
		bi_ciudad_descripcion NVARCHAR(255) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Recorrido (
		bi_recorrido_codigo DECIMAL(18,0) PRIMARY KEY,
		bi_recorrido_ciudad_origen_codigo DECIMAL(18,0) NOT NULL,
		bi_recorrido_ciudad_destino_codigo DECIMAL(18,0) NOT NULL,
		bi_recorrido_km DECIMAL(18,0) NOT NULL,
		bi_recorrido_precio DECIMAL(18,2) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Chofer (
		bi_chofer_numero_legajo DECIMAL(18,0) PRIMARY KEY,
		bi_chofer_nombre NVARCHAR(255) NOT NULL,
		bi_chofer_apellido NVARCHAR(255) NOT NULL,
		bi_chofer_dni DECIMAL(18,0) NOT NULL,
		bi_chofer_direccion NVARCHAR(255) NOT NULL,
		bi_chofer_telefono DECIMAL(18,0) NOT NULL,
		bi_chofer_mail NVARCHAR(255) NOT NULL,
		bi_chofer_fecha_nacimiento DATETIME2(3) NOT NULL,
		bi_chofer_costo_hora DECIMAL(18,0) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Modelo (
		bi_modelo_codigo DECIMAL(18,0) PRIMARY KEY,
		bi_modelo_descripcion NVARCHAR(255) NOT NULL,
		bi_modelo_velocidad_max DECIMAL(18,0) NOT NULL,
		bi_modelo_capacidad_tanque DECIMAL(18,0) NOT NULL,
		bi_modelo_capacidad_carga DECIMAL(18,0) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Marca (
		bi_marca_codigo DECIMAL(18,0) PRIMARY KEY,
		bi_marca_descripcion NVARCHAR(255) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Camion (
		bi_camion_codigo DECIMAL(18,0) PRIMARY KEY,
		bi_camion_patente NVARCHAR(255) NOT NULL,
		bi_camion_modelo_codigo DECIMAL(18,0) NOT NULL,
		bi_camion_marca_codigo DECIMAL(18,0) NOT NULL,
		bi_camion_numero_chasis NVARCHAR(255) NOT NULL,
		bi_camion_numero_motor NVARCHAR(255) NOT NULL,
		bi_camion_fecha_alta DATETIME2(3) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Viaje (
		bi_viaje_codigo DECIMAL(18,0) PRIMARY KEY,
		bi_viaje_camion_codigo DECIMAL(18,0) NOT NULL,
		bi_viaje_chofer_legajo DECIMAL(18,0) NOT NULL,
		bi_viaje_recorrido_codigo DECIMAL(18,0) NOT NULL,
		bi_viaje_fecha_inicio DATETIME2(7) NOT NULL,
		bi_viaje_fecha_fin DATETIME2(3) NULL,
		bi_viaje_consumo_combustible DECIMAL(18,2) NULL
);
GO

CREATE TABLE UTNIX.BI_Tipo_Paquete (
		bi_tipo_paquete_codigo DECIMAL(18,0) PRIMARY KEY,
		bi_tipo_paquete_descripcion NVARCHAR(255) NOT NULL,
		bi_tipo_paquete_peso_max DECIMAL(18,2) NOT NULL,
		bi_tipo_paquete_alto_max DECIMAL(18,2) NOT NULL,
		bi_tipo_paquete_ancho_max DECIMAL(18,2) NOT NULL,
		bi_tipo_paquete_largo_max DECIMAL(18,2) NOT NULL,
		bi_tipo_paquete_precio DECIMAL(18,2) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Paquete (
		bi_paquete_tipo_codigo DECIMAL(18,0) NOT NULL,
		bi_paquete_viaje_codigo DECIMAL(18,0) NOT NULL,
		bi_paquete_cantidad DECIMAL(18,0) NOT NULL,	
		PRIMARY KEY (bi_paquete_tipo_codigo, bi_paquete_viaje_codigo)
);
GO

CREATE TABLE UTNIX.BI_Estado (
		bi_estado_codigo DECIMAL(18,0) PRIMARY KEY,
		bi_estado_descripcion NVARCHAR(255) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Taller (
		bi_taller_codigo DECIMAL(18,0) PRIMARY KEY,
		bi_taller_nombre NVARCHAR(255) NOT NULL,
		bi_taller_mail NVARCHAR(255) NOT NULL,
		bi_taller_direccion NVARCHAR(255) NOT NULL,
		bi_taller_codigo_ciudad DECIMAL(18,0) NOT NULL,
		bi_taller_telefono DECIMAL(18,0) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Orden_Trabajo (
		bi_orden_trabajo_codigo DECIMAL(18,0) PRIMARY KEY,
		bi_orden_trabajo_fecha NVARCHAR(255) NOT NULL,
		bi_orden_trabajo_camion_codigo DECIMAL(18,0) NOT NULL,
		bi_orden_trabajo_estado_codigo DECIMAL(18,0) NULL,
		bi_orden_trabajo_taller_codigo DECIMAL(18,0) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Mecanico (
		bi_mecanico_legajo_numero DECIMAL(18,0) PRIMARY KEY,
		bi_mecanico_nombre NVARCHAR(255) NOT NULL,
		bi_mecanico_apellido NVARCHAR(255) NOT NULL,
		bi_mecanico_dni DECIMAL(18,0) NOT NULL,
		bi_mecanico_direccion NVARCHAR(255) NOT NULL,
		bi_mecanico_telefono DECIMAL(18,0) NOT NULL,
		bi_mecanico_mail NVARCHAR(255) NOT NULL,
		bi_mecanico_fecha_nacimiento DATETIME2(3) NOT NULL,
		bi_mecanico_costo_hora DECIMAL(18,0) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Tipo_Tarea (
		bi_tipo_tarea_codigo DECIMAL(18,0) PRIMARY KEY,
		bi_tipo_tarea_descripcion NVARCHAR(255) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Tarea (
		bi_tarea_codigo DECIMAL(18,0) PRIMARY KEY,
		bi_tarea_descripcion NVARCHAR(255) NOT NULL,
		bi_tarea_tipo_codigo DECIMAL(18,0) NOT NULL,
		bi_tarea_tiempo_estimado DECIMAL(18,0) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Tarea_a_Realizar (
		bi_tarea_a_realizar_codigo DECIMAL(18,0) PRIMARY KEY,
		bi_tarea_a_realizar_orden_trabajo_codigo DECIMAL(18,0) NOT NULL,
		bi_tarea_a_realizar_tarea_codigo DECIMAL(18,0) NOT NULL,
		bi_tarea_a_realizar_mecanico_legajo DECIMAL(18,0) NULL,
		bi_tarea_a_realizar_fecha_inicio_planificado DATETIME2(3) NULL,
		bi_tarea_a_realizar_fecha_inicio DATETIME2(3) NULL,
		bi_tarea_a_realizar_fecha_fin DATETIME2(3) NULL,
		bi_tarea_a_realizar_tiempo_real DECIMAL(18,0) NULL
);
GO

CREATE TABLE UTNIX.BI_Material (
		bi_material_codigo NVARCHAR(100) PRIMARY KEY,
		bi_material_descripcion NVARCHAR(255) NOT NULL,
		bi_material_precio DECIMAL(18,2) NOT NULL
);
GO

CREATE TABLE UTNIX.BI_Material_x_Tarea (
		bi_material_x_tarea_codigo DECIMAL(18,0) PRIMARY KEY,
		bi_tarea_codigo DECIMAL(18,0) NOT NULL,
		bi_material_codigo NVARCHAR(100) NOT NULL,
);
GO


/*---------------------------------------------------------------------------------------------------------------------------
							CREACION DE FOREIGN KEYs
---------------------------------------------------------------------------------------------------------------------------*/

ALTER TABLE UTNIX.BI_Recorrido
	ADD FOREIGN KEY (bi_recorrido_ciudad_origen_codigo) REFERENCES UTNIX.BI_Ciudad(bi_ciudad_codigo),
		FOREIGN KEY (bi_recorrido_ciudad_destino_codigo) REFERENCES UTNIX.BI_Ciudad(bi_ciudad_codigo); 
GO

ALTER TABLE UTNIX.BI_Camion
	ADD FOREIGN KEY (bi_camion_modelo_codigo) REFERENCES UTNIX.BI_Modelo(bi_modelo_codigo),
		FOREIGN KEY (bi_camion_marca_codigo) REFERENCES UTNIX.BI_Marca(bi_marca_codigo);
GO

ALTER TABLE UTNIX.BI_Viaje
	ADD FOREIGN KEY (bi_viaje_camion_codigo) REFERENCES UTNIX.BI_Camion(bi_camion_codigo),
		FOREIGN KEY (bi_viaje_chofer_legajo) REFERENCES UTNIX.BI_Chofer(bi_chofer_numero_legajo),
		FOREIGN KEY (bi_viaje_recorrido_codigo) REFERENCES UTNIX.BI_Recorrido(bi_recorrido_codigo);
GO

ALTER TABLE UTNIX.BI_Paquete 
	ADD FOREIGN KEY (bi_paquete_tipo_codigo) REFERENCES UTNIX.BI_Tipo_Paquete(bi_tipo_paquete_codigo),
		FOREIGN KEY (bi_paquete_viaje_codigo) REFERENCES UTNIX.BI_Viaje(bi_viaje_codigo);
GO

ALTER TABLE UTNIX.BI_Taller 
	ADD FOREIGN KEY (bi_taller_codigo_ciudad) REFERENCES UTNIX.BI_Ciudad(bi_ciudad_codigo);
GO

ALTER TABLE UTNIX.BI_Orden_Trabajo
	ADD FOREIGN KEY (bi_orden_trabajo_camion_codigo) REFERENCES UTNIX.BI_Camion(bi_camion_codigo),
		FOREIGN KEY (bi_orden_trabajo_estado_codigo) REFERENCES UTNIX.BI_Estado(bi_estado_codigo),
		FOREIGN KEY (bi_orden_trabajo_taller_codigo) REFERENCES UTNIX.BI_Taller(bi_taller_codigo);
GO

ALTER TABLE UTNIX.BI_Tarea
	ADD FOREIGN KEY (bi_tarea_tipo_codigo) REFERENCES UTNIX.BI_Tipo_Tarea(bi_tipo_tarea_codigo);
GO

ALTER TABLE UTNIX.BI_Tarea_a_Realizar
	ADD FOREIGN KEY (bi_tarea_a_realizar_orden_trabajo_codigo) REFERENCES UTNIX.BI_Orden_Trabajo(bi_orden_trabajo_codigo),
		FOREIGN KEY (bi_tarea_a_realizar_tarea_codigo) REFERENCES UTNIX.BI_Tarea(bi_tarea_codigo),
		FOREIGN KEY (bi_tarea_a_realizar_mecanico_legajo) REFERENCES UTNIX.BI_Mecanico(bi_mecanico_legajo_numero);
GO

ALTER TABLE UTNIX.BI_Material_x_Tarea
	ADD FOREIGN KEY (bi_tarea_codigo) REFERENCES UTNIX.BI_Tarea(bi_tarea_codigo),
		FOREIGN KEY (bi_material_codigo) REFERENCES UTNIX.BI_Material(bi_material_codigo);
GO


/*---------------------------------------------------------------------------------------------------------------------------
							CREACION DE VISTAS
---------------------------------------------------------------------------------------------------------------------------*/



/*---------------------------------------------------------------------------------------------------------------------------
							CREACION DE FUNCIONES
---------------------------------------------------------------------------------------------------------------------------*/

CREATE FUNCTION UTNIX.Obtener_Cuatrimestre (@FECHA DATETIME2(3))
RETURNS DECIMAL(18,0)
BEGIN
	DECLARE @CUATRIMESTRE DECIMAL(18,0)

	IF (MONTH(@FECHA) BETWEEN 1 AND 3)
		SET @CUATRIMESTRE = 1
	ELSE IF (MONTH(@FECHA) BETWEEN 4 AND 6)
		SET @CUATRIMESTRE = 2
	ELSE IF (MONTH(@FECHA) BETWEEN 7 AND 10)
		SET @CUATRIMESTRE = 3
	ELSE
		SET @CUATRIMESTRE = 4

	RETURN @CUATRIMESTRE
END
GO


/*---------------------------------------------------------------------------------------------------------------------------
							CREACION DE PROCEDURES
---------------------------------------------------------------------------------------------------------------------------*/

CREATE PROCEDURE UTNIX.BI_Migrar_Rango_Edad
AS
BEGIN
	INSERT INTO UTNIX.BI_Rango_Edad (bi_rango_edad)
		VALUES 	('18 - 30 años'),
				('31 - 50 años'),
				('> 50 años')
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Tiempo
AS
BEGIN
	INSERT INTO UTNIX.BI_Tiempo (bi_tiempo_anio, bi_tiempo_cuatrimestre)
		(SELECT YEAR(viaje_fecha_inicio), UTNIX.Obtener_Cuatrimestre(viaje_fecha_inicio) FROM UTNIX.Viaje)
		UNION
		(SELECT YEAR(viaje_fecha_fin), UTNIX.Obtener_Cuatrimestre(viaje_fecha_fin) FROM UTNIX.Viaje)
		UNION
		(SELECT YEAR(tarea_a_realizar_fecha_inicio_planificado), UTNIX.Obtener_Cuatrimestre(tarea_a_realizar_fecha_inicio_planificado) FROM UTNIX.Tarea_a_Realizar)
		UNION
		(SELECT YEAR(tarea_a_realizar_fecha_inicio), UTNIX.Obtener_Cuatrimestre(tarea_a_realizar_fecha_inicio) FROM UTNIX.Tarea_a_Realizar)
		UNION
		(SELECT YEAR(tarea_a_realizar_fecha_fin), UTNIX.Obtener_Cuatrimestre(tarea_a_realizar_fecha_fin) FROM UTNIX.Tarea_a_Realizar)
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Material
AS
BEGIN
	INSERT INTO UTNIX.BI_Material
		SELECT * FROM UTNIX.Material
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Material_x_Tarea
AS
BEGIN
	INSERT INTO UTNIX.BI_Material_x_Tarea
		SELECT * FROM UTNIX.Material_x_Tarea
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Tipo_Tarea
AS
BEGIN
	INSERT INTO UTNIX.BI_Tipo_Tarea
		SELECT * FROM UTNIX.Tipo_Tarea
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Tarea
AS
BEGIN
	INSERT INTO UTNIX.BI_Tarea
		SELECT * FROM UTNIX.Tarea

END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Chofer 
AS
BEGIN
	INSERT INTO UTNIX.BI_Chofer
		SELECT * FROM UTNIX.Chofer
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Modelo
AS
BEGIN
	INSERT INTO UTNIX.BI_Modelo
		SELECT * FROM UTNIX.Modelo
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Marca
AS
BEGIN
	INSERT INTO UTNIX.BI_Marca
		SELECT * FROM UTNIX.Marca
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Mecanico
AS
BEGIN
	INSERT INTO UTNIX.BI_Mecanico
		SELECT * FROM UTNIX.Mecanico
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Taller
AS
BEGIN
	INSERT INTO UTNIX.BI_Taller
		SELECT * FROM UTNIX.Taller
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Estado
AS
BEGIN
	INSERT INTO UTNIX.BI_Estado
		SELECT * FROM UTNIX.Estado
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Orden_Trabajo
AS
BEGIN
	INSERT INTO UTNIX.BI_Orden_Trabajo
		SELECT * FROM UTNIX.Orden_Trabajo
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Tarea_a_Realizar
AS
BEGIN
	INSERT INTO UTNIX.BI_Tarea_a_Realizar
		SELECT * FROM UTNIX.Tarea_a_Realizar
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Ciudad
AS
BEGIN
	INSERT INTO UTNIX.BI_Ciudad
		SELECT * FROM UTNIX.Ciudad
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Recorrido
AS
BEGIN
	INSERT INTO UTNIX.BI_Recorrido
		SELECT * FROM UTNIX.Recorrido
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Viaje
AS
BEGIN
	INSERT INTO UTNIX.BI_Viaje
		SELECT * FROM UTNIX.Viaje
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Tipo_Paquete
AS
BEGIN
	INSERT INTO UTNIX.BI_Tipo_Paquete
		SELECT * FROM UTNIX.Tipo_Paquete
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Paquete
AS
BEGIN
	INSERT INTO UTNIX.BI_Paquete
		SELECT * FROM UTNIX.Paquete
END
GO


CREATE PROCEDURE UTNIX.BI_Migrar_Camion
AS
BEGIN
	INSERT INTO UTNIX.BI_Camion
		SELECT * FROM UTNIX.Camion
END
GO


/*---------------------------------------------------------------------------------------------------------------------------
							EJECUCIÓN DE LOS PROCEDURES PARA MIGRAR LOS DATOS
---------------------------------------------------------------------------------------------------------------------------*/

EXEC UTNIX.BI_Migrar_Rango_Edad
EXEC UTNIX.BI_Migrar_Tiempo
EXEC UTNIX.BI_Migrar_Tipo_Tarea
EXEC UTNIX.BI_Migrar_Tarea
EXEC UTNIX.BI_Migrar_Material
EXEC UTNIX.BI_Migrar_Material_x_Tarea
EXEC UTNIX.BI_Migrar_Ciudad
EXEC UTNIX.BI_Migrar_Recorrido		
EXEC UTNIX.BI_Migrar_Modelo
EXEC UTNIX.BI_Migrar_Marca
EXEC UTNIX.BI_Migrar_Camion
EXEC UTNIX.BI_Migrar_Estado
EXEC UTNIX.BI_Migrar_Mecanico
EXEC UTNIX.BI_Migrar_Taller
EXEC UTNIX.BI_Migrar_Chofer
EXEC UTNIX.BI_Migrar_Orden_Trabajo
EXEC UTNIX.BI_Migrar_Tarea_a_Realizar	 
EXEC UTNIX.BI_Migrar_Viaje
EXEC UTNIX.BI_Migrar_Tipo_Paquete
EXEC UTNIX.BI_Migrar_Paquete	
GO


SELECT * FROM UTNIX.BI_Tiempo
SELECT * FROM UTNIX.BI_Rango_Edad