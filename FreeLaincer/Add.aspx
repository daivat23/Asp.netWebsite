<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="FreeLaincer.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>
<html>
   <head>
    <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="content-wrapper">
  <div class="content-header">
  <div class="container-fluid">
   
  <div class="container">           
  <table class="table table-bordered">
  <thead>
   <tr>
       <th>Skill Name</th>
       
   </tr>
   </thead>
    <tbody>
        <tr class="success">
           <td>
               <asp:TextBox ID="txtSkillName" runat="server"></asp:TextBox>
           </td>
        </tr>
    </tbody>
     </table>
      <asp:HiddenField ID="hidId" runat="server" />
      <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Enter" OnClick="Button1_Click" />
      </div>
      </div>
      </div>
      </div>
    </body>
    </html>
</asp:Content>
