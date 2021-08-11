<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Employ.aspx.cs" Inherits="FreeLaincer.Admin.Employ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
     <div class="content-header">
      <div class="container-fluid">
    
           <div class="container">
            <table class="table" id="Employ" style="width:100%">
                <thead>
                <tr>
                    <th>EmployId</th> 
                    <th>EmployFname</th>
                    <th>EmployLname</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Age</th>
                    <th>Mobile</th>
                </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                    <tr class="active">
                         <td>
                            <asp:Button ID="Button1" CommandName="btnEdit" CommandArgument='<%# Eval("EmployId") %>' Class="btn btn-success" runat="server" Text="Edit" />
                        </td>
                        <td><%# Eval("EmployId") %></td>
                        <td><%# Eval("EmployFname") %></td>
                        <td><%# Eval("EmployLname") %></td>
                        <td><%# Eval("Email") %></td>
                        <td><%# Eval("Address") %></td>
                        <td><%# Eval("Age") %></td>
                        <td><%# Eval("Mobile") %></td>
                        <td>
                            <asp:Button ID="Button2" CommandName="btnDelete" CommandArgument='<%# Eval("EmployId") %>' Class="btn btn-danger" runat="server" Text="Delete" />
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
