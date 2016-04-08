using System;
using MCruzNegocio;
using System.Data;

namespace MCruz
{
    public partial class crearUsuario : System.Web.UI.Page
    {
        ClsPerfil Rol = new ClsPerfil();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCreacionUsuario.Text = "";
            if (!IsPostBack)
            {
                cargar_RolesDropDownList();
            }
        }
        protected void btnCrearUsuario_Click(object sender, EventArgs e)
        {
            ClsUsuario CuentaUsuario = new ClsUsuario(txtNombreUsuario.Text, txtContrasenna.Text, Convert.ToInt32(ddlEstado.SelectedValue), Rol.GetIdPerfil(ddlRoles.SelectedValue));
            lblCreacionUsuario.Text = CuentaUsuario.AddUser();
            cargar_RolesDropDownList();
            txtNombreUsuario.Text ="";
            txtContrasenna.Text ="";
        }
        private void cargar_RolesDropDownList()
        {
            ClsPerfil Roles = new ClsPerfil();
            DataTable dt = new DataTable();
            dt = Roles.GetPerfiles();
            ddlRoles.DataTextField = dt.Columns["Descripcion"].ToString();
            ddlRoles.DataSource = dt;
            ddlRoles.DataBind();
        }
    }
}