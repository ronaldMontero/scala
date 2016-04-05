using System;
using MCruzNegocio;
using System.Web.Security;
using System.Web;

namespace MCruz
{
    public partial class LoginControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            ClsUsuario usuario = new ClsUsuario();
            string perfil;
            usuario.m_cuenta = txtUsername.Text;
            usuario.m_contrasenna = txtPassword.Text;
            perfil = usuario.GetPerfil(usuario.m_cuenta, usuario.m_contrasenna);
            if (usuario.ValidarUsuario())
            {
                if (perfil.Length > 0) // perfil vacio significa que no fue encontrado
                    {
                    //Invoca a componente que se encarga del Cache de los datos
                    //en este caso de las páginas a las que el perfil tiene acceso
                        UserCache.AddPaginasToCache(perfil, ClsPerfil.GetPaginas2(perfil), System.Web.HttpContext.Current);

                        // Crea un ticket de Autenticacion de forma manual, 
                        // donde guardaremos información que nos interesa
                        FormsAuthenticationTicket authTicket =
                                new FormsAuthenticationTicket(2,  // version
                                usuario.m_cuenta,
                                DateTime.Now,
                                DateTime.Now.AddMinutes(60),
                                false,
                                perfil, // guardo el perfil del usuario
                                FormsAuthentication.FormsCookiePath);
                        // Encripto el Ticket.
                        string crypTicket = FormsAuthentication.Encrypt(authTicket);

                        // Creo la Cookie
                        HttpCookie authCookie =
                                new HttpCookie(FormsAuthentication.FormsCookieName,
                                crypTicket);

                        Response.Cookies.Add(authCookie);

                        // Redirecciono al Usuario - Importante!! no usar el RedirectFromLoginPage
                        // Para que se puedan usar las Cookies de los HttpModules
                        //Response.Redirect(FormsAuthentication.GetRedirectUrl(usuario.m_usuario, false));
                        Response.Redirect("dashboard.aspx");
                    }
            }
        }
        protected void btnLimpiar_Click(object sender, EventArgs e)
        {

        }
    }
}