<%@ Page MasterPageFile="~/Admin.Master" Language="C#" AutoEventWireup="true" CodeBehind="NewMovie.aspx.cs" Inherits="IT114L_MachineProblem.NewMovie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("Content/front-end/styles/manage-admin.css") %>" />
    <link rel="stylesheet" href="<%= ResolveUrl("Content/front-end/styles/newmovie.css") %>" />
    <link rel="stylesheet" href="<%= ResolveUrl("Content/front-end/styles/breakpoints.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    
    <h2 class="moveMeDown">New Movie Details</h2>
    <div class="movieContainer">
        <div class="uploadContainer">
            <asp:Image ID="imgPreview" runat="server" Visible="true" CssClass="imgpreview"/>
            <asp:Label Text="Upload Movie Poster" runat="server" CssClass="uploadLabel"/>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="fileupload" onchange="displayImage(this)"/>
        </div>

        <div class="formContainer">
            <div class="textBoxContainer">
                <label class="lblCSS">Title:</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textBoxInput" placeholder="Enter Title..."></asp:TextBox>
            </div>
            <br />
            <div class="textBoxContainer">
                <label class="lblCSS">Description:</label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textBoxInput description" TextMode="MultiLine" placeholder="Enter Description..."></asp:TextBox>
            </div>
            <br />
            <div class="textBoxContainer">
                <label class="lblCSS">Date:</label>
                <%-- 03/27/24 3:00:00 PM --%>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textBoxInput" placeholder="Enter Date..."></asp:TextBox>
            </div>
                <asp:RegularExpressionValidator ID="DateValidator" runat="server"
                    ControlToValidate="TextBox3"
                    ErrorMessage="Please enter the date in the correct format. Ex. 03/24/24 5:00:00 PM"
                    ValidationExpression="^(0[1-9]|1[0-2])\/(0[1-9]|[12][0-9]|3[01])\/[0-9]{2}\s([1-9]|1[012]):[0-5][0-9]:[0-5][0-9]\s(AM|PM)$"
                    Display="Dynamic"
                    CssClass="validationCtr">
                </asp:RegularExpressionValidator>
            <br />  
            <div class="textBoxContainer">
                <label class="lblCSS">Duration:</label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="textBoxInput" placeholder="Enter Duration..."></asp:TextBox>
            </div>
            <asp:RegularExpressionValidator ID="DurationValidator" runat="server"
                ControlToValidate="TextBox4"
                ErrorMessage="Please enter the duration in the correct format. Ex. 30.12"
                ValidationExpression="\d{2}\.\d{2}"
                Display="Dynamic"
                CssClass="validationCtr">
            </asp:RegularExpressionValidator>
            <br />
            <div class="textBoxContainer">
                <label class="lblCSS">Price:</label>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="textBoxInput" placeholder="Enter Price..."></asp:TextBox>
            </div>
                <asp:RegularExpressionValidator ID="PriceValidator" runat="server"
                    ControlToValidate="TextBox5"
                    ErrorMessage="Please enter the price in the correct format. Ex. 240.00"
                    ValidationExpression="^\d+(\.\d{1,2})?$"
                    Display="Dynamic"
                    CssClass="validationCtr">
                </asp:RegularExpressionValidator>
            <br />
            <div class="textBoxContainer">
                <label class="lblCSS">Genre:</label>
                <asp:CheckBoxList ID="cblGenres" runat="server" CssClass="genre-list">
                    <%--<asp:ListItem Text="Action" Value="Action"></asp:ListItem>
                    <asp:ListItem Text="Adventure" Value="Adventure"></asp:ListItem>
                    <asp:ListItem Text="Comedy" Value="Comedy"></asp:ListItem>
                    <asp:ListItem Text="Drama" Value="Drama"></asp:ListItem>
                    <asp:ListItem Text="Family" Value="Family"></asp:ListItem>
                    <asp:ListItem Text="Fantasy" Value="Fantasy"></asp:ListItem>
                    <asp:ListItem Text="History" Value="History"></asp:ListItem>
                    <asp:ListItem Text="Horror" Value="Horror"></asp:ListItem>
                    <asp:ListItem Text="Mystery" Value="Mystery"></asp:ListItem>
                    <asp:ListItem Text="Romance" Value="Romance"></asp:ListItem>
                    <asp:ListItem Text="Sci-Fi" Value="Sci-Fi"></asp:ListItem>
                    <asp:ListItem Text="Sport" Value="Sport"></asp:ListItem>
                    <asp:ListItem Text="Thriller" Value="Thriller"></asp:ListItem>--%>
                </asp:CheckBoxList>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" CssClass="saveBtn"/>
        </div>
    </div>

    <script>
        function displayImage(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                var fileNameElement = document.getElementById('<%= FileUpload1.ClientID %>');
                var labelText = document.querySelector(".moveMeDown");
                labelText.setAttribute("class", "moviePreview");
                <%--var imgPreview = document.getElementById('<%= imgPreview.ClientID %>');
                imgPreview.setAttribute("class", "moviePreview");--%>
                 reader.onload = function (e) {
                var image = document.getElementById('<%= imgPreview.ClientID %>');
                    image.src = e.target.result;
                    image.style.display = 'block';

                    fileNameElement.innerHTML = "File Name: " + input.files[0].name;
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>