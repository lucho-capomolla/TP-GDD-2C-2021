USE GD2C2021

/*---------------------------------------------------------------------------------------------------------------------------
											BORRADO DE TABLAS
---------------------------------------------------------------------------------------------------------------------------*/

IF OBJECT_ID('UTNIX.Material_x_Tarea', 'U') IS NOT NULL
	DROP TABLE UTNIX.Material_x_Tarea

IF OBJECT_ID('UTNIX.Material', 'U') IS NOT NULL
	DROP TABLE UTNIX.Material

IF OBJECT_ID('UTNIX.Tarea_a_Realizar', 'U') IS NOT NULL
	DROP TABLE UTNIX.Tarea_a_Realizar

IF OBJECT_ID('UTNIX.Tarea', 'U') IS NOT NULL
	DROP TABLE UTNIX.Tarea

IF OBJECT_ID('UTNIX.Tipo_Tarea', 'U') IS NOT NULL
	DROP TABLE UTNIX.Tipo_Tarea

IF OBJECT_ID('UTNIX.Mecanico', 'U') IS NOT NULL
	DROP TABLE UTNIX.Mecanico

IF OBJECT_ID('UTNIX.Orden_Trabajo', 'U') IS NOT NULL
	DROP TABLE UTNIX.Orden_Trabajo

IF OBJECT_ID('UTNIX.Taller', 'U') IS NOT NULL
	DROP TABLE UTNIX.Taller

IF OBJECT_ID('UTNIX.Estado', 'U') IS NOT NULL
	DROP TABLE UTNIX.Estado

IF OBJECT_ID('UTNIX.Paquete', 'U') IS NOT NULL
	DROP TABLE UTNIX.Paquete

IF OBJECT_ID('UTNIX.Tipo_Paquete', 'U') IS NOT NULL
	DROP TABLE UTNIX.Tipo_Paquete

IF OBJECT_ID('UTNIX.Viaje', 'U') IS NOT NULL
	DROP TABLE UTNIX.Viaje

IF OBJECT_ID('UTNIX.Camion', 'U') IS NOT NULL
	DROP TABLE UTNIX.Camion

IF OBJECT_ID('UTNIX.Marca', 'U') IS NOT NULL
	DROP TABLE UTNIX.Marca

IF OBJECT_ID('UTNIX.Modelo', 'U') IS NOT NULL
	DROP TABLE UTNIX.Modelo

IF OBJECT_ID('UTNIX.Chofer', 'U') IS NOT NULL
	DROP TABLE UTNIX.Chofer

IF OBJECT_ID('UTNIX.Recorrido', 'U') IS NOT NULL
	DROP TABLE UTNIX.Recorrido

IF OBJECT_ID('UTNIX.Ciudad', 'U') IS NOT NULL
	DROP TABLE UTNIX.Ciudad


/*---------------------------------------------------------------------------------------------------------------------------
											BORRADO DE FUNCIONES
---------------------------------------------------------------------------------------------------------------------------*/

IF OBJECT_ID('UTNIX.Obtener_Tipo_Tarea') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_Tipo_Tarea

IF OBJECT_ID('UTNIX.Obtener_COD_Ciudad') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_COD_Ciudad

IF OBJECT_ID('UTNIX.Obtener_COD_Marca') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_COD_Marca

IF OBJECT_ID('UTNIX.Obtener_COD_Modelo') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_COD_Modelo
	
IF OBJECT_ID('UTNIX.Obtener_COD_Camion') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_COD_Camion
	
IF OBJECT_ID('UTNIX.Obtener_COD_Estado') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_COD_Estado
	
IF OBJECT_ID('UTNIX.Obtener_COD_Recorrido') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_COD_Recorrido
	
IF OBJECT_ID('UTNIX.Obtener_COD_Taller') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_COD_Taller
	
IF OBJECT_ID('UTNIX.Obtener_Tipo_Paquete') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_Tipo_Paquete

IF OBJECT_ID('UTNIX.Obtener_COD_Viaje') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_COD_Viaje

IF OBJECT_ID('UTNIX.Obtener_COD_OT') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_COD_OT


/*---------------------------------------------------------------------------------------------------------------------------
											BORRADO DE PROCEDURES
---------------------------------------------------------------------------------------------------------------------------*/

IF OBJECT_ID('UTNIX.Migrar_Material') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Material

IF OBJECT_ID('UTNIX.Migrar_Material_x_Tarea') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Material_x_Tarea

IF OBJECT_ID('UTNIX.Migrar_Tipo_Tarea') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Tipo_Tarea

IF OBJECT_ID('UTNIX.Migrar_Tarea') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Tarea

IF OBJECT_ID('UTNIX.Migrar_Tipo_Paquete') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Tipo_Paquete

IF OBJECT_ID('UTNIX.Migrar_Chofer') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Chofer

IF OBJECT_ID('UTNIX.Migrar_Modelo') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Modelo

IF OBJECT_ID('UTNIX.Migrar_Marca') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Marca

IF OBJECT_ID('UTNIX.Migrar_Mecanico') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Mecanico

IF OBJECT_ID('UTNIX.Migrar_Ciudad') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Ciudad

IF OBJECT_ID('UTNIX.Migrar_Recorrido') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Recorrido

IF OBJECT_ID('UTNIX.Migrar_Camion') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Camion

IF OBJECT_ID('UTNIX.Migrar_Orden_Trabajo') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Orden_Trabajo
	
IF OBJECT_ID('UTNIX.Migrar_Camion') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Camion

IF OBJECT_ID('UTNIX.Migrar_Estado') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Estado

IF OBJECT_ID('UTNIX.Migrar_Paquete') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Paquete

IF OBJECT_ID('UTNIX.Migrar_Taller') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Taller

IF OBJECT_ID('UTNIX.Migrar_Viaje') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Viaje

IF OBJECT_ID('UTNIX.Migrar_Tarea_a_Realizar') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Tarea_a_Realizar


/*---------------------------------------------------------------------------------------------------------------------------
											BORRADO DE ESQUEMA
---------------------------------------------------------------------------------------------------------------------------*/

IF EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'UTNIX')
  DROP SCHEMA UTNIX
GO


/*---------------------------------------------------------------------------------------------------------------------------
											CREACION DE ESQUEMA
---------------------------------------------------------------------------------------------------------------------------*/

CREATE SCHEMA UTNIX
GO


/*---------------------------------------------------------------------------------------------------------------------------
										CREACION DE TABLAS
---------------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE UTNIX.Ciudad (
		ciudad_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		ciudad_descripcion NVARCHAR(255) NOT NULL
);
GO

CREATE TABLE UTNIX.Recorrido (
		recorrido_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		recorrido_ciudad_origen_codigo DECIMAL(18,0) NOT NULL,
		recorrido_ciudad_destino_codigo DECIMAL(18,0) NOT NULL,
		recorrido_km DECIMAL(18,0) NOT NULL,
		recorrido_precio DECIMAL(18,2) NOT NULL
);
GO

CREATE TABLE UTNIX.Chofer (
		chofer_numero_legajo DECIMAL(18,0) PRIMARY KEY,
		chofer_nombre NVARCHAR(255) NOT NULL,
		chofer_apellido NVARCHAR(255) NOT NULL,
		chofer_dni DECIMAL(18,0) NOT NULL,
		chofer_direccion NVARCHAR(255) NOT NULL,
		chofer_telefono DECIMAL(18,0) NOT NULL,
		chofer_mail NVARCHAR(255) NOT NULL,
		chofer_fecha_nacimiento DATETIME2(3) NOT NULL,
		chofer_costo_hora DECIMAL(18,0) NOT NULL
);
GO

CREATE TABLE UTNIX.Modelo (
		modelo_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		modelo_descripcion NVARCHAR(255) NOT NULL,
		modelo_velocidad_max DECIMAL(18,0) NOT NULL,
		modelo_capacidad_tanque DECIMAL(18,0) NOT NULL,
		modelo_capacidad_carga DECIMAL(18,0) NOT NULL
);
GO

CREATE TABLE UTNIX.Marca (
		marca_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		marca_descripcion NVARCHAR(255) NOT NULL
);
GO

CREATE TABLE UTNIX.Camion (
		camion_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		camion_patente NVARCHAR(255) NOT NULL,
		camion_modelo_codigo DECIMAL(18,0) NOT NULL,
		camion_marca_codigo DECIMAL(18,0) NOT NULL,
		camion_numero_chasis NVARCHAR(255) NOT NULL,
		camion_numero_motor NVARCHAR(255) NOT NULL,
		camion_fecha_alta DATETIME2(3) NOT NULL
);
GO

CREATE TABLE UTNIX.Viaje (
		viaje_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		viaje_camion_codigo DECIMAL(18,0) NOT NULL,
		viaje_chofer_legajo DECIMAL(18,0) NOT NULL,
		viaje_recorrido_codigo DECIMAL(18,0) NOT NULL,
		viaje_fecha_inicio DATETIME2(7) NOT NULL,
		viaje_fecha_fin DATETIME2(3) NULL,
		viaje_consumo_combustible DECIMAL(18,2) NULL
);
GO

CREATE TABLE UTNIX.Tipo_Paquete (
		tipo_paquete_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		tipo_paquete_descripcion NVARCHAR(255) NOT NULL,
		tipo_paquete_peso_max DECIMAL(18,2) NOT NULL,
		tipo_paquete_alto_max DECIMAL(18,2) NOT NULL,
		tipo_paquete_ancho_max DECIMAL(18,2) NOT NULL,
		tipo_paquete_largo_max DECIMAL(18,2) NOT NULL,
		tipo_paquete_precio DECIMAL(18,2) NOT NULL
);
GO

CREATE TABLE UTNIX.Paquete (
		paquete_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		paquete_tipo_codigo DECIMAL(18,0) NOT NULL,
		paquete_viaje_codigo DECIMAL(18,0) NOT NULL,
		paquete_cantidad DECIMAL(18,0) NOT NULL	
);
GO

CREATE TABLE UTNIX.Estado (
		estado_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		estado_descripcion NVARCHAR(255) NOT NULL
);
GO

CREATE TABLE UTNIX.Taller (
		taller_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		taller_nombre NVARCHAR(255) NOT NULL,
		taller_mail NVARCHAR(255) NOT NULL,
		taller_direccion NVARCHAR(255) NOT NULL,
		taller_codigo_ciudad DECIMAL(18,0) NOT NULL,
		taller_telefono DECIMAL(18,0) NOT NULL
);
GO

CREATE TABLE UTNIX.Orden_Trabajo (
		orden_trabajo_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		orden_trabajo_fecha NVARCHAR(255) NOT NULL,
		orden_trabajo_camion_codigo DECIMAL(18,0) NOT NULL,
		orden_trabajo_estado_codigo DECIMAL(18,0) NULL,
		orden_trabajo_taller_codigo DECIMAL(18,0) NOT NULL
);
GO

CREATE TABLE UTNIX.Mecanico (
		mecanico_legajo_numero DECIMAL(18,0) PRIMARY KEY,
		mecanico_nombre NVARCHAR(255) NOT NULL,
		mecanico_apellido NVARCHAR(255) NOT NULL,
		mecanico_dni DECIMAL(18,0) NOT NULL,
		mecanico_direccion NVARCHAR(255) NOT NULL,
		mecanico_telefono DECIMAL(18,0) NOT NULL,
		mecanico_mail NVARCHAR(255) NOT NULL,
		mecanico_fecha_nacimiento DATETIME2(3) NOT NULL,
		mecanico_costo_hora DECIMAL(18,0) NOT NULL
);
GO

CREATE TABLE UTNIX.Tipo_Tarea (
		tipo_tarea_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		tipo_tarea_descripcion NVARCHAR(255) NOT NULL
);
GO

CREATE TABLE UTNIX.Tarea (
		tarea_codigo DECIMAL(18,0) PRIMARY KEY,
		tarea_descripcion NVARCHAR(255) NOT NULL,
		tarea_tipo_codigo DECIMAL(18,0) NOT NULL,
		tarea_tiempo_estimado DECIMAL(18,0) NOT NULL
);
GO

CREATE TABLE UTNIX.Tarea_a_Realizar (
		tarea_a_realizar_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		tarea_a_realizar_orden_trabajo_codigo DECIMAL(18,0) NOT NULL,
		tarea_a_realizar_tarea_codigo DECIMAL(18,0) NOT NULL,
		tarea_a_realizar_mecanico_legajo DECIMAL(18,0) NULL,
		tarea_a_realizar_fecha_inicio_planificado DATETIME2(3) NULL,
		tarea_a_realizar_fecha_inicio DATETIME2(3) NULL,
		tarea_a_realizar_fecha_fin DATETIME2(3) NULL,
		tarea_a_realizar_tiempo_real DECIMAL(18,0) NULL
);
GO

CREATE TABLE UTNIX.Material (
		material_codigo NVARCHAR(100) PRIMARY KEY,
		material_descripcion NVARCHAR(255) NOT NULL,
		material_precio DECIMAL(18,2) NOT NULL
);
GO

CREATE TABLE UTNIX.Material_x_Tarea (
		material_x_tarea_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		tarea_codigo DECIMAL(18,0) NOT NULL,
		material_codigo NVARCHAR(100) NOT NULL,
);
GO


/*---------------------------------------------------------------------------------------------------------------------------
										CREACION DE FOREIGN KEYs
---------------------------------------------------------------------------------------------------------------------------*/

ALTER TABLE UTNIX.Recorrido
	ADD FOREIGN KEY (recorrido_ciudad_origen_codigo) REFERENCES UTNIX.Ciudad(ciudad_codigo),
		FOREIGN KEY (recorrido_ciudad_destino_codigo) REFERENCES UTNIX.Ciudad(ciudad_codigo); 
GO

ALTER TABLE UTNIX.Camion
	ADD FOREIGN KEY (camion_modelo_codigo) REFERENCES UTNIX.Modelo(modelo_codigo),
		FOREIGN KEY (camion_marca_codigo) REFERENCES UTNIX.Marca(marca_codigo);
GO

ALTER TABLE UTNIX.Viaje
	ADD FOREIGN KEY (viaje_camion_codigo) REFERENCES UTNIX.Camion(camion_codigo),
		FOREIGN KEY (viaje_chofer_legajo) REFERENCES UTNIX.Chofer(chofer_numero_legajo),
		FOREIGN KEY (viaje_recorrido_codigo) REFERENCES UTNIX.Recorrido(recorrido_codigo);
GO

ALTER TABLE UTNIX.Paquete 
	ADD FOREIGN KEY (paquete_tipo_codigo) REFERENCES UTNIX.Tipo_Paquete(tipo_paquete_codigo),
		FOREIGN KEY (paquete_viaje_codigo) REFERENCES UTNIX.Viaje(viaje_codigo);
GO

ALTER TABLE UTNIX.Taller 
	ADD FOREIGN KEY (taller_codigo_ciudad) REFERENCES UTNIX.Ciudad(ciudad_codigo);
GO

ALTER TABLE UTNIX.Orden_Trabajo
	ADD FOREIGN KEY (orden_trabajo_camion_codigo) REFERENCES UTNIX.Camion(camion_codigo),
		FOREIGN KEY (orden_trabajo_estado_codigo) REFERENCES UTNIX.Estado(estado_codigo),
		FOREIGN KEY (orden_trabajo_taller_codigo) REFERENCES UTNIX.Taller(taller_codigo);
GO

ALTER TABLE UTNIX.Tarea
	ADD FOREIGN KEY (tarea_tipo_codigo) REFERENCES UTNIX.Tipo_Tarea(tipo_tarea_codigo);
GO

ALTER TABLE UTNIX.Tarea_a_Realizar
	ADD FOREIGN KEY (tarea_a_realizar_orden_trabajo_codigo) REFERENCES UTNIX.Orden_Trabajo(orden_trabajo_codigo),
		FOREIGN KEY (tarea_a_realizar_tarea_codigo) REFERENCES UTNIX.Tarea(tarea_codigo),
		FOREIGN KEY (tarea_a_realizar_mecanico_legajo) REFERENCES UTNIX.Mecanico(mecanico_legajo_numero);
GO

ALTER TABLE UTNIX.Material_x_Tarea
	ADD FOREIGN KEY (tarea_codigo) REFERENCES UTNIX.Tarea(tarea_codigo),
		FOREIGN KEY (material_codigo) REFERENCES UTNIX.Material(material_codigo);
GO


/*---------------------------------------------------------------------------------------------------------------------------
										CREACION DE FUNCIONES
---------------------------------------------------------------------------------------------------------------------------*/

CREATE FUNCTION UTNIX.Obtener_Tipo_Tarea (@TIPO_TAREA_DESCRIPCION NVARCHAR(255))
RETURNS DECIMAL(18,0)
AS
BEGIN
	DECLARE @TIPO_TAREA_CODIGO DECIMAL(18,0)

	SELECT @TIPO_TAREA_CODIGO = tipo_tarea_codigo FROM UTNIX.Tipo_Tarea
	WHERE tipo_tarea_descripcion = @TIPO_TAREA_DESCRIPCION

	RETURN @TIPO_TAREA_CODIGO
END
GO

CREATE FUNCTION UTNIX.Obtener_Tipo_Paquete (@TIPO_PAQUETE NVARCHAR(255))
RETURNS DECIMAL(18,0)
AS
BEGIN
	DECLARE @CODIGO_TIPO_PAQUETE DECIMAL(18,0)

	SELECT @CODIGO_TIPO_PAQUETE = tipo_paquete_codigo FROM UTNIX.Tipo_Paquete
	WHERE @TIPO_PAQUETE = tipo_paquete_descripcion

	RETURN @CODIGO_TIPO_PAQUETE
END
GO

CREATE FUNCTION UTNIX.Obtener_COD_Ciudad (@CIUDAD NVARCHAR(255))
RETURNS DECIMAL(18,0)
AS
BEGIN
	DECLARE @CODIGO_CIUDAD DECIMAL(18,0)

	SELECT @CODIGO_CIUDAD = ciudad_codigo FROM UTNIX.Ciudad
	WHERE ciudad_descripcion = @CIUDAD
	
	RETURN @CODIGO_CIUDAD
END
GO

CREATE FUNCTION UTNIX.Obtener_COD_Marca (@MARCA NVARCHAR(255))
RETURNS DECIMAL(18,0)
AS
BEGIN
	DECLARE @CODIGO_MARCA DECIMAL(18,0)

	SELECT @CODIGO_MARCA = marca_codigo FROM UTNIX.Marca
	WHERE marca_descripcion = @MARCA

	RETURN @CODIGO_MARCA
END
GO

CREATE FUNCTION UTNIX.Obtener_COD_Modelo (@MODELO NVARCHAR(255), @CAPACIDAD_CARGA DECIMAL(18,0), @CAPACIDAD_TANQUE DECIMAL(18,0), @VELOCIDAD_MAX DECIMAL(18,0))
RETURNS DECIMAL(18,0)
AS
BEGIN	
	DECLARE @CODIGO_MODELO DECIMAL(18,0)

	SELECT @CODIGO_MODELO = modelo_codigo FROM UTNIX.Modelo
	WHERE modelo_descripcion = @MODELO AND
		  modelo_capacidad_carga = @CAPACIDAD_CARGA AND
		  modelo_capacidad_tanque = @CAPACIDAD_TANQUE AND
		  modelo_velocidad_max = @VELOCIDAD_MAX

	RETURN @CODIGO_MODELO
END
GO

CREATE FUNCTION UTNIX.Obtener_COD_Camion (@PATENTE NVARCHAR(255))
RETURNS DECIMAL(18,0)
AS
BEGIN
	DECLARE @CODIGO_CAMION DECIMAL(18,0)

	SELECT @CODIGO_CAMION = camion_codigo FROM UTNIX.Camion
	WHERE camion_patente = @PATENTE

	RETURN @CODIGO_CAMION
END
GO

CREATE FUNCTION UTNIX.Obtener_COD_Recorrido (@ORIGEN NVARCHAR(255), @DESTINO NVARCHAR(255), @RECORRIDO DECIMAL(18,0))
RETURNS DECIMAL(18,0)
AS
BEGIN
	DECLARE @CODIGO_RECORRIDO DECIMAL(18,0)

	SELECT @CODIGO_RECORRIDO = recorrido_codigo FROM UTNIX.Recorrido
	WHERE recorrido_ciudad_origen_codigo = UTNIX.Obtener_COD_Ciudad(@ORIGEN) AND
		  recorrido_ciudad_destino_codigo = UTNIX.Obtener_COD_Ciudad(@DESTINO) AND
		  recorrido_km = @RECORRIDO

	RETURN @CODIGO_RECORRIDO
END
GO

CREATE FUNCTION UTNIX.Obtener_COD_Viaje (@PATENTE NVARCHAR(255), @CHOFER_NRO_LEGAJO DECIMAL(18,0), @CIUDAD_ORIGEN NVARCHAR(255), @CIUDAD_DESTINO NVARCHAR(255), @RECORRIDO DECIMAL(18,0), @VIAJE_INICIO DATETIME2(7), @VIAJE_FIN DATETIME2(3), @CONSUMO_COMBUSTIBLE DECIMAL(18,2))
RETURNS DECIMAL(18,0)
AS
BEGIN
	DECLARE @CODIGO_VIAJE DECIMAL(18,0)

	SELECT @CODIGO_VIAJE = viaje_codigo FROM UTNIX.Viaje
	WHERE UTNIX.Obtener_COD_Camion(@PATENTE) = viaje_camion_codigo AND
		 @CHOFER_NRO_LEGAJO = viaje_chofer_legajo AND
		 UTNIX.Obtener_COD_Recorrido(@CIUDAD_ORIGEN, @CIUDAD_DESTINO, @RECORRIDO) = viaje_recorrido_codigo AND
		 @VIAJE_INICIO = viaje_fecha_inicio AND
		 @VIAJE_FIN = viaje_fecha_fin AND
		 @CONSUMO_COMBUSTIBLE = viaje_consumo_combustible

	RETURN @CODIGO_VIAJE
END
GO

CREATE FUNCTION UTNIX.Obtener_COD_Taller (@NOMBRE_TALLER NVARCHAR(255))
RETURNS DECIMAL(18,0)
AS
BEGIN
	DECLARE @CODIGO_TALLER DECIMAL(18,0)

	SELECT @CODIGO_TALLER = taller_codigo FROM UTNIX.Taller
	WHERE taller_nombre = @NOMBRE_TALLER

	RETURN @CODIGO_TALLER
END
GO

CREATE FUNCTION UTNIX.Obtener_COD_Estado (@ESTADO NVARCHAR(255))
RETURNS DECIMAL(18,0)
AS
BEGIN
	DECLARE @CODIGO_ESTADO DECIMAL(18,0)

	SELECT @CODIGO_ESTADO = estado_codigo FROM UTNIX.Estado
	WHERE estado_descripcion = @ESTADO

	RETURN @CODIGO_ESTADO
END
GO

CREATE FUNCTION UTNIX.Obtener_COD_OT (@FECHA_OT NVARCHAR(255), @NOMBRE_TALLER NVARCHAR(255), @PATENTE NVARCHAR(255))
RETURNS DECIMAL(18,0)
AS
BEGIN
	DECLARE @CODIGO_OT DECIMAL(18,0)

	SELECT @CODIGO_OT = orden_trabajo_codigo FROM UTNIX.Orden_Trabajo
	WHERE orden_trabajo_taller_codigo = UTNIX.Obtener_COD_Taller(@NOMBRE_TALLER) AND
		  orden_trabajo_camion_codigo = UTNIX.Obtener_COD_Camion(@PATENTE) AND
		  orden_trabajo_fecha = @FECHA_OT
	
	RETURN @CODIGO_OT
END
GO


/*---------------------------------------------------------------------------------------------------------------------------
										CREACION DE PROCEDURES
---------------------------------------------------------------------------------------------------------------------------*/

CREATE PROCEDURE UTNIX.Migrar_Material
AS
BEGIN

	INSERT INTO UTNIX.Material (material_codigo, material_descripcion, material_precio)
		SELECT DISTINCT MATERIAL_COD, MATERIAL_DESCRIPCION, MATERIAL_PRECIO 
		FROM gd_esquema.Maestra
		WHERE MATERIAL_COD IS NOT NULL
END
GO


CREATE PROCEDURE UTNIX.Migrar_Material_x_Tarea
AS
BEGIN
	INSERT INTO UTNIX.Material_x_Tarea (tarea_codigo, material_codigo)
		SELECT DISTINCT TAREA_CODIGO, MATERIAL_COD 
		FROM gd_esquema.Maestra
		WHERE TAREA_CODIGO IS NOT NULL
		GROUP BY TAREA_CODIGO, MATERIAL_COD
		ORDER BY 1 ASC 
END
GO


CREATE PROCEDURE UTNIX.Migrar_Tipo_Tarea 
AS
BEGIN
	INSERT INTO UTNIX.Tipo_Tarea (tipo_tarea_descripcion)
		SELECT DISTINCT TIPO_TAREA 
		FROM gd_esquema.Maestra
		WHERE TIPO_TAREA IS NOT NULL
END
GO


CREATE PROCEDURE UTNIX.Migrar_Tarea
AS
BEGIN
	INSERT INTO UTNIX.Tarea (tarea_codigo, tarea_descripcion, tarea_tipo_codigo, tarea_tiempo_estimado)
		SELECT DISTINCT TAREA_CODIGO, TAREA_DESCRIPCION, UTNIX.Obtener_Tipo_Tarea(TIPO_TAREA), TAREA_TIEMPO_ESTIMADO 
		FROM gd_esquema.Maestra
		WHERE TAREA_CODIGO IS NOT NULL
END
GO


CREATE PROCEDURE UTNIX.Migrar_Tipo_Paquete
AS
BEGIN
	INSERT INTO UTNIX.Tipo_Paquete (tipo_paquete_descripcion, tipo_paquete_peso_max, tipo_paquete_alto_max, tipo_paquete_ancho_max, tipo_paquete_largo_max, tipo_paquete_precio)
		SELECT DISTINCT PAQUETE_DESCRIPCION, PAQUETE_PESO_MAX, PAQUETE_ALTO_MAX, PAQUETE_ANCHO_MAX, PAQUETE_ALTO_MAX, PAQUETE_PRECIO 
		FROM gd_esquema.Maestra
		WHERE PAQUETE_DESCRIPCION IS NOT NULL
		ORDER BY PAQUETE_PRECIO ASC
END
GO


CREATE PROCEDURE UTNIX.Migrar_Paquete
AS
BEGIN
	SELECT DISTINCT PAQUETE_DESCRIPCION, CAMION_PATENTE, CHOFER_NRO_LEGAJO, RECORRIDO_CIUDAD_ORIGEN, RECORRIDO_CIUDAD_DESTINO, RECORRIDO_KM, VIAJE_FECHA_INICIO, VIAJE_FECHA_FIN, PAQUETE_CANTIDAD, VIAJE_CONSUMO_COMBUSTIBLE INTO #temp_paquete
	FROM gd_esquema.Maestra
	WHERE PAQUETE_DESCRIPCION IS NOT NULL
	GROUP BY PAQUETE_DESCRIPCION, CAMION_PATENTE, CHOFER_NRO_LEGAJO, RECORRIDO_CIUDAD_ORIGEN, RECORRIDO_CIUDAD_DESTINO, RECORRIDO_KM, VIAJE_FECHA_INICIO, VIAJE_FECHA_FIN, PAQUETE_CANTIDAD, VIAJE_CONSUMO_COMBUSTIBLE
	ORDER BY 1 ASC

	INSERT INTO UTNIX.Paquete (paquete_tipo_codigo, paquete_viaje_codigo, paquete_cantidad)
		SELECT DISTINCT UTNIX.Obtener_Tipo_Paquete(PAQUETE_DESCRIPCION), UTNIX.Obtener_COD_Viaje(CAMION_PATENTE, CHOFER_NRO_LEGAJO, RECORRIDO_CIUDAD_ORIGEN, RECORRIDO_CIUDAD_DESTINO, RECORRIDO_KM, VIAJE_FECHA_INICIO, VIAJE_FECHA_FIN, VIAJE_CONSUMO_COMBUSTIBLE), PAQUETE_CANTIDAD 
		FROM #temp_paquete
		ORDER BY 2

	DROP TABLE #temp_paquete
END
GO


CREATE PROCEDURE UTNIX.Migrar_Chofer 
AS
BEGIN
	INSERT INTO UTNIX.Chofer (chofer_numero_legajo, chofer_nombre, chofer_apellido, chofer_dni, chofer_direccion, chofer_telefono, chofer_mail, chofer_fecha_nacimiento, chofer_costo_hora)
		SELECT DISTINCT CHOFER_NRO_LEGAJO, CHOFER_NOMBRE, CHOFER_APELLIDO, CHOFER_DNI, CHOFER_DIRECCION, CHOFER_TELEFONO, CHOFER_MAIL, CHOFER_FECHA_NAC, CHOFER_COSTO_HORA 
		FROM gd_esquema.Maestra
		WHERE CHOFER_NRO_LEGAJO IS NOT NULL
		ORDER BY 1 ASC
END
GO


CREATE PROCEDURE UTNIX.Migrar_Modelo
AS
BEGIN
	INSERT INTO UTNIX.Modelo (modelo_descripcion, modelo_velocidad_max, modelo_capacidad_tanque, modelo_capacidad_carga)
		SELECT DISTINCT MODELO_CAMION, MODELO_VELOCIDAD_MAX, MODELO_CAPACIDAD_TANQUE, MODELO_CAPACIDAD_CARGA 
		FROM gd_esquema.Maestra
		WHERE MODELO_CAMION IS NOT NULL
		ORDER BY 1 ASC
END
GO


CREATE PROCEDURE UTNIX.Migrar_Marca
AS
BEGIN
	INSERT INTO UTNIX.Marca (marca_descripcion)
		SELECT DISTINCT MARCA_CAMION_MARCA 
		FROM gd_esquema.Maestra
		WHERE MARCA_CAMION_MARCA IS NOT NULL
		ORDER BY 1 ASC
END 
GO


CREATE PROCEDURE UTNIX.Migrar_Mecanico
AS
BEGIN
	INSERT INTO UTNIX.Mecanico (mecanico_legajo_numero, mecanico_nombre, mecanico_apellido, mecanico_dni, mecanico_direccion, mecanico_telefono, mecanico_mail, mecanico_fecha_nacimiento, mecanico_costo_hora)
		SELECT DISTINCT MECANICO_NRO_LEGAJO, MECANICO_NOMBRE, MECANICO_APELLIDO, MECANICO_DNI, MECANICO_DIRECCION, MECANICO_TELEFONO, MECANICO_MAIL, MECANICO_FECHA_NAC, MECANICO_COSTO_HORA 
		FROM gd_esquema.Maestra
		WHERE MECANICO_NRO_LEGAJO IS NOT NULL
		ORDER BY 1 ASC
END
GO


CREATE PROCEDURE UTNIX.Migrar_Taller
AS
BEGIN
	INSERT INTO UTNIX.Taller (taller_nombre, taller_mail, taller_direccion, taller_codigo_ciudad, taller_telefono)
		SELECT DISTINCT TALLER_NOMBRE, TALLER_MAIL, TALLER_DIRECCION, UTNIX.Obtener_COD_Ciudad(TALLER_CIUDAD), TALLER_TELEFONO 
		FROM gd_esquema.Maestra
		WHERE TALLER_NOMBRE IS NOT NULL
		ORDER BY 1
END
GO


CREATE PROCEDURE UTNIX.Migrar_Estado
AS
BEGIN
	INSERT INTO UTNIX.Estado (estado_descripcion)
		SELECT DISTINCT ORDEN_TRABAJO_ESTADO 
		FROM gd_esquema.Maestra
		WHERE ORDEN_TRABAJO_ESTADO IS NOT NULL	
	INSERT INTO UTNIX.Estado VALUES ('En Proceso')		-- Para agregar un estado más
END
Go


CREATE PROCEDURE UTNIX.Migrar_Orden_Trabajo
AS
BEGIN
	SELECT DISTINCT ORDEN_TRABAJO_FECHA, CAMION_PATENTE, ORDEN_TRABAJO_ESTADO, TALLER_NOMBRE INTO #temp_ot
		FROM gd_esquema.Maestra
		WHERE ORDEN_TRABAJO_FECHA IS NOT NULL

	INSERT INTO UTNIX.Orden_Trabajo (orden_trabajo_fecha, orden_trabajo_camion_codigo, orden_trabajo_estado_codigo, orden_trabajo_taller_codigo)
		SELECT DISTINCT ORDEN_TRABAJO_FECHA, UTNIX.Obtener_COD_Camion(CAMION_PATENTE), UTNIX.Obtener_COD_Estado(ORDEN_TRABAJO_ESTADO), UTNIX.Obtener_COD_Taller(TALLER_NOMBRE)
		FROM #temp_ot

	DROP TABLE #temp_ot
END
GO


CREATE PROCEDURE UTNIX.Migrar_Tarea_a_Realizar
AS
BEGIN
	SELECT DISTINCT ORDEN_TRABAJO_FECHA, TALLER_NOMBRE, CAMION_PATENTE, TAREA_CODIGO, MECANICO_NRO_LEGAJO, TAREA_FECHA_INICIO_PLANIFICADO, TAREA_FECHA_INICIO, TAREA_FECHA_FIN INTO #temp_tarea_a_realizar
	FROM gd_esquema.Maestra
	WHERE TAREA_CODIGO IS NOT NULL AND TAREA_CODIGO IS NOT NULL
	GROUP BY ORDEN_TRABAJO_FECHA, TALLER_NOMBRE, CAMION_PATENTE, TAREA_CODIGO, MECANICO_NRO_LEGAJO, TAREA_FECHA_INICIO_PLANIFICADO, TAREA_FECHA_INICIO, TAREA_FECHA_FIN

	INSERT INTO UTNIX.Tarea_a_Realizar (tarea_a_realizar_orden_trabajo_codigo, tarea_a_realizar_tarea_codigo, tarea_a_realizar_mecanico_legajo, tarea_a_realizar_fecha_inicio_planificado, tarea_a_realizar_fecha_inicio, tarea_a_realizar_fecha_fin)
		SELECT DISTINCT UTNIX.Obtener_COD_OT(ORDEN_TRABAJO_FECHA, TALLER_NOMBRE, CAMION_PATENTE), TAREA_CODIGO, MECANICO_NRO_LEGAJO, TAREA_FECHA_INICIO_PLANIFICADO, TAREA_FECHA_INICIO, TAREA_FECHA_FIN 
		FROM #temp_tarea_a_realizar

	DROP TABLE #temp_tarea_a_realizar
END
GO


CREATE PROCEDURE UTNIX.Migrar_Ciudad
AS
BEGIN
	INSERT INTO UTNIX.Ciudad (ciudad_descripcion)
		SELECT DISTINCT RECORRIDO_CIUDAD_DESTINO 
		FROM gd_esquema.Maestra 
		WHERE RECORRIDO_CIUDAD_DESTINO IS NOT NULL
			UNION
		SELECT DISTINCT  RECORRIDO_CIUDAD_ORIGEN 
		FROM gd_esquema.Maestra 
		WHERE RECORRIDO_CIUDAD_ORIGEN IS NOT NULL
			UNION
		SELECT DISTINCT TALLER_CIUDAD 
		FROM gd_esquema.Maestra 
		WHERE TALLER_CIUDAD IS NOT NULL
END
GO


CREATE PROCEDURE UTNIX.Migrar_Recorrido
AS
BEGIN
	INSERT INTO UTNIX.Recorrido (recorrido_ciudad_origen_codigo, recorrido_ciudad_destino_codigo, recorrido_km, recorrido_precio)
		SELECT DISTINCT UTNIX.Obtener_COD_Ciudad(RECORRIDO_CIUDAD_ORIGEN), UTNIX.Obtener_COD_Ciudad(RECORRIDO_CIUDAD_DESTINO), RECORRIDO_KM, RECORRIDO_PRECIO 
		FROM gd_esquema.Maestra
		WHERE UTNIX.Obtener_COD_Ciudad(RECORRIDO_CIUDAD_ORIGEN) IS NOT NULL
END
GO


CREATE PROCEDURE UTNIX.Migrar_Viaje
AS
BEGIN
	SELECT DISTINCT  CAMION_PATENTE, CHOFER_NRO_LEGAJO, RECORRIDO_CIUDAD_ORIGEN, RECORRIDO_CIUDAD_DESTINO, RECORRIDO_KM, VIAJE_FECHA_INICIO, VIAJE_FECHA_FIN, VIAJE_CONSUMO_COMBUSTIBLE INTO #temp_viaje
	FROM gd_esquema.Maestra
	WHERE CHOFER_NRO_LEGAJO IS NOT NULL

	INSERT INTO UTNIX.Viaje (viaje_camion_codigo, viaje_chofer_legajo, viaje_recorrido_codigo, viaje_fecha_inicio, viaje_fecha_fin, viaje_consumo_combustible)
		SELECT DISTINCT UTNIX.Obtener_COD_Camion(CAMION_PATENTE), CHOFER_NRO_LEGAJO, UTNIX.Obtener_COD_Recorrido(RECORRIDO_CIUDAD_ORIGEN, RECORRIDO_CIUDAD_DESTINO, RECORRIDO_KM), VIAJE_FECHA_INICIO, VIAJE_FECHA_FIN, VIAJE_CONSUMO_COMBUSTIBLE 
		FROM #temp_viaje

	DROP TABLE #temp_viaje
END
GO


CREATE PROCEDURE UTNIX.Migrar_Camion
AS
BEGIN
	INSERT INTO UTNIX.Camion (camion_patente, camion_modelo_codigo, camion_marca_codigo, camion_numero_chasis, camion_numero_motor, camion_fecha_alta)
		SELECT DISTINCT CAMION_PATENTE, UTNIX.Obtener_COD_Modelo(MODELO_CAMION, MODELO_CAPACIDAD_CARGA, MODELO_CAPACIDAD_TANQUE, MODELO_VELOCIDAD_MAX), UTNIX.Obtener_COD_Marca(MARCA_CAMION_MARCA), CAMION_NRO_CHASIS, CAMION_NRO_MOTOR, CAMION_FECHA_ALTA 
		FROM gd_esquema.Maestra
		WHERE CAMION_PATENTE IS NOT NULL
END
GO


/*---------------------------------------------------------------------------------------------------------------------------
									EJECUCIÓN DE LOS PROCEDURES PARA MIGRAR LOS DATOS
---------------------------------------------------------------------------------------------------------------------------*/

EXEC UTNIX.Migrar_Tipo_Tarea
EXEC UTNIX.Migrar_Tarea
EXEC UTNIX.Migrar_Material
EXEC UTNIX.Migrar_Material_x_Tarea
EXEC UTNIX.Migrar_Ciudad
EXEC UTNIX.Migrar_Recorrido
EXEC UTNIX.Migrar_Modelo
EXEC UTNIX.Migrar_Marca
EXEC UTNIX.Migrar_Camion
EXEC UTNIX.Migrar_Estado
EXEC UTNIX.Migrar_Mecanico
EXEC UTNIX.Migrar_Taller
EXEC UTNIX.Migrar_Chofer
EXEC UTNIX.Migrar_Orden_Trabajo
EXEC UTNIX.Migrar_Tarea_a_Realizar	
EXEC UTNIX.Migrar_Viaje
EXEC UTNIX.Migrar_Tipo_Paquete
EXEC UTNIX.Migrar_Paquete				