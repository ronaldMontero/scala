<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresProductos.aspx.cs" Inherits="MCruz.ProveedoresProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phDatosUsuario" runat="server">
    <a href="dasboard.aspx">
        <img src="imgs/user.png" class="img-circle m-b" alt="Usuario" width="76" /></a>
    <p class="userName">Nombre Apellido </p>
    <p>Administrador</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">Productos</h2>
    <small>Listado de Productos</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <div class="content animate-panel">
        <div class="row">
            <div class="col-md-3">
                <div class="hpanel">
                    <div class="panel-body">
                        <div class="m-b-md">
                            <div class="form-group">
                                <label class="control-label">
                                    Busqueda por Nombre</label>
                                <div class="input-group text">
                                    <asp:TextBox ID="txtProducto" runat="server" CssClass="form-control" ToolTip="Busqueda por Nombre de Producto"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    Busqueda por Descripcion:</label>
                                <div class="input-group text">
                                    <asp:TextBox ID="txtDescripcionProducto" runat="server" CssClass="form-control" ToolTip="Busqueda por Descripcion"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    Busqueda por Empresa</label>
                                <div class="input-group text">
                                    <asp:TextBox ID="txtNombreEmpresa" runat="server" CssClass="form-control" ToolTip="Busqueda por Empresa"></asp:TextBox>
                                </div>
                            </div>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnBuscar" Text="Buscar" runat="server" OnClick="btnBuscar_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnMostrarTodoslosProductos" Text="Mostrar Todos los Productos" runat="server" OnClick="btnMostrarTodosLosProductos_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnAgregarNuevoProducto" Text="Agregar Nuevo Producto" runat="server" OnClick="btnAgregarNuevoProducto_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
