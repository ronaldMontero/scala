<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresProductos.aspx.cs" Inherits="MCruz.ProveedoresProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phDatosUsuario" runat="server">
    <a href="dasboard.aspx">
        <img src="imgs/user.png" class="img-circle m-b" alt="Usuario" width="76" /></a>
    <p class="userName">Nombre Apellido </p>
    <p>Administrador</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">Productos Proveedores</h2>
    <small>Listado de Productos</small>
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
                                    Busqueda por Nombre de Producto:</label>
                                <div class="input-group text">
                                    <asp:TextBox ID="txtProducto" runat="server" CssClass="form-control" ToolTip="Busqueda por Nombre de Producto"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProducto" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <asp:Button CssClass="btn btn-success btn-block" ID="btnBuscar" Text="Buscar" runat="server" OnClick="btnBuscar_Click" ValidationGroup="1"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnAgregarNuevoProducto" Text="Crear Producto" runat="server" OnClick="btnAgregarNuevoProducto_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnModProducto" Text="Modificar Producto" runat="server" OnClick="btnModProducto_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnDelProducto" Text="Borrar Producto" runat="server" OnClick="btnDelNuevoProducto_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
                          <div class="row projects">
                <div id="resultadoBusqueda">
                    <div class="text-center">
                        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BorderColor="White" CellPadding="9" CellSpacing="4" DataSourceID="SqlDataSource1" ForeColor="#333333" PageSize="20" DataKeyNames="ID_Producto">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="ID_Producto" HeaderText="ID_Producto" SortExpression="ID_Producto" InsertVisible="False" ReadOnly="True" />
                                <asp:BoundField DataField="Nombre_Producto" HeaderText="Nombre_Producto" SortExpression="Nombre_Producto" />
                                <asp:BoundField DataField="Descripcion_Producto" HeaderText="Descripcion_Producto" SortExpression="Descripcion_Producto" />
                                <asp:BoundField DataField="Cantidad_Producto" HeaderText="Cantidad_Producto" SortExpression="Cantidad_Producto" />
                                <asp:BoundField DataField="Fecha_Entrega_Provision" HeaderText="Fecha_Entrega_Provision" SortExpression="Fecha_Entrega_Provision" />
                                <asp:BoundField DataField="Fecha_Vencimiento_Provision" HeaderText="Fecha_Vencimiento_Provision" SortExpression="Fecha_Vencimiento_Provision" />
                                <asp:BoundField DataField="Nombre_Cliente" HeaderText="Nombre_Cliente" SortExpression="Nombre_Cliente" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MCruzDBConnectionString %>" SelectCommand="sp_ListarProductoPorNombre" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtProducto" Name="nombre_producto" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BorderColor="White" CellPadding="9" CellSpacing="4" DataSourceID="SqlDataSource2" ForeColor="#333333" PageIndex="1" PageSize="15" DataKeyNames="ID_Producto">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="ID_Producto" HeaderText="ID_Producto" SortExpression="ID_Producto" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="Nombre_Producto" HeaderText="Nombre_Producto" SortExpression="Nombre_Producto" />
                            <asp:BoundField DataField="Descripcion_Producto" HeaderText="Descripcion_Producto" SortExpression="Descripcion_Producto" />
                            <asp:BoundField DataField="Cantidad_Producto" HeaderText="Cantidad_Producto" SortExpression="Cantidad_Producto" />
                            <asp:BoundField DataField="Fecha_Entrega_Provision" HeaderText="Fecha_Entrega_Provision" SortExpression="Fecha_Entrega_Provision" />
                            <asp:BoundField DataField="Fecha_Vencimiento_Provision" HeaderText="Fecha_Vencimiento_Provision" SortExpression="Fecha_Vencimiento_Provision" />
                            <asp:BoundField DataField="Nombre_Cliente" HeaderText="Nombre_Cliente" SortExpression="Nombre_Cliente" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MCruzDBConnectionString %>" SelectCommand="sp_ListarTodosLosProductos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
