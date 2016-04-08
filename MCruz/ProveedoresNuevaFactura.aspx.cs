using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MCruzNegocio;

namespace MCruz
{
    public partial class ProveedoresNuevaFactura : Page
    {
        ClsProveedores cpr = new ClsProveedores();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearFactura_Click(object sender, EventArgs e)
        {
            cpr.Cpr_ID_Empresa = Int16.Parse(drpNombreProveedor.SelectedValue.ToString());
            cpr.Cpr_Descripcion_Factura = txtDescripcionFactura.Text;
            cpr.Cpr_Estado = drpEstado.SelectedValue.ToString();
            cpr.Cpr_Tipo_Pago = drpTipodePago.SelectedValue.ToString();
            cpr.Cpr_Monto_Factura = float.Parse(txtMonto.Text);
            cpr.Cpr_Monto_Ultimo_Pago = 0;
            cpr.RegistrarFactura();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Exito", "alert(\"Factura registrada con exito!\"); location.href=\"ProveedoresFacturacion.aspx\";", true);
        }

        protected void drpNombreProveedor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}