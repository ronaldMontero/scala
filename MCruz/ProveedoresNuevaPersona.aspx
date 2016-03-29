<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresNuevaPersona.aspx.cs" Inherits="MCruz.ProveedoresNuevoPersona" %>

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
    <small>Administracion de Personal de Proveedores</small>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <div class="content animate-panel">
        <div class="row">
            <div class="col-md-3">
                <div class="hpanel">
                    <div class="panel-body">
                        <div class="m-b-md">
                            <h4>Crear Nuevo Proveedor
                            </h4>
                            <small>Crea nueva factura para proveedores
                            </small>
                            <div class="form-group">
                                <label class="control-label">Nombre proveedor:</label>
                                <div class="input-group">
                                    <asp:DropDownList CssClass="form-control m-b" ID="drpNombreEmpresa" runat="server" ToolTip="Seleccione el nombre de la empresa del proveedor">
                                        <asp:ListItem Enabled="True" Selected="True" Text="Seleccione ..."></asp:ListItem>
                                        <asp:ListItem Enabled="True" Selected="False" Text="Gubernamental" Value="1"></asp:ListItem>
                                        <asp:ListItem Enabled="True" Selected="false" Text="Comercial" Value="2"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Cedula:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Cedula" ID="txtCedula" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Nombre:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Nombre" ID="txtNombre" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Primer Apellido:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Primer Apellido" ID="txtApellido1" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Segundo Apellido:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Segundo Apellido" ID="txtApellido" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Primer Email:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Primer Email" ID="txtPrimerEmail" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Segundo Email:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Segundo Email" ID="txtSegundoEmail" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Primer Telefono:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Primer Telefono de Contacto" ID="txtPrimerTelefono" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Segundo Telefono:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Segundo Telefono de Contacto" ID="txtSegundoTelefono" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Tercer Telefono:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Tercer Telefono de Contacto" ID="txtTercerTelefono" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Primera Direccion:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Primer Direccion" ID="txtPrimerDireccion" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Segunda Direccion:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Segunda Direccion" ID="txtSegundaDireccion" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Puesto del Proveedor:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Puesto del Proveedor" ID="txtPuestoProveedor" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <asp:Button CssClass="btn btn-success btn-block" ID="btnCrearPersonaProveedor" Text="Crear Nueva Persona" runat="server" OnClick="btnCrearPersonaProveedor_Click"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
