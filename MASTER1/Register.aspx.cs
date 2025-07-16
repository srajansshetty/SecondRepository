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
    public partial class Register : System.Web.UI.Page
    {
        public string Step1Class, Step2Class, Step3Class;
        // Define connection string globally (or you can define it in your Web.config)
        //string connectionstring = "Data Source=DESKTOP-A3NI1CD\\MSSQL2014;Initial Catalog=EXAM;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

            int currentStep = 1;

            Step1.Attributes["class"] = currentStep > 1 ? "step completed" :
                                        currentStep == 1 ? "step active" : "step";

            Step2.Attributes["class"] = currentStep > 2 ? "step completed" :
                                        currentStep == 2 ? "step active" : "step";

            Step3.Attributes["class"] = currentStep == 3 ? "step active" : "step";
            if (!IsPostBack)
            {
                txtDOB.Attributes["min"] = "1960-01-01"; // Minimum allowed date
                txtDOB.Attributes["max"] = DateTime.Now.ToString("yyyy-MM-dd"); // Max: Today's date
                LoadStates(ddlCAState);
                LoadStates(ddlPAState);
                lblMessage.Text = "";
                //trServiceDates.Visible = false;
                //trEndDate.Visible = false;
            }
        }

        public void LoadStates(DropDownList dropdownlist)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-A3NI1CD;Initial Catalog=EXAM;User ID=sa;Password=P@ssw0rd");
            SqlCommand cmd = new SqlCommand("select StateId,StateName from state", con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            dropdownlist.DataSource = sdr;
            dropdownlist.DataTextField = "StateName";
            dropdownlist.DataValueField = "StateId";
            dropdownlist.DataBind();
            con.Close();
            dropdownlist.Items.Insert(0, new ListItem("--select state", "0"));


        }

        public void LoadDistricts(int stateid)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-A3NI1CD;Initial Catalog=EXAM;User ID=sa;Password=P@ssw0rd");
                SqlCommand cmd = new SqlCommand("SELECT DistrictId, DistrictName FROM district WHERE StateID = @stateid", con);
                cmd.Parameters.AddWithValue("@StateID", stateid);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                ddlCDistrict.DataSource = reader;
                ddlCDistrict.DataTextField = "DistrictName";
                ddlCDistrict.DataValueField = "DistrictId";
                ddlCDistrict.DataBind();
                con.Close();
                ddlCDistrict.Items.Insert(0, new ListItem("--select district", "0"));

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        public void LoadDistricts1(int stateid)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-A3NI1CD;Initial Catalog=EXAM;User ID=sa;Password=P@ssw0rd");
                SqlCommand cmd = new SqlCommand("SELECT DistrictId, DistrictName FROM district WHERE StateID = @stateid", con);
                cmd.Parameters.AddWithValue("@StateID", stateid);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                ddlPDistrict.DataSource = reader;
                ddlPDistrict.DataTextField = "DistrictName";
                ddlPDistrict.DataValueField = "DistrictId";
                ddlPDistrict.DataBind();
                con.Close();
                ddlPDistrict.Items.Insert(0, new ListItem("--select district", "0"));

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        //private void PopulateStateDropDown()
        //{
        //    string query = "SELECT StateID, StateName FROM State";

        //    using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-A3NI1CD\\MSSQL2014;Initial Catalog=EXAM;Integrated Security=True"))
        //    {
        //        using (SqlCommand cmd = new SqlCommand(query, con))
        //        {
        //            con.Open();
        //            SqlDataReader reader = cmd.ExecuteReader();

        //            DataTable dt = new DataTable();
        //            dt.Load(reader);
        //            reader.Close();

        //            ddlCAState.DataSource = dt;
        //            ddlCAState.DataTextField ="StateName";
        //            ddlCAState.DataValueField ="StateID";
        //            ddlCAState.DataBind();
        //        }
        //    }

        //    // Insert "Select your state" at the top
        //    ddlCAState.Items.Insert(0, new ListItem("Select your state", ""));
        //}

        // Event for handling state selection change
      


       

        protected void ddlCAState_SelectedIndexChanged(object sender, EventArgs e)
        {
            int stateid = 0;
            if (int.TryParse(ddlCAState.SelectedValue, out stateid))
            {
                if (stateid > 0)
                {
                    LoadDistricts(stateid);
                }
                else
                {
                    ddlCDistrict.Items.Clear();
                }
            }
}
    


        protected void ddlPAState_SelectedIndexChanged(object sender, EventArgs e)
        {
            int stateid = 0;
            if (int.TryParse(ddlPAState.SelectedValue, out stateid))
            {
                if (stateid > 0)
                {
                    LoadDistricts1(stateid);
                }
                else
                {
                    ddlPDistrict.Items.Clear();
                }
            }
        }
        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            lbltopmsg.Text = "";
            lblbottommsg.Text= "";

            Session["DateOfBirth"] = txtDOB.Text; // Assuming txtDOB is an input field
         
            Session["Name"] = txtName.Text;
            Session["Phonenumber"] = txtMobile.Text;
            Session["Email"] = txtEmail.Text;
          
            if (txtmotherName.Text.ToUpper() == txtfatherName.Text.ToUpper())
            {
                
                lbltopmsg.Text = "Father and mother name cannot be same";
                lblbottommsg.Text = lbltopmsg.Text;
                return;
            }
            if (txtfatherName.Text.ToUpper() == txtName.Text.ToUpper())
            {
                
                lbltopmsg.Text = "Father name and Candidate name cannot be same";
                lblbottommsg.Text = lbltopmsg.Text;
                return;
            }
            if (txtName.Text.ToUpper() == txtmotherName.Text.ToUpper())
            {
                
                lbltopmsg.Text = "Mother name and candidate name cannot be same";
                lblbottommsg.Text = lbltopmsg.Text;
                return;
            }

            // Ensure that the page is valid before processing the form
            if (Page.IsValid)
            {
                try
                {
                    string applicationID = GenerateApplicationID(); // Generate unique ApplicationID
                    Session["ApplicationID"] = applicationID; // Store in session

                    using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-A3NI1CD;Initial Catalog=EXAM;User ID=sa;Password=P@ssw0rd"))
                    {
                        using (SqlCommand cmd = new SqlCommand("Insert_Student", con))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;

                            // Adding parameters for all the fields from the form
                            cmd.Parameters.AddWithValue("@AID", applicationID);
                            cmd.Parameters.AddWithValue("@Cname", txtName.Text);
                            cmd.Parameters.AddWithValue("@Fname", txtfatherName.Text);
                            cmd.Parameters.AddWithValue("@Mname", txtmotherName.Text);
                            cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                            cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
                            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                            cmd.Parameters.AddWithValue("@PostName", ddlPost.SelectedValue);
                            cmd.Parameters.AddWithValue("@Nationality", txtNationality.Text);
                            cmd.Parameters.AddWithValue("@Category", ddlCategory.SelectedValue);
                            cmd.Parameters.AddWithValue("@ESM", ddlExService.SelectedValue);
                            cmd.Parameters.AddWithValue("@BPwbd", ddlPwbd.SelectedValue);
                            //cmd.Parameters.AddWithValue("@Pwbd", ddlDisability.SelectedValue);
                            cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
                            cmd.Parameters.AddWithValue("@Exam1", ddlExamCenter1.SelectedValue);
                            cmd.Parameters.AddWithValue("@Exam2", ddlExamCenter2.SelectedValue);
                            cmd.Parameters.AddWithValue("@Exam3", ddlExamCenter3.SelectedValue);

                            // Current address
                            cmd.Parameters.AddWithValue("@CAddress", txtCAddress.Text);
                            cmd.Parameters.AddWithValue("@CAState", ddlCAState.SelectedItem.Text);
                            cmd.Parameters.AddWithValue("@CDistrict", ddlCDistrict.SelectedItem.Text);
                            cmd.Parameters.AddWithValue("@Pincode", txtPincode.Text);

                            // cmd.Parameters.AddWithValue("@CCity", txtcity.Text);

                            // Permanent address
                            cmd.Parameters.AddWithValue("@PAddress", txtPAddress.Text);
                            cmd.Parameters.AddWithValue("@PAState", ddlPAState.SelectedItem.Text);
                            cmd.Parameters.AddWithValue("@PDistrict", ddlPDistrict.SelectedItem.Text);
                            cmd.Parameters.AddWithValue("@Pincode1", txtPincode1.Text);

                            //cmd.Parameters.AddWithValue("@PCity", txtCCity.Text);
                          cmd.Parameters.AddWithValue("@RegStep1", 1);

                            // Open connection and execute command
                            con.Open();
                            cmd.ExecuteNonQuery();
                            Session["isloggin"] = true;
                            Response.Redirect("Register2.aspx",false);
                        }
                        
                    }

                    // Store form data in Session variables AFTER successful insertion
                    
                  

                    // Redirect AFTER successful insertion
                    
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error: " + ex.Message+ "');</script>");
                }
            }
            else
            {
                // Display validation error message
                Response.Write("<script>alert('Please correct the errors and try again.');</script>");
            }
        }


        protected void checkbox_CheckedChanged(object sender, EventArgs e)
        {
            if (checkbox.Checked)
            {
                // Copy current address values to permanent address
                txtPAddress.Text = txtCAddress.Text;
                txtPincode1.Text = txtPincode.Text;

                ddlPAState.SelectedValue = ddlCAState.SelectedValue;
                ddlPAState_SelectedIndexChanged(null, null); // Trigger to load districts
                ddlPDistrict.SelectedValue = ddlCDistrict.SelectedValue;
                // Disable fields
                txtPAddress.Enabled = false;
                ddlPAState.Enabled = false;
                txtPincode1.Enabled = false;
                ddlPDistrict.Enabled = false;
            }
            else
            {
                // Clear permanent address fields
                txtPAddress.Text = "";
                txtPincode1.Text = "";
                ddlPAState.Enabled = true;
                ddlPDistrict.Enabled = true;
                ddlPAState.SelectedIndex = 0;
                ddlPDistrict.SelectedIndex = 0;
                // Enable fields for editing
                txtPAddress.Enabled = true;
                txtPincode1.Enabled = true;
                
            }
        }
        private string GenerateApplicationID()
        {
            using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-A3NI1CD;Initial Catalog=EXAM;User ID=sa;Password=P@ssw0rd"))
            {
                string query = "SELECT COALESCE(MAX(CAST(AID AS INT)), 99) + 1 FROM student";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open(); // Open the connection
                    int newID = Convert.ToInt32(cmd.ExecuteScalar()); // Execute the query
                    con.Close(); // Close the connection

                    return newID.ToString(); // Return as a string
                }
            }
        }



        protected void ddlPwbd_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlPwbd.SelectedValue == "yes")
            {
                trDisabilityType.Visible = true; // Show the disability type dropdown
                rfvDisabilityType.Enabled = true; // Enable validation for disability type
            }
            else
            {
                trDisabilityType.Visible = false; // Hide the disability type dropdown
                rfvDisabilityType.Enabled = false; // Disable validation for disability type
                DropDownList1.SelectedIndex = 0; // Reset selection
            }
        }


        //protected void ddlExService_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if (ddlExService.SelectedValue == "yes")
        //    {
        //        trServiceDates.Visible = true; // Show Service Start Date
        //        trEndDate.Visible = true; // Show Service End Date
        //        rfvStartDate.Enabled = true; // Enable validation for Start Date
        //        rfvEndDate.Enabled = true; // Enable validation for End Date
        //    }
        //    else
        //    {
        //        trServiceDates.Visible = false; // Hide Service Start Date
        //        trEndDate.Visible = false; // Hide Service End Date
        //        rfvStartDate.Enabled = false; // Disable validation for Start Date
        //        rfvEndDate.Enabled = false; // Disable validation for End Date
        //        txtStartDate.Text = ""; // Clear Start Date
        //        txtEndDate.Text = ""; // Clear End Date
        //    }
        //}


        //protected void ddlPwbd_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if (ddlPwbd.SelectedValue == "yes")
        //    {
        //        trDisabilityType.Visible = true;  // Show the disability dropdown
        //        rfvDisabilityType.Enabled = true; // Enable validation
        //    }
        //    else
        //    {
        //        trDisabilityType.Visible = false; // Hide the disability dropdown
        //        rfvDisabilityType.Enabled = false; // Disable validation
        //        ddlDisability.SelectedIndex = 0;  // Reset the selection
        //    }
        //}

        //protected void Button_Click(object sender, EventArgs e)
        //{
        //    captcha1.ValidateCaptcha(TextBox1.Text.Trim());
        //    if (captcha1.UserValidated)
        //    {
        //        //Label1.Text = "You Have Registered Successfully - Thanks For Registration - We will Contact You Soon.";
        //        TextBox1.Text = "";


        //    }
        //    else
        //    {

        //       // Label1.Text = "Enter Correct Captcha Text";
        //    }
        //}
      
        protected void ValidateExamCenters(object sender, EventArgs e)
        {
            // Get selected values
            string center1 = ddlExamCenter1.SelectedValue;
            string center2 = ddlExamCenter2.SelectedValue;
            string center3 = ddlExamCenter3.SelectedValue;

            // Check for duplicate selections
            if ((center1 == center2 && center1 != "") ||
                (center1 == center3 && center1 != "") ||
                (center2 == center3 && center2 != ""))
            {
                lblErrorMessage.Text = "Each exam center must be unique. Please select different centers.";
                lblErrorMessage.Visible = true;
            }
            else
            {
                lblErrorMessage.Visible = false;
            }
        }

        
        private void GetStatus()
        {
           
        }

        
    }
}








//public partial class WebForm2 : System.Web.UI.Page
//{
//    protected void Page_Load(object sender, EventArgs e)
//    {
//        if (!IsPostBack)
//        {
//            LoadStates(dropDownList1);
//            LoadStates(dropDownList3);
//        }
//    }
//    public void LoadStates(DropDownList dropdownlist)
//    {
//        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-9AFF5Q9;Initial Catalog=Registration;Integrated Security=True");
//        SqlCommand cmd = new SqlCommand("select stateId,stateName from states", con);
//        con.Open();
//        SqlDataReader sdr = cmd.ExecuteReader();
//        dropdownlist.DataSource = sdr;
//        dropdownlist.DataTextField = "StateName";
//        dropdownlist.DataValueField = "StateId";
//        dropdownlist.DataBind();
//        con.Close();
//        dropdownlist.Items.Insert(0, new ListItem("--select state", "0"));


//    }
//    //public void LoadStates1()
//    //{
//    //    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-9AFF5Q9;Initial Catalog=Registration;Integrated Security=True");
//    //    SqlCommand cmd = new SqlCommand("select stateId,stateName from states", con);
//    //    con.Open();
//    //    SqlDataReader sdr = cmd.ExecuteReader();
//    //    dropDownList3.DataSource = sdr;
//    //    dropDownList3.DataTextField = "StateName";
//    //    dropDownList3.DataValueField = "StateId";
//    //    dropDownList3.DataBind();
//    //    con.Close();
//    //    dropDownList3.Items.Insert(0, new ListItem("--select state", "0"));


//    //}




//    public void LoadDistricts(int stateid)
//    {
//        try
//        {
//            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-9AFF5Q9;Initial Catalog=Registration;Integrated Security=True");
//            SqlCommand cmd = new SqlCommand("SELECT Did, Dname FROM districts WHERE StateID = @StateId", con);
//            cmd.Parameters.AddWithValue("@StateID", stateid);
//            con.Open();
//            SqlDataReader reader = cmd.ExecuteReader();
//            dropDownList2.DataSource = reader;
//            dropDownList2.DataTextField = "Dname";
//            dropDownList2.DataValueField = "Did";
//            dropDownList2.DataBind();
//            con.Close();
//            dropDownList2.Items.Insert(0, new ListItem("--select district", "0"));

//            con.Close();
//        }
//        catch (Exception ex)
//        {
//            Response.Write(ex.Message);
//        }
//    }

//    protected void checkbox1_CheckedChanged(object sender, EventArgs e)
//    {
//        if (checkbox1.Checked)
//        {

//            Textbox10.Text = Textbox7.Text;
//            Textbox11.Text = Textbox8.Text;
//            dropDownList3.SelectedItem.Text = dropDownList1.SelectedItem.Text;
//            dropDownList4.SelectedItem.Text = dropDownList2.SelectedItem.Text;
//            Textbox12.Text = Textbox9.Text;
//            Textbox10.Enabled = false;
//            Textbox11.Enabled = false;
//            Textbox12.Enabled = false;
//            dropDownList3.Enabled = false;
//            dropDownList4.Enabled = false;
//        }
//        else
//        {
//            Textbox10.Enabled = true;
//            Textbox11.Enabled = true;
//            Textbox12.Enabled = true;
//            dropDownList3.Enabled = true;
//            dropDownList4.Enabled = true;

//            Textbox10.Text = "";
//            Textbox11.Text = "";
//            Textbox12.Text = "";
//            dropDownList3.SelectedIndex = 0;
//            dropDownList4.SelectedIndex = 0;

//        }

//    }
//    public void clear()
//    {
//        Textbox1.Text = " ";
//        Textbox2.Text = " ";
//        Textbox3.Text = " ";
//        Textbox4.Text = " ";
//        Textbox5.Text = " ";
//        Textbox6.Text = " ";
//        Textbox7.Text = " ";
//        Textbox8.Text = " ";
//        Textbox9.Text = " ";
//        Textbox10.Text = " ";
//        Textbox11.Text = " ";
//        Textbox12.Text = " ";
//        dropDownList1.SelectedIndex = 0;
//        dropDownList2.SelectedIndex = 0;
//        dropDownList3.SelectedIndex = 0;
//        dropDownList4.SelectedIndex = 0;

//        checkbox1.Checked = false;
//        if (checkbox1.Checked == false)
//        {
//            LoadStates(dropDownList2);
//            //LoadStates1();

//            dropDownList3.SelectedIndex = 0;
//            dropDownList4.SelectedIndex = 0;
//            dropDownList3.Enabled = true;
//            dropDownList4.Enabled = true;
//        }
//    }


//    public void LoadDistricts1(int stateid)
//    {
//        try
//        {
//            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-9AFF5Q9;Initial Catalog=Registration;Integrated Security=True");
//            SqlCommand cmd = new SqlCommand("SELECT Did, Dname FROM districts WHERE StateID = @StateId", con);
//            cmd.Parameters.AddWithValue("@StateID", stateid);
//            con.Open();
//            SqlDataReader reader = cmd.ExecuteReader();
//            dropDownList4.DataSource = reader;
//            dropDownList4.DataTextField = "Dname";
//            dropDownList4.DataValueField = "Did";
//            dropDownList4.DataBind();
//            con.Close();
//            dropDownList4.Items.Insert(0, new ListItem("--select district", "0"));

//            con.Close();
//        }
//        catch (Exception ex)
//        {
//            Response.Write(ex.Message);
//        }
//    }


//    protected void button1_Click(object sender, EventArgs e)
//    {


//        try
//        {
//            string conste = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
//            using (SqlConnection con = new SqlConnection(conste))
//            {

//                SqlCommand cmd = new SqlCommand("data_insert", con);
//                cmd.CommandType = CommandType.StoredProcedure;

//                cmd.Parameters.AddWithValue("@name", Textbox1.Text);
//                cmd.Parameters.AddWithValue("@FatherName", Textbox2.Text.Trim());
//                cmd.Parameters.AddWithValue("@MotherName", Textbox3.Text.Trim());
//                cmd.Parameters.AddWithValue("@Age", Textbox4.Text);
//                cmd.Parameters.AddWithValue("@MobileNumber", Convert.ToDecimal(Textbox5.Text));
//                cmd.Parameters.AddWithValue("@Email", Textbox6.Text.Trim());
//                cmd.Parameters.AddWithValue("@Address1", Textbox7.Text.Trim());
//                cmd.Parameters.AddWithValue("@Address2", Textbox8.Text.Trim());
//                cmd.Parameters.AddWithValue("@State", dropDownList1.SelectedItem.Text);
//                cmd.Parameters.AddWithValue("@District", dropDownList2.SelectedItem.Text);
//                cmd.Parameters.AddWithValue("@pinCode", Convert.ToDecimal(Textbox9.Text));
//                cmd.Parameters.AddWithValue("@pAddress1", Textbox10.Text.Trim());
//                cmd.Parameters.AddWithValue("@pAddress2", Textbox11.Text.Trim());
//                cmd.Parameters.AddWithValue("@PState", dropDownList3.SelectedItem.Text);
//                cmd.Parameters.AddWithValue("@pDistrict", dropDownList4.SelectedItem.Text);
//                cmd.Parameters.AddWithValue("@ppincode", Convert.ToDecimal(Textbox12.Text));
//                //cmd.Parameters.AddWithValue("@name", "vamsi");
//                //cmd.Parameters.AddWithValue("@FatherName", "vamsi");
//                //cmd.Parameters.AddWithValue("@MotherName", "vamsi");
//                //cmd.Parameters.AddWithValue("@Age", "2024-01-12");
//                //cmd.Parameters.AddWithValue("@MobileNumber", Convert.ToDecimal(9898989898));
//                //cmd.Parameters.AddWithValue("@Email", "v@gmail.com");
//                //cmd.Parameters.AddWithValue("@Address1", "kdkdkf");
//                //cmd.Parameters.AddWithValue("@Address2", "jjkhkjhj");
//                //cmd.Parameters.AddWithValue("@State", "ap");
//                //cmd.Parameters.AddWithValue("@District", "ntr");
//                //cmd.Parameters.AddWithValue("@pinCode", Convert.ToDecimal(879090));
//                //cmd.Parameters.AddWithValue("@pAddress1", "kjkjklk");
//                //cmd.Parameters.AddWithValue("@pAddress2", "jkjk");
//                //cmd.Parameters.AddWithValue("@PState", "ts");
//                //cmd.Parameters.AddWithValue("@pDistrict", "ooo");
//                //cmd.Parameters.AddWithValue("@ppincode", Convert.ToDecimal(870954));
//                con.Open();
//                //Debug.WriteLine("name  :"+Textbox1.Text, "\nFather name", Textbox2.Text, " mother name \n", Textbox3.Text, " ", Textbox4.Text, " " + Textbox5.Text, " ", Textbox6.Text, " ", Textbox7.Text, " ", Textbox8.Text, " ", Textbox9.Text, " ", dropDownList1.SelectedItem.Text, " ", dropDownList2.SelectedItem.Text, " ", Textbox10.Text, " ", Textbox11.Text, " ", Textbox12.Text, " ", dropDownList3.SelectedItem.Text, " ", dropDownList4.SelectedItem.Text);
//                Response.Write("<script>alert('name :" + Textbox1.Text + "')</script>");
//                cmd.ExecuteNonQuery();
//                Response.Write("<script>alert('successfully inserted data')</script>");
//                con.Close();
//                clear();
//            }
//        }
//        catch (Exception ex)
//        {
//            Response.Write("<script>alert('" + ex.Message + "')</script>");
//            throw ex;
//        }
//    }

//    protected void dropDownList3_SelectedIndexChanged(object sender, EventArgs e)
//    {
//        int stateid = int.Parse(dropDownList3.SelectedValue);
//        if (stateid > 0)
//        {
//            LoadDistricts1(stateid);
//        }
//        else
//        {
//            dropDownList2.Items.Clear();
//        }
//    }

//    protected void dropDownList1_SelectedIndexChanged(object sender, EventArgs e)
//    {
//        int stateid = int.Parse(dropDownList1.SelectedValue);
//        if (stateid > 0)
//        {
//            LoadDistricts(stateid);
//        }
//        else
//        {
//            dropDownList2.Items.Clear();
//        }
//    }
//}
