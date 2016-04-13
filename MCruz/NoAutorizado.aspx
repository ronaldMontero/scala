<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="NoAutorizado.aspx.cs" Inherits="MCruz.NoAutorizado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">
        Usuario no actualizado
    </h2>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <div class="col-lg-2">
        <img src="imgs/accessDenied.gif" width="150"/>
    </div>
    <div class="col-lg-10">
        <h3>Acceso Restringido</h3>
            <div class="hpanel">
                 <p>Actualmente no se encuentra autorizado para ver esta pagina.</p>
                 <p>Si tiene alguna consulta con respecto a este acceso por favor dirigase al administrador del sistema.</p>
            </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
