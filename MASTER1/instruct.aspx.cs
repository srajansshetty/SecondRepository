using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MASTER1
{
    public partial class instruct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)  // Runs only on the first page load
            {
                ErrorMessageLabel.Text = "";  // Clear any previous messages
                ErrorMessageLabel.Visible = false;  // Hide error message initially
                /*Button1.Enabled = false; */ // Disable button initially
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!CheckBox2.Checked)
            {
                lblckbx.Text = "You must check the checkbox before proceeding.";  // Show message
                lblckbx.Visible = true;
                return;
                //lblckbx.Text = "You must check the box before proceeding.";

            }

            // Redirect only if checkbox is checked
            
            Response.Redirect("Register.aspx");
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox2.Checked)
            {
                ErrorMessageLabel.Text = "";  // ✅ Clear error message
                ErrorMessageLabel.Visible = false;  // ✅ Hide error message
                Button1.Enabled = true;  // ✅ Enable button
            }
            else
            {
                Button1.Enabled = false;  // ✅ Disable button if unchecked
            }
        }

    }
}