using System;
using System.Web.Security;
using System.Security.Principal;
using MCruzNegocio;

namespace MCruzNegocio
{
    public class ClsSeguridad : IPrincipal, IMyAppPrincipal
    {
        private IIdentity _identity;
        private string[] _roles;
        private string _Perfil;


        public ClsSeguridad(IIdentity identity, string[] roles)
        {
            _identity = identity;
            _roles = roles;
        }

        public ClsSeguridad(IIdentity identity, string[] roles, string Perfil)
        {
            _identity = identity;
            _roles = roles;
            _Perfil = Perfil;
        }

        public ClsSeguridad(IIdentity identity, string Perfil)
        {
            _identity = identity;
            _Perfil = Perfil;
        }
        //Propiedad que utilizaremos para saber si el usuario tiene o no habilitado
        //el acceso a una determinada pagina
        public bool IsPageEnabled(string pageName)
        {
            return ClsPerfil.IsPageEnabled(pageName, this._Perfil);
        }

        /// <summary>
        /// Propiedad con el Perfil del Usuario
        /// </summary>
        public string Perfil
        {
            get
            {
                return _Perfil;
            }
            set
            {
                _Perfil = value;
            }
        }
        #region IPrincipal Members
        public IIdentity Identity
        {
            get
            {
                return _identity;
            }
        }
        public bool IsInRole(string role)
        {
            // TODO:  Add FormsPrincipal.IsInRole implementation
            return false;
        }
        #endregion
    }
}
