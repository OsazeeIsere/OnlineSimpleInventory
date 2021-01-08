<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Administrator</h2>
    <asp:Label ID="msg" runat="server" Text=""></asp:Label>
    <div class="container">
        <div class="full1">
            <asp:TextBox ID="txtadminname" runat="server" Placeholder="Please, Enter Your Name" Font-Size="Large" Height="40px" Width="400px" BorderStyle="Ridge"></asp:TextBox>
           <b></b>
          <asp:TextBox ID="txtadminpassword" runat="server" Placeholder="Please, Enter Your Password" Font-Size="Large" Height="40px" Width="400px" BorderStyle="Ridge" TextMode="Password"></asp:TextBox><b></b>
                  <b></b>
            <div class="login_wrapper1"><asp:Button ID="Button1" class="btn" runat="server" Text="Submit" Height="60px" Width="226px" OnClick="Button1_Click"/></div>
        </div>
    </div>
        
</asp:Content>

