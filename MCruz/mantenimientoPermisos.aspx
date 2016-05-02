<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="mantenimientoPermisos.aspx.cs" Inherits="MCruz.mantenimientoPermisos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">
        Seguridad
    </h2>
    <small>Mantenimiento de Permisos. Creación actualización y eliminación de Roles y sus permisos.</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <div class="col-lg-6">
        <div class="hpanel">
            <div class="panel-heading">
                Mantenimiento de Roles
            </div>
            <div class="panel-body" style="display: block;">
                <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Verifique el ROL." ValidationGroup="CrearRol"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                                        <label class="control-label" style="width: 145px">Descripcion del Rol</label></td>
                        <td>
                            <asp:TextBox ID="txtDescripcion" runat="server" Height="30px" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblCreacionRol" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                                        <label class="control-label" style="width: 145px">Seleccione el Rol</label></td>
                        <td>
                            <asp:DropDownList ID="ddlRoles1" runat="server" Height="31px" Width="150px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblRolEliminado" runat="server"></asp:Label>
                        </td>
                        <td">
                            <asp:Label ID="lblEliminarRol" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                                        <label class="control-label" style="width: 145px">Seleccione el Rol</label>
                        </td>
                        <td rowspan="2">
                            <asp:DropDownList ID="ddlRoles2" runat="server" Height="30px" Width="150px">
                            </asp:DropDownList>
                            <br />
                            <asp:RequiredFieldValidator ID="rfv2Rol" runat="server" ControlToValidate="txtNuevaDescripcion" ErrorMessage="Verifique el ROL." ValidationGroup="ActualizarRol"></asp:RequiredFieldValidator>
                            <br />
                            <asp:TextBox ID="txtNuevaDescripcion" runat="server" Height="30px" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="control-label" style="width: 145px">
                            Nueva Descripcion<br />
                            </label></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblActualizarRol" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                       <td colspan="2">
                        <asp:Button CssClass="btn btn-success" ID="btnCrearRol" Text="Crear Rol" runat="server" OnClick="btnCrearRol_Click" ValidationGroup="CrearRol"></asp:Button>
                        <asp:Button CssClass="btn btn-danger" ID="btnEliminarRol" Text="Eliminar Rol" runat="server" OnClick="btnEliminarRol_Click" CausesValidation="False"></asp:Button>
                        <asp:Button CssClass="btn btn-warning" ID="btnActualizarRol" Text="Actualizar Rol" runat="server" OnClick="btnActualizarRol_Click" ValidationGroup="ActualizarRol"></asp:Button>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
</div>
<div class="col-lg-6">
    <div class="hpanel">
        <div class="panel-heading">
            Mantenimiento de Permisos
        </div>
        <div class="panel-body" style="display: block;">
            <table>
                <tr>
                    <td class="text-left" colspan="3">
                                    <label class="control-label" style="width: 197px">Mantenimiento de Permisos</label></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                                    <label class="control-label" style="width: 145px">Seleccione el Rol</label></td>
                    <td>
                        <asp:DropDownList ID="ddlRoles3" runat="server" Height="31px" Width="150px">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                                    <label class="control-label" style="width: 162px">Seleccione el Permiso</label></td>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlPermiso" runat="server" Height="31px" Width="323px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                                <asp:Button CssClass="btn btn-primary" ID="btnAsignarPermiso" Text="Asignar Permiso" runat="server" OnClick="btnAsignarPermiso_Click" Width="150px"></asp:Button>
                            </td>
                    <td>
                                <asp:Button CssClass="btn btn-danger" ID="btnEliminarPermiso" Text="Eliminar Permiso" runat="server" OnClick="btnEliminarPermiso_Click" Width="150px"></asp:Button>
                            </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblAsignacionPermiso" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblElminarPermiso" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</div>
<div class="col-lg-12">
    <div class="hpanel">
        <div class="panel-heading">
            Consulta de Permisos
        </div>
        <div class="panel-body" style="display: block;">
            <table class="table-striped">
                <tr>
                    <td>
                                    <label class="control-label" style="width: 162px">Seleccione el Usuario</label></td>
                    <td>
                        <asp:DropDownList ID="ddlUsuario" runat="server" Height="31px" Width="150px">
                        </asp:DropDownList>
                    </td>
                    <td>
                                <asp:Button CssClass="btn btn-primary" ID="btnConsultaPermisos" Text="Consulta Permisos" runat="server" OnClick="btnConsultaPermisos_Click" Width="150px"></asp:Button>
                            </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                                    <label class="control-label" style="width: 162px">Rol del Usuario</label></td>
                    <td>
                        <asp:TextBox ID="txtRolAsignado" runat="server" Height="30px" Width="150px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView CssClass="table table-striped col-lg-11"  ID="gvPermisos" runat="server" GridLines="None">
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            </div>
        </div>
</div>
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
