<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MASTER1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admit Card</title>
  <style>
      .auto-style1 {
            width: 100%;
            border-collapse: collapse;
        }
        .auto-style1 td {
            padding: 8px;
            border: 1px solid #ccc;
        }
        .admit-card-container {
            width: 80%;
            margin: 0 auto;
            font-family: Arial, sans-serif;
        }
        .signature-section {
            margin-top: 20px;
            text-align: right;
        }
        .admit-card-footer {
            margin-top: 20px;
            text-align: center;
            color: red;
        }
        hr {
            border: none;
            height: 2px;
            background-color: #080101;
            width: 95%;
            margin: 20px auto;
        }
        .logo-section {
            text-align: left;
            margin-bottom: 20px;
            padding-left: 20px;
        }
        .college-logo {
            width: 100px; /* Adjust size as needed */
            height: auto;
        }
        .header-section {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }
       .title-section {
    margin-left: 20px; /* Keep this for spacing from the logo */
    text-align: center; /* Center aligns the title and subtitle */
    flex: 1; /* Allows this section to take available space */
}
        .admit-card-title {
            font-size: 24px;
            margin: 5px 0;
        }
        .exam-subtitle {
    font-size: 16px;
    margin: 0px 0; /* Adjusts the vertical space around the subtitle */
    margin-top: 30px; /* Adjust this value as needed for top spacing */
}
        .instructions {
            font-size: 16px; /* Set font size for instructions */
            text-align: left; /* Align instructions to the left */
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    
    
   <div class="admit-card-container" style="border:2px solid;">
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
        
        <table class="auto-style1">
            <tr>
                <td><strong>Student Name:</strong> <asp:Label ID="lblName" runat="server"></asp:Label></td>
                <td><strong>Application Number:</strong> <asp:Label ID="AppNumber" runat="server"></asp:Label></td>
                <td rowspan="4" style="width:150px;">
                    <asp:Image ID="Image1" runat="server" />
                </td>
            </tr>
            <tr>
                <td><strong>Date of Birth:</strong> <asp:Label ID="DOB" runat="server"></asp:Label></td>
                <td><strong>Age:</strong> <asp:Label ID="lblAge" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><strong>Exam Date:</strong> <asp:Label ID="lblExamDate" runat="server"></asp:Label></td>
                <td><strong>Exam Time:</strong> <asp:Label ID="lblExamTime" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><strong>Exam Center:</strong> <asp:Label ID="lblExamCenter" runat="server"></asp:Label></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
        <div class="signature-section">
            <p><strong>Signature:</strong></p>
            <asp:Image ID="imgSignature" runat="server" AlternateText="Signature Image" />
        </div>
        
        <hr />
        
        <p style="text-align: center; font-size: 22px;"><strong>INSTRUCTIONS</strong></p>
        <div class="instructions">
            <ol>
                <li>Please ensure that you bring this admit card along with a valid photo identification to the examination center; acceptable forms of ID include government-issued IDs such as a passport, driver’s license, or student ID.</li>
                <li>Plan to arrive at the examination center at least 30 minutes before the scheduled start time to allow for check-in and security procedures. Late arrivals may not be permitted to enter the exam hall once the examination has started.</li>
                <li>All electronic devices, including but not limited to mobile phones, smartwatches, calculators, and any form of digital aids, are strictly prohibited within the examination hall. Any found in possession of these items may face immediate disqualification.</li>
                <li>Bring your own stationery, including pens, pencils, and erasers, as sharing of these items will not be allowed during the examination.</li>
                <li>Follow all instructions provided by the invigilators at the examination center. Disregarding the instructions may result in disciplinary actions, including removal from the examination.</li>
                <li>Once inside the examination hall, you are required to maintain complete silence. Any form of communication with other candidates, whether verbal or non-verbal, will be considered a violation of examination rules.</li>
                <li>Note that you will not be permitted to leave the examination hall until the allotted exam time has ended, so please ensure that you are fully prepared to stay for the duration of the exam.</li>
                <li>Any form of misconduct, including cheating, the use of unauthorized materials, or disruptive behavior, will lead to immediate expulsion from the examination and may result in further disciplinary action.</li>
            </ol>
        </div>
        
        <div class="admit-card-footer">
            <p>Note: Please bring a valid ID along with this admit card to the examination center.</p>
        </div>
    </div>
  
    </form>
</body>
</html>
