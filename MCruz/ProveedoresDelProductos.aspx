<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresDelProductos.aspx.cs" Inherits="MCruz.ProveedoresDelProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
    </style>
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
                            <h4>Eliminar Producto 
                            </h4>
                            <small>Permite borrar productos registrados del sistema.
                            </small>
                            <div class="form-group">
                                <span class="auto-style1">Codigo del Producto</span><label class="control-label">:</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ToolTip="Codigo de Producto" ID="txtCodProducto" runat="server" MaxLength="9"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtCodProducto" ErrorMessage="Debe ingresar solo numeros" Operator="DataTypeCheck" Type="Integer" ForeColor="Red"></asp:CompareValidator>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCodProducto" ErrorMessage="Campo Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnEliminarProducto" Text="Eliminar Producto" runat="server" OnClick="btnDelProductoProveedor_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
