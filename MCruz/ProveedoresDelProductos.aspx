<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresDelProductos.aspx.cs" Inherits="MCruz.ProveedoresDelProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phDatosUsuario" runat="server">
    <a href="dasboard.aspx">
        <img src="imgs/user.png" class="img-circle m-b" alt="Usuario" width="76" /></a>
    <p class="userName">Nombre Apellido </p>
    <p>Administrador</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">Productos Proveedores</h2>
    <small>Administracion de Productos</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <div class="content animate-panel">
        <div class="row">
            <div class="col-md-3">
                <div class="hpanel">
                    <div class="panel-body">
                        <div class="m-b-md">
                            <h4>Desligar Proveedor 
                            </h4>
                            <small>Permite Desligar Una Persona De Un Proveedor Existente, Esto No Borrara Los Datos De La Persona Del Sistema!
                            </small>
                            <div class="form-group">
                                <label class="control-label">Numero de Cedula:</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ToolTip="Numero de Cedula" ID="txtDelPersonaProveedor" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnDesligarProveedor" Text="Desligar Proveedor" runat="server" OnClick="btnDelPersonaProveedor_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
