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

IF OBJECT_ID('UTNIX.Material_x_Tarea', 'U') IS NOT NULL
	DROP TABLE UTNIX.Material_x_Tarea
GO

IF OBJECT_ID('UTNIX.Material', 'U') IS NOT NULL
	DROP TABLE UTNIX.Material
GO

IF OBJECT_ID('UTNIX.Tarea_a_Realizar', 'U') IS NOT NULL
	DROP TABLE UTNIX.Tarea_a_Realizar
GO

IF OBJECT_ID('UTNIX.Tarea', 'U') IS NOT NULL
	DROP TABLE UTNIX.Tarea
GO

IF OBJECT_ID('UTNIX.Tipo_Tarea', 'U') IS NOT NULL
	DROP TABLE UTNIX.Tipo_Tarea
GO

IF OBJECT_ID('UTNIX.Mecanico', 'U') IS NOT NULL
	DROP TABLE UTNIX.Mecanico
GO

IF OBJECT_ID('UTNIX.Orden_Trabajo', 'U') IS NOT NULL
	DROP TABLE UTNIX.Orden_Trabajo
GO

IF OBJECT_ID('UTNIX.Taller', 'U') IS NOT NULL
	DROP TABLE UTNIX.Taller
GO

IF OBJECT_ID('UTNIX.Estado', 'U') IS NOT NULL
	DROP TABLE UTNIX.Estado
GO

IF OBJECT_ID('UTNIX.Paquete', 'U') IS NOT NULL
	DROP TABLE UTNIX.Paquete
GO

IF OBJECT_ID('UTNIX.Tipo_Paquete', 'U') IS NOT NULL
	DROP TABLE UTNIX.Tipo_Paquete
GO

IF OBJECT_ID('UTNIX.Viaje', 'U') IS NOT NULL
	DROP TABLE UTNIX.Viaje
GO

IF OBJECT_ID('UTNIX.Camion', 'U') IS NOT NULL
	DROP TABLE UTNIX.Camion
GO

IF OBJECT_ID('UTNIX.Marca', 'U') IS NOT NULL
	DROP TABLE UTNIX.Marca
GO

IF OBJECT_ID('UTNIX.Modelo', 'U') IS NOT NULL
	DROP TABLE UTNIX.Modelo
GO

IF OBJECT_ID('UTNIX.Chofer', 'U') IS NOT NULL
	DROP TABLE UTNIX.Chofer
GO

IF OBJECT_ID('UTNIX.Recorrido', 'U') IS NOT NULL
	DROP TABLE UTNIX.Recorrido
GO

IF OBJECT_ID('UTNIX.Ciudad', 'U') IS NOT NULL
	DROP TABLE UTNIX.Ciudad
GO


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

IF OBJECT_ID('UTNIX.Migrar_Tipo_Paquete') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Tipo_Paquete
GO

IF OBJECT_ID('UTNIX.Migrar_Chofer') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Chofer
GO

IF OBJECT_ID('UTNIX.Migrar_Modelo') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Modelo
GO

IF OBJECT_ID('UTNIX.Migrar_Marca') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Marca
GO

IF OBJECT_ID('UTNIX.Migrar_Mecanico') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Mecanico
GO

IF OBJECT_ID('UTNIX.Migrar_Ciudad') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Ciudad
GO

IF OBJECT_ID('UTNIX.Migrar_Recorrido') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Recorrido
GO

IF OBJECT_ID('UTNIX.Migrar_Camion') IS NOT NULL
	DROP PROCEDURE UTNIX.Migrar_Camion
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
		camion_patente NVARCHAR(255) NOT NULL,
		camion_modelo_codigo DECIMAL(18,0) REFERENCES UTNIX.Modelo(modelo_codigo) NOT NULL,
		camion_marca_codigo DECIMAL(18,0) REFERENCES UTNIX.Marca(marca_codigo) NOT NULL,
		camion_numero_chasis NVARCHAR(255) NOT NULL,
		camion_numero_motor NVARCHAR(255) NOT NULL,
		camion_fecha_alta DATETIME2(3) NOT NULL
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

CREATE FUNCTION UTNIX.Obtener_COD_Tarea ()

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

CREATE FUNCTION UTNIX.Obtener_COD_Modelo (@MODELO NVARCHAR(255))
RETURNS DECIMAL(18,0)
AS
BEGIN	
	DECLARE @CODIGO_MODELO DECIMAL(18,0)

	SELECT @CODIGO_MODELO = modelo_codigo FROM UTNIX.Modelo
	WHERE modelo_descripcion = @MODELO

	RETURN @CODIGO_MODELO

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

-----------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------%%%%%%%%%%%%%%%%% REVISAR
CREATE PROCEDURE UTNIX.Migrar_Material_x_Tarea
AS
BEGIN
	INSERT INTO UTNIX.Material_x_Tarea (tarea_codigo, material_codigo)
		SELECT TAREA_CODIGO, MATERIAL_COD FROM gd_esquema.Maestra
		WHERE TAREA_CODIGO IS NOT NULL
		GROUP BY TAREA_CODIGO, MATERIAL_COD
		ORDER BY 1 ASC 
END
GO

-- Para tener un ejemplo de la cantidad de Materiales para Cada tarea
SELECT tarea_codigo, COUNT(material_codigo) AS [Cantidad de Materiales]
FROM UTNIX.Material_x_Tarea
GROUP BY tarea_codigo
GO

SELECT * FROM UTNIX.Material_x_Tarea
GO

-----------------------------------------------------------------------------------------------------------------------------------------

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

-----------------------------------------------------------------------------------------------------------------------------------------

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

-----------------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE UTNIX.Migrar_Tipo_Paquete
AS
BEGIN
	INSERT INTO UTNIX.Tipo_Paquete (tipo_paquete_descripcion, tipo_paquete_peso_max, tipo_paquete_alto_max, tipo_paquete_ancho_max, tipo_paquete_largo_max, tipo_paquete_precio)
		SELECT DISTINCT PAQUETE_DESCRIPCION, PAQUETE_PESO_MAX, PAQUETE_ALTO_MAX, PAQUETE_ANCHO_MAX, PAQUETE_ALTO_MAX, PAQUETE_PRECIO FROM gd_esquema.Maestra
		WHERE PAQUETE_DESCRIPCION IS NOT NULL
		ORDER BY PAQUETE_PRECIO ASC
END
GO

SELECT * FROM UTNIX.Tipo_Paquete
GO

-----------------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE UTNIX.Migrar_Chofer 
AS
BEGIN
	INSERT INTO UTNIX.Chofer (chofer_numero_legajo, chofer_nombre, chofer_apellido, chofer_dni, chofer_direccion, chofer_telefono, chofer_mail, chofer_fecha_nacimiento, chofer_costo_hora)
		SELECT DISTINCT CHOFER_NRO_LEGAJO, CHOFER_NOMBRE, CHOFER_APELLIDO, CHOFER_DNI, CHOFER_DIRECCION, CHOFER_TELEFONO, CHOFER_MAIL, CHOFER_FECHA_NAC, CHOFER_COSTO_HORA FROM gd_esquema.Maestra
		WHERE CHOFER_NRO_LEGAJO IS NOT NULL
		ORDER BY 1 ASC
END
GO

SELECT * FROM UTNIX.Chofer
GO

-----------------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE UTNIX.Migrar_Modelo
AS
BEGIN
	INSERT INTO UTNIX.Modelo (modelo_descripcion, modelo_velocidad_max, modelo_capacidad_tanque, modelo_capacidad_carga)
	SELECT DISTINCT MODELO_CAMION, MODELO_VELOCIDAD_MAX, MODELO_CAPACIDAD_TANQUE, MODELO_CAPACIDAD_CARGA FROM gd_esquema.Maestra
	WHERE MODELO_CAMION IS NOT NULL
	ORDER BY 1 ASC
END
GO

SELECT * FROM UTNIX.Modelo
GO

-----------------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE UTNIX.Migrar_Marca
AS
BEGIN
	INSERT INTO UTNIX.Marca (marca_descripcion)
		SELECT DISTINCT MARCA_CAMION_MARCA FROM gd_esquema.Maestra
		WHERE MARCA_CAMION_MARCA IS NOT NULL
		ORDER BY 1 ASC
END 
GO

SELECT * FROM UTNIX.Marca
GO

-----------------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE UTNIX.Migrar_Mecanico
AS
BEGIN
	INSERT INTO UTNIX.Mecanico (mecanico_legajo_numero, mecanico_nombre, mecanico_apellido, mecanico_dni, mecanico_direccion, mecanico_telefono, mecanico_mail, mecanico_fecha_nacimiento, mecanico_costo_hora)
		SELECT DISTINCT MECANICO_NRO_LEGAJO, MECANICO_NOMBRE, MECANICO_APELLIDO, MECANICO_DNI, MECANICO_DIRECCION, MECANICO_TELEFONO, MECANICO_MAIL, MECANICO_FECHA_NAC, MECANICO_COSTO_HORA FROM gd_esquema.Maestra
		WHERE MECANICO_NRO_LEGAJO IS NOT NULL
		ORDER BY 1 ASC
END
GO

SELECT * FROM UTNIX.Mecanico
GO

-----------------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE UTNIX.Migrar_Ciudad
AS
BEGIN
	INSERT INTO UTNIX.Ciudad (ciudad_descripcion)
		SELECT DISTINCT RECORRIDO_CIUDAD_DESTINO FROM gd_esquema.Maestra WHERE RECORRIDO_CIUDAD_DESTINO IS NOT NULL
			UNION
			SELECT DISTINCT  RECORRIDO_CIUDAD_ORIGEN FROM gd_esquema.Maestra WHERE RECORRIDO_CIUDAD_ORIGEN IS NOT NULL
			UNION
			SELECT DISTINCT TALLER_CIUDAD FROM gd_esquema.Maestra WHERE TALLER_CIUDAD IS NOT NULL
END
GO

SELECT * FROM UTNIX.Ciudad
GO

-----------------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE UTNIX.Migrar_Recorrido
AS
BEGIN
	INSERT INTO UTNIX.Recorrido (recorrido_ciudad_origen_codigo, recorrido_ciudad_destino_codigo, recorrido_km, recorrido_precio)
		SELECT DISTINCT UTNIX.Obtener_COD_Ciudad(RECORRIDO_CIUDAD_ORIGEN), UTNIX.Obtener_COD_Ciudad(RECORRIDO_CIUDAD_DESTINO), RECORRIDO_KM, RECORRIDO_PRECIO FROM gd_esquema.Maestra
		WHERE UTNIX.Obtener_COD_Ciudad(RECORRIDO_CIUDAD_ORIGEN) IS NOT NULL
END
GO

SELECT * FROM UTNIX.Recorrido

-- Podriamos hacer una vista con esto, para verlo mas detallado y mejor
SELECT recorrido_codigo AS [Codigo del Recorrido]
	, CiuOrigen.ciudad_descripcion AS [Ciudad de Origen]
	, CiuDestino.ciudad_descripcion AS [Ciudade de Destino]
	, recorrido_km AS [KM del Recorrido]
	, recorrido_precio AS [Precio del Recorrido]  
	FROM UTNIX.Recorrido
		JOIN UTNIX.Ciudad CiuOrigen ON CiuOrigen.ciudad_codigo = recorrido_ciudad_origen_codigo
		JOIN UTNIX.Ciudad CiuDestino ON CiuDestino.ciudad_codigo = recorrido_ciudad_destino_codigo
GO

-----------------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE UTNIX.Migrar_Camion
AS
BEGIN
	INSERT INTO UTNIX.Camion (camion_patente, camion_modelo_codigo, camion_marca_codigo, camion_numero_chasis, camion_numero_motor, camion_fecha_alta)
		SELECT DISTINCT CAMION_PATENTE, UTNIX.Obtener_COD_Modelo(MODELO_CAMION), UTNIX.Obtener_COD_Marca(MARCA_CAMION_MARCA), CAMION_NRO_CHASIS, CAMION_NRO_MOTOR, CAMION_FECHA_ALTA FROM gd_esquema.Maestra
		WHERE CAMION_PATENTE IS NOT NULL
END
GO

SELECT * FROM UTNIX.Camion
GO

-- Podriamos hacer una vista con esto, para verlo mas detallado y mejor
SELECT camion_codigo AS [Codigo del Camion]
	, camion_patente AS [Patente del Camion]
	, modelo_descripcion AS [Modelo del Camion]
	, marca_descripcion AS [Marca del Camion]
	, camion_numero_chasis AS [Numero de Chasis]
	, camion_numero_motor AS [Numero de Motor]
	, camion_fecha_alta AS [Fecha de Alta]
	FROM UTNIX.Camion
		JOIN UTNIX.Modelo ON modelo_codigo = camion_modelo_codigo
		JOIN UTNIX.Marca ON marca_codigo = camion_marca_codigo
GO


/*---------------------------------------------------------------------------------------------------------------------------
									EJECUCIÓN DE LOS PROCEDURES PARA MIGRAR LOS DATOS
---------------------------------------------------------------------------------------------------------------------------*/

EXEC UTNIX.Migrar_Material
EXEC UTNIX.Migrar_Material_x_Tarea
EXEC UTNIX.Migrar_Tipo_Tarea
EXEC UTNIX.Migrar_Tarea
EXEC UTNIX.Migrar_Tipo_Paquete
EXEC UTNIX.Migrar_Chofer
EXEC UTNIX.Migrar_Modelo
EXEC UTNIX.Migrar_Marca
EXEC UTNIX.Migrar_Mecanico
EXEC UTNIX.Migrar_Ciudad
EXEC UTNIX.Migrar_Recorrido
EXEC UTNIX.Migrar_Camion