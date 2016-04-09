using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MCruzNegocio;
using System.Data.SqlClient;
using System.Data;

namespace MCruz
{
    public partial class ProveedoresModFactura : System.Web.UI.Page
    {
        ClsProveedores cpr = new ClsProveedores();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnModFactura_Click(object sender, EventArgs e)
        {//Modifica una factura existente
            cpr.Cpr_Num_factura = Int32.Parse(txtNumeroFactura.Text);
            cpr.Cpr_ID_Empresa = Int32.Parse(drpNombreProveedor.SelectedValue);
            cpr.Cpr_Descripcion_Factura = txtModDescFactura.Text;
            cpr.Cpr_Estado = drpEstado.SelectedValue;
            cpr.Cpr_Tipo_Pago = drpTipodePago.SelectedValue;
            cpr.Cpr_Monto_Factura = float.Parse(txtModMonto.Text);
            cpr.Cpr_Monto_Ultimo_Pago = float.Parse(txtModMontoUltimoPago.Text);
            cpr.Cpr_Fecha_Ultimo_Pago = DateTime.Parse(txtModFechaUltimoPago.Text);
            cpr.ModificarFactura();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Exito", "alert(\"Factura ingresada correctamente!\"); location.href=\"ProveedoresFacturacion.aspx\";", true);

        }

        protected void btnBuscarFactura_Click(object sender, EventArgs e)
        {
           
            cpr.Cpr_Num_factura= Int32.Parse(txtNumeroFactura.Text);
            listadoModFactura();
            txtNumeroFactura.Enabled = true;
            drpNombreProveedor.Enabled = true;
            txtModDescFactura.Enabled = true;
            drpEstado.Enabled = true;
            drpTipodePago.Enabled = true;
            txtModMonto.Enabled = true;
            txtModMontoUltimoPago.Enabled = true;
            txtModFechaUltimoPago.Enabled = true;
            txtNumeroFactura.Enabled = false;
            
        }

        protected void drpNombreProveedor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void listadoModFactura()
        {//Metodo de listado de facturas existentes
            DataTable dt = new DataTable();
            dt = cpr.VerModFactura();
            if( dt.Rows.Count.Equals(0))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alerta", "alert(\"El numero de factura no existe!\"); location.href=\"ProveedoresModFactura.aspx\";", true);
            }
            else
            { 
            drpNombreProveedor.SelectedValue = dt.Rows[0][0].ToString();
            txtModDescFactura.Text = dt.Rows[0][1].ToString();
            drpEstado.SelectedValue = dt.Rows[0][2].ToString();
            drpTipodePago.SelectedValue = dt.Rows[0][3].ToString();
            txtModMonto.Text = dt.Rows[0][4].ToString();
            txtModMontoUltimoPago.Text = dt.Rows[0][5].ToString();
            txtModFechaUltimoPago.Text = Convert.ToDateTime(dt.Rows[0][6]).ToString("yyyy-MM-dd");
            }
        }
    }

}