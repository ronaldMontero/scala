<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="crearUsuario.aspx.cs" Inherits="MCruz.crearUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">
        Seguridad - Crear Usuarios
    </h2>
    <small>Creación de usuarios.</small>
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
                    <td >&nbsp;</td>
                    <td >&nbsp;</td>
                    <td >&nbsp;</td>
                </tr>
                <tr>
                    <td >
                        <label class="control-label">
                        Nombre de la persona</label></td>
                    <td >
                        <asp:DropDownList ID="ddlPersonas" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td >&nbsp;</td>
                </tr>
                <tr>
                    <td >&nbsp;</td>
                    <td >&nbsp;</td>
                    <td >&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <label class="control-label">
                        Nombre del Usuario<br />
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNombreUsuario" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="frvCuenta" runat="server" ControlToValidate="txtNombreUsuario" ErrorMessage="Verifique Cuenta"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >&nbsp;</td>
                    <td >&nbsp;</td>
                    <td >&nbsp;</td>
                </tr>
                <tr>
                    <td >
                        <label class="control-label">
                        Contraseña<br />
                        </label></td>
                    <td >
                        <asp:TextBox ID="txtContrasenna" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="frvContrasena" runat="server" ControlToValidate="txtContrasenna" ErrorMessage="Verifique Contraseña"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td >
                        <label class="control-label">
                        Estado</label></td>
                    <td >
                        <asp:DropDownList ID="ddlEstado" runat="server">
                            <asp:ListItem Selected="True" Value="1">Activo</asp:ListItem>
                            <asp:ListItem Value="0">Inactivo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td >&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td >
                        <label class="control-label">
                        Perfil</label></td>
                    <td >
                        <asp:DropDownList ID="ddlRoles" runat="server">
                        </asp:DropDownList>
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
                    <td >&nbsp;</td>
                    <td >&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button CssClass="btn btn-success btn-block" ID="btnCrearUsuario" Text="Crear Usuario" runat="server" OnClick="btnCrearUsuario_Click" Width="150px"></asp:Button>
                    </td>
                    <td"></td>
                </tr>
                <tr>
                    <td >&nbsp;</td>
                    <td >
                        <asp:Label ID="lblCreacionUsuario" runat="server"></asp:Label>
                    </td>
                    <td >&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
