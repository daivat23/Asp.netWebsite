<%@ Page Title="" Language="C#" MasterPageFile="~/Visit/Visit.Master" AutoEventWireup="true" CodeBehind="EmployerRegister.aspx.cs" Inherits="FreeLaincer.Visit.EmployerRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="clearfix"></div>
<div class="container" style="margin-top:40px">
<div class="logindiv" style="height:700px" >
        <h4  style="background-color:#202020;color:#fff;padding:20px;border-radius:9px 9px 0px 0px" >
           Employer Register
       </h4>
<form method="post" enctype="multipart/form-data">
     
     <h3>  </h3>
     <div class="row" style="margin:20px">
        <div class="col-md-3" style="text-align:right">
        EmployerFname
        </div>
        <div class="col-md-9">
         <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter frist name"  value=""
         class="form-control" required pattern="[a-zA-Z0-9 ]+" title="Invalid Chars [Only Alphanumeric]"></asp:TextBox>
        </div>     
     </div>
    <div class="row" style="margin:20px">
        <div class="col-md-3" style="text-align:right">
        EmployerLname
        </div>
        <div class="col-md-9">
       <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter last name"  value=""
         class="form-control" required pattern="[a-zA-Z0-9 ]+" title="Invalid Chars [Only Alphanumeric]"></asp:TextBox>
        </div>      
     </div>
    <div class="row" style="margin:20px">
            <div class="col-md-3" style="text-align:right">
        Email
        </div>
        <div class="col-md-9">
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Email" value="" class="form-control" required ></asp:TextBox>
        </div>      
     </div>
     <div class="row" style="margin:20px">
        <div class="col-md-3" style="text-align:right">
        CompanyName
        </div>
        <div class="col-md-9">
         <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Company name" class="form-control"  value=""></asp:TextBox>
        </div>     
     </div>
     <div class="row" style="margin:20px">
            <div class="col-md-3" style="text-align:right">
        Address
        </div>
         <div class="col-md-9">
        <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter address" class="form-control"  value=""></asp:TextBox>
      </div>
      </div> 
    <div class="row" style="margin:20px">
            <div class="col-md-3" style="text-align:right">
        Password
        </div>
         <div class="col-md-9">
        <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter password" class="form-control"  value=""></asp:TextBox>
      </div>
      </div> 
      <div class="row" style="margin:20px">
            <div class="col-md-3" style="text-align:right">
            
            </div>
      <div class="col-md-9">
      <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-default"  style="background-color:#202020;color:white" OnClick="Button1_Click" />
      <a href="EmployerSignIn.aspx" class="btn btn-default" >Cancel </a>
      </div>
        </div>
        </form>
</div>
  </div>      
</asp:Content>
