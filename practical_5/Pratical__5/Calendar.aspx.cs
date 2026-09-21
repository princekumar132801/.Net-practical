using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace Pratical__5
{
    public partial class Calendar : System.Web.UI.Page
    {
        protected void Calendar1_SelectionChanged(
            object sender, EventArgs e)
        {
            lblDate.Text =
                "Selected Date: " +
                Calendar1.SelectedDate.ToShortDateString();
        }
    }
}