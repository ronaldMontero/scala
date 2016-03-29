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
            if (txtNombreCliente.Text.Length > 0)
            {
                cli.Nombre_Cliente = txtNombreCliente.Text;
            }

            if (drpTipoCliente.SelectedValue != "Seleccione ...")
            {
                cli.Tipo_de_Cliente = Convert.ToChar(drpTipoCliente.SelectedValue);
            }

            if (drpCategoriaCliente.SelectedValue != "Seleccione ...")
            {
                cli.Categoria_Cliente = Convert.ToChar(drpCategoriaCliente.SelectedValue);
            }
            cli.ListadoFiltrado();
        }

        private void listadoGeneralClientes() {
            DataTable dt = new DataTable();
            dt = cli.Listado();
            resBusqueda.DataSource = dt;
            resBusqueda.DataBind();
        }
    }
}