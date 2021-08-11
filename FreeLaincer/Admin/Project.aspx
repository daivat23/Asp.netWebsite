<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="FreeLaincer.Admin.Project" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
     <div class="content-header">
      <div class="container-fluid">
    
           <div class="container">
            <table class="table" id="Project" style="width:100%">
                <thead>
                <tr>
                    <th> </th>
                    <th>ProjectId</th> 
                    <th>ProjectName</th>
                    <th>ProjectDate</th>
                    <th>Prise</th>
                    <th>Time</th>
                    <th>FromDate</th>
                    <th>ToDate</th>
                    <th>EmployerId</th>
                </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                    <tr class="active">
                         <td>
                            <asp:Button ID="Button1" CommandName="btnEdit" CommandArgument='<%# Eval("ProjectId") %>' Class="btn btn-success" runat="server" Text="Edit" />
                        </td>
                        <td><%# Eval("ProjectId") %></td>
                        <td><%# Eval("ProjectName") %></td>
                        <td><%# Eval("ProjectDate") %></td>
                        <td><%# Eval("Prise") %></td>
                        <td><%# Eval("Time") %></td>
                        <td><%# Eval("FromDate") %></td>
                         <td><%# Eval("ToDate") %></td>
                        <td><%# Eval("EmployerId") %></td>
                         <td>
                            <asp:Button ID="Button2" CommandName="btnDelete" CommandArgument='<%# Eval("ProjectId") %>' Class="btn btn-danger" runat="server" Text="Delete" />
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
