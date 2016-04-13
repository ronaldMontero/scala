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

CREATE PROCEDURE spBorrarContacto
	@id int = null,
	@eliminaContacto bit = 0
AS
BEGIN 
	DELETE 
	  FROM Contacto_Cliente
	 WHERE ID_Persona = @id

    IF @eliminaContacto <> 0
		DELETE 
		  FROM Persona
		 WHERE ID_Persona = @id
	  
END
GO

CREATE PROCEDURE spObtieneContacto
	@id int = null
AS
BEGIN 
	SELECT p.ID_Persona,
		   p.Cedula,
		   p.Nombre,
		   p.Apellido1,
		   p.Apellido2,
		   p.Email,
		   p.Email2,
		   p.Telefono1,
		   p.Telefono2,
		   p.Telefono3,
		   p.Direccion1,
		   p.Direccion2,
		   ISNULL(e.Nombre_Cliente, 'No Asignado') as Empresa,
		   cc.ID_Empresa
	FROM Persona p
	LEFT OUTER JOIN Contacto_Cliente cc
	ON p.ID_Persona = cc.ID_Persona
	LEFT OUTER JOIN Empresa e
	ON cc.ID_Empresa = e.ID_Empresa
	WHERE 1 = 1
      AND (@id is null OR 
	       p.ID_Persona = @id);	
END
GO

CREATE PROCEDURE spActualizarContacto
	@idPersona int = null,
	@cedula int = null,
	@nombre varchar(35) = null,
	@apellido1 varchar(50) = null,
	@apellido2 varchar(50) = null,
	@email1 varchar(75) = null,
	@email2 varchar(75) = null,
	@telefono1 varchar(25) = null,
	@telefono2 varchar(25) = null,
	@telefono3 varchar(25) = null,
	@direccion1 text = null,
	@direccion2 text = null,
	@idCliente int = null
AS
BEGIN 
	DECLARE 
	@existeAsociacion int = 0

UPDATE Persona
   SET Cedula = @cedula
      ,Nombre = @nombre
      ,Apellido1 = @apellido1
      ,Apellido2 = @apellido2
      ,Email = @email1
      ,Email2 = @email2
      ,Telefono1 = @telefono1
      ,Telefono2 = @telefono2
      ,Telefono3 = @telefono3
      ,Direccion1 = @direccion1
      ,Direccion2 = @direccion2
 WHERE ID_Persona = @idPersona

	SELECT @existeAsociacion = COUNT(1) 
	  FROM Contacto_Cliente
	 WHERE 1 = 1 
	   AND (@idPersona is null OR 
	       ID_Persona = @idPersona)
	   AND (@idCliente is null OR 
	       ID_Empresa = @idCliente)

	IF @existeAsociacion = 0 AND @idCliente IS NOT NULL
		BEGIN
			INSERT INTO Contacto_Cliente 
						(ID_Empresa, 
						ID_Persona)
					VALUES (@idCliente,
							@idPersona)
		END
	ELSE
		BEGIN
			UPDATE Contacto_Cliente
			   SET ID_Empresa = @idCliente
			 WHERE ID_Persona = @idPersona
		END
END
GO