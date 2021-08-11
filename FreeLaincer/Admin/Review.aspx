<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="FreeLaincer.Admin.Review" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
     <div class="content-header">
      <div class="container-fluid">
   
          <div class="container">
            <table class="table" id="Review" style="width:100%">
                <thead>
                <tr>
                    <th> </th>
                    <th>ReviewId</th> 
                    <th>ReviewDate</th>
                    <th>Reviews</th>
                    <th>EmployerId</th>
                    <th>EmployId</th>
                </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                    <tr class="active">
                         <td>
                            <asp:Button ID="Button1" CommandName="btnEdit" CommandArgument='<%# Eval("ReviewId") %>' Class="btn btn-success" runat="server" Text="Edit" />
                        </td>
                        <td><%# Eval("ReviewId") %></td>
                        <td><%# Eval("ReviewDate") %></td>
                        <td><%# Eval("Reviews") %></td>
                        <td><%# Eval("EmployerId") %></td>
                        <td><%# Eval("EmployId") %></td>
                         <td>
                            <asp:Button ID="Button2" CommandName="btnDelete" CommandArgument='<%# Eval("ReviewId") %>' Class="btn btn-danger" runat="server" Text="Delete" />
                        </td>
                    </tr>
                    </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
          </div>
         </div>
        </div>
</asp:Content>
