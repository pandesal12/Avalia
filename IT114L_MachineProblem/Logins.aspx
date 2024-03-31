<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logins.aspx.cs" Inherits="IT114L_MachineProblem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/front-end/styles/logSign.css" />
    <link rel="stylesheet" href="/front-end/styles/breakpoints.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="container">
                <ul>
                    <li>
                        <a href="#" class="logo">
                            <div class="images">
                                <img src="/front-end/images/avalia_logo.png" />
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </header>

        <main>

            <section class="signup">
                <div class="container">
                    <div class="left">
                        <div class="form-wrapper">
                            <img src="/front-end/images/avalia_logo.png" alt="logo" class="logoaval"/>
                            <div class="fhfull">
                                <div class="form-heading">
                                    <h1>Sign in</h1>
                                    <p class="text">Don't have an account? <a href="Signup.aspx" cssclass="switch-link">Sign up</a></p>
                                </div>
                            </div>
                            <div class="signup-form">

                                <div class="input-wrap w-70">
                                    <asp:TextBox runat="server" CssClass="input-field" ID="txtUsername" AutoCompleteType="Disabled"/>
                                    <label>Username</label>
                                    <i class="icon fa-solid fa-user"></i>     
                                </div>

                                <div class="input-wrap w-70">
                                    <asp:TextBox runat="server" CssClass="input-field" ID="txtPassword" TextMode="Password" AutoCompleteType="Disabled"/>
                                    <label>Password</label>
                                    <i class="icon fa-solid fa-lock"></i>     
                                </div>

                                <div class="sign-btn">
                                    <asp:Button runat="server" ID="btnSignUp" Text="Sign In" CssClass="btn" OnClick="btnSignUp_Click" />
                                </div>
                            </div> 
                            <div class="fh700">
                                <div class="form-heading">
                                    <p class="text">Don't have an account? <a href="Signup.aspx" cssclass="switch-link">Sign up</a></p>
                                </div>
                            </div>
                       </div>

                    </div>

                    <div class="right">
                        <div class="image-wrapper">
                            <img src="/front-end/images/login_bg.jpg" class="img" runat="server" id="imgBg"/>
                            <div class="wave-wrap">
                                <svg class="wave" viewBox="0 0 783 1536" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path id="wave" d="M236.705 1356.18C200.542 1483.72 64.5004 1528.54 1 1535V1H770.538C793.858 63.1213 797.23 196.197 624.165 231.531C407.833 275.698 274.374 331.715 450.884 568.709C627.393 805.704 510.079 815.399 347.561 939.282C185.043 1063.17 281.908 1196.74 236.705 1356.18Z" />
                                </svg>
                            </div>
                            <svg class="dashed-wave" viewBox="0 0 345 877" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path id="dashed-wave" d="M0.5 876C25.6667 836.167 73.2 739.8 62 673C48 589.5 35.5 499.5 125.5 462C215.5 424.5 150 365 87 333.5C24 302 44 237.5 125.5 213.5C207 189.5 307 138.5 246 87C185 35.5 297 1 344.5 1" />
                            </svg>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </form>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/js/all.min.js"></script>
        <script src="front-end/createAccount.js"></script>
</body>
</html>