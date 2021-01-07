<%@ Page Language="C#" AutoEventWireup="true" CodeFile="content.aspx.cs" Inherits="content" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .full{
            width:100%;
            background-color:aqua;
            height:100px;
        }
        .login{
             width: 45%;
             float: left;
            padding: .75em 1em;
             font-size: 1.2em;
        }
        .btn 
        {
            max-height: 3.5em;
            border: none;
            padding: .75em 1.25em;
            font-family: inherit;
            font-size: 1em;
            font-weight: bold;
            color: white;
            background-color:blue;
        }
        .container {
            max-width: 940px;
            margin: 0 auto;
        }
            .header-image {
            float: left;
            width: 25%;
            margin-top: 0em;
            padding-right: 1em;
            text-align: right;
            }
            .header-info {
                
            float: left;
            width: 70%;
            margin-top: 0em;
            color: black;
            }
            .self-clear::after
            {
                content: "";
                display: block;
                clear: both;

            }

    </style>
</head>
<body class="container">
    <form id="form1" runat="server">
        <div>
            <h1 id="top_heading" runat="server">Online Inventory Management System</h1>
        </div>
        <div class="full">
            <div class="container">
        <div class="header-image">
            <asp:ImageButton ID="logo" runat="server" ImageUrl="~/images/EDPLogo.JPG" Height="100px" ImageAlign="Left" />
        </div>
        <div class="header-info">
                       
            <h2 >EDO STATE ESSENTIAL DRUGS PROGRAMME</h2>
            <h3>Medical Store Road Benin City </h3>
        </div>
                </div>
                    <div class="self-clear"></div>

        </div>
        <p>

        </p>
        <p>

        </p>
        <div>
            <asp:Button ID="change_title" runat="server" Text="Change Title" OnClick="change_title_Click" />
        </div>
      
        <div class="login">
            <asp:Button ID="btnadmin" runat="server" CssClass="btn" Text="Admin Login" Height="80px" />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/key3.jpg" Height="80px" ImageAlign="Middle" />
        </div>
        <div class="login">
            <asp:Button ID="btnstaff" runat="server" CssClass="btn" Text="Staff Login" Height="81px" Width="181px" />
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/key3.jpg" Height="80px" ImageAlign="Middle" />
               </div>
    </form>

</body>
</html>
