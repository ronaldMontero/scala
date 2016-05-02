<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="mantenimientoColaboradores.aspx.cs" Inherits="MCruz.mantenimientoColaboradores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">
        Colaboradores
    </h2>
    <small>Mantenimiento de Colaboradores. Personal de la compañía que tiene inherencia directa o no con el sistema o con los proyectos desarrollados por la compañía.</small>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phContenido" runat="server">
<div class="col-lg-6">
        <div class="hpanel">
            <div class="panel-heading">
                <div class="panel-tools">
                    <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                    
                </div>
                Datos personales
            </div>
            <div class="panel-body" style="display: block;">
               <div class="form-horizontal">
                    <div class="form-group ">
                        <label class="col-sm-2 control-label">Cédula</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control" ></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCedula" ErrorMessage="Cédula con formato incorrecto"  ValidationExpression="(\d{1})([-]?)(\d{4})([-]?)(\d{4})" CssClass="alert-danger" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                        <label class="col-sm-2 control-label">Nombre</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Nombre es un campo Requerido" Text=" " ControlToValidate="txtNombre"  CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                   </div>
                   
                   <div class="form-group">
                        <label class="col-sm-2 control-label">Primer Apellido</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtApellido1" runat="server" CssClass="form-control" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Apellido es un campo Requerido" Text=" " ControlToValidate="txtApellido1"  CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <label class="col-sm-2 control-label">Segundo Apellido</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtApellido2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                   </div>
                   <asp:HiddenField ID="hdID_Persona" Value="" runat="server" />
                </div>
            </div>
        </div>
        <div class="hpanel">
            <div class="panel-heading">
                <div class="panel-tools">
                    <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                    
                </div>
                Teléfonos
            </div>
            <div class="panel-body" style="display: block;">
                   <div class="form-group">
                        <label class="col-sm-3 control-label">Teléfono #1</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtTelefono1" runat="server" CssClass="form-control" ></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTelefono1" ErrorMessage="Formato incorrecto (###)####-####" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))? \d{4}-\d{4}" Display="Dynamic" ></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Teléfono #2</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtTelefono2" runat="server" CssClass="form-control" ></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTelefono2" ErrorMessage="Formato incorrecto (###)####-####" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))? \d{4}-\d{4}" Display="Dynamic" ></asp:RegularExpressionValidator>
                        </div>
                    </div>
                   <div class="form-group">
                        <label class="col-sm-3 control-label">Teléfono #3</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtTelefono3" runat="server" CssClass="form-control" ></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtTelefono3" ErrorMessage="Formato incorrecto (###)####-####" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))? \d{4}-\d{4}" Display="Dynamic" ></asp:RegularExpressionValidator>
                        </div>
                   </div>
            </div>
        </div> 
</div>
<div class="col-lg-6">
        <div class="hpanel">
            <div class="panel-heading">
                <div class="panel-tools">
                    <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                    
                </div>
                Datos laborales
            </div>
            <div class="panel-body" style="display: block;">
               <div class="form-horizontal">
                    <div class="form-group ">
                        <label class="col-sm-2 control-label">Tipo de empleado</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtTipoEmpleado" runat="server" CssClass="form-control" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Tipo de Empleado es un campo Requerido" Text=" " ControlToValidate="txtTipoEmpleado"  CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <label class="col-sm-2 control-label">Puesto</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtPuesto" runat="server" CssClass="form-control" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Puesto es un campo Requerido" Text=" " ControlToValidate="txtPuesto"  CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                   <div class="form-group">
                        <label class="col-sm-2 control-label">Fecha de ingreso:</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtFec" runat="server" CssClass="form-control" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Nombre es un campo Requerido" Text=" " ControlToValidate="txtPuesto"  CssClass="alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <label class="col-sm-2 control-label">Estado</label>
                        <div class="col-sm-4">
                            <asp:DropDownList CssClass="form-control" ID="drpEstado" runat="server">
                                <asp:ListItem Text="Seleccione"></asp:ListItem>
                                <asp:ListItem Text="Inactivo" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Activo" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Incapacitado" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Sancionado" Value="3"></asp:ListItem>
                                <asp:ListItem Text="Preaviso" Value="4"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                   </div>
            </div>
        </div>
    </div>
        <div class="hpanel">
            <div class="panel-heading">
                <div class="panel-tools">
                    <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                    
                </div>
                Correos Electronicos
            </div>

            <div class="panel-body" style="display: block;">
                <div class="form-group">
                    <label class="col-sm-3 control-label">Email #1</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtEmail1" runat="server" CssClass="form-control" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtEmail1" ErrorMessage="Email con Formato Incorrecto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  CssClass="alert-danger" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Email #2</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtEmail2" runat="server" CssClass="form-control" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtEmail2" ErrorMessage="Email con Formato Incorrecto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  CssClass="alert-danger" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>
        </div>
</div>
<div class="col-lg-12">
    <div class="hpanel">
        <div class="panel-heading">
            <div class="panel-tools">
                <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                    
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
</div>
<div class="col-lg-12">
    <div class="panel-body">
        <asp:Button ID="btnCancelarGeneral" CssClass="btn btn-danger" Text="Cancelar"  runat="server" />
        <asp:Button ID="btnGuardar" CssClass="btn btn-success" Text="Guardar"  runat="server" />
        <asp:Button ID="btnActualizar" CssClass="btn btn-primary" Text="Actualizar"  runat="server" />
    </div>
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
