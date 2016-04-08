<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresNuevoProducto.aspx.cs" Inherits="MCruz.ProveedoresNuevoProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            display: block;
            width: 100%;
            height: 34px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            left: 0px;
            top: -120px;
            border: 1px solid #ccc;
            padding: 6px 12px;
            background-color: #fff;
            background-image: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phDatosUsuario" runat="server">
    <a href="WFProveedores/dasboard.aspx">
        <img src="imgs/user.png" class="img-circle m-b" alt="Usuario" width="76" /></a>
    <p class="userName">Nombre Apellido </p>
    <p>Administrador</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">Productos Proveedores</h2>
    <small>Agregar Nuevo Producto</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <div class="content animate-panel">
        <div class="row">
            <div class="col-md-3">
                <div class="hpanel">
                    <div class="panel-body">
                        <div class="m-b-md">
                            <h4>Agregar Nuevo Producto
                            </h4>
                            <small>Permite Agregar un Nuevo Producto
                            </small>
                            <div class="form-group">
                                <label class="control-label">Nombre del Producto:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Nombre del Producto" ID="txtNombreProducto" runat="server" MaxLength="200"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombreProducto" ErrorMessage="Campo Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Descripcion del Producto:</label>
                                <div class="input-group text">
                                    <asp:TextBox CssClass="form-control" ToolTip="Descripcion del Producto" ID="txtDescripcionProducto" runat="server" MaxLength="200" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescripcionProducto" ErrorMessage="Campo Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Cantidad de Producto:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Cantidad de Producto" ID="txtCantidadProducto" runat="server" MaxLength="9"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCantidadProducto" ErrorMessage="Campo Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtCantidadProducto" ErrorMessage="Debe ingresar solo numeros" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Fecha de Recibido:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="auto-style1" ToolTip="Fecha de entrega" ID="txtFechaEntrega" runat="server" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFechaEntrega" ErrorMessage="Campo Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Fecha de Caducidad:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Fecha de Caducidad" ID="txtFechaCaducidad" runat="server" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFechaCaducidad" ErrorMessage="Campo Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Empresa:</label>
                            <div class="input-group">
                                <asp:DropDownList CssClass="form-control m-b" ID="drpEmpresa" runat="server" ToolTip="Seleccione la empresa a la que pertenece este producto" DataSourceID="SqlDataSource1" DataTextField="nombre_cliente" DataValueField="ID_Empresa">
                                   
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MCruzDBConnectionString %>" SelectCommand="sp_ListarEmpresasIngFactura" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </div>
                        </div>
                        <asp:Button CssClass="btn btn-success btn-block" ID="btnIngresarNuevoProducto" Text="Agregar Producto" runat="server" OnClick="btnAgregarNuevoProducto_Click"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
