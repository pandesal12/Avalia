<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="IT114L_MachineProblem.Receipt" %>
<asp:Content ID="Content" ContentPlaceHolderID="ContentSection" runat="server">
    <link href="front-end/Receipt.css" rel="stylesheet" />
    <div class="receipt-container">
        <img src="front-end/images/avalia_logo.png" class="receipt-logo"/>
        <h2 class="receipt-heading">Receipt</h2>
        <p>-------------------------------------------</p>
        <div class="receipt-details">
            <p class="movieName">Movie Name: </p>
            <p class="seats">Selected Seats: </p>
            <p class="venue">Movie Venue: </p>
            <p class="dateShowing">Date Showing: </p>
            <p class="timeShowing">Time Showing: </p>
            <p class="amount">Amount: </p>
            <p class="purchasedOn">Purchased On:</p>
        </div>
        <p>-------------------------------------------</p>
    </div>

    <script>
        window.onload = function () {
            var time = " " + localStorage.getItem("time");
            var date = " " + localStorage.getItem("date");
            var price = " " + localStorage.getItem("price");
            var location = " " + localStorage.getItem("location");

            document.querySelector(".timeShowing").innerText += time;
            document.querySelector(".dateShowing").innerText += date;
            document.querySelector(".amount").innerText += price;
            document.querySelector(".venue").innerText += location;

            var currentDate = new Date();
            var formattedDate = currentDate.toDateString();
            var formattedTime = currentDate.toLocaleTimeString();
            document.querySelector(".purchasedOn").innerText += formattedDate + " " + formattedTime;
        };
    </script>
</asp:Content>
