<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="mantenimientoPermisos.aspx.cs" Inherits="MCruz.mantenimientoPermisos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 0px;
        }
        .auto-style2 {
            width: 208px;
        }
        .auto-style3 {
            width: 171px;
        }
        .auto-style4 {
            width: 208px;
            height: 20px;
        }
        .auto-style5 {
            width: 171px;
            height: 20px;
        }
        .auto-style6 {
            height: 20px;
        }
        .auto-style7 {
            width: 208px;
            height: 71px;
        }
        .auto-style8 {
            width: 171px;
            height: 71px;
        }
        .auto-style9 {
            height: 71px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phDatosUsuario" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">
        Seguridad
    </h2>
    <small>Mantenimiento de Permisos. Creación actualización y eliminación de Roles y sus permisos.</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="text-left" colspan="3">
                            <label class="control-label" style="width: 186px">Mantenimiento de ROLES</label></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                            <label class="control-label" style="width: 145px">Descripcion del Rol</label></td>
            <td class="auto-style3">
                <asp:TextBox ID="txtDescripcion" runat="server" Height="30px" Width="150px"></asp:TextBox>
            </td>
            <td>
                        <asp:Button CssClass="btn btn-success btn-block" ID="btnCrearRol" Text="Crear Rol" runat="server" OnClick="btnCrearRol_Click" Width="150px"></asp:Button>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Label ID="lblCreacionRol" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                            <label class="control-label" style="width: 145px">Seleccione el Rol</label></td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddlRoles1" runat="server" Height="31px" Width="150px">
                </asp:DropDownList>
            </td>
            <td>
                        <asp:Button CssClass="btn btn-success btn-block" ID="btnEliminarRol" Text="Eliminar Rol" runat="server" OnClick="btnEliminarRol_Click" Width="150px"></asp:Button>
                    </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style6">
                <asp:Label ID="lblRolEliminado" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                            <label class="control-label" style="width: 145px">Seleccione el Rol<br />
                <br />
                Nueva Descripcion<br />
                </label>
            </td>
            <td class="auto-style8">
                <asp:DropDownList ID="ddlRoles2" runat="server" Height="30px" Width="150px">
                </asp:DropDownList>
                <br />
                <br />
                <asp:TextBox ID="txtNuevaDescripcion" runat="server" Height="30px" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style9">
                        <asp:Button CssClass="btn btn-success btn-block" ID="btnActualizarRol" Text="Actualizar Rol" runat="server" OnClick="btnActualizarRol_Click" Height="73px" Width="150px"></asp:Button>
                    </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Label ID="lblRolActualizado" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left" colspan="3">
                            <label class="control-label" style="width: 197px">Mantenimiento de Permisos</label></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                            <label class="control-label" style="width: 145px">Seleccione el Rol</label></td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddlRoles3" runat="server" Height="31px" Width="150px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                            <label class="control-label" style="width: 162px">Seleccione el Permiso</label></td>
            <td colspan="2">
                <asp:DropDownList ID="ddlPermiso" runat="server" Height="31px" Width="323px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                        <asp:Button CssClass="btn btn-success btn-block" ID="btnAsignarPermiso" Text="Asignar Permiso" runat="server" OnClick="btnAsignarPermiso_Click" Width="150px"></asp:Button>
                    </td>
            <td>
                        <asp:Button CssClass="btn btn-success btn-block" ID="btnEliminarPermiso" Text="Eliminar Permiso" runat="server" OnClick="btnEliminarPermiso_Click" Width="150px"></asp:Button>
                    </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="lblAsignacionPermiso" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblElminarPermiso" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <label class="control-label" style="width: 197px">Consulta de Permisos</label></td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                            <label class="control-label" style="width: 162px">Seleccione el Usuario</label></td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddlUsuario" runat="server" Height="31px" Width="150px">
                </asp:DropDownList>
            </td>
            <td>
                        <asp:Button CssClass="btn btn-success btn-block" ID="btnConsultaPermisos" Text="Consulta Permisos" runat="server" OnClick="btnConsultaPermisos_Click" Width="150px"></asp:Button>
                    </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                            <label class="control-label" style="width: 162px">Rol del Usuario</label></td>
            <td class="auto-style3">
                <asp:TextBox ID="txtRolAsignado" runat="server" Height="30px" Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView CssClass="table table-striped"  ID="gvPermisos" runat="server" Width="518px" GridLines="None">
                </asp:GridView>
            </td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
