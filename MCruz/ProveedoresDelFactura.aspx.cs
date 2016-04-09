using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MCruzNegocio;

namespace MCruz
{
    public partial class ProveedoresDelFactura : System.Web.UI.Page
    {
        ClsProveedores cpr = new ClsProveedores();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelFactura_Click(object sender, EventArgs e)
        {
            //Se pasa parametro de entrada y despliega mensaje segun si existe el dato en la DB
            cpr.Cpr_Num_factura = int.Parse(txtDelFactura.Text);
            if (cpr.BorrarFactura() == "0")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Exito", "alert(\"Factura eliminada!\"); location.href=\"ProveedoresFacturacion.aspx\";", true);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert(\"La factura seleccionada no se encuentra en la base de datos!\"); location.href=\"ProveedoresDelFactura.aspx\";", true);
            }
        }
    }
}