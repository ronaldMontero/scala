USE [MCruzDB]
GO
/****** Object:  Table [dbo].[Permiso]    Script Date: 28/03/2016 10:33:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permiso](
	[idPagina] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Url] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PermisoRol]    Script Date: 28/03/2016 10:33:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermisoRol](
	[idPerfil] [int] NOT NULL,
	[idPagina] [int] NOT NULL,
 CONSTRAINT [PK_PerfilesPaginas] PRIMARY KEY CLUSTERED 
(
	[idPerfil] ASC,
	[idPagina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rol]    Script Date: 28/03/2016 10:33:09 p.m. ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 28/03/2016 10:33:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[idPersona] [int] NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Clave] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
	[idPerfil] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[BuscarIDPerfil_User]    Script Date: 28/03/2016 10:33:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarIDPerfil_User]
@Usuario varchar(max)
AS
BEGIN
	SET NOCOUNT OFF;
	select idPerfil from dbo.Usuario
	where Usuario = @Usuario
END

GO
/****** Object:  StoredProcedure [dbo].[BuscarIDPerfil_UserPassword]    Script Date: 28/03/2016 10:33:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarIDPerfil_UserPassword]
@Usuario varchar(max),
@Contrasena varchar(max)
AS
BEGIN
	SET NOCOUNT OFF;
	select idPerfil from dbo.Usuario
	where Usuario = @Usuario and Clave = @Contrasena
END

GO
/****** Object:  StoredProcedure [dbo].[BuscarPerfil_Usuario]    Script Date: 28/03/2016 10:33:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarPerfil_Usuario]
@Usuario varchar(max)
AS
BEGIN
	SET NOCOUNT OFF;
	select r.Descripcion from dbo.Rol r
	join dbo.Usuario u ON u.idPerfil = r.idPerfil
	where u.Usuario = @Usuario
END

GO
/****** Object:  StoredProcedure [dbo].[BuscarPerfil_UsuarioContrasena]    Script Date: 28/03/2016 10:33:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarPerfil_UsuarioContrasena]
@Usuario varchar(max),
@Contrasena varchar (max)
AS
BEGIN
	SET NOCOUNT OFF;
		select r.Descripcion from dbo.Rol r
	join dbo.Usuario u ON u.idPerfil = r.idPerfil
	where u.Usuario = @Usuario and u.Clave = @Contrasena
END

GO
/****** Object:  StoredProcedure [dbo].[BuscarPermiso_PerfilPagina]    Script Date: 28/03/2016 10:33:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarPermiso_PerfilPagina]
@DescripcionRol varchar(max),
@Pagina varchar(max)

AS
BEGIN
	SET NOCOUNT OFF;
	select p.URL,r.descripcion from dbo.Permiso p
	join dbo.PermisoRol pr ON p.idPagina = pr.idPagina
	join dbo.Rol r ON r.idPerfil =  pr.idPerfil
	where r.descripcion = @DescripcionRol AND p.URL = @Pagina
END

GO
/****** Object:  StoredProcedure [dbo].[ComprobarUsuarioContrasena]    Script Date: 28/03/2016 10:33:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ComprobarUsuarioContrasena]
@Usuario varchar (max),
@Contrasena varchar (max)
AS
BEGIN
	SET NOCOUNT OFF;
	select * from Usuario
	where Usuario = @Usuario and Clave = @Contrasena
END

GO
/****** Object:  StoredProcedure [dbo].[Permisos_DescRol]    Script Date: 28/03/2016 10:33:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Permisos_DescRol]
@DescripcionRol varchar(max)
AS
BEGIN
	SET NOCOUNT OFF;
	select p.URL from dbo.Permiso p
	join dbo.PermisoRol pr ON p.idPagina = pr.idPagina
	join dbo.Rol r ON r.idPerfil =  pr.idPerfil
	where r.descripcion = @DescripcionRol
END

GO
/****** Object:  StoredProcedure [dbo].[Permisos_IDRol]    Script Date: 28/03/2016 10:33:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Permisos_IDRol]
@idPerfil	int 
AS
BEGIN
	SET NOCOUNT OFF;
	select "URL" from dbo.Permiso p
	join dbo.PermisoRol pr ON p.idPagina = pr.idPagina 
	where idPerfil = @idPerfil
END

GO
