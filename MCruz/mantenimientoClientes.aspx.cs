using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MCruzNegocio;

namespace MCruz
{
    public partial class mantenimientoClientes : System.Web.UI.Page
    {
        private ClsClientes cli = new ClsClientes();
        protected void Page_Load(object sender, EventArgs e)
        {
            verClientes();
            btnGuargar.Visible = true;
            btnActualizar.Visible = false;
        }
        private void verClientes()
        {
            DataTable dt = new DataTable();
            dt = cli.VerClientes();
            listadoClientes.DataSource = dt;
            listadoClientes.DataBind();
        }

        protected void btnGuargar_Click(object sender, EventArgs e)
        {
            try
            {
                cli.Cedula = txtCedula.Text;
                cli.Nombre_Cliente = txtNombreCliente.Text;
                cli.Telefono_empresa = Convert.ToInt32(txtTelefonoCliente.Text);
                cli.Email_Cliente = txtEmailCliente.Text;
                cli.Fecha_Inclusion = DateTime.Now;
                cli.Tipo_de_Cliente = Convert.ToChar(drpTipoCliente.SelectedItem.Value);
                cli.Categoria_Cliente = Convert.ToChar(drpCategoriaCliente.SelectedItem.Value);
                cli.Extracto = txtExtracto.Text;
                lblResultadoIngreso.Text = cli.RegistrarClientes();
                LimpiarForm();
                verClientes();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void LimpiarForm()
        {
            txtCedula.Text = "";
            txtNombreCliente.Text = "";
            txtEmailCliente.Text = "";
            txtTelefonoCliente.Text = "";
            txtExtracto.Text = "";
            drpCategoriaCliente.SelectedIndex = 0;
            drpTipoCliente.SelectedIndex = 0;
        }

        protected void listadoClientes_ItemCommand(object sender, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case ("Borrar"):
                    cli.ID_Empresa = Convert.ToInt32(e.CommandArgument.ToString());
                    cli.borrarCliente();
                    verClientes();
                    break;
                case ("Editar"):
                    btnActualizar.Visible = true;
                    btnGuargar.Visible = false;
                    cli.ID_Empresa = Convert.ToInt32(e.CommandArgument.ToString());
                    DataTable dt = new DataTable();
                    dt = cli.obtenerCliente();
                    for (int i = 0; i < 1; i++)
                    {
                        lblResultadoIngreso.Text = "Editando Cliente #";
                        lblClienteManipulado.Text = cli.ID_Empresa.ToString();
                        txtCedula.Text = dt.Rows[i]["Cedula"].ToString();
                        txtNombreCliente.Text = dt.Rows[i]["Nombre_Cliente"].ToString();
                        txtEmailCliente.Text = dt.Rows[i]["Email"].ToString();
                        txtTelefonoCliente.Text = dt.Rows[i]["Telefono"].ToString();
                        drpTipoCliente.SelectedItem.Text = dt.Rows[i]["Tipo_Cliente"].ToString();
                        drpCategoriaCliente.SelectedItem.Text = dt.Rows[i]["Categoria_Cliente"].ToString();
                        txtExtracto.Text = dt.Rows[i]["Extracto"].ToString();
                    }
                    break;

            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            try
            {
                cli.ID_Empresa = Convert.ToInt32(lblClienteManipulado.Text);
                cli.Cedula = txtCedula.Text;
                cli.Nombre_Cliente = txtNombreCliente.Text;
                cli.Telefono_empresa = Convert.ToInt32(txtTelefonoCliente.Text);
                cli.Email_Cliente = txtEmailCliente.Text;
                cli.Fecha_Inclusion = DateTime.Now;
                cli.Tipo_de_Cliente = Convert.ToChar(drpTipoCliente.SelectedItem.Value == "Comercial" ? 2 : 1);
                cli.Categoria_Cliente = Convert.ToChar(drpCategoriaCliente.SelectedItem.Value);
                cli.Extracto = txtExtracto.Text;
                cli.ActualizarCliente();
                verClientes();
                LimpiarForm();
a
                //Response.Redirect(Request.RawUrl);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            if(lblClienteManipulado.Text.Length > 0)
            {
                LimpiarForm();
                btnActualizar.Visible = false;
                btnGuargar.Visible = true;
                lblClienteManipulado.Text = "";
                lblResultadoIngreso.Text = "";
            }
            else
            {
                LimpiarForm();
            }
        }
    }
}