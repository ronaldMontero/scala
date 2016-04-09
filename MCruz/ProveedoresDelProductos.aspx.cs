using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MCruzNegocio;
using System.Data;

namespace MCruz
{
    public partial class ProveedoresDelProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

  
        protected void btnDelProductoProveedor_Click(object sender, EventArgs e)
        {
            //Se pasa parametro de entrada y despliega mensaje segun si existe el dato en la DB
            ClsProveedores cpr = new ClsProveedores();
            cpr.Cpr_ID_Producto = Int32.Parse(txtCodProducto.Text);

            if (cpr.BorrarProducto() == "0")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Exito", "alert(\"Producto eliminado con exito!\"); location.href=\"ProveedoresProductos.aspx\";", true);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert(\"El Producto seleccionado no existe!\"); location.href=\"ProveedoresDelProductos.aspx\";", true);
            }
        }
    }
}