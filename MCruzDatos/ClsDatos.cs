using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace MCruzDatos
{
    public class ClsDatos
    {
        public SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=MCRUZDB2;Integrated Security=True");

        public void Conectar()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
        }
        public void Desconectar()
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
        public DataTable Listado(String nombreSP,List<ClsParametro> lst)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da;

            try
            {
                Conectar();
                da = new SqlDataAdapter(nombreSP, con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                
                //Se verifica si la lista no esta vacia.
                if(lst != null)
                //Recorre la lista
                {
                    for (int i = 0;i < lst.Count;i ++)
                    {
                        //Se pasa cada uno de los parametros
                        da.SelectCommand.Parameters.AddWithValue(lst[i].Nombre, lst[i].Valor);
                    }
                    da.Fill(dt);
                }
                else
                {
                    da.Fill(dt);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            Desconectar();
            return dt;
        }
        public void EjecutarSP(string NombreSP,ref List<ClsParametro> lst)
        {
            SqlCommand cmd;
            try
            {
                Conectar();
                cmd = new SqlCommand(NombreSP, con);
                cmd.CommandType = CommandType.StoredProcedure;
                //Verificar si la lista generica no esta vacia
                if (lst != null)
                {
                    //Recorremos la lista
                    for (int i = 0; i < lst.Count; i++)
                    {
                        //verificamos si los parametros son de entreada
                        if (lst[i].Direccion == ParameterDirection.Input)
                            cmd.Parameters.AddWithValue(lst[i].Nombre, lst[i].Valor);
                        //verificamos si los parametros son de salida
                        if (lst[i].Direccion == ParameterDirection.Output)
                            cmd.Parameters.Add(lst[i].Nombre, lst[i].TipoDato, lst[i].Tamanio).Direction = ParameterDirection.Output;
                    }
                    cmd.ExecuteNonQuery();
                    //Recuperamos los datos de salida
                    for (int i = 0; i < lst.Count; i++)
                    {
                        if (cmd.Parameters[i].Direction == ParameterDirection.Output)
                            lst[i].Valor = cmd.Parameters[i].Value;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
