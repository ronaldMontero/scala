using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MCruzNegocio;

namespace MCruz
{
    public partial class ProveedoresFacturacion : Page
    {
        ClsProveedores cpr = new ClsProveedores();
        protected void Page_Load(object sender, EventArgs e)
        {
      
        }
        //Busqueda en Grids, habilita busqueda personalizada
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
                cpr.Cpr_Num_factura = Int16.Parse(txtFactura.Text);
            
                listadoPorFacturaClientes();
            GridView1.Visible = false;
            
        }

        protected void btnCrearNuevaFactura_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProveedoresNuevaFactura.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnModFactura_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProveedoresModFactura.aspx");
        }

        protected void btnDelNuevaFactura_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProveedoresDelFactura.aspx");
        }
        //Metodo para llenar el grid
        private void listadoPorFacturaClientes()
        {
            DataTable dt = new DataTable();
            dt = cpr.VerClientesPorFactura();

        }
    }
}