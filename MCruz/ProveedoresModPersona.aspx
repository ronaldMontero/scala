<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresModPersona.aspx.cs" Inherits="MCruz.ProveedoresModPersona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phDatosUsuario" runat="server">
    <a href="dasboard.aspx">
        <img src="imgs/user.png" class="img-circle m-b" alt="Usuario" width="76" /></a>
    <p class="userName">Nombre Apellido </p>
    <p>Administrador</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">Personas Proveedores</h2>
    <small>Administracion De Personas Para Proveedores</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <div class="content animate-panel">
        <div class="row">
            <div class="col-md-3">
                <div class="hpanel">
                    <div class="panel-body">
                        <div class="m-b-md">
                            <h4>Modificar Datos de Proveedor 
                            </h4>
                            <small>Permite Modificar El Proveedor De Una Persona Existente
                            </small>
                            <div class="form-group">
                                <label class="control-label">Cedula:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Cedula" ID="txtCedula" runat="server" MaxLength="9"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtCedula" ErrorMessage="Debe ingresar solo numeros" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="1"></asp:CompareValidator>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCedula" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnModBuscarPersona" Text="Buscar Persona" runat="server" OnClick="btnModBuscarPersona_Click" ValidationGroup="1"></asp:Button>
                            <br />
                            <br />


                            <div class="form-group">
                                <label class="control-label">Nombre:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Nombre" ID="txtNombre" runat="server" MaxLength="200"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombre" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Primer Apellido:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Primer Apellido" ID="txtApellido1" runat="server" MaxLength="200"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtApellido1" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Segundo Apellido:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Segundo Apellido" ID="txtApellido2" runat="server" MaxLength="200"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtApellido2" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Primer Email:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Primer Email" ID="txtPrimerEmail" runat="server" MaxLength="50" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPrimerEmail" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Segundo Email:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Segundo Email" ID="txtSegundoEmail" runat="server" MaxLength="50" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Primer Telefono:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Primer Telefono de Contacto" ID="txtPrimerTelefono" runat="server" MaxLength="50"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPrimerTelefono" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Segundo Telefono:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Segundo Telefono de Contacto" ID="txtSegundoTelefono" runat="server" MaxLength="50"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Tercer Telefono:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Tercer Telefono de Contacto" ID="txtTercerTelefono" runat="server" MaxLength="50"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Primera Direccion:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Primer Direccion" ID="txtPrimerDireccion" runat="server" MaxLength="300"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPrimerDireccion" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Segunda Direccion:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Segunda Direccion" ID="txtSegundaDireccion" runat="server" MaxLength="300"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Puesto del Proveedor:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Puesto del Proveedor" ID="txtPuestoProveedor" runat="server" MaxLength="100"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPuestoProveedor" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nombre de Empresa de Proveedor:</label>
                                <div class="input-group">
                                    <asp:DropDownList CssClass="form-control m-b" ID="drpModNombreProveedor" runat="server" ToolTip="Seleccione el nombre del proveedor" DataSourceID="SqlDataSource1" DataTextField="nombre_cliente" DataValueField="ID_Empresa">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MCruzDBConnectionString %>" SelectCommand="sp_ListarEmpresasIngFactura" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>



                        <asp:Button CssClass="btn btn-success btn-block" ID="btnModificarProveedor" Text="Modificar Datos de Proveedor" runat="server" OnClick="btnModPersonaProveedor_Click" ValidationGroup="2"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
