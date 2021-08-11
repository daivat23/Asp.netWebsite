<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Skill.aspx.cs" Inherits="FreeLaincer.Admin.Skill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="content-wrapper">
     <div class="content-header">
      <div class="container-fluid">
   
    <div class="container">
            <table class="table" id="Skill" style="width:100%">
                <thead>
                <tr>
                    <th> </th>
                    <th>SkillId</th> 
                    <th>SkillName</th>
                </tr>
                </thead>
                <tbody>
                     <asp:Button ID="Button3" CommandName="btnAdd" CommandArgument='<%# Eval("SkillId") %>' Class="btn btn-success" runat="server" Text="Add" 
                             PostBackUrl="~/Add.aspx"/>
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                    <tr class="active">
                       
                         <td>
                            <asp:Button ID="Button1" CommandName="btnEdit" CommandArgument='<%# Eval("SkillId") %>' Class="btn btn-success" runat="server" Text="Edit" />
                        </td>
                        <td><%# Eval("SkillId") %></td>
                        <td><%# Eval("SkillName") %></td>
                        <td>
                            <asp:Button ID="Button2" CommandName="btnDelete" CommandArgument='<%# Eval("SkillId") %>' Class="btn btn-danger" runat="server" Text="Delete" />
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
