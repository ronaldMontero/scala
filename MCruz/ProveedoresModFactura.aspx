<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresModFactura.aspx.cs" Inherits="MCruz.ProveedoresModFactura" %>

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
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">Facturacion</h2>
    <small>Administracion De Facturas</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <div class="content animate-panel">
        <div class="row">
            <div class="col-md-3">
                <div class="hpanel">
                    <div class="panel-body">
                        <div class="m-b-md">
                            <h4>Modificar Factura 
                            </h4>
                            <small>Permite Modificar Una Factura Existente
                            </small>
                            <div class="form-group">
                                <label class="control-label">Numero de Factura:</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ToolTip="Numero de Factura" ID="txtNumeroFactura" runat="server" MaxLength="9"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtNumeroFactura" ErrorMessage="Debe ingresar solo numeros" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNumeroFactura" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnBuscarFactura" Text="Buscar Factura" runat="server" OnClick="btnBuscarFactura_Click" ValidationGroup="1"></asp:Button>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="control-label">Nombre de Cliente:</label>
                                <div class="input-group">
                                    <asp:DropDownList CssClass="form-control m-b" ID="drpNombreProveedor" runat="server" ToolTip="Seleccione el nombre del proveedor" OnSelectedIndexChanged="drpNombreProveedor_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="nombre_cliente" DataValueField="ID_Empresa" Enabled="False">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MCruzDBConnectionString %>" SelectCommand="sp_ListarEmpresasIngFactura" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </div>
                            </div>

                        </div>

                        <div class="form-group">
                            <label class="control-label">Descripcion de la Factura:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Descripcion de la Factura" ID="txtModDescFactura" runat="server" MaxLength="300" Enabled="False" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtModDescFactura" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label">Estado:</label>
                            <div class="input-group">
                                <asp:DropDownList CssClass="form-control m-b" ID="drpEstado" runat="server" ToolTip="Seleccione el tipo de pago" Enabled="False">                                   
                                    <asp:ListItem Enabled="True" Selected="true" Text="Activa" Value="Activa"></asp:ListItem>
                                    <asp:ListItem Enabled="True" Selected="false" Text="Pendiente" Value="Pendiente"></asp:ListItem>
                                    <asp:ListItem>Cancelada</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Tipo de Pago:</label>
                            <div class="input-group">
                              <asp:DropDownList CssClass="form-control m-b" ID="drpTipodePago" runat="server" ToolTip="Seleccione el tipo de pago" Enabled="False">
                                    <asp:ListItem Enabled="True" Selected="True" Text="Colones" Value="Colones"></asp:ListItem>
                                    <asp:ListItem Enabled="True" Selected="false" Text="Dolares" Value="Dolares"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Monto:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Monto" ID="txtModMonto" runat="server" MaxLength="9" Enabled="False"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtModMonto" ErrorMessage="Debe ingresar solo numeros" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="2"></asp:CompareValidator>
                                <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtModMonto" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Monto Ultimo Pago:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="form-control" ToolTip="Monto Ultimo Pago" ID="txtModMontoUltimoPago" runat="server" MaxLength="9" Enabled="False"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtModMontoUltimoPago" ErrorMessage="Debe ingresar solo numeros" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="2"></asp:CompareValidator>
                                <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtModMontoUltimoPago" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Fecha Ultimo Pago:</label>
                            <div class="input-group text">
                                <asp:TextBox CssClass="auto-style1" ToolTip="Fecha Ultimo Pago" ID="txtModFechaUltimoPago" runat="server" TextMode="Date" Enabled="False"></asp:TextBox>
                            </div>
                        </div>

                        <asp:Button CssClass="btn btn-success btn-block" ID="btnModificarFactura" Text="Modificar Factura" runat="server" OnClick="btnModFactura_Click" ValidationGroup="2"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
