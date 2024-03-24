<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard-Admin.aspx.cs" Inherits="IT114L_MachineProblem.Dashboard_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/breakpoints-admin.css") %>" />
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/dashboard-admin.css") %>" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
</asp:Content>
