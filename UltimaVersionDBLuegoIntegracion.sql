USE [master]
GO
/****** Object:  Database [MCruzDB2]    Script Date: 4/16/2016 10:42:16 ******/
CREATE DATABASE [MCruzDB2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MCruzDB2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MCruzDB2.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MCruzDB2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MCruzDB2_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MCruzDB2] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MCruzDB2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MCruzDB2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MCruzDB2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MCruzDB2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MCruzDB2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MCruzDB2] SET ARITHABORT OFF 
GO
ALTER DATABASE [MCruzDB2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MCruzDB2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MCruzDB2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MCruzDB2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MCruzDB2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MCruzDB2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MCruzDB2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MCruzDB2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MCruzDB2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MCruzDB2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MCruzDB2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MCruzDB2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MCruzDB2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MCruzDB2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MCruzDB2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MCruzDB2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MCruzDB2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MCruzDB2] SET RECOVERY FULL 
GO
ALTER DATABASE [MCruzDB2] SET  MULTI_USER 
GO
ALTER DATABASE [MCruzDB2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MCruzDB2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MCruzDB2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MCruzDB2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MCruzDB2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MCruzDB2', N'ON'
GO
USE [MCruzDB2]
GO
/****** Object:  Table [dbo].[Catalogo_Colaborador]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  Table [dbo].[Catalogo_Proyecto]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  Table [dbo].[Cliente_Empresa]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  Table [dbo].[Colaborador]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  Table [dbo].[Contacto_Cliente]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacto_Cliente](
	[ID_Contacto] [int] IDENTITY(1,1) NOT NULL,
	[ID_Persona] [int] NOT NULL,
	[ID_Empresa] [int] NOT NULL,
 CONSTRAINT [PK_Contacto_Cliente] PRIMARY KEY CLUSTERED 
(
	[ID_Contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacto_Proveedor]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  Table [dbo].[Empleado]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  Table [dbo].[Empresa]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[ID_Empresa] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Cliente] [varchar](150) NOT NULL,
	[Cedula_Juridica] [varchar](25) NOT NULL,
	[Email_Empresa] [varchar](50) NULL,
	[Tipo_Cliente] [varchar](50) NOT NULL,
	[Categoria_Cliente] [varchar](50) NOT NULL,
	[Telefono_Empresa] [varchar](50) NOT NULL,
	[Extracto] [text] NULL,
	[Estado] [bit] NOT NULL CONSTRAINT [DF_Empresa_estado]  DEFAULT ((1)),
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[ID_Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Factura_Proveedor]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  Table [dbo].[Permiso]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permiso](
	[idPermiso] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Url] [varchar](50) NULL,
	[Accion] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PermisoRol]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermisoRol](
	[idPerfil] [int] NOT NULL,
	[idPermiso] [int] NOT NULL,
 CONSTRAINT [PK_PerfilesPaginas] PRIMARY KEY CLUSTERED 
(
	[idPerfil] ASC,
	[idPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persona]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[ID_Persona] [int] IDENTITY(1,1) NOT NULL,
	[Cedula] [int] NOT NULL,
	[Nombre] [varchar](35) NOT NULL,
	[Apellido1] [varchar](50) NOT NULL,
	[Apellido2] [varchar](50) NOT NULL,
	[Email] [varchar](75) NULL,
	[Email2] [varchar](75) NULL,
	[Telefono1] [varchar](25) NULL,
	[Telefono2] [varchar](25) NULL,
	[Telefono3] [varchar](25) NULL,
	[Direccion1] [text] NULL,
	[Direccion2] [text] NULL,
	[Estado] [bit] NOT NULL CONSTRAINT [DF_Persona_Estado]  DEFAULT ((1)),
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[ID_Persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  Table [dbo].[Proyecto]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  Table [dbo].[Rol]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rol](
	[idPerfil] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Perfiles] PRIMARY KEY CLUSTERED 
(
	[idPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[idPersona] [int] NULL,
	[Cuenta] [varchar](50) NOT NULL,
	[Clave] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
	[idPerfil] [int] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
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
/****** Object:  StoredProcedure [dbo].[ActualizarIDPerfil]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarIDPerfil]
	@idPerfil int,
	@Mensaje varchar(100) out
AS
BEGIN
	SET NOCOUNT OFF;
	if(not exists(select * from Usuario where idPerfil = @idPerfil))
		set @Mensaje = 'No hay cuentas relacionadas con este perfil'
	else begin
		update Usuario set idPerfil=(select idPerfil from Rol where Descripcion = 'UsuarioBasico') where idPerfil=@idPerfil
		set @Mensaje='La cuenta fue actualizada correctamente'
	end
END



GO
/****** Object:  StoredProcedure [dbo].[ActualizarRol]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarRol] 
	@Descripcion varchar(50),
	@DescripcionNueva varchar(50),
	@Mensaje varchar(100) out	
AS
BEGIN
	SET NOCOUNT OFF;
	if(not exists(select * from Rol where Descripcion=@Descripcion))
		set @Mensaje = 'El Rol no exsite'
	else begin
		update Rol set Descripcion=@DescripcionNueva where Descripcion=@Descripcion
		set @Mensaje='Rol Actualizado Correctamente'
	end
END



GO
/****** Object:  StoredProcedure [dbo].[ActualizarUsuario]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarUsuario]
	@idUsuario int,
	@Cuenta varchar(50),
	@Clave varchar(50),
	@Estado bit,
	@idPerfil int,
	@Mensaje varchar(100) out
AS
BEGIN
	SET NOCOUNT OFF;
		if(not exists(select * from Usuario where idUsuario = @idUsuario))
		set @Mensaje = 'La cuenta no existe'
	else begin
		update Usuario set Cuenta=@Cuenta, Clave=@Clave, Estado=@Estado,idPerfil=@idPerfil where idUsuario=@idUsuario
		set @Mensaje='La cuenta fue actualizada correctamente'
	end
END



GO
/****** Object:  StoredProcedure [dbo].[BuscarIDPerfil_User]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarIDPerfil_User]
@Cuenta varchar(max)
AS
BEGIN
	SET NOCOUNT OFF;
	select idPerfil from dbo.Usuario
	where Cuenta = @Cuenta
END



GO
/****** Object:  StoredProcedure [dbo].[BuscarIDPerfil_UserPassword]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarIDPerfil_UserPassword]
@Cuenta varchar(max),
@Contrasenna varchar(max)
AS
BEGIN
	SET NOCOUNT OFF;
	select idPerfil from dbo.Usuario
	where Cuenta = @Cuenta and Clave = @Contrasenna
END



GO
/****** Object:  StoredProcedure [dbo].[BuscarIdRol_Rol]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarIdRol_Rol]
	@Rol varchar(max)
AS
BEGIN

	SET NOCOUNT OFF;
	select idPerfil from dbo.Rol
	where Descripcion = @Rol
END



GO
/****** Object:  StoredProcedure [dbo].[BuscarIDUsuario_Cuenta]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarIDUsuario_Cuenta]
	@Cuenta varchar(max)
AS
BEGIN
	SET NOCOUNT OFF;
	select idUsuario from dbo.Usuario
	where Cuenta = @Cuenta
END



GO
/****** Object:  StoredProcedure [dbo].[BuscarPerAccion_DescRol]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarPerAccion_DescRol]
@DescripcionRol varchar(max)
AS
BEGIN
	SET NOCOUNT OFF;
	select p.Accion from dbo.Permiso p
	join dbo.PermisoRol pr ON p.idPermiso = pr.idPermiso
	join dbo.Rol r ON r.idPerfil =  pr.idPerfil
	where r.descripcion = @DescripcionRol and (p.Accion IS NOT NULL)
END



GO
/****** Object:  StoredProcedure [dbo].[BuscarPerAccion_IDRol]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarPerAccion_IDRol]
@idPerfil	int 
AS
BEGIN
	SET NOCOUNT ON;
    select "Accion" from dbo.Permiso p
	join dbo.PermisoRol pr ON p.idPermiso = pr.idPermiso 
	where idPerfil = @idPerfil and (p.Accion IS NOT NULL)
END



GO
/****** Object:  StoredProcedure [dbo].[BuscarPerAccion_PerfilAccion]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarPerAccion_PerfilAccion]
	@DescripcionRol varchar(max),
	@Accion varchar(max)
AS
BEGIN
	SET NOCOUNT OFF;
	select p.Accion,r.descripcion from dbo.Permiso p
	join dbo.PermisoRol pr ON p.idPermiso = pr.idPermiso
	join dbo.Rol r ON r.idPerfil =  pr.idPerfil
	where r.descripcion = @DescripcionRol AND p.Accion = @Accion
END



GO
/****** Object:  StoredProcedure [dbo].[BuscarPerfil_Usuario]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarPerfil_Usuario]
@Cuenta varchar(max)
AS
BEGIN
	SET NOCOUNT OFF;
	select r.Descripcion from dbo.Rol r
	join dbo.Usuario u ON u.idPerfil = r.idPerfil
	where u.Cuenta = @Cuenta
END



GO
/****** Object:  StoredProcedure [dbo].[BuscarPerfil_UsuarioContrasena]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarPerfil_UsuarioContrasena]
@Cuenta varchar(max),
@Contrasenna varchar (max)
AS
BEGIN
	SET NOCOUNT OFF;
		select r.Descripcion from dbo.Rol r
	join dbo.Usuario u ON u.idPerfil = r.idPerfil
	where u.Cuenta = @Cuenta and u.Clave = @Contrasenna
END



GO
/****** Object:  StoredProcedure [dbo].[BuscarPerPaginas_DescRol]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarPerPaginas_DescRol]
@DescripcionRol varchar(max)
AS
BEGIN
	SET NOCOUNT OFF;
	select p.URL from dbo.Permiso p
	join dbo.PermisoRol pr ON p.idPermiso = pr.idPermiso
	join dbo.Rol r ON r.idPerfil =  pr.idPerfil
	where r.descripcion = @DescripcionRol and (p.Url IS NOT NULL)
END



GO
/****** Object:  StoredProcedure [dbo].[BuscarPerPaginas_IDRol]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscarPerPaginas_IDRol]
@idPerfil	int 
AS
BEGIN
	SET NOCOUNT OFF;
	select "URL" from dbo.Permiso p
	join dbo.PermisoRol pr ON p.idPermiso = pr.idPermiso 
	where idPerfil = @idPerfil and (p.Url IS NOT NULL)
END



GO
/****** Object:  StoredProcedure [dbo].[BuscarPerPaginas_PerfilPagina]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarPerPaginas_PerfilPagina]
@DescripcionRol varchar(max),
@Pagina varchar(max)

AS
BEGIN
	SET NOCOUNT OFF;
	select p.URL,r.descripcion from dbo.Permiso p
	join dbo.PermisoRol pr ON p.idPermiso = pr.idPermiso
	join dbo.Rol r ON r.idPerfil =  pr.idPerfil
	where r.descripcion = @DescripcionRol AND p.URL = @Pagina
END



GO
/****** Object:  StoredProcedure [dbo].[BuscarUsuario_Cuenta]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarUsuario_Cuenta]
	@Cuenta varchar(max)
AS
BEGIN
	SET NOCOUNT OFF;
	select * from Usuario
	where Cuenta = @Cuenta
END



GO
/****** Object:  StoredProcedure [dbo].[ComprobarUsuarioContrasena]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ComprobarUsuarioContrasena]
@Cuenta varchar (max),
@Contrasenna varchar (max)
AS
BEGIN
	SET NOCOUNT OFF;
	select * from Usuario
	where Cuenta = @Cuenta and Clave = @Contrasenna
END



GO
/****** Object:  StoredProcedure [dbo].[EliminarAsocRolPermiso]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarAsocRolPermiso]
	@idRol int,
	@Mensaje varchar(100) out 
AS
BEGIN
	SET NOCOUNT OFF;
		if(not exists(select * from PermisoRol where idPerfil=@idRol))
		set @Mensaje = 'No hay permisos asociados a este Rol'
	else begin
		delete from PermisoRol where idPerfil=@idRol
		set @Mensaje = 'Los permisos asignados al rol fueron eliminados'
	end
END



GO
/****** Object:  StoredProcedure [dbo].[EliminarPermisosPorRol]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarPermisosPorRol]
	@DescripcionRol varchar(max),
	@DescripcionPermiso varchar(max),
	@Mensaje varchar(50) out
AS
BEGIN
	SET NOCOUNT OFF;
	if (not exists(select * from PermisoRol where (idPerfil=(select idPerfil from Rol where Descripcion = @DescripcionRol)) AND
														idPermiso=(select idPermiso from Permiso where Descripcion = @DescripcionPermiso)))
		set @Mensaje='El permiso no existe.'
	else begin
			delete from PermisoRol where (idPerfil=(select idPerfil from Rol where Descripcion = @DescripcionRol)AND idPermiso=(select idPermiso from Permiso where Descripcion = @DescripcionPermiso))
			set @Mensaje='Ël permiso fue eliminado correctamente.'
		 end
END



GO
/****** Object:  StoredProcedure [dbo].[EliminarRol]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarRol]
	@Descripcion varchar(50),
	@Mensaje varchar(100) out
AS
BEGIN
	SET NOCOUNT OFF;
	if(not exists(select * from rol where Descripcion=@Descripcion))
		set @Mensaje = 'El Rol no existe'
	else begin
		delete from rol where Descripcion=@Descripcion
		set @Mensaje = 'Rol eliminado correctamente'
	end
END



GO
/****** Object:  StoredProcedure [dbo].[EliminarUsuario]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarUsuario]
	@Usuario varchar(max),
	@Mensaje varchar(100) out
AS
BEGIN
	SET NOCOUNT OFF;
	if(not exists(select * from Usuario where Cuenta=@Usuario))
		set @Mensaje = 'El usuario no existe'
	else begin
		delete from Usuario where Cuenta=@Usuario
		set @Mensaje = 'Usuario eliminado correctamente'
	end
END



GO
/****** Object:  StoredProcedure [dbo].[InsertarPermisosPorRol]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarPermisosPorRol]
	@DescripcionRol varchar(max),
	@DescripcionPermiso varchar(max),
	@Mensaje varchar(50) out
AS
BEGIN
	SET NOCOUNT OFF;
	if (exists(select * from PermisoRol where (idPerfil=(select idPerfil from Rol where Descripcion = @DescripcionRol)) AND
														idPermiso=(select idPermiso from Permiso where Descripcion = @DescripcionPermiso)))
		set @Mensaje='El permiso ya existe.'
	else begin
			insert PermisoRol values ((select idPerfil from Rol where Descripcion = @DescripcionRol),(select idPermiso from Permiso where Descripcion = @DescripcionPermiso))
			set @Mensaje='Ël permiso fue registrado correctamente.'
		 end
END



GO
/****** Object:  StoredProcedure [dbo].[InsertarRol]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarRol]
	@Descripcion  VARCHAR(50),
	@Mensaje varchar(50) out
AS
BEGIN
	SET NOCOUNT OFF;
		if (exists(select * from Rol where Descripcion=@Descripcion))
		set @Mensaje = 'El Rol ya existe'
	else begin
		insert Rol values (@Descripcion)
		set @Mensaje = 'El Rol fue registrado correctamente'
	end
END



GO
/****** Object:  StoredProcedure [dbo].[InsertarUsuario]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarUsuario]
	@NombreCuenta  VARCHAR(50),
	@Contrasenna  VARCHAR(50),
	@Estado  int,
	@IdRol int,
	@Mensaje varchar(50) out
AS
BEGIN
	SET NOCOUNT OFF;
		if (exists(select * from Usuario where Cuenta=@NombreCuenta))
		set @Mensaje = 'La cuenta ya existe'
	else begin
		insert Usuario (Cuenta,Clave,Estado,idPerfil) values (@NombreCuenta,@Contrasenna,@Estado,@IdRol)
		set @Mensaje = 'La cuenta fue registrada correctamente'
	end
END



GO
/****** Object:  StoredProcedure [dbo].[ListarPermisos]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarPermisos]	
AS
BEGIN
	SET NOCOUNT OFF;
	select Descripcion from Permiso
END



GO
/****** Object:  StoredProcedure [dbo].[ListarPermisosPorCuenta]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarPermisosPorCuenta]
	@Cuenta	varchar(50) 
AS
BEGIN
	SET NOCOUNT OFF;
	select p.Descripcion,URL,Accion from dbo.Usuario u
	join dbo.Rol r ON r.idPerfil = u.idPerfil
	join dbo.PermisoRol pr ON pr.idPerfil = r.idPerfil
	join dbo.Permiso p ON  p.idPermiso = pr.idPermiso
	where Cuenta = @Cuenta
END
	 


GO
/****** Object:  StoredProcedure [dbo].[ListarRoles]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarRoles]	
AS
BEGIN
	SET NOCOUNT ON;
	select Descripcion from Rol
END



GO
/****** Object:  StoredProcedure [dbo].[ListarUsuarios]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarUsuarios]
AS
BEGIN
	SET NOCOUNT OFF;
	select Cuenta from Usuario
END



GO
/****** Object:  StoredProcedure [dbo].[sp_BorrarFactura]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BorrarPersona]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BorrarProducto]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BuscarModFactura]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_BuscarModFactura]
@num_factura int = null

AS
SELECT n.id_empresa,n.descripcion_factura,n.estado,n.tipo_pago,n.Monto_Factura,n.monto_ultimo_pago,n.Fecha_ultimo_pago FROM Factura_Proveedor n where n.Num_Factura = @num_factura 




GO
/****** Object:  StoredProcedure [dbo].[sp_BuscarModPersona]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BuscarModProducto]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_IngresarFactura]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_IngresarProveedor]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarEmpresasIngFactura]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ListarEmpresasIngFactura]

AS
SELECT DISTINCT e.nombre_cliente,e.ID_Empresa 
FROM empresa e inner join Contacto_Proveedor cp on e.ID_Empresa = cp.ID_Empresa order by e.Nombre_Cliente asc




GO
/****** Object:  StoredProcedure [dbo].[sp_ListarFacturasPorFactura]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarPersonaPorNombre]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarProductoPorNombre]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarTodasLasFacturas]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ListarTodasLasFacturas]

AS
SELECT e.nombre_cliente,n.num_factura,n.descripcion_Factura,n.estado,n.tipo_pago,n.monto_factura,n.monto_ultimo_pago,n.fecha_ultimo_pago
FROM factura_proveedor n join empresa e on e.ID_Empresa = n.ID_Empresa 




GO
/****** Object:  StoredProcedure [dbo].[sp_ListarTodasLasPersonas]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarTodosLosProductos]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarUsuariosABorrar]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ListarUsuariosABorrar]

AS
SELECT CONCAT (p.nombre,+' '+ p.apellido1 +' ',p.apellido2) as Resultado,cp.ID_Persona from Persona p join Contacto_Proveedor cp on p.ID_Persona = cp.ID_Persona




GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarFactura]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarPersona]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarProducto]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_RegistrarProducto]    Script Date: 4/16/2016 10:42:16 ******/
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
/****** Object:  StoredProcedure [dbo].[spActualizarCliente]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spActualizarCliente]
	@id int = null,
	@nombre varchar(150) = null,
	@email varchar(50) = null,
	@telefono varchar(50) = null,
	@extracto text = null,
	@tipo varchar(50) = null,
	@categoria varchar(50) = null,
	@cedula varchar(25) = null,
	@msg varchar(50) out
AS
BEGIN TRY
	UPDATE Empresa
	   SET Nombre_Cliente = @nombre,
	       Email_Empresa = @email,
		   Telefono_Empresa = @telefono,
		   Cedula_Juridica = @cedula,
		   Extracto = @extracto,
		   Tipo_Cliente = @tipo,
		   Categoria_Cliente = @categoria
	WHERE  ID_Empresa = @id
	SET @msg = 'Cliente satisfactoriamente actualizado'
END TRY
BEGIN CATCH
	SET @msg = 'Se produjo error en la actualización por favor intentelo de nuevo'
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[spActualizarContacto]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spActualizarContacto]
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
	@idCliente int = null,
	@msg varchar(150) = null OUT
AS
	DECLARE 
	@existe int = null

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
	 SET @msg = 'Contacto actualizado correctamente. '

	    SELECT @existe = COUNT(1) 
		  FROM Contacto_Cliente
		 WHERE ID_Persona = @idPersona

		IF @existe > 0 
			BEGIN
				UPDATE Contacto_Cliente
				   SET ID_Empresa = @idCliente
				 WHERE ID_Persona = @idPersona

				 SET @msg += 'Asociacion actualizada.'
			END
		ELSE
			BEGIN
				INSERT INTO Contacto_Cliente 
							(ID_Empresa, 
							ID_Persona)
					 VALUES (@idCliente,
							 @idPersona)
				 SET @msg += 'Asociacion ingresada.'
			END




GO
/****** Object:  StoredProcedure [dbo].[spBorrarCliente]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spBorrarCliente]
	@id int = null,
	@msg varchar(150) OUT
AS
BEGIN TRY
    UPDATE Empresa
	   SET Estado = 0
	WHERE  ID_Empresa = @id
	SET @msg = 'Cliente fue eliminado correctamente'
END TRY
BEGIN CATCH
	SET @msg = 'Error al eliminar cliente por favor contacte al administrador'
END CATCH



GO
/****** Object:  StoredProcedure [dbo].[spBorrarContacto]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBorrarContacto]
	@id int = null,
	@eliminaContacto bit = 0,
	@msg varchar(150) OUT
AS
BEGIN TRY
	DELETE 
	  FROM Contacto_Cliente
	 WHERE ID_Persona = @id

    IF @eliminaContacto <> 0
		UPDATE Persona
		   SET Estado = 0
		 WHERE ID_Persona = @id
	 SET @msg = 'Contacto exitosamente eliminado'
END TRY
BEGIN CATCH
	SET @msg = 'Error en la eliminación del contacto'
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[spClientes]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spClientes]
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
	WHERE Estado = 1



GO
/****** Object:  StoredProcedure [dbo].[spClientesActivos]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spClientesActivos]
	@clientesActivos int = null OUT
AS
	SELECT @clientesActivos = COUNT(1)
	FROM Empresa
   WHERE Estado = 1

GO
/****** Object:  StoredProcedure [dbo].[spListarClientes]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarClientes]
	@nombre varchar(150) = null,
	@soloActivos char = '1'
AS
	SELECT ID_Empresa,
		   Nombre_Cliente, 
		   Extracto, 
		   Tipo_Cliente, 
		   Estado,
		   (CASE Tipo_Cliente WHEN '1' THEN 'hviolet' WHEN '2' THEN 'hyellow' END) as colorCliente, 
		   (CASE Categoria_Cliente WHEN  'A' THEN 'success' WHEN 'B' THEN 'warning' WHEN 'C' THEN 'danger' END) as ClasificacionCliente
	FROM Empresa
	WHERE 1 = 1
	  AND Estado IN (CASE WHEN @soloActivos = '1' THEN '1' ELSE '0,1'END)
      AND (@nombre is null OR 
	       Nombre_Cliente LIKE '%' + @nombre + '%')




GO
/****** Object:  StoredProcedure [dbo].[spListarContactos]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarContactos]
	@id int = null,
	@nombre varchar(200) = null
AS

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
		   ISNULL(e.Nombre_Cliente, 'No Asignado') as Empresa
	FROM Persona p
	LEFT OUTER JOIN Contacto_Cliente cc
	ON p.ID_Persona = cc.ID_Persona
	LEFT OUTER JOIN Empresa e
	ON cc.ID_Empresa = e.ID_Empresa
	WHERE 1 = 1
	  AND p.Estado = 1
      AND (@id is null OR 
	       p.ID_Persona = @id)
	  AND (@nombre is null OR
		   p.Nombre LIKE '%'+ @nombre +'%');



GO
/****** Object:  StoredProcedure [dbo].[spListarContactosPorID]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarContactosPorID]
	@id int = null
AS

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
		   ISNULL(e.Nombre_Cliente, 'No Asignado') as Empresa
	FROM Persona p
	LEFT OUTER JOIN Contacto_Cliente cc
	ON p.ID_Persona = cc.ID_Persona
	LEFT OUTER JOIN Empresa e
	ON cc.ID_Empresa = e.ID_Empresa
	WHERE 1 = 1
	  AND p.Estado = 1
      AND (@id is null OR 
	       e.ID_Empresa = @id);



GO
/****** Object:  StoredProcedure [dbo].[spObtieneCliente]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spObtieneCliente]
	@id int = null
AS

	SELECT ID_Empresa,
	       Nombre_Cliente, 
		   Cedula_Juridica,
		   Email_Empresa as Email,
		   Telefono_Empresa as Telefono,
		   Tipo_Cliente, 
		   Categoria_Cliente,
		   Extracto,
		   Estado
	FROM Empresa
	WHERE 1 = 1
	  AND Estado = 1
      AND (@id is null OR 
	       ID_Empresa = @id);



GO
/****** Object:  StoredProcedure [dbo].[spObtieneContacto]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spObtieneContacto]
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
	  AND p.Estado = 1
      AND (@id is null OR 
	       p.ID_Persona = @id);	
END

GO
/****** Object:  StoredProcedure [dbo].[spRegistrarClientes]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spRegistrarClientes]
	@nombre varchar(600) = null,
	@email varchar(100) = null,
	@telefono varchar(50) = null,
	@extracto text = null,
	@tipo varchar(150) = null,
	@categoria char(1) = null,
	@cedula varchar(50) = null,
	@msg varchar(100) out
AS
BEGIN TRY
    IF EXISTS(SELECT 1 FROM Empresa WHERE Cedula_Juridica = @cedula)
        BEGIN
            SET @msg = 'Cedula_Juridica ya utilizada en el sistema'
            RETURN
        END

	INSERT INTO Empresa
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
			   ,@cedula)
		SET @msg = 'Cliente ingresado correctamente'
		RETURN
END TRY
BEGIN CATCH
	SET @msg = 'Error en el ingreso de Clientes. Contacte el administrador!'
END CATCH



GO
/****** Object:  StoredProcedure [dbo].[spRegistrarContactos]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spRegistrarContactos]
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
	@idCliente int = null,
	@msg varchar(150) = null OUT
AS
	DECLARE 
	@ultimaPersona int = null
	SET NOCOUNT ON

	INSERT INTO Persona
			   (Cedula
			   ,Nombre
			   ,Apellido1
			   ,Apellido2
			   ,Email
			   ,Email2
			   ,Telefono1
			   ,Telefono2
			   ,Telefono3
			   ,Direccion1
			   ,Direccion2)
		 VALUES
			   (@cedula
			   ,@nombre
			   ,@apellido1
			   ,@apellido2
			   ,@email1
			   ,@email2
			   ,@telefono1
			   ,@telefono2
			   ,@telefono3
			   ,@direccion1
			   ,@direccion2)

		SET @msg = 'Contacto ingresada satisfactoriamente.'

	    SELECT @ultimaPersona = SCOPE_IDENTITY()

		IF @idCliente IS NOT NULL 
			INSERT INTO Contacto_Cliente 
						(ID_Empresa, 
						ID_Persona)
			     VALUES (@idCliente,
						 @ultimaPersona)
			SET @msg += 'Asociación con empresa ingresada de forma correcta.'

		SET NOCOUNT OFF


GO
/****** Object:  StoredProcedure [dbo].[spTodosClientes]    Script Date: 4/16/2016 10:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spTodosClientes]
AS
	SELECT Nombre_Cliente, 
		   Extracto, 
		   Tipo_Cliente, 
		   (CASE Tipo_Cliente WHEN 'Gubernamental' THEN 'hviolet' WHEN 'Comercial' THEN 'hyellow' END) as colorCliente, 
		   (CASE Categoria_Cliente WHEN  'A' THEN 'success' WHEN 'B' THEN 'warning' WHEN 'C' THEN 'danger' END) as ClasificacionCliente
	FROM Empresa
   WHERE Estado = 1



GO
USE [master]
GO
ALTER DATABASE [MCruzDB2] SET  READ_WRITE 
GO
