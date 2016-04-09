<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresDelPersona.aspx.cs" Inherits="MCruz.ProveedoresDelPersona" %>

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
                            <h4>Desligar Persona</h4>
                            <small>Permite Desligar Una Persona De Un Proveedor Existente, Esto No Borrara Los Datos De La Persona Del Sistema!
                            </small>
                            <div class="m-b-md">
                                <label class="control-label">Nombre Proveedor:</label>
                                <div class="input-group">
                                    <asp:DropDownList CssClass="form-control m-b" ID="drpNombrePersona" runat="server" ToolTip="Seleccione el nombre de la empresa del proveedor" DataSourceID="SqlDataSource1" DataTextField="Resultado" DataValueField="ID_Persona">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MCruzDBConnectionString %>" SelectCommand="sp_ListarUsuariosABorrar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                        <asp:Button CssClass="btn btn-success btn-block" ID="btnDesligarProveedor" Text="Desligar Persona" runat="server" OnClick="btnDelPersonaProveedor_Click"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
