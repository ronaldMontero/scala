<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="crearUsuario.aspx.cs" Inherits="MCruz.crearUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 452px;
    }
    .auto-style4 {
        width: 58px;
    }
        .auto-style9 {
            width: 58px;
            height: 36px;
        }
        .auto-style12 {
            width: 58px;
            height: 22px;
        }
        .auto-style17 {
            width: 23px;
            height: 22px;
        }
        .auto-style18 {
            width: 23px;
            height: 36px;
        }
        .auto-style19 {
            width: 23px;
        }
        .auto-style20 {
            margin-left: 5;
        }
        .auto-style22 {
            width: 40px;
            height: 22px;
        }
        .auto-style23 {
            width: 40px;
            height: 36px;
        }
        .auto-style24 {
            width: 40px;
        }
        .auto-style25 {
            width: 40px;
            height: 40px;
        }
        .auto-style26 {
            width: 23px;
            height: 40px;
        }
        .auto-style27 {
            width: 58px;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">
        Seguridad - Crear Usuarios
    </h2>
    <small>Creación de usuarios.</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <table class="auto-style2">
    <tr>
        <td class="auto-style24">
            <label class="control-label" style="width: 155px">
            Creacion de Usuarios</label></td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">
            <label class="control-label" style="width: 158px">
            Nombre de la persona</label></td>
        <td class="auto-style19">
            <asp:DropDownList ID="ddlPersonas" runat="server" Height="31px" Width="150px">
            </asp:DropDownList>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style25">
            <label class="control-label" style="width: 145px">
            Nombre del Usuario<br />
            </label>
        </td>
        <td class="auto-style26">
            <asp:TextBox ID="txtNombreUsuario" runat="server" Height="30px" Width="150px" CssClass="auto-style20"></asp:TextBox>
        </td>
        <td class="auto-style27">
            <asp:RequiredFieldValidator ID="frvCuenta" runat="server" ControlToValidate="txtNombreUsuario" ErrorMessage="Verifique Cuenta"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">
            <label class="control-label" style="width: 145px">
            Contraseña<br />
            </label></td>
        <td class="auto-style19">
            <asp:TextBox ID="txtContrasenna" runat="server" Height="30px" Width="150px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="frvContrasena" runat="server" ControlToValidate="txtContrasenna" ErrorMessage="Verifique Contraseña"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style22"></td>
        <td class="auto-style17"></td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style24">
            <label class="control-label" style="width: 145px">
            Estado</label></td>
        <td class="auto-style19">
            <asp:DropDownList ID="ddlEstado" runat="server" Height="31px" Width="150px">
                <asp:ListItem Selected="True" Value="1">Activo</asp:ListItem>
                <asp:ListItem Value="0">Inactivo</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22"></td>
        <td class="auto-style17"></td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style24">
            <label class="control-label" style="width: 145px">
            Perfil</label></td>
        <td class="auto-style19">
            <asp:DropDownList ID="ddlRoles" runat="server" Height="31px" Width="150px">
            </asp:DropDownList>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style23"></td>
        <td class="auto-style18">
            <asp:Button CssClass="btn btn-success btn-block" ID="btnCrearUsuario" Text="Crear Usuario" runat="server" OnClick="btnCrearUsuario_Click" Width="150px"></asp:Button>
        </td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style19">
            <asp:Label ID="lblCreacionUsuario" runat="server"></asp:Label>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    </table>
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
