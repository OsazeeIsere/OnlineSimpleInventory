<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="content" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="~/css/main.css" />
</head>
<body class="container">
    <form id="form1" runat="server">
        <div>
            <h1 id="top_heading" runat="server">Online Inventory Management System</h1>
        </div>
        <div class="full">
            <div class="container">
        <div class="header-image">
            <a href="index.aspx"><img src="images/EDPLogo.JPG" style="height:100px;align-content:flex-start;" /></a>
            
        </div>
        <div class="header-info">
                       
            <h2 >EDO STATE ESSENTIAL DRUGS PROGRAMME</h2>
            <h3>Medical Store Road Benin City </h3>
        </div>
                </div>
                    <div class="self-clear"></div>

        </div>
      
        <div class="login_wrapper">
            <div class="login">
                <asp:Button ID="btnadmin" runat="server" CssClass="btn" Text="Admin Login" Height="80px" Width="50%" OnClick="btnadmin_Click1" />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/key3.jpg" Height="80px" ImageAlign="Middle" Width="50%" />
            </div>
            <div class="login">
                <asp:Button ID="btnstaff" runat="server" CssClass="btn" Text="Staff Login" Height="81px" Width="50%" />
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/key3.jpg" Height="80px" ImageAlign="Middle" Width="50%" />
            </div>
        </div>

      
        
    </form>

</body>
</html>
