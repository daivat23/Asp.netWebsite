<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.Master" AutoEventWireup="true" CodeBehind="EmployRate.aspx.cs" Inherits="FreeLaincer.Employee.EmployRate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content-wrapper">
     <div class="content-header">
      <div class="container-fluid">
    
          <div class="container">
                    <asp:Repeater ID="Repeater1" runat="server" >
                    <ItemTemplate>
                    <h3 style="text-align:center;">Rate & Review</h3>
                        <hr />
                        <h2>Comapany Name : <%# Eval("CompanyName") %></h2>
                        <h2>Name : <%# Eval("Fname") %> <%# Eval("Lname") %></h2>
                        <hr />
                         </ItemTemplate>
                    </asp:Repeater>
                        <div class="row">
                        <div class="col-4">
                        <h5>Please give Rate:</h5>
                        <input type="radio" id="1" name="star" value="1">
                        <label for="star" style="color:goldenrod">★</label><br>
                        <input type="radio" id="2" name="star" value="2">
                        <label for="star" style="color:goldenrod">★ ★</label><br>
                        <input type="radio" id="3" name="star" value="3">
                        <label for="star" style="color:goldenrod">★ ★ ★</label><br>
                        <input type="radio" id="4" name="star" value="4">
                        <label for="star" style="color:goldenrod">★ ★ ★ ★</label><br>
                        <input type="radio" id="5" name="star" value="5">
                        <label for="star" style="color:goldenrod">★ ★ ★ ★ ★</label><br>
                          <%--  ☆--%>
                         <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" OnClick="Button1_Click"/>
                            </div>
                            <div class="col-7">
                               <h2></h2>
                        <p>Give your Review :</p>       
                        <div class="form-group">
                        <label>Review:</label><br />
                         <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" value=""></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" Text="Submit" class="btn btn-primary" OnClick="Button2_Click" />
                             </div>
                            </div>
                            </div>
        </div>
          </div>
         </div>
        </div>
</asp:Content>
