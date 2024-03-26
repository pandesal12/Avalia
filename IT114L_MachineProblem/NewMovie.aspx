<%@ Page MasterPageFile="~/Admin.Master" Language="C#" AutoEventWireup="true" CodeBehind="NewMovie.aspx.cs" Inherits="IT114L_MachineProblem.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/breakpoints.css") %>" />
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/manage-admin.css") %>" />
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/newmovie.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <div class="movieContainer">
        <div class="formContainer">
            <div class="textBoxContainer">
                <label class="lblCSS">Title</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textBoxInput"></asp:TextBox>
            </div>
            <div class="textBoxContainer">
                <label class="lblCSS">Description</label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textBoxInput"></asp:TextBox>
            </div>
            <div class="textBoxContainer">
                <label class="lblCSS">Date</label>
                <%-- 03/27/24 3:00:00 PM --%>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textBoxInput"></asp:TextBox>
            </div>
            <div class="textBoxContainer">
                <label class="lblCSS">Duration</label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="textBoxInput"></asp:TextBox>
            </div>
            <div class="textBoxContainer">
                <label class="lblCSS">Price</label>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="textBoxInput"></asp:TextBox>
            </div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
        </div>

        
        
        <asp:CheckBoxList ID="cblGenres" runat="server">
            <asp:ListItem Text="Action" Value="Action"></asp:ListItem>
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
            <asp:ListItem Text="Thriller" Value="Thriller"></asp:ListItem>
        </asp:CheckBoxList>
    </div>
</asp:Content>