<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresFacturacion.aspx.cs" Inherits="MCruz.ProveedoresFacturacion" %>

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
    <small>Busqueda De facturas</small>
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
                                    Busqueda por Nombre de Empresa:</label>
                                <div class="input-group text">
                                    <asp:TextBox ID="txtNombreEmpresa" runat="server" CssClass="form-control" ToolTip="Busqueda por Nombre de empresa"></asp:TextBox>
                                </div>
                            </div>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnBuscar" Text="Buscar" runat="server" OnClick="btnBuscar_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnNuevaFactura" Text="Crear Nueva Factura" runat="server" OnClick="btnCrearNuevaFactura_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnModFactura" Text="Modificar Factura" runat="server" OnClick="btnModFactura_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnDelFactura" Text="Borrar Factura" runat="server" OnClick="btnDelNuevaFactura_Click"></asp:Button>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row projects">
                <div id="resultadoBusqueda">
                    <asp:Repeater ID="resBusqueda" runat="server">
                        <ItemTemplate>
                            <div class="col-md-8">
                               <%-- <div class="hpanel filter-item <%# Eval("colorCliente").ToString() %>">--%>
                                    <a href="#">
                                        <div class="panel-body">
                                            <div class="pull-right text-right">
                                                <div class="progress m-t-xs full progress-medium">
<%--                                                    <div style="width: 100%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="1" role="progressbar" class=' progress-bar progress-bar-<%# Eval("ClasificacionCliente").ToString() %>'></div>--%>
                                                </div>
                                            </div>
                                            <h4 class="m-b-xs">
                                                <asp:Label ID="Num_Factura" runat="server" Text='<%# Eval("Num_Factura").ToString() %>'></asp:Label></h4>
                                           <%-- <p class="small">
                                                <asp:Label ID="TipoCliente" runat="server" Text='<%# Eval("TipoCliente").ToString() %>'></asp:Label>
                                            </p>--%>
      
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
