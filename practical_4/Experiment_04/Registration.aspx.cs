using System;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode =
                UnobtrusiveValidationMode.None;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Check all validations
            if (!Page.IsValid)
            {
                return;
            }

            // Check Terms & Conditions
            if (!chkTerms.Checked)
            {
                lblResult.ForeColor =
                    System.Drawing.Color.Red;

                lblResult.Text =
                    "Please Accept Terms & Conditions";

                return;
            }

            // Get selected skills
            StringBuilder skills = new StringBuilder();

            foreach (ListItem item in cblSkills.Items)
            {
                if (item.Selected)
                {
                    skills.Append(item.Text + " ");
                }
            }

            // Display result
            lblResult.ForeColor =
                System.Drawing.Color.Blue;

            lblResult.Text =
                "Registration Successful<br/><br/>" +

                "Name: " + txtName.Text + "<br/>" +

                "Email: " + txtEmail.Text + "<br/>" +

                "Mobile: " + txtMobile.Text + "<br/>" +

                "College: " + txtCollege.Text + "<br/>" +

                "Department: " +
                rblDepartment.SelectedValue + "<br/>" +

                "Event: " +
                ddlEvent.SelectedValue + "<br/>" +

                "Gender: " +
                rblGender.SelectedValue + "<br/>" +

                "Skills: " +
                skills.ToString() + "<br/>" +

                "Address: " +
                txtAddress.Text;
        }
    }
}