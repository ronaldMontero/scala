<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormPruebaConeccion.aspx.cs" Inherits="MCruz.WebFormPruebaConeccion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            width: 370px;
        }
        .auto-style3 {
            height: 26px;
            width: 370px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table style="width:100%;">
            <tr>
                <td>Cedula</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCed" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Nombre</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Apellido</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtSurName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Email</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Estado</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtEstado" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style1">Rol</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtRol" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:Button ID="btnRegistrar" runat="server" OnClick="btnRegistrar_Click" Text="Registrar Usuario" />
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cedula" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Cedula" HeaderText="Cedula" ReadOnly="True" SortExpression="Cedula" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                <asp:BoundField DataField="Rol" HeaderText="Rol" SortExpression="Rol" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=HIVECLUSTER;Initial Catalog=MCruzDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Usuario]"></asp:SqlDataSource>
        <br />
        <br />
    </form>
</body>
</html>
