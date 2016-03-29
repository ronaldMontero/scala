using System;
using System.Collections.Generic;
using System.Data;
using MCruzDatos;
using System.Web;
using MCruzNegocio;


namespace MCruzNegocio
{
    public class ClsPerfil
    {
        public ClsPerfil()
        {}
        public static DataTable GetPaginas1(int idPerfil)
        {
            ClsDatos M = new ClsDatos();
            List<ClsParametro> lst = new List<ClsParametro>();
            lst.Add(new ClsParametro("@idPerfil", idPerfil));
            return M.Listado("Permisos_IDRol", lst);
        }
        public static DataTable GetPaginas2(string Perfil)
        {
            ClsDatos M = new ClsDatos();
            List<ClsParametro> lst = new List<ClsParametro>();
            lst.Add(new ClsParametro("@DescripcionRol", Perfil));
            return M.Listado("Permisos_DescRol", lst);
        }
        public static bool IsPageEnabled(string pageName, string Perfil)
        {//Busca si un rol tiene permiso en una determinada pagina.
            ClsDatos M = new ClsDatos();
            DataTable dt = new DataTable();
            List<ClsParametro> lst = new List<ClsParametro>();
            bool result = false;

            CheckCache(Perfil);
            lst.Add(new ClsParametro("@DescripcionRol", Perfil));
            lst.Add(new ClsParametro("@Pagina", pageName));
            dt = M.Listado("BuscarPermiso_PerfilPagina", lst);
            if (dt.Rows.Count > 0)
                result = true;
            return result;
        }
        public static bool IsActionEnabled(string actionName, string Perfil)
        {//Falta implementar
            CheckCache(Perfil);
            bool result = false;
            return result;
        }
        public static void CheckCache(string Perfil)
        {
            try
            {
                if (HttpContext.Current.Cache.Get(Perfil) == null)
                    UserCache.AddPaginasToCache(Perfil, ClsPerfil.GetPaginas2(Perfil), HttpContext.Current);
            }
            catch (Exception ex)
            {
                throw ex;
                //log.Error(ex);*****************************
            }
        }
    }
}
