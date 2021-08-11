<%@ Page Title="" Language="C#" MasterPageFile="~/Employer/Employer.Master" AutoEventWireup="true" CodeBehind="ViewBid.aspx.cs" Inherits="FreeLaincer.Employer.ViewBid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content-wrapper">
     <div class="content-header">
      <div class="container-fluid">
    
          <div class="container">
             <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                  <div class="card">
                      <div style="padding:20px" >
                          <p>Employ Frist Name : <%# Eval("EmployFname") %> <asp:Button ID="Button1" runat="server" CommandName="btnRate" CommandArgument='<%# Eval("EmployId") %>' class="btn btn-dark" Text="Rate & Review"/></p>
                          <p>Employ Last Name : <%# Eval("EmployLname") %></p>
                          <hr />
                          <p>Employ Address : <%# Eval("Address") %></p>
                          <p>Gender : <%# Eval("Gender") %></p>
                          <p>Age :  <%# Eval("Age") %></p>
                          <p>Mobile :  <%# Eval("Mobile") %></p>
                          <p>Bid : <%# Eval("Bid") %></p>
                          <p>Bid Date : <%# Eval("BidDate") %></p>
                      </div>
                  </div>
                    </ItemTemplate>
                    </asp:Repeater>
        </div>
          </div>
         </div>
</div>
</asp:Content>
