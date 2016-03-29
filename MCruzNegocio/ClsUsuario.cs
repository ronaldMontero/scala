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
        public string m_usuario { get; set; }
        public string m_contrasena { get; set; }
        public int m_idperfil { get; set; }
        public int m_estado { get; set; }
        public int m_idrol { get; set; }


        public ClsUsuario()
        {}

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
            lst.Add(new ClsParametro("@Usuario", m_usuario));
            lst.Add(new ClsParametro("@Contrasena", m_contrasena));
            dt = M.Listado("ComprobarUsuarioContrasena", lst);
            if (dt.Rows.Count > 0)
                result = true;
            return result;
        }
        public int GetIdPerfil(string usuario, string clave)
        {
            ClsDatos M = new ClsDatos();
            DataTable dt = new DataTable();
            List<ClsParametro> lst = new List<ClsParametro>();
            int idPerfil = 0;
            lst.Add(new ClsParametro("@Usuario", usuario));
            lst.Add(new ClsParametro("@Contrasena", clave));
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
            lst.Add(new ClsParametro("@Usuario", usuario));
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
            lst.Add(new ClsParametro("@Usuario", usuario));
            lst.Add(new ClsParametro("@contrasena", clave));
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
            lst.Add(new ClsParametro("@Usuario", usuario));
            dt = M.Listado("BuscarPerfil_Usuario", lst);
            if (dt.Rows.Count > 0)
                Perfil = Convert.ToString(dt.Rows[0]["Descripcion"]);
            return Perfil;
        }
    }
}
