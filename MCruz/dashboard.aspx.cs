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
    public partial class dashboard : Page
    {
    	private ClsClientes cli = new ClsClientes();
    	private ClsUsuario clu = new ClsUsuario();
    	//Proyectos - Pending
    	//private Cls cli = new ClsClientes();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        private string clientesActivos()
        {
            lblClientesActivos.Text = cli.ClientesActivos();
        }
    }
}