using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MCruzNegocio;

namespace MCruz
{
    public partial class ProveedoresProductos : System.Web.UI.Page
    {
        ClsProveedores cpr = new ClsProveedores();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregarNuevoProducto_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProveedoresNuevoProducto.aspx");
        }
        //Busqueda en Grids, habilita busqueda personalizada
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }

        protected void btnModProducto_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProveedoresModProductos.aspx");
        }

        protected void btnDelNuevoProducto_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProveedoresDelProductos.aspx");
        }
    }
}