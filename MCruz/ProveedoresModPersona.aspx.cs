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
    public partial class ProveedoresModPersona : System.Web.UI.Page
    {
        ClsProveedores cpr = new ClsProveedores();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnModPersonaProveedor_Click(object sender, EventArgs e)
        {//Permite modificar el proveedor previamente seleccionado por medio de el metodo
            cpr.Cpr_cedula = Int32.Parse(txtCedula.Text);
            cpr.Cpr_nombre = txtNombre.Text;
            cpr.Cpr_apellido1 = txtApellido1.Text;
            cpr.Cpr_apellido2 = txtApellido2.Text;
            cpr.Cpr_email1 = txtPrimerEmail.Text;
            cpr.Cpr_email2 = txtSegundaDireccion.Text;
            cpr.Cpr_Tel1 = txtPrimerTelefono.Text;
            cpr.Cpr_Tel2 = txtSegundaDireccion.Text;
            cpr.Cpr_Tel3 = txtTercerTelefono.Text;
            cpr.Cpr_dir1 = txtPrimerDireccion.Text;
            cpr.Cpr_dir2 = txtSegundaDireccion.Text;
            cpr.Cpr_Puesto_Proveedor = txtPuestoProveedor.Text;
            cpr.Cpr_ID_Empresa = Int32.Parse(drpModNombreProveedor.SelectedValue);
            cpr.ModificarProveedores();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Exito", "alert(\"Proveedor modificado correctamente!\"); location.href=\"ProveedoresPersonas.aspx\";", true);

        }

        protected void btnModBuscarPersona_Click(object sender, EventArgs e)
        {
            cpr.Cpr_cedula = Int32.Parse(txtCedula.Text);
            listadoModPersona();

        }
        private void listadoModPersona()
        {//Lista el proveedor a buscar junto con su data
            DataTable dt = new DataTable();
            dt = cpr.VerModPersona();
            if (dt.Rows.Count.Equals(0))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alerta", "alert(\"El numero de cedula no existe!\"); location.href=\"ProveedoresModPersona.aspx\";", true);
            }
            else
            {
                txtCedula.Text = dt.Rows[0][0].ToString();
                txtNombre.Text = dt.Rows[0][1].ToString();
                txtApellido1.Text = dt.Rows[0][2].ToString();
                txtApellido2.Text = dt.Rows[0][3].ToString();
                txtPrimerEmail.Text = dt.Rows[0][4].ToString();
                txtSegundaDireccion.Text = dt.Rows[0][5].ToString();
                txtPrimerTelefono.Text = dt.Rows[0][6].ToString();
                txtSegundaDireccion.Text = dt.Rows[0][7].ToString();
                txtTercerTelefono.Text = dt.Rows[0][8].ToString();
                txtPrimerDireccion.Text = dt.Rows[0][9].ToString();
                txtSegundaDireccion.Text = dt.Rows[0][10].ToString();
                txtPuestoProveedor.Text = dt.Rows[0][11].ToString();
                drpModNombreProveedor.SelectedValue = dt.Rows[0][12].ToString();
            }
 
        }
    }
}