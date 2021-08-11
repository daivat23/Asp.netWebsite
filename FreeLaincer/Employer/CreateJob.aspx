<%@ Page Title="" Language="C#" MasterPageFile="~/Employer/Employer.Master" AutoEventWireup="true" CodeBehind="CreateJob.aspx.cs" Inherits="FreeLaincer.Employer.CreateJob" %>
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
           Create Job
       </h4>
<form method="post" enctype="multipart/form-data">
     
     <h3>  </h3>
     <div class="row" style="margin:20px">
        <div class="col-md-3" style="text-align:match-parent">
        Project Name
        </div>
        <div class="col-md-9">
         <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter project name"  value=""
         class="form-control" required pattern="[a-zA-Z0-9 ]+" title="Invalid Chars [Only Alphanumeric]"></asp:TextBox>
        </div>     
     </div>
    <div class="row" style="margin:20px">
        <div class="col-md-3" style="text-align:match-parent">
        Project Date
        </div>
        <div class="col-md-9">
       <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter project date"  value=""
         class="form-control" required pattern="[a-zA-Z0-9 ]+" title="Invalid Chars [Only Alphanumeric]"></asp:TextBox>
        </div>      
     </div>
     <div class="row" style="margin:20px">
            <div class="col-md-3" style="text-align:match-parent">
        Prise
        </div>
         <div class="col-md-9">
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter prise" class="form-control"  value=""></asp:TextBox>
      </div>
      </div> 
     <div class="row" style="margin:20px">
            <div class="col-md-3" style="text-align:match-parent">
        Time
        </div>
         <div class="col-md-9">
        <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter time" class="form-control"  value="" ></asp:TextBox>
      </div>
      </div>
     <div class="row" style="margin:20px">
            <div class="col-md-3" style="text-align:match-parent">
        From Date
        </div>
        <div class="col-md-9">
         <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter from date" class="form-control" required value="" ></asp:TextBox>
        </div>     
     </div>
      <div class="row" style="margin:20px">
            <div class="col-md-3" style="text-align:match-parent">
        To Date
        </div>
        <div class="col-md-9">
         <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter to date" class="form-control" required value="" ></asp:TextBox>
        </div>     
     </div>
   
      <div class="row" style="margin:20px">
            <div class="col-md-3" style="text-align:match-parent">
                <asp:Button ID="Button1" runat="server" Text="Done" class="btn btn-default"  style="background-color:#202020;color:white" OnClick="Button1_Click"  />
            </div>
      <div class="col-md-9">
      
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
