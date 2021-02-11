﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageStock.aspx.cs" Inherits="ManageStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Inventory</h1>
        <asp:Label ID="msg" runat="server" Text=""></asp:Label>

    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View3" runat="server">
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" OnRowCancelingEdit="GridView1_RowCancelingEdit">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        </asp:View>
        <asp:View ID="View1" runat="server">
             <asp:ListView ID="lsvitems" runat="server" OnItemCanceling="lsvitems_ItemCanceling" OnItemDeleting="lsvitems_ItemDeleting" OnItemEditing="lsvitems_ItemEditing" OnItemInserting="lsvitems_ItemInserting" OnItemUpdating="lsvitems_ItemUpdating">
         <ItemTemplate>
                     
                 <table border="1" bgColor="aqua">
                    <tr>
                        <td>Product ID</td>
                    
                        <td>Product Name</td>
                    
                        <td>Section</td>
                    
                        <td>Quantity</td>
                    
                        <td>Retail Price</td>
                    
                        <td>Expiry Date</td>
                    
                        <td>Entry Date</td>
                    </tr>
                     <tr>
                         <td><%# Eval("productid") %></td>
                    
                         <td><%# Eval("productname") %></td>
                    
                         <td><%# Eval("section") %></td>
                    
                         <td><%# Eval("quantity") %></td>
                    
                         <td><%# Eval("retail") %></td>
                    
                         <td><%# Eval("expirydate") %></td>
                    
                         <td><%# Eval("entrydate") %></td>
                    </tr>

                    <tr>
                      <td>
       <asp:Button ID="btnedit" runat="server" Text="Edit"  ToolTip="Edit" CommandName="Edit"/></td>   
       <td><asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="Delete" ToolTip="Delete"/></td> 
                    </tr>
                </table>
 
                </ItemTemplate>
                <InsertItemTemplate>
                     <table border="1">
                    <tr>
                        <td>Product Name</td>
                        <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>Section</td>
                        <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>Section</td>
                        <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>Quantity</td>
                        <td><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
                    </tr>
                          <tr>
                        <td>Expiry Date</td>
                        <td><asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>Cost price</td>
                        <td><asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
                    </tr>
                    
                    <tr>
                    <td width="100px">
                    <asp:Button ID="btnInsertButton" runat="server" 
                        CommandName="Insert" 
         Text="Insert" />                        
         </td>
                        </tr>
                </table>

                </InsertItemTemplate>
                <EditItemTemplate>
                     <table border="1" bgColor="aqua">
                    <tr>
                        <td>Product ID</td>
                         <td><asp:TextBox ID="TextBox1" runat="server" 
                             Text='<%# Bind("productid") %>'></asp:TextBox></td>
                    </tr>
                      <tr>
                        <td>Product Name</td>
                         <td><asp:TextBox ID="TextBox2" runat="server" 
                             Text='<%# Bind("productname") %>'></asp:TextBox></td>
                    </tr>
                      <tr>
                        <td>quantity</td>
                         <td> <asp:TextBox ID="TextBox3" runat="server" 
                             Text='<%# Bind("quantity") %>'></asp:TextBox></td>
                    </tr>
                      <tr>
                        <td>Expiry Date</td>
                         <td> <asp:TextBox ID="TextBox4" runat="server" 
                             Text='<%# Bind("expirydate") %>'></asp:TextBox></td>
                    </tr>
                      <tr>
                        <td>Retail Price</td>
                         <td> <asp:TextBox ID="TextBox5" runat="server" 
                             Text='<%# Bind("retail") %>'></asp:TextBox></td>
                    </tr>
                 <asp:linkbutton id="btnUpdate" runat="server" 
                            commandname="Update" text="update" />
					<asp:linkbutton id="btnCancel" runat="server" 
                        causesvalidation="false" commandname="Cancel" Text="Cancel" />


                </EditItemTemplate>
    </asp:ListView>
    
    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lsvitems">
        <Fields>
            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
            <asp:NumericPagerField />
            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
        </Fields>
    </asp:DataPager>
   
        </asp:View>
    </asp:MultiView>

    
</asp:Content>

