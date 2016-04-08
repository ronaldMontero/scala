<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="crearUsuario.aspx.cs" Inherits="MCruz.crearUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 178px;
    }
    .auto-style2 {
        width: 479px;
    }
    .auto-style4 {
        width: 58px;
    }
        .auto-style5 {
            width: 174px;
            height: 22px;
        }
        .auto-style6 {
            width: 149px;
        }
        .auto-style7 {
            width: 178px;
            height: 36px;
        }
        .auto-style8 {
            width: 149px;
            height: 36px;
        }
        .auto-style9 {
            width: 58px;
            height: 36px;
        }
        .auto-style10 {
            width: 178px;
            height: 22px;
        }
        .auto-style11 {
            width: 149px;
            height: 22px;
        }
        .auto-style12 {
            width: 58px;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phDatosUsuario" runat="server">
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
        <td class="auto-style1">
            <label class="control-label" style="width: 202px">
            Creacion de Usuarios</label></td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <label class="control-label" style="width: 158px">
            Nombre de la persona</label></td>
        <td class="auto-style6">
            <asp:DropDownList ID="ddlPersonas" runat="server" Height="31px" Width="150px">
            </asp:DropDownList>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <label class="control-label" style="width: 145px">
            Nombre del Usuario<br />
            </label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtNombreUsuario" runat="server" Height="30px" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <label class="control-label" style="width: 145px">
            Contraseña<br />
            </label></td>
        <td class="auto-style6">
            <asp:TextBox ID="txtContrasenna" runat="server" Height="30px" Width="150px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11"></td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style1">
            <label class="control-label" style="width: 145px">
            Estado</label></td>
        <td class="auto-style6">
            <asp:DropDownList ID="ddlEstado" runat="server" Height="31px" Width="150px">
                <asp:ListItem Selected="True" Value="1">Activo</asp:ListItem>
                <asp:ListItem Value="0">Inactivo</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style11"></td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style1">
            <label class="control-label" style="width: 145px">
            Perfil</label></td>
        <td class="auto-style6">
            <asp:DropDownList ID="ddlRoles" runat="server" Height="31px" Width="150px">
            </asp:DropDownList>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7"></td>
        <td class="auto-style8">
            <asp:Button CssClass="btn btn-success btn-block" ID="btnCrearUsuario" Text="Crear Usuario" runat="server" OnClick="btnCrearUsuario_Click" Width="150px"></asp:Button>
        </td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">
            <asp:Label ID="lblCreacionUsuario" runat="server"></asp:Label>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    </table>
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
