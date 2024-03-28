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
                        <span runat="server" id="your_username"></span>
                        !
                    </label>
                </div>
                <div class="userinfo-count">
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
                <tbody runat="server" id="pending_movies">

                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
