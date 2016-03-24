CREATE PROCEDURE spListarClientes
	@nombre varchar = null,
	@fechaInclusion date = null,
	@tipoCliente char = null,
	@clasificacion char = null
AS
	IF @fechaInclusion is null
	SET @fechaInclusion = GETDATE()

	SELECT Nombre_Cliente, 
		   Extracto, 
		   (CASE Tipo_de_Cliente WHEN '1' THEN 'Gubernamental' WHEN '2' THEN 'Comercial' END) as TipoCliente, 
		   (CASE Categoria_Cliente WHEN  'A' THEN 'success' WHEN 'B' THEN 'warning' WHEN 'C' THEN 'danger' END) as ClasificacionCliente
	FROM Cliente_Empresa
	WHERE 1 = 1
      AND (@nombre is null OR 
	       Nombre_Cliente LIKE '%' + @nombre + '%')
      AND (@fechaInclusion is null OR 
	       Fecha_Inclusion <= @fechaInclusion)
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
		   (CASE Categoria_Cliente WHEN  'A' THEN 'success' WHEN 'B' THEN 'warning' WHEN 'C' THEN 'danger' END) as ClasificacionCliente
	FROM Cliente_Empresa
GO