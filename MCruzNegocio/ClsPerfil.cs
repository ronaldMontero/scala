using System;
using System.Collections.Generic;
using System.Data;
using MCruzDatos;
using System.Web;

namespace MCruzNegocio
{
    public class ClsPerfil
    {
        public string descripcion { set; get; }

        public ClsPerfil()
        {
            descripcion = "";
        }
        public static DataTable GetPaginas1(int idPerfil)
        {
            ClsDatos M = new ClsDatos();
            List<ClsParametro> lst = new List<ClsParametro>();
            lst.Add(new ClsParametro("@idPerfil", idPerfil));
            return M.Listado("BuscarPerPaginas_IDRol", lst);
        }
        public static DataTable GetPaginas2(string Perfil)
        {
            ClsDatos M = new ClsDatos();
            List<ClsParametro> lst = new List<ClsParametro>();
            lst.Add(new ClsParametro("@DescripcionRol", Perfil));
            return M.Listado("BuscarPerPaginas_DescRol", lst);
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
            dt = M.Listado("BuscarPerPaginas_PerfilPagina", lst);
            if (dt.Rows.Count > 0)
                result = true;
            return result;
        }
        public static bool IsActionEnabled(string actionName, string Perfil)
        {//Falta implementar

            ClsDatos M = new ClsDatos();
            DataTable dt = new DataTable();
            List<ClsParametro> lst = new List<ClsParametro>();
            bool result = false;

            CheckCache(Perfil);
            lst.Add(new ClsParametro("@DescripcionRol", Perfil));
            lst.Add(new ClsParametro("@Accion", actionName));
            dt = M.Listado("BuscarPerAccion_PerfilAccion", lst);
            if (dt.Rows.Count > 0)
                result = true;
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
        public DataTable GetPerfiles()
        {
            ClsDatos M = new ClsDatos();
            DataTable dt = new DataTable();
            dt = M.Listado("ListarRoles", null);
            return dt;
        }
        public string AddPerfil()
        {
            List<ClsParametro> lst = new List<ClsParametro>();
            ClsDatos M = new ClsDatos();
            try
            {
                lst.Add(new ClsParametro("@Descripcion", descripcion));
                lst.Add(new ClsParametro("@Mensaje","", SqlDbType.VarChar,ParameterDirection.Output,100));
                M.EjecutarSP("InsertarRol", ref lst);
            }
            catch (Exception)
            {
                throw;
            }
            return lst[1].Valor.ToString();
        }
        public string DeletePerfil()
        {
            List<ClsParametro> lst = new List<ClsParametro>();
            ClsDatos M = new ClsDatos();
            try
            {
                lst.Add(new ClsParametro("@Descripcion", descripcion));
                lst.Add(new ClsParametro("@Mensaje", "", SqlDbType.VarChar, ParameterDirection.Output, 100));
                M.EjecutarSP("EliminarRol", ref lst);
            }
            catch (Exception)
            {
                throw;
            }
            return lst[1].Valor.ToString();
        }
        public string UpdatePerfil(String nuevoNombre)
        {
            List<ClsParametro> lst = new List<ClsParametro>();
            ClsDatos M = new ClsDatos();
            try
            {
                lst.Add(new ClsParametro("@Descripcion", descripcion));
                lst.Add(new ClsParametro("@DescripcionNueva", nuevoNombre));
                lst.Add(new ClsParametro("@Mensaje", "", SqlDbType.VarChar, ParameterDirection.Output, 100));
                M.EjecutarSP("ActualizarRol", ref lst);
            }
            catch (Exception)
            {
                throw;
            }
            return lst[2].Valor.ToString();
        }
        public DataTable GetPermissions()
        {
            ClsDatos M = new ClsDatos();
            DataTable dt = new DataTable();
            dt = M.Listado("ListarPermisos",null);
            return dt;
        }
        public string AddPermission(String Permission)
        {
            List<ClsParametro> lst = new List<ClsParametro>();
            ClsDatos M = new ClsDatos();
            try
            {
                lst.Add(new ClsParametro("@DescripcionRol", descripcion));
                lst.Add(new ClsParametro("@DescripcionPermiso", Permission));
                lst.Add(new ClsParametro("@Mensaje", "", SqlDbType.VarChar, ParameterDirection.Output, 100));
                M.EjecutarSP("InsertarPermisosPorRol", ref lst);
            }
            catch (Exception)
            {
                throw;
            }
            return lst[2].Valor.ToString();
        }
        public string DeletePermission(String Permission)
        {
            List<ClsParametro> lst = new List<ClsParametro>();
            ClsDatos M = new ClsDatos();
            try
            {
                lst.Add(new ClsParametro("@DescripcionRol", descripcion));
                lst.Add(new ClsParametro("@DescripcionPermiso", Permission));
                lst.Add(new ClsParametro("@Mensaje", "", SqlDbType.VarChar, ParameterDirection.Output, 100));
                M.EjecutarSP("EliminarPermisosPorRol", ref lst);
            }
            catch (Exception)
            {
                throw;
            }
            return lst[2].Valor.ToString();
        }
    }
}
