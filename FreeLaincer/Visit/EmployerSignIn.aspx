<%@ Page Title="" Language="C#" MasterPageFile="~/Visit/Visit.Master" AutoEventWireup="true" CodeBehind="EmployerSignIn.aspx.cs" Inherits="FreeLaincer.Visit.EmployerSignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="clearfix"></div>
<div class="container" style="margin-top:80px">
<div class="logindiv"  >
        <h4  style="background-color:#202020;color:#fff;padding:20px;border-radius:9px 9px 0px 0px" >
            Employer Sign In
       </h4>
       <form>
       <div class="row" style="width:80%;margin:auto;text-align:left">
        <br>
        <label for="uname"><b>Username</b></label>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Email" class="form-control" name="uname" required></asp:TextBox>
        <br>
            <label for="psw"><b>Password</b></label>
           <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Password" class="form-control" name="psw" required></asp:TextBox>
        <br>
           <asp:Button ID="Button1" runat="server" Text="Sign In" class="btn btn-default" style="background-color:#202020;color:white" OnClick="Button1_Click" />
          <br>  
           <br>
          <span class="psw"> Not Register Yet?  <a href="EmployerRegister.aspx" class="btn btn-default"  style="background-color:#202020;color:white" >Register Now</a></span>

          <br>      
          <br>          
          <span class="psw"> <a href="forgotpass.php">Forgot password?</a></span>
          <br>
          <span style="color:red"> <?php echo $loginerror; ?> </span>
           </div>
           </div>
</asp:Content>
