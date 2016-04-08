using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MCruzNegocio;

namespace MCruz
{
    public partial class ProveedoresModProductos : System.Web.UI.Page
    {
        ClsProveedores cpr = new ClsProveedores();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnModBuscarProducto_Click(object sender, EventArgs e)
        {//Permite buscar un producto existente para modificarlo, Controla textboxs
            cpr.Cpr_ID_Producto = Int32.Parse(txtIDProducto.Text);
            listadoModProducto();
            txtIDProducto.Enabled = false;
            txtNombreProducto.Enabled = true;
            txtDescripcionProducto.Enabled = true;
            txtCantidadProducto.Enabled = true;
            txtFechaEntrega.Enabled = true;
            txtFechaCaducidad.Enabled = true;
            drpEmpresa.Enabled = true;

        }

        protected void btnModProductoProveedor_Click(object sender, EventArgs e)
        {//Modifica el producto seleccionado

            cpr.Cpr_ID_Producto = Int32.Parse(txtIDProducto.Text);
            cpr.Cpr_nombre_producto = txtNombreProducto.Text;
            cpr.Cpr_Descripcion_Producto = txtDescripcionProducto.Text;
            cpr.Cpr_Cantidad_Producto = Int32.Parse(txtCantidadProducto.Text);
            cpr.Cpr_Fecha_Entrega_Provision = DateTime.Parse(txtFechaEntrega.Text);
            cpr.Cpr_Fecha_Vencimiento_Provision = DateTime.Parse(txtFechaCaducidad.Text);
            cpr.Cpr_ID_Empresa = Int32.Parse(drpEmpresa.SelectedValue);
            cpr.ModificarProducto();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Exito", "alert(\"Producto modificado satisfactoriamente!\"); location.href=\"ProveedoresProductos.aspx\";", true);

        }

        private void listadoModProducto()
        {//Lista el producto seleccionado
            DataTable dt = new DataTable();
            dt = cpr.VerModProducto();
            if (dt.Rows.Count.Equals(0))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alerta", "alert(\"El ID de producto no existe!\"); location.href=\"ProveedoresModProductos.aspx\";", true);
            }
            else
            {
                txtNombreProducto.Text = dt.Rows[0][0].ToString();
                txtDescripcionProducto.Text = dt.Rows[0][1].ToString();
                txtCantidadProducto.Text = dt.Rows[0][2].ToString();
                txtFechaEntrega.Text = Convert.ToDateTime(dt.Rows[0][3]).ToString("yyyy-MM-dd");
                txtFechaCaducidad.Text = Convert.ToDateTime(dt.Rows[0][4]).ToString("yyyy-MM-dd");
                drpEmpresa.SelectedValue = dt.Rows[0][5].ToString();
            }

        }
    }
}