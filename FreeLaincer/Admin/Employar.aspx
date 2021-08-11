<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Employar.aspx.cs" Inherits="FreeLaincer.Admin.Employar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
     <div class="content-header">
      <div class="container-fluid">
    
           <div class="container">
            <table class="table" id="Employar" style="width:100%">
                <thead>
                <tr>
                    <th> </th>
                    <th>EmployerId</th> 
                    <th>Fname</th>
                    <th>Lname</th>
                    <th>Email</th>
                    <th>CompanyName</th>
                    <th>Address</th>
                </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                    <tr class="active">
                        <td>
                            <asp:Button ID="Button1" CommandName="btnEdit" CommandArgument='<%# Eval("EmployerId") %>' Class="btn btn-success" runat="server" Text="Edit" />
                        </td>
                        <td><%# Eval("EmployerId") %></td>
                        <td><%# Eval("Fname") %></td>
                        <td><%# Eval("Lname") %></td>
                        <td><%# Eval("Email") %></td>
                        <td><%# Eval("CompanyName") %></td>
                        <td><%# Eval("Address") %></td>
                        <td>
                            <asp:Button ID="Button2" CommandName="btnDelete" CommandArgument='<%# Eval("EmployerId") %>' Class="btn btn-danger" runat="server" Text="Delete" />
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
