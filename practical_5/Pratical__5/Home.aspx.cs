using System;

namespace Pratical__5
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Session check
            if (Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            lblWelcome.Text =
                "Welcome " + Session["User"].ToString();

            // Cookie check
            if (Request.Cookies["User"] != null)
            {
                lblCookie.Text =
                    "Cookie User: " +
                    Request.Cookies["User"].Value;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();

            if (Request.Cookies["User"] != null)
            {
                Response.Cookies["User"].Expires =
                    DateTime.Now.AddDays(-1);
            }

            Response.Redirect("Login.aspx");
        }
    }
}