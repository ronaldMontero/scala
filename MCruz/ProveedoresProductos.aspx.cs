using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MCruz
{
    public partial class ProveedoresProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregarNuevoProducto_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProveedoresNuevoProducto.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }

        protected void btnMostrarTodosLosProductos_Click(object sender, EventArgs e)
        {

        }
    }
}