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
    public partial class mantenimientoContactos : System.Web.UI.Page
    {
        private ClsContactoCliente cnt = new ClsContactoCliente();
        private ClsClientes clc = new ClsClientes();
        protected void Page_Load(object sender, EventArgs e)
        {
            verContactos();
            btnGuardar.Visible = true;
            btnActualizar.Visible = false;
        }

        protected void btnBuscaCliente_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            clc.Nombre_Cliente = txtBuscaCliente.Text;
            dt = clc.ListadoFiltrado();
            listadoClientes.DataSource = dt;
            listadoClientes.DataBind();
        }

        public void verContactos() {
            DataTable dt = new DataTable();
            dt = cnt.listarContactos();
            listarContactos.DataSource = dt;
            listarContactos.DataBind();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            cnt.Nombre = txtNombre.Text;
            cnt.Apellido1 = txtApellido1.Text;
            cnt.Apellido2 = txtApellido2.Text;
            cnt.Cedula = Convert.ToInt32(txtCedula.Text.Replace("-",""));
            cnt.Email = txtEmail1.Text;
            cnt.Email2 = txtEmail2.Text;
            cnt.Telefono1 = txtTelefono1.Text;
            cnt.Telefono2 = txtTelefono2.Text;
            cnt.Telefono3 = txtTelefono3.Text;
            cnt.Direccion1 = txtDireccion1.Text;
            cnt.Direccion2 = txtDireccion2.Text;
            cnt.ID_Empresa = Convert.ToInt32(hdID_Cliente.Value);
            
            cnt.RegistrarContactos();
            LimpiarForm();
            verContactos();
        }

        public void LimpiarForm() {
            txtCedula.Text = "";
            txtNombre.Text = "";
            txtApellido1.Text = "";
            txtApellido2.Text = "";
            txtEmail1.Text = "";
            txtEmail2.Text = "";
            txtTelefono1.Text = "";
            txtTelefono2.Text = "";
            txtTelefono3.Text = "";
            txtDireccion1.Text = "";
            txtDireccion2.Text = "";
            txtBuscaCliente.Text = "";
            DataTable dt = new DataTable();
            listadoClientes.DataSource = dt;
            listadoClientes.DataBind();
        }

        protected void listadoClientes_ItemCommand(object sender, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case ("Asociar"):
                    hdID_Cliente.Value = e.CommandArgument.ToString();
                    break;
            }
        }
    }
}