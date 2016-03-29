<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresDelFactura.aspx.cs" Inherits="MCruz.ProveedoresDelFactura" %>

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
                            <h4>Elminar Factura 
                            </h4>
                            <small>Permite Elminar Una Factura Existente
                            </small>
                            <div class="form-group">
                                <label class="control-label">Numero de Factura:</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ToolTip="Numero de Factura" ID="txtDelFactura" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnEliminarFactura" Text="Eliminar Factura" runat="server" OnClick="btnDelFactura_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
