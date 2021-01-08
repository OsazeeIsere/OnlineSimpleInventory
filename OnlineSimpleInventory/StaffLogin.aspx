<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StaffLogin.aspx.cs" Inherits="StaffLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Login As A Staff</h2>
    <asp:Label ID="msg" runat="server" Text=""></asp:Label>
    <div class="container">
              <div class="full1">
             <p><asp:TextBox ID="txtusername" runat="server" Placeholder="Please, Enter Your Name" Font-Size="Large" Height="40px" Width="431px" BorderStyle="Ridge"></asp:TextBox>
              </p>
            <asp:TextBox ID="txtuserpassword" runat="server" Placeholder="Please, Enter Your Password" Font-Size="Large" Height="40px" Width="440px" TextMode="Password" BorderStyle="Ridge"></asp:TextBox><b></b>
                  <b></b>
                  <b></b>

            <div class="login_wrapper1"><asp:Button ID="Button1" class="btn" runat="server" Text="Login" Height="60px" Width="226px" OnClick="Button1_Click"/>
            </div>
        </div>
    </div>
   
</asp:Content>

