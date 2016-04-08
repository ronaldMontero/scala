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
    public partial class mantenimientoPermisos : System.Web.UI.Page
    {
        ClsPerfil Rol = new ClsPerfil();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCreacionRol.Text = "";
            lblRolEliminado.Text = "";
            lblRolActualizado.Text = "";
            lblAsignacionPermiso.Text = "";
            if (!IsPostBack)
            {
                cargar_RolesDropDownList();
                cargar_PermissionsDropDownList();
                cargar_UsersDropDownList();
            }
        }
        protected void btnCrearRol_Click(object sender, EventArgs e)
        {
            Rol.descripcion = txtDescripcion.Text;
            lblCreacionRol.Text = Rol.AddPerfil();
            txtDescripcion.Text = "";
            cargar_RolesDropDownList();
        }

        protected void btnEliminarRol_Click(object sender, EventArgs e)
        {
            Rol.descripcion = ddlRoles1.SelectedValue;
            Rol.DeleteAsocRolPermission(Rol.GetIdPerfil(ddlRoles1.SelectedValue));
            
            lblRolEliminado.Text = Rol.DeletePerfil();
            cargar_RolesDropDownList();
        }

        protected void btnActualizarRol_Click(object sender, EventArgs e)
        {
            Rol.descripcion = ddlRoles2.SelectedValue;
            lblRolActualizado.Text = Rol.UpdatePerfil(txtNuevaDescripcion.Text);
            txtNuevaDescripcion.Text = "";
            cargar_RolesDropDownList();
        }

        protected void btnAsignarPermiso_Click(object sender, EventArgs e)
        {
            Rol.descripcion = ddlRoles3.SelectedValue;
            lblAsignacionPermiso.Text = Rol.AddPermission(ddlPermiso.SelectedValue);
            cargar_RolesDropDownList();
            cargar_PermissionsDropDownList();
        }

        protected void btnEliminarPermiso_Click(object sender, EventArgs e)
        {
            Rol.descripcion = ddlRoles3.SelectedValue;
            lblElminarPermiso.Text = Rol.DeletePermission(ddlPermiso.SelectedValue);
            cargar_RolesDropDownList();
            cargar_PermissionsDropDownList();
        }

        protected void btnConsultaPermisos_Click(object sender, EventArgs e)
        {
            ClsUsuario cuenta = new ClsUsuario();
            DataTable dt = new DataTable();
            dt = cuenta.GetPermissions(ddlUsuario.SelectedValue);
            gvPermisos.DataSource = dt;
            gvPermisos.DataBind();
            txtRolAsignado.Text = cuenta.GetPerfil(ddlUsuario.SelectedValue);
        }
        private void cargar_RolesDropDownList()
        {
            ClsPerfil Roles = new ClsPerfil();
            DataTable dt = new DataTable();

            dt = Roles.GetPerfiles();
            ddlRoles1.DataTextField = dt.Columns["Descripcion"].ToString();
            ddlRoles1.DataSource = dt;
            ddlRoles1.DataBind();

            ddlRoles2.DataTextField = dt.Columns["Descripcion"].ToString();
            ddlRoles2.DataSource = dt;
            ddlRoles2.DataBind();

            ddlRoles3.DataTextField = dt.Columns["Descripcion"].ToString();
            ddlRoles3.DataSource = dt;
            ddlRoles3.DataBind();
        }
        private void cargar_PermissionsDropDownList()
        {
            ClsPerfil Roles = new ClsPerfil();
            DataTable dt = new DataTable();

            dt = Roles.GetPermissions();
            ddlPermiso.DataTextField = dt.Columns["Descripcion"].ToString();
            ddlPermiso.DataSource = dt;
            ddlPermiso.DataBind();
        }
        private void cargar_UsersDropDownList()
        {
            ClsUsuario Usuarios = new ClsUsuario();
            DataTable dt = new DataTable();

            dt = Usuarios.GetUsers();
            ddlUsuario.DataTextField = dt.Columns["Cuenta"].ToString();
            ddlUsuario.DataSource = dt;
            ddlUsuario.DataBind();
        }         

    }
}