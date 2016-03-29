using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MCruz
{
    public partial class ProveedoresPersonas : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

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