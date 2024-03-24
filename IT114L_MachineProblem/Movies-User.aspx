<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Movies-User.aspx.cs" Inherits="IT114L_MachineProblem.Movies_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/breakpoints-user.css") %>" />
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/movie-user.css") %>" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
</asp:Content>
