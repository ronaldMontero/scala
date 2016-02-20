using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MCruzDatos;
using System.Data;
using System.Data.SqlClient;

namespace MCruzNegocio
{
    public class ClsNegocio
    {
        private ClsDatos M = new ClsDatos();

        //atributos
        private int m_cedula;
        private string m_nombre;
        private string m_apellido;
        private string m_pass;
        private string m_email;
        private int m_estado;
        private int m_rol;

        //propiedades

        public int cedula
        {
            get { return m_cedula; }
            set { m_cedula = value; }
        }
        public string nombre
        {
            get { return m_nombre; }
            set { m_nombre = value; }
        }
        public string apellido
        {
            get { return m_apellido; }
            set { m_apellido = value; }
        }
        public string pass
        {
            get { return m_pass; }
            set { m_pass = value; }
        }

        public string email
        {
            get { return m_email; }
            set { m_email = value; }
        }

        public int estado
        {
            get { return m_estado; }
            set { m_estado = value; }
        }

        public int rol
        {
            get { return m_rol; }
            set { m_rol = value; }
        }


        public DataTable Listado()
        {
            return M.Listado("<nombre SP en DB",null);
        }

        public String RegistrarUsuario()
        {
            //SqlCommand cmd;
            List<ClsParametro> lst = new List<ClsParametro>();
            string Mensaje = "";
            try
            {
                //Pasamos parametros de entrada;
                lst.Add(new ClsParametro("@cedula",m_cedula));
                lst.Add(new ClsParametro("@nombre", m_nombre));
                lst.Add(new ClsParametro("@apellido", m_apellido));
                lst.Add(new ClsParametro("@pass", m_pass));
                lst.Add(new ClsParametro("@email", m_email));
                lst.Add(new ClsParametro("@estado", m_estado));
                lst.Add(new ClsParametro("@rol", m_rol));
                //pasamos datos de salida
                //lst.Add(new ClsParametro("@Mensaje")) se maneja "out" a nivel de SP;
                M.EjecutarSP("registrar_usuario", ref lst);
                Mensaje=lst[6].Valor.ToString();
            }
            catch (Exception)
            {
                throw;
            }
            return Mensaje;
        }

        public string Modificar_Usuario()
        {
            //SqlCommand cmd;
            List<ClsParametro> lst = new List<ClsParametro>();
            string Mensaje = "";
            try
            {
                //Pasamos parametros de entrada;
                lst.Add(new ClsParametro("@cedula", m_cedula));
                lst.Add(new ClsParametro("@nombre", m_nombre));
                lst.Add(new ClsParametro("@apellido", m_apellido));
                lst.Add(new ClsParametro("@pass", m_pass));
                lst.Add(new ClsParametro("@email", m_email));
                lst.Add(new ClsParametro("@estado", m_estado));
                lst.Add(new ClsParametro("@rol", m_rol));
                //pasamos datos de salida
                //lst.Add(new ClsParametro("@Mensaje")) se maneja "out" a nivel de SP;
                M.EjecutarSP("modificar_usuario", ref lst);
                Mensaje = lst[6].Valor.ToString();
            }
            catch (Exception)
            {
                throw;
            }
            return Mensaje;
        }
        public string Borrar_Usuario()
        {
            //SqlCommand cmd;
            List<ClsParametro> lst = new List<ClsParametro>();
            string Mensaje = "";
            try
            {
                //Pasamos parametros de entrada;
                lst.Add(new ClsParametro("@cedula", m_cedula));
                //pasamos datos de salida
                //lst.Add(new ClsParametro("@Mensaje")) se maneja "out" a nivel de SP;
                M.EjecutarSP("borrar_usuario", ref lst);
                Mensaje = lst[0].Valor.ToString();
            }
            catch (Exception)
            {
                throw;
            }
            return Mensaje;
        }
    }
}
