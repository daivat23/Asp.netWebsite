<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.Master" AutoEventWireup="true" CodeBehind="EmployProject.aspx.cs" Inherits="FreeLaincer.Employee.EmployProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
     <div class="content-header">
      <div class="container-fluid">
    
           <div class="container">
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
             <ItemTemplate>
                    <div class="card" >
                        <div style="padding:20px" >
                            <h3 style="background-color:lightgray;padding:20px" ><%# Eval("ProjectName") %></h3>
                            <h4>by <%# Eval("CompanyName") %> <asp:Button ID="Button2" runat="server" CommandName="btnRate" CommandArgument='<%# Eval("ProjectId") %>' class="btn btn-dark" Text="Rate & Review"/></h4>
                            <h5>Own By <%# Eval("Fname") %> <%# Eval("Lname") %> </h5>
                            <p>Date: <%# Eval("FromDate") %> To  <%# Eval("ToDate") %></p>
                            <hr />
                            <p>Project Discription</p>
                            <hr />
                            <p>Estimated Price: <%# Eval("Prise") %>  Dureation: <%# Eval("Time") %></p>
                            <asp:Button ID="Button1" runat="server" CommandName="btnAdd" CommandArgument='<%# Eval("ProjectId") %>' class="btn btn-primary" Text="ADD BID" />
                        </div>
                    </div>
                        </div>
                    </ItemTemplate>
                    </asp:Repeater>
         </div>
        </div>
          </div>
         </div>
</asp:Content>
