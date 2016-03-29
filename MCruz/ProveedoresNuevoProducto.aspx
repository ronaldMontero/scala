<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresNuevoProducto.aspx.cs" Inherits="MCruz.ProveedoresNuevoProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phDatosUsuario" runat="server">
    <a href="WFProveedores/dasboard.aspx">
        <img src="imgs/user.png" class="img-circle m-b" alt="Usuario" width="76" /></a>
    <p class="userName">Nombre Apellido </p>
    <p>Administrador</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">Productos Proveedores</h2>
    <small>Agregar Nuevo Producto</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <div class="content animate-panel">
        <div class="row">
            <div class="col-md-3">
                <div class="hpanel">
                    <div class="panel-body">
                        <div class="m-b-md">
                            <h4>Agregar Nuevo Producto
                            </h4>
                            <small>Permite Agregar un Nuevo Producto
                            </small>
                            <div class="form-group">
                                <label class="control-label">Descripcion del Producto:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Descripcion del Producto" ID="txtDescripcionProducto" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Cantidad de Producto:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Cantidad de Producto" ID="txtCantidadProducto" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Fecha de Entrega:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Fecha de entrega" ID="txtFechaEntrega" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Fecha de Caducidad:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Fecha de Caducidad" ID="txtFechaCaducidad" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Empresa:</label>
                            <div class="input-group">
                                <asp:DropDownList CssClass="form-control m-b" ID="DropDownList1" runat="server" ToolTip="Seleccione el tipo de pago">
                                    <asp:ListItem Enabled="True" Selected="True" Text="Seleccione ..."></asp:ListItem>
                                    <asp:ListItem Enabled="True" Selected="False" Text="Gubernamental" Value="1"></asp:ListItem>
                                    <asp:ListItem Enabled="True" Selected="false" Text="Comercial" Value="2"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <asp:Button CssClass="btn btn-success btn-block" ID="btnIngresarNuevoProducto" Text="Agregar Producto" runat="server" OnClick="btnAgregarNuevoProducto_Click"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
