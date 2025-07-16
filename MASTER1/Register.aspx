<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Register.aspx.cs" Inherits="MASTER1.Register" %>
<%--<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="Style.css"/>
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
        .btn {
            justify-content:center;
            display:flex;
        }
     .captcha-container {
    display: flex;
    align-items: center;
    gap: 15px;
    margin-bottom: 20px;
    flex-wrap: wrap;
}

.captcha-box {
    border: 2px solid #007acc;
    border-radius: 8px;
    background-color: #ffffcc;
    padding: 5px;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 50px;
    width: 200px;
}

.captcha-input {
    padding: 10px;
    width: 220px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 6px;
    box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
}

.refresh-button {
    padding: 10px 15px;
    background-color: #007acc;
    color: white;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-weight: bold;
    transition: background-color 0.3s ease;
}

.refresh-button:hover {
    background-color: #005e99;
}


    </style>--%>
   <%-- <style>
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

        .name {
            text-transform: uppercase;
        }

        label {
            display: inline-block;
            margin-bottom: 5px;
            color: #333;
        }

        .mtext {
            font-weight: bolder;
            font-size: 18px;
            color: #000000;
            font-family: Verdana;
        }

        input[type="text"],
        input[type="tel"],
        input[type="email"],
        input[type="date"],
        select {
            width: calc(100% - 20px);
            padding: 8px 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            background-color: #fff;
            color: #333;
        }

            input[type="text"]:focus,
            input[type="tel"]:focus,
            input[type="email"]:focus,
            input[type="date"]:focus,
            select:focus {
                border-color: #007bff;
                outline: none;
                box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            }

        select {
            height: 36px;
        }

        span {
            color: red;
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
    </style>--%>

    <script>
        //Prevent Numbers
        function preventNumberInput(event) {
            var charCode = (event.which) ? event.which : event.keyCode;


            if (!(charCode >= 65 && charCode <= 90) &&  // A-Z
                !(charCode >= 97 && charCode <= 122) && // a-z
                charCode !== 32) {                      // space
                event.preventDefault();
                return false;
            }

            return true;
        }

        //Prevent alphabetic characters and special characters
        function preventCharacterInput(event) {
            var charCode = (event.which) ? event.which : event.keyCode;

            // Allow numbers (0-9)
            if (charCode >= 48 && charCode <= 57) {
                return true;
            }


            event.preventDefault();
            return false;
        }

        //Prevent Special Characters And Spaces 
        function preventSpecialCharacters(event) {
            var charCode = (event.which) ? event.which : event.keyCode;


            if (!(charCode >= 65 && charCode <= 90) &&   // A-Z
                !(charCode >= 97 && charCode <= 122) &&  // a-z
                !(charCode >= 48 && charCode <= 57)) {   // 0-9
                event.preventDefault();
                return false;
            }

            return true;
        }

        // Prevent Numbers and Special Characters
        function preventNumberAndSpecialCharInput(event) {
            var charCode = event.which ? event.which : event.keyCode;

            // Allow only A-Z, a-z, and space
            if (!(charCode >= 65 && charCode <= 90) &&  // A-Z
                !(charCode >= 97 && charCode <= 122) && // a-z
                charCode !== 32) {                      // Space
                event.preventDefault();
                return false;
            }

            return true;
        }

</script>
   <%-- <script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function () {
        var dobField = document.getElementById('<%= txtDOB.ClientID %>');

        if (dobField) {
            var today = new Date();
            var minDate = new Date(today.getFullYear() - 25, today.getMonth(), today.getDate()); // Max age 25
            var maxDate = new Date(today.getFullYear() - 18, today.getMonth(), today.getDate()); // Min age 18

            dobField.min = minDate.toISOString().split("T")[0]; 
            dobField.max = maxDate.toISOString().split("T")[0];
        }
    });
</script>--%>
    <script type="text/javascript">
    function toggleDisabilityType() {
        var pwbdDropdown = document.getElementById('<%= ddlPwbd.ClientID %>');
        var disabilityRow = document.getElementById('<%= trDisabilityType.ClientID %>');
        var disabilityDropdown = document.getElementById('<%= DropDownList1.ClientID %>');
        var validator = document.getElementById('<%= rfvDisabilityType.ClientID %>');

        if (pwbdDropdown.value === "yes") {
            disabilityRow.style.display = "table-row"; // Show row
            disabilityDropdown.setAttribute("required", "required"); // Make it required
        } else {
            disabilityRow.style.display = "none"; // Hide row
            disabilityDropdown.value = ""; // Reset dropdown
        }
    }
        </script>
<script type="text/javascript">
    function toggleServiceDates() {
        var ddlExService = document.getElementById('<%= ddlExService.ClientID %>');
        var trServiceDates = document.getElementById('trServiceDates');
        var trEndDate = document.getElementById('trEndDate');

        if (ddlExService.value === "yes") {
            trServiceDates.style.display = "table-row";
            trEndDate.style.display = "table-row";
        } else {
            trServiceDates.style.display = "none";
            trEndDate.style.display = "none";
        }
    }
    document.addEventListener("DOMContentLoaded", function () {
    const dobField = document.getElementById('<%= txtDOB.ClientID %>');
    const exServiceDropdown = document.getElementById('<%= ddlExService.ClientID %>');
    const pwbdDropdown = document.getElementById('<%= ddlPwbd.ClientID %>');

    function updateDOBRange() {
        let maxAge = 25;
        let minAge = 18;

        // Check if Ex-Service is selected
        if (exServiceDropdown.value === "yes") {
            maxAge += 3; // Add 5 years for Ex-Service Men
        }

        // Check if PwBD is selected
        if (pwbdDropdown.value === "yes") {
            maxAge += 2; // Add 2 years for PwBD
        }

        const today = new Date();
        const minDate = new Date();
        const maxDate = new Date();

        minDate.setFullYear(today.getFullYear() - minAge);
        maxDate.setFullYear(today.getFullYear() - maxAge);

        dobField.min = maxDate.toISOString().split("T")[0];
        dobField.max = minDate.toISOString().split("T")[0];
    }

    // Event listeners to update DOB range
    exServiceDropdown.addEventListener("change", updateDOBRange);
    pwbdDropdown.addEventListener("change", updateDOBRange);

    updateDOBRange(); // Initial Call
});

</script>


</asp:Content>
<asp:Content ID="Head" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <p align="center">
        <asp:Label ID="lbltopmsg" runat="server" CssClass="mtext" ForeColor="red" Font-Bold="true" Visible="true"></asp:Label>
    </p>
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
    <h2>REGISTRATION FOR CANDIDATES</h2>
    <form method="POST" runat="server">
         
       
      
            
            <div class="mandatory-note">
                <b>All fields marked with <span style="color: red;">&ast;</span> are mandatory.</b>
            </div>
        <div class="sec">
             <b>Candidate details<span style="color: red;">&ast;</span></b>
            </div>
          <div class="form-row">
  <div class="form-group">
    <label for="name"><b>Candidate’s Name <span style="color: red;">&ast;</span></b></label>
    <asp:TextBox ID="txtName" runat="server" CssClass="name" required />
    <asp:RegularExpressionValidator
      ID="revName"
      runat="server"
      ControlToValidate="txtName"
      ValidationExpression="^[A-Za-z\s]+$"
      ErrorMessage="Candidate's name must only contain letters and spaces."
      ForeColor="Red" />
  </div>

  <div class="form-group">
    <label for="fatherName"><b>Father's Name <span style="color: red;">&ast;</span></b></label>
    <asp:TextBox ID="txtfatherName" runat="server" CssClass="name" required />
    <asp:RegularExpressionValidator
      ID="RegularExpressionValidator1"
      runat="server"
      ControlToValidate="txtfatherName"
      ValidationExpression="^[A-Za-z\s]+$"
      ErrorMessage="Father name must only contain capital letters and spaces."
      ForeColor="Red" />
  </div>

  <div class="form-group">
    <label for="motherName"><b>Mother's Name <span style="color: red;">&ast;</span></b></label>
    <asp:TextBox ID="txtmotherName" runat="server" CssClass="name" required />
    <asp:RegularExpressionValidator
      ID="RegularExpressionValidator2"
      runat="server"
      ControlToValidate="txtmotherName"
      ValidationExpression="^[A-Za-z\s]+$"
      ErrorMessage="Mother name must only contain capital letters and spaces."
      ForeColor="Red" />
  </div>
              </div>
       <div class="form-row">

  <div class="form-group">
    <label for="ddlGender"><b>Gender <span style="color: red;">&ast;</span></b></label>
    <asp:DropDownList ID="ddlGender" runat="server" CssClass="dropdown-list" required>
      <asp:ListItem Text="--Select Gender--" Value="" />
      <asp:ListItem Text="Male" Value="Male" />
      <asp:ListItem Text="Female" Value="Female" />
      <asp:ListItem Text="Transgender" Value="Transgender" />
    </asp:DropDownList>
  </div>

  <div class="form-group">
    <label for="mobile"><b>Mobile No <span style="color: red;">&ast;</span></b></label>
    <asp:TextBox ID="txtMobile" runat="server" CssClass="input-textbox"
      MaxLength="10" Placeholder="Enter your mobile number"
      onkeypress="preventCharacterInput(event);" required />
    <asp:RegularExpressionValidator
      ID="revMobile"
      runat="server"
      ControlToValidate="txtMobile"
      ValidationExpression="^[6-9][0-9]{9}$"
      ErrorMessage="Please enter a valid mobile number.It must start with 6, 7, 8 and 9"
      ForeColor="Red" />
  </div>

  <div class="form-group">
    <label for="email"><b>Email <span style="color: red;">&ast;</span></b></label>
    <asp:TextBox ID="txtEmail" runat="server" CssClass="input-textbox"
      Placeholder="Enter your email address" required />
    <asp:RegularExpressionValidator
      ID="revEmail"
      runat="server"
      ControlToValidate="txtEmail"
      ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,}$"
      ErrorMessage="Please enter a valid email address. Example: user@example.com"
      ForeColor="Red" />
  </div>
</div>

      
               <div class="form-row">
                   <div class="form-group">
               
                    <label for="ddlPost"><b>Select Post <span style="color: red;">&ast;</span></b></label>
               
                    <asp:DropDownList ID="ddlPost" runat="server" CssClass="dropdown-list" AutoPostBack="false"
                        required>
                        <asp:ListItem Text="Select your post" Value=""  Disabled="True" Selected="True" />
                        <asp:ListItem Text="Manager" Value="manager" />
                        <asp:ListItem Text="Developer" Value="developer" />
                        <asp:ListItem Text="Designer" Value="designer" />
                        <asp:ListItem Text="Analyst" Value="analyst" />
                        <asp:ListItem Text="Intern" Value="intern" />
                    </asp:DropDownList>
               </div>
                   <div class="form-group">
        <label for="txtNationality"><b>Nationality</b></label>
   
        <asp:TextBox ID="txtNationality" runat="server" CssClass="fixed-textbox" Text="Indian" ReadOnly="True"></asp:TextBox>
 </div>
                   <div class="form-group">
                    <label for="ddlCategory"><b>Category <span style="color: red;">&ast;</span></b></label>
               
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="dropdown-list"  AutoPostBack="false" required>
                        <asp:ListItem Text="Select your category" Value="" Disabled="True" Selected="True" />
                        <asp:ListItem Text="General" Value="general" />
                        <asp:ListItem Text="Scheduled Caste (SC)" Value="sc" />
                        <asp:ListItem Text="Scheduled Tribe (ST)" Value="st" />
                        <asp:ListItem Text="Other Backward Class (OBC)" Value="obc" />
                        <asp:ListItem Text="Economically Weaker Section (EWS)" Value="ews" />
                        </asp:DropDownList>
     </div>
                   </div>
   <div class="form-row">
    <div class="form-group">
                <label for="ddlExService">
                        <b>Are you an Ex-service Man? <span style="color: red;">&ast;</span></b>
                </label>

                  <asp:DropDownList ID="ddlExService" runat="server" CssClass="dropdown-list" AutoPostBack="False"
                    onchange="toggleServiceDates();">
                   <asp:ListItem Text="--Select--" Value="" Disabled="True" Selected="True" />
                     <asp:ListItem Text="Yes" Value="yes" />
                  <asp:ListItem Text="No" Value="no" />
               </asp:DropDownList>

                <asp:RequiredFieldValidator ID="rfvExService" runat="server"
                      ControlToValidate="ddlExService" ErrorMessage="Please select if you are an Ex-service Man!"
                      ForeColor="Red"></asp:RequiredFieldValidator>
              </div>

     
                  <div id="trServiceDates" style="display: none;" class="form-group">
                        <label for="txtStartDate">
                         <b>Service Start Date: <span style="color: red;">&ast;</span></b>
                      </label>
                       <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
        </div>

        <div id="trEndDate" style="display: none;" class="form-group">
            <label for="txtEndDate">
                <b>Service End Date: <span style="color: red;">&ast;</span></b>
            </label>
            <asp:TextBox ID="txtEndDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
        </div>
 
</div>












          <%--  <tr>
                <td>
                    <label for="ddlExService"><b>Are you an Ex-service Man? <span style="color: red;">&ast;</span></b></label></td>
                <td>
                    <asp:DropDownList ID="ddlExService" runat="server" CssClass="dropdown-list" AutoPostBack="False"   OnSelectedIndexChanged="ddlExService_SelectedIndexChanged">
                        <asp:ListItem Text="--Select--" Value="" Disabled="True" Selected="True" />
                        <asp:ListItem Text="Yes" Value="yes" />
                        <asp:ListItem Text="No" Value="no" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvExService" runat="server"
                        ControlToValidate="ddlExService" ErrorMessage="Please select if you are an Ex-service Man!"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr id="trServiceDates" runat="server" visible="false">
                <td>
                    <label for="txtStartDate"><b>Service Start Date: <span style="color: red;">&ast;</span></b></label></td>
                <td>
                    <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvStartDate" runat="server"
                        ControlToValidate="txtStartDate"
                        ErrorMessage="Please enter your service start date!"
                        ForeColor="Red" Enabled="false"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr id="trEndDate" runat="server" visible="false">
                <td>
                    <label for="txtEndDate"><b>Service End Date: <span style="color: red;">&ast;</span></b></label></td>
                <td>
                    <asp:TextBox ID="txtEndDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEndDate" runat="server"
                        ControlToValidate="txtEndDate"
                        ErrorMessage="Please enter your service end date!"
                        ForeColor="Red" Enabled="false"></asp:RequiredFieldValidator>
                </td>
            </tr>--%>


        <%-- <tr>
    <td>
        <label for="ddlPwbd"><b>Are you a Person with Benchmark Disability (PwBD)? <span style="color: red;">&ast;</span></b></label>
    </td>
    <td>
        <asp:DropDownList ID="ddlPwbd" runat="server" CssClass="dropdown-list" AutoPostBack="False" OnSelectedIndexChanged="ddlPwbd_SelectedIndexChanged">
            <asp:ListItem Text="Select" Value="" Disabled="True" Selected="True" />
            <asp:ListItem Text="Yes" Value="yes" />
            <asp:ListItem Text="No" Value="no" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvPwbd" runat="server"
            ControlToValidate="ddlPwbd" ErrorMessage="Please select if you are a Person with Benchmark Disability!"
            ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr id="trDisabilityType" runat="server" visible="false">
    <td>
        <label for="DropDownList1"><b>Type of Disability: <span style="color: red;">&ast;</span></b></label>
    </td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-list">
            <asp:ListItem Text="Select Disability Type" Value="" Disabled="True" Selected="True" />
            <asp:ListItem Text="Blindness" Value="Blindness" />
            <asp:ListItem Text="Low Vision" Value="Low Vision" />
            <asp:ListItem Text="Hearing Impairment" Value="Hearing Impairment" />
            <asp:ListItem Text="Locomotor Disability" Value="Locomotor Disability" />
            <asp:ListItem Text="Intellectual Disability" Value="Intellectual Disability" />
            <asp:ListItem Text="Mental Illness" Value="Mental Illness" />
            <asp:ListItem Text="Autism Spectrum Disorder" Value="Autism Spectrum Disorder" />
            <asp:ListItem Text="Cerebral Palsy" Value="Cerebral Palsy" />
            <asp:ListItem Text="Multiple Disabilities" Value="Multiple Disabilities" />
        </asp:DropDownList>

        <asp:RequiredFieldValidator ID="rfvDisabilityType" runat="server"
            ControlToValidate="DropDownList1"
            ErrorMessage="Please select your type of disability!"
            ForeColor="Red" Enabled="false"></asp:RequiredFieldValidator>
    </td>
</tr>--%>
             
 <div class="form-row">
    <div class="form-group">
        <label for="ddlPwbd">
            <b>Are you a Person with Benchmark Disability (PwBD)? <span style="color: red;">&ast;</span></b>
        </label>

        <asp:DropDownList ID="ddlPwbd" runat="server" CssClass="dropdown-list" AutoPostBack="False"
            onchange="toggleDisabilityType();">
            <asp:ListItem Text="Select" Value="" Disabled="True" Selected="True" />
            <asp:ListItem Text="Yes" Value="yes" />
            <asp:ListItem Text="No" Value="no" />
        </asp:DropDownList>

        <asp:RequiredFieldValidator ID="rfvPwbd" runat="server"
            ControlToValidate="ddlPwbd" ErrorMessage="Please select if you are a Person with Benchmark Disability!"
            ForeColor="Red"></asp:RequiredFieldValidator>

        <div id="trDisabilityType" runat="server" style="display: none;">
            <label for="DropDownList1">
                <b>Type of Disability: <span style="color: red;">&ast;</span></b>
            </label>

            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-list">
                <asp:ListItem Text="Select Disability Type" Value="" Disabled="True" Selected="True" />
                <asp:ListItem Text="Blindness" Value="Blindness" />
                <asp:ListItem Text="Low Vision" Value="Low Vision" />
                <asp:ListItem Text="Hearing Impairment" Value="Hearing Impairment" />
                <asp:ListItem Text="Locomotor Disability" Value="Locomotor Disability" />
                <asp:ListItem Text="Intellectual Disability" Value="Intellectual Disability" />
                <asp:ListItem Text="Mental Illness" Value="Mental Illness" />
                <asp:ListItem Text="Autism Spectrum Disorder" Value="Autism Spectrum Disorder" />
                <asp:ListItem Text="Cerebral Palsy" Value="Cerebral Palsy" />
                <asp:ListItem Text="Multiple Disabilities" Value="Multiple Disabilities" />
            </asp:DropDownList>

            <asp:RequiredFieldValidator ID="rfvDisabilityType" runat="server"
                ControlToValidate="DropDownList1"
                ErrorMessage="Please select your type of disability!"
                ForeColor="Red" Enabled="false"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group">
        <label for="txtDOB">
            <b>Date of Birth <span style="color: red;">&ast;</span></b>
        </label>

        <asp:TextBox ID="txtDOB" runat="server" CssClass="textbox" TextMode="Date" required></asp:TextBox>

        <asp:RequiredFieldValidator ID="rfvDOB" runat="server"
            ControlToValidate="txtDOB" ErrorMessage="Please select your date of birth!"
            ForeColor="Red"></asp:RequiredFieldValidator>

        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
    </div>
</div>

     
       <asp:ScriptManager runat="server" ID="scriptManager1"></asp:ScriptManager>
        <asp:UpdatePanel runat="server" ID="update1">
            <ContentTemplate>        
            
           
                   <div class="sec">
                        <td colspan="2">
                            <b>EXAM CENTER DETAILS <span style="color: red;">&ast;</span></b>
                   </div>
                <div class="form-row">
                    <div class="form-group">
                            <label for="ddlExamCenter1"><b>Exam Center 1 <span style="color: red;">&ast;</span></b></label></td>
                        
                            <asp:DropDownList ID="ddlExamCenter1" runat="server" CssClass="dropdown-list" AutoPostBack="true" OnSelectedIndexChanged="ValidateExamCenters">
                                <asp:ListItem Text="--Select an exam center--" Value="" Disabled="True" Selected="True" />
                                <asp:ListItem Text="Bangalore" Value="bangalore" />
                                <asp:ListItem Text="Tamil Nadu" Value="tamilnadu" />
                                <asp:ListItem Text="Kerala" Value="kerala" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvExamCenter1" runat="server"
                                ControlToValidate="ddlExamCenter1" ErrorMessage="Please select an exam center for Center 1!"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                       </div>
                    <div class="form-group">
                            <label for="ddlExamCenter2"><b>Exam Center 2 <span style="color: red;">&ast;</span></b></label></td>
                        
                            <asp:DropDownList ID="ddlExamCenter2" runat="server" CssClass="dropdown-list" AutoPostBack="true" OnSelectedIndexChanged="ValidateExamCenters">
                                <asp:ListItem Text="--Select an exam center--" Value="" Disabled="True" Selected="True" />
                                <asp:ListItem Text="Bangalore" Value="bangalore" />
                                <asp:ListItem Text="Tamil Nadu" Value="tamilnadu" />
                                <asp:ListItem Text="Kerala" Value="kerala" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvExamCenter2" runat="server"
                                ControlToValidate="ddlExamCenter2" ErrorMessage="Please select an exam center for Center 2!"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                       </div>
                    <div class="form-group">
                            <label for="ddlExamCenter3"><b>Exam Center 3 <span style="color: red;">&ast;</span></b></label></td>
                       
                            <asp:DropDownList ID="ddlExamCenter3" runat="server" CssClass="dropdown-list" AutoPostBack="true" OnSelectedIndexChanged="ValidateExamCenters">
                                <asp:ListItem Text="--Select an exam center--" Value="" Disabled="True" Selected="True" />
                                <asp:ListItem Text="Bangalore" Value="bangalore" />
                                <asp:ListItem Text="Tamil Nadu" Value="tamilnadu" />
                                <asp:ListItem Text="Kerala" Value="kerala" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvExamCenter3" runat="server"
                                ControlToValidate="ddlExamCenter3" ErrorMessage="Please select an exam center for Center 3!"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                     
                       
                            <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                    

    </div>
                    </div>
               
      
              

                <div class="sec"><b>Address details  (Correspondence Address) </b></div>

         <div class="form-row">
             <div class="form-group">
                    <label for="txtAddress"><b>Address Details <span style="color: red;">&ast;</span></b></label></td>
               
                    <asp:TextBox ID="txtCAddress" runat="server" CssClass="textbox" placeholder="Enter your street address" required></asp:TextBox>

                </div>
                <div class="form-group">
      
                    <label for="ddlCAState"><b>State <span style="color: red;">&ast;</span></b></label></td>
               
                    <asp:DropDownList ID="ddlCAState" runat="server" CssClass="dropdown-list"
                        AutoPostBack="true" OnSelectedIndexChanged="ddlCAState_SelectedIndexChanged">
                    </asp:DropDownList>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="ddlCAState" InitialValue=""
                        ErrorMessage="Please select a state!" ForeColor="Red">
                    </asp:RequiredFieldValidator>
               </div>
                <div class="form-group">

        
                    <label for="ddlCDistrict"><b>District <span style="color: red;">&ast;</span></b></label></td>
             
                    <asp:DropDownList ID="ddlCDistrict" runat="server"  AutoPostBack="false" CssClass="dropdown-list">
                    </asp:DropDownList>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="ddlCDistrict" InitialValue=""
                        ErrorMessage="Please select a district!" ForeColor="Red">
                    </asp:RequiredFieldValidator>
             
</div>
           
                

             <div class="form-group">
                    <label for="txtPincode"><b>Pincode <span style="color: red;">&ast;</span></b></label></td>
               
                    <asp:TextBox ID="txtPincode" runat="server" CssClass="textbox" placeholder="Enter your Pincode"   MaxLength="6"></asp:TextBox>
                    <asp:RegularExpressionValidator
                        ID="revPincode"
                        runat="server"
                        ControlToValidate="txtPincode"
                        ValidationExpression="^\d{6}$"
                        ErrorMessage="Pincode must be a 6-digit number."
                        ForeColor="Red">
                    </asp:RegularExpressionValidator>
             </div>
             </div>

        
     <%--<div class="sec">
    <div>
        <asp:CheckBox ID="checkbox" runat="server" AutoPostBack="true" OnCheckedChanged="checkbox_CheckedChanged" />
        <label for="checkbox">
            PERMANENT ADDRESS (If the Permanent Address and Correspondence Address are the same, select the checkbox.)
        </label>
    </div>
</div>--%>
                          <div class="sec" style="display: flex; align-items: center; gap: 4px;">
  <b> PERMANENT ADDRESS (If the Permanent Address and Correspondence Address are the same, select the checkbox.)</b>
  <span style="color: red; margin: 0;">*</span>
  <asp:CheckBox ID="checkbox" runat="server" AutoPostBack="true" OnCheckedChanged="checkbox_CheckedChanged" />
</div>


            <!-- Permanent Address Details -->
           <div class="form-row">
               <div class="form-group">
                    <label for="txtPAddress"><b>Address Details <span style="color: red;">&ast;</span></b></label></td>
                
                    <asp:TextBox ID="txtPAddress" runat="server" CssClass="textbox" placeholder="Enter your street address" required></asp:TextBox>
               
                   </div>
            <!-- Permanent Address State -->

             <div class="form-group">
                    <label for="ddlState"><b>State <span style="color: red;">&ast;</span></b></label></td>
                
                    <asp:DropDownList ID="ddlPAState" runat="server" CssClass="dropdown-list" AutoPostBack="true" OnSelectedIndexChanged="ddlPAState_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator
                        ID="rfvState"
                        runat="server"
                        ControlToValidate="ddlPAState"
                        ErrorMessage="Please select a state!"
                        ForeColor="Red" />
               </div>

            <!-- Permanent Address District -->
              <div class="form-group">
                    <label for="ddlDistrict"><b>District <span style="color: red;">&ast;</span></b></label></td>
              
                    <asp:DropDownList ID="ddlPDistrict" runat="server" CssClass="dropdown-list">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator
                        ID="rfvDistrict"
                        runat="server"
                        ControlToValidate="ddlPDistrict"
                        ErrorMessage="Please select a district!"
                        ForeColor="Red" />
              </div>

            <!-- Permanent Address City -->
             <div class="form-group">
                    <label for="txtPincode1"><b>Pincode <span style="color: red;">&ast;</span></b></label></td>
               
                    <asp:TextBox ID="txtPincode1" runat="server" CssClass="textbox" placeholder="Enter your Pincode"  MaxLength="6"></asp:TextBox>

                    <asp:RegularExpressionValidator
                        ID="RegularExpressionValidator3"
                        runat="server"
                        ControlToValidate="txtPincode1"
                        ValidationExpression="^\d{6}$"
                        ErrorMessage="Pincode must be a 6-digit number."
                        ForeColor="Red">
                    </asp:RegularExpressionValidator>
          </div>
               </div>
                </ContentTemplate>
                </asp:UpdatePanel>
                
<%--  <div class="captcha-container">
    <div class="captcha-box">
        <cap:CaptchaControl ID="captcha1" runat="server"
            CaptchaLength="5"
            CaptchaHeight="50"
            CaptchaWidth="200"
            CaptchaLineNoise="None"
            CaptchaMinTimeout="3"
            CaptchaMaxTimeout="240"
            ForeColor="Blue"
            BackColor="Yellow"
            CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz123456789"
            Height="46px"
            Width="200px" />
    </div>

    <asp:TextBox ID="TextBox1" runat="server" CssClass="captcha-input" placeholder="Enter CAPTCHA"></asp:TextBox>

   
</div>--%>


             <div class="sec" style="display: flex; align-items: center; gap: 4px;">
  <b>DECLARATION</b>
  <span style="color: red; margin: 0;">*</span>
  <asp:CheckBox ID="CheckBox1" runat="server" style="margin: 0;" />
</div>
                
                   <%-- <div class="sec">
                        <b>DECLARATION <span style="color: red;">&ast;</span></b>
                    </div>
                    <asp:CheckBox ID="chkDeclaration" runat="server" required />--%>
                  <%--  <p>
                        1. I declare that I have carefully read and fully understood the various instructions, 
                eligibility criteria, and other conditions and I hereby agree to abide by them.<br>
                        2. I declare that all the entries made by me in this application form are true to the best 
                of my knowledge and belief.<br>
                        3. If any particular furnished by me in the application are found to be false at any stage, 
                I am aware that I am liable to be disqualified for admission.
           
                    </p>--%>
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

  
              
              <%--  <td colspan="2" style="text-align: center;">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click1" ValidationGroup="vgExamCenters" />

                    <p align="center">
                <asp:Label ID="lblbottommsg" runat="server" CssClass="mtext" ForeColor="red" Font-Bold="true" Visible="true"></asp:Label>
            </p>--%>
          <div class="form-group">
        <div class="btn">
            <div class="btn-submit">
          <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click1" ValidationGroup="vgExamCenters" />
  

           <asp:Label ID="lblbottommsg" runat="server" CssClass="mtext" ForeColor="red" Font-Bold="true" Visible="true"></asp:Label>
            </div>
    </div>
       </div>
               

               
             
            
    </form>
        </div>
   
</asp:Content>




         <%--   <tr>
                <td>
                    <label for="ddlDisability"><b>Are you a person with a disability (PwBD)? <span style="color: red;">&ast;</span></b></label></td>
                <td>
                    <asp:DropDownList ID="ddlDisability" runat="server" CssClass="dropdown-list" required>
                        <asp:ListItem Text="Select" Value="" Disabled="True" Selected="True" />
                        <asp:ListItem Text="Yes" Value="yes" />
                        <asp:ListItem Text="No" Value="no" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvDisability" runat="server"
                        ControlToValidate="ddlDisability" ErrorMessage="Please select if you are a person with a disability!"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>--%>

<%--<%--<table>
     <asp:ScriptManager runat="server" EnablePartialRendering="true"></asp:ScriptManager>

        <asp:UpdatePanel runat="server" UpdateMode="Conditional">
            <ContentTemplate>
    <tr>
        <td><b>Address details (Correspondence Address)</b></td>
    </tr>

    <tr>
        <td>
            <label for="txtCAddress"><b>Address Details <span style="color: red;">&ast;</span></b></label>
        </td>
        <td>
            <asp:TextBox ID="txtCAddress" runat="server" CssClass="textbox" placeholder="Enter your street address" required></asp:TextBox>
        </td>
    </tr>

    <!-- AJAX: State Dropdown -->
   
            <tr>
                <td>
                    <label for="ddlCAState"><b>State <span style="color: red;">&ast;</span></b></label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCAState" runat="server" CssClass="dropdown-list"
                        AutoPostBack="true" OnSelectedIndexChanged="ddlCAState_SelectedIndexChanged">
                    </asp:DropDownList>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="ddlCAState" InitialValue=""
                        ErrorMessage="Please select a state!" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <label for="ddlCDistrict"><b>District <span style="color: red;">&ast;</span></b></label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCDistrict" runat="server" CssClass="dropdown-list">
                    </asp:DropDownList>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="ddlCDistrict" InitialValue=""
                        ErrorMessage="Please select a district!" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
        

    <!-- Pincode -->
    <tr>
        <td>
            <label for="txtPincode"><b>Pincode <span style="color: red;">&ast;</span></b></label>
        </td>
        <td>
            <asp:TextBox ID="txtPincode" runat="server" CssClass="textbox" placeholder="Enter your Pincode" MaxLength="6"></asp:TextBox>
            <asp:RegularExpressionValidator
                ID="revPincode"
                runat="server"
                ControlToValidate="txtPincode"
                ValidationExpression="^\d{6}$"
                ErrorMessage="Pincode must be a 6-digit number."
                ForeColor="Red">
            </asp:RegularExpressionValidator>
        </td>
    </tr>
    </ContentTemplate>
    </asp:UpdatePanel>
</table>--%>


  <%-- <table>
            <tr>
                <td>
                    <div>
                        <b>DECLARATION <span style="color: red;">&ast;</span></b>
                    </div>
                    <asp:CheckBox ID="chkDeclaration" runat="server" required />
                    <p>
                        1. I declare that I have carefully read and fully understood the various instructions, 
                eligibility criteria, and other conditions and I hereby agree to abide by them.<br>
                        2. I declare that all the entries made by me in this application form are true to the best 
                of my knowledge and belief.<br>
                        3. If any particular furnished by me in the application are found to be false at any stage, 
                I am aware that I am liable to be disqualified for admission.
                    </p> <!-- Checkbox for accepting declaration -->
                </td>
            </tr> <!-- Submit Button -->
            
                   
        <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click1" ValidationGroup="vgExamCenters" />

                    <p align="center">
                <asp:Label ID="lblbottommsg" runat="server" CssClass="mtext" ForeColor="red" Font-Bold="true" Visible="true"></asp:Label>
            </p>
                </td>
            </tr>
</table> --%>