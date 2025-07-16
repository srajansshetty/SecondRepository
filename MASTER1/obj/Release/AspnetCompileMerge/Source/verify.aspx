<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="verify.aspx.cs" Inherits="MASTER1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h2 {
  text-align: center;
  margin-top: 4px;
  margin-bottom: 40px
}

form {
  width: 720px;
  height: 280px;
  margin: 20px auto;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
  background: #fff;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}
.form-group {
  margin-bottom: 50px;
}
label {
  margin-right: 40px;
  font-size: 18px;
  font-weight: bold;
  margin-bottom: 5px;
}
input[type="text"] {
  width: 50%;
  padding: 8px;
  font-size: 17px;
  border: 2px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-right: 20px;
}
button[type="submit"] {
  background-color: #4CAF50;
  color: white;
  border: none;
  padding: 10px 15px;
  font-size: 17px;
  cursor: pointer;
  width: 18%;
  border-radius: 4px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
  <form action="/login" method="POST">
    <div><h2>Verify mobile number</h2></div>

    <div class="form-group">
      <label for="mob-number"><b>Mobile Number</b></label>
      <input type="text" id="mob-number" name="mob-number" required />
         <button type="submit" >Send OTP</button>
    </div>

   

    <div class="form-group">
      <label for="otp"><b>Enter The OTP</b></label>
      <input type="text" id="otp" name="otp" required />
         <button type="submit" onclick="window.location.href='Register.aspx';">Submit</button>
    </div>

   
  </form>
</div>

    </asp:Content>
