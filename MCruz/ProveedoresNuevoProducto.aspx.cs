using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MCruzNegocio;

namespace MCruz
{
    public partial class ProveedoresNuevoProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAgregarNuevoProducto_Click(object sender, EventArgs e)
        {
            ClsProveedores cpr = new ClsProveedores();
            cpr.Cpr_nombre_producto = txtNombreProducto.Text;
            cpr.Cpr_Descripcion_Producto = txtDescripcionProducto.Text;
            cpr.Cpr_Cantidad_Producto = Int32.Parse(txtCantidadProducto.Text);
            cpr.Cpr_Fecha_Entrega_Provision = DateTime.Parse(txtFechaEntrega.Text);
            cpr.Cpr_Fecha_Vencimiento_Provision = DateTime.Parse(txtFechaCaducidad.Text);
            cpr.Cpr_ID_Empresa = Int32.Parse(drpEmpresa.SelectedValue.ToString());
            cpr.RegistrarProducto();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Exito", "alert(\"Producto añadido con exito!\"); location.href=\"ProveedoresProductos.aspx\";", true);
        }
    }
}