<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StaffLogin.aspx.cs" Inherits="StaffLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="col-12 text-center bg-secondary text-white-50 bg-dark">
        <h2>Login As A Staff</h2>
     </div>
    <asp:Label ID="msg" runat="server" Text=""></asp:Label>
    <div class="container">
        <div class="row">
        <div class="col">
          
        </div>
        <div class="col-6">
          <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
              <asp:TextBox ID="txtusername" runat="server" class="form-control"></asp:TextBox>
            
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
              <asp:TextBox ID="txtuserpassword" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
            
          </div>
          <div class="form-group form-check">
              <asp:RadioButtonList ID="rdoLoginType" runat="server">
                  <asp:ListItem Value="Staff" Text="Staff"></asp:ListItem>
                  <asp:ListItem Value="Admin" Text="Admin"></asp:ListItem>
              </asp:RadioButtonList>
          </div>
          <asp:Button type="submit" class="btn btn-primary" runat="server" name="btnSubmit" onclick="btnSubmit_Click" id="btnSubmit" Text="Submit"></asp:Button>
        </div>
        <div class="col">
          
        </div>
             
        </div>
    </div>
   
</asp:Content>

