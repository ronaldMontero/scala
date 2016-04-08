using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MCruzNegocio;

namespace MCruz
{
    public partial class ProveedoresDelPersona : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelPersonaProveedor_Click(object sender, EventArgs e)
        {
            //Se pasa parametro de entrada y despliega mensaje segun si existe el dato en la DB
            ClsProveedores cpr = new ClsProveedores();
            cpr.Cpr_ID_Persona = Int16.Parse(drpNombrePersona.SelectedValue.ToString());
            if (cpr.BorrarPersona() == "0")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Exito", "alert(\"Persona desligada con exito!\"); location.href=\"ProveedoresPersonas.aspx\";", true);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert(\"La persona seleccionada no existe!\"); location.href=\"ProveedoresDelPersona.aspx\";", true);
            }
        }
    }
}