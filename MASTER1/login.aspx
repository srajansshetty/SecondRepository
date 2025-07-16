<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MASTER1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
   <style>
      * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
      }

      .login-container {
        display: flex;
        flex-direction: column;
        max-width: 800px;
        margin: 40px auto;
        background: linear-gradient(145deg, #ffffff, #fff0e6);
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(255, 102, 0, 0.15);
        border: 2px solid #ff6200;
        overflow: hidden;
      }

      .login-header {
        background: linear-gradient(135deg, #ff6200, #ff8c00);
        color: white;
        padding: 20px;
        text-align: center;
      }

      .login-header h1 {
        font-size: 28px;
        margin-bottom: 5px;
      }

      .login-header p {
        font-size: 16px;
        opacity: 0.9;
      }

      .login-content {
        display: flex;
        flex-wrap: wrap;
      }

      .login-left-section,
      .login-right-section {
        flex: 1;
        min-width: 300px;
        padding: 30px;
      }

      .login-left-section {
        border-right: 1px dashed #ff6200;
      }

      .login-step-container {
        margin-top: 20px;
      }

      .login-step {
        position: relative;
        padding: 15px 15px 15px 50px;
        margin: 15px 0;
        background: rgba(255, 102, 0, 0.05);
        border-left: 4px solid #ff6200;
        border-radius: 8px;
        transition: all 0.3s ease;
      }

      .login-step::before {
        content: attr(data-step);
        position: absolute;
        left: 10px;
        top: 50%;
        transform: translateY(-50%);
        width: 30px;
        height: 30px;
        background: #ff6200;
        color: #ffffff;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 16px;
        font-weight: bold;
      }

      .login-step:hover {
        transform: translateX(5px);
        box-shadow: 0 4px 8px rgba(255, 102, 0, 0.1);
      }

      .login-step h3 {
        color: #333;
        margin-bottom: 5px;
        font-size: 18px;
      }

      .login-step p {
        color: #666;
        font-size: 14px;        
      }

      .login-form-group {
        margin-bottom: 20px;
        position: relative;
      }

      label {
        display: block;
        margin-bottom: 8px;
        font-weight: 600;
        color: #333;
      }

      input[type="text"],
      input[type="password"] {
        width: 100%;
        padding: 12px 15px;
        font-size: 16px;
        border: 1px solid #ff6200;
        border-radius: 6px;
        background-color: rgba(255, 255, 255, 0.8);
        transition: all 0.3s ease;
        margin-bottom: 10px;
      }

      .login-form-control {
        width: 100%;
        padding: 12px 15px;
        font-size: 16px;
        border: 1px solid #ff6200;
        border-radius: 6px;
        background-color: rgba(255, 255, 255, 0.8);
        transition: all 0.3s ease;
      }

      .login-form-control:focus,
      input[type="text"]:focus,
      input[type="password"]:focus {
        outline: none;
        border-color: #e65100;
        box-shadow: 0 0 8px rgba(255, 98, 0, 0.3);
      }

      .login-toggle-visibility {
        position: absolute;
        right: 15px;
        top: 40px;
        cursor: pointer;
        color: #ff6200;
        background: none;
        border: none;
        font-size: 18px;
      }

      .login-styled-button {
        background: linear-gradient(135deg, #ff6200, #ff8c00);
        color: white;
        border: none;
        padding: 14px;
        border-radius: 6px;
        font-size: 16px;
        font-weight: 600;
        cursor: pointer;
        width: 100%;
        margin: 10px 0;
        transition: all 0.3s ease;
      }

      .login-styled-button:hover {
        background: linear-gradient(135deg, #e65100, #ff6200);
        transform: translateY(-2px);
        box-shadow: 0 5px 15px rgba(255, 98, 0, 0.3);
      }

      .login-secondary-button {
        background: white;
        color: #ff6200;
        border: 1px solid #ff6200;
        margin-top: 5px;
      }

      .login-secondary-button:hover {
        background: rgba(255, 98, 0, 0.1);
      }

      .login-message {
        text-align: center;
        margin: 15px 0;
        color: #ff6200;
        font-weight: 600;
      }

      .login-button-group {
        margin-top: 20px;
      }

      @media (max-width: 768px) {
        .login-container {
          margin: 20px;
        }

        .login-left-section {
          border-right: none;
          border-bottom: 1px dashed #ff6200;
        }
      }
    </style> 
    
 <%-- <style>
  * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
  }

 

  .container {
    display: flex;
    flex-direction: column;
    max-width: 800px;
    margin: 40px auto;
    background: linear-gradient(145deg, #ffffff, #fff0e6);
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(255, 102, 0, 0.15);
    border: 2px solid #ff6200;
    overflow: hidden;
  }

  .header {
    background: linear-gradient(135deg, #ff6200, #ff8c00);
    color: white;
    padding: 20px;
    text-align: center;
  }

  .header h1 {
    font-size: 28px;
    margin-bottom: 5px;
  }

  .header p {
    font-size: 16px;
    opacity: 0.9;
  }

  .content {
    display: flex;
    flex-wrap: wrap;
  }

  .left-section,
  .right-section {
    flex: 1;
    min-width: 300px;
    padding: 30px;
  }

  .left-section {
    border-right: 1px dashed #ff6200;
  }

  .step-container {
    margin-top: 20px;
  }

  .step {
    position: relative;
    padding: 15px 15px 15px 50px;
    margin: 15px 0;
    background: rgba(255, 102, 0, 0.05);
    border-left: 4px solid #ff6200;
    border-radius: 8px;
    transition: all 0.3s ease;
  }

  .step::before {
    content: attr(data-step);
    position: absolute;
    left: 10px;
    top: 50%;
    transform: translateY(-50%);
    width: 30px;
    height: 30px;
    background: #ff6200;
    color: #ffffff;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 16px;
    font-weight: bold;
  }

  .step:hover {
    transform: translateX(5px);
    box-shadow: 0 4px 8px rgba(255, 102, 0, 0.1);
  }

  .step h3 {
    color: #333;
    margin-bottom: 5px;
    font-size: 18px;
  }

  .step p {
    color: #666;
    font-size: 14px;
  }

  .form-group {
    margin-bottom: 20px;
    position: relative;
  }

  label {
    display: block;
    margin-bottom: 8px;
    font-weight: 600;
    color: #333;
  }

  input[type="text"],
  input[type="tel"],
  input[type="number"],
  textarea,
  select {
    width: 100%;
    padding: 12px 15px;
    font-size: 16px;
    border: 1px solid #ff6200;
    border-radius: 6px;
    background-color: rgba(255, 255, 255, 0.8);
    transition: all 0.3s ease;
    margin-bottom: 10px;
  }

  .form-control {
    width: 100%;
    padding: 12px 15px;
    font-size: 16px;
    border: 1px solid #ff6200;
    border-radius: 6px;
    background-color: rgba(255, 255, 255, 0.8);
    transition: all 0.3s ease;
  }

  .form-control:focus,
  input[type="text"]:focus,
  input[type="tel"]:focus,
  input[type="number"]:focus,
  textarea:focus,
  select:focus {
    outline: none;
    border-color: #e65100;
    box-shadow: 0 0 8px rgba(255, 98, 0, 0.3);
  }

  .toggle-visibility {
    position: absolute;
    right: 15px;
    top: 40px;
    cursor: pointer;
    color: #ff6200;
    background: none;
    border: none;
    font-size: 18px;
  }

  .styled-button {
    background: linear-gradient(135deg, #ff6200, #ff8c00);
    color: white;
    border: none;
    padding: 14px;
    border-radius: 6px;
    font-size: 16px;
    font-weight: 600;
    cursor: pointer;
    width: 100%;
    margin: 10px 0;
    transition: all 0.3s ease;
  }

  .styled-button:hover {
    background: linear-gradient(135deg, #e65100, #ff6200);
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(255, 98, 0, 0.3);
  }

  .secondary-button {
    background: white;
    color: #ff6200;
    border: 1px solid #ff6200;
    margin-top: 5px;
  }

  .secondary-button:hover {
    background: rgba(255, 98, 0, 0.1);
  }

  .message {
    text-align: center;
    margin: 15px 0;
    color: #ff6200;
    font-weight: 600;
  }

  .button-group {
    margin-top: 20px;
  }

  @media (max-width: 768px) {
    .container {
      margin: 20px;
    }

    .left-section {
      border-right: none;
      border-bottom: 1px dashed #ff6200;
    }
  }
</style>--%>
  <%-- <style>
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  background-color: #fff8f0; /* Subtle off-white with orange tint */
  font-family: Arial, sans-serif;
}

.container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  padding: 40px;
  max-width: 1200px;
  margin: auto;
  gap: 20px;
}

.left-section {
  flex: 1 1 300px;
  background: linear-gradient(145deg, #ffffff, #fff0e6); /* Subtle orange shade */
  padding: 25px 35px;
  border-radius: 12px;
  box-shadow: 0 6px 12px rgba(255, 102, 0, 0.1);
  border: 2px solid #ff6200; /* Orange border */
  transition: transform 0.3s ease;
}

.left-section:hover {
  transform: translateY(-5px);
}

.left-section h2 {
  color: #333333;
  border-bottom: 3px solid #ff6200;
  padding-bottom: 12px;
  margin-bottom: 20px;
  font-size: 24px;
}

.left-section p {
  font-weight: bold;
  color: #ff6200;
  margin: 15px 0 5px;
  font-size: 16px;
}

.left-section h3 {
  margin-bottom: 12px;
  color: #333333;
  font-size: 20px;
}

/* Step styles */
.step {
  position: relative;
  padding: 15px 15px 15px 50px; /* Space for badge */
  margin: 10px 0;
  background: rgba(255, 102, 0, 0.05); /* Light orange background */
  border-left: 4px solid #ff6200; /* Orange accent */
  border-radius: 8px;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  animation: bounceIn 0.6s ease-out forwards; /* Bounce-in animation */
}

/* Numbered badge for steps */
.step::before {
  content: attr(data-step); /* Uses data-step attribute for number */
  position: absolute;
  left: 10px;
  top: 50%;
  transform: translateY(-50%);
  width: 30px;
  height: 30px;
  background: #ff6200;
  color: #ffffff;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 16px;
  font-weight: bold;
}

.step:hover {
  transform: scale(1.03); /* Slight scale on hover */
  box-shadow: 0 4px 8px rgba(255, 102, 0, 0.2);
}

/* Bounce-in animation keyframes */
@keyframes bounceIn {
  0% {
    opacity: 0;
    transform: translateY(20px);
  }
  60% {
    opacity: 1;
    transform: translateY(-5px);
  }
  100% {
    opacity: 1;
    transform: translateY(0);
  }
}

.right-section {
  flex: 1 1 400px;
  background: linear-gradient(145deg, #ffffff, #fff0e6); /* Subtle orange shade */
  padding: 35px;
  border-radius: 12px;
  box-shadow: 0 6px 12px rgba(255, 102, 0, 0.1);
  border: 2px solid #ff6200; /* Orange border */
  transition: transform 0.3s ease;
}

.right-section:hover {
  transform: translateY(-5px);
}

.right-section h2 {
  text-align: center;
  margin-bottom: 30px;
  color: #333333;
  font-size: 26px;
}

.form-group {
  margin-bottom: 25px;
}

label {
  display: block;
  margin-bottom: 8px;
  font-weight: bold;
  color: #333333;
  font-size: 16px;
}

.form-control {
  width: 100%;
  padding: 12px 14px;
  font-size: 16px;
  border: 1px solid #ff6200;
  border-radius: 6px;
  background-color: #fff8f0;
  transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

.form-control:focus {
  outline: none;
  border-color: #e65100;
  box-shadow: 0 0 8px rgba(255, 98, 0, 0.3);
}

.styled-button {
  background: linear-gradient(135deg, #ff6200, #ff8c00);
  color: #ffffff;
  border: none;
  padding: 14px 20px;
  border-radius: 6px;
  font-size: 16px;
  cursor: pointer;
  width: 100%;
  margin-top: 15px;
  transition: background 0.3s ease, transform 0.2s ease;
}

.styled-button:hover {
  background: linear-gradient(135deg, #e65100, #ff6200);
  transform: scale(1.05);
}

.right-section b {
  display: block;
  margin-top: 25px;
  color: #555555;
  text-align: center;
  font-size: 14px;
}

asp\:Label {
  display: block;
  margin-bottom: 12px;
  text-align: center;
  color: #ff6200;
  font-weight: bold;
}

@media (max-width: 768px) {
  .container {
    flex-direction: column;
    padding: 20px;
  }

  .left-section, .right-section {
    flex: 1 1 100%;
  }

  .left-section, .right-section {
    padding: 20px;
  }

  .styled-button {
    padding: 12px;
  }
}
</style>--%>

   <%-- <style>
        .container {
  display: flex;
  width: 100%;
  height: 100vh;
}
        .left-section, .right-section {
  flex: 1; 
  padding: 20px;
  box-sizing: border-box;
}

.left-section {
  background-color: #f0f0f0;
   text-align: center;
    border: 2px solid ;
   
}
 .left-section h2 {
             background-color: #e4dcfc;
               padding: 10px 20px; 
                 border-radius: 5px;
        }
.left-section h3 {
  background-color: #f0f0f0; 
  padding: 5px;             
  border: 4px solid #3498db; 
  color: #2c3e50;            
  border-radius: 8px;        
  font-size: 22px;           
  text-align: center;         
}
 .left-section p{
           font-size: 20px;   
            color: #3498db;
            font-weight: bold;
        }



      
       .form-group {
  display: flex;
  align-items: center;
  margin-bottom: 15px;
}

.form-group label {
  display: block;
  font-size: 14px;
  font-weight: bold;
  color: #555;
  margin-bottom: 5px;
}

.form-group input {
  width: 50%;
  padding: 8px;
  font-size: 16px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
.form-group button {
  width: 400%;
  padding: 10px;
  font-size: 16px;
  color: #fff;
  background-color: #4e73df;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}






.right-section {
  width: 100%;
  max-width: 600px;
  margin: 50px auto;
  padding: 20px;
  background-color: #ffffff;
   border: 2px solid #000;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.right-section h2 {
  text-align: center;
  color: #333;
  margin-bottom: 20px;
}

/* Form styles */
.form-group {
  display: flex;
   justify-content: center; 
  align-items: center;
  margin-bottom: 15px;
   flex-direction: row;
}


.form-group label {
  width: 150px; /* Fixed width for the label */
  font-size: 15px;
  font-weight: bold;
  color: #555;
  margin-bottom: 0; /* Remove extra space under the label */
   margin-top: 15px; 
}

.form-group input {
  flex: 1; /* Makes input take up remaining space */
  padding: 8px;
  font-size: 16px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
   margin-top: 15px; 
}

.form-group input:focus {
  outline: none;
  border-color: #4e73df;
}

.form-group button {
  width: 42%; /* Full width for the button */
  padding: 12px;
  font-size: 16px;
  color: #fff;
  background-color: #4e73df;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s ease;
  margin-top: 18px; /* Adds space above the button */
}

.form-group button:hover {
  background-color: #2e59d9;
}

.form-group button:active {
  background-color: #1a47b8;
}
  .styled-button {
            background-color: #1dbac2; 
            color: white; 
             padding: 10px 25px; 
    font-size: 16px; 
    font-weight: bold;
    border-radius: 5px; 
    cursor: pointer; 
    text-align: center;
    margin-top: 40px;
  }

    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="login-container">
  <div class="login-header">
    <h1>Online Registration Portal</h1>
    <p>Complete your application in simple steps</p>
  </div>

  <div class="login-content">
    <div class="login-left-section">
      <div class="login-step-container">
        <div class="login-step" data-step="1">
          <h3>Personal Details</h3>
          <p>Fill in your basic information</p>
        </div>
        <div class="login-step" data-step="2">
          <h3>Qualification Details</h3>
          <p>Add your educational background</p>
        </div>
        <div class="login-step" data-step="3">
          <h3>Documents Upload</h3>
          <p>Upload required documents</p>
        </div>
        <div class="login-step" data-step="4">
          <h3>Payment</h3>
          <p>Complete your registration</p>
        </div>
      </div>

      <button type="button" class="login-styled-button" onclick="window.location.href='Register.aspx'">
        START NEW REGISTRATION
      </button>
    </div>

    <div class="login-right-section">
      <form id="form1" runat="server">
        <asp:Panel ID="pnlLogin" runat="server">
          <h2 style="color: #ff6200; text-align: center; margin-bottom: 25px">
            Existing User Login
          </h2>

          <div class="login-form-group">
            <label for="txtAID">Application Number</label>
            <asp:TextBox ID="txtAID" runat="server" CssClass="login-form-control" placeholder="Enter your application number" />
          </div>

          <div class="login-form-group">
            <label for="txtPhone">Phone Number</label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="login-form-control" TextMode="Password" placeholder="Enter registered phone number" />
            <button type="button" class="login-toggle-visibility" onclick="togglePhoneVisibility()">
              <i class="eye-icon">👁️</i>
            </button>
          </div>

          <asp:Label ID="lblMessage" runat="server" CssClass="message" ForeColor="Red" />

          <div class="login-button-group">
            <!-- ASP.NET Button to trigger btnLogin_Click -->
            <asp:Button ID="btnLogin" runat="server" Text="LOGIN" CssClass="login-styled-button" OnClick="btnLogin_Click" />

            <!-- "Forgot Password" button -->
            <button type="button" class="login-styled-button login-secondary-button" onclick="window.location.href='ForgotPass.aspx'">
              FORGOT APPLICATION NO / PASSWORD
            </button>
          </div>
        </asp:Panel>
      </form>
    </div>
  </div>
</div>

<script>
  function togglePhoneVisibility() {
    const phoneInput = document.getElementById('<%= txtPhone.ClientID %>');
    const eyeIcon = document.querySelector(".eye-icon");

    if (phoneInput.type === "password") {
      phoneInput.type = "text";
      eyeIcon.textContent = "🙈";
    } else {
      phoneInput.type = "password";
      eyeIcon.textContent = "👁️";
    }
  }
</script>

     </asp:Content>


 <%--<div class="container">
  <div class="left-section">
    <div><h2>Steps to Apply Online Registration</h2></div>
    <p>STEP 1</p>
    <div><h3>PERSONAL DETAILS</h3></div>
    <p>STEP 2</p>
    <div><h3>QUALIFICATION DETAILS</h3></div>
    <p>STEP 3</p>
    <div><h3>DOCUMENTS UPLOAD</h3></div>
    <p>STEP 4</p>
    <div><h3>PAYMENT</h3></div>
    <div class="form-group">
      <button type="button" class="styled-button" onclick="window.location.href='Register.aspx';">
        NEW REGISTRATION
      </button>
    </div>
  </div>
  <div class="right-section">
    <form id="form1" runat="server">
      <asp:Panel ID="pnlLogin" runat="server">
        <div><h2>User Login</h2></div>
        <div class="form-group">
          <label for="txtAppno">Application Number</label>
          <asp:TextBox ID="txtAppno" runat="server" CssClass="form-control" required></asp:TextBox>
        </div>
        <div class="form-group">
          <label for="txtPhone">Phone Number</label>
          <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" required></asp:TextBox>
        </div>
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        <div class="form-group">
          <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="styled-button" OnClick="btnLogin_Click" />
        </div>
        <label for="Forgot password"><b>Forgot Password?</b></label>
        <button type="button" class="styled-button" onclick="window.location.href='ForgotPass.aspx';">
          FORGOT APPLICATION NO / PASSWORD
        </button>
      </asp:Panel>
    </form>
  </div>
</div>--%>
           
  <%--<div><h2>User login</h2></div>

  <form action="/login" method="POST">
    <div class="form-group">
      <label for="app-number">Application Number</label>
       <asp:TextBox ID="txtAppno" runat="server" CssClass="form-control" required></asp:TextBox>
    </div>
    <div class="form-group">
      <label for="password">Password</label>
       <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" required></asp:TextBox>
    </div>
      <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

     
    <div class="form-group">
    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />

    </div>
      <label for="Forgot password" style="margin-right: 18px;"><b>Forgot Password</b></label>

       <button type="button" class="styled-button" onclick="window.location.href='Forgot pass.aspx';">FORGOT APPLICATION NO / PASSWORD</button>
   
      

  </form>
</div>--%>
      

