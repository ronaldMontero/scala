﻿<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresDelFactura.aspx.cs" Inherits="MCruz.ProveedoresDelFactura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                            <h4>Elminar Factura 
                            </h4>
                            <small>Permite Elminar Una Factura Existente
                            </small>
                            <div class="form-group">
                                <label class="control-label">Numero de Factura:</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ToolTip="Numero de Factura" ID="txtDelFactura" runat="server" MaxLength="9"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtDelFactura" ErrorMessage="Debe ingresar solo numeros" Operator="DataTypeCheck" Type="Integer" ForeColor="Red"></asp:CompareValidator>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDelFactura" ErrorMessage="Campo Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnEliminarFactura" Text="Eliminar Factura" runat="server" OnClick="btnDelFactura_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
