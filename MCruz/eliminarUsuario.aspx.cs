using System;
using MCruzNegocio;
using System.Data;

namespace MCruz
{
    public partial class eliminarUsuario : System.Web.UI.Page
    {
        ClsUsuario Usuario = new ClsUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblRemoverCuenta.Text = "";
            lblEstado.Text = "";
            if (!IsPostBack)
            {
                cargar_UsuariosDropDownList();
            }
        }
        private void cargar_UsuariosDropDownList()
        {
            ClsUsuario Usuario = new ClsUsuario();
            DataTable dt = new DataTable();
            dt = Usuario.GetUsers();
            ddlCuentas.DataTextField = dt.Columns["Cuenta"].ToString();
            ddlCuentas.DataSource = dt;
            ddlCuentas.DataBind();
        }

        protected void btnRemoverCuenta_Click(object sender, EventArgs e)
        {
            Usuario.m_cuenta = ddlCuentas.SelectedValue;
            if (Usuario.m_cuenta == "Administrador")
            {
                lblEstado.Text = "Administrador no puede ser eliminado";
            }    
            else
            {
                lblRemoverCuenta.Text = Usuario.DeleteUser();
            }
            
            cargar_UsuariosDropDownList();
        }
    }
}