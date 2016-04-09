<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="ProveedoresFacturacion.aspx.cs" Inherits="MCruz.ProveedoresFacturacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phDatosUsuario" runat="server">
    <a href="dasboard.aspx">
        <img src="imgs/user.png" class="img-circle m-b" alt="Usuario" width="76" /></a>
    <p class="userName">Nombre Apellido </p>
    <p>Administrador</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phTituloContenido" runat="server">
    <h2 class="font-light m-b-xs">Facturacion</h2>
    <small>Busqueda De facturas</small>
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
                                    Busqueda por Numero de Factura:</label>
                                <div class="input-group text">
                                    <asp:TextBox ID="txtFactura" runat="server" CssClass="form-control" ToolTip="Busqueda por Numero de factura"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtFactura" ErrorMessage="Debe Ingresar Solo Numeros" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFactura" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                                    <br />
                                </div>
                            </div>

                            <asp:Button CssClass="btn btn-success btn-block" ID="btnBuscar" Text="Buscar" runat="server" OnClick="btnBuscar_Click" ValidationGroup="1"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnNuevaFactura" Text="Crear Nueva Factura" runat="server" OnClick="btnCrearNuevaFactura_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnModFactura" Text="Modificar Factura" runat="server" OnClick="btnModFactura_Click"></asp:Button>
                            <asp:Button CssClass="btn btn-success btn-block" ID="btnDelFactura" Text="Borrar Factura" runat="server" OnClick="btnDelNuevaFactura_Click"></asp:Button>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row projects">
                <div id="resultadoBusqueda">
                    <div class="text-center">
                        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BorderColor="White" CellPadding="9" CellSpacing="4" DataKeyNames="num_factura" DataSourceID="SqlDataSource1" ForeColor="#333333" PageSize="20">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="nombre_cliente" HeaderText="Nombre  Cliente" SortExpression="nombre_cliente" />
                                <asp:BoundField DataField="num_factura" HeaderText="Numero Factura" InsertVisible="False" ReadOnly="True" SortExpression="num_factura" />
                                <asp:BoundField DataField="descripcion_Factura" HeaderText="Descripcion" SortExpression="descripcion_Factura" />
                                <asp:BoundField DataField="estado" HeaderText="Estado" SortExpression="estado" />
                                <asp:BoundField DataField="tipo_pago" HeaderText="Tipo Moneda" SortExpression="tipo_pago" />
                                <asp:BoundField DataField="monto_factura" HeaderText="Monto" SortExpression="monto_factura" />
                                <asp:BoundField DataField="monto_ultimo_pago" HeaderText="Monto Ultimo Pago" SortExpression="monto_ultimo_pago" />
                                <asp:BoundField DataField="fecha_ultimo_pago" HeaderText="Fecha Ultimo Pago" SortExpression="fecha_ultimo_pago" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MCruzDBConnectionString %>" SelectCommand="sp_ListarFacturasPorFactura" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtFactura" Name="num_factura" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BorderColor="White" CellPadding="9" CellSpacing="4" DataKeyNames="num_factura" DataSourceID="SqlDataSource2" ForeColor="#333333" PageIndex="1" PageSize="15">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="nombre_cliente" HeaderText="Nombre  Cliente" SortExpression="nombre_cliente" />
                            <asp:BoundField DataField="num_factura" HeaderText="Numero Factura" InsertVisible="False" ReadOnly="True" SortExpression="num_factura" />
                            <asp:BoundField DataField="descripcion_Factura" HeaderText="Descripcion" SortExpression="descripcion_Factura" />
                            <asp:BoundField DataField="estado" HeaderText="Estado" SortExpression="estado" />
                            <asp:BoundField DataField="tipo_pago" HeaderText="Tipo Moneda" SortExpression="tipo_pago" />
                            <asp:BoundField DataField="monto_factura" HeaderText="Monto" SortExpression="monto_factura" />
                            <asp:BoundField DataField="monto_ultimo_pago" HeaderText="Monto Ultimo Pago" SortExpression="monto_ultimo_pago" />
                            <asp:BoundField DataField="fecha_ultimo_pago" HeaderText="Fecha Ultimo Pago" SortExpression="fecha_ultimo_pago" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MCruzDBConnectionString %>" SelectCommand="sp_ListarTodasLasFacturas" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="additionalScripts" runat="server">
</asp:Content>
