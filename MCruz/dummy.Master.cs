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
            string[] cookies = Request.Cookies.AllKeys;
            foreach (string cookie in cookies)
            {
                Response.Cookies[cookie].Expires = DateTime.Now.AddDays(-1);
            }
            Response.Redirect("login.aspx", false);
        }
    }
}