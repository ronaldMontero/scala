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
    public class ClsClientes
    {
        private ClsDatos cl = new ClsDatos();

        //atributos
        private int cl_ID_Empresa;
        private string cl_Nombre_Cliente;
        private char cl_Tipo_de_Cliente;
        private char cl_Categoria_Cliente;
        private int cl_Telefono_empresa;
        private string cl_Extracto;
        private DateTime cl_Fecha_Inclusion;
        private string cl_Cedula;

        //propiedades

        public int ID_Empresa
        {
            get { return cl_ID_Empresa; }
            set { cl_ID_Empresa = value; }
        }
        public string Nombre_Cliente
        {
            get { return cl_Nombre_Cliente; }
            set { cl_Nombre_Cliente = value; }
        }
        public char Tipo_de_Cliente
        {
            get { return cl_Tipo_de_Cliente; }
            set { cl_Tipo_de_Cliente = value; }
        }
        public char Categoria_Cliente
        {
            get { return cl_Categoria_Cliente; }
            set { cl_Categoria_Cliente = value; }
        }
        public int Telefono_empresa
        {
            get { return cl_Telefono_empresa; }
            set { cl_Telefono_empresa = value; }
        }
        public string Extracto
        {
            get { return cl_Extracto; }
            set { cl_Extracto = value; }
        }

        public DateTime Fecha_Inclusion
        {
            get { return cl_Fecha_Inclusion; }
            set { cl_Fecha_Inclusion = value; }
        }

        public string Cedula
        {
            get { return cl_Cedula; }
            set { cl_Cedula = value; }
        }

        public DataTable VerClientes()
        {
            return cl.Listado("spClientes", null);
        }
        public DataTable Listado()
        {
            return cl.Listado("spTodosClientes", null);
        }
        public DataTable ListadoFiltrado() 
        {
            List<ClsParametro> lstParam = new List<ClsParametro>();
            try
            {
                lstParam.Add(new ClsParametro("@nombre", cl_Nombre_Cliente));
                lstParam.Add(new ClsParametro("@tipoCliente", cl_Tipo_de_Cliente));
                lstParam.Add(new ClsParametro("@clasificacion", cl_Categoria_Cliente));
            }
            catch(Exception)
            {
                throw;
            }
            return cl.Listado("spListarClientes", lstParam);
        }
    }
}
