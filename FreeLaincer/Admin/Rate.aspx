﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Rate.aspx.cs" Inherits="FreeLaincer.Admin.Rate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
     <div class="content-header">
      <div class="container-fluid">
    
          <div class="container">
            <table class="table" id="Rate" style="width:100%">
                <thead>
                <tr>
                    <th> </th>
                    <th>RateId</th> 
                    <th>EmployerId</th>
                    <th>EmployId</th>
                    <th>Rate</th>
                    <th>RateDate</th>
                </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                    <tr class="active">
                        <td>
                            <asp:Button ID="Button1" CommandName="btnEdit" CommandArgument='<%# Eval("RateId") %>' Class="btn btn-success" runat="server" Text="Edit" />
                        </td>
                        <td><%# Eval("RateId") %></td>
                        <td><%# Eval("EmployerId") %></td>
                        <td><%# Eval("EmployId") %></td>
                        <td><%# Eval("Rate") %></td>
                        <td><%# Eval("RateDate") %></td>
                         <td>
                            <asp:Button ID="Button2" CommandName="btnDelete" CommandArgument='<%# Eval("RateId") %>' Class="btn btn-danger" runat="server" Text="Delete" />
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
