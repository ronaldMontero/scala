USE [MCRUZDB2]
GO
/****** Object:  Table [dbo].[Contacto_Cliente]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacto_Cliente](
	[ID_Contacto] [int] NOT NULL,
	[ID_Persona] [int] NOT NULL,
	[ID_Empresa] [int] NOT NULL,
 CONSTRAINT [PK_Contacto_Cliente] PRIMARY KEY CLUSTERED 
(
	[ID_Contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacto_Proveedor]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contacto_Proveedor](
	[ID_Proveedor] [int] IDENTITY(1,1) NOT NULL,
	[ID_Persona] [int] NOT NULL,
	[Puesto_Proveedor] [varchar](100) NULL,
	[ID_Empresa] [int] NULL,
 CONSTRAINT [PK_Contacto_Proveedor_1] PRIMARY KEY CLUSTERED 
(
	[ID_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[ID_Persona] [int] NOT NULL,
	[Tipo_Empleado] [varchar](100) NULL,
	[Puesto_Empleado] [varchar](100) NULL,
	[ID_Proyecto] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[Nombre_Cliente] [varchar](150) NOT NULL,
	[Cedula_Juridica] [int] NOT NULL,
	[Email_Empresa] [varchar](50) NULL,
	[Tipo_Cliente] [varchar](100) NOT NULL,
	[Categoria_Cliente] [varchar](100) NOT NULL,
	[Telefono_Empresa] [int] NOT NULL,
	[ID_Empresa] [int] IDENTITY(1,1) NOT NULL,
	[ID_Proyecto] [int] NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[ID_Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Factura_Proveedor]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Factura_Proveedor](
	[ID_Proveedor] [int] NULL,
	[Num_Factura] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion_Factura] [varchar](300) NOT NULL,
	[Estado] [varchar](100) NOT NULL,
	[Tipo_Pago] [varchar](50) NOT NULL,
	[Monto_Factura] [float] NULL,
	[Monto_Ultimo_Pago] [float] NULL,
	[Fecha_Ultimo_Pago] [date] NULL,
	[ID_Empresa] [int] NULL,
 CONSTRAINT [PK_Factura_Proveedor] PRIMARY KEY CLUSTERED 
(
	[Num_Factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionalidad]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcionalidad](
	[ID_Funcionalidad] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Funcionalidad] PRIMARY KEY CLUSTERED 
(
	[ID_Funcionalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Permisos]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permisos](
	[ID_Permiso] [int] NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[ID_Funcionalidad] [int] NOT NULL,
	[Lectura] [bit] NOT NULL,
	[Escritura] [bit] NOT NULL,
	[Eliminar] [bit] NOT NULL,
	[Fecha_Ultima_Modificacion] [date] NOT NULL,
 CONSTRAINT [PK_Permisos] PRIMARY KEY CLUSTERED 
(
	[ID_Permiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[ID_Persona] [int] IDENTITY(1,1) NOT NULL,
	[Cedula] [int] NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Apellido1] [varchar](200) NOT NULL,
	[Apellido2] [varchar](200) NOT NULL,
	[Email] [varchar](50) NULL,
	[Email2] [varchar](50) NULL,
	[Telefono1] [varchar](50) NULL,
	[Telefono2] [varchar](50) NULL,
	[Telefono3] [varchar](50) NULL,
	[Direccion1] [varchar](300) NULL,
	[Direccion2] [varchar](300) NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[ID_Persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[ID_Producto] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion_Producto] [varchar](200) NOT NULL,
	[Cantidad_Producto] [int] NOT NULL,
	[Fecha_Entrega_Provision] [date] NOT NULL,
	[Fecha_Vencimiento_Provision] [date] NULL,
	[ID_Empresa] [int] NULL,
	[Nombre_Producto] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ID_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proyecto]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proyecto](
	[Habilitado] [bit] NOT NULL,
	[Nombre_Proyecto] [varchar](100) NOT NULL,
	[Codigo_Proyecto] [varchar](100) NOT NULL,
	[ID_Proyecto] [int] IDENTITY(1,1) NOT NULL,
	[Unidad_Medida] [varchar](10) NULL,
	[Precio_Proyecto] [int] NULL,
	[Ubicacion_Proyecto] [varchar](200) NULL,
	[Fecha_Inicio_Proyecto] [date] NULL,
	[Fecha_Estimada_Entrega] [date] NULL,
	[Estado_Proyecto] [varchar](100) NOT NULL,
	[ID_Empresa] [int] NOT NULL,
 CONSTRAINT [PK_Proyecto] PRIMARY KEY CLUSTERED 
(
	[ID_Proyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[Usuario] [varchar](50) NOT NULL,
	[Pass] [varchar](100) NOT NULL,
	[ID_Persona] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
	[Rol] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Contacto_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Contacto_Cliente_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID_Empresa])
GO
ALTER TABLE [dbo].[Contacto_Cliente] CHECK CONSTRAINT [FK_Contacto_Cliente_Empresa]
GO
ALTER TABLE [dbo].[Contacto_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Contacto_Cliente_Persona] FOREIGN KEY([ID_Persona])
REFERENCES [dbo].[Persona] ([ID_Persona])
GO
ALTER TABLE [dbo].[Contacto_Cliente] CHECK CONSTRAINT [FK_Contacto_Cliente_Persona]
GO
ALTER TABLE [dbo].[Contacto_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Contacto_Proveedor_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID_Empresa])
GO
ALTER TABLE [dbo].[Contacto_Proveedor] CHECK CONSTRAINT [FK_Contacto_Proveedor_Empresa]
GO
ALTER TABLE [dbo].[Contacto_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Contacto_Proveedor_Persona] FOREIGN KEY([ID_Persona])
REFERENCES [dbo].[Persona] ([ID_Persona])
GO
ALTER TABLE [dbo].[Contacto_Proveedor] CHECK CONSTRAINT [FK_Contacto_Proveedor_Persona]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Empleado] FOREIGN KEY([ID_Persona])
REFERENCES [dbo].[Persona] ([ID_Persona])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Empleado]
GO
ALTER TABLE [dbo].[Factura_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Proveedor_Contacto_Proveedor1] FOREIGN KEY([ID_Proveedor])
REFERENCES [dbo].[Contacto_Proveedor] ([ID_Proveedor])
GO
ALTER TABLE [dbo].[Factura_Proveedor] CHECK CONSTRAINT [FK_Factura_Proveedor_Contacto_Proveedor1]
GO
ALTER TABLE [dbo].[Factura_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Proveedor_Factura_Proveedor] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID_Empresa])
GO
ALTER TABLE [dbo].[Factura_Proveedor] CHECK CONSTRAINT [FK_Factura_Proveedor_Factura_Proveedor]
GO
ALTER TABLE [dbo].[Permisos]  WITH CHECK ADD  CONSTRAINT [FK_Permisos_Usuario] FOREIGN KEY([ID_Funcionalidad])
REFERENCES [dbo].[Funcionalidad] ([ID_Funcionalidad])
GO
ALTER TABLE [dbo].[Permisos] CHECK CONSTRAINT [FK_Permisos_Usuario]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID_Empresa])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Empresa]
GO
ALTER TABLE [dbo].[Proyecto]  WITH CHECK ADD  CONSTRAINT [FK_Proyecto_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID_Empresa])
GO
ALTER TABLE [dbo].[Proyecto] CHECK CONSTRAINT [FK_Proyecto_Empresa]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Persona] FOREIGN KEY([ID_Persona])
REFERENCES [dbo].[Persona] ([ID_Persona])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Persona]
GO
/****** Object:  StoredProcedure [dbo].[sp_BorrarFactura]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_BorrarFactura]
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
/****** Object:  StoredProcedure [dbo].[sp_BorrarPersona]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE [dbo].[sp_BorrarPersona]
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
/****** Object:  StoredProcedure [dbo].[sp_BorrarProducto]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------
-----------------------------------------------
CREATE PROCEDURE [dbo].[sp_BorrarProducto]
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
/****** Object:  StoredProcedure [dbo].[sp_BuscarModFactura]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_BuscarModFactura]
@num_factura int = null

AS
SELECT n.id_empresa,n.descripcion_factura,n.estado,n.tipo_pago,n.Monto_Factura,n.monto_ultimo_pago,n.Fecha_ultimo_pago FROM Factura_Proveedor n where n.Num_Factura = @num_factura 

GO
/****** Object:  StoredProcedure [dbo].[sp_BuscarModPersona]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_BuscarModPersona]
@cedula int = null

AS
SELECT p.Cedula,p.nombre,p.Apellido1,p.Apellido2,p.Email,p.Email2,p.Telefono1,p.Telefono2,p.Telefono3,p.Direccion1,p.Direccion2,c.puesto_proveedor,c.ID_Empresa 
FROM Persona p join Contacto_Proveedor c on p.ID_Persona = c.ID_Persona 
WHERE p.Cedula = @cedula

GO
/****** Object:  StoredProcedure [dbo].[sp_BuscarModProducto]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_BuscarModProducto]
@id_producto int = null

AS
SELECT p.Nombre_Producto,p.Descripcion_Producto,p.Cantidad_Producto,p.Fecha_Entrega_Provision,p.Fecha_Vencimiento_Provision,p.ID_Empresa 
FROM Producto p 
WHERE p.ID_Producto = @id_producto

GO
/****** Object:  StoredProcedure [dbo].[sp_IngresarFactura]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_IngresarFactura]
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
/****** Object:  StoredProcedure [dbo].[sp_IngresarProveedor]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_IngresarProveedor]

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
/****** Object:  StoredProcedure [dbo].[sp_ListarEmpresasIngFactura]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ListarEmpresasIngFactura]

AS
SELECT DISTINCT e.nombre_cliente,e.ID_Empresa 
FROM empresa e inner join Contacto_Proveedor cp on e.ID_Empresa = cp.ID_Empresa order by e.Nombre_Cliente asc

GO
/****** Object:  StoredProcedure [dbo].[sp_ListarFacturasPorFactura]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ListarFacturasPorFactura]
@num_factura int = null

AS
SELECT e.nombre_cliente,n.num_factura,n.descripcion_Factura,n.estado,n.tipo_pago,n.monto_factura,n.monto_ultimo_pago,n.fecha_ultimo_pago
FROM factura_proveedor n join empresa e on e.ID_Empresa = n.ID_Empresa where n.num_factura = @num_factura

GO
/****** Object:  StoredProcedure [dbo].[sp_ListarPersonaPorNombre]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ListarPersonaPorNombre]
@nombre_proveedor varchar(200) = null

AS
SELECT p.cedula,p.nombre,p.Apellido1,p.Apellido2,p.Email,p.Email2,p.Telefono1,p.Telefono2,p.Telefono3,p.Direccion1,p.Direccion2 
FROM Persona p 
JOIN Contacto_Proveedor cp on p.ID_Persona = cp.ID_Persona 
WHERE p.Nombre like '%' + @nombre_proveedor + '%'

GO
/****** Object:  StoredProcedure [dbo].[sp_ListarProductoPorNombre]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ListarProductoPorNombre]
@nombre_producto varchar(200) = null

AS
SELECT p.ID_Producto,p.Nombre_Producto,p.Descripcion_Producto,p.Cantidad_Producto,p.Fecha_Entrega_Provision,p.Fecha_Vencimiento_Provision,e.Nombre_Cliente
FROM Producto p
JOIN Empresa e on p.ID_Empresa = e.ID_Empresa 
WHERE p.Nombre_Producto like '%' + @nombre_producto + '%'

GO
/****** Object:  StoredProcedure [dbo].[sp_ListarTodasLasFacturas]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ListarTodasLasFacturas]

AS
SELECT e.nombre_cliente,n.num_factura,n.descripcion_Factura,n.estado,n.tipo_pago,n.monto_factura,n.monto_ultimo_pago,n.fecha_ultimo_pago
FROM factura_proveedor n join empresa e on e.ID_Empresa = n.ID_Empresa 

GO
/****** Object:  StoredProcedure [dbo].[sp_ListarTodasLasPersonas]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ListarTodasLasPersonas]

AS
SELECT p.cedula,p.nombre,p.Apellido1,p.Apellido2,p.Email,p.Email2,p.Telefono1,p.Telefono2,p.Telefono3,p.Direccion1,p.Direccion2 
FROM Persona p 
JOIN Contacto_Proveedor cp on p.ID_Persona = cp.ID_Persona

GO
/****** Object:  StoredProcedure [dbo].[sp_ListarTodosLosProductos]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ListarTodosLosProductos]

AS
SELECT p.ID_Producto,p.Nombre_Producto,p.Descripcion_Producto,p.Cantidad_Producto,p.Fecha_Entrega_Provision,p.Fecha_Vencimiento_Provision,e.Nombre_Cliente
FROM Producto p
JOIN Empresa e on p.ID_Empresa = e.ID_Empresa

GO
/****** Object:  StoredProcedure [dbo].[sp_ListarUsuariosABorrar]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ListarUsuariosABorrar]

AS
SELECT CONCAT (p.nombre,+' '+ p.apellido1 +' ',p.apellido2) as Resultado,cp.ID_Persona from Persona p join Contacto_Proveedor cp on p.ID_Persona = cp.ID_Persona

GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarFactura]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarFactura]
@num_factura int, 
@ID_empresa int,  
@descripcion_factura varchar (300),
@Estado varchar (50),
@Tipo_Pago varchar (50),
@monto float,
@monto_ultimo_pago float,
@Fecha_ultimo_pago date


AS
UPDATE Factura_Proveedor 
SET ID_Empresa=@ID_empresa,Descripcion_Factura=@Descripcion_factura,Estado=@Estado,Tipo_Pago=@tipo_pago,Monto_Factura=@monto,Monto_Ultimo_Pago=@monto_ultimo_pago,Fecha_Ultimo_Pago=@fecha_ultimo_pago 
WHERE Num_Factura = @num_factura

GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarPersona]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarPersona]
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarProducto]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarProducto]
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
/****** Object:  StoredProcedure [dbo].[sp_RegistrarProducto]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_RegistrarProducto]
@nombre_producto varchar(200) = null,
@descripcion_producto varchar(200) = null,
@cantidad_Producto int = null,
@Fecha_Entrega date = null,
@Fecha_Caducidad date = null,
@ID_Empresa int = null

AS
INSERT INTO producto (nombre_producto,descripcion_Producto,Cantidad_Producto,Fecha_entrega_Provision,Fecha_vencimiento_Provision,id_empresa) values (@nombre_producto,@descripcion_producto,@cantidad_Producto,@Fecha_Entrega,@Fecha_Caducidad,@ID_Empresa)


GO
/****** Object:  StoredProcedure [dbo].[spClientes]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spClientes]
AS
	SELECT Nombre_Cliente, 
		   Cedula,
		   Email_Cliente as Email,
		   Telefono_Empresa as Telefono,
		   (CASE Tipo_de_Cliente WHEN '1' THEN 'Gubernamental' WHEN '2' THEN 'Comercial' END) as Tipo_Cliente, 
		   Categoria_Cliente
	FROM Cliente_Empresa

GO
/****** Object:  StoredProcedure [dbo].[spListarClientes]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarClientes]
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
/****** Object:  StoredProcedure [dbo].[spTodosClientes]    Script Date: 4/7/2016 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spTodosClientes]
AS
	SELECT Nombre_Cliente, 
		   Extracto, 
		   (CASE Tipo_de_Cliente WHEN '1' THEN 'Gubernamental' WHEN '2' THEN 'Comercial' END) as TipoCliente, 
		   (CASE Tipo_de_Cliente WHEN '1' THEN 'hviolet' WHEN '2' THEN 'hyellow' END) as colorCliente, 
		   (CASE Categoria_Cliente WHEN  'A' THEN 'success' WHEN 'B' THEN 'warning' WHEN 'C' THEN 'danger' END) as ClasificacionCliente
	FROM Cliente_Empresa

GO
