<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="IT114L_MachineProblem.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/breakpoints.css") %>" />
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/profile-user.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <div class="profile-container">
        <div class="user-info">
            <asp:Image runat="server" ImageUrl="/front-end/images/robert_fox.png" alt="profile-img" />
            <div class="user-description">
                <div class="greeting-text">
                    <label>
                        Hello,
                        <span id="your-username">Robert Fox</span>
                        !
                    </label>
                </div>
                <div class="userinfo-count">
                    <label>Pending: &nbsp;<span id="pendingCount">0</span></label>
                    <label>Complete: &nbsp;<span id="completeCount">0</span></label>
                </div>
            </div>
        </div>
        <div class="table_body">
            <label>Movies Today</label>
            <table> 
                <thead>
                    <!--Fields-MoviesToday-->
                    <tr>
                        <th></th>
                        <th>Movie Title</th>
                        <th class="centerItem">Seat Number</th>
                        <th>Screening Time</th>
                        <th>Quantity</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tbody id="pending-movies">
                    <!--Record 1-->
                    <tr>
                        <td><asp:Image runat="server" ImageUrl="/front-end/images/themarvels.jpeg" alt="thumbnail-movie" /></td>
                        <td>The Marvels</td>
                        <td><p class="seats waiting">D1, D2, D3</p></td>
                        <td>6PM</td>
                        <td>3</td>
                        <td><strong>₱2400</strong></td>
                    </tr>
                    <!--Record 2-->
                    <tr>
                        <td><asp:Image runat="server" ImageUrl="/front-end/images/transformers.jpg" alt="thumbnail-movie" /></td>
                        <td>Transformers</td>
                        <td><p class="seats waiting">D6, D7, D8</p></td>
                        <td>6PM</td>
                        <td>3</td>
                        <td><strong>₱2400</strong></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="table_body">
            <label>Booking History</label>
            <table>
                <thead>
                    <!--Fields-BookingHistory-->
                    <tr>
                        <th></th>
                        <th>Movie Title</th>
                        <th>Date</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tbody id="finished-movies">
                    <!--Record 1-->
                    <tr>
                        <td><asp:Image runat="server" ImageUrl="/front-end/images/theexorcist.jpg" alt="thumbnail-movie" /></td>
                        <td>The Exorcist</td>
                        <td>02/21/2024</td>
                        <td><strong>₱2400</strong></td>
                    </tr>
                    <!--Record 2-->
                    <tr>
                        <td><asp:Image runat="server" ImageUrl="/front-end/images/orionandthedark.jpg" alt="thumbnail-movie" /></td>
                        <td>Orion and the Dark</td>
                        <td>02/15/2024</td>
                        <td><strong>₱2400</strong></td>
                    </tr>
                    
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
