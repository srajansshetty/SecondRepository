
//using System;
//using System.Data;
//using System.Data.SqlClient;
//using System.Configuration;
//using System.Web.UI;

//namespace MASTER1
//{
//    public partial class Admitt : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!IsPostBack)
//            {
//                if (Session["ApplicationID"] != null)
//                {
//                    lblApplicationID.Text = Session["ApplicationID"].ToString();
//                    LoadAdmitCardDetails();
//                }
//                else
//                {
//                    lblApplicationID.Text = "No Application ID found!";
//                }
//            }
//        }

//        private void LoadAdmitCardDetails()
//        {
//            string connStr = ConfigurationManager.ConnectionStrings["ExamDB"].ConnectionString;

//            using (SqlConnection con = new SqlConnection(connStr))
//            using (SqlCommand cmd = new SqlCommand("SELECT Cname, Fname, Mname, Gender, Mobile, Email, PostName, TenthPercentage, TwelfthPercentage, GraduationPercentage FROM student WHERE Appno = @Appno", con))
//            {
//                cmd.Parameters.Add("@Appno", SqlDbType.VarChar).Value = lblApplicationID.Text;

//                try
//                {
//                    con.Open();
//                    using (SqlDataReader reader = cmd.ExecuteReader())
//                    {
//                        if (reader.Read())
//                        {
//                            lblName.Text = reader["Cname"].ToString();
//                            lblFatherName.Text = reader["Fname"].ToString();
//                            lblMotherName.Text = reader["Mname"].ToString();
//                            lblGender.Text = reader["Gender"].ToString();
//                            lblMobile.Text = reader["Mobile"].ToString();
//                            lblEmail.Text = reader["Email"].ToString();
//                            lblPost.Text = reader["PostName"].ToString();
//                            Label1.Text = reader["TenthPercentage"].ToString();
//                            Label2.Text = reader["TwelfthPercentage"].ToString();
//                            Label3.Text = reader["GraduationPercentage"].ToString();
//                        }
//                        else
//                        {
//                            lblName.Text = "No data found!";
//                        }
//                    }
//                }
//                catch (Exception ex)
//                {
//                    // Log error instead of showing it to user
//                    lblName.Text = "An error occurred while loading data.";
//                }
//            }
//        }
//    }
//}






using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MASTER1
{
    public partial class Admitt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            int id = Convert.ToInt32(Session["ApplicationID"]);
           
            if (!IsPostBack)
            {
                LoadAdmitCardDetails(id);
            }
        }

        private void LoadAdmitCardDetails(int id)
        {
            string connStr = "Data Source=DESKTOP-A3NI1CD;Initial Catalog=EXAM;User ID=sa;Password=P@ssw0rd";

            using (SqlConnection con = new SqlConnection(connStr)) using (SqlCommand cmd = new SqlCommand("SELECT Cname, Fname, Mname, Gender, Mobile, Email, PostName, TenthPercentage, TwelfthPercentage, GraduationPercentage, PhotoName, TPhotoName FROM student WHERE AID = @AID", con))

            {
                cmd.Parameters.AddWithValue("@AID", id);
                try
                {
                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) // Reads only the first record
                        {

                            lblApplicationID.Text = id.ToString();
                            lblName.Text = reader["Cname"].ToString();
                            lblFatherName.Text = reader["Fname"].ToString();
                            lblMotherName.Text = reader["Mname"].ToString();
                            lblGender.Text = reader["Gender"].ToString();
                            lblMobile.Text = reader["Mobile"].ToString();
                            lblEmail.Text = reader["Email"].ToString();
                            lblPost.Text = reader["PostName"].ToString();

                            Label1.Text = reader["TenthPercentage"].ToString();
                            Label2.Text = reader["TwelfthPercentage"].ToString();
                            Label3.Text = reader["GraduationPercentage"].ToString();


                            string photoName = reader["PhotoName"].ToString();
                            if (!string.IsNullOrEmpty(photoName))
                            {
                                imgPhoto.ImageUrl = "Images/" + photoName;
                            }
                            else
                            {
                                imgPhoto.ImageUrl = "Images/default.jpg";
                            }
                            string sign = reader["TPhotoName"].ToString();
                            if (!string.IsNullOrEmpty(sign))
                            {
                                imgSignature.ImageUrl = "Images/" + sign;

                            }
                            else
                            {
                                imgSignature.ImageUrl = "Images/default.jpg";
                            }
                        }
                        else
                        {
                            lblName.Text = "No data found!";
                        }
                    }
                }


                catch (Exception ex)
                {
                    lblName.Text = "Error: " + ex.Message;
                }
            }
        }

    }
}