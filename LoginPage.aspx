<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebPractice.Login.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign In</title>
    <link href="../css/StyleSheet1.css" rel="stylesheet" />
    <%--css for icons--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" />
    <link href="../font/web-fonts-with-css/css/fontawesome-all.min.css" rel="stylesheet" />
</head>
<body bgcolor="#E6E6FA">
    <div class="w3layouts-main">
        <div class="bg-layer">
            <h1>Login form</h1>

          <div class="header-main" id ="LoginPage">
               
                <div class="header-left-bottom">
                       <form id="form2" runat="server">
                        <div class="icon1">
                            
                            <input type="text" placeholder="UserName" name = "txtusername" autocomplete="off" required="" />
                        </div>
                        <div class="icon1">
                           
                            <input type="password" placeholder="Password" name = "txtpassword"  required="" />
                        </div>
                        <div class="bottom">
                            <button class="btn" id ="LogInButton" runat="server" onServerClick="Button1_Click">Log In</button>
                        </div>
                        <div class="links">
                          <%--<a href="#" id ="ForgotPasswordButton">Forgot Password?</a>--%>
                           <p> <asp:LinkButton ID="LinkButton2" runat="server" href="RecoverPassword.aspx">Forgot Password!</asp:LinkButton></p>
                            <p> <asp:LinkButton ID="LinkButton1" runat="server" href="SignUp.aspx">New User Registeration!</asp:LinkButton></p>
                            <div class="clear"></div>
                        </div>
                    </form>
                </div>
               <%-- <div class="social">
                    <ul>
                        <li>or login using : </li>
                        <li><a href="#" class="facebook"><span class="fa fa-facebook"></span></a></li>
                        <li><a href="#" class="twitter"><span class="fa fa-twitter"></span></a></li>
                        <li><a href="#" class="google"><span class="fa fa-google-plus"></span></a></li>
                    </ul>
                </div>--%>
            </div>
               </div>
            </div>

    <script src="../js/JavaScript.js"></script>
</body>
</html>
