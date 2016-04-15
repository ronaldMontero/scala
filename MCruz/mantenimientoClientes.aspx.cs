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
            string msg;
            string result;
            try
            {
                cli.Cedula_Juridica = txtCedula.Text;
                cli.Nombre_Cliente = txtNombreCliente.Text;
                cli.Telefono_empresa = txtTelefonoCliente.Text;
                cli.Email_Empresa = txtEmailCliente.Text;
                cli.Tipo_Cliente = drpTipoCliente.SelectedItem.Text;
                cli.Categoria_Cliente = drpCategoriaCliente.SelectedItem.Value;
                cli.Extracto = txtExtracto.Text;
                msg = cli.RegistrarClientes();
                if (msg.Contains("Error")){
                    result = "error";
                }else{
                    result = "success";
                }
                Page.ClientScript.RegisterStartupScript(this.GetType(), "sendMessage", "sendMessage('" + result + "', '"  + msg + "');", true);
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
            string msg;
            string result;
            try{
                switch (e.CommandName)
                {
                    case ("Borrar"):
                        cli.ID_Empresa = Convert.ToInt32(e.CommandArgument.ToString());
                        msg = cli.borrarCliente();
                        if (msg.Contains("Error")){
                            result = "error";
                        }else{
                            result = "success";
                        }
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "sendMessage", "sendMessage('" + result + "', '"  + msg + "');", true);                        
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
                            txtCedula.Text = dt.Rows[i]["Cedula_Juridica"].ToString();
                            txtNombreCliente.Text = dt.Rows[i]["Nombre_Cliente"].ToString();
                            txtEmailCliente.Text = dt.Rows[i]["Email"].ToString();
                            txtTelefonoCliente.Text = dt.Rows[i]["Telefono"].ToString();
                            drpTipoCliente.SelectedItem.Text = dt.Rows[i]["Tipo_Cliente"].ToString();
                            drpCategoriaCliente.SelectedItem.Text = dt.Rows[i]["Categoria_Cliente"].ToString();
                            txtExtracto.Text = dt.Rows[i]["Extracto"].ToString();
                        }
                        break;

                }
            }catch(Exception ex){
                throw ex;
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            string msg;
            string result;
            try
            {
                cli.ID_Empresa = Convert.ToInt32(lblClienteManipulado.Text);
                cli.Cedula_Juridica = txtCedula.Text;
                cli.Nombre_Cliente = txtNombreCliente.Text;
                cli.Telefono_empresa = txtTelefonoCliente.Text;
                cli.Email_Empresa = txtEmailCliente.Text;
                cli.Tipo_Cliente = drpTipoCliente.SelectedItem.Value;
                cli.Categoria_Cliente = drpCategoriaCliente.SelectedItem.Value;
                cli.Extracto = txtExtracto.Text;
                msg = cli.ActualizarCliente();
                if (msg.Contains("Error")){
                    result = "error";
                }else{
                    result = "success";
                }
                Page.ClientScript.RegisterStartupScript(this.GetType(), "sendMessage", "sendMessage('" + result + "', '"  + msg + "');", true);                
                verClientes();
                lblClienteManipulado.Text = "";
                LimpiarForm();

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