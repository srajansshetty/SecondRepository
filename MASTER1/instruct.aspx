<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="instruct.aspx.cs" Inherits="MASTER1.instruct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       
    .pay {
  
    align-items: center;
    justify-content: center;
    background-color: #1dbac2;
    color: white;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease;
}
       table {
    width: 90%; 
    border-collapse: collapse; 
    margin-top: 20px; 
    margin-left: auto; 
    margin-right: auto; 
    border: 1px solid black;
 
}

         .INST {
    background-color: #f0f0f0;
    color: #333;
    width: 840px; 
    height: 32px;
     text-align: center;  
     padding: 10px 10px; 
         margin: 10px auto; 
          border: 1px solid #ccc;  
    border-radius: 15px;    
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
  }.INST h1 {
            font-size: 24px;
            border-top: 5px;
        }
       .news-bar {
        background-color: #002b60;
        color: white;
        display: flex;
        align-items: center;
        padding: 10px 15px;
        font-weight: bold;
        overflow: hidden;
        position: relative;
        font-size: 16px;
    }

    .news-bar .label {
        margin-right: 15px;
        margin-left: 15px;
        white-space: nowrap;
        flex-shrink: 0;
        font-size: 18px;
        position: relative;
        padding-right: 15px;
    }

    .news-bar .label::after {
        content: "";
        position: absolute;
        right: 0;
        top: 0;
        height: 100%;
        width: 2px;
        background-color: white;
    }

    .news-bar .marquee {
        white-space: nowrap;
        overflow: hidden;
        position: relative;
        flex: 1;
    }

    .news-bar .marquee span {
        display: inline-block;
        padding-left: 100%;
        animation: marquee 15s linear infinite;
    }

    .news-bar .marquee a {
        color: #ffd700;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    .news-bar .marquee a:hover {
        text-decoration: underline;
    }

    @keyframes marquee {
        0% {
            transform: translateX(0%);
        }
        100% {
            transform: translateX(-100%);
        }
    }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="news-bar">
        <div class="label">LATEST NEWS</div>
        <div class="marquee">
            <span>
                <a href="https://www.eduquity.com/results2025" target="_blank">Eduquity Assessment Results 2025 Released
                </a>
                |
  <a href="https://www.eduquity.com/apply" target="_blank">Apply Now for Eduquity Talent Assessment
  </a>
                |
  <a href="https://www.eduquity.com/schedule" target="_blank">Eduquity 2025 Exam Schedule Announced
  </a>
            </span>

        </div>
    </div>
   <div class="INST" style="background-color: #f0f0f0; color: #333;">
       <h1><b>INSTRUCTIONS AND PROCEDURES FOR ONLINE APPLICATION FORM</b>
</h1>
   </div>
    <form id="form1" runat="server">
    <table>
    <thead>
        <tr>
            <th style="text-align: center; border: 1px solid black;">INSTRUCTIONS TO THE CANDIDATES</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                <p>
                    Applicants are strongly advised to read the Prospectus carefully before filling up the Application Form.
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <b>A.</b> The candidate should ensure that he/she fulfills the eligibility criteria and other conditions as mentioned in this advertisement. Mere submission of application or meeting the advertised specification does not entitle the candidates’ eligibility for the post. In case it is detected at any stage of recruitment/selection/even after appointment that the candidate does not fulfill the eligibility norms and/or that he/she has furnished any incorrect/false information or has suppressed any material fact(s), his/her candidature/appointment will automatically stand cancelled, as the candidature/appointment would be deemed as void ab initio.
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <b>B.</b> The e-mail ID mentioned in the application form must remain valid for one year. All future communication with the candidates will take place through e-mail only. NALCO will not be responsible for any loss/non-delivery of e-mail/any other communication sent, due to invalid/wrong ID or due to any other reason.
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <b>C.</b> Candidates are also advised to visit the career section of NALCO's website <a href="http://www.nalcoindia.com" target="_blank">www.nalcoindia.com</a> regularly for latest updates as no separate communication will be sent.
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <b>D.</b> Candidates working in PSUs/any Government organization should generally apply through proper channel or produce a No Objection Certificate at the time of Computer Based Test (CBT)/verification of original certificates/documents. If unable to produce the same, candidates may appear provisionally in the test, but their appointment is subject to submission of an original release order.
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <b>E.</b> Candidates will not be permitted to appear for the Computer Based Test (CBT) without presenting original and valid photo identification along with the call letter. Finger and photo capturing of candidates will be performed on the examination day at the venue.
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <b>F.</b> Provisionally selected candidates must produce originals of specified documents when called for verification. Inadequacy or deficiency in the required documents can result in rejection of candidature.
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <b>G.</b> NALCO reserves the right to raise the minimum eligibility standards, modify the recruitment process, or change the number of advertised posts without prior notice.
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <b>H.</b> The company reserves the right to reject any application without assigning a reason.
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <b>I.</b> NALCO Management's decisions are final and binding. No correspondence will be entertained regarding eligibility, application rejection, or candidate selection.
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <b>J.</b> Canvassing in any form disqualifies a candidate.
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <b>K.</b> Any disputes related to the recruitment process will be settled under the jurisdiction of Cuttack (Odisha) only.
                </p>
            </td>
        </tr>
    <tr>
                <td>
                    <p>
                        <asp:CheckBox ID="CheckBox2" runat="server" Font-Bold="True" AutoPostBack="False"
                            Text="I do hereby confirm that I have downloaded the detailed advertisement for the post of National Aluminium Company Limited. I have read and understood all the instructions therein and want to proceed to fill up the online application form accordingly."
                            OnCheckedChanged="CheckBox2_CheckedChanged" />
                    </p>
        <center><b><asp:Label ID="lblckbx" runat="server" forecolor="Red" visible="false"></asp:Label></b></center>
                    <!-- Label for displaying error message -->
                   
                </td>
            </tr>
          </tbody>
</table>
      
    <table>

    <td style="text-align: center;">
        <asp:Button ID="Button1" runat="server" CssClass="pay" Text="PROCEED TO APPLY ONLINE"
            OnClick="Button1_Click" />
    </td>
     <asp:Label ID="ErrorMessageLabel" runat="server" forecolor="Red" Text="" Visible="False" />

  
</table>
     </form>

    
</asp:Content>
