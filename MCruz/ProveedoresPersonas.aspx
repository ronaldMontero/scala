<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresPersonas.aspx.cs" Inherits="MCruz.ProveedoresPersonas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phDatosUsuario" runat="server">
            <a href="WFProveedores/dasboard.aspx"><img src="imgs/user.png" class="img-circle m-b" alt="Usuario" width="76"/></a>
    <p class="userName">Nombre Apellido </p>
    <p>Administrador</p>  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
        <h2 class="font-light m-b-xs">Personas Provedores</h2>
    <small>Listado De Personas Para Proveedores</small>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phContenido" runat="server">
    <div class="content animate-panel">
        <div class="row">
            <div class="col-md-3">
                <div class="hpanel">
                    <div class="panel-body">
                        <div class="m-b-md">
                            <div class="form-group">
                                <label class="control-label">
                                    Busqueda por Nombre de Proveedor:</label>
                                <div class="input-group text">
                                    <asp:TextBox ID="txtNombreProveedor" runat="server" CssClass="form-control" ToolTip="Nombre de Proveedor" MaxLength="50"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombreProveedor" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                    
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnBuscar" Text="Buscar" runat="server" OnClick="btnBuscar_Click" ValidationGroup="1"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnIngresarNuevoProveedor" Text="Ingresar Nuevo Proveedor" runat="server" OnClick="btnAnadirNuevoProveedor_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnModificarProveedor" Text="Modificar Proveedor" runat="server" OnClick="btnModificarProveedor_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnDelProveedor" Text="Borrar Un Proveedor" runat="server" OnClick="btnDelProveedor_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
              <div class="row projects">
                <div id="resultadoBusqueda">
                    <div class="text-center">
                        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BorderColor="White" CellPadding="9" CellSpacing="4" DataSourceID="SqlDataSource1" ForeColor="#333333" PageSize="20">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="cedula" HeaderText="cedula" SortExpression="cedula" />
                                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                                <asp:BoundField DataField="Apellido1" HeaderText="Apellido1" SortExpression="Apellido1" />
                                <asp:BoundField DataField="Apellido2" HeaderText="Apellido2" SortExpression="Apellido2" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Email2" HeaderText="Email2" SortExpression="Email2" />
                                <asp:BoundField DataField="Telefono1" HeaderText="Telefono1" SortExpression="Telefono1" />
                                <asp:BoundField DataField="Telefono2" HeaderText="Telefono2" SortExpression="Telefono2" />
                                <asp:BoundField DataField="Telefono3" HeaderText="Telefono3" SortExpression="Telefono3" />
                                <asp:BoundField DataField="Direccion1" HeaderText="Direccion1" SortExpression="Direccion1" />
                                <asp:BoundField DataField="Direccion2" HeaderText="Direccion2" SortExpression="Direccion2" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MCruzDBConnectionString %>" SelectCommand="sp_ListarPersonaPorNombre" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtNombreProveedor" Name="nombre_proveedor" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BorderColor="White" CellPadding="9" CellSpacing="4" DataSourceID="SqlDataSource2" ForeColor="#333333" PageIndex="1" PageSize="15">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="cedula" HeaderText="cedula" SortExpression="cedula" />
                            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                            <asp:BoundField DataField="Apellido1" HeaderText="Apellido1" SortExpression="Apellido1" />
                            <asp:BoundField DataField="Apellido2" HeaderText="Apellido2" SortExpression="Apellido2" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Email2" HeaderText="Email2" SortExpression="Email2" />
                            <asp:BoundField DataField="Telefono1" HeaderText="Telefono1" SortExpression="Telefono1" />
                            <asp:BoundField DataField="Telefono2" HeaderText="Telefono2" SortExpression="Telefono2" />
                            <asp:BoundField DataField="Telefono3" HeaderText="Telefono3" SortExpression="Telefono3" />
                            <asp:BoundField DataField="Direccion1" HeaderText="Direccion1" SortExpression="Direccion1" />
                            <asp:BoundField DataField="Direccion2" HeaderText="Direccion2" SortExpression="Direccion2" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MCruzDBConnectionString %>" SelectCommand="sp_ListarTodasLasPersonas" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
