<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Add Users/Choose Activity </h2>
     <asp:Label ID="msg" runat="server" Text=""></asp:Label>
    <div class="container">
              <div class="full1">
             <p><asp:TextBox ID="txtusername" runat="server" Placeholder="Please, Enter Your Name" Font-Size="Large" Height="40px" Width="431px" BorderStyle="Ridge"></asp:TextBox>
              </p>
            <asp:TextBox ID="txtuserpassword" runat="server" Placeholder="Please, Enter Your Password" Font-Size="Large" Height="40px" Width="440px" TextMode="Password" BorderStyle="Ridge"></asp:TextBox><b></b>
                  <b></b>
          <p>  <asp:TextBox ID="txtuserpassword1" runat="server" Placeholder="Please, Re-Enter Your Password" Font-Size="Large" Height="40px" Width="442px" TextMode="Password" BorderStyle="Ridge"></asp:TextBox><b></b>
                 </p>
                  <b></b>

            <div class="login_wrapper1"><asp:Button ID="Button1" class="btn" runat="server" Text="Add Users" Height="60px" Width="226px" OnClick="Button1_Click"/>
                <asp:Button ID="Button2" class="btn" runat="server" Text="Choose Activity" Height="60px" Width="226px" OnClick="Button2_Click"/>
            </div>
                  
        </div>
    </div>
   
</asp:Content>

