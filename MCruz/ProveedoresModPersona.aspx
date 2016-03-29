<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresModPersona.aspx.cs" Inherits="MCruz.ProveedoresModPersona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phDatosUsuario" runat="server">
    <a href="dasboard.aspx">
        <img src="imgs/user.png" class="img-circle m-b" alt="Usuario" width="76" /></a>
    <p class="userName">Nombre Apellido </p>
    <p>Administrador</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">Personas Proveedores</h2>
    <small>Administracion De Personas Para Proveedores</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <div class="content animate-panel">
        <div class="row">
            <div class="col-md-3">
                <div class="hpanel">
                    <div class="panel-body">
                        <div class="m-b-md">
                            <h4>Modificar Datos de Proveedor 
                            </h4>
                            <small>Permite Modificar El Proveedor De Una Persona Existente
                            </small>
                            <div class="form-group">
                                <label class="control-label">Cedula:</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ToolTip="Cedula" ID="txtModCedula" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nombre de Proveedor:</label>
                                <div class="input-group">
                                    <asp:DropDownList CssClass="form-control m-b" ID="drpModNombreProveedor" runat="server" ToolTip="Seleccione el nombre del proveedor">
                                        <asp:ListItem Enabled="True" Selected="True" Text="Seleccione ..."></asp:ListItem>
                                        <asp:ListItem Enabled="True" Selected="False" Text="Gubernamental" Value="1"></asp:ListItem>
                                        <asp:ListItem Enabled="True" Selected="false" Text="Comercial" Value="2"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Puesto de Proveedor:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Descripcion de Puesto de Proveedor" ID="txtModDescProveedor" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <asp:Button CssClass="btn btn-success btn-block" ID="btnModificarProveedor" Text="Modificar Datos de Proveedor" runat="server" OnClick="btnModPersonaProveedor_Click"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
