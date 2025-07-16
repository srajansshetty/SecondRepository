using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MASTER1
{
    public partial class Register3 : System.Web.UI.Page
    {
        public string Step1Class, Step2Class, Step3Class;

        protected void Page_Load(object sender, EventArgs e)
        {
            int currentStep = 3;

            Step1.Attributes["class"] = currentStep > 1 ? "step completed" :
                                        currentStep == 1 ? "step active" : "step";

            Step2.Attributes["class"] = currentStep > 2 ? "step completed" :
                                        currentStep == 2 ? "step active" : "step";

            Step3.Attributes["class"] = currentStep == 3 ? "step active" : "step";
            if (Session["ApplicationID"] != null)
            {
                lblApplicationID.Text = Session["ApplicationID"].ToString();
            }

        }


        protected void btnUpload_Click1(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                HttpPostedFile selectfile = FileUpload2.PostedFile;
                string fileExtension = Path.GetExtension(selectfile.FileName).ToLower();

                if (fileExtension == ".pdf" || fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png")
                {
                    string imageName = Path.GetFileName(selectfile.FileName);
                    string folderPath = Server.MapPath("~/Images/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }

                    string fullPath = Path.Combine(folderPath, imageName);
                    selectfile.SaveAs(fullPath);

                    // Show upload success message
                    label1.Text = imageName + " uploaded successfully.";
                    label1.ForeColor = System.Drawing.Color.Green;

                    // Store binary and name in session (optional if you don’t use it)
                    BinaryReader br = new BinaryReader(selectfile.InputStream);
                    byte[] imageData = br.ReadBytes(selectfile.ContentLength);
                    Session["photoName"] = imageName;
                    Session["photoBinary"] = imageData;

                    // Store image path in session to use in btnView
                    string relativeImagePath = "~/Images/" + imageName;
                    Session["UploadedImagePath"] = relativeImagePath;

                    // Show the View button
                    btnView.Visible = true;
                }
                else
                {
                    label1.Text = "The selected file is not in the allowed format.";
                    label1.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                label1.Text = "Please select a file.";
                label1.ForeColor = System.Drawing.Color.Red;
            }
        }

        //protected void btnUpload_Click1(object sender, EventArgs e)
        //{
        //    if (FileUpload2.HasFiles)
        //    {
        //        HttpPostedFile selectfile = FileUpload2.PostedFile;
        //        string fileExtension = Path.GetExtension(selectfile.FileName).ToLower();
        //        if (fileExtension == ".pdf" || fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png")
        //        {
        //            string imageName = Path.GetFileName(selectfile.FileName);
        //            string folderPath = Server.MapPath("~/Images/");
        //            if (!Directory.Exists(folderPath))
        //            {
        //                Directory.CreateDirectory(folderPath);
        //            }

        //            string fullPath = folderPath + imageName;
        //            selectfile.SaveAs(fullPath);

        //            label1.Text = imageName;
        //            label1.ForeColor = System.Drawing.Color.Green;

        //            BinaryReader br = new BinaryReader(selectfile.InputStream);
        //            byte[] imageData = br.ReadBytes(selectfile.ContentLength);
        //            Session["photoName"] = imageName;
        //            Session["photoBinary"] = imageData;

        //            // Set image path in HiddenField and show View button
        //            hfImagePath.Value = "~/Images/" + imageName;
        //            btnView.Visible = true;
        //        }
        //        else
        //        {
        //            Response.Write("<script>alert('The selected file is not in the allowed format.')</script>");
        //        }
        //    }
        //}

        //protected void btnUpload_Click1(object sender, EventArgs e)
        //{
        //    if (FileUpload2.HasFiles)
        //    {
        //        HttpPostedFile selectfile = FileUpload2.PostedFile;
        //        string fileExtension = Path.GetExtension(selectfile.FileName);
        //        if (fileExtension == ".pdf" || fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png")
        //        {
        //            string imageName = selectfile.FileName;
        //            string folderPath = Server.MapPath("~/Images/");
        //            if (!Directory.Exists(folderPath))
        //            {
        //                Directory.CreateDirectory(folderPath);
        //            }
        //            selectfile.SaveAs(folderPath + imageName);
        //            label1.Text = imageName;
        //            label1.ForeColor = System.Drawing.Color.Green;
        //            BinaryReader br = new BinaryReader(selectfile.InputStream);
        //            byte[] imageData = br.ReadBytes(selectfile.ContentLength);
        //            Session["photoName"] = imageName;
        //            Session["photoBinary"] = imageData;

        //        }
        //        else
        //        {
        //            Response.Write("<script>alert('the selected file not in the given format')</script>");
        //        }

        //    }
        //}

        //protected void Button1_Click(object sender, EventArgs e)     old
        //{
        //    if (FileUpload1.HasFiles)
        //    {
        //        HttpPostedFile selectfile = FileUpload1.PostedFile;
        //        string fileExtension = Path.GetExtension(selectfile.FileName);
        //        if (fileExtension == ".pdf" || fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png")
        //        {
        //            string imageName = selectfile.FileName;
        //            string folderPath = Server.MapPath("~/Images/");
        //            if (!Directory.Exists(folderPath))
        //            {
        //                Directory.CreateDirectory(folderPath);
        //            }
        //            selectfile.SaveAs(folderPath + imageName);
        //            label2.Text = imageName;
        //            label2.ForeColor = System.Drawing.Color.Green;
        //            BinaryReader br = new BinaryReader(selectfile.InputStream);
        //            byte[] imageData = br.ReadBytes(selectfile.ContentLength);
        //            Session["photoName1"] = imageName;
        //            Session["photoBinary1"] = imageData;

        //        }
        //        else
        //        {
        //            Response.Write("<script>alert('the selected file not in the given format')</script>");
        //        }

        //    }
        //}


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                HttpPostedFile selectfile = FileUpload1.PostedFile;
                string fileExtension = Path.GetExtension(selectfile.FileName).ToLower();

                if (fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png")
                {
                    string imageName = Path.GetFileName(selectfile.FileName);
                    string folderPath = Server.MapPath("~/Images/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }

                    string fullPath = Path.Combine(folderPath, imageName);
                    selectfile.SaveAs(fullPath);

                    label2.Text = imageName + " uploaded successfully.";
                    label2.ForeColor = System.Drawing.Color.Green;

                    // Store image path in session for View
                    Session["UploadedSignaturePath"] = "~/Images/" + imageName;
                    btnViewSignature.Visible = true;
                }
                else
                {
                    label2.Text = "Only .jpg, .jpeg, or .png files are allowed.";
                    label2.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                label2.Text = "Please select a file.";
                label2.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnViewSignature_Click(object sender, EventArgs e)
        {
            if (Session["UploadedSignaturePath"] != null)
            {
                imgSignature.ImageUrl = Session["UploadedSignaturePath"].ToString();
                pnlSignaturePopup.Visible = true;
            }
        }

        protected void btnCloseSignature_Click(object sender, EventArgs e)
        {
            pnlSignaturePopup.Visible = false;
        }


        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    if (FileUpload3.HasFiles)
        //    {
        //        HttpPostedFile selectfile = FileUpload3.PostedFile;
        //        string fileExtension = Path.GetExtension(selectfile.FileName);
        //        if (fileExtension == ".pdf" || fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png")
        //        {
        //            string imageName = selectfile.FileName;
        //            string folderPath = Server.MapPath("~/Images/");
        //            if (!Directory.Exists(folderPath))
        //            {
        //                Directory.CreateDirectory(folderPath);
        //            }
        //            selectfile.SaveAs(folderPath + imageName);
        //            label3.Text = imageName;
        //            label3.ForeColor = System.Drawing.Color.Green;
        //            BinaryReader br = new BinaryReader(selectfile.InputStream);
        //            byte[] imageData = br.ReadBytes(selectfile.ContentLength);
        //            Session["photoName2"] = imageName;
        //            Session["photoBinary2"] = imageData;

        //        }
        //        else
        //        {
        //            Response.Write("<script>alert('the selected file not in the given format')</script>");
        //        }

        //    }
        //}
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload3.HasFile)
            {
                HttpPostedFile selectfile = FileUpload3.PostedFile;
                string fileExtension = Path.GetExtension(selectfile.FileName).ToLower();

                if (fileExtension == ".pdf" || fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png")
                {
                    string imageName = Path.GetFileName(selectfile.FileName);
                    string folderPath = Server.MapPath("~/Images/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }

                    string fullPath = Path.Combine(folderPath, imageName);
                    selectfile.SaveAs(fullPath);

                    label3.Text = imageName + " uploaded successfully.";
                    label3.ForeColor = System.Drawing.Color.Green;

                    // Store in Session
                    BinaryReader br = new BinaryReader(selectfile.InputStream);
                    byte[] imageData = br.ReadBytes(selectfile.ContentLength);
                    Session["photoName2"] = imageName;
                    Session["photoBinary2"] = imageData;

                    // Store file path for View
                    Session["Uploaded10thPath"] = "~/Images/" + imageName;
                    btnView10th.Visible = true;
                }
                else
                {
                    label3.Text = "Invalid file format. Allowed: .pdf, .jpg, .jpeg, .png";
                    label3.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                label3.Text = "Please select a file.";
                label3.ForeColor = System.Drawing.Color.Red;
            }
        }
        protected void btnView10th_Click(object sender, EventArgs e)
        {
            if (Session["Uploaded10thPath"] != null)
            {
                img10th.ImageUrl = Session["Uploaded10thPath"].ToString();
                pnl10thPopup.Visible = true;
            }
        }

        protected void btnClose10th_Click(object sender, EventArgs e)
        {
            pnl10thPopup.Visible = false;
        }

        //protected void Button3_Click(object sender, EventArgs e)
        //{
        //    if (FileUpload4.HasFiles)
        //    {
        //        HttpPostedFile selectfile = FileUpload4.PostedFile;
        //        string fileExtension = Path.GetExtension(selectfile.FileName);
        //        if (fileExtension == ".pdf" || fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png")
        //        {
        //            string imageName = selectfile.FileName;
        //            string folderPath = Server.MapPath("~/Images/");
        //            if (!Directory.Exists(folderPath))
        //            {
        //                Directory.CreateDirectory(folderPath);
        //            }
        //            selectfile.SaveAs(folderPath + imageName);
        //            label4.Text = imageName;
        //            label4.ForeColor = System.Drawing.Color.Green;
        //            BinaryReader br = new BinaryReader(selectfile.InputStream);
        //            byte[] imageData = br.ReadBytes(selectfile.ContentLength);
        //            Session["photoName3"] = imageName;
        //            Session["photoBinary3"] = imageData;

        //        }
        //        else
        //        {
        //            Response.Write("<script>alert('the selected file not in the given format')</script>");
        //        }

        //    }
        //}
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (FileUpload4.HasFile)
            {
                HttpPostedFile selectfile = FileUpload4.PostedFile;
                string fileExtension = Path.GetExtension(selectfile.FileName).ToLower();

                if (fileExtension == ".pdf" || fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png")
                {
                    string imageName = Path.GetFileName(selectfile.FileName);
                    string folderPath = Server.MapPath("~/Images/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }

                    string fullPath = Path.Combine(folderPath, imageName);
                    selectfile.SaveAs(fullPath);

                    label4.Text = imageName + " uploaded successfully.";
                    label4.ForeColor = System.Drawing.Color.Green;

                    BinaryReader br = new BinaryReader(selectfile.InputStream);
                    byte[] imageData = br.ReadBytes(selectfile.ContentLength);
                    Session["photoName3"] = imageName;
                    Session["photoBinary3"] = imageData;

                    // Store image path in session for preview
                    Session["Uploaded12thPath"] = "~/Images/" + imageName;
                    btnView12th.Visible = true;
                }
                else
                {
                    label4.Text = "Invalid file format. Allowed: .pdf, .jpg, .jpeg, .png";
                    label4.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                label4.Text = "Please select a file.";
                label4.ForeColor = System.Drawing.Color.Red;
            }
        }
        protected void btnView12th_Click(object sender, EventArgs e)
        {
            if (Session["Uploaded12thPath"] != null)
            {
                img12th.ImageUrl = Session["Uploaded12thPath"].ToString();
                pnl12thPopup.Visible = true;
            }
        }

        protected void btnClose12th_Click(object sender, EventArgs e)
        {
            pnl12thPopup.Visible = false;
        }



        protected void Button5_Click(object sender, EventArgs e)
        {
            string mobile = Session["Phonenumber"] != null ? Session["Phonenumber"].ToString() : "";

            if (Session["photoBinary"] != null &&
                Session["photoBinary1"] != null &&
                Session["photoBinary2"] != null &&
                Session["photoBinary3"] != null)
            {
                try
                {
                    using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-A3NI1CD;Initial Catalog=EXAM;User ID=sa;Password=P@ssw0rd"))
                    {
                        using (SqlCommand cmd = new SqlCommand("UpdateStudentUploads", con))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;

                            // Add parameters properly
                            cmd.Parameters.AddWithValue("@PhotoName", Session["photoName"] ?? DBNull.Value);
                            cmd.Parameters.Add("@PhotoBinary", SqlDbType.VarBinary).Value = Session["photoBinary"] ?? DBNull.Value;
                            cmd.Parameters.AddWithValue("@TPhotoName", Session["photoName1"] ?? DBNull.Value);
                            cmd.Parameters.Add("@TPhotoBinary", SqlDbType.VarBinary).Value = Session["photoBinary1"] ?? DBNull.Value;
                            cmd.Parameters.AddWithValue("@IPhotoName", Session["photoName2"] ?? DBNull.Value);
                            cmd.Parameters.Add("@IPhotoBinary", SqlDbType.VarBinary).Value = Session["photoBinary2"] ?? DBNull.Value;
                            cmd.Parameters.AddWithValue("@GPhotoName", Session["photoName3"] ?? DBNull.Value);
                            cmd.Parameters.Add("@GPhotoBinary", SqlDbType.VarBinary).Value = Session["photoBinary3"] ?? DBNull.Value;
                            cmd.Parameters.AddWithValue("@Mobile", mobile);
                            cmd.Parameters.AddWithValue("@RegStep3", 1);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();

                            // Show a success alert and redirect
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Successfully inserted'); window.location='Admitt.aspx';", true);
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Log the error instead of displaying it
                    System.Diagnostics.Debug.WriteLine("Error: " + ex.Message);

                    
                }
            }
            else
            {
                Response.Write("<script>alert('Please upload all four documents before submitting!');</script>");
            }
        }


        protected void btnView_Click(object sender, EventArgs e)
        {
            if (Session["UploadedImagePath"] != null)
            {
                imgPopup.ImageUrl = Session["UploadedImagePath"].ToString();
                pnlImagePopup.Visible = true;
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            pnlImagePopup.Visible = false;
        }

    }
}

    


//protected void button3_Click(object sender, EventArgs e)
//{
//    if (Session["photoBinary"] != null && Session["photoBinary1"] != null && Session["photoBinary2"] != null)
//    {
//        SqlConnection con = new SqlConnection(db.Db);
//        SqlCommand cmd = new SqlCommand("final_upload", con);
//        cmd.CommandType = CommandType.StoredProcedure;
//        cmd.Parameters.AddWithValue("@photoName", Session["photoName2"] ?? DBNull.Value);
//        cmd.Parameters.AddWithValue("@photoBinary", Session["photoBinary2"] ?? DBNull.Value);
//        cmd.Parameters.AddWithValue("@TphotoName", Session["photoName"] ?? DBNull.Value);
//        cmd.Parameters.AddWithValue("@TphotoBinary", Session["photoBinary"] ?? DBNull.Value);
//        cmd.Parameters.AddWithValue("@IphotoName", Session["photoName1"] ?? DBNull.Value);
//        cmd.Parameters.AddWithValue("@IphotoBinary", Session["photoBinary1"] ?? DBNull.Value);
//        cmd.Parameters.AddWithValue("@ID", label00.Text);
//        con.Open();
//        cmd.ExecuteNonQuery();
//        con.Close();

//        //Response.Write("<script>alert('Documents successfully submitted!');</script>");

//        Response.Redirect("~/PrintForm.aspx", false);
//    }
//    else
//    {
//        Response.Write("<script>alert('Please upload all three documents before submitting!');</script>");
//    }


//}

//protected void button1_Click(object sender, EventArgs e)
//{
//    Session["Id"] = label00.Text;
//    if (imagel1.HasFiles)
//    {
//        HttpPostedFile selectfile = imagel1.PostedFile;
//        string fileExtension = Path.GetExtension(selectfile.FileName);
//        if (fileExtension == ".pdf" || fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png")
//        {
//            string imageName = selectfile.FileName;
//            string folderPath = Server.MapPath("~/Images/");
//            if (!Directory.Exists(folderPath))
//            {
//                Directory.CreateDirectory(folderPath);
//            }
//            selectfile.SaveAs(folderPath + imageName);
//            Textbox31.Text = imageName;
//            BinaryReader br = new BinaryReader(selectfile.InputStream);
//            byte[] imageData = br.ReadBytes(selectfile.ContentLength);
//            Session["photoName2"] = imageName;
//            Session["photoBinary2"] = imageData;

//        }
//        else
//        {
//            Response.Write("<script>alert('the selected file not in the given format')</script>");
//        }
//        //SqlConnection con = new SqlConnection(db.Db);
//        //SqlCommand cmd = new SqlCommand("updateP3_insert", con);
//        //cmd.CommandType = CommandType.StoredProcedure;
//        //cmd.Parameters.AddWithValue("@id", label00.Text);
//        //if (Session["photoName2"] != null)
//        //{
//        //    cmd.Parameters.AddWithValue("@photoName", Session["photoName2"].ToString());
//        //}
//        //else
//        //{
//        //    cmd.Parameters.AddWithValue("@photoName", DBNull.Value);
//        //    cmd.Parameters["@photoName2"].SqlDbType = SqlDbType.VarChar;

//        //}
//        //if (Session["photoBinary2"] != null)
//        //{
//        //    cmd.Parameters.AddWithValue("@photoBinary", Session["photoBinary2"]);
//        //}
//        //else
//        //{
//        //    cmd.Parameters.AddWithValue("@photoBinary", DBNull.Value);
//        //    cmd.Parameters["@photoBinary2"].SqlDbType = SqlDbType.VarBinary;

//        //}

//        //con.Open();
//        //cmd.ExecuteNonQuery();
//        //Response.Write("<script>alert('successfully inserted')</script>");
//    }
//}

//protected void button2_Click(object sender, EventArgs e)
//{
//    Session["Id"] = label00.Text;
//    if (FileUpload1.HasFiles)
//    {
//        HttpPostedFile selectfile = FileUpload1.PostedFile;
//        string fileExtension = Path.GetExtension(selectfile.FileName);
//        if (fileExtension == ".pdf" || fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png")
//        {
//            string imageName = selectfile.FileName;
//            string folderPath = Server.MapPath("~/Images/");
//            if (!Directory.Exists(folderPath))
//            {
//                Directory.CreateDirectory(folderPath);
//            }
//            selectfile.SaveAs(folderPath + imageName);
//            Textbox32.Text = imageName;
//            BinaryReader br = new BinaryReader(selectfile.InputStream);
//            byte[] imageData = br.ReadBytes(selectfile.ContentLength);
//            Session["photoName"] = imageName;
//            Session["photoBinary"] = imageData;

//        }
//        else
//        {
//            Response.Write("<script>alert('the selected file not in the given format')</script>");
//        }
//        //    SqlConnection con = new SqlConnection(db.Db);
//        //    SqlCommand cmd = new SqlCommand("updateP_insert", con);
//        //    cmd.CommandType = CommandType.StoredProcedure;
//        //    cmd.Parameters.AddWithValue("@id", label00.Text);
//        //    if (Session["photoName"] != null)
//        //    {
//        //        cmd.Parameters.AddWithValue("@photoName", Session["photoName"].ToString());
//        //    }
//        //    else
//        //    {
//        //        cmd.Parameters.AddWithValue("@photoName", DBNull.Value);
//        //        cmd.Parameters["@photoName"].SqlDbType = SqlDbType.VarChar;

//        //    }
//        //    if (Session["photoBinary"] != null)
//        //    {
//        //        cmd.Parameters.AddWithValue("@photoBinary", Session["photoBinary"]);
//        //    }
//        //    else
//        //    {
//        //        cmd.Parameters.AddWithValue("@photoBinary", DBNull.Value);
//        //        cmd.Parameters["@photoBinary"].SqlDbType = SqlDbType.VarBinary;

//        //    }

//        //    con.Open();
//        //    cmd.ExecuteNonQuery();
//        //    Response.Write("<script>alert('successfully inserted')</script>");
//        //}

//    }
//}

//protected void button4_Click(object sender, EventArgs e)
//{
//    Session["Id"] = label00.Text;
//    if (FileUpload2.HasFiles)
//    {
//        HttpPostedFile selectfile = FileUpload2.PostedFile;
//        string fileExtension = Path.GetExtension(selectfile.FileName);
//        if (fileExtension == ".pdf" || fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png")
//        {
//            string imageName = selectfile.FileName;
//            string folderPath = Server.MapPath("~/Images/");
//            if (!Directory.Exists(folderPath))
//            {
//                Directory.CreateDirectory(folderPath);
//            }
//            selectfile.SaveAs(folderPath + imageName);
//            Textbox33.Text = imageName;
//            BinaryReader br = new BinaryReader(selectfile.InputStream);
//            byte[] imageData = br.ReadBytes(selectfile.ContentLength);
//            Session["photoName1"] = imageName;
//            Session["photoBinary1"] = imageData;

//        }
//        else
//        {
//            Response.Write("<script>alert('the selected file not in the given format')</script>");
//        }
//    }
//}
//        SqlConnection con = new SqlConnection(db.Db);
//        SqlCommand cmd = new SqlCommand("updateP2_insert", con);
//        cmd.CommandType = CommandType.StoredProcedure;
//        cmd.Parameters.AddWithValue("@id", label00.Text);
//        if (Session["photoName1"] != null)
//        {
//            cmd.Parameters.AddWithValue("@photoName", Session["photoName1"].ToString());
//        }
//        else
//        {
//            cmd.Parameters.AddWithValue("@photoName", DBNull.Value);
//            cmd.Parameters["@photoName1"].SqlDbType = SqlDbType.VarChar;

//        }
//        if (Session["photoBinary1"] != null)
//        {
//            cmd.Parameters.AddWithValue("@photoBinary", Session["photoBinary1"]);
//        }
//        else
//        {
//            cmd.Parameters.AddWithValue("@photoBinary", DBNull.Value);
//            cmd.Parameters["@photoBinary1"].SqlDbType = SqlDbType.VarBinary;

//        }

//        con.Open();
//        cmd.ExecuteNonQuery();
//        Response.Write("<script>alert('successfully inserted')</script>");
//    }
//}

