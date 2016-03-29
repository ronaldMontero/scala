<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresPersonas.aspx.cs" Inherits="MCruz.ProveedoresPersonas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phDatosUsuario" runat="server">
            <a href="WFProveedores/dasboard.aspx"><img src="imgs/user.png" class="img-circle m-b" alt="Usuario" width="76"/></a>
    <p class="userName">Nombre Apellido </p>
    <p>Administrador</p>  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
        <h2 class="font-light m-b-xs">Personas Provedores</h2>
    <small>Listado De Personas Para Proveedores</small>
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
                                    Busqueda por Nombre de Proveedor:</label>
                                <div class="input-group text">
                                    <asp:TextBox ID="txtNombreProveedor" runat="server" CssClass="form-control" ToolTip="Nombre de Proveedor"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    Busqueda por Nombre de Emrpesa:</label>
                                <div class="input-group text">
                                    <asp:TextBox ID="txtNombreEmpresa" runat="server" CssClass="form-control" ToolTip="Nombre de empresa"></asp:TextBox>
                                </div>
                            </div>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnBuscar" Text="Buscar" runat="server" OnClick="btnBuscar_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnIngresarNuevoProveedor" Text="Ingresar Nuevo Proveedor" runat="server" OnClick="btnAnadirNuevoProveedor_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnModificarProveedor" Text="Modificar Proveedor" runat="server" OnClick="btnModificarProveedor_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnDelProveedor" Text="Borrar Un Proveedor" runat="server" OnClick="btnDelProveedor_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
