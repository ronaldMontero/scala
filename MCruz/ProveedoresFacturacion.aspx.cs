using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MCruz
{
    public partial class ProveedoresFacturacion : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }

        protected void btnBuscarTodasFacturas_Click(object sender, EventArgs e)
        {

        }

        protected void btnCrearNuevaFactura_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProveedoresNuevaFactura.aspx");
        }
    }
}