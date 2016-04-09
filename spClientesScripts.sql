CREATE PROCEDURE spListarClientes
	@nombre varchar(150) = null,
	@tipoCliente varchar(50) = null,
	@clasificacion varchar(50) = null
AS

	SELECT Nombre_Cliente, 
		   Extracto, 
		   Tipo_Cliente, 
		   (CASE Tipo_Cliente WHEN 'Gubernamental' THEN 'hviolet' WHEN 'Comercial' THEN 'hyellow' END) as colorCliente, 
		   (CASE Categoria_Cliente WHEN  'A' THEN 'success' WHEN 'B' THEN 'warning' WHEN 'C' THEN 'danger' END) as ClasificacionCliente
	FROM Empresa
	WHERE 1 = 1
      AND (@nombre is null OR 
	       Nombre_Cliente LIKE '%' + @nombre + '%')
      AND (@tipoCliente is null OR
	       Tipo_Cliente = @tipoCliente)
      AND (@clasificacion is null OR
	       Categoria_Cliente = @clasificacion);
GO

CREATE PROCEDURE spTodosClientes
AS
	SELECT Nombre_Cliente, 
		   Extracto, 
		   Tipo_Cliente, 
		   (CASE Tipo_Cliente WHEN 'Gubernamental' THEN 'hviolet' WHEN 'Comercial' THEN 'hyellow' END) as colorCliente, 
		   (CASE Categoria_Cliente WHEN  'A' THEN 'success' WHEN 'B' THEN 'warning' WHEN 'C' THEN 'danger' END) as ClasificacionCliente
	FROM Empresa
GO

CREATE PROCEDURE spClientes
AS
	SELECT ID_Empresa,
	       Nombre_Cliente, 
		   Cedula_Juridica,
		   Email_Empresa as Email,
		   Telefono_Empresa as Telefono,
		   Tipo_Cliente, 
		   Categoria_Cliente,
		   Extracto
	FROM Empresa
GO

CREATE PROCEDURE spRegistrarClientes
	@nombre varchar(600) = null,
	@email varchar(100) = null,
	@telefono int = null,
	@extracto text = null,
	@tipo varchar(150) = null,
	@categoria char(1) = null,
	@Cedula_Juridica varchar(50) = null,
	@msg varchar(100) OUTPUT
AS
BEGIN TRY
    IF EXISTS(SELECT 1 FROM Empresa WHERE Cedula_Juridica = @Cedula_Juridica)
        BEGIN
            SELECT 'Cedula_Juridica ya utilizada en el sistema' AS msg
            RETURN
        END

	INSERT INTO Cliente_Empresa
			   (Nombre_Cliente
			   ,Email_Empresa
			   ,Tipo_Cliente
			   ,Categoria_Cliente
			   ,Telefono_Empresa
			   ,Extracto
			   ,Cedula_Juridica)
		 VALUES
			   (@nombre
			   ,@email
			   ,@tipo
			   ,@categoria
			   ,@telefono
			   ,@extracto
			   ,@Cedula_Juridica)
		SELECT 'Cliente ingresado correctamente' AS msg
		RETURN
END TRY
BEGIN CATCH
	SELECT 'Error en el ingreso de Clientes. Contacte el administrador!' AS msg
END CATCH
GO

CREATE PROCEDURE spObtieneCliente
	@id int = null
AS

	SELECT ID_Empresa,
	       Nombre_Cliente, 
		   Cedula_Juridica,
		   Email_Empresa as Email,
		   Telefono_Empresa as Telefono,
		   Tipo_Cliente, 
		   Categoria_Cliente,
		   Extracto
	FROM Empresa
	WHERE 1 = 1
      AND (@id is null OR 
	       ID_Empresa = @id);
GO

CREATE PROCEDURE spActualizarCliente
	@id int = null,
	@nombre varchar(600) = null,
	@email varchar(100) = null,
	@telefono int = null,
	@extracto text = null,
	@tipo varchar(150) = null,
	@categoria char(1) = null,
	@Cedula_Juridica varchar(50) = null
AS
BEGIN 
	UPDATE Empresa
	   SET Nombre_Cliente = @nombre,
	       Email_Empresa = @email,
		   Telefono_Empresa = @telefono,
		   Cedula_Juridica = @Cedula_Juridica,
		   Extracto = @extracto,
		   Tipo_Cliente = @tipo,
		   Categoria_Cliente = @categoria
	WHERE  ID_Empresa = @id
END
GO

CREATE PROCEDURE spBorrarCliente
	@id int = null
AS
BEGIN 
	DELETE 
	  FROM Empresa
	WHERE  ID_Empresa = @id
END
GO


CREATE PROCEDURE spListarContactos
	@id int = null,
	@nombre varchar(200) = null
AS

	SELECT ID_Persona,
		   Cedula,
		   Nombre,
		   Apellido1,
		   Apellido2,
		   Email,
		   Email2,
		   Telefono1,
		   Telefono2,
		   Telefono3,
		   Direccion1,
		   Direccion2
	FROM Persona
	WHERE 1 = 1
      AND (@id is null OR 
	       ID_Persona = @id)
	  AND (@nombre is null OR
		   Nombre LIKE '%'+ @nombre +'%');
GO