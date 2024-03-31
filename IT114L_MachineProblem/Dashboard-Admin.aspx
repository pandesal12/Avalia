<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard-Admin.aspx.cs" Inherits="IT114L_MachineProblem.Dashboard_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("Content/front-end/styles/breakpoints.css") %>" />
    <link rel="stylesheet" href="<%= ResolveUrl("Content/front-end/styles/dashboard-admin.css") %>" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <div class="admin-interface">
         <div class="admin-desc">
            <div class="overview-label">Overview</div>
            <div class="overview-container">
                 <table>
                    <thead>
                        <tr>
                            <th>Total Bookings</th>
                            <th>Total Revenue</th>
                            <th>Today's Revenue</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span id="bookingsCount">4</span></td>
                            <td>₱16,142.00</td>
                            <td>₱8,000.00</td>
                        </tr>
                    </tbody>
                 </table>
            </div>
         </div>
         <div class="moviescreening-today">
            <div class="screening-label">Screening Today</div>
            <div class="screening-container">
                <!--Sample screening1-->
                <div class="screeningbox-container">
                    <div class="screening-box">
                        <div class="screening-img">
                            <asp:Image runat="server" ImageUrl="Content/front-end/images/damsel.jpg" alt="itemlist1" />
                        </div>
                        <div class="main-slider-text">
                            <span class="status">Now Showing</span>
                            <div class="bottom-text">
                                <div class="movie-name">
                                    <span>1h 50m</span>
                                    <a href="#">Damsel</a>
                                </div>
                                <div class="category-rating">
                                    <div class="category">
                                        <a href="#">Fantasy</a>,&nbsp;<a href="#">Adventure</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--screening-details-->
                    <div class="screeningcinema-details">
                        <div class="cinematime">3:00PM -  6:02PM</div>
                        <div class="cinemanumber">Cinema 1</div>
                    </div>
                </div>
                <!--Sample screening2-->
                <div class="screeningbox-container">
                    <div class="screening-box">
                        <div class="screening-img">
                            <asp:Image runat="server" ImageUrl="Content/front-end/images/lightsout.jpg" alt="itemlist2" />
                        </div>
                        <div class="main-slider-text">
                            <span class="status">Now Showing</span>
                            <div class="bottom-text">
                                <div class="movie-name">
                                    <span>1h 26m</span>
                                    <a href="#">Lights Out</a>
                                </div>
                                <div class="category-rating">
                                    <div class="category">
                                        <a href="#">Action</a>,&nbsp;<a href="#">Thriller</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--screening-details-->
                    <div class="screeningcinema-details">
                        <div class="cinematime">4:00PM -  5:44PM</div>
                        <div class="cinemanumber">Cinema 2</div>
                    </div>
                </div>
                <!--Sample screening3-->
                <div class="screeningbox-container">
                    <div class="screening-box">
                        <div class="screening-img">
                            <asp:Image runat="server" ImageUrl="Content/front-end/images/mynameislohkiwan.jpg" alt="itemlist3" />
                        </div>
                        <div class="main-slider-text">
                            <span class="status">Now Showing</span>
                            <div class="bottom-text">
                                <div class="movie-name">
                                    <span>2h 13m</span>
                                    <a href="#">My Name is Loh Kiwan</a>
                                </div>
                                <div class="category-rating">
                                    <div class="category">
                                        <a href="#">Romance</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--screening-details-->
                    <div class="screeningcinema-details">
                        <div class="cinematime">3:00 PM - 5:11 PM</div>
                        <div class="cinemanumber">Cinema 3</div>
                    </div>
                </div>
                <!--Sample screening4-->
                <div class="screeningbox-container">
                    <div class="screening-box">
                        <div class="screening-img">
                            <asp:Image runat="server" ImageUrl="Content/front-end/images/60mins.jpg" alt="itemlist4" />
                        </div>
                        <div class="main-slider-text">
                            <span class="status">Now Showing</span>
                            <div class="bottom-text">
                                <div class="movie-name">
                                    <span>1h 28m</span>
                                    <a href="#">Sixty Minutes</a>
                                </div>
                                <div class="category-rating">
                                    <div class="category">
                                        <a href="#">Action</a>,&nbsp;<a href="#">Sport</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--screening-details-->
                    <div class="screeningcinema-details">
                        <div class="cinematime">2:00 PM - 3:54 PM</div>
                        <div class="cinemanumber">Cinema 4</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
