USE [MCruzDB1]
GO
/****** Object:  Table [dbo].[Catalogo_Colaborador]    Script Date: 2/20/2016 10:15:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Catalogo_Colaborador](
	[ID_Proyecto] [varchar](80) NOT NULL,
	[Cedula_Colaborador] [int] NOT NULL,
	[ID_Colaborador] [int] NOT NULL,
 CONSTRAINT [PK_Catalogo_Colaborador] PRIMARY KEY CLUSTERED 
(
	[ID_Colaborador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Catalogo_Proyecto]    Script Date: 2/20/2016 10:15:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Catalogo_Proyecto](
	[Desabilitar] [bit] NOT NULL,
	[Nombre_Proyecto] [varchar](150) NOT NULL,
	[Codigo_Proyecto] [varchar](80) NOT NULL,
	[ID_Proyecto] [int] NOT NULL,
	[Tipo_Proyecto] [varchar](90) NULL,
	[Unidad_Medida] [varchar](50) NULL,
	[Precio_Proyecto] [float] NULL,
	[Ubicacion_Proyecto] [varchar](200) NULL,
	[Fecha_Inicio_Proyecto] [date] NOT NULL,
	[Fecha_Estimada_Entrega] [date] NOT NULL,
	[Estado_Proyecto] [int] NOT NULL,
 CONSTRAINT [PK_Catalogo_Proyecto] PRIMARY KEY CLUSTERED 
(
	[ID_Proyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente_Empresa]    Script Date: 2/20/2016 10:15:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente_Empresa](
	[Nombre_Cliente] [varchar](600) NOT NULL,
	[Cedula_Juridica] [int] NOT NULL,
	[Email_Cliente] [varchar](100) NULL,
	[Tipo_de_Cliente] [varchar](150) NOT NULL,
	[Categoria_Cliente] [char](1) NOT NULL,
	[Telefono_empresa] [int] NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[ID_Proyecto] [int] NULL,
 CONSTRAINT [PK_Cliente_Empresa] PRIMARY KEY CLUSTERED 
(
	[ID_Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Colaborador]    Script Date: 2/20/2016 10:15:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Colaborador](
	[ID_Colaborador] [int] NOT NULL,
	[Nombre_Colaborador] [varchar](100) NOT NULL,
	[Apellido1_Colaborador] [varchar](100) NOT NULL,
	[Apellido2_Colaborador] [varchar](100) NOT NULL,
	[Tipo_Colaborador] [varchar](50) NULL,
	[Puesto_Colaborador] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Colaborador] PRIMARY KEY CLUSTERED 
(
	[ID_Colaborador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contacto_Cliente]    Script Date: 2/20/2016 10:15:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contacto_Cliente](
	[Nombre] [varchar](100) NOT NULL,
	[Primer_Apellido] [varchar](100) NOT NULL,
	[Segundo_Apellido] [varchar](100) NOT NULL,
	[Email] [varchar](100) NULL,
	[Telefono] [int] NULL,
	[Direccion] [varchar](200) NULL,
	[ID_Cliente_Persona] [int] NOT NULL,
	[ID_Empresa] [int] NULL,
 CONSTRAINT [PK_Contacto_Cliente] PRIMARY KEY CLUSTERED 
(
	[ID_Cliente_Persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contacto_Proveedor]    Script Date: 2/20/2016 10:15:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contacto_Proveedor](
	[Cedula_Proveedor] [int] NOT NULL,
	[Cedula_Contacto] [int] NOT NULL,
	[Nombre_Proveedor] [varchar](100) NOT NULL,
	[Apellido1_Proveedor] [varchar](100) NOT NULL,
	[Apellido2_Proveedor] [varchar](100) NOT NULL,
	[Telefono_Proveedor] [int] NOT NULL,
	[Email_Proveedor] [varchar](100) NULL,
	[Direccion_Proveedor] [varchar](200) NULL,
	[Puesto_Contacto_Proveedor] [varchar](100) NULL,
	[ID_Proveedor] [int] NOT NULL,
 CONSTRAINT [PK_Contacto_Proveedor_1] PRIMARY KEY CLUSTERED 
(
	[Cedula_Contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Factura_Proveedor]    Script Date: 2/20/2016 10:15:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Factura_Proveedor](
	[ID_Proveedor] [int] NOT NULL,
	[Num_Factura] [int] NOT NULL,
	[Descripcion] [varchar](400) NOT NULL,
	[Fecha_Entrega_Provision] [date] NOT NULL,
	[Fecha_Vencimiento_Provision] [date] NULL,
	[Estado] [varchar](50) NOT NULL,
	[Tipo_Pago] [varchar](50) NOT NULL,
	[Monto] [float] NOT NULL,
	[Ultimo_Pago] [float] NOT NULL,
	[Fecha_Ultimo_Pago] [date] NULL,
	[Tipo_Proveedor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Catalogo_Proveedor] PRIMARY KEY CLUSTERED 
(
	[ID_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rol_Usuario]    Script Date: 2/20/2016 10:15:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rol_Usuario](
	[Rol] [int] NOT NULL,
	[Nombre_Rol] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rol_Usuario] PRIMARY KEY CLUSTERED 
(
	[Rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 2/20/2016 10:15:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[Cedula] [int] NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Apellido] [varchar](200) NOT NULL,
	[Pass] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
	[Rol] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Usuario] ([Cedula], [Nombre], [Apellido], [Pass], [Email], [Estado], [Rol]) VALUES (123456, N'mario', N'mora', N'abc123', N'm@m.com', 1, 2)
GO
ALTER TABLE [dbo].[Catalogo_Colaborador]  WITH CHECK ADD  CONSTRAINT [FK_Catalogo_Colaborador_Catalogo_Proyecto] FOREIGN KEY([ID_Proyecto])
REFERENCES [dbo].[Catalogo_Proyecto] ([Codigo_Proyecto])
GO
ALTER TABLE [dbo].[Catalogo_Colaborador] CHECK CONSTRAINT [FK_Catalogo_Colaborador_Catalogo_Proyecto]
GO
ALTER TABLE [dbo].[Catalogo_Colaborador]  WITH CHECK ADD  CONSTRAINT [FK_Catalogo_Colaborador_Colaborador] FOREIGN KEY([Cedula_Colaborador])
REFERENCES [dbo].[Colaborador] ([ID_Colaborador])
GO
ALTER TABLE [dbo].[Catalogo_Colaborador] CHECK CONSTRAINT [FK_Catalogo_Colaborador_Colaborador]
GO
ALTER TABLE [dbo].[Cliente_Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Empresa_Catalogo_Proyecto] FOREIGN KEY([ID_Proyecto])
REFERENCES [dbo].[Catalogo_Proyecto] ([ID_Proyecto])
GO
ALTER TABLE [dbo].[Cliente_Empresa] CHECK CONSTRAINT [FK_Cliente_Empresa_Catalogo_Proyecto]
GO
ALTER TABLE [dbo].[Contacto_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Contacto_Cliente_Cliente_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Cliente_Empresa] ([ID_Empresa])
GO
ALTER TABLE [dbo].[Contacto_Cliente] CHECK CONSTRAINT [FK_Contacto_Cliente_Cliente_Empresa]
GO
ALTER TABLE [dbo].[Contacto_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Contacto_Proveedor_Catalogo_Proveedor] FOREIGN KEY([ID_Proveedor])
REFERENCES [dbo].[Factura_Proveedor] ([ID_Proveedor])
GO
ALTER TABLE [dbo].[Contacto_Proveedor] CHECK CONSTRAINT [FK_Contacto_Proveedor_Catalogo_Proveedor]
GO
ALTER TABLE [dbo].[Rol_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Rol_Usuario_Usuario] FOREIGN KEY([Rol])
REFERENCES [dbo].[Usuario] ([Rol])
GO
ALTER TABLE [dbo].[Rol_Usuario] CHECK CONSTRAINT [FK_Rol_Usuario_Usuario]
GO
/****** Object:  StoredProcedure [dbo].[borrar_usuario]    Script Date: 2/20/2016 10:15:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[borrar_usuario]
@cedula int
as
delete from Usuario where Cedula = @cedula;
GO
/****** Object:  StoredProcedure [dbo].[modificar_usuario]    Script Date: 2/20/2016 10:15:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[modificar_usuario] 
@cedula int, @nombre varchar(200),@apellido varchar(200),@pass varchar(50),@email varchar(100), @estado bit, @rol int
as
update Usuario set Nombre = @nombre,Apellido = @apellido, Pass = @pass, Email = @email, Estado = @estado, rol = @rol 
where Cedula = @cedula;
GO
/****** Object:  StoredProcedure [dbo].[registrar_usuario]    Script Date: 2/20/2016 10:15:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[registrar_usuario] 
@cedula int, @nombre varchar(200),@apellido varchar(200),@pass varchar(50),@email varchar(100), @estado bit, @rol int
as
insert into Usuario (Cedula,Nombre,Apellido,Pass,Email,Estado,Rol) 
values
(@cedula,@nombre,@apellido,@pass,@email,@estado,@rol)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Union de entre tabla Rol y tabla Usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Rol_Usuario', @level2type=N'CONSTRAINT',@level2name=N'FK_Rol_Usuario_Usuario'
GO
