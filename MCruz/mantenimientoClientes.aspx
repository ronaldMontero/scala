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
                            <th class="sorting_asc" tabindex="0" rowspan="1" colspan="1" aria-label="Name: activate to sort column descending" style="width: 107px;" aria-sort="ascending">ID</th>
                            <th>Cliente</th>
                            <th>Cédula</th>
                            <th>Email</th>
                            <th>Teléfono</th>
                            <th>Tipo de Cliente</th>
                            <th>Categoría</th>
                            <th class="text-center" colspan="2">Acciones</th>
                        </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="listadoClientes" OnItemCommand="listadoClientes_ItemCommand" runat="server">
                                <ItemTemplate>
                                <tr>
                                    <td><%# Eval("ID_Empresa").ToString() %></td>
                                    <td><%# Eval("Nombre_Cliente").ToString() %></td>
                                    <td><%# Eval("Cedula").ToString() %></td>
                                    <td><%# Eval("Email").ToString() %></td>
                                    <td><%# Eval("Telefono").ToString() %></td>
                                    <td><%# Eval("Tipo_Cliente").ToString() %></td>
                                    <td><%# Eval("Categoria_Cliente").ToString() %></td>
                                    <td class="text-center"><asp:LinkButton CssClass="btn btn-success" ID="btnEditar_ItemCommand" CommandName="Editar" CommandArgument='<%#Eval("ID_Empresa") %>' runat="server" Text="Editar"></asp:LinkButton></td>
                                    <td class="text-center"><asp:LinkButton CssClass="btn btn-danger" ID="btnBorrar_ItemCommand" CommandName="Borrar" CommandArgument='<%#Eval("ID_Empresa") %>' runat="server" Text="Eliminar" OnClientClick='javascript:return confirm("Está seguro que desea borrar esta compañía?")' ></asp:LinkButton></td>
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
            <div class="panel-body">
                <div class="form-horizontal">
                    <asp:Label ID="lblResultadoIngreso" runat="server" CssClass="bg-primary"></asp:Label><asp:Label ID="lblClienteManipulado" runat="server" CssClass="bg-primary"></asp:Label>
                    <br />
                </div>
                <div class="form-horizontal">
                    <div class="form-group ">
                        <label class="col-sm-2 control-label">Cedula</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCedula" ErrorMessage="Campo Cédula es requerido" ValidationGroup="crearActualizarValidador" CssClass="alert-danger"> </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCedula" ErrorMessage="Cédula con formato incorrecto" ValidationGroup="crearActualizarValidador" ValidationExpression="(\d{1})([-]?)(\d{5})([-]?)(\d{5})" CssClass="alert-danger"></asp:RegularExpressionValidator>
                        </div>
                        <label class="col-sm-2 control-label">Nombre</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtNombreCliente" runat="server" CssClass="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Nombre es un campo Requerido" Text=" " ControlToValidate="txtNombreCliente" ValidationGroup="crearActualizarValidador" CssClass="alert-danger"> </asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtEmailCliente" runat="server" CssClass="form-control"></asp:TextBox>
                            <small>email@email.com</small>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmailCliente" ErrorMessage="Email es un campo requerido" ValidationGroup="crearActualizarValidador" CssClass="alert-danger"> </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmailCliente" ErrorMessage="Email con Formato Incorrecto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="crearActualizarValidador" CssClass="alert-danger"> </asp:RegularExpressionValidator>
                            
                        </div>
                        <label class="col-sm-2 control-label">Teléfono</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtTelefonoCliente" runat="server" CssClass="form-control"></asp:TextBox>
                            <small>88445511</small>
                        </div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Tipo de Cliente</label>
                        <div class="col-sm-4">
                            <asp:DropDownList CssClass="form-control" ID="drpTipoCliente" runat="server" ToolTip="Seleccione la categoría de cliente">
                                <asp:ListItem Enabled="True" selected="True" Text="Seleccione ..."></asp:ListItem>
                                <asp:ListItem Enabled="True" selected="False" Text="Gubernamental" Value="1"></asp:ListItem>
                                <asp:ListItem Enabled="True" selected="false" Text="Comercial" Value="2"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="drpTipoCliente" ErrorMessage="Tipo de Cliente es Requerido" ValidationGroup="crearActualizarValidador" CssClass="alert-danger"> </asp:RequiredFieldValidator>
                        </div>
                        <label class="col-sm-2 control-label">Categoría</label>
                        <div class="col-sm-4">
                            <asp:DropDownList CssClass="form-control" ID="drpCategoriaCliente" runat="server" ToolTip="Seleccione el tipo de cliente">
                                <asp:ListItem Enabled="True" selected="True" Text="Seleccione ..."></asp:ListItem>
                                <asp:ListItem Enabled="True" selected="false" Text="A" Value="A"></asp:ListItem>
                                <asp:ListItem Enabled="True" selected="false" Text="B" Value="B"></asp:ListItem>
                                <asp:ListItem Enabled="True" selected="false" Text="C" Value="C"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="drpCategoriaCliente" ErrorMessage="Categoría es un campo requerido" ValidationGroup="crearActualizarValidador" CssClass="alert-danger"> </asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Extracto</label> 
                        <div class="col-sm-10">
                            <asp:TextBox CssClass="form-control" ID="txtExtracto" TextMode="MultiLine" Rows="5" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-8 col-sm-offset-2">
                            <asp:Button ID="btnCancelar" CssClass="btn btn-default" Text="Cancelar" runat="server" OnClick="btnCancelar_Click" />
                            <asp:Button ID="btnGuargar" CssClass="btn btn-primary" Text="Guardar" ValidationGroup="crearActualizarValidador" runat="server" OnClick="btnGuargar_Click" />
                            <asp:Button ID="btnActualizar" CssClass="btn btn-primary" Text="Actualizar" ValidationGroup="crearActualizarValidador" runat="server" OnClick="btnActualizar_Click" />
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
