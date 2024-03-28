<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Homepage-User.aspx.cs" Inherits="IT114L_MachineProblem.Homepage_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/breakpoints.css") %>" />
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/homepage_user.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <!--CAROUSEL-->
    <div class="carousel">
        <div class="list">
            <!--Item List 1-->
            <div class="item">
                <asp:Image runat="server" ImageUrl="/front-end/images/godzilla_2.png" alt="itemlist1" />
                <div class="content">
                    <div class="author">Upcoming</div>
                    <div class="title">Godzilla x Kong: The New Empire</div>
                    <div class="topic">2024</div>
                </div>
            </div>
            <!--Item List 2-->
            <div class="item">
                <asp:Image runat="server" ImageUrl="/front-end/images/apes_2.jpg" alt="itemlist2" />
                <div class="content">
                    <div class="author">Upcoming</div>
                    <div class="title">Kingdom of the Planet of the Apes</div>
                    <div class="topic">2024</div>
                </div>
            </div>
            <!--Item List 3-->
            <div class="item">
                <asp:Image runat="server" ImageUrl="/front-end/images/kraven_2.jpg" alt="itemlist3" />
                <div class="content">
                    <div class="author">Upcoming</div>
                    <div class="title">Kraven the Hunter</div>
                    <div class="topic">2024</div>
                </div>
            </div>
            <!--Item List 4-->
            <div class="item">
                <asp:Image runat="server" ImageUrl="/front-end/images/despicableme4_2.jpg" alt="itemlist4" />
                <div class="content">
                    <div class="author">Upcoming</div>
                    <div class="title">Despicable Me 4</div>
                    <div class="topic">2024</div>
                </div>
            </div>
            <!--Item List 5-->
            <div class="item">
                <asp:Image runat="server" ImageUrl="/front-end/images/abigail_2.jpg" alt="itemlist5" />
                <div class="content">
                    <div class="author">Upcoming</div>
                    <div class="title">Abigail</div>
                    <div class="topic">2024</div>
                </div>
            </div>
            <!--Item List 6-->
            <div class="item">
                <asp:Image runat="server" ImageUrl="/front-end/images/fallguy_2.jpg" alt="itemlist6" />
                <div class="content">
                    <div class="author">Upcoming</div>
                    <div class="title">The Fall Guy</div>
                    <div class="topic">2024</div>
                </div>
            </div>
        </div>
        <!--thumbnail1-->
        <div class="thumbnail">
            <!--Item List 2-->
            <div class="item">
                <asp:Image runat="server" ImageUrl="/front-end/images/apes_1.jpeg" alt="itemlist2" />
                <div class="content"><div class="title">??????</div></div>
            </div>
            <!--Item List 3-->
            <div class="item">
                <asp:Image runat="server" ImageUrl="/front-end/images/kraven_1.jpg" alt="itemlist3" />
                <div class="content"><div class="title">Kraven the Hunter</div></div>
            </div>
            <!--Item List 4-->
            <div class="item">
                <asp:Image runat="server" ImageUrl="/front-end/images/despicableme4_1.jpg" alt="itemlist4" />
                <div class="content"><div class="title">Despicable Me 4</div></div>
            </div>
            <!--Item List 5-->
            <div class="item">
                <asp:Image runat="server" ImageUrl="/front-end/images/abigail_1.jpg" alt="itemlist5" />
                <div class="content"><div class="title">Abigail</div></div>
            </div>
            <!--Item List 6-->
            <div class="item">
                <asp:Image runat="server" ImageUrl="/front-end/images/fallguy_1.jpg" alt="itemlist6" />
                <div class="content"><div class="title">The Fall Guy</div></div>
            </div>
            <!--Item List 1-->
            <div class="item">
                <asp:Image runat="server" ImageUrl="/front-end/images/godzilla_1.jpg" alt="itemlist2" />
                <div class="content"><div class="title">Godzilla x Kong: The New Empire</div></div>
            </div>
        </div>
        <div class="time"></div>
    </div>

    <!--NOW SHOWING MOVIES SECTION-->
    <section id="now-showing">
        <div class="tabs_wrap">
            <h3>Filter Genre</h3>
            <ul>
                <li data-tabs="all">Select All</li>
                <li data-tabs="action">Action</li>
                <li data-tabs="adventure">Adventure</li>
                <li data-tabs="comedy">Comedy</li>
                <li data-tabs="drama">Drama</li>
                <li data-tabs="family">Family</li>
                <li data-tabs="fantasy">Fantasy</li>
                <li data-tabs="history">History</li>
                <li data-tabs="horror">Horror</li>
                <li data-tabs="mystery">Mystery</li>
                <li data-tabs="romance">Romance</li>
                <li data-tabs="scifi">Sci-Fi</li>
                <li data-tabs="sport">Sport</li>
                <li data-tabs="thriller">Thriller</li>
            </ul>
        </div>

        <!--<div class="now-showing-title">Hello po</div>-->
        <div runat="server" id="postContainer" class="post-container">

        </div>
    </section>
    <script>
    function redirectToSchedule(title) {
        var url = "Schedule-User.aspx?title=" + encodeURIComponent(title);
        window.location.href = url;
    }
    </script>
</asp:Content>


