<%@ Page Title="" Language="C#" MasterPageFile="~/Employer/Employer.Master" AutoEventWireup="true" CodeBehind="RateReview.aspx.cs" Inherits="FreeLaincer.Employer.RateReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
 <div class="content-wrapper">
     <div class="content-header">
      <div class="container-fluid">
<div class="container mt-3">
  <h2>Rate : </h2>
   <asp:Repeater ID="Repeater2" runat="server" >
    <ItemTemplate>
  <div class="media border p-3">
    <div class="media-body">
      <h4 style="color:goldenrod">Your rate is here:( <%# Eval("Users") %>) <%# getStars(Eval("Rating").ToString()) %></h4>
    </div>
  </div>
</div>
</ItemTemplate>
</asp:Repeater>
<hr />
    <h2>Review : </h2>
  <p>Your review is here:</p>
     <asp:Repeater ID="Repeater1" runat="server" >
    <ItemTemplate>
    <div class="container mt-3">
  <div class="media border p-3">
    <div class="media-body">
      <h4>Email :<%# Eval("Email") %></h4>
      <h2>Name : <%# Eval("EmployFname") %> <%# Eval("EmployLname") %></h2>
      <h2>Review : <%# Eval("Reviews") %></h2>
    </div>
  </div>
</div>
</ItemTemplate>
         </asp:Repeater>
</div>
</div>
</div>
</body>
</html>

</asp:Content>
