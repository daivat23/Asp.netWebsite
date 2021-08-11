<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Bid.aspx.cs" Inherits="FreeLaincer.Admin.Bid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
     <div class="content-header">
      <div class="container-fluid">
    
          <div class="container">
            <table class="table" id="BidView" style="width:100%">
                <thead>
                <tr>
                    <th> </th>
                    <th>Time</th>
                    <th>Bid</th>
                    <th>Status</th>
                    <th>EmployFname</th>
                    <th>EmployLname</th>
                    <th>ProjectName</th>
                </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                    <tr class="active">
                        <td>
                            <asp:Button ID="Button1" CommandName="btnEdit" CommandArgument='<%# Eval("BidId") %>' Class="btn btn-success" runat="server" Text="Edit" />
                        </td>
                        <td><%# Eval("Time") %></td>
                        <td><%# Eval("Bid") %></td>
                        <td><%# Eval("Status") %></td>
                        <td><%# Eval("EmployFname") %></td>
                        <td><%# Eval("EmployLname") %></td>
                        <td><%# Eval("ProjectName") %></td>
                        <td>
                            <asp:Button ID="Button2" CommandName="btnDelete" CommandArgument='<%# Eval("BidId") %>' Class="btn btn-danger" runat="server" Text="Delete" />
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
