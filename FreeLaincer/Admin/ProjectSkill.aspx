<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ProjectSkill.aspx.cs" Inherits="FreeLaincer.Admin.ProjectSkill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
     <div class="content-header">
      <div class="container-fluid">
    
          <div class="container">
            <table class="table" id="ProjectSkill" style="width:100%">
                <thead>
                <tr>
                    <th>PsId</th> 
                    <th>ProjectId</th>
                    <th>SkillId</th>
                    
                </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                    <tr class="active">
                         <td>
                            <asp:Button ID="Button1" CommandName="btnEdit" CommandArgument='<%# Eval("PsId") %>' Class="btn btn-success" runat="server" Text="Edit" />
                        </td>
                        <td><%# Eval("PsId") %></td>
                        <td><%# Eval("ProjectId") %></td>
                        <td><%# Eval("SkillId") %></td>
                       <td>
                            <asp:Button ID="Button2" CommandName="btnDelete" CommandArgument='<%# Eval("PsId") %>' Class="btn btn-danger" runat="server" Text="Delete" />
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
