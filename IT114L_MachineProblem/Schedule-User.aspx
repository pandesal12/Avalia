<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Schedule-User.aspx.cs" Inherits="IT114L_MachineProblem.Schedule_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("Content/front-end/styles/schedule-user.css") %>" />
    <link rel="stylesheet" href="<%= ResolveUrl("Content/front-end/styles/breakpoints.css") %>" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <!--Schedule Page-->
    <div class="schedule-page">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <div class="HiddenFieldDataHere" id="selectedSeatsData" runat="server" style="display: none"></div>
        <div class="HiddenFieldDataHere3" id="occupiedSeatsData" runat="server" style="display: none"></div>
        <div class="HiddenFieldDataName2" id="userLoggedIn" runat="server" style="display: none"></div>



        <asp:HiddenField ID="hdnGeneratedData" runat="server" />


        <div class="schedcinema-seating">
            
            <link rel="stylesheet" href="seating-components/seatings_Style.css">
            <div class="DivisionContainer"></div> <%--seating--%>
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
<%--                <label id="backbtn">&laquo; Back</label>--%>
                <asp:Image id="imageMovie" runat="server" ImageUrl="/front-end/images/hungergames.jpg" alt="movie-display" /> <!--image can change-->
                <label style="margin-left: 20px" runat="server" id="movie_name"></label>
                <div class="movie-details">
                    <div>
                        <label>Ticket Price</label>
                        <label runat="server" id="ticketprice_label"></label>
                    </div>
                    <div class="right-align">
                        <label>Duration</label>
                        <label runat="server" id="duration_label"></label>   
                    </div>
                </div>

            </div>
            <div class="schedcinema-book">
                <!--Location-->
                <%--<label>Location</label>--%>
                <!--Show Time-->
                <label>Show Time</label>
<%--                <select class="book-options">
                    <option value="time1">3:00PM - 6:05PM</option>
                    <option value="time1">6:00PM - 9:05PM</option>
                </select>--%>

                <select class="dropDownSelect" id="DropDownList1" runat="server"></select>


                <!--Date-->
<%--                <label>Date</label>
                <select class="book-options">
                    <option value="date1">March 03, 2024</option>
                    <option value="date2">March 04, 2024</option>
                </select>--%>

                <div class="book-details">
                    <div class="label1">
                        <label>Selected Seats: </label><label class="selectedSeats"></label>
                    </div>
                    <div class="label2">
                        <label>Total Seats: </label><label class="totalSeats"></label>
                    </div>
                    </div>
                    <div class="label3">
                        <label>Available: </label><label class="availableSeats"></label>
                    </div>
                    <button class="btnSeats" onclick="executeSubmit()">Book Seats</button>
                </div>
                
                <%--<button class="btnSeats" onclick="showSelected(event)">Book Seats</button>--%>

               <%--<asp:Button ID="bookSeats" runat="server" Text="Book Seats" CssClass="btnSeats" OnClick="bookSeats_Click"/>--%>
                <%--<asp:Button ID="bookSeats" runat="server" Text="Book Seats" CssClass="btnSeats" OnClick="bookSeats_Click" OnClientClick="return false;" />--%>

            
            </div>
        </div>
    </div>
    <script src="Content/seating-components/seatings_Code.js"></script>
</asp:Content>
