USE GD2C2021
GO


/*---------------------------------------------------------------------------------------------------------------------------
							BORRADO DE TABLAS
---------------------------------------------------------------------------------------------------------------------------*/

IF OBJECT_ID('UTNIX.BI_Hechos_Mantenimiento_Camion') IS NOT NULL
	DROP TABLE UTNIX.BI_Hechos_Mantenimiento_Camion
GO

IF OBJECT_ID('UTNIX.BI_Hechos_Facturaciones') IS NOT NULL
	DROP TABLE UTNIX.BI_Hechos_Facturaciones
GO

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

IF OBJECT_ID('UTNIX.Obtener_ID_Tiempo') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_ID_Tiempo
GO

IF OBJECT_ID('UTNIX.Obtener_Nombre_Ciudad') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_Nombre_Ciudad
GO

IF OBJECT_ID('UTNIX.Obtener_Costo_Materiales') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_Costo_Materiales
GO

IF OBJECT_ID('UTNIX.Obtener_Costo_Mano_de_Obra') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_Costo_Mano_de_Obra
GO

IF OBJECT_ID('UTNIX.Obtener_Maximo_Tiempo_Fuera_Servicio') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_Maximo_Tiempo_Fuera_Servicio
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

IF OBJECT_ID('UTNIX.BI_Migrar_Hechos_Mantenimiento_Camion') IS NOT NULL
	DROP PROCEDURE UTNIX.BI_Migrar_Hechos_Mantenimiento_Camion
GO


/*---------------------------------------------------------------------------------------------------------------------------
							BORRADO DE VISTAS
---------------------------------------------------------------------------------------------------------------------------*/

IF OBJECT_ID('UTNIX.v_Mantenimiento_x_Camion') IS NOT NULL
	DROP VIEW UTNIX.v_Mantenimiento_x_Camion
GO

IF OBJECT_ID('UTNIX.v_Maximo_Tiempo_Fuera_de_Servicio') IS NOT NULL
	DROP VIEW UTNIX.v_Maximo_Tiempo_Fuera_de_Servicio
GO

/*---------------------------------------------------------------------------------------------------------------------------
							CREACION DE TABLAS
---------------------------------------------------------------------------------------------------------------------------*/

------ TABLAS DE DIMENSIONES

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


------ TABLAS DE HECHOS

CREATE TABLE UTNIX.BI_Hechos_Mantenimiento_Camion (
	bi_camion_codigo DECIMAL(18,0) NOT NULL,
	bi_taller_codigo DECIMAL(18,0) NOT NULL, 
	bi_tiempo_codigo DECIMAL(18,0) NOT NULL,
	maximo_tiempo_fuera_servicio DECIMAL(18,0) NULL,
	costo_total_mantenimiento DECIMAL(18,0) NULL,
	PRIMARY KEY (bi_camion_codigo, bi_taller_codigo, bi_tiempo_codigo)
);
GO


CREATE TABLE UTNIX.BI_Hechos_Facturaciones (
	bi_camion_codigo DECIMAL(18,0) NOT NULL,
	bi_modelo_codigo DECIMAL(18,0) NOT NULL,
	bi_tiempo_codigo DECIMAL(18,0) NOT NULL,
	bi_recorrido_codigo DECIMAL(18,0) NOT NULL,
	facturacion_total_recorrido DECIMAL(18,0) NULL,
	ganancia_total DECIMAL(18,0) NULL
	PRIMARY KEY (bi_camion_codigo, bi_modelo_codigo, bi_tiempo_codigo, bi_recorrido_codigo)
);
GO

/*---------------------------------------------------------------------------------------------------------------------------
							CREACION DE FOREIGN KEYs
---------------------------------------------------------------------------------------------------------------------------*/

ALTER TABLE UTNIX.BI_Hechos_Mantenimiento_Camion
	ADD FOREIGN KEY (bi_camion_codigo) REFERENCES UTNIX.BI_Camion(bi_camion_codigo),
		FOREIGN KEY (bi_taller_codigo) REFERENCES UTNIX.BI_Taller(bi_taller_codigo),
		FOREIGN KEY (bi_tiempo_codigo) REFERENCES UTNIX.BI_Tiempo(bi_tiempo_codigo);
GO


ALTER TABLE UTNIX.BI_Hechos_Facturaciones
	ADD FOREIGN KEY (bi_camion_codigo) REFERENCES UTNIX.BI_Camion(bi_camion_codigo),
		FOREIGN KEY (bi_modelo_codigo) REFERENCES UTNIX.BI_Modelo(bi_modelo_codigo),
		FOREIGN KEY (bi_tiempo_codigo) REFERENCES UTNIX.BI_Tiempo(bi_tiempo_codigo),
		FOREIGN KEY (bi_recorrido_codigo) REFERENCES UTNIX.BI_Recorrido(bi_recorrido_codigo);
GO

/*---------------------------------------------------------------------------------------------------------------------------
							CREACION DE VISTAS
---------------------------------------------------------------------------------------------------------------------------*/

/*� M�ximo tiempo fuera de servicio de cada cami�n por cuatrimestreSe entiende por fuera de servicio cuando el cami�n est� en el taller (tiene una OT) y no se encuentra disponible para un viaje.*/

CREATE VIEW UTNIX.v_Maximo_Tiempo_Fuera_de_Servicio AS 
	SELECT 
		  bi_camion_codigo AS [Cami�n C�digo]
		, bi_tiempo_codigo AS [Cuatrimestre]
		, maximo_tiempo_fuera_servicio AS [Tiempo M�ximo en el Taller (en Horas)]
	FROM UTNIX.BI_Hechos_Mantenimiento_Camion
GO

/*� Costo total de mantenimiento por cami�n, por taller, por cuatrimestre.Se entiende por costo de mantenimiento: el costo de materiales + el costo de mano de obra insumido en cada tarea (correctivas y preventivas)*/

CREATE VIEW UTNIX.v_Mantenimiento_x_Camion AS
	SELECT 
		  bi_camion_codigo AS [Cami�n C�digo]
		, bi_taller_codigo AS [Taller C�digo]
		, bi_tiempo_codigo AS [Cuatrimestre]
		, costo_total_mantenimiento AS [Costo Total de Mantenimiento]
	FROM UTNIX.BI_Hechos_Mantenimiento_Camion
GO


/*---------------------------------------------------------------------------------------------------------------------------
							CREACION DE FUNCIONES
---------------------------------------------------------------------------------------------------------------------------*/

CREATE FUNCTION UTNIX.Obtener_Cuatrimestre (@FECHA DATETIME2(3))
RETURNS DECIMAL(18,0)
AS
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


CREATE FUNCTION UTNIX.Obtener_ID_Tiempo (@FECHA DATETIME2(3))
RETURNS DECIMAL(18,0)
AS
BEGIN
	DECLARE @ID_TIEMPO DECIMAL(18,0)

	SELECT @ID_TIEMPO = bi_tiempo_codigo FROM UTNIX.BI_Tiempo 
	WHERE bi_tiempo_anio = YEAR(@FECHA)
		AND bi_tiempo_cuatrimestre = UTNIX.Obtener_Cuatrimestre(@FECHA)

	RETURN @ID_TIEMPO
END
GO


CREATE FUNCTION UTNIX.Obtener_Nombre_Ciudad (@CODIGO_CIUDAD DECIMAL(18,0))
RETURNS NVARCHAR(255)
AS
BEGIN
	DECLARE @NOMBRE_CIUDAD NVARCHAR(255)

	SELECT @NOMBRE_CIUDAD = ciudad_descripcion FROM UTNIX.Ciudad
	WHERE ciudad_codigo = @CODIGO_CIUDAD
	
	RETURN @NOMBRE_CIUDAD
END
GO


CREATE FUNCTION UTNIX.Obtener_Costo_Mano_de_Obra (@ORDEN_TRABAJO DECIMAL(18,0))
RETURNS DECIMAL(18,0)
AS
BEGIN
	DECLARE @MANO_OBRA DECIMAL(18,0), @MANO_OBRA_TOTAL DECIMAL(18,0)
	DECLARE @TAREA DECIMAL(18,0)
	DECLARE @DIAS DECIMAL(18,0)
	DECLARE @FECHA_INICIO DATETIME2(3), @FECHA_FIN DATETIME2(3)

	SELECT @MANO_OBRA = ISNULL(SUM(mecanico_costo_hora), 0)
		, @FECHA_INICIO = tarea_a_realizar_fecha_inicio
		, @FECHA_FIN = tarea_a_realizar_fecha_fin
	FROM UTNIX.Tarea_a_Realizar
		JOIN UTNIX.Mecanico ON mecanico_legajo_numero = tarea_a_realizar_mecanico_legajo
	WHERE tarea_a_realizar_orden_trabajo_codigo = @ORDEN_TRABAJO
	GROUP BY tarea_a_realizar_fecha_inicio, tarea_a_realizar_fecha_fin

	SET @DIAS = DATEDIFF(DD, @FECHA_INICIO, @FECHA_FIN)
	
	SET @MANO_OBRA_TOTAL = @DIAS * 8 * @MANO_OBRA

	RETURN @MANO_OBRA_TOTAL
END
GO


CREATE FUNCTION UTNIX.Obtener_Costo_Materiales (@ORDEN_TRABAJO DECIMAL(18,0))
RETURNS DECIMAL(18,0)
AS
BEGIN
	DECLARE @COSTO_TOTAL DECIMAL(18,0) = 0
	DECLARE @TAREA DECIMAL(18,0)

	DECLARE cursorCosto CURSOR FOR
		SELECT tarea_a_realizar_tarea_codigo FROM UTNIX.Tarea_a_Realizar
		WHERE tarea_a_realizar_orden_trabajo_codigo = @ORDEN_TRABAJO

	OPEN cursorCosto
	FETCH NEXT FROM cursorCosto INTO @TAREA
	WHILE @@FETCH_STATUS = 0
		BEGIN

			SET @COSTO_TOTAL = @COSTO_TOTAL + (SELECT SUM(MAT.material_precio) 
											   FROM UTNIX.Tarea TAR
													JOIN UTNIX.Material_x_Tarea MXT ON MXT.tarea_codigo = TAR.tarea_codigo
													JOIN UTNIX.Material MAT ON MAT.material_codigo = MXT.material_codigo
											   WHERE TAR.tarea_codigo = @TAREA
											   GROUP BY TAR.tarea_codigo)

			FETCH NEXT FROM cursorCosto INTO @TAREA
		END
	CLOSE cursorCosto
	DEALLOCATE cursorCosto

	RETURN @COSTO_TOTAL
END
GO

/*
CREATE FUNCTION UTNIX.Obtener_Maximo_Tiempo_Fuera_Servicio(@CAMION_CODIGO DECIMAL(18,0), @CUATRIMESTRE DECIMAL(18,0))
RETURNS DECIMAL(18,0)
AS
BEGIN
	DECLARE @TIEMPO_MAXIMO DECIMAL(18,0)

	SET @TIEMPO_MAXIMO = (SELECT TOP 1 SUM(tarea_tiempo_estimado) 
						 FROM UTNIX.Camion
						 	 JOIN UTNIX.Orden_Trabajo ON orden_trabajo_camion_codigo = camion_codigo
							 JOIN UTNIX.Tarea_a_Realizar ON tarea_a_realizar_orden_trabajo_codigo = orden_trabajo_codigo
							 JOIN UTNIX.Tarea ON tarea_codigo = tarea_a_realizar_tarea_codigo
						 WHERE camion_codigo = @CAMION_CODIGO
							AND UTNIX.Obtener_ID_Tiempo(tarea_a_realizar_fecha_inicio) = @CUATRIMESTRE
						 GROUP BY camion_codigo, camion_patente, UTNIX.Obtener_ID_Tiempo(tarea_a_realizar_fecha_inicio)
						 ORDER BY SUM(tarea_tiempo_estimado) DESC)

	RETURN @TIEMPO_MAXIMO
END
GO*/


/*---------------------------------------------------------------------------------------------------------------------------
							CREACION DE PROCEDURES
---------------------------------------------------------------------------------------------------------------------------*/

------ MIGRACION DE DIMENSIONES

CREATE PROCEDURE UTNIX.BI_Migrar_Rango_Edad
AS
BEGIN
	INSERT INTO UTNIX.BI_Rango_Edad (bi_rango_edad)
		VALUES 	('18 - 30 a�os'),
				('31 - 50 a�os'),
				('> 50 a�os')
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
		ORDER BY 1, 2
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


------ MIGRACION DE HECHOS

CREATE PROCEDURE UTNIX.BI_Migrar_Hechos_Mantenimiento_Camion
AS
BEGIN
	INSERT INTO UTNIX.BI_Hechos_Mantenimiento_Camion(bi_camion_codigo, bi_taller_codigo, bi_tiempo_codigo, costo_total_mantenimiento, maximo_tiempo_fuera_servicio)
	SELECT DISTINCT C.camion_codigo
		, T.taller_codigo
		, UTNIX.Obtener_ID_Tiempo(OT.orden_trabajo_fecha)
		, SUM(UTNIX.Obtener_Costo_Materiales(OT.orden_trabajo_codigo) + UTNIX.Obtener_Costo_Mano_de_Obra(OT.orden_trabajo_codigo))
		, (SELECT TOP 1 SUM(tarea_tiempo_estimado)
		   FROM UTNIX.Tarea_a_Realizar
			   JOIN UTNIX.Orden_Trabajo ON orden_trabajo_codigo = tarea_a_realizar_orden_trabajo_codigo
			   JOIN UTNIX.Tarea ON tarea_codigo = tarea_a_realizar_tarea_codigo
		   WHERE orden_trabajo_camion_codigo = 1
			   AND UTNIX.Obtener_ID_Tiempo(orden_trabajo_fecha) = UTNIX.Obtener_ID_Tiempo(OT.orden_trabajo_fecha)
		   GROUP BY orden_trabajo_camion_codigo, UTNIX.Obtener_ID_Tiempo(orden_trabajo_fecha)
		   ORDER BY SUM(tarea_tiempo_estimado))
	FROM UTNIX.Camion C
		JOIN UTNIX.Orden_Trabajo OT ON OT.orden_trabajo_camion_codigo = C.camion_codigo
		JOIN UTNIX.Taller T ON T.taller_codigo = OT.orden_trabajo_taller_codigo
	GROUP BY C.camion_codigo, T.taller_codigo, UTNIX.Obtener_ID_Tiempo(OT.orden_trabajo_fecha)
	ORDER BY C.camion_codigo, T.taller_codigo, UTNIX.Obtener_ID_Tiempo(OT.orden_trabajo_fecha) ASC
	 
END
GO


-- Capaz se puede hacer una tabla sin el recorrido, o que las ganancias sean en otra, porque al hacer el costo de mantenimiento tarda bastante porque hace bastantes consultas dentro
CREATE PROCEDURE UTNIX.BI_Migrar_Hechos_Facturaciones
AS
BEGIN
	INSERT INTO UTNIX.BI_Hechos_Facturaciones (bi_camion_codigo, bi_modelo_codigo, bi_tiempo_codigo, bi_recorrido_codigo)
	SELECT DISTINCT C.camion_codigo
		, M.modelo_codigo
		--, UTNIX.Obtener_ID_Tiempo(V.viaje_fecha_inicio)
		--, R.recorrido_codigo
		--,  HACER FUNCION PARA OBTENER LA FACTURACION TOTAL DEL RECORRIDO EN UN CUATRIMESTRE
		--, HACER LA FUNCION PARA OBTENER LA GANANCIA TOTAL DEL CAMION (ingresos - costo de viaje - costo de mantenimiento)
		, SUM(UTNIX.Obtener_Costo_Materiales(OT.orden_trabajo_codigo) + UTNIX.Obtener_Costo_Mano_de_Obra(OT.orden_trabajo_codigo))
	FROM UTNIX.Camion C
		JOIN UTNIX.Orden_Trabajo OT ON OT.orden_trabajo_camion_codigo = C.camion_codigo
		JOIN UTNIX.Modelo M ON M.modelo_codigo = C.camion_modelo_codigo
		--JOIN UTNIX.Viaje V ON V.viaje_camion_codigo = C.camion_codigo
		--JOIN UTNIX.Recorrido R ON R.recorrido_codigo = V.viaje_recorrido_codigo
	GROUP BY C.camion_codigo, M.modelo_codigo--, UTNIX.Obtener_ID_Tiempo(V.viaje_fecha_inicio), R.recorrido_codigo
	ORDER BY C.camion_codigo, M.modelo_codigo--, UTNIX.Obtener_ID_Tiempo(V.viaje_fecha_inicio) ASC
END
GO


/*---------------------------------------------------------------------------------------------------------------------------
							EJECUCI�N DE LOS PROCEDURES PARA MIGRAR LOS DATOS
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
EXEC UTNIX.BI_Migrar_Hechos_Mantenimiento_Camion
GO

SELECT * FROM UTNIX.v_Maximo_Tiempo_Fuera_de_Servicio
SELECT * FROM UTNIX.v_Mantenimiento_x_Camion

/*
SELECT * FROM UTNIX.BI_Tiempo
SELECT * FROM UTNIX.BI_Rango_Edad

select taller_codigo, taller_nombre, taller_direccion, taller_codigo_ciudad, mecanico_legajo_numero, mecanico_nombre, mecanico_apellido, mecanico_dni, mecanico_costo_hora from utnix.Taller
	join UTNIX.Orden_Trabajo ON orden_trabajo_taller_codigo = taller_codigo
	join UTNIX.Tarea_a_Realizar ON tarea_a_realizar_orden_trabajo_codigo = orden_trabajo_codigo
	join UTNIX.Mecanico ON mecanico_legajo_numero = tarea_a_realizar_mecanico_legajo
group by taller_codigo, taller_nombre, taller_direccion, taller_codigo_ciudad, mecanico_legajo_numero, mecanico_nombre, mecanico_apellido, mecanico_dni, mecanico_costo_hora
order by 1



SELECT recorrido_codigo AS [Recorrido C�digo]
	, UTNIX.Obtener_Cuatrimestre(viaje_fecha_fin) AS [Cuatrimestre]
	--, usar una funcion recorriendo con Cursores, y hacer la Sumatoria de la cantidad de paquetes * el precio de cada tipo AS [Facturacion Total]
FROM UTNIX.Paquete PAQ
	JOIN UTNIX.Viaje ON viaje_codigo = PAQ.paquete_viaje_codigo
	JOIN UTNIX.Recorrido ON recorrido_codigo = viaje_recorrido_codigo
GROUP BY recorrido_codigo, UTNIX.Obtener_Cuatrimestre(viaje_fecha_fin)
ORDER BY [Recorrido C�digo], [Cuatrimestre]
GO
*/

/*
SELECT UTNIX.Obtener_ID_Tiempo(tarea_a_realizar_fecha_inicio_planificado) AS [Tiempo]
	, tarea_a_realizar_orden_trabajo_codigo AS [Orden de Trabajo]
	, SUM(mecanico_costo_hora) AS [Costo Mano de Obra]
FROM UTNIX.Tarea_a_Realizar
	JOIN UTNIX.Mecanico ON mecanico_legajo_numero = tarea_a_realizar_mecanico_legajo
GROUP BY UTNIX.Obtener_Cuatrimestre(tarea_a_realizar_fecha_inicio_planificado), UTNIX.Obtener_ID_Tiempo(tarea_a_realizar_fecha_inicio_planificado), tarea_a_realizar_orden_trabajo_codigo
ORDER BY UTNIX.Obtener_Cuatrimestre(tarea_a_realizar_fecha_inicio_planificado) ASC


SELECT * FROM UTNIX.Tarea_a_Realizar
WHERE tarea_a_realizar_orden_trabajo_codigo = 63

SELECT * FROM UTNIX.BI_Tiempo



SELECT SUM(mecanico_costo_hora)
FROM UTNIX.Tarea_a_Realizar
	JOIN UTNIX.Mecanico ON mecanico_legajo_numero = tarea_a_realizar_mecanico_legajo
WHERE tarea_a_realizar_orden_trabajo_codigo = 62
	AND UTNIX.Obtener_ID_Tiempo(tarea_a_realizar_fecha_inicio_planificado) = 1 
GROUP BY UTNIX.Obtener_Cuatrimestre(tarea_a_realizar_fecha_inicio_planificado), UTNIX.Obtener_ID_Tiempo(tarea_a_realizar_fecha_inicio_planificado), tarea_a_realizar_orden_trabajo_codigo
ORDER BY UTNIX.Obtener_Cuatrimestre(tarea_a_realizar_fecha_inicio_planificado) ASC
*/