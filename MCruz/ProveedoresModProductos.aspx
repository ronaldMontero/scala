<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresModProductos.aspx.cs" Inherits="MCruz.ProveedoresModProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                            <h4>Modificar Datos de Producto 
                            </h4>
                            <small>Permite Modificar Un Producto Ya Existente
                            </small>
                            <div class="form-group">
                                <label class="control-label">ID del Producto:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="ID_Producto" ID="txtIDProducto" runat="server" MaxLength="9"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtIDProducto" ErrorMessage="Debe ingresar solo numeros" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="1"></asp:CompareValidator>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIDProducto" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br />
                            <br />

                            <asp:Button CssClass="btn btn-success btn-block" ID="Button1" Text="Buscar Producto" runat="server" OnClick="btnModBuscarProducto_Click" ValidationGroup="1"></asp:Button>

                            <div class="form-group">
                                <label class="control-label">Nombre del Producto:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Nombre del Producto" ID="txtNombreProducto" runat="server" MaxLength="200" Enabled="False"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombreProducto" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Descripcion del Producto:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Descripcion del Producto" ID="txtDescripcionProducto" runat="server" MaxLength="200" Enabled="False"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDescripcionProducto" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Cantidad de Producto:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Cantidad de Producto" ID="txtCantidadProducto" runat="server" MaxLength="9" Enabled="False"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtCantidadProducto" ErrorMessage="Debe ingresar solo numeros" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                                <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCantidadProducto" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Fecha de Entrega:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Fecha de entrega" ID="txtFechaEntrega" runat="server" TextMode="Date" Enabled="False"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFechaEntrega" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Fecha de Caducidad:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Fecha de Caducidad" ID="txtFechaCaducidad" runat="server" TextMode="Date" Enabled="False"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFechaCaducidad" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Empresa:</label>
                            <div class="input-group">
                                <asp:DropDownList CssClass="form-control m-b" ID="drpEmpresa" runat="server" ToolTip="Seleccione la empresa a la que pertenece este producto" DataSourceID="SqlDataSource1" DataTextField="nombre_cliente" DataValueField="ID_Empresa" Enabled="False">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MCruzDBConnectionString %>" SelectCommand="sp_ListarEmpresasIngFactura" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </div>
                        </div>

                        <asp:Button CssClass="btn btn-success btn-block" ID="btnModificarProducto" Text="Modificar Producto" runat="server" OnClick="btnModProductoProveedor_Click" ValidationGroup="2"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
