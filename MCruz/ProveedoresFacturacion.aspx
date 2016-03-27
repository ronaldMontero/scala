<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresFacturacion.aspx.cs" Inherits="MCruz.ProveedoresFacturacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phDatosUsuario" runat="server">
        <a href="dasboard.aspx"><img src="imgs/user.png" class="img-circle m-b" alt="Usuario" width="76"/></a>
    <p class="userName">Nombre Apellido </p>
    <p>Administrador</p>  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
        <h2 class="font-light m-b-xs">Facturacion</h2>
    <small>Busqueda de facturas</small>
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
                                    Busqueda por Nombre de Factura:</label>
                                <div class="input-group text">
                                    <asp:TextBox ID="txtFactura" runat="server" CssClass="form-control" ToolTip="Busqueda por Numero de factura"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    Busqueda por Nombre de Cliente:</label>
                                <div class="input-group text">
                                    <asp:TextBox ID="txtNombreCliente" runat="server" CssClass="form-control" ToolTip="Busqueda por Nombre de cliente"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">
                                    Busqueda por Nombre de Empresa</label>
                                <div class="input-group text">
                                    <asp:TextBox ID="txtNombreEmpresa" runat="server" CssClass="form-control" ToolTip="Busqueda por Nombre de empresa"></asp:TextBox>
                                </div>
                            </div>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnBuscar" Text="Buscar" runat="server" OnClick="btnBuscar_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnBuscarTodasFacturas" Text="Mostrar Todas Las Facturas" runat="server" OnClick="btnBuscarTodasFacturas_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnNuevaFactura" Text="Crear Nueva Factura" runat="server" OnClick="btnCrearNuevaFactura_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
                <div class="row projects">
                <div id="resultadoBusqueda"> 
                    <asp:Repeater ID="resBusqueda" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <div class="col-md-8">
                                            <a href="#">
 
                                            </a>
                                        </div>
                                    </div>
                            </ItemTemplate>
                        </asp:Repeater>                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MCruzDBConnectionString %>" SelectCommand="SELECT [Num_Factura], [Descripcion_Factura], [Estado], [Tipo_Pago], [Monto_Factura], [Monto_Ultimo_Pago], [Fecha_Ultimo_Pago] FROM [Factura_Proveedor] ORDER BY [Num_Factura]"></asp:SqlDataSource>
                </div>
            </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
