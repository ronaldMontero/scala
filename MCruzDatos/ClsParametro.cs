using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace MCruzDatos
{
    public class ClsParametro
    {
        //Atributos
        private String m_nombre;
        private Object m_valor;

        //atributos para llevar acabo un registro
        private SqlDbType m_TipoDato;
        private ParameterDirection m_Direccion;
        private int m_Tamanio;

        //Propiedades
        public string Nombre
        {
            get { return m_nombre; }
            set { m_nombre = value; }
        }
        public Object Valor
        {
            get { return m_valor; }
            set { m_valor = value; }
        }
        public SqlDbType TipoDato
        {
            get { return m_TipoDato; }
            set { m_TipoDato = value; }
        }
        public ParameterDirection Direccion
        {
            get { return m_Direccion; }
            set { m_Direccion = value; }
        }
        public int Tamanio
        {
            get { return m_Tamanio; }
            set { m_Tamanio = value; }
        }


        //Constructor
        public ClsParametro(string ObjNombre,Object ObjValor)
        {
            m_nombre = ObjNombre;
            m_valor = ObjValor;
            m_Direccion = ParameterDirection.Input;
        }
        public ClsParametro(String objNombre,object objValor, SqlDbType objTipoDato, ParameterDirection objDireccion,int objTamanio)
        {
            m_nombre = objNombre;
            m_valor = objValor;
            m_TipoDato = objTipoDato;
            m_Direccion = objDireccion;
            m_Tamanio = objTamanio;
        }
        
    }
}
