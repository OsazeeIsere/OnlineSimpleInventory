<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="login_wrapper">
            <div class="login">
                <asp:Button ID="btnadministrator" runat="server" CssClass="btn" Text="Admin Login" Height="80px" Width="50%" OnClick="btnadmin_Click1" PostBackUrl="~/admin.aspx" />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/key3.jpg" Height="80px" ImageAlign="Middle" Width="50%" />
            </div>
            <div class="login">
                <asp:Button ID="btnstaffpage" runat="server" CssClass="btn" Text="Staff Login" Height="81px" Width="50%" />
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/key3.jpg" Height="80px" ImageAlign="Middle" Width="50%" />
            </div>
        </div>
</asp:Content>

