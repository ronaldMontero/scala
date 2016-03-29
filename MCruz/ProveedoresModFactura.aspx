<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresModFactura.aspx.cs" Inherits="MCruz.ProveedoresModFactura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phDatosUsuario" runat="server">
    <a href="dasboard.aspx">
        <img src="imgs/user.png" class="img-circle m-b" alt="Usuario" width="76" /></a>
    <p class="userName">Nombre Apellido </p>
    <p>Administrador</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">Facturacion</h2>
    <small>Administracion De Facturas</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <div class="content animate-panel">
        <div class="row">
            <div class="col-md-3">
                <div class="hpanel">
                    <div class="panel-body">
                        <div class="m-b-md">
                            <h4>Modificar Factura 
                            </h4>
                            <small>Permite Modificar Una Factura Existente
                            </small>
                            <div class="form-group">
                                <label class="control-label">Numero de Factura:</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ToolTip="Numero de Factura" ID="txtNumeroFactura" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nombre de Proveedor:</label>
                                <div class="input-group">
                                    <asp:DropDownList CssClass="form-control m-b" ID="drpModFacturaProveedor" runat="server" ToolTip="Seleccione el nombre del proveedor">
                                        <asp:ListItem Enabled="True" Selected="True" Text="Seleccione ..."></asp:ListItem>
                                        <asp:ListItem Enabled="True" Selected="False" Text="Gubernamental" Value="1"></asp:ListItem>
                                        <asp:ListItem Enabled="True" Selected="false" Text="Comercial" Value="2"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Descripcion de la Factura:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Descripcion de la Factura" ID="txtModDescFactura" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Fecha de Entrega:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Fecha de entrega" ID="txtModFechaEntrega" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Fecha de Caducidad:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Fecha de Caducidad" ID="txtModFechaCaducidad" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Estado:</label>
                            <div class="input-group">
                                <asp:DropDownList CssClass="form-control m-b" ID="drpModEstado" runat="server" ToolTip="Seleccione el tipo de pago">
                                    <asp:ListItem Enabled="True" Selected="True" Text="Seleccione ..."></asp:ListItem>
                                    <asp:ListItem Enabled="True" Selected="False" Text="Gubernamental" Value="1"></asp:ListItem>
                                    <asp:ListItem Enabled="True" Selected="false" Text="Comercial" Value="2"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Tipo de Pago:</label>
                            <div class="input-group">
                                <asp:DropDownList CssClass="form-control m-b" ID="drpModTipoPago" runat="server" ToolTip="Seleccione el tipo de pago">
                                    <asp:ListItem Enabled="True" Selected="True" Text="Seleccione ..."></asp:ListItem>
                                    <asp:ListItem Enabled="True" Selected="False" Text="Gubernamental" Value="1"></asp:ListItem>
                                    <asp:ListItem Enabled="True" Selected="false" Text="Comercial" Value="2"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Monto:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Monto" ID="txtModMonto" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Monto Ultimo Pago:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Monto Ultimo Pago" ID="txtModMontoUltimoPago" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Fecha Ultimo Pago:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Fecha Ultimo Pago" ID="txtModFechaUltimoPago" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <asp:Button CssClass="btn btn-success btn-block" ID="btnModificarFactura" Text="Modificar Factura" runat="server" OnClick="btnModFactura_Click"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
