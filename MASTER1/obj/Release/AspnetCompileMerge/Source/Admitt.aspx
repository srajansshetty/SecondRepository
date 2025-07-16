<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admitt.aspx.cs" Inherits="MASTER1.Admitt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admit Card</title>
    <link rel="stylesheet" href="Style.css" />
   <%-- <style>
        .auto-style1 {
            width: 100%;
            border-collapse: collapse;
        }
        .auto-style1 td {
            padding: 8px;
            border: 1px solid #ccc;
            width: 25%; /* Equal width for all columns */
        }
        .admit-card-container {
            width: 80%;
            margin: 0 auto;
            font-family: Arial, sans-serif;
            border: 2px solid #000;
            padding: 20px;
        }
        .header-section {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 20px;
        }
        .logo-section {
            text-align: left;
            padding-left: 20px;
        }
        .college-logo {
            width: 100px;
            height: auto;
        }
        .title-section {
            text-align: center;
            flex: 1;
        }
        .admit-card-title {
            font-size: 24px;
            margin: 5px 0;
        }
        .exam-subtitle {
            font-size: 16px;
            margin-top: 5px;
        }
        .section-header {
            background-color: lightgrey;
            padding: 5px;
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            margin-top: 20px;
        }
        .instructions {
            font-size: 16px;
            text-align: left;
        }
        .signature-section {
            margin-top: 20px;
            text-align: right;
        }
        .admit-card-footer {
            margin-top: 20px;
            text-align: center;
            color: red;
            font-weight: bold;
        }
        hr {
            border: none;
            height: 2px;
            background-color: #000;
            width: 95%;
            margin: 20px auto;
        }.btn-print {
    background-color: #007bff;
    color: white;
    padding: 10px 20px;
    border: none;
    font-size: 16px;
    cursor: pointer;
    border-radius: 5px;
}

.btn-print:hover {
    background-color: #0056b3;
}
@media print {
    .page-break {
        page-break-before: always;
    }
}


    </style>--%>
    <script>
    function printAdmitCard() {
        var printContent = document.querySelector('.admit-card-container').innerHTML;
        var originalContent = document.body.innerHTML;
        
        document.body.innerHTML = printContent; // Show only Admit Card content
        window.print(); // Open print dialog
        document.body.innerHTML = originalContent; // Restore page content
        location.reload(); // Reload to restore original state
    }
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="admit-card-container">
        <!-- Header section with logo, title, and subtitle -->
        <div class="header-section">
            <div class="logo-section">
                <asp:Image ID="imgCollegeLogo" runat="server" AlternateText="College Logo" CssClass="college-logo" ImageUrl="exam.png" />
            </div>
            <div class="title-section">
                <h2 class="admit-card-title">Admit Card</h2>
                <p class="exam-subtitle">(ENGINEERING ENTRANCE EXAM 2024)</p>
            </div>
        </div>

        <!-- Personal Details Section -->
        <div class="section-header">Personal Details</div>
        <table class="auto-style1">
           <tr>
    <td><b>Candidate's Name:</b></td>
    <td><asp:Label ID="lblName" runat="server"></asp:Label></td>
    <td><b>Father's Name:</b></td>
    <td><asp:Label ID="lblFatherName" runat="server"></asp:Label></td>
</tr>
<tr>
    <td><b>Mother's Name:</b></td>
    <td><asp:Label ID="lblMotherName" runat="server"></asp:Label></td>
    <td><b>Gender:</b></td>
    <td><asp:Label ID="lblGender" runat="server"></asp:Label></td>
</tr>
<tr>
    <td><b>Mobile No:</b></td>
    <td><asp:Label ID="lblMobile" runat="server"></asp:Label></td>
    <td><b>Email:</b></td>
    <td><asp:Label ID="lblEmail" runat="server"></asp:Label></td>
</tr>
<tr>
    <td><b>Applied Post:</b></td>
    <td><asp:Label ID="lblPost" runat="server"></asp:Label></td>
    
   <td rowspan="2" style="vertical-align: middle; text-align: center;">
    <img src="barcode1.png" alt="Barcode" width="130" height="50" />
</td>

</tr>
<tr>
    <td><b>Application ID:</b></td>
    <td><asp:Label ID="lblApplicationID" runat="server"></asp:Label></td>
</tr>


        </table>

        <!-- Qualification Details Section -->
        <div class="section-header">Qualification Details</div>
        <table class="auto-style1">
            <tr>
                <td><b>10th Marks:</b></td>
                <td><asp:Label ID="Label1" runat="server"></asp:Label></td>
                <td><b>12th Marks:</b></td>
                <td><asp:Label ID="Label2" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><b>Other Graduation Marks:</b></td>
                <td colspan="3"><asp:Label ID="Label3" runat="server"></asp:Label></td>
            </tr>
        </table>

            <div class="section-header">Exam Details</div>
            <table class="auto-style1">
            <tr>
                <td><b>Exam date :</b></td>
                <td><b>10-05-2025</b></td>
                <td><b>Exam duration :</b></td>
                <td><b> 2hr 30min</b></td>
             </tr>
             <tr>
                <td><b>Exam center :</b></td>
                <td ><b> kottara, Mangalore</b></td>
                 <td><b>Reporting Time</b></td>
                <td ><b> 9 : 30 AM</b></td>
             </tr>
          </table>
<!-- Signature Section -->
<div class="section-header" style="background-color: lightgrey; padding: 5px; text-align: center; font-weight: bold; border-radius: 5px;">
    Photo and Signature
</div>

<table class="auto-style1">
    <tr>
        <td style="text-align: center; padding: 10px;">
            <b>Photo:</b><br />
            <asp:Image ID="imgPhoto" runat="server" AlternateText="Photo" Width="120px" Height="120px" 
                Style="border: 1px solid #000; border-radius: 5px; display: block; margin: auto;" />
        </td>
        <td style="text-align: center; padding: 10px;">
            <b>Signature:</b><br />
            <asp:Image ID="imgSignature" runat="server" AlternateText="Signature Image" Width="150px" Height="60px" 
                Style="border: 1px solid #000; border-radius: 5px; display: block; margin: auto;" />
        </td>
    </tr>
     
</table>


        <hr />
        <div class="page-break"></div>
        <!-- Instructions Section -->
        <p style="text-align: center; font-size: 22px;"><strong>INSTRUCTIONS</strong></p>
        <div class="instructions">
            <ol>
                <li>Bring this admit card along with a valid photo ID to the examination center.</li>
                <li>Arrive at least 30 minutes before the exam starts.</li>
                <li>Electronic devices (phones, smartwatches, calculators) are strictly prohibited.</li>
                <li>Bring your own stationery as sharing is not allowed.</li>
                <li>Follow all instructions given by the invigilators.</li>
                <li>Maintain complete silence inside the examination hall.</li>
                <li>You will not be allowed to leave the hall until the exam ends.</li>
                <li>Any misconduct (cheating, unauthorized materials, disruption) will result in disqualification.</li>
            </ol>
        </div>

        <!-- Footer -->
        <div class="admit-card-footer">
            <p>Note: Please bring a valid ID along with this admit card to the examination center.</p>
        </div>
       
    </div>
   
      <div style="text-align: center; margin-top: 20px;">
        <asp:Button ID="btnPrint" runat="server" Text="Print Admit Card" CssClass="btn-print" OnClientClick="printAdmitCard(); return false;" />
    </div>
        <button type="button" class="active" onclick="window.location.href='Home.aspx'" 
    style="display: block; margin: 10px auto; padding: 10px 20px; font-size: 16px; border-radius: 5px;">
    <b>Home</b>
</button>

   </form>
</body>
</html>

  <%--  <tr>
                <td><strong>Student Name:</strong> <asp:Label ID="lblName" runat="server"></asp:Label></td>
                <td><strong>Application Number:</strong> <asp:Label ID="AppNumber" runat="server"></asp:Label></td>
                <td rowspan="4" style="width:150px;">
                    <asp:Image ID="Image1" runat="server" />
                </td>
                </tr>
              <tr>
                <td><strong>Candidate’s Name *</strong></td>
                <td><asp:TextBox ID="txtCandidateName" runat="server" required="true"></asp:TextBox></td>
           
                <td><strong>Father's Name *</strong></td>
                <td><asp:TextBox ID="txtFatherName" runat="server" required="true"></asp:TextBox></td>
            </tr>
            <tr>
                <td><strong>Mother's Name *</strong></td>
                <td><asp:TextBox ID="txtMotherName" runat="server" required="true"></asp:TextBox></td>
            </tr>
            <tr>
                <td><strong>Gender *</strong></td>
                <td>
                    <asp:DropDownList ID="ddlGender" runat="server" required="true">
                        <asp:ListItem Value="" Text="--Select Gender--"></asp:ListItem>
                        <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                        <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                        <asp:ListItem Value="Other" Text="Other"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><strong>Mobile No *</strong></td>
                <td><asp:TextBox ID="txtMobileNo" runat="server" required="true" placeholder="Enter your mobile number"></asp:TextBox></td>
            </tr>
            <tr>
                <td><strong>Email *</strong></td>
                <td><asp:TextBox ID="txtEmail" runat="server" required="true" placeholder="Enter your email address"></asp:TextBox></td>
            </tr>
            <tr>
                <td><strong>Select Post *</strong></td>
                <td>
                    <asp:DropDownList ID="ddlPost" runat="server" required="true">
                        <asp:ListItem Value="" Text="Select your post"></asp:ListItem>
                        <asp:ListItem Value="Junior Engineer" Text="Junior Engineer"></asp:ListItem>
                        <asp:ListItem Value="Senior Engineer" Text="Senior Engineer"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>--%>