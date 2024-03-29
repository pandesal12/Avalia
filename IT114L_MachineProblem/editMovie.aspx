<%@Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="editMovie.aspx.cs" Inherits="IT114L_MachineProblem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/breakpoints.css") %>" />
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/manage-admin.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
<%--    <div>
        <h2>Edit Movie Details</h2>
        
        <label for="poster">Poster</label>
        <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />

        <label for="title">Title</label>
        <asp:TextBox runat="server" ID="title_tb" required=""></asp:TextBox><br /><br />

        <label for="price">Price</label>
        <asp:TextBox runat="server" ID="price_tb" required=""></asp:TextBox><br /><br />

        <label for="synopsis">Synopsis</label>
        <asp:TextBox runat="server" ID="synopsis_tb" TextMode="MultiLine" required=""></asp:TextBox><br /><br />
        
        <label for="duration">Duration</label>
        <asp:TextBox runat="server" ID="duration_tb" required=""></asp:TextBox><br /><br />

        <label for="genres">Genres</label>
        <asp:TextBox runat="server" ID="genres_tb" required=""></asp:TextBox><br /><br />

        <button type="button" onclick="closePopup()">Cancel</button>
        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
     </div>--%>

    <div>
    <div class="popup-content">
        <h2>Edit Movie Details</h2>
        
        <label for="poster">Poster</label>
        <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />

        <label for="title">Title</label>
        <asp:TextBox runat="server" ID="title_tb" required=""></asp:TextBox><br /><br />

        <label for="price">Price</label>
        <asp:TextBox runat="server" ID="price_tb" required=""></asp:TextBox><br /><br />
        <asp:RegularExpressionValidator ID="PriceValidator" runat="server"
            ControlToValidate="price_tb"
            ErrorMessage="Please enter the price in the correct format. Ex. 240.00"
            ValidationExpression="^\d+(\.\d{1,2})?$"
            Display="Dynamic"
            style="color: red; width;max-width: 360px;text-align: center; margin-left: 50px;">
        </asp:RegularExpressionValidator>


        <label for="synopsis">Synopsis</label>
        <asp:TextBox runat="server" ID="synopsis_tb" TextMode="MultiLine" required=""></asp:TextBox><br /><br />
        
<%--        <label for="duration">Duration</label>
        <asp:TextBox runat="server" ID="duration_tb" required=""></asp:TextBox><br /><br />--%>

        <label for="genres">Genres</label>
        <asp:CheckBoxList ID="cblGenres" runat="server" CssClass="genre-list" required="">
            <%-- <asp:ListItem Text="Action" Value="Action"></asp:ListItem>
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

        <button class="button cancel" type="button" onclick="closePopup()">Cancel</button>
        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" OnClientClick="return validateGenres();" CssClass="button save"/>

    </div>
</div>
    <script>
        function validateGenres() {
            var cblGenres = document.getElementById("<%= cblGenres.ClientID %>");
            var checkboxes = cblGenres.getElementsByTagName("input");
            var selectedGenresCount = 0;

            for (var i = 0; i < checkboxes.length; i++) {
                if (checkboxes[i].checked) {
                    selectedGenresCount++;
                }
            }

            if (selectedGenresCount === 0) {
                alert("Please select at least one genre.");
                return false;
            }

            if (selectedGenresCount > 4) {
                alert("Maximum of 4 genres can be selected.");
                return false;
            }

            return true;
        }
    </script>

    <script src="front-end/admin-Script.js"></script>
</asp:Content>
