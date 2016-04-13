<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="dummyMP.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">
        Panel de Control
    </h2>
    <small>Estado General de la empresa</small>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="phContenido" runat="server">
    <div class="row">
        <div class="col-md-4">
            <div class="hpanel hbgnavyblue">
                <div class="panel-body">
                    <div class="text-center">
                        <h3>Clientes activos</h3>
                        <p class="text-big font-light">XXX</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="hpanel hbgorange">
                <div class="panel-body">
                    <div class="text-center">
                        <h3>Proyectos activos</h3>
                        <p class="text-big font-light">XXX</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="hpanel hbggreen">
                <div class="panel-body">
                    <div class="text-center">
                        <h3>Usuarios activos</h3>
                        <p class="text-big font-light">XXX</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

 