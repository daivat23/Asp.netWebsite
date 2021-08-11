<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.Master" AutoEventWireup="true" CodeBehind="EmployBid.aspx.cs" Inherits="FreeLaincer.Employee.EmployBid" %>
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
                          <h4 style="background-color:lightgray;padding:20px" ><%# Eval("ProjectName") %></h4>
                          <p>Bid Time : <%# Eval("Time") %></p>
                          <p>Bid : <%# Eval("Bid") %></p>
                          <hr />
                          <p>Bid Date : <%# Eval("BidDate") %></p>
                          <p>Status : <%# Eval("Status") %></p>
                          <asp:Button ID="Button1" CommandName="btnDelete" CommandArgument='<%# Eval("BidId") %>' Class="btn btn-danger" runat="server" Text="Delete" />
                      </div>
                  </div>
                    </ItemTemplate>
                    </asp:Repeater>
        </div>
          </div>
         </div>
</div>
</asp:Content>
