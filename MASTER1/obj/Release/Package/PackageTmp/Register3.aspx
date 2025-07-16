<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register3.aspx.cs" Inherits="MASTER1.Register3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="Style.css" />
    <%-- <style>
      body {
        font-family: "Segoe UI", sans-serif;
        background: #fff;
        margin: 0;
    
      }
       .step-container {
  display: flex;
  justify-content: center;
  align-items: center;
  max-width: 900px;
  margin: auto;
  position: relative;
}

.step {
  text-align: center;
  position: relative;
  flex: 1;
}

.step::before,
.step::after {
  content: "";
  position: absolute;
  top: 15px;
  height: 2px;
  width: 50%;
  background-color: #ccc;
  z-index: 1;
}

.step::before {
  left: 0;
}

.step::after {
  right: 0;
}

.step:first-child::before {
  display: none;
}

.step:last-child::after {
  display: none;
}

.step.completed::before,
.step.completed::after {
  background-color: #009688;
}

.step .circle {
  width: 30px;
  height: 30px;
  border-radius: 50%;
  background-color: #e0e0e0;
  color: #000;
  display: inline-block;
  line-height: 30px;
  font-weight: bold;
  position: relative;
  z-index: 2;
}

.step.active .circle {
  background-color: #1e88e5;
  color: white;
}

.step.completed .circle {
  background-color: #009688;
  color: white;
}

.step-label {
  margin-top: 10px;
  font-size: 14px;
  color: #777;
}

.step.active .step-label {
  color: #1e88e5;
}

.step.completed .step-label {
  color: #009688;
}
      .container {
        max-width: 1200px;
        margin: auto;
      }

      h2,
      .sec,
      h3 {
        font-weight: bold;
        border-bottom: 3px solid #000;
        padding-bottom: 10px;
        margin-top: 40px;
        margin-bottom: 20px;
      }

      h3 {
        font-size: 20px;
        border-bottom: 2px solid #000;
      }

      form {
        width: 100%;
      }

      .form-row {
        display: flex;
        flex-wrap: wrap;
        margin-bottom: 20px;
      }

      .form-group {
        flex: 1;
        min-width: 250px;
        margin-right: 20px;
        margin-bottom: 10px;
      }

      label {
        display: block;
        margin-bottom: 6px;
        font-weight: 500;
      }

      input,
      select,
      textarea {
        width: 100%;
        padding: 10px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
      }

      textarea {
        resize: vertical;
        height: 80px;
      }

      /*.btn {
        padding: 10px 20px;
        font-size: 14px;
        border: none;
        cursor: pointer;
        border-radius: 4px;
      }
     .btn-submit {
    background-color: #0056b3;
}
      .btn-submit {
    background-color: #007bff;
    color: white;
    padding: 8px 12px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    font-size: 16px;
    width: auto;
    margin: 20px;

        background-color: #28a745;
        color: white;
        margin-right: 10px;
      }

      .btn-cancel {
        background-color: #eee;
        color: #000;
      }*/

       .btn {
            justify-content:center;
            display:flex;
        }
         input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 8px 12px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        input[type="submit"] {
            width: auto;
            margin: 20px 0;
        }

      .nta-header {
        width: 100%;
        background: linear-gradient(to right, #ffa726, #fff3e0);
        padding: 25px 20px;
        font-family: "Segoe UI", sans-serif;
        color: #333;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        border-bottom: 3px solid #fb8c00;
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-radius: 0 0 20px 20px;
      }

      .nta-header .title {
        font-size: 1.8em;
        font-weight: bold;
        color: #e65100;
      }

      .nta-header .nav-links a {
        margin-left: 20px;
        text-decoration: none;
        color: #4e342e;
        font-size: 1em;
        font-weight: 500;
        transition: color 0.3s;
      }

      .nta-header .nav-links a:hover {
        color: #bf360c;
        text-decoration: underline;
      }

      .mandatory-note {
        margin-bottom: 20px;
      }

      .mandatory-note b {
        color: #333;
      }

      .mandatory-note span {
        color: red;
      }

      .application-id {
        margin-bottom: 20px;
      }

      .section-title {
        background-color: #f0f0f0;
        padding: 10px;
        border-radius: 4px;
        margin-bottom: 15px;
        font-size: 14px;
      }

      .declaration {
        background-color: #f0f0f0;
        padding: 15px;
        border-radius: 4px;
        margin-bottom: 20px;
      }

      .error-message {
        color: red;
        text-align: center;
        margin-bottom: 20px;
      }

      @media (max-width: 600px) {
        .nta-header {
          flex-direction: column;
          align-items: flex-start;
        }

        .nta-header .nav-links {
          margin-top: 10px;
        }

        .nta-header .nav-links a {
          display: block;
          margin: 5px 0;
        }
      }
    </style>--%>
    <%--<style>
       h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
            
        form {
            max-width: 800px;
            margin: 20px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        form div {
            margin-bottom: 15px;
            font-size: 14px;
            color: #555;
            padding: 10px;
            background-color: #f0f0f0;
            border-radius: 4px;
        }
       
       table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
    background-color: #fff;
}
        td {
            padding: 10px;
            vertical-align: top;
        }
         label {
    display: inline-block; 
    margin-bottom: 5px; 
    color: #333; 
}
             .custom-label {
            font-size: 16px;
            font-weight: bold;
            color: #333;
            display: block;
            margin-bottom: 5px;
        }
             /* Upload Button Styling */
.upload-button {
    padding: 8px 15px;
    font-size: 14px;
    font-weight: bold;
    color: white;
    background-color: #007bff; /* Blue color */
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

        /* Custom File Upload Styling */
        .custom-file-upload {
            display: flex;
            align-items: center;
            border: 1px solid #ccc;
            padding: 8px;
            width: 300px;
            border-radius: 5px;
            background-color: #f9f9f9;
            cursor: pointer;
        }

        /* File Upload Input */
        .custom-file-upload input[type="file"] {
            width: 100%;
            border: none;
            background: none;
            cursor: pointer;
            font-size: 14px;
        }
            .file-upload-container {
            display: flex;
            align-items: center;
            gap: 20px; /* Space between label and file upload */
            background-color:white;
        }
            input[type="submit"], input[type="button"] {
    background-color: #007bff;
    color: white;
    padding: 8px 12px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    font-size: 16px;
    width: auto;
    margin: 20px;
}
              p {
        font-size: 18px;
    }
    </style>--%>
 <%--  <script type="text/javascript">
    function showImagePopup() {
        var imagePath = document.getElementById('<%= hfImagePath.ClientID %>').value;
        if (imagePath) {
            document.getElementById("popupImage").src = imagePath;
            document.getElementById("imageModal").style.display = "block";
        } else {
            alert("Image path is empty.");
        }
    }

    function hideImagePopup() {
        document.getElementById("imageModal").style.display = "none";
    }
</script>--%>


    <script>
    function displayFileName(input, labelId) {
        var fileName = input.files.length > 0 ? input.files[0].name : "No file chosen";
        document.getElementById(labelId).textContent = fileName;
    }
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <%--<img src="im3.png" alt="Description of image" style="display: block; margin: auto; width: 40%; height: auto;" />--%>
     <br />
    <div class="step-container">
  <div id="Step1" runat="server" class="step">
    <div class="circle">1</div>
    <div class="step-label">Basic Details</div>
  </div>

  <div id="Step2" runat="server" class="step">
    <div class="circle">2</div>
    <div class="step-label">Qualification</div>
  </div>

  <div id="Step3" runat="server" class="step">
    <div class="circle">3</div>
    <div class="step-label">Documents Upload</div>
  </div>
</div>
     <div class="container">
   <h2>DOCUMENT'S UPLOAD</h2>
  
<form  method="POST" runat="server">

   
       <div>
    <b style="font-size: 18px;">File upload <span style="color: red;">&ast;</span></b>

</div> 
     <p><b>Application ID:</b> 
   <asp:Label ID="lblApplicationID" runat="server" Font-Bold="true" Font-Size="20px"></asp:Label>
</p>
        <div>
        <asp:Label ID="label00" runat="server" />
            <!-- Step-by-step instructions -->
           <div class="sec"> Steps to Upload a File:</div>
            <p>1. Click the **"Choose File"** button below.</p>
            <p>2. Select the file you want to upload from your device.</p>
            <p>3. Click the **"Upload"** button to upload the selected file.</p>
            <p>4. Wait for the confirmation message to appear.</p>
            <p>5. If an error occurs, check the file format and size, then try again.</p>
          
      <%--  <!-- File Upload Control -->
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br /><br />
            
            <!-- Upload Button -->
            <asp:Button ID="btnUpload" runat="server" Text="Upload"  />
            <br /><br />--%>
          <!-- Label and TextBox -->
           <%-- <asp:Label ID="lblFileName" runat="server" Text="Enter File Name: "></asp:Label>
            <asp:TextBox ID="txtFileName" runat="server"></asp:TextBox>
            <br /><br />

            <!-- File Upload Control -->
            <asp:Label ID="lblUpload" runat="server" Text="Select File: "></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br /><br />
            
            <!-- Upload Button -->
            <asp:Button ID="btnUpload" runat="server" Text="Upload"  />
            <br /><br />
            
            <!-- Label for displaying messages -->
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>--%>
         <!-- File Upload Styled as TextBox -->
           <%-- <asp:Label ID="lblUpload" runat="server" Text="Select File: "></asp:Label>
            <div class="file-upload-container">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
            <br /><br />

            <!-- Upload Button -->
            <asp:Button ID="btnUpload" runat="server" Text="Upload"  />
            <br /><br />--%>
       <%--  <asp:Label ID="lblFileUpload" runat="server" Text="Select a JPEG File:" CssClass="custom-label" />
      <div class="custom-file-upload">
            
    <asp:FileUpload ID="FileUpload2" runat="server" accept=".jpeg,.jpg" required CssClass="form-control" />
</div>--%>
        <hr style="border: 2px solid black;" /> <!-- Black Line -->
            <div class="form-row">
               <%-- <div class="form-group">
      <div class="file-upload-container">
    <!-- Label for File Upload -->
    <asp:Label ID="lblFileUpload" runat="server" Text="Select an Image File:" CssClass="custom-label" />
    <div class="custom-file-upload">
        <asp:FileUpload ID="FileUpload2" runat="server" accept=".jpeg,.jpg" CssClass="form-control"
            onchange="displayFileName(this, 'fileNameLabel2')" />
       
    </div>
           <asp:Label ID="label1" runat="server" />
  <%--  <span id="fileNameLabel2" class="file-name-label">No file chosen</span>--%>
  <%--  <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click1" CssClass="upload-button" />
</div>
                    </div>--%>
             <div class="form-group">
    <div class="file-upload-container">
        <!-- Label -->
        <asp:Label ID="lblFileUpload" runat="server" Text="Select an Image File:" CssClass="custom-label" />

        <!-- File Upload -->
        <div class="custom-file-upload">
            <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
        </div>

        <!-- Success Message -->
        <asp:Label ID="label1" runat="server" />

        <!-- Upload Button -->
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click1" CssClass="upload-button" />

        <!-- View Button -->
        <asp:Button ID="btnView" runat="server" Text="View" CssClass="view-button" OnClick="btnView_Click" Visible="false" />
    </div>

    <!-- Image Panel -->
    <asp:Panel ID="pnlImagePopup" runat="server" Visible="false" CssClass="popup-panel">
        <asp:Image ID="imgPopup" runat="server" Width="300px" />
        <br />
        <asp:Button ID="btnClose" runat="server" Text="Close" OnClick="btnClose_Click" />
    </asp:Panel>
</div>
                <%--
<div class="form-group">
    <div class="file-upload-container">
        <!-- Label -->
        <asp:Label ID="Label1" runat="server" Text="Signature of Student:" CssClass="custom-label" />

        <!-- File Upload -->
        <div class="custom-file-upload">
            <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
        </div>

        <!-- Success Message -->
        <asp:Label ID="label6" runat="server" />

        <!-- Upload Button -->
        <asp:Button ID="Button4" runat="server" Text="Upload" CssClass="upload-button" OnClick="Button1_Click" />

        <!-- View Button -->
        <asp:Button ID="btnViewSignature" runat="server" Text="View" CssClass="view-button" OnClick="btnViewSignature_Click" Visible="false" />
    </div>

    <!-- Image Panel -->
    <asp:Panel ID="pnlSignaturePopup" runat="server" Visible="false" CssClass="popup-panel">
        <asp:Image ID="imgSignature" runat="server" Width="300px" />
        <br />
        <asp:Button ID="btnCloseSignature" runat="server" Text="Close" OnClick="btnCloseSignature_Click" />
    </asp:Panel>
</div>


<%--<!-- Popup Modal -->
<!-- Image Popup Modal -->
<div id="imageModal" class="modal" style="display:none;">
    <div class="modal-content">
        <span class="close" onclick="hideImagePopup()">&times;</span>
        <img id="popupImage" src="" alt="Uploaded Image" style="max-width:100%; height:auto;" />
    </div>
</div>--%>

<div class="form-group">
    <div class="file-upload-container">
        <!-- Label -->
        <asp:Label ID="Label12" runat="server" Text="Signature of Student:" CssClass="custom-label" />

        <!-- File Upload -->
        <div class="custom-file-upload">
            <asp:FileUpload ID="FileUpload1" runat="server" accept=".jpeg,.jpg" CssClass="form-control" />
        </div>

        <!-- Success Message -->
        <asp:Label ID="label2" runat="server" />

        <!-- Upload Button -->
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" CssClass="upload-button" />

        <!-- View Button -->
        <asp:Button ID="btnViewSignature" runat="server" Text="View" CssClass="view-button" OnClick="btnViewSignature_Click" Visible="false" />
    </div>

    <!-- Signature Image Panel -->
    <asp:Panel ID="pnlSignaturePopup" runat="server" Visible="false" CssClass="popup-panel">
        <asp:Image ID="imgSignature" runat="server" Width="300px" />
        <br />
        <asp:Button ID="btnCloseSignature" runat="server" Text="Close" OnClick="btnCloseSignature_Click" />
    </asp:Panel>
</div>

             <%--  <div class="form-group">       old
    <div class="file-upload-container">
        <asp:Label ID="Label12" runat="server" Text="Signature of Student:" CssClass="custom-label" />
        <div class="custom-file-upload">
            <asp:FileUpload ID="FileUpload1" runat="server" accept=".jpeg,.jpg" CssClass="form-control" />
        </div>
        <asp:Label ID="label2" runat="server" />
        <%--  <span id="fileNameLabel1" class="file-name-label">No file chosen</span>--%>
       <%-- <asp:Button ID="Button1" runat="server" Text="Upload" CssClass="upload-button" OnClick="Button1_Click" />
    </div>
</div>
                </div>--%>
</div>
<div class="form-row">
   <%-- <div class="form-group">
        <div class="file-upload-container">
            <asp:Label ID="Label14" runat="server" Text="10th Certificate File:" CssClass="custom-label" />
            <div class="custom-file-upload">
                <asp:FileUpload ID="FileUpload3" runat="server" accept=".jpeg,.jpg" CssClass="form-control" />
            </div>
            <asp:Label ID="label3" runat="server" />
            <%-- <span id="fileNameLabel3" class="file-name-label">No file chosen</span>--%>
           <%-- <asp:Button ID="Button2" runat="server" Text="Upload" CssClass="upload-button" OnClick="Button2_Click" />
        </div>
    </div>--%>
    <div class="form-group">
    <div class="file-upload-container">
        <!-- Label -->
        <asp:Label ID="Label14" runat="server" Text="10th Certificate File:" CssClass="custom-label" />

        <!-- File Upload -->
        <div class="custom-file-upload">
            <asp:FileUpload ID="FileUpload3" runat="server" accept=".jpeg,.jpg" CssClass="form-control" />
        </div>

        <!-- Success Message -->
        <asp:Label ID="label3" runat="server" />

        <!-- Upload Button -->
        <asp:Button ID="Button2" runat="server" Text="Upload" OnClick="Button2_Click" CssClass="upload-button" />

        <!-- View Button -->
        <asp:Button ID="btnView10th" runat="server" Text="View" CssClass="view-button" OnClick="btnView10th_Click" Visible="false" />
    </div>

    <!-- Image Panel -->
    <asp:Panel ID="pnl10thPopup" runat="server" Visible="false" CssClass="popup-panel">
        <asp:Image ID="img10th" runat="server" Width="300px" />
        <br />
        <asp:Button ID="btnClose10th" runat="server" Text="Close" OnClick="btnClose10th_Click" />
    </asp:Panel>
</div>

   <%-- <div class="form-group">
        <div class="file-upload-container">
            <asp:Label ID="Label16" runat="server" Text="12th Certificate File:" CssClass="custom-label" />
            <div class="custom-file-upload">
                <asp:FileUpload ID="FileUpload4" runat="server" accept=".jpeg,.jpg" CssClass="form-control" />
            </div>
            <%--  onchange="displayFileName(this, 'fileNameLabel4')" />--%>
           <%-- %> <asp:Label ID="label4" runat="server" />
            <%--  <span id="fileNameLabel4" class="file-name-label">No file chosen</span>--%>
          <%--  <asp:Button ID="Button3" runat="server" Text="Upload" CssClass="upload-button" OnClick="Button3_Click" />
        </div>
    </div>--%>
    <div class="form-group">
    <div class="file-upload-container">
        <!-- Label -->
        <asp:Label ID="Label16" runat="server" Text="12th Certificate File:" CssClass="custom-label" />

        <!-- File Upload -->
        <div class="custom-file-upload">
            <asp:FileUpload ID="FileUpload4" runat="server" accept=".jpeg,.jpg" CssClass="form-control" />
        </div>

        <!-- Success Message -->
        <asp:Label ID="label4" runat="server" />

        <!-- Upload Button -->
        <asp:Button ID="Button3" runat="server" Text="Upload" CssClass="upload-button" OnClick="Button3_Click" />

        <!-- View Button -->
        <asp:Button ID="btnView12th" runat="server" Text="View" CssClass="view-button" OnClick="btnView12th_Click" Visible="false" />
    </div>

    <!-- Image Panel -->
    <asp:Panel ID="pnl12thPopup" runat="server" Visible="false" CssClass="popup-panel">
        <asp:Image ID="img12th" runat="server" Width="300px" />
        <br />
        <asp:Button ID="btnClose12th" runat="server" Text="Close" OnClick="btnClose12th_Click" />
    </asp:Panel>
</div>

</div>

<div class="sec" style="display: flex; align-items: center; gap: 4px;">
    <b>DECLARATION</b>
    <span style="color: red; margin: 0;">*</span>
    <asp:CheckBox ID="chkDeclaration" runat="server" style="margin: 0;" />
</div>

       <%-- <div>
    <b> DECLARATION <span style="color: red;">&ast;</span></b>
</div>
          <asp:CheckBox ID="chkDeclaration" runat="server" required />
           <p>
                1. I declare that I have carefully read and fully understood the various instructions, 
                eligibility criteria, and other conditions and I hereby agree to abide by them.<br>
                2. I declare that all the entries made by me in this application form are true to the best 
                of my knowledge and belief.<br>
                3. If any particular furnished by me in the application are found to be false at any stage, 
                I am aware that I am liable to be disqualified for admission.
            </p>--%>
            <!-- Checkbox for accepting declaration -->
          
         <div class="form-group">
 
  <label for="chkDeclaration">
    I declare that:
  </label>
  <ol style="margin-top: 5px; margin-left: 25px;">
    <li>
      I have carefully read and fully understood the various instructions, eligibility criteria, 
      and other conditions, and I hereby agree to abide by them.
    </li>
    <li>
      All the entries made by me in this application form are true to the best of my knowledge and belief.
    </li>
    <li>
      If any particulars furnished by me in the application are found to be false at any stage, 
      I am aware that I am liable to be disqualified for admission.
    </li>
  </ol>
</div>
   <%-- <td colspan="2" style="text-align: center;">
        <!-- Submit Button -->
     
        <asp:Button ID="Button5" runat="server" Text="Submit" CssClass="btn btn-primary" onclick="Button5_Click"/>--%>

             <div class="form-group">
        <div class="btn">
            <div class="btn-submit">
    <asp:Button ID="Button5" runat="server" Text="Submit" CssClass="btn btn-primary" onclick="Button5_Click"/>
  

            <asp:Label ID="Label5" runat="server" ForeColor="Red" Visible="False"></asp:Label>
            </div>
    </div>
       </div>
   </div>
    </form>
         </div>
</asp:Content>
