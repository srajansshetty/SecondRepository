<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Forgot pass.aspx.cs" Inherits="MASTER1.Forgot_pass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 400px;
  width: 100%;
   height: 40vh;
}
        
        h2 {
  text-align: center;
  color: #333;
  margin-top: 8px;
  margin-bottom: 40px;
}


form {
  background: #f3fad4;
   border: 2px solid #000;
  padding: 20px;
  border-radius: 8px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  width: 500px;
  display: flex;
  flex-direction: column;
  align-items: center;
}
.form-group {
  margin-bottom: 30px;
   display:flex;
  
}
label {
  display: block;
   margin: 8px 0;
   font-size: 18px;
  margin-right: 40px;
  color: #555;
  flex-direction: column;
}

input[type="text"] {
    flex:1;
  width: 100%;
  padding: 8px;
  border: 1px solid #ddd;
  border-radius: 4px;
  font-size: 16px;
}
button[type="submit"] {
  width: 100%;
  padding: 10px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="container">
  <form action="/login" method="POST">
       <div><h2>Forgot password</h2></div>
    <div class="form-group">
      <label for="mob-number"><b>Mobile Number</b></label>
      <input type="text" id="app-number" name="app-number" required />
    </div>
   
      
     
    <div class="form-group">
      <button type="submit">Send otp</button>
    </div>
      </div>
</asp:Content>
