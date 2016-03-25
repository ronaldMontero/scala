using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MCruzNegocio;
namespace MCruz
{
    public partial class mantenimientoClientes : System.Web.UI.Page
    {
        private ClsClientes cli = new ClsClientes();
        protected void Page_Load(object sender, EventArgs e)
        {
            verClientes();
        }
        private void verClientes()
        {
            DataTable dt = new DataTable();
            dt = cli.VerClientes();
            listadoClientes.DataSource = dt;
            listadoClientes.DataBind();
        }
    }
}