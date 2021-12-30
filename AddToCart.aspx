<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="WebPractice.AddToCart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Welcome!</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="Stylesheet" />
    <style type="text/css">
        .auto-style3 {
            font-size: small;
        }
        .auto-style4 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div>
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                    <a class="nav-brand" href="FirstPage.aspx"><span>
                        <img alt="Logo" src="images/edocs(1).png" height="50" /></span>BOOKS</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="FirstPage.aspx">Home</a></li>
                        <li><a href="AboutUs.aspx">AboutUs</a></li>
                        <li><a href="ContactUs.aspx">ContactUs</a></li>
                        <li>
                            <asp:Button ID="btnSignOut" runat="server" 
                                CssClass="btn btn-default navbar-btn" Text="Sign Out" 
                                onclick="btnSignOut_Click" />
 
                        </li>
                        
                    </ul>
                </div>
            </div>
        </div>
  
    <asp:Label ID="lblSuccess" runat="server" CssClass="text-success"></asp:Label>
            </div>
       
   <%-- <asp:GridView ID="GridView1" runat="server" onload="GridView1_Load">
    </asp:GridView>--%>

        <asp:Label ID="Label1" runat="server" Text="You Have Prroducts in Your Cart:" Font-Bold="True" Font-Size="Medium"></asp:Label>
        <%--<asp:GridView ID="GridView1" runat="server" onload="GridView1_Load" AutoGenerateColumns="false">
    <Columns> 
        <asp:BoundField ItemStyle-Width="150px" DataField="id" HeaderText="id" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Name" HeaderText="Name" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Username" HeaderText="Username" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Usertype" HeaderText="Usertype" />
    </Columns>--%>    <%--//id	Name	Username	password	Createdby	Createdon	Updatedby	Updatedon	Usertype--%>  
   
    <%--  <footer>--%>&nbsp;&nbsp;&nbsp;

        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
  &nbsp;&nbsp;<strong><span class="auto-style4">in Your Cart</span><span class="auto-style3">&nbsp;&nbsp;</span></strong>&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Medium" NavigateUrl="~/UserHome.aspx">Continue Shopping</asp:HyperLink>
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" ForeColor="White" Height="326px" ShowFooter="True" Width="955px" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.NO">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="productid" HeaderText="Product ID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="productname" HeaderText="Product Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />
        <br />
        <strong><span class="auto-style4">YOUR GRAND TOTAL IS&nbsp; -&nbsp;&nbsp; </span>
        <asp:Label ID="lbltotal" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
        <br />
        <br />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="186px" ImageUrl="~/images/Buy Now.jpg" Width="225px" OnClick="ImageButton2_Click" CommandName="BuyNow" />
        </strong>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Books ManagementConnectionString %>" SelectCommand="SELECT * FROM [ProductDetail]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <footer>
             <div class="container">
             <p class="pull-right"><a href="#">Back to Top</a></p>
             <p>&copy; 2020 BOOKS.com &middot;<a href="FirstPage.aspx">Home</a> &middot; <a href="AboutUs.aspx">About</a> &middot;<a href="ContactUs.aspx">Contacts</a></p>
             </div>
             </footer>

    </form>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
     </body>
     
</html>