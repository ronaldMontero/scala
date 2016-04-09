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
    public class ClsContactoCliente
    {
        private ClsDatos ct = new ClsDatos();

        //Atributos
        private int ct_ID_Persona;
        private int ct_Cedula;
        private string ct_nombre;
        private string ct_apellido1;
        private string ct_apellido2;
        private string ct_Email;
        private string ct_Email2;
        private string ct_Telefono1;
        private string ct_Telefono2;
        private string ct_Telefono3;
        private string ct_Direccion1;
        private string ct_Direccion2;
        private int ct_ID_Empresa;

        //Propiedades
        public int ID_Persona
        {
            get
            {
                return ct_ID_Persona;
            }

            set
            {
                ct_ID_Persona = value;
            }
        }

        public int Cedula
        {
            get
            {
                return ct_Cedula;
            }

            set
            {
                ct_Cedula = value;
            }
        }

        public string Nombre
        {
            get
            {
                return ct_nombre;
            }

            set
            {
                ct_nombre = value;
            }
        }

        public string Apellido1
        {
            get
            {
                return ct_apellido1;
            }

            set
            {
                ct_apellido1 = value;
            }
        }

        public string Apellido2
        {
            get
            {
                return ct_apellido2;
            }

            set
            {
                ct_apellido2 = value;
            }
        }

        public string Email
        {
            get
            {
                return ct_Email;
            }

            set
            {
                ct_Email = value;
            }
        }

        public string Email2
        {
            get
            {
                return ct_Email2;
            }

            set
            {
                ct_Email2 = value;
            }
        }

        public string Telefono1
        {
            get
            {
                return ct_Telefono1;
            }

            set
            {
                ct_Telefono1 = value;
            }
        }

        public string Telefono2
        {
            get
            {
                return ct_Telefono2;
            }

            set
            {
                ct_Telefono2 = value;
            }
        }

        public string Telefono3
        {
            get
            {
                return ct_Telefono3;
            }

            set
            {
                ct_Telefono3 = value;
            }
        }

        public string Direccion1
        {
            get
            {
                return ct_Direccion1;
            }

            set
            {
                ct_Direccion1 = value;
            }
        }

        public string Direccion2
        {
            get
            {
                return ct_Direccion2;
            }

            set
            {
                ct_Direccion2 = value;
            }
        }

        public int ID_Empresa
        {
            get
            {
                return ct_ID_Empresa;
            }

            set
            {
                ct_ID_Empresa = value;
            }
        }

        public DataTable listarContactos()
        {
            List<ClsParametro> lstParam = new List<ClsParametro>();
            try
            {
                lstParam.Add(new ClsParametro("@id", null));
                lstParam.Add(new ClsParametro("@nombre", null));
            }
            catch (Exception)
            {
                throw;
            }
            return ct.Listado("spListarContactos", lstParam);
        }
        //Funciones
        public DataTable listarContactosFiltrado()
        {
            List<ClsParametro> lstParam = new List<ClsParametro>();
            try
            {
                lstParam.Add(new ClsParametro("@id", ct_ID_Empresa));
                lstParam.Add(new ClsParametro("@nombre", ct_nombre));
            }
            catch (Exception)
            {
                throw;
            }
            return ct.Listado("spListarContactos", lstParam);
        }

        public void RegistrarContactos()
        {
            //SqlCommand cmd;
            List<ClsParametro> lst = new List<ClsParametro>();
            try
            {
                //Pasamos parametros de entrada;
                lst.Add(new ClsParametro("@cedula", ct_Cedula));
                lst.Add(new ClsParametro("@nombre", ct_nombre));
                lst.Add(new ClsParametro("@apellido1", ct_apellido1));
                lst.Add(new ClsParametro("@apellido2", ct_apellido2));
                lst.Add(new ClsParametro("@email1", ct_Email));
                lst.Add(new ClsParametro("@email2", ct_Email2));
                lst.Add(new ClsParametro("@telefono1", ct_Telefono1));
                lst.Add(new ClsParametro("@telefono2", ct_Telefono2));
                lst.Add(new ClsParametro("@telefono3", ct_Telefono3));
                lst.Add(new ClsParametro("@direccion1", ct_Direccion1));
                lst.Add(new ClsParametro("@direccion2", ct_Direccion2));
                lst.Add(new ClsParametro("@idCliente", ct_ID_Empresa));
                ct.EjecutarSP("spRegistrarContactos", ref lst);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
