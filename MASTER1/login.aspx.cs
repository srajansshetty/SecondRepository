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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string appNo = txtAID.Text.Trim();
            string phone = txtPhone.Text.Trim();

            using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-A3NI1CD;Initial Catalog=EXAM;User ID=sa;Password=P@ssw0rd"))
            using (SqlCommand cmd = new SqlCommand("SELECT RegStep1, RegStep2, RegStep3 FROM student WHERE AID = @AID AND Mobile = @Mobile", con))
            {
                cmd.Parameters.AddWithValue("@AID", appNo);
                cmd.Parameters.AddWithValue("@Mobile", phone);

                try
                {
                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) // If a record is found
                        {
                            Session["ApplicationID"] = appNo;
                            int step1 = reader["RegStep1"] != DBNull.Value ? Convert.ToInt32(reader["RegStep1"]) : 0;
                            int step2 = reader["RegStep2"] != DBNull.Value ? Convert.ToInt32(reader["RegStep2"]) : 0;
                            int step3 = reader["RegStep3"] != DBNull.Value ? Convert.ToInt32(reader["RegStep3"]) : 0;

                            // Determine which step to redirect to
                            string nextPage = "Register.aspx"; // Default starting page
                            if (step1 == 1 && step2 == 0) nextPage = "Register2.aspx";
                            else if (step2 == 1 && step3 == 0) nextPage = "Register3.aspx";
                            else if (step3 == 1) nextPage = "Admitt.aspx"; // Registration completed

                            Response.Redirect(nextPage);
                        }
                        else
                        {
                            lblMessage.Text = "Invalid Application Number or Phone Number!";
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
        }

        //protected void btnLogin_Click(object sender, EventArgs e)
        //{
        //    string appNo = txtAppno.Text.Trim();
        //    string phone = txtPhone.Text.Trim();

        //    using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-A3NI1CD\\MSSQL2014;Initial Catalog=EXAM;Integrated Security=True"))
        //    using (SqlCommand cmd = new SqlCommand("SELECT RegStep1, RegStep2, RegStep3 FROM student WHERE Appno = @Appno AND Mobile = @Mobile", con))
        //    {
        //        cmd.Parameters.AddWithValue("@Appno", appNo);
        //        cmd.Parameters.AddWithValue("@Mobile", phone);

        //        try
        //        {
        //            con.Open();
        //            using (SqlDataReader reader = cmd.ExecuteReader())
        //            {
        //                if (reader.Read()) // If a record is found
        //                {
        //                    Session["ApplicationID"] = reader["ApplicationID"].ToString();
        //                    int Regstep=Convert.ToInt32(reader)
        //                }
        //                else
        //                {
        //                    lblMessage.Text = "Invalid Application Number or Phone Number!";
        //                }
        //            }
        //        }
        //        catch (Exception ex)
        //        {
        //            lblMessage.Text = "Error: " + ex.Message;
        //        }
        //    }
        //}


        //protected void btnLogin_Click(object sender, EventArgs e)
        //{
        //    // Get user input
        //    string appNo = txtAppno.Text.Trim();
        //    string phone = txtPhone.Text.Trim();

        //    using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-A3NI1CD\\MSSQL2014;Initial Catalog=EXAM;Integrated Security=True"))
        //    using (SqlCommand cmd = new SqlCommand("SELECT Appno FROM student WHERE Appno = @Appno AND Mobile = @Mobile", con))
        //    {
        //        // Add parameters to prevent SQL Injection
        //        cmd.Parameters.AddWithValue("@Appno", appNo);
        //        cmd.Parameters.AddWithValue("@Mobile", phone);

        //        try
        //        {
        //            con.Open();
        //            object result = cmd.ExecuteScalar(); // Get single value (Application Number)

        //            if (result != null) // If a record is found
        //            {
        //                Session["ApplicationID"] = result.ToString(); // Store App Number in session

        //                // Retrieve last visited page from session
        //                string lastPage = Session["LastPage"] as string;

        //                if (!string.IsNullOrEmpty(lastPage))
        //                {
        //                    Response.Redirect(lastPage); // Redirect to the last visited page
        //                }
        //                else
        //                {
        //                    Response.Redirect("Admitt.aspx"); // Default page if no last page is found
        //                }
        //            }
        //            else
        //            {
        //                lblMessage.Text = "Invalid Application Number or Phone Number!";
        //            }
        //        }
        //        catch (Exception ex)
        //        {
        //            lblMessage.Text = "Error: " + ex.Message;
        //        }
        //    }
        //}

    }
}




//protected void btnLogin_Click(object sender, EventArgs e)
//{
//    // Get user input
//    string appNo = txtAppno.Text.Trim();
//    string phone = txtPhone.Text.Trim();



//    // Database connection string


//    using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-A3NI1CD\\MSSQL2014;Initial Catalog=EXAM;Integrated Security=True"))
//    using (SqlCommand cmd = new SqlCommand("SELECT Appno FROM student WHERE Appno = @Appno AND Mobile = @Mobile", con))
//    {
//        // Add parameters to prevent SQL Injection
//        cmd.Parameters.AddWithValue("@Appno", appNo);
//        cmd.Parameters.AddWithValue("@Mobile", phone);

//        try
//        {
//            con.Open();
//            object result = cmd.ExecuteScalar(); // Get single value (Application Number)

//            if (result != null) // If a record is found
//            {
//                Session["ApplicationID"] = result.ToString(); // Store App Number in session
//                Response.Redirect("Admitt.aspx"); // Redirect to Admit Card page
//            }
//            else
//            {
//                lblMessage.Text = "Invalid Application Number or Phone Number!";
//            }
//        }
//        catch (Exception ex)
//        {
//            lblMessage.Text = "Error: " + ex.Message;
//        }
//    }
//}