<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="IT114L_MachineProblem.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/front-end/login.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <div id="signup-form" class="form-container">
            <div class="header">
            <div class="background"></div>
            <nav>
                <a href="#"><img src="assets/avalia_logo.svg" alt="logo" /></a>
            </nav>
            <div class="tagline">
                <p class="bigText" runat="server">Where every seat tells a story.</p>
                <p class="smallText" runat="server">SEAMLESS BOOKING, ENDLESS ENTERTAINMENT.</p>
            </div>
        </div>
        <div class="form-wrapper">
            <h2 id="form-title">Sign Up</h2>
            <asp:Panel ID="authPanel" runat="server">
                <div class="form-control">
                   <asp:TextBox ID="usernameTextBox" runat="server" CssClass="input-field" AutoCompleteType="Disabled" required=""></asp:TextBox>
                   
                    <label>Username</label>
                </div>
                <div class="form-control">
                    <asp:TextBox ID="passwordTextBox" runat="server" CssClass="input-field" TextMode="Password" AutoCompleteType="Disabled" required=""></asp:TextBox>
                    
                    <label>Password</label>
                </div>
                <asp:Button ID="submitButton" runat="server" Text="Sign Up" CssClass="sign-btn" OnClick="btnSubmit_Click"/>
                <div class="form-help">
                    <div class="remember-me">
                        <asp:CheckBox ID="rememberCheckBox" runat="server" CssClass="remember-me" />
                        <label for="remember-me">Remember me</label>
                    </div>
                    <a href="#">Need Help?</a>
         </div>
            </asp:Panel>
            <asp:Panel ID="signupPanel" runat="server" Visible="false">
                <!-- Sign Up Form -->
            </asp:Panel>
            <p id="accountSign">Already have an account? <a href="Login.aspx" id="signin-link">Sign in</a></p>
        </div>
        </div>
        </div>
       
        
    </form>
        <script src="login.js"></script>
</body>
</html>
