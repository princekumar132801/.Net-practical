using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Xml.Linq;


namespace Pratical__5
 {
    public partial class Leave : System.Web.UI.Page
    {
        protected void btnApply_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "" || txtReason.Text == "")
            {
                lblMsg.Text = "Please fill all details";
            }
            else
            {
                lblMsg.Text = "✓ Leave Applied Successfully!";
            }
        }
    }
}