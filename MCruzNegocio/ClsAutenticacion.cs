using System;
using System.Web;
using System.Web.Security;

namespace MCruzNegocio
{
    public class ClsAutenticacion : IHttpModule
    {
        /// <summary>
        /// 
        /// </summary>
        public ClsAutenticacion()
        { }
        /// <summary>
        /// Inicializa el HTTPModule y asigna los EventHandlers a cada Evento
        /// Esta es la parte donde se define a que eventos va a atender el HttpModule
        /// </summary>
        /// <param name="oHttpApp"></param>
        public String ModuleName
        {
            get { return "HelloWorldModule"; }
        }

        public void Init(HttpApplication oHttpApp)
        {
            // Se Registran los Manejadores de Evento que nos interesa
            oHttpApp.AuthorizeRequest += (new EventHandler(this.AuthorizeRequest));
            oHttpApp.AuthenticateRequest += (new EventHandler(this.AuthenticateRequest));
            //oHttpApp.BeginRequest += (new EventHandler(this.Application_BeginRequest));
            //oHttpApp.EndRequest += (new EventHandler(this.Application_EndRequest));
        }

        /// <summary>
        /// 
        /// </summary>
        public void Dispose()
        { }

        /// <summary>
        /// Administra la autorización por Request
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void AuthorizeRequest(object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.Path.ToLower().Contains("/public/"))
            {
                return;
            }

            if (HttpContext.Current.User != null)
            {
                //Si el usuario esta Autenticado
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    if (HttpContext.Current.User is MCruzNegocio.ClsSeguridad)
                    {
                        MCruzNegocio.ClsSeguridad principal = (MCruzNegocio.ClsSeguridad)HttpContext.Current.User;
                        if (!principal.IsPageEnabled(HttpContext.Current.Request.Path))
                            HttpContext.Current.Server.Transfer("~/NoAutorizado.aspx");
                    }
                }
            }
        }
        /// <summary>
        /// Autentica en Cada Request
        /// </summary>
        /// <param name="sender">HttpApplication</param>
        /// <param name="e"></param>
        private void AuthenticateRequest(object sender, EventArgs e)
        {
            if (HttpContext.Current.User != null)
            {
                //Si el usuario esta Autenticado
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    if (HttpContext.Current.User.Identity is FormsIdentity)
                    {
                        //Traigo el Rol que esta guardado en una Cookie encriptada
                        FormsIdentity _identity = (FormsIdentity)HttpContext.Current.User.Identity;
                        FormsAuthenticationTicket ticket = _identity.Ticket;
                        string cookieName = System.Web.Security.FormsAuthentication.FormsCookieName;
                        string userData = System.Web.HttpContext.Current.Request.Cookies[cookieName].Value;
                        ticket = FormsAuthentication.Decrypt(userData);

                        string perfil = "";
                        if (userData.Length > 0)
                            perfil = ticket.UserData;

                        //Se crea la clase y se asigna al CurrenUser del Contexto			
                        HttpContext.Current.User = new MCruzNegocio.ClsSeguridad(_identity, perfil);
                    }
                }
            }
        }//AuthenticateRequest
        private void Application_BeginRequest(Object source,
         EventArgs e)
        {
            // Create HttpApplication and HttpContext objects to access
            // request and response properties.
            HttpApplication application = (HttpApplication)source;
            HttpContext context = application.Context;
            string filePath = context.Request.FilePath;
            string fileExtension =
                VirtualPathUtility.GetExtension(filePath);
            if (fileExtension.Equals(".aspx"))
            {
                context.Response.Write("<h1><font color=red>" +
                    "HelloWorldModule: Beginning of Request" +
                    "</font></h1><hr>");
            }
        }

        private void Application_EndRequest(Object source, EventArgs e)
        {
            HttpApplication application = (HttpApplication)source;
            HttpContext context = application.Context;
            string filePath = context.Request.FilePath;
            string fileExtension =
                VirtualPathUtility.GetExtension(filePath);
            if (fileExtension.Equals(".aspx"))
            {
                context.Response.Write("<hr><h1><font color=red>" +
                    "HelloWorldModule: End of Request</font></h1>");
            }
        }

    }
}
