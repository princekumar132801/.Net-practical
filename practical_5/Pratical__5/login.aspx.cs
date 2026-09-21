using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pratical__5
 
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUser.Text == "prince" &&
                txtPass.Text == "1234")
            {
                // Session
                Session["User"] = txtUser.Text;

                // Cookie
                if (chkRemember.Checked)
                {
                    Response.Cookies["User"].Value = txtUser.Text;
                    Response.Cookies["User"].Expires =
                        DateTime.Now.AddDays(7);
                }

                Response.Redirect("Home.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid Username or Password";
            }
        }
    }
} 