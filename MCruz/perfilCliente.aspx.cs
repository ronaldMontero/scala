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
    public partial class perfilCliente : System.Web.UI.Page
    {
        private ClsClientes cli = new ClsClientes();
        private ClsContactoCliente clc = new ClsContactoCliente();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["cliente"] != null)
            {
                cli.ID_Empresa = Convert.ToInt32(Request["cliente"]);
                clc.ID_Empresa = Convert.ToInt32(Request["cliente"]);
                DataTable dt = new DataTable();
                dt = cli.obtenerCliente();
                
                if (dt.Rows.Count > 0)
                {
                    lblNombreCliente.Text = dt.Rows[0]["Nombre_Cliente"].ToString();
                    lblCedulaJuridica.Text = dt.Rows[0]["Cedula_Juridica"].ToString();
                    lblExtracto.Text = dt.Rows[0]["Extracto"].ToString();
                    lblEmail.Text = dt.Rows[0]["Email"].ToString();
                    lblTipoCliente.Text = dt.Rows[0]["Tipo_Cliente"].ToString();
                    lblTelefono.Text = dt.Rows[0]["Telefono"].ToString();
                    if (dt.Rows[0]["Estado"].ToString() == "0")
                    {
                        lblEstadoCliente.Text = "Activo";
                    }
                    else
                    {
                        lblEstadoCliente.Text = "Inactivo";
                    }
                    switch (dt.Rows[0]["Categoria_Cliente"].ToString())
                    {
                        case ("A"):
                            //header - line <%# Eval("Categoria_Cliente").ToString() %> extreme-color
                            dt.Rows[0]["Categoria_Cliente"] = "hgreen";
                            break;
                        case ("B"):
                            dt.Rows[0]["Categoria_Cliente"] = "horange";
                            break;
                        case ("C"):
                            dt.Rows[0]["Categoria_Cliente"] = "hred";
                            break;
                        default:
                            dt.Rows[0]["Categoria_Cliente"] = "hviolet";
                            break;
                    }
                    detallesCliente.Attributes["class"] = "hpanel " + dt.Rows[0]["Categoria_Cliente"];
                }
                //Contactos
                DataTable dtc = new DataTable();
                dtc = clc.listarContactosPorID();
                listadoContactos.DataSource = dtc;
                listadoContactos.DataBind();
            }            
        }
    }
}