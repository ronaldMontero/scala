
--SPs de listados

-----------------------------------------------
CREATE PROCEDURE sp_ListarFacturasPorFactura
@num_factura int = null

AS
SELECT e.nombre_cliente,n.num_factura,n.descripcion_Factura,n.estado,n.tipo_pago,n.monto_factura,n.monto_ultimo_pago,n.fecha_ultimo_pago
FROM factura_proveedor n join empresa e on e.ID_Empresa = n.ID_Empresa where n.num_factura = @num_factura
GO

execute sp_ListarFacturasPorFactura 40
-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_ListarTodasLasFacturas

AS
SELECT e.nombre_cliente,n.num_factura,n.descripcion_Factura,n.estado,n.tipo_pago,n.monto_factura,n.monto_ultimo_pago,n.fecha_ultimo_pago
FROM factura_proveedor n join empresa e on e.ID_Empresa = n.ID_Empresa 
GO

execute sp_ListarTodasLasFacturas;
-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_ListarTodasLasPersonas

AS
SELECT p.cedula,p.nombre,p.Apellido1,p.Apellido2,p.Email,p.Email2,p.Telefono1,p.Telefono2,p.Telefono3,p.Direccion1,p.Direccion2 
FROM Persona p 
JOIN Contacto_Proveedor cp on p.ID_Persona = cp.ID_Persona
GO

execute sp_ListarTodasLasPersonas;
-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_ListarTodosLosProductos

AS
SELECT p.ID_Producto,p.Nombre_Producto,p.Descripcion_Producto,p.Cantidad_Producto,p.Fecha_Entrega_Provision,p.Fecha_Vencimiento_Provision,e.Nombre_Cliente
FROM Producto p
JOIN Empresa e on p.ID_Empresa = e.ID_Empresa
GO

execute sp_ListarTodosLosProductos;
-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_ListarProductoPorNombre
@nombre_producto varchar(200) = null

AS
SELECT p.ID_Producto,p.Nombre_Producto,p.Descripcion_Producto,p.Cantidad_Producto,p.Fecha_Entrega_Provision,p.Fecha_Vencimiento_Provision,e.Nombre_Cliente
FROM Producto p
JOIN Empresa e on p.ID_Empresa = e.ID_Empresa 
WHERE p.Nombre_Producto like '%' + @nombre_producto + '%'
GO

execute sp_ListarProductoPorNombre 'bo';
-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_ListarPersonaPorNombre
@nombre_proveedor varchar(200) = null

AS
SELECT p.cedula,p.nombre,p.Apellido1,p.Apellido2,p.Email,p.Email2,p.Telefono1,p.Telefono2,p.Telefono3,p.Direccion1,p.Direccion2 
FROM Persona p 
JOIN Contacto_Proveedor cp on p.ID_Persona = cp.ID_Persona 
WHERE p.Nombre like '%' + @nombre_proveedor + '%'
GO

execute sp_ListarPersonaPorNombre 'mario'
-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_ListarEmpresasIngFactura

AS
SELECT DISTINCT e.nombre_cliente,e.ID_Empresa 
FROM empresa e inner join Contacto_Proveedor cp on e.ID_Empresa = cp.ID_Empresa order by e.Nombre_Cliente asc
GO

execute sp_ListarEmpresasIngFactura
-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_ListarUsuariosABorrar

AS
SELECT CONCAT (p.nombre,+' '+ p.apellido1 +' ',p.apellido2) as Resultado,cp.ID_Persona from Persona p join Contacto_Proveedor cp on p.ID_Persona = cp.ID_Persona
GO

execute sp_ListarUsuariosABorrar 'UsuarioAborrar * DE PROVEDORES *'
-----------------------------------------------
-----------------------------------------------

--SPs de ingreso de datos 

-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_IngresarFactura
@ID_empresa int = null,
@descripcion_factura varchar (300)= null,
@Estado varchar (50) = null,
@Tipo_Pago varchar (50) = null,
@monto float = null,
@fecha_ultimo_pago date null,
@monto_ultimo_pago float = null

AS
INSERT INTO Factura_Proveedor (ID_Empresa,Descripcion_Factura,Estado,Tipo_Pago,Monto_Factura,Fecha_Ultimo_Pago,Monto_Ultimo_Pago) 
VALUES (@ID_empresa,@descripcion_factura,@Estado,@Tipo_Pago,@monto,GETDATE(),@monto_ultimo_pago)
GO

--***DEBE EXISTIR UNA EMPRESA***
execute sp_IngresarFactura 1,'descripcion de factura','Activo','Colones',5000,'2016-07-04',0

-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_IngresarProveedor

@cedula int = null,
@Nombre varchar(200) = null,
@Apellido1 varchar(200) = null,
@Apellido2 varchar(200) = null,
@Email1 varchar(50) = null,
@Email2 varchar(50) = null,
@Telefono1 varchar(50) = null,
@Telefono2 varchar(50) = null,
@Telefono3 varchar(50) = null,
@Direccion1 varchar(300) = null,
@Direccion2 varchar(300) = null,
@ID_empresa int = null,
@Puesto_Proveedor varchar(100) = null

AS
BEGIN
	IF EXISTS (select cedula FROM Persona where Cedula = @cedula)
		BEGIN 
			SELECT 1
		END
	ElSE
		BEGIN
			INSERT INTO Persona (Cedula,Nombre,Apellido1,Apellido2,Email,Email2,Telefono1,Telefono2,Telefono3,Direccion1,Direccion2) 
			VALUES (@cedula,@nombre,@Apellido1,@Apellido2,@email1,@email2,@telefono1,@telefono2,@telefono3,@direccion1,@direccion2)

			INSERT INTO Contacto_Proveedor (ID_Empresa,Puesto_Proveedor,ID_Persona) 
			VALUES (@id_empresa,@Puesto_Proveedor,SCOPE_IDENTITY())
		SELECT 0
		END
END
GO
sp_IngresarProveedor 112201354,'Juan','Perez','Seras','Correo1'

-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_RegistrarProducto
@nombre_producto varchar(200) = null,
@descripcion_producto varchar(200) = null,
@cantidad_Producto int = null,
@Fecha_Entrega date = null,
@Fecha_Caducidad date = null,
@ID_Empresa int = null

AS
INSERT INTO producto (nombre_producto,descripcion_Producto,Cantidad_Producto,Fecha_entrega_Provision,Fecha_vencimiento_Provision,id_empresa) 
VALUES (@nombre_producto,@descripcion_producto,@cantidad_Producto,@Fecha_Entrega,@Fecha_Caducidad,@ID_Empresa)

GO

--Debe existir una empresa
execute sp_RegistrarProducto 'Nombre producto','Descripcion de producto', 50, '2015-01-01', '2015-01-02',1
-----------------------------------------------
-----------------------------------------------

--SPs de Modificacion de Datos

-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_ModificarFactura
@num_factura int = null, 
@ID_empresa int = null,  
@descripcion_factura varchar (300) = null,
@Estado varchar (50) = null,
@Tipo_Pago varchar (50) = null,
@monto float = null,
@monto_ultimo_pago float = null,
@Fecha_ultimo_pago date = null


AS
UPDATE Factura_Proveedor 
SET ID_Empresa=@ID_empresa,Descripcion_Factura=@Descripcion_factura,Estado=@Estado,Tipo_Pago=@tipo_pago,Monto_Factura=@monto,Monto_Ultimo_Pago=@monto_ultimo_pago,Fecha_Ultimo_Pago=@fecha_ultimo_pago 
WHERE Num_Factura = @num_factura
GO
-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_ModificarPersona
@cedula int = null,
@Nombre varchar(200) = null,
@Apellido1 varchar(200) = null,
@Apellido2 varchar(200) = null,
@Email1 varchar(50) = null,
@Email2 varchar(50) = null,
@Telefono1 varchar(50) = null,
@Telefono2 varchar(50) = null,
@Telefono3 varchar(50) = null,
@Direccion1 varchar(300) = null,
@Direccion2 varchar(300) = null,
@ID_empresa int = null,
@Puesto_Proveedor varchar(100) = null,
@ID_Persona int = null

AS

UPDATE Persona
SET cedula=@cedula,nombre=@Nombre,Apellido1=@Apellido1,Apellido2=@Apellido2,Email=@Email1,Email2=@Email2,Telefono1=@Telefono1,Telefono2=@Telefono2,Telefono3=@Telefono3,Direccion1=@Direccion1,Direccion2=@Direccion2 
WHERE Cedula=@cedula

UPDATE Contacto_Proveedor
SET id_empresa=@ID_empresa,Puesto_Proveedor=@Puesto_Proveedor
WHERE ID_Persona = @id_persona;
GO
-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_ModificarProducto
@id_producto int = null,
@nombre_producto varchar(200) = null,
@descripcion_producto varchar(200) = null,
@cantidad_Producto int = null,
@Fecha_Entrega date = null,
@Fecha_Caducidad date = null,
@ID_Empresa int = null

AS
UPDATE Producto
SET Nombre_Producto=@nombre_producto,Descripcion_Producto=@descripcion_producto,Cantidad_Producto=@cantidad_Producto,Fecha_Entrega_Provision=@Fecha_Entrega,Fecha_Vencimiento_Provision=@Fecha_Caducidad,ID_Empresa=@ID_Empresa
WHERE ID_Producto = @id_producto
GO
-----------------------------------------------
-----------------------------------------------
--SPs de Borrado
CREATE PROCEDURE sp_BorrarFactura
@Num_factura int = null

AS
BEGIN
	IF EXISTS (SELECT Num_Factura FROM Factura_Proveedor WHERE Num_Factura = @Num_factura)
		BEGIN
			DELETE FROM Factura_Proveedor
			WHERE Num_Factura = @Num_factura 
			SELECT 0
		END
	ELSE
		BEGIN
			SELECT 1
		END
END
	
GO
-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_BorrarPersona
@id_persona int = null

AS
BEGIN
	IF EXISTS (SELECT ID_Persona FROM Contacto_Proveedor WHERE ID_Persona = @id_persona)
		BEGIN
			DELETE FROM Contacto_Proveedor
			WHERE ID_Persona = @id_persona
			SELECT 0
		END
	ELSE
		BEGIN
			SELECT 1
		END
END
GO
-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_BorrarProducto
@id_producto int = null

AS
BEGIN
	IF EXISTS (SELECT id_producto FROM producto WHERE ID_Producto = @id_producto)
		BEGIN
			DELETE FROM Producto
			WHERE ID_Producto = @id_producto
			SELECT 0
		END
	ELSE
		BEGIN
			SELECT 1
		END
END
GO
-----------------------------------------------
-----------------------------------------------

--SPs de busquedas para modificacion
CREATE PROCEDURE sp_BuscarModFactura
@num_factura int = null

AS
SELECT n.id_empresa,n.descripcion_factura,n.estado,n.tipo_pago,n.Monto_Factura,n.monto_ultimo_pago,n.Fecha_ultimo_pago 
FROM Factura_Proveedor n 
WHERE n.Num_Factura = @num_factura 
GO
-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_BuscarModPersona
@cedula int = null

AS
SELECT p.Cedula,p.nombre,p.Apellido1,p.Apellido2,p.Email,p.Email2,p.Telefono1,p.Telefono2,p.Telefono3,p.Direccion1,p.Direccion2,c.puesto_proveedor,c.ID_Empresa 
FROM Persona p join Contacto_Proveedor c on p.ID_Persona = c.ID_Persona 
WHERE p.Cedula = @cedula
GO
-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE sp_BuscarModProducto
@id_producto int = null

AS
SELECT p.Nombre_Producto,p.Descripcion_Producto,p.Cantidad_Producto,p.Fecha_Entrega_Provision,p.Fecha_Vencimiento_Provision,p.ID_Empresa 
FROM Producto p 
WHERE p.ID_Producto = @id_producto
GO
-----------------------------------------------
-----------------------------------------------




