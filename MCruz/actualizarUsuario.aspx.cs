using MCruzNegocio;
using System;
using System.Data;

namespace MCruz
{
    public partial class actualizarUsuario : System.Web.UI.Page
    {
        ClsUsuario Usuario = new ClsUsuario();
        int idUsuario = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblActualizacionUsuario.Text = "";
            if (!IsPostBack)
            {
                cargar_DropDownList();
                cargar_DatosUsuario();
            }
        }
        private void cargar_DropDownList()
        {
            ClsUsuario Usuarios = new ClsUsuario();
            ClsPerfil Roles = new ClsPerfil();
            DataTable dt = new DataTable();
            dt = Usuarios.GetUsers();
            ddlCuentas.DataTextField = dt.Columns["Cuenta"].ToString();
            ddlCuentas.DataSource = dt;
            ddlCuentas.DataBind();

            dt = Roles.GetPerfiles();
            ddlRoles.DataTextField = dt.Columns["Descripcion"].ToString();
            ddlRoles.DataSource = dt;
            ddlRoles.DataBind();
        }
        private void cargar_DatosUsuario()
        {
            ClsUsuario Usuario = new ClsUsuario();
            DataTable dt = new DataTable();
            Usuario.m_cuenta = ddlCuentas.SelectedValue;
            dt = Usuario.GetUser();
            if (dt.Rows.Count>0)
            {
                idUsuario = dt.Rows[0].Field<Int32>("idUsuario");
                txtDescripcion.Text = dt.Rows[0].Field<String>("Cuenta");
                txtContrasenna.Text = dt.Rows[0].Field<String>("Clave");
                if (dt.Rows[0].Field<Boolean>("Estado"))
                    ddlEstado.SelectedValue = "1";
                else
                    ddlEstado.SelectedValue = "0";

                ddlRoles.SelectedValue = Usuario.GetPerfil(ddlCuentas.SelectedValue);
            }
        }
        protected void btnActualizarUsuario_Click(object sender, EventArgs e)
        {
            ClsUsuario User = new ClsUsuario();
            ClsPerfil Perfil = new ClsPerfil();
            User.m_idusuario = User.GetIdUsuario(ddlCuentas.SelectedValue);
            User.m_cuenta = txtDescripcion.Text;
            User.m_contrasenna = txtContrasenna.Text;
            User.m_estado = Convert.ToInt32(ddlEstado.SelectedValue);
            User.m_idrol = Perfil.GetIdPerfil(ddlRoles.SelectedValue);
            lblActualizacionUsuario.Text = User.UpdateUser();
            txtDescripcion.Text = "";
            txtContrasenna.Text = "";
            cargar_DropDownList();

        }
        protected void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            cargar_DatosUsuario();
        }
    }
}