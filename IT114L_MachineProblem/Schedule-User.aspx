<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Schedule-User.aspx.cs" Inherits="IT114L_MachineProblem.Schedule_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/breakpoints.css") %>" />
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/schedule-user.css") %>" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <!--Schedule Page-->
    <div class="schedule-page">
        <div class="schedcinema-seating">
            <!--yung seats dito-->
            <!--Status of Seats-->
            <ul class="showcase">
                <li>
                    <div class="seat"></div><!--baguhin nalang-->
                    <small>Available</small><!--white-->
                </li>
                <li>
                    <div class="seat selected"></div><!--baguhin nalang-->
                    <small>Selected</small><!--yellow-->
                </li>
                <li>
                    <div class="seat taken"></div><!--baguhin nalang-->
                    <small>Taken</small><!--red-->
                </li>
            </ul> 
         
        </div>
        <div class="schedcinema-container">
            <div class="schedcinema-details">
                <label id="backbtn">&laquo; Back</label>
                <asp:Image runat="server" ImageUrl="/front-end/images/hungergames.jpg" alt="movie-display" /> <!--image can change-->
                <label id="movie-name">Hunger Games</label>
                <div class="movie-details">
                    <div>
                        <label>Ticket Price</label>
                        <label id="ticketprice-label">P2400</label>
                    </div>
                    <div class="right-align">
                        <label>Duration</label>
                        <label id="duration-label">2hrs 2 min</label>
                    </div>
                </div>

            </div>
            <div class="schedcinema-book">
                <!--Location-->
                <label>Location</label>
                <select class="book-options">
                    <option value="lcoation1">SM Sta. Rosa City</option>
                    <option value="lcoation1">SM Calamba City</option>
                </select>
                <!--Show Time-->
                <label>Show Time</label>
                <select class="book-options">
                    <option value="time1">3:00PM - 6:05PM</option>
                    <option value="time1">6:00PM - 9:05PM</option>
                </select>
                <!--Date-->
                <label>Date</label>
                <select class="book-options">
                    <option value="date1">March 03, 2024</option>
                    <option value="date2">March 04, 2024</option>
                </select>

                <div class="book-details">
                    <div class="label1">
                        <label>Selected Seats: </label>
                    </div>
                    <div class="label2">
                        <label>Total Seats: </label>
                    </div>
                    <div class="label3">
                        <label>Available: </label>
                    </div>
                </div>
                <button class="btnSeats">Book Seats</button>
            
            </div>
        </div>
    </div>
</asp:Content>
