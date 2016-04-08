using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MCruzNegocio;

namespace MCruz
{
    public partial class ProveedoresPersonas : Page
    {
        ClsProveedores cpr = new ClsProveedores();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Busqueda en Grids, habilita busqueda personalizada
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            cpr.Cpr_nombre = txtNombreProveedor.Text;
            cpr.BuscarPersona();
            GridView1.Visible = false;
        }

        protected void btnAnadirNuevoProveedor_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProveedoresNuevaPersona.aspx");
        }

        protected void btnModificarProveedor_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProveedoresModPersona.aspx");
        }

        protected void btnDelProveedor_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProveedoresDelPersona.aspx");
        }
    }
}