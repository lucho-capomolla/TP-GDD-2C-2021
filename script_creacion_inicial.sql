USE GD2C2021
GO


/*---------------------------------------------------------------------------------------------------------------------------
											BORRADO DE ESQUEMA
---------------------------------------------------------------------------------------------------------------------------*/

IF EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'UTNIX')
  DROP SCHEMA UTNIX
GO


/*---------------------------------------------------------------------------------------------------------------------------
											BORRADO DE TABLAS
---------------------------------------------------------------------------------------------------------------------------*/

IF OBJECT_ID('UTNIX.Ciudad', 'U') IS NOT NULL
	DROP TABLE UTNIX.Ciudad
GO

IF OBJECT_ID('UTNIX.Recorrido', 'U') IS NOT NULL
	DROP TABLE UTNIX.Recorrido
GO

IF OBJECT_ID('UTNIX.Chofer', 'U') IS NOT NULL
	DROP TABLE UTNIX.Chofer
GO

IF OBJECT_ID('UTNIX.Modelo', 'U') IS NOT NULL
	DROP TABLE UTNIX.Modelo
GO

IF OBJECT_ID('UTNIX.Marca', 'U') IS NOT NULL
	DROP TABLE UTNIX.Marca
GO

IF OBJECT_ID('UTNIX.Camion', 'U') IS NOT NULL
	DROP TABLE UTNIX.Camion
GO

IF OBJECT_ID('UTNIX.Viaje', 'U') IS NOT NULL
	DROP TABLE UTNIX.Viaje
GO

IF OBJECT_ID('UTNIX.Tipo_Paquete', 'U') IS NOT NULL
	DROP TABLE UTNIX.Tipo_Paquete
GO

IF OBJECT_ID('UTNIX.Paquete', 'U') IS NOT NULL
	DROP TABLE UTNIX.Paquete
GO

IF OBJECT_ID('UTNIX.Estado', 'U') IS NOT NULL
	DROP TABLE UTNIX.Estado
GO

IF OBJECT_ID('UTNIX.Taller', 'U') IS NOT NULL
	DROP TABLE UTNIX.Taller
GO

IF OBJECT_ID('UTNIX.Orden_Trabajo', 'U') IS NOT NULL
	DROP TABLE UTNIX.Orden_Trabajo
GO

IF OBJECT_ID('UTNIX.Mecanico', 'U') IS NOT NULL
	DROP TABLE UTNIX.Mecanico
GO

IF OBJECT_ID('UTNIX.Tipo_Tarea', 'U') IS NOT NULL
	DROP TABLE UTNIX.Tipo_Tarea
GO

IF OBJECT_ID('UTNIX.Tarea', 'U') IS NOT NULL
	DROP TABLE UTNIX.Tarea
GO

IF OBJECT_ID('UTNIX.Tarea_a_Realizar', 'U') IS NOT NULL
	DROP TABLE UTNIX.Tarea_a_Realizar
GO

IF OBJECT_ID('UTNIX.Material', 'U') IS NOT NULL
	DROP TABLE UTNIX.Material
GO

IF OBJECT_ID('UTNIX.Material_x_Tarea', 'U') IS NOT NULL
	DROP TABLE UTNIX.Material_x_Tarea
GO


/*---------------------------------------------------------------------------------------------------------------------------
											BORRADO DE FUNCIONES
---------------------------------------------------------------------------------------------------------------------------*/

IF OBJECT_ID('UTNIX.Obtener_Tipo_Tarea') IS NOT NULL
	DROP FUNCTION UTNIX.Obtener_Tipo_Tarea


/*---------------------------------------------------------------------------------------------------------------------------
											BORRADO DE PROCEDURES
---------------------------------------------------------------------------------------------------------------------------*/

IF OBJECT_ID('UTNIX.Migrar_Material') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Material
GO

IF OBJECT_ID('UTNIX.Migrar_Tipo_Tarea') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Tipo_Tarea
GO

IF OBJECT_ID('UTNIX.Migrar_Tarea') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Tarea
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
		recorrido_ciudad_origen_codigo DECIMAL(18,0) REFERENCES UTNIX.Ciudad(ciudad_codigo) NOT NULL,
		recorrido_ciudad_destino_codigo DECIMAL(18,0) REFERENCES UTNIX.Ciudad(ciudad_codigo) NOT NULL,
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
		camion_modelo_codigo DECIMAL(18,0) REFERENCES UTNIX.Modelo(modelo_codigo) NOT NULL,
		camion_marca_codigo DECIMAL(18,0) REFERENCES UTNIX.Marca(marca_codigo) NOT NULL,
		camion_numero_chasis NVARCHAR(255) NOT NULL,
		camion_numero_motor NVARCHAR(255) NOT NULL,
		camion_fecha_alta DATETIME2(3) NOT NULL,
		camion_patente NVARCHAR(255) NOT NULL
);
GO

CREATE TABLE UTNIX.Viaje (
		viaje_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		viaje_camion_codigo DECIMAL(18,0) REFERENCES UTNIX.Camion(camion_codigo) NOT NULL,
		viaje_chofer_legajo DECIMAL(18,0) REFERENCES UTNIX.Chofer(chofer_numero_legajo) NOT NULL,
		viaje_recorrido_codigo DECIMAL(18,0) REFERENCES UTNIX.Recorrido(recorrido_codigo) NOT NULL,
		viaje_fecha_inicio DATETIME2(7) NOT NULL,
		viaje_fecha_fin DATETIME2(3) NOT NULL,
		viaje_consumo_combustible DECIMAL(18,2) NOT NULL
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
		paquete_tipo_codigo DECIMAL(18,0) REFERENCES UTNIX.Tipo_Paquete(tipo_paquete_codigo) NOT NULL,
		paquete_viaje_codigo DECIMAL(18,0) REFERENCES UTNIX.Viaje(viaje_codigo) NOT NULL,
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
		taller_codigo_ciudad DECIMAL(18,0) REFERENCES UTNIX.Ciudad(ciudad_codigo) NOT NULL,
		taller_telefono DECIMAL(18,0) NOT NULL
);
GO

CREATE TABLE UTNIX.Orden_Trabajo (
		orden_trabajo_codigo DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		orden_trabajo_fecha NVARCHAR(255) NOT NULL,
		orden_trabajo_camion_codigo DECIMAL(18,0) REFERENCES UTNIX.Camion(camion_codigo) NOT NULL,
		orden_trabajo_estado_codigo DECIMAL(18,0) REFERENCES UTNIX.Estado(estado_codigo) NOT NULL,
		orden_trabajo_taller_codigo DECIMAL(18,0) REFERENCES UTNIX.Taller(taller_codigo) NOT NULL
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
		tarea_tipo_codigo DECIMAL(18,0) REFERENCES UTNIX.Tipo_Tarea(tipo_tarea_codigo) NOT NULL,
		tarea_tiempo_estimado DECIMAL(18,0) NOT NULL
);
GO

CREATE TABLE UTNIX.Tarea_a_Realizar (
		tarea_a_realizar_codigo	DECIMAL(18,0) PRIMARY KEY IDENTITY(1,1),
		tarea_a_realizar_orden_trabajo_codigo DECIMAL(18,0) REFERENCES UTNIX.Orden_Trabajo(orden_trabajo_codigo) NOT NULL,
		tarea_a_realizar_tarea_codigo DECIMAL(18,0) REFERENCES UTNIX.Tarea(tarea_codigo) NOT NULL,
		tarea_a_realizar_mecanico_legajo DECIMAL(18,0) REFERENCES UTNIX.Mecanico(mecanico_legajo_numero) NOT NULL,
		tarea_a_realizar_fecha_inicio_planificado DATETIME2(3) NOT NULL,
		tarea_a_realizar_fecha_inicio DATETIME2(3) NOT NULL,
		tarea_a_realizar_fecha_fin DATETIME2(3) NOT NULL,
		tarea_a_realizar_tiempo_real DECIMAL(18,0) NOT NULL
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
		tarea_codigo DECIMAL(18,0) REFERENCES UTNIX.Tarea(tarea_codigo) NOT NULL,
		material_codigo NVARCHAR(100) REFERENCES UTNIX.Material(material_codigo) NOT NULL
);
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



/*---------------------------------------------------------------------------------------------------------------------------
											CREACION DE PROCEDURES
---------------------------------------------------------------------------------------------------------------------------*/

CREATE PROCEDURE UTNIX.Migrar_Material
AS
BEGIN

	INSERT INTO UTNIX.Material (material_codigo, material_descripcion, material_precio)
		SELECT DISTINCT MATERIAL_COD, MATERIAL_DESCRIPCION, MATERIAL_PRECIO FROM gd_esquema.Maestra
		WHERE MATERIAL_COD IS NOT NULL
END
GO
-- Es para probar que se migraron los datos a la tabla
SELECT * FROM UTNIX.Material
GO



CREATE PROCEDURE UTNIX.Migrar_Tipo_Tarea 
AS
BEGIN
	INSERT INTO UTNIX.Tipo_Tarea (tipo_tarea_descripcion)
		SELECT DISTINCT TIPO_TAREA FROM gd_esquema.Maestra
		WHERE TIPO_TAREA IS NOT NULL
END
GO
-- Es para probar que se migraron los datos a la tabla
SELECT * FROM UTNIX.Tipo_Tarea
GO



CREATE PROCEDURE UTNIX.Migrar_Tarea
AS
BEGIN
	INSERT INTO UTNIX.Tarea (tarea_codigo, tarea_descripcion, tarea_tipo_codigo, tarea_tiempo_estimado)
		SELECT DISTINCT TAREA_CODIGO, TAREA_DESCRIPCION, UTNIX.Obtener_Tipo_Tarea(TIPO_TAREA), TAREA_TIEMPO_ESTIMADO FROM gd_esquema.Maestra
		WHERE TAREA_CODIGO IS NOT NULL
END
GO
-- Es para probar que se migraron los datos a la tabla
SELECT * FROM UTNIX.Tarea
GO




-- No darle bola, son datos auxiliares para crear los Procedimientos
SELECT * FROM gd_esquema.Maestra

SELECT DISTINCT TAREA_CODIGO, TAREA_DESCRIPCION, TAREA_TIEMPO_ESTIMADO, TIPO_TAREA FROM gd_esquema.Maestra
WHERE TAREA_CODIGO IS NOT NULL



/*---------------------------------------------------------------------------------------------------------------------------
									EJECUCIÓN DE LOS PROCEDURES PARA MIGRAR LOS DATOS
---------------------------------------------------------------------------------------------------------------------------*/

EXEC UTNIX.Migrar_Material
EXEC UTNIX.Migrar_Tipo_Tarea
EXEC UTNIX.Migrar_Tarea