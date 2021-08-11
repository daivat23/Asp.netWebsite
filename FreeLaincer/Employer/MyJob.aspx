<%@ Page Title="" Language="C#" MasterPageFile="~/Employer/Employer.Master" AutoEventWireup="true" CodeBehind="MyJob.aspx.cs" Inherits="FreeLaincer.Employer.MyJob" %>
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
                    <th>ProjectName</th>
                    <th>ProjectDate</th>
                    <th>Prise</th>
                    <th>Time</th>
                    <th>FromDate</th>
                    <th>ToDate</th>
                </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                    <tr class="active">
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="View Bid" CommandName="btnView" CommandArgument='<%# Eval("EmployerId") %>' class="btn btn-info"/>
                        </td>
                        <td><%# Eval("ProjectName") %></td>
                        <td><%# Eval("ProjectDate") %></td>
                        <td><%# Eval("Prise") %></td>
                        <td><%# Eval("Time") %></td>
                        <td><%# Eval("FromDate") %></td>
                         <td><%# Eval("ToDate") %></td>
                         <td>
                            <asp:Button ID="Button1" CommandName="btnDelete" CommandArgument='<%# Eval("ProjectId") %>' Class="btn btn-danger" runat="server" Text="Delete" />
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
