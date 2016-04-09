<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="mantenimientoContactos.aspx.cs" Inherits="MCruz.mantenimientoContactos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">
        Clientes
    </h2>
    <small>Mantenimiento de Contactos. Creación actualización y eliminación de contactos de clientes.</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <div class="col-lg-6">
        <h3>Formulario de mantenimiento</h3>
<div class="hpanel">
            <div class="panel-heading">
                <div class="panel-tools">
                    <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                    <a class="closebox"><i class="fa fa-times"></i></a>
                </div>
                Cliente Asociado
            </div>
            <div class="panel-body" style="display: block;">
               <div class="form-horizontal">
                   <div class="form-group">
                       <label class="col-sm-2 control-label">Cliente asociado:</label>
                       <div class="col-sm-4">
                           <asp:TextBox ID="txtBuscaCliente" runat="server" CssClass="form-control"></asp:TextBox>
                       </div>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnCancelarBusqueda" runat="server" CssClass="btn btn-default" Text="Cancelar" />
                        <asp:Button ID="btnBuscaCliente" runat="server" CssClass="btn btn-primary" Text="Buscar" OnClick="btnBuscaCliente_Click" />
                   </div>
                   <div class="hr-line-dashed"></div>
                </div>
                <div class="form-group">
                    <div class="table-responsive">
                        <table cellpadding="1" cellspacing="1" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th class="col-lg-1">Asociar</th>
                                <th class="col-lg-11">Nombre</th>
                            </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="listadoClientes" OnItemCommand="listadoClientes_ItemCommand" runat="server">
                                    <ItemTemplate>
                                    <tr>
                                        <td><asp:LinkButton CssClass="btn btn-success" ID="btnAsociar_ItemCommand" CommandName="Asociar" CommandArgument='<%#Eval("ID_Empresa") %>' runat="server" Text="Asociar"></asp:LinkButton></td>
                                        <td><asp:Label ID="lblNombreCliente" runat="server"></asp:Label><%# Eval("Nombre_Cliente").ToString() %></td>
                                    </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                        <asp:HiddenField ID="hdID_Cliente" Value="" runat="server" />
                    </div>
                </div>
            </div>
        </div>
        <div class="hpanel">
            <div class="panel-heading">
                <div class="panel-tools">
                    <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                    <a class="closebox"><i class="fa fa-times"></i></a>
                </div>
                Datos personales
            </div>
            <div class="panel-body" style="display: block;">
               <div class="form-horizontal">
                    <div class="form-group ">
                        <label class="col-sm-2 control-label">Cédula</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCedula" ErrorMessage="Cédula con formato incorrecto" ValidationGroup="asignarPersonasContacto" ValidationExpression="(\d{1})([-]?)(\d{4})([-]?)(\d{4})" CssClass="alert-danger"></asp:RegularExpressionValidator>
                        </div>
                        <label class="col-sm-2 control-label">Nombre</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Nombre es un campo Requerido" Text=" " ControlToValidate="txtNombre" ValidationGroup="asignarPersonasContacto" CssClass="alert-danger"> </asp:RequiredFieldValidator>
                        </div>
                   </div>
                   
                   <div class="form-group">
                        <label class="col-sm-2 control-label">Primer Apellido</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtApellido1" runat="server" CssClass="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Apellido es un campo Requerido" Text=" " ControlToValidate="txtApellido1" ValidationGroup="asignarPersonasContacto" CssClass="alert-danger"> </asp:RequiredFieldValidator>
                        </div>
                        <label class="col-sm-2 control-label">Segundo Apellido</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtApellido2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                   </div>
                </div>
            </div>
        </div>
        <div class="hpanel">
            <div class="panel-heading">
                <div class="panel-tools">
                    <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                    <a class="closebox"><i class="fa fa-times"></i></a>
                </div>
                Telefonos
            </div>
            <div class="panel-body" style="display: block;">
                   <div class="form-group">
                        <label class="col-sm-3 control-label">Teléfono #1</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtTelefono1" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTelefono1" ErrorMessage="Formato incorrecto (###)####-####" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))? \d{4}-\d{4}" ValidationGroup="asignarPersonasContacto"> </asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Teléfono #2</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtTelefono2" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTelefono2" ErrorMessage="Formato incorrecto (###)####-####" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))? \d{4}-\d{4}" ValidationGroup="asignarPersonasContacto"> </asp:RegularExpressionValidator>
                        </div>
                    </div>
                   <div class="form-group">
                        <label class="col-sm-3 control-label">Teléfono #3</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtTelefono3" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtTelefono3" ErrorMessage="Formato incorrecto (###)####-####" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))? \d{4}-\d{4}" ValidationGroup="asignarPersonasContacto"> </asp:RegularExpressionValidator>
                        </div>
                   </div>
            </div>
        </div>
        <div class="hpanel">
            <div class="panel-heading">
                <div class="panel-tools">
                    <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                    <a class="closebox"><i class="fa fa-times"></i></a>
                </div>
                Correos Electronicos
            </div>

            <div class="panel-body" style="display: block;">
                <div class="form-group">
                    <label class="col-sm-3 control-label">Email #1</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtEmail1" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtEmail1" ErrorMessage="Email con Formato Incorrecto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="asignarPersonasContacto" CssClass="alert-danger"> </asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Email #2</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtEmail2" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtEmail2" ErrorMessage="Email con Formato Incorrecto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="asignarPersonasContacto" CssClass="alert-danger"> </asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>
        </div>
        <div class="hpanel">
            <div class="panel-heading">
                <div class="panel-tools">
                    <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                    <a class="closebox"><i class="fa fa-times"></i></a>
                </div>
                Direcciones
            </div>   
            <div class="panel-body" style="display: block;">
               <div class="form-horizontal">
                   <div class="form-group col-sm-6">
                        <label class="col-sm-12">Dirección #1</label>
                        <div class="col-sm-12">
                            <asp:TextBox ID="txtDireccion1" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                        </div>
                    </div>
                   <div class="form-group col-sm-6">
                        <label class="col-sm-12">Dirección #2</label>
                        <div class="col-sm-12">
                            <asp:TextBox ID="txtDireccion2" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                        </div>
                   </div>
                </div>
            </div>
        </div>
        
        <div class="panel-body">
            <asp:Button ID="btnCancelarGeneral" CssClass="btn btn-default" Text="Cancelar" ValidationGroup="asignarPersonasContacto" runat="server" />
            <asp:Button ID="btnGuardar" CssClass="btn btn-primary" Text="Guardar" ValidationGroup="asignarPersonasContacto" runat="server" OnClick="btnGuardar_Click" />
            <asp:Button ID="btnActualizar" CssClass="btn btn-primary" Text="Actualizar" ValidationGroup="asignarPersonasContacto" runat="server" />
        </div>
    </div>
    <div class="col-lg-6">
        <h3>Contactos para Editar o Borrar</h3>
        <div class="hpanel">
            <div class="panel-heading">
                Contactos Existentes
            </div>
            <div class="panel-body" style="display: block;">
                <div class="form-group">
                    <label class="col-sm-4 control-label">Nombre de Contacto:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtNombreContacto" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnBuscaContactoCancelar" runat="server" CssClass="btn btn-default" Text="Cancelar" />
                    <asp:Button ID="btnBuscaContactoBuscar" runat="server" CssClass="btn btn-primary" Text="Buscar" />
                </div>  
                <div class="hr-line-dashed"></div>              
                <div class="form-group">
                    <div class="col-sm-12">
                        <div class="table-responsive">
                        <table cellpadding="1" cellspacing="1" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>Nombre Contacto</th>
                                <th>Empresa</th>
                                <th colspan="2">Acciones</th>
                            </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="listarContactos" runat="server">
                                    <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("Nombre") %> <%#Eval("Apellido1") %></td>
                                        <td><%#Eval("Empresa") %></td>
                                        <td class="text-center"><asp:LinkButton CssClass="btn btn-success" ID="btnEditar_ItemCommand" CommandName="Editar" CommandArgument='<%#Eval("ID_Persona") %>' runat="server" Text="Editar"></asp:LinkButton></td>
                                        <td class="text-center"><asp:LinkButton CssClass="btn btn-danger" ID="btnBorrar_ItemCommand" CommandName="Borrar" CommandArgument='<%#Eval("ID_Persona") %>' runat="server" Text="Eliminar" OnClientClick='javascript:return confirm("Está seguro que desea borrar este contacto?")' ></asp:LinkButton></td>
                                    </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                    </div>
                </div>    
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
