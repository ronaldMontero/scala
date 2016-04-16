<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="clientes.aspx.cs" Inherits="MCruz.clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">Clientes</h2>
    <small>Detalles generales de clientes y búsqueda</small>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="phContenido" runat="server">
    <div class="content animate-panel">
        <div class="row">
            <div class="col-md-3">
                <div class="hpanel">
                    <div class="panel-body">
                        <div class="m-b-md">
                            <h4>
                                Filtros de Búsqueda
                            </h4>
                            <small>
                                Filtre los resultados de los clientes basado en las opciones de abajo
                            </small>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Nombre de cliente:</label>
                            <div class="input-group text">
                                <asp:TextBox cssclass="form-control" ToolTip="Nombre del cliente" ID="txtNombreCliente" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <asp:Button CssClass="btn btn-success btn-block" ID="btnBuscar" Text="Buscar" runat="server" OnClick="btnBuscar_Click"></asp:Button>
                    </div>
                </div>
            </div>    
            <div class="row projects">
                <div id="resultadoBusqueda"> 
                    <asp:Repeater ID="resBusqueda" OnItemCommand="resultadosBusqueda_ItemCommand" runat="server">
                            <ItemTemplate>
                                <div class="col-md-8">
                                        <div class="hpanel filter-item <%# Eval("colorCliente").ToString() %>">
                                            <div class="panel-body">
                                                <div class="pull-right text-right">
                                                    <div class="progress m-t-xs full progress-medium">
                                                        <div style="width: 100%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="1" role="progressbar" class='progress-bar progress-bar-<%# Eval("ClasificacionCliente").ToString() %>'></div>
                                                    </div>
                                                </div>
                                                <h4 class="m-b-xs"><asp:Label ID="Nombre_Cliente" runat="server" Text='<%# Eval("Nombre_Cliente").ToString() %>'></asp:Label></h4>
                                                <p class="small"><asp:Label ID="TipoCliente" runat="server" Text='<%# Eval("Tipo_Cliente").ToString() %>'></asp:Label></p>
                                                <asp:LinkButton ID="btnVerCliente" CssClass="btn btn-primary" CommandName="VerCliente" CommandArgument='<%#Eval("ID_Empresa") %>' runat="server"><i class="pe-7s-look"></i> <span class="text-white">Ver Cliente</span></asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                            </ItemTemplate>
                        </asp:Repeater>                    
                </div>
            </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="additionalScripts" runat="server">
    <!-- Test --> 
<script>

    $(function(){

        $('.input-group.date').datepicker();

        $("#demo1").TouchSpin({
            min: 0,
            max: 100,
            step: 0.1,
            decimals: 2,
            boostat: 5,
            maxboostedstep: 10
        });

        $("#demo2").TouchSpin({
            verticalbuttons: true
        });

        $(".select2").select2();

    });

</script>
</asp:Content>