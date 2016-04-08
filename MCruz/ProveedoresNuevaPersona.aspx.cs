using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MCruzNegocio;

namespace MCruz
{
    public partial class ProveedoresNuevoPersona : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearPersonaProveedor_Click(object sender, EventArgs e)
        {
            ClsProveedores cpr = new ClsProveedores();
            cpr.Cpr_ID_Empresa = Int16.Parse(drpNombreEmpresa.SelectedValue.ToString());
            cpr.Cpr_cedula = Int32.Parse(txtCedula.Text);
            cpr.Cpr_nombre = txtNombre.Text;
            cpr.Cpr_apellido1 = txtApellido1.Text;
            cpr.Cpr_apellido2 = txtApellido2.Text;
            cpr.Cpr_email1 = txtPrimerEmail.Text;
            cpr.Cpr_email2 = txtSegundoEmail.Text;
            cpr.Cpr_Tel1 = txtPrimerTelefono.Text;
            cpr.Cpr_Tel2 = txtSegundoTelefono.Text;
            cpr.Cpr_Tel3 = txtTercerTelefono.Text;
            cpr.Cpr_dir1 = txtPrimerDireccion.Text;
            cpr.Cpr_dir2 = txtPrimerDireccion.Text;
            cpr.Cpr_Puesto_Proveedor = txtPuestoProveedor.Text;

            string x = cpr.RegistrarUsuario();
            if (x == "0")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Exito", "alert(\"Proveedor añadido con exito!\"); location.href=\"ProveedoresPersonas.aspx\";", true);

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert(\"Esta cedula ya se encuentra en el sistema, Intente de nuevo!\"); location.href=\"ProveedoresPersonas.aspx\";", true);
            }
        }
    }
}