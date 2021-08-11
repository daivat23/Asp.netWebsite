<%@ Page Title="" Language="C#" MasterPageFile="~/Employer/Employer.Master" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="FreeLaincer.Employer.Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
     <div class="content-header">
      <div class="container-fluid">
    
           <div class="container">
    <div class="clearfix"></div>
<div class="container" style="margin-top:40px">
<div class="logindiv" style="height:700px" >
        <h4  style="background-color:#202020;color:#fff;padding:20px;border-radius:9px 9px 0px 0px" >
           Change Password
       </h4>
<form method="post" enctype="multipart/form-data">
     
     <h3>  </h3>
     <div class="row" style="margin:20px">
        <div class="col-md-3" style="text-align:match-parent">
        Old Password
        </div>
        <div class="col-md-9">
         <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Old Password"  value=""
         class="form-control" required pattern="[a-zA-Z0-9 ]+" title="Invalid Chars [Only Alphanumeric]"></asp:TextBox>
        </div>     
     </div>
    <div class="row" style="margin:20px">
        <div class="col-md-3" style="text-align:match-parent">
        New Password
        </div>
        <div class="col-md-9">
       <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter New Password"  value=""
         class="form-control" required pattern="[a-zA-Z0-9 ]+" title="Invalid Chars [Only Alphanumeric]"></asp:TextBox>
        </div>      
     </div>
    <div class="row" style="margin:20px">
        <div class="col-md-3" style="text-align:match-parent">
        Conform Password
        </div>
        <div class="col-md-9">
       <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter conform Password"  value=""
         class="form-control" required pattern="[a-zA-Z0-9 ]+" title="Invalid Chars [Only Alphanumeric]"></asp:TextBox>
        </div>      
     </div>      
      <div class="row" style="margin:20px">
            <div class="col-md-3" style="text-align:match-parent">
                <asp:Button ID="Button1" runat="server" Text="Done" class="btn btn-default"  style="background-color:#202020;color:white"  />
            </div>
        </div>
        </form>
</div>
  </div> 
   </div>
          </div>
         </div>
         </div>
</asp:Content>
