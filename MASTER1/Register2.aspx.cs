using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MASTER1
{
    public partial class Register2 : System.Web.UI.Page
    {
        public string Step1Class, Step2Class, Step3Class;

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["isloggin"] == null || (bool)Session["isloggin"] == false)
            //{
            //    Response.Redirect("Register.aspx");
            //}
            int currentStep = 2;

            Step1.Attributes["class"] = currentStep > 1 ? "step completed" :
                                        currentStep == 1 ? "step active" : "step";

            Step2.Attributes["class"] = currentStep > 2 ? "step completed" :
                                        currentStep == 2 ? "step active" : "step";

            Step3.Attributes["class"] = currentStep == 3 ? "step active" : "step";
            if (!IsPostBack)
            {
                PopulateYears(ddlYearCompletion);
                PopulateYears(ddlYearCompletion1);
                PopulateYears(DropDownList2);
            }

                if (Session["ApplicationID"] != null)
                {
                    lblApplicationID.Text = Session["ApplicationID"].ToString();
                }
            if (Session["DateOfBirth"] != null) // Check if DOB exists
            {
                dobHiddenField.Value = Session["DateOfBirth"].ToString(); // Store DOB in HiddenField
            }


        }
        




        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Ensure that the page is valid before processing the form
            string mobile = Session["Phonenumber"].ToString();
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-A3NI1CD;Initial Catalog=EXAM;User ID=sa;Password=P@ssw0rd"))
                {
                    using (SqlCommand cmd = new SqlCommand("update1_Student", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Mobile", mobile);
                        // Adding parameters for all the fields from the form
                        // 10th Grade Details
                        cmd.Parameters.AddWithValue("@TenthBoardName", txtBoardName.Text.Trim());
                        cmd.Parameters.AddWithValue("@TenthSchoolName", txtSchoolName.Text.Trim());
                        cmd.Parameters.AddWithValue("@TenthYearOfCompletion", Convert.ToInt32(ddlYearCompletion.SelectedValue));
                        cmd.Parameters.AddWithValue("@TenthPercentage", txtPercentage.Text.Trim());

                        // 12th Grade Details
                        cmd.Parameters.AddWithValue("@TwelfthBoardName", TextBox1.Text.Trim());
                        cmd.Parameters.AddWithValue("@TwelfthCollegeName", TextBox2.Text.Trim());
                        cmd.Parameters.AddWithValue("@TwelfthYearOfCompletion", Convert.ToInt32(ddlYearCompletion1.SelectedValue));
                        cmd.Parameters.AddWithValue("@TwelfthPercentage", TextBox4.Text.Trim());

                        // Graduation Details
                        cmd.Parameters.AddWithValue("@GraduationBoardName", TextBox5.Text.Trim());
                        cmd.Parameters.AddWithValue("@GraduationCollegeName ", TextBox6.Text.Trim());
                        cmd.Parameters.AddWithValue("@GraduationYearOfCompletion", Convert.ToInt32(DropDownList2.SelectedValue));
                        cmd.Parameters.AddWithValue("@GraduationPercentage", TextBox8.Text.Trim());
                        cmd.Parameters.AddWithValue("@RegStep2", 1);

                        // Open connection and execute command
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Session["isloggin"] = true;
                        Response.Write("<script>alert('successfully inserted.');window.location='Register3.aspx';</script>");
                    }
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message.Replace("'", "\\'") + "');</script>");
            } }
        private void PopulateYears(DropDownList dropDownList)
        {
            dropDownList.Items.Clear();
            dropDownList.Items.Add(new ListItem("select year", ""));

            for (int year = 1950; year <= 2025; year++)
            {
                dropDownList.Items.Add(new ListItem(year.ToString(), year.ToString()));
            }
        }

    }
    }

