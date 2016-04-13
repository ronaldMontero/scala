<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresNuevaFactura.aspx.cs" Inherits="MCruz.ProveedoresNuevaFactura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">Facturacion</h2>
    <small>Administracion de Facturas</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <div class="content animate-panel">
        <div class="row">
            <div class="col-md-3">
                <div class="hpanel">
                    <div class="panel-body">
                        <div class="m-b-md">
                            <h4>Crear Nueva Factura
                            </h4>
                            <small>Crea Nueva Factura Para Proveedores
                            </small>
                            <div class="form-group">
                                <label class="control-label">Nombre Empresa:</label>
                                <div class="input-group">
                                    <asp:DropDownList CssClass="form-control m-b" ID="drpNombreProveedor" runat="server" ToolTip="Seleccione el nombre del proveedor" OnSelectedIndexChanged="drpNombreProveedor_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="nombre_cliente" DataValueField="ID_Empresa">
                                    
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MCruzDBConnectionString %>" SelectCommand="sp_ListarEmpresasIngFactura" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Descripcion de la Factura:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Descripcion de la Factura" ID="txtDescripcionFactura" runat="server" MaxLength="300" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescripcionFactura" ErrorMessage="Campo Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Estado:</label>
                            <div class="input-group">
                                <asp:DropDownList CssClass="form-control m-b" ID="drpEstado" runat="server" ToolTip="Seleccione el tipo de pago">                                   
                                    <asp:ListItem Enabled="True" Selected="true" Text="Activa" Value="Activa"></asp:ListItem>
                                    <asp:ListItem Enabled="True" Selected="false" Text="Pendiente" Value="Pendiente"></asp:ListItem>
                                    <asp:ListItem>Cancelada</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Tipo de Pago:</label>
                            <div class="input-group">
                                <asp:DropDownList CssClass="form-control m-b" ID="drpTipodePago" runat="server" ToolTip="Seleccione el tipo de pago">
                                    <asp:ListItem Enabled="True" Selected="True" Text="Colones" Value="Colones"></asp:ListItem>
                                    <asp:ListItem Enabled="True" Selected="false" Text="Dolares" Value="Dolares"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Monto:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Monto" ID="txtMonto" runat="server" MaxLength="9"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMonto" ErrorMessage="Campo Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtMonto" ErrorMessage="Debe ingresar solo numeros" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                            </div>
                        </div>
                        <asp:Button CssClass="btn btn-success btn-block" ID="btnCrearFactura" Text="Crear Factura" runat="server" OnClick="btnCrearFactura_Click"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
