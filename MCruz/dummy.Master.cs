using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace dummyMP
{
    public partial class dummy : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["userLogged"] != null)
            {
                string userLogged;
                if (Request.Cookies["userLogged"] != null)
                {
                    userLogged = Request.Cookies["userLogged"].Value.ToString();
                    lblUserLogged.Text = CultureInfo.CurrentCulture.TextInfo.ToTitleCase(userLogged); 
                }
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            HttpCookie aCookie;
            string cookieName;
            int limit = Request.Cookies.Count;
            for (int i = 0; i < limit; i++)
            {
                cookieName = Request.Cookies[i].Name;
                aCookie = new HttpCookie(cookieName);
                aCookie.Expires = DateTime.Now.AddDays(-1); 
                Response.Cookies.Add(aCookie);
            }
            Response.Redirect("login.aspx", false);
        }
    }
}