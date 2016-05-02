<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="eliminarUsuario.aspx.cs" Inherits="MCruz.eliminarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
        <h2 class="font-light m-b-xs">
        Seguridad - Eliminar Usuarios
    </h2>
    <small>Eliminacion de usuarios.</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <div class="col-lg-12">
        <div class="hpanel">
            <div class="panel-heading">
                Creacion de Usuarios
            </div>
            <div class="panel-body" style="display: block;">
                <table>
                    <tr>
                        <td  colspan="2">
                            <label class="control-label" style="width: 221px">
                            Remover Cuentas de Usuarios</label></td>
                        <td >&nbsp;</td>
                    </tr>
                    <tr>
                        <td >&nbsp;</td>
                        <td >&nbsp;</td>
                        <td >&nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            <label class="control-label" style="width: 158px">
                        Nombre de la cuenta</label></td>
                        <td >
                            <asp:DropDownList ID="ddlCuentas" runat="server" Height="36px" Width="246px">
                            </asp:DropDownList>
                        </td>
                        <td >&nbsp;</td>
                    </tr>
                    <tr>
                        <td >&nbsp;</td>
                        <td >
                            <asp:Label ID="lblEstado" runat="server"></asp:Label>
                        </td>
                        <td >&nbsp;</td>
                    </tr>
                    <tr>
                        <td >&nbsp;</td>
                        <td >&nbsp;</td>
                        <td >&nbsp;</td>
                    </tr>
                    <tr>
                        <td >&nbsp;</td>
                        <td >
                            <asp:Button CssClass="btn btn-danger" ID="btnRemoverCuenta" Text="Remover Cuenta" runat="server" OnClick="btnRemoverCuenta_Click" Width="247px"></asp:Button>
                            <asp:Label ID="lblRemoverCuenta" runat="server"></asp:Label>
                        </td>
                        <td >&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
