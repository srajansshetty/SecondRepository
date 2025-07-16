<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Register2.aspx.cs" Inherits="MASTER1.Register2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="Style.css"/>  
    <%--  <style>
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
     <%--  <style>
              /*/*h2 {
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
.form-container {
    display: flex;
    flex-direction: column;
     /* Centers input boxes horizontally */
   /* Centers vertically if needed */
    width: 100%;
    height: 100vh; /* Full height of the viewport (optional) */
}

input[type="text"], 
input[type="tel"], 
input[type="email"], 
input[type="date"],
select {
    width: 300px; 
    padding: 8px 10px; 
    border: 1px solid #ccc; 
    border-radius: 4px; 
    font-size: 14px; 
    background-color: #fff;  
    color: #333;
    display: block; /* Ensures full-width inside the container */
    margin: 2px 0; /* Adds spacing between fields */
    /* Centers text inside the input */
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
   /* General Button Styling */
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

/* Hover Effect */
input[type="submit"]:hover, input[type="button"]:hover {
    background-color: #0056b3;
}
 .header-left{
           background: blue;
           text-align: left;
           margin-right:10px;
            padding: 10px;
              font-size: 17px;
       }

/* Button Alignment */
.button-container {
    display: flex;
    justify-content: space-between; /* Aligns Previous button left, Submit button right */
    width: 100%;
}
  select {
        padding: 5px;
        font-size: 14px;
    }*/*/
  

           </style>--%>
    <script>
  document.addEventListener("DOMContentLoaded", function () {
    const dobHiddenField = document.getElementById("dobHiddenField"); // Get hidden field with DOB
    const ddlYear10th = document.getElementById("<%= ddlYearCompletion.ClientID %>");  // 10th Grade
    const ddlYear12th = document.getElementById("<%= ddlYearCompletion1.ClientID %>"); // 12th Grade
    const ddlGraduation = document.getElementById("<%= DropDownList2.ClientID %>"); // Graduation

    // Run validation when user selects year
    ddlYear10th.addEventListener("change", validateYears);
    ddlYear12th.addEventListener("change", validateYears);
    ddlGraduation.addEventListener("change", validateYears);

    function validateYears() {
        let dobValue = dobHiddenField.value; // Get DOB from hidden field
        if (!dobValue) return; // Exit if DOB is empty

        let dob = new Date(dobValue); // Convert to Date object
        if (isNaN(dob)) return; // Exit if DOB is invalid

        let minYear10th = dob.getFullYear() + 15; // 10th Grade should be 15 years after birth
        let selectedYear10th = parseInt(ddlYear10th.value);
        let selectedYear12th = parseInt(ddlYear12th.value);
        let selectedYearGraduation = parseInt(ddlGraduation.value);

        // Validation for 10th Grade Year
        if (selectedYear10th && selectedYear10th < minYear10th) {
            alert(`10th Grade year should be at least ${minYear10th}.`);
            ddlYear10th.value = ""; // Reset selection
            return;
        }

        // Validation for 12th Grade Year (+2 years from 10th)
        if (selectedYear12th && selectedYear12th < selectedYear10th + 2) {
            alert(`12th Grade year should be at least ${selectedYear10th + 2}.`);
            ddlYear12th.value = ""; // Reset selection
            return;
        }

        // Validation for Graduation Year (+4 years from 12th)
        if (selectedYearGraduation && selectedYearGraduation < selectedYear12th + 3) {
            alert(`Graduation year should be at least ${selectedYear12th + 3}.`);
            ddlGraduation.value = ""; // Reset selection
        }
    }
});


    </script>
<%--<script>
  document.addEventListener("DOMContentLoaded", function () {
    let dropdowns = document.querySelectorAll(".dropdown"); // Select all dropdowns by class

    let currentYear = new Date().getFullYear();

    dropdowns.forEach(function (dropdown) {
        dropdown.innerHTML = '<option value="">Select Year</option>'; // Clear existing options

        for (let year = currentYear; year >= 1950; year--) {
            let option = new Option(year, year);
            dropdown.appendChild(option);
        }
    });
});

</script>--%>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
   <h2>Qualification details</h2>
<form  method="POST" runat="server">
  
      <asp:HiddenField ID="dobHiddenField" runat="server" ClientIDMode="Static" />
   

        <div class="mandatory-note">
      <b>All fields marked with <span style="color: red;">&ast;</span> are mandatory.</b>
   </div>
    <div class="application-id" > <p><b>Application ID:</b> 
   <asp:Label ID="lblApplicationID" runat="server" Font-Bold="true" Font-Size="20px"></asp:Label>
</p></div>
       

        <div class="sec">
    <b>10th Grade <span style="color: red;">&ast;</span></b>
            </div>

    <div class="form-row" >
        <div class="form-group">
                  <label for="boardName"><b>Board Name <span style="color: red;">&ast;</span></b></label>
   
                  <asp:TextBox ID="txtBoardName" runat="server" CssClass="name" required/>
                  <asp:RegularExpressionValidator 
                  ID="regexBoardName" 
                  runat="server" 
                  ControlToValidate="txtBoardName"  
                  ValidationExpression="^[A-Za-z\s]+$"
                  ErrorMessage="Board Name must only contain letters and spaces." 
                  ForeColor="Red" />
   </div>
      
        <div class="form-group">
                 <label for="schoolName"><b>School Name <span style="color: red;">&ast;</span></b></label>
    
                <asp:TextBox ID="txtSchoolName" runat="server" CssClass="name" required/>
           
         
        </div>
        </div>
    <div class="form-row">
         <div class="form-group">

              <label for="ddlYearCompletion"><b>Year of Completion <span style="color: red;">&ast;</span></b></label>
    
                <asp:DropDownList ID="ddlYearCompletion" runat="server" CssClass="dropdown" required EnableViewState="true">
                     <asp:ListItem Text="Select Year" Value="" />
                  </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="rfvYearCompletion" runat="server" 
                    ControlToValidate="ddlYearCompletion" InitialValue="" 
                   ErrorMessage="Please select your year of completion!" ForeColor="Red" />

             </div>
        <div class="form-group">
              <label for="percentage"><b>Percentage / CGPA <span style="color: red;">&ast;</span></b></label>
   
               <asp:TextBox ID="txtPercentage" runat="server" CssClass="name" required/>
                <asp:RegularExpressionValidator 
              ID="regexPercentage" 
              runat="server" 
             ControlToValidate="txtPercentage"  
              ValidationExpression="^(100|\d{1,2}(\.\d{1,2})?)$"
              ErrorMessage="Enter a valid percentage or CGPA (e.g., 85.5 or 9.2)." 
                ForeColor="Red" />
             </div>
  </div>
         <div class="sec">
    <b> 12th Grade <span style="color: red;">&ast;</span></b>

</div> 
       <div class="form-row">
           <div class="form-group"
    <label for="boardName"><b>Board Name <span style="color: red;">&ast;</span></b></label>
    
        <asp:TextBox ID="TextBox1" runat="server" CssClass="name" required/>
        <asp:RegularExpressionValidator 
            ID="RegularExpressionValidator1" 
            runat="server" 
            ControlToValidate="TextBox1"  
            ValidationExpression="^[A-Za-z\s]+$"
            ErrorMessage="Board Name must only contain letters and spaces." 
            ForeColor="Red" />
   
    </div>
    <div class="form-group">
    
    <label for="schoolName"><b>College Name <span style="color: red;">&ast;</span></b></label>
   
        <asp:TextBox ID="TextBox2" runat="server" CssClass="name" required/>
        </div>
           </div>
    <div class="form-row">
           <div class="form-group">

<label for="ddlYearCompletion"><b>Year of Completion <span style="color: red;">&ast;</span></b></label></td>
    
        <asp:DropDownList ID="ddlYearCompletion1" runat="server" CssClass="dropdown" required EnableViewState="true">
            <asp:ListItem Text="Select Year" Value="" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="ddlYearCompletion" InitialValue="" 
            ErrorMessage="Please select your year of completion!" ForeColor="Red" />
    
           </div>
        <div class="form-group">
<label for="percentage"><b>Percentage / CGPA <span style="color: red;">&ast;</span></b></label>

        <asp:TextBox ID="TextBox4" runat="server" CssClass="name" required/>
        <asp:RegularExpressionValidator 
    ID="RegularExpressionValidator2" 
    runat="server" 
    ControlToValidate="TextBox4"  
    ValidationExpression="^(100|\d{1,2}(\.\d{1,2})?)$"
    ErrorMessage="Enter a valid percentage or CGPA (e.g., 85.5 or 9.2)." 
    ForeColor="Red" />

   </div>
        </div>
  
      <div class="sec">
    <b>other graduation </b>

</div> 
       <div class="form-row">
           <div class="form-group">
    <label for="boardName"><b>Board Name </b></label>
   
        <asp:TextBox ID="TextBox5" runat="server" CssClass="name" />
        <asp:RegularExpressionValidator 
            ID="RegularExpressionValidator3" 
            runat="server" 
            ControlToValidate="TextBox5"  
            ValidationExpression="^[A-Za-z\s]+$"
            ErrorMessage="Board Name must only contain letters and spaces." 
            ForeColor="Red" />


               </div>
           <div class="form-group">
   <label for="schoolName"><b>College Name </b></label>
    
        <asp:TextBox ID="TextBox6" runat="server" CssClass="name" />
               </div>
           </div>
    <div class="form-row">
        <div class="form-group"
   <label for="ddlYearCompletion"><b>Year of Completion </b></label>
    
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown"  EnableViewState="true">
            <asp:ListItem Text="Select Year" Value="" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="ddlYearCompletion" InitialValue="" 
            ErrorMessage="Please select your year of completion!" ForeColor="Red" />
            </div>
        <div class="form-group">
   <label for="percentage"><b>Percentage / CGPA</b></label>
    
        <asp:TextBox ID="TextBox8" runat="server" CssClass="name" />
       <asp:RegularExpressionValidator 
    ID="RegularExpressionValidator4" 
    runat="server" 
    ControlToValidate="TextBox8"  
    ValidationExpression="^(100|\d{1,2}(\.\d{1,2})?)$"
    ErrorMessage="Enter a valid percentage or CGPA (e.g., 85.5 or 9.2)." 
    ForeColor="Red" />

  </div>
        </div>
  
 <div class="sec" style="display: flex; align-items: center; gap: 4px;">
  <b>DECLARATION</b>
  <span style="color: red; margin: 0;">*</span>
  <asp:CheckBox ID="chkDeclaration" runat="server" style="margin: 0;" />
</div>


        
        <!-- Checkbox -->
      <%--  <!-- Required Field Validator for Checkbox -->
        <asp:RequiredFieldValidator ID="rfvDeclaration" runat="server" 
            ControlToValidate="chkDeclaration" 
            ErrorMessage="You must accept the declaration." 
            ForeColor="Red" Display="Dynamic" 
            ValidationGroup="vgExamCenters" InitialValue="false" />--%>
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


   

  <%--  <td colspan="2" style="text-align: center;">--%>
        <!-- Submit Button -->
    <div class="form-group">
        <div class="btn">
            <div class="btn-submit">
        <asp:Button ID="Button1" runat="server" Text="Submit" 
            OnClick="btnSubmit_Click" ValidationGroup="vgExamCenters" />
  

            <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="False"></asp:Label>
            </div>
    </div>
       </div>
</form>
        </div>
  </asp:Content>
    <%--  <h2>Qualification details</h2>
<form  method="POST" runat="server">
  
      <asp:HiddenField ID="dobHiddenField" runat="server" ClientIDMode="Static" />
   <table>

        <div>
      <b>All fields marked with <span style="color: red;">&ast;</span> are mandatory.</b>
   </div>
     <p><b>Application ID:</b> 
   <asp:Label ID="lblApplicationID" runat="server" Font-Bold="true" Font-Size="20px"></asp:Label>
</p>
       

        <div>
    <b>10th Grade <span style="color: red;">&ast;</span></b>

</div> 
       <tr>
    <td><label for="boardName"><b>Board Name <span style="color: red;">&ast;</span></b></label></td>
    <td>
        <asp:TextBox ID="txtBoardName" runat="server" CssClass="name" required/>
        <asp:RegularExpressionValidator 
            ID="regexBoardName" 
            runat="server" 
            ControlToValidate="txtBoardName"  
            ValidationExpression="^[A-Za-z\s]+$"
            ErrorMessage="Board Name must only contain letters and spaces." 
            ForeColor="Red" />
    </td>
</tr>
      
<tr>
    <td><label for="schoolName"><b>School Name <span style="color: red;">&ast;</span></b></label></td>
    <td>
        <asp:TextBox ID="txtSchoolName" runat="server" CssClass="name" required/>
    </td>
</tr>

<tr>
    <td><label for="ddlYearCompletion"><b>Year of Completion <span style="color: red;">&ast;</span></b></label></td>
    <td>
        <asp:DropDownList ID="ddlYearCompletion" runat="server" CssClass="dropdown" required EnableViewState="true">
            <asp:ListItem Text="Select Year" Value="" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvYearCompletion" runat="server" 
            ControlToValidate="ddlYearCompletion" InitialValue="" 
            ErrorMessage="Please select your year of completion!" ForeColor="Red" />
    </td>
</tr>


<tr>
    <td><label for="percentage"><b>Percentage / CGPA <span style="color: red;">&ast;</span></b></label></td>
    <td>
        <asp:TextBox ID="txtPercentage" runat="server" CssClass="name" required/>
     <asp:RegularExpressionValidator 
    ID="regexPercentage" 
    runat="server" 
    ControlToValidate="txtPercentage"  
    ValidationExpression="^(100|\d{1,2}(\.\d{1,2})?)$"
    ErrorMessage="Enter a valid percentage or CGPA (e.g., 85.5 or 9.2)." 
    ForeColor="Red" />

    </td>
</tr>
       </table>
    <table>
    <tr>
         <div>
    <b> 12th Grade <span style="color: red;">&ast;</span></b>

</div> 
       <tr>
    <td><label for="boardName"><b>Board Name <span style="color: red;">&ast;</span></b></label></td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="name" required/>
        <asp:RegularExpressionValidator 
            ID="RegularExpressionValidator1" 
            runat="server" 
            ControlToValidate="TextBox1"  
            ValidationExpression="^[A-Za-z\s]+$"
            ErrorMessage="Board Name must only contain letters and spaces." 
            ForeColor="Red" />
    </td>
</tr>

<tr>
    <td><label for="schoolName"><b>College Name <span style="color: red;">&ast;</span></b></label></td>
    <td>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="name" required/>
    </td>
</tr>

<tr>
    <td><label for="ddlYearCompletion"><b>Year of Completion <span style="color: red;">&ast;</span></b></label></td>
    <td>
        <asp:DropDownList ID="ddlYearCompletion1" runat="server" CssClass="dropdown" required EnableViewState="true">
            <asp:ListItem Text="Select Year" Value="" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="ddlYearCompletion" InitialValue="" 
            ErrorMessage="Please select your year of completion!" ForeColor="Red" />
    </td>
</tr>

<tr>
    <td><label for="percentage"><b>Percentage / CGPA <span style="color: red;">&ast;</span></b></label></td>
    <td>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="name" required/>
        <asp:RegularExpressionValidator 
    ID="RegularExpressionValidator2" 
    runat="server" 
    ControlToValidate="TextBox4"  
    ValidationExpression="^(100|\d{1,2}(\.\d{1,2})?)$"
    ErrorMessage="Enter a valid percentage or CGPA (e.g., 85.5 or 9.2)." 
    ForeColor="Red" />

    </td>
</tr>

   </table>
    <table>
        <tr>
      <div>
    <b>other graduation </b>

</div> 
       <tr>
    <td><label for="boardName"><b>Board Name </b></label></td>
    <td>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="name" />
        <asp:RegularExpressionValidator 
            ID="RegularExpressionValidator3" 
            runat="server" 
            ControlToValidate="TextBox5"  
            ValidationExpression="^[A-Za-z\s]+$"
            ErrorMessage="Board Name must only contain letters and spaces." 
            ForeColor="Red" />
    </td>
</tr>

<tr>
    <td><label for="schoolName"><b>College Name </b></label></td>
    <td>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="name" />
    </td>
</tr>

<tr>
    <td><label for="ddlYearCompletion"><b>Year of Completion </b></label></td>
    <td>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown"  EnableViewState="true">
            <asp:ListItem Text="Select Year" Value="" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="ddlYearCompletion" InitialValue="" 
            ErrorMessage="Please select your year of completion!" ForeColor="Red" />
    </td>
</tr>

<tr>
    <td><label for="percentage"><b>Percentage / CGPA</b></label></td>
    <td>
        <asp:TextBox ID="TextBox8" runat="server" CssClass="name" />
       <asp:RegularExpressionValidator 
    ID="RegularExpressionValidator4" 
    runat="server" 
    ControlToValidate="TextBox8"  
    ValidationExpression="^(100|\d{1,2}(\.\d{1,2})?)$"
    ErrorMessage="Enter a valid percentage or CGPA (e.g., 85.5 or 9.2)." 
    ForeColor="Red" />

    </td>
</tr>
           <tr>
    <td colspan="2">
        <div>
            <b> DECLARATION <span style="color: red;">&ast;</span></b>
        </div>
        
        <!-- Checkbox -->
        <asp:CheckBox ID="chkDeclaration" runat="server" />

      <%--  <!-- Required Field Validator for Checkbox -->
        <asp:RequiredFieldValidator ID="rfvDeclaration" runat="server" 
            ControlToValidate="chkDeclaration" 
            ErrorMessage="You must accept the declaration." 
            ForeColor="Red" Display="Dynamic" 
            ValidationGroup="vgExamCenters" InitialValue="false" />--%>
       <%-- <p>
            1. I declare that I have carefully read and fully understood the various instructions, 
            eligibility criteria, and other conditions and I hereby agree to abide by them.<br>
            2. I declare that all the entries made by me in this application form are true to the best 
            of my knowledge and belief.<br>
            3. If any particular furnished by me in the application are found to be false at any stage, 
            I am aware that I am liable to be disqualified for admission.
        </p>
    </td>
</tr>

<tr>
    <td colspan="2" style="text-align: center;">
        <!-- Submit Button -->
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
            OnClick="btnSubmit_Click" ValidationGroup="vgExamCenters" />
    </td>
</tr>

            <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Visible="False"></asp:Label>


       </table>
</form>--%>

