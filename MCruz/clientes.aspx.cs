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
    public partial class clientes : System.Web.UI.Page
    {
        private ClsClientes cli = new ClsClientes();
        protected void Page_Load(object sender, EventArgs e)
        {   
            //listadoGeneralClientes();
        }


        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            if (txtNombreCliente.Text.Length > 0)
            {
                cli.Nombre_Cliente = txtNombreCliente.Text;
            }
            dt = cli.ListadoFiltrado();
            resBusqueda.DataSource = dt;
            resBusqueda.DataBind();
        }

        protected void resultadosBusqueda_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case ("VerCliente"):
                    Response.Redirect("perfilCliente.aspx?cliente=" + e.CommandArgument.ToString(), false);
                    break;
            }
        }
    }
}