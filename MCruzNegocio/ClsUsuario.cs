using System;
using System.Data;
using System.Web;
using MCruzDatos;
using System.Collections.Generic;


namespace MCruzNegocio
{
    public class ClsUsuario
    {
        public int m_idusuario { get; set; }
        public int m_idpersona { get; set; }
        public string m_cuenta { get; set; }
        public string m_contrasenna { get; set; }
        public int m_estado { get; set; }
        public int m_idrol { get; set; }


        public ClsUsuario()
        {}
        public ClsUsuario(int v_idusuario, int v_idpersona, string v_cuenta, string v_contrasenna,
                          int v_estado, int v_idrol)
        {
            m_idusuario = v_idusuario;
            m_idpersona = v_idpersona;
            m_cuenta = v_cuenta;
            m_contrasenna = v_contrasenna;
            m_estado = v_estado;
            m_idrol = v_idrol;
        }
        public ClsUsuario(string v_cuenta, string v_contrasenna,int v_estado, int v_idrol)
        {
            m_cuenta = v_cuenta;
            m_contrasenna = v_contrasenna;
            m_estado = v_estado;
            m_idrol = v_idrol;
        }

        /// <summary>
        /// Devuelve el Perfil de un usuario
        /// </summary>
        /// <param name="usuario"></param>
        /// <param name="clave"></param>
        /// <returns></returns>
        public bool ValidarUsuario()
        {
            ClsDatos M = new ClsDatos();
            DataTable dt = new DataTable();
            List<ClsParametro> lst = new List<ClsParametro>();
            bool result = false;
            lst.Add(new ClsParametro("@Cuenta", m_cuenta));
            lst.Add(new ClsParametro("@Contrasenna", m_contrasenna));
            dt = M.Listado("ComprobarUsuarioContrasena", lst);
            if (dt.Rows.Count > 0)
                result = true;
            return result;
        }
        public string AddUser()
        {
            List<ClsParametro> lst = new List<ClsParametro>();
            ClsDatos M = new ClsDatos();
            try
            {
                lst.Add(new ClsParametro("@NombreCuenta", m_cuenta));
                lst.Add(new ClsParametro("@Contrasenna", m_contrasenna));
                lst.Add(new ClsParametro("@Estado", m_estado));
                lst.Add(new ClsParametro("@IdRol", m_idrol));
                lst.Add(new ClsParametro("@Mensaje", "", SqlDbType.VarChar, ParameterDirection.Output, 100));
                M.EjecutarSP("InsertarUsuario", ref lst);
            }
            catch (Exception)
            {
                throw;
            }
            return lst[4].Valor.ToString();
        }
        public string DeleteUser()
        {
            List<ClsParametro> lst = new List<ClsParametro>();
            ClsDatos M = new ClsDatos();
            try
            {
                lst.Add(new ClsParametro("@Usuario", m_cuenta));
                lst.Add(new ClsParametro("@Mensaje", "", SqlDbType.VarChar, ParameterDirection.Output, 100));
                M.EjecutarSP("EliminarUsuario", ref lst);
            }
            catch (Exception)
            {
                throw;
            }
            return lst[1].Valor.ToString();
        }
        public string UpdateUser()
        {
            List<ClsParametro> lst = new List<ClsParametro>();
            ClsDatos M = new ClsDatos();
            try
            {
                lst.Add(new ClsParametro("@idUsuario", m_idusuario));
                lst.Add(new ClsParametro("@Cuenta", m_cuenta));
                lst.Add(new ClsParametro("@Clave", m_contrasenna));
                lst.Add(new ClsParametro("@Estado", m_estado));
                lst.Add(new ClsParametro("@idPerfil", m_idrol));
                lst.Add(new ClsParametro("@Mensaje", "", SqlDbType.VarChar, ParameterDirection.Output, 100));
                M.EjecutarSP("ActualizarUsuario", ref lst);
            }
            catch (Exception)
            {
                throw;
            }
            return lst[5].Valor.ToString();
        }
        public string UpdateIdDPerfil(int idViejo)
        {
            List<ClsParametro> lst = new List<ClsParametro>();
            ClsDatos M = new ClsDatos();
            try
            {
                lst.Add(new ClsParametro("@idPerfil", idViejo));
                lst.Add(new ClsParametro("@Mensaje", "", SqlDbType.VarChar, ParameterDirection.Output, 100));
                M.EjecutarSP("ActualizarIDPerfil", ref lst);
            }
            catch (Exception)
            {
                throw;
            }
            return lst[1].Valor.ToString();
        }

        public int GetIdUsuario(string usuario)
        {
            ClsDatos M = new ClsDatos();
            DataTable dt = new DataTable();
            List<ClsParametro> lst = new List<ClsParametro>();
            int idPerfil = 0;
            lst.Add(new ClsParametro("@Cuenta", usuario));
            dt = M.Listado("BuscarIDUsuario_Cuenta", lst);
            if (dt.Rows.Count > 0)
                idPerfil = Convert.ToInt32(dt.Rows[0]["idUsuario"]);
            return idPerfil;
        }
        public int GetIdPerfil(string usuario, string clave)
        {
            ClsDatos M = new ClsDatos();
            DataTable dt = new DataTable();
            List<ClsParametro> lst = new List<ClsParametro>();
            int idPerfil = 0;
            lst.Add(new ClsParametro("@Cuenta", usuario));
            lst.Add(new ClsParametro("@Contrasenna", clave));
            dt = M.Listado("BuscarIDPerfil_UserPassword", lst);
            if (dt.Rows.Count > 0)
                idPerfil = Convert.ToInt32(dt.Rows[0]["idPerfil"]);
            return idPerfil;
        }

        /// <summary>
        /// Devuelve el Perfil de un usuario
        /// </summary>
        /// <param name="usuario"></param>
        /// <param name="clave"></param>
        /// <returns></returns>
        public int GetIdPerfil(string usuario)
        {
            ClsDatos M = new ClsDatos();
            DataTable dt = new DataTable();
            List<ClsParametro> lst = new List<ClsParametro>();
            int idPerfil = 0;
            lst.Add(new ClsParametro("@Cuenta", usuario));
            dt = M.Listado("BuscarIDPerfil_User", lst);
            if (dt.Rows.Count > 0)
                idPerfil = Convert.ToInt32(dt.Rows[0]["idPerfil"]);
            return idPerfil;
        }


        /// <summary>
        /// Devuelve el Perfil de un usuario
        /// </summary>
        /// <param name="usuario"></param>
        /// <param name="clave"></param>
        /// <returns></returns>
        public string GetPerfil(string usuario, string clave)
        {
            ClsDatos M = new ClsDatos();
            string Perfil = "";
            DataTable dt = new DataTable();
            List<ClsParametro> lst = new List<ClsParametro>();
            lst.Add(new ClsParametro("@Cuenta", usuario));
            lst.Add(new ClsParametro("@contrasenna", clave));
            dt = M.Listado("BuscarPerfil_UsuarioContrasena", lst);
            if (dt.Rows.Count > 0)
                Perfil = Convert.ToString(dt.Rows[0]["Descripcion"]);
            return Perfil;
        }

        /// <summary>
        /// Devuelve el Perfil de un usuario
        /// </summary>
        /// <param name="usuario"></param>
        /// <returns></returns>
        public string GetPerfil(string usuario)
        {
            ClsDatos M = new ClsDatos();
            string Perfil = "";
            DataTable dt = new DataTable();
            List<ClsParametro> lst = new List<ClsParametro>();
            lst.Add(new ClsParametro("@Cuenta", usuario));
            dt = M.Listado("BuscarPerfil_Usuario", lst);
            if (dt.Rows.Count > 0)
                Perfil = Convert.ToString(dt.Rows[0]["Descripcion"]);
            return Perfil;
        }
        public DataTable GetUsers()
        {
            ClsDatos M = new ClsDatos();
            DataTable dt = new DataTable();
            dt = M.Listado("ListarUsuarios", null);
            return dt;
        }
        public DataTable GetUser()
        {
            ClsDatos M = new ClsDatos();
            DataTable dt = new DataTable();
            List<ClsParametro> lst = new List<ClsParametro>();
            lst.Add(new ClsParametro("@Cuenta", m_cuenta));
            dt = M.Listado("BuscarUsuario_Cuenta", lst);
            return dt;
        }
        public DataTable GetPermissions(string usuario)
        {//Obtiene permisos de una determinada cuenta que se le pasa por parametro.
            ClsDatos M = new ClsDatos();
            DataTable dt = new DataTable();
            List<ClsParametro> lst = new List<ClsParametro>();
            lst.Add(new ClsParametro("@Cuenta", usuario));
            dt = M.Listado("ListarPermisosPorCuenta", lst);
            return dt;
        }

    }
}
