<%@ Page Title="" Language="C#" MasterPageFile="~/Visit/Visit.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FreeLaincer.Visit.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="clearfix"></div>
<div class="container" style="margin-top:40px">
<div class="logindiv" style="height:700px" >
        <h4  style="background-color:#202020;color:#fff;padding:20px;border-radius:9px 9px 0px 0px" >
           Employ Register
       </h4>
<form method="post" enctype="multipart/form-data">
     
     <h3>  </h3>
     <div class="row" style="margin:20px">
        <div class="col-md-3" style="text-align:right">
        EmployFname
        </div>
        <div class="col-md-9">
         <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter frist name"  value=""
         class="form-control" required pattern="[a-zA-Z0-9 ]+" title="Invalid Chars [Only Alphanumeric]"></asp:TextBox>
        </div>     
     </div>
    <div class="row" style="margin:20px">
        <div class="col-md-3" style="text-align:right">
        EmployLname
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
        Address
        </div>
        <div class="col-md-9">
         <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Adderss" class="form-control"  value=""></asp:TextBox>
        </div>     
     </div>
     <div class="row" style="margin:20px">
            <div class="col-md-3" style="text-align:right">
        Gender
        </div>
         <div class="col-md-9">
        <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Email" class="form-control"  value=""></asp:TextBox>
      </div>
      </div>
     <div class="row" style="margin:20px">
            <div class="col-md-3" style="text-align:right">
        Age
        </div>
        <div class="col-md-9">
         <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter Age" class="form-control" required value="" ></asp:TextBox>
        </div>     
     </div>
     
     <div class="row" style="margin:20px">
        <div class="col-md-3" style="text-align:right">
        Mobile
        </div>
        <div class="col-md-9">
        <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter Num"  value=""
        class="form-control" required  pattern="[0-9 ]+" title="Invalid Chars [Only Numeric]" ></asp:TextBox> 
        </div>     
     </div>   
      <div class="row" style="margin:20px">
        <div class="col-md-3" style="text-align:right">
        Password
        </div>
        <div class="col-md-9">
         <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter Password" class="form-control"  value=""></asp:TextBox>
        </div>     
     </div> 
      <div class="row" style="margin:20px">
            <div class="col-md-3" style="text-align:right">
            
            </div>
      <div class="col-md-9">
       <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-default"  style="background-color:#202020;color:white" OnClick="Button1_Click" />
      <a href="EmploySignIn.aspx" class="btn btn-default" >Cancel </a>
      </div>
        </div>
        </form>
</div>
  </div>      
</asp:Content>
