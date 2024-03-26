<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Manage-Admin.aspx.cs" Inherits="IT114L_MachineProblem.Manage_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/breakpoints.css") %>" />
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/manage-admin.css") %>" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <div class="manageMovie">
        <h2>Manage Movie List</h2>
        <div class="addMovie">Add a New Movie</div>
        <ul class="movieModify">
            <li><a>Poster</a></li>
            <li><a>Movie Title</a></li>
            <li><a>Price</a></li>
            <li><a>Modify</a></li>
            <li><a>Remove</a></li>
        </ul>
        <div class="movieList">
            <ul class="TopGun">
                <li>
                    <img src="/front-end/images/topgun.jpg" alt="Top Gun: Maverick Poster" class="posterImage" />
                 </li>
                <li><a>Top Gun</a></li>
                <li><a>₱800</a></li>
                <li><a href="#">Edit</a></li>
                <li><a href="#">Remove</a></li>
            </ul>
        </div>
    </div>
</asp:Content>
