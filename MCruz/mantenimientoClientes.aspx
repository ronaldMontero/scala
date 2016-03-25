<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="mantenimientoClientes.aspx.cs" Inherits="MCruz.mantenimientoClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phDatosUsuario" runat="server">
    <a href="dasboard.aspx"><img src="imgs/user.png" class="img-circle m-b" alt="Usuario" width="76"/></a>
    <p class="userName">Nombre Apellido </p>
    <p>Administrador</p>    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">
        Clientes
    </h2>
    <small>Mantenimiento de Clientes. Creación actualización y eliminación de clientes y sus perfiles.</small>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phContenido" runat="server">
    <div class="col-lg-12">
        <div class="hpanel">
            <div class="panel-heading">
                Clientes Existentes
            </div>
            <div class="panel-body" style="display: block;">
                <!-- Tabla de Clientes Existentes -->
                <div class="table-responsive">
                    <table cellpadding="1" cellspacing="1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th class="sorting_asc" tabindex="0" rowspan="1" colspan="1" aria-label="Name: activate to sort column descending" style="width: 107px;" aria-sort="ascending">Cliente</th>
                            <th>Cédula</th>
                            <th>Email</th>
                            <th>Teléfono</th>
                            <th>Tipo de Cliente</th>
                            <th>Categoría</th>
                        </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="listadoClientes" runat="server">
                                <ItemTemplate>
                                <tr>
                                    <td><%# Eval("Nombre_Cliente").ToString() %></td>
                                    <td><%# Eval("Cedula").ToString() %></td>
                                    <td><%# Eval("Email").ToString() %></td>
                                    <td><%# Eval("Telefono").ToString() %></td>
                                    <td><%# Eval("Tipo_Cliente").ToString() %></td>
                                    <td><%# Eval("Categoria_Cliente").ToString() %></td>
                                </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="panel-heading">
                Formulario de inclusión
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
