<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IT114L_MachineProblem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Avalia</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>

    <form id="form1" runat="server">
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
            <h2 id="form-title">Sign In</h2>
            <asp:Panel ID="authPanel" runat="server">
                <div class="form-control">
                   <asp:TextBox ID="usernameTextBox" runat="server" CssClass="input-field" AutoCompleteType="Disabled" required></asp:TextBox>
                   
                    <label>Username</label>
                </div>
                <div class="form-control">
                    <asp:TextBox ID="passwordTextBox" runat="server" CssClass="input-field" TextMode="Password" AutoCompleteType="Disabled" required></asp:TextBox>
                    
                    <label>Password</label>
                </div>
                <asp:Button ID="submitButton" runat="server" Text="Sign In" CssClass="sign-btn" />
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
            <p id="accountSign">Don't have an account? <a href="#" id="signup-link">Sign up</a></p>
        </div>
    </form>

    <script src="login.js"></script>
</body>
</html>