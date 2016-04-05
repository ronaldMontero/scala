USE [master]
GO
/****** Object:  Database [MCruzDB]    Script Date: 05/04/2016 06:25:42 a.m. ******/
CREATE DATABASE [MCruzDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MCruzDB', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MCruzDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MCruzDB_log', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MCruzDB_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MCruzDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MCruzDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MCruzDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MCruzDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MCruzDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MCruzDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MCruzDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MCruzDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MCruzDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MCruzDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MCruzDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MCruzDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MCruzDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MCruzDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MCruzDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MCruzDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MCruzDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MCruzDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MCruzDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MCruzDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MCruzDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MCruzDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MCruzDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MCruzDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MCruzDB] SET RECOVERY FULL 
GO
ALTER DATABASE [MCruzDB] SET  MULTI_USER 
GO
ALTER DATABASE [MCruzDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MCruzDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MCruzDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MCruzDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MCruzDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MCruzDB', N'ON'
GO
USE [MCruzDB]
GO
/****** Object:  Table [dbo].[Catalogo_Colaborador]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  Table [dbo].[Catalogo_Proyecto]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  Table [dbo].[Cliente_Empresa]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  Table [dbo].[Colaborador]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  Table [dbo].[Contacto_Cliente]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  Table [dbo].[Contacto_Proveedor]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  Table [dbo].[Factura_Proveedor]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  Table [dbo].[Permiso]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  Table [dbo].[PermisoRol]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  Table [dbo].[Rol]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarRol]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarIDPerfil_User]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarIDPerfil_UserPassword]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerAccion_DescRol]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerAccion_IDRol]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerAccion_PerfilAccion]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerfil_Usuario]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerfil_UsuarioContrasena]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerPaginas_DescRol]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerPaginas_IDRol]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerPaginas_PerfilPagina]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[ComprobarUsuarioContrasena]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[EliminarPermisosPorRol]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[EliminarRol]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarPermisosPorRol]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarRol]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[ListarPermisos]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[ListarPermisosPorCuenta]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[ListarRoles]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[ListarUsuarios]    Script Date: 05/04/2016 06:25:42 a.m. ******/
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
USE [master]
GO
ALTER DATABASE [MCruzDB] SET  READ_WRITE 
GO
