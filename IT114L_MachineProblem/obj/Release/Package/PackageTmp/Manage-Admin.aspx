<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Manage-Admin.aspx.cs" Inherits="IT114L_MachineProblem.Manage_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/breakpoints.css") %>" />
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/manage-admin.css") %>" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <div class="manageMovie">
        <h2>Manage Movie List</h2>
        <a href="NewMovie.aspx" class="addMovie">Add a New Movie</a>
        <ul class="movieModify">
            <li><a>Poster</a></li>
            <li><a>Movie Title</a></li>
            <li><a>Price</a></li>
            <li><a>Modify</a></li>
            <li><a>Remove</a></li>
        </ul>
        <div runat="server" id="movieList" class="movieList">

        </div>
    </div>
    <script src="front-end/admin-Script.js"></script>
</asp:Content>
