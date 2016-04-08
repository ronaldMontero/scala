CREATE PROCEDURE spListarClientes
	@nombre varchar = null,
	@tipoCliente char = null,
	@clasificacion char = null
AS

	SELECT Nombre_Cliente, 
		   Extracto, 
		   (CASE Tipo_de_Cliente WHEN '1' THEN 'Gubernamental' WHEN '2' THEN 'Comercial' END) as TipoCliente, 
		   (CASE Tipo_de_Cliente WHEN '1' THEN 'hviolet' WHEN '2' THEN 'hyellow' END) as colorCliente, 
		   (CASE Categoria_Cliente WHEN  'A' THEN 'success' WHEN 'B' THEN 'warning' WHEN 'C' THEN 'danger' END) as ClasificacionCliente
	FROM Cliente_Empresa
	WHERE 1 = 1
      AND (@nombre is null OR 
	       Nombre_Cliente LIKE '%' + @nombre + '%')
      AND (@tipoCliente is null OR
	       Tipo_de_Cliente = @tipoCliente)
      AND (@clasificacion is null OR
	       Categoria_Cliente = @clasificacion);
GO

CREATE PROCEDURE spTodosClientes
AS
	SELECT Nombre_Cliente, 
		   Extracto, 
		   (CASE Tipo_de_Cliente WHEN '1' THEN 'Gubernamental' WHEN '2' THEN 'Comercial' END) as TipoCliente, 
		   (CASE Tipo_de_Cliente WHEN '1' THEN 'hviolet' WHEN '2' THEN 'hyellow' END) as colorCliente, 
		   (CASE Categoria_Cliente WHEN  'A' THEN 'success' WHEN 'B' THEN 'warning' WHEN 'C' THEN 'danger' END) as ClasificacionCliente
	FROM Cliente_Empresa
GO

CREATE PROCEDURE spClientes
AS
	SELECT ID_Empresa,
	       Nombre_Cliente, 
		   Cedula,
		   Email_Cliente as Email,
		   Telefono_Empresa as Telefono,
		   (CASE Tipo_de_Cliente WHEN '1' THEN 'Gubernamental' WHEN '2' THEN 'Comercial' END) as Tipo_Cliente, 
		   Categoria_Cliente,
		   Extracto
	FROM Cliente_Empresa
GO

CREATE PROCEDURE spRegistrarClientes
	@nombre varchar(600) = null,
	@email varchar(100) = null,
	@telefono int = null,
	@extracto text = null,
	@tipo varchar(150) = null,
	@categoria char(1) = null,
	@cedula varchar(50) = null,
	@msg varchar(100) OUTPUT
AS
BEGIN TRY
    IF EXISTS(SELECT 1 FROM Cliente_Empresa WHERE Cedula = @cedula)
        BEGIN
            SELECT 'Cedula ya utilizada en el sistema' AS msg
            RETURN
        END

	INSERT INTO Cliente_Empresa
			   (Nombre_Cliente
			   ,Email_Cliente
			   ,Tipo_de_Cliente
			   ,Categoria_Cliente
			   ,Telefono_empresa
			   ,Extracto
			   ,Fecha_Inclusion
			   ,Cedula)
		 VALUES
			   (@nombre
			   ,@email
			   ,@tipo
			   ,@categoria
			   ,@telefono
			   ,@extracto
			   ,GETDATE()
			   ,@cedula)
		SELECT 'Cliente ingresado correctamente' AS msg
		RETURN
END TRY
BEGIN CATCH
	SELECT 'Error en el ingreso de Clientes. Contacte el administrador!' AS msg
END CATCH


CREATE PROCEDURE spObtieneCliente
	@id int = null
AS

	SELECT ID_Empresa,
	       Nombre_Cliente, 
		   Cedula,
		   Email_Cliente as Email,
		   Telefono_Empresa as Telefono,
		   (CASE Tipo_de_Cliente WHEN '1' THEN 'Gubernamental' WHEN '2' THEN 'Comercial' END) as Tipo_Cliente, 
		   Categoria_Cliente,
		   Extracto
	FROM Cliente_Empresa
	WHERE 1 = 1
      AND (@id is null OR 
	       ID_Empresa = @id);


CREATE PROCEDURE spActualizarCliente
	@id int = null,
	@nombre varchar(600) = null,
	@email varchar(100) = null,
	@telefono int = null,
	@extracto text = null,
	@tipo varchar(150) = null,
	@categoria char(1) = null,
	@cedula varchar(50) = null
AS
BEGIN 
	UPDATE Cliente_Empresa
	   SET Nombre_Cliente = @nombre,
	       Email_Cliente = @email,
		   Telefono_empresa = @telefono,
		   Cedula = @cedula,
		   Extracto = @extracto,
		   Tipo_de_Cliente = @tipo,
		   Categoria_Cliente = @categoria
	WHERE  ID_Empresa = @id
END


CREATE PROCEDURE spBorrarCliente
	@id int = null
AS
BEGIN 
	DELETE 
	  FROM Cliente_Empresa
	WHERE  ID_Empresa = @id
END