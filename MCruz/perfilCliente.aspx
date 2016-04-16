<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="perfilCliente.aspx.cs" Inherits="MCruz.perfilCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">
        Perfil de Cliente
    </h2>
    <small>Información general de Clientes</small>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phContenido" runat="server">
    <div class="col-lg-4">
        <div id="detallesCliente" runat="server">
            <div class="panel-body">
                <h3><asp:Label ID="lblNombreCliente" runat="server"></asp:Label></h3>
                <div class="text-muted font-bold m-b-xs"><asp:Label ID="lblTipoCliente" runat="server"></asp:Label></div>
                <p>
                   <asp:Label ID="lblExtracto" runat="server"></asp:Label>
                </p>
            </div>
            <div class="panel-body">
                <dl>
                    <dt>Estado</dt>
                    <dd><asp:Label ID="lblEstadoCliente" runat="server"></asp:Label></dd>
                    <dt>Cédula Jurídica</dt>
                    <dd><asp:Label ID="lblCedulaJuridica" runat="server"></asp:Label></dd>
                    <dt>Email:</dt>
                    <dd><asp:Label ID="lblEmail" runat="server"></asp:Label></dd>
                    <dt>Teléfono:</dt>
                    <dd><asp:Label ID="lblTelefono" runat="server"></asp:Label></dd>
                </dl>
            </div>
            <div class="panel-footer contact-footer">
                <div class="row">
                    <div class="col-md-4 border-right">
                        <div class="contact-stat"><span>Proyectos: </span> <strong>200</strong></div>
                    </div>
                    <div class="col-md-4 border-right">
                        <div class="contact-stat"><span>Contactos: </span> <strong>300</strong></div>
                    </div>
                    <div class="col-md-4">
                        <div class="contact-stat"><span>Facturas: </span> <strong>400</strong></div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="col-lg-6">
        <div class="hpanel">
            <div class="panel-body float-e-margins">
                <asp:Repeater ID="listadoContactos" runat="server">
                    <ItemTemplate>
                        <p class="text-primary">Nombre:</p>
                        <p><asp:Label ID="lblNombreContacto" runat="server"><%# Eval("Nombre").ToString() + ' ' + Eval("Apellido1").ToString() + ' ' + Eval("Apellido2").ToString() %></asp:Label></p>
                        <p class="text-primary">Teléfonos:</p>
                        <p><asp:Label ID="lblTelefonos" runat="server"><%# Eval("Telefono1").ToString() + ' ' + Eval("Telefono2").ToString() + ' '  + Eval("Nombre").ToString() %></asp:Label></p>
                        <p class="text-primary">Correos Electrónicos:</p>
                        <p><asp:Label ID="lblEmails" runat="server"><%# Eval("Email").ToString() + " - " + Eval("Email2").ToString() %></asp:Label></p>
                        <p class="text-primary">Direcciones:</p>
                        <p><asp:Label ID="lblDireccion1" runat="server"><%# Eval("Direccion1").ToString() %></asp:Label></p>
                        <p><asp:Label ID="lblDireccion2" runat="server"><%# Eval("Direccion2").ToString() %></asp:Label></p>
                        <hr />
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
