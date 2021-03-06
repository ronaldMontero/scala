USE [MCruzDB]
GO
/****** Object:  Table [dbo].[Permiso]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  Table [dbo].[PermisoRol]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  Table [dbo].[Rol]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarIDPerfil]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarRol]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarUsuario]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarIDPerfil_User]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarIDPerfil_UserPassword]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarIdRol_Rol]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarIDUsuario_Cuenta]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerAccion_DescRol]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerAccion_IDRol]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerAccion_PerfilAccion]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerfil_Usuario]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerfil_UsuarioContrasena]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerPaginas_DescRol]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerPaginas_IDRol]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPerPaginas_PerfilPagina]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarUsuario_Cuenta]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[ComprobarUsuarioContrasena]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[EliminarAsocRolPermiso]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[EliminarPermisosPorRol]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[EliminarRol]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[EliminarUsuario]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarPermisosPorRol]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarRol]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarUsuario]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[ListarPermisos]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[ListarPermisosPorCuenta]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[ListarRoles]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
/****** Object:  StoredProcedure [dbo].[ListarUsuarios]    Script Date: 08/04/2016 04:40:39 a.m. ******/
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
