<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="actualizarUsuario.aspx.cs" Inherits="MCruz.actualizarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 11px;
        }
        .auto-style2 {
            width: 447px;
        }
        .auto-style3 {
            width: 44px;
        }
        .auto-style4 {
            width: 145px;
        }
        .auto-style5 {
            width: 11px;
            height: 20px;
        }
        .auto-style9 {
            width: 145px;
            height: 20px;
        }
        .auto-style10 {
            width: 44px;
            height: 20px;
        }
        .auto-style11 {
            width: 11px;
            height: 22px;
        }
        .auto-style12 {
            width: 145px;
            height: 22px;
        }
        .auto-style13 {
            width: 44px;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
     <h2 class="font-light m-b-xs">
        Seguridad - Actualizar Usuarios
    </h2>
    <small>Actualizacion de usuarios.</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style1" colspan="2">
                <label class="control-label" style="width: 271px">
                Actualizacion de Cuentas de Usuario</label></td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <label class="control-label" style="width: 158px">
                Cuentas</label></td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlCuentas" runat="server" Height="31px" Width="216px">
                </asp:DropDownList>
            </td>
            <td class="auto-style3">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/Imagenes/Button-Refresh.png" OnClick="ImageButton1_Click" Width="20px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="rfvCuenta" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Verifique Cuenta" ValidationGroup="Actualizar"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <label class="control-label" style="width: 145px">
            Nombre de la cuenta</label></td>
            <td class="auto-style4">
                <asp:TextBox ID="txtDescripcion" runat="server" Height="30px" Width="216px"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="rfvContrasena" runat="server" ControlToValidate="txtContrasenna" ErrorMessage="Verifique Contraseña" ValidationGroup="Actualizar"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <label class="control-label" style="width: 145px">
            Contraseña</label></td>
            <td class="auto-style4">
                <asp:TextBox ID="txtContrasenna" runat="server" Height="30px" Width="216px"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <label class="control-label" style="width: 145px">
            Estado</label></td>
            <td class="auto-style12">
                <asp:DropDownList ID="ddlEstado" runat="server" Height="26px" Width="216px">
                    <asp:ListItem Selected="True" Value="1">Activo</asp:ListItem>
                    <asp:ListItem Value="0">Inactivo</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <label class="control-label" style="width: 145px">
            Perfil</label></td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlRoles" runat="server" Height="30px" Width="216px">
                </asp:DropDownList>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="lblEstado" runat="server"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button CssClass="btn btn-success btn-block" ID="btnActualizarUsuario" Text="Actualizar Usuario" runat="server" OnClick="btnActualizarUsuario_Click" Width="216px" ValidationGroup="Actualizar"></asp:Button>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="lblActualizacionUsuario" runat="server"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
