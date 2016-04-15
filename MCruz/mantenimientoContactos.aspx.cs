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
            if(txtCedula.Text.Length == 0)
            {
                btnGuardar.Visible = true;
                btnActualizar.Visible = false;
            }
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

        protected void listarContactos_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case ("EliminaAsociacion"):
                    cnt.ID_Persona = Convert.ToInt32(e.CommandArgument.ToString());
                    cnt.borrarAsociacion();
                    verContactos();
                    break;
                case ("Borrar"):
                    cnt.ID_Persona = Convert.ToInt32(e.CommandArgument.ToString());
                    cnt.borrarContacto();
                    verContactos();
                    break;
                case ("Editar"):
                    btnActualizar.Visible = true;
                    btnGuardar.Visible = false;
                    cnt.ID_Persona = Convert.ToInt32(e.CommandArgument.ToString());
                    DataTable dt = new DataTable();
                    dt = cnt.obtenerContacto();
                    for (int i = 0; i < 1; i++)
                    {
                        hdID_Cliente.Value= dt.Rows[i]["ID_Empresa"].ToString();
                        hdID_Persona.Value = dt.Rows[i]["ID_Persona"].ToString();
                        txtCedula.Text = dt.Rows[i]["Cedula"].ToString();
                        txtNombre.Text = dt.Rows[i]["Nombre"].ToString();
                        txtApellido1.Text = dt.Rows[i]["Apellido1"].ToString();
                        txtApellido2.Text = dt.Rows[i]["Apellido2"].ToString();
                        txtEmail1.Text = dt.Rows[i]["Email"].ToString();
                        txtEmail2.Text = dt.Rows[i]["Email2"].ToString();
                        txtTelefono1.Text = dt.Rows[i]["Telefono1"].ToString();
                        txtTelefono2.Text = dt.Rows[i]["Telefono2"].ToString();
                        txtDireccion1.Text = dt.Rows[i]["Direccion1"].ToString();
                        txtDireccion2.Text = dt.Rows[i]["Direccion2"].ToString();
                    }
                    break;
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            cnt.ID_Persona = Convert.ToInt32(hdID_Persona.Value);
            cnt.Nombre = txtNombre.Text;
            cnt.Apellido1 = txtApellido1.Text;
            cnt.Apellido2 = txtApellido2.Text;
            cnt.Cedula = Convert.ToInt32(txtCedula.Text.Replace("-", ""));
            cnt.Email = txtEmail1.Text;
            cnt.Email2 = txtEmail2.Text;
            cnt.Telefono1 = txtTelefono1.Text;
            cnt.Telefono2 = txtTelefono2.Text;
            cnt.Telefono3 = txtTelefono3.Text;
            cnt.Direccion1 = txtDireccion1.Text;
            cnt.Direccion2 = txtDireccion2.Text;
            cnt.ID_Empresa = Convert.ToInt32(hdID_Cliente.Value);

            cnt.ActualizarContacto();
            LimpiarForm();
            verContactos();
        }
    }
}