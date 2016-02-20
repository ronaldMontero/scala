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
    public partial class WebFormPruebaConeccion : System.Web.UI.Page
    {
        private ClsNegocio Negocio = new ClsNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            ListarUsuario();
        }
        private void ListarUsuario()
        {
            DataTable dt = new DataTable();
            dt = Negocio.Listado();

           // Recorre el DataTable
            //for (int i = 0; i < dt.Rows.Count; i++)
            //{
            //    GridView1.Rows[i].Cells[0].= dt.Rows[i][0].ToString();
            //}
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Negocio.cedula = Convert.ToInt32(txtCed.Text);
            Negocio.nombre = txtName.Text;
            Negocio.apellido = txtSurName.Text;
            Negocio.pass = txtPass.Text;
            Negocio.email = txtEmail.Text;
            Negocio.estado = Int16.Parse(txtEstado.Text);
            Negocio.rol = short.Parse(txtRol.Text);
            Negocio.RegistrarUsuario();
        }

        protected void btnModificarUsuario_Click(object sender, EventArgs e)
        {
            Negocio.cedula = Convert.ToInt32(txtCed.Text);
            Negocio.nombre = txtName.Text;
            Negocio.apellido = txtSurName.Text;
            Negocio.pass = txtPass.Text;
            Negocio.email = txtEmail.Text;
            Negocio.estado = Int16.Parse(txtEstado.Text);
            Negocio.rol = short.Parse(txtRol.Text);
            Negocio.Modificar_Usuario();
        }

        protected void btnBorrarUsuario_Click(object sender, EventArgs e)
        {
            Negocio.cedula = Convert.ToInt32(txtCed.Text);
            Negocio.Borrar_Usuario();
        }
    }


}