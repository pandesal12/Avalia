<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="IT114L_MachineProblem.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
        <!--arrows-->
        <div class="arrows">
            <button id="prev">&laquo;</button>
            <button id="next">&raquo;</button>
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
        <div class="post-container">
            <!--Sample postbox1-->
            <div class="post-box fantasy adventure">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/damsel.jpg" alt="movie1" />
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
            <!--Sample postbox2-->
            <div class="post-box action thriller">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/lightsout.jpg" alt="movie2" />
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
            <!--Sample postbox3-->
            <div class="post-box romance">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/mynameislohkiwan.jpg" alt="movie3" />
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
            <!--Sample postbox4-->
            <div class="post-box action sport">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/60mins.jpg" alt="movie4" />
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
            <!--Sample postbox5-->
            <div class="post-box comedy adventure">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/orionandthedark.jpg" alt="movie5" />
                </div>
                <div class="main-slider-text">
                    <span class="status">Now Showing</span>
                    <div class="bottom-text">
                        <div class="movie-name">
                            <span>1h 30m</span>
                            <a href="#">Orion and the Dark</a>
                        </div>
                        <div class="category-rating">
                            <div class="category">
                                <a href="#">Comedy</a>,&nbsp;<a href="#">Adventure</a>
                            </div>
                        </div>
        
                    </div>
                </div>
            </div>
            <!--Sample postbox6-->
            <div class="post-box comedy romance">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/upgraded.jpg" alt="movie6" />
                </div>
                <div class="main-slider-text">
                    <span class="status">Now Showing</span>
                    <div class="bottom-text">
                        <div class="movie-name">
                            <span>1h 44m</span>
                            <a href="#">Upgraded</a>
                        </div>
                        <div class="category-rating">
                            <div class="category">
                                <a href="#">Comedy</a>,&nbsp;<a href="#">Romance</a>
                            </div>
                        </div>
        
                    </div>
                </div>
            </div>
            <!--Sample postbox7-->
            <div class="post-box action sci-fi">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/transformers.jpg" alt="movie7" />
                </div>
                <div class="main-slider-text">
                    <span class="status">Now Showing</span>
                    <div class="bottom-text">
                        <div class="movie-name">
                            <span>2h 7m</span>
                            <a href="#">Transformers: Rise of the Beasts</a>
                        </div>
                        <div class="category-rating">
                            <div class="category">
                                <a href="#">Action</a>,&nbsp;<a href="#">Sci-fi</a>
                            </div>
                        </div>
        
                    </div>
                </div>
            </div>
            <!--Sample postbox8-->
            <div class="post-box action adventure fantasy">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/themarvels.jpeg" alt="movie8" />
                </div>
                <div class="main-slider-text">
                    <span class="status">Now Showing</span>
                    <div class="bottom-text">
                        <div class="movie-name">
                            <span>1h 45m</span>
                            <a href="#">The Marvels</a>
                        </div>
                        <div class="category-rating">
                            <div class="category">
                                <a href="#">Action</a>,&nbsp;<a href="#">Adventure</a>,&nbsp;<a href="#">Fantasy</a>
                            </div>
                        </div>
        
                    </div>
                </div>
            </div>
            <!--Sample postbox9-->
            <div class="post-box horror">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/theexorcist.jpg" alt="movie9" />
                </div>
                <div class="main-slider-text">
                    <span class="status">Now Showing</span>
                    <div class="bottom-text">
                        <div class="movie-name">
                            <span>2h 1m</span>
                            <a href="#">The Exorcist: Believer</a>
                        </div>
                        <div class="category-rating">
                            <div class="category">
                                <a href="#">Horror</a>
                            </div>
                        </div>
        
                    </div>
                </div>
            </div>
            <!--Sample postbox10-->
            <div class="post-box adventure comedy fantasy">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/barbie.jpg" alt="movie10" />
                </div>
                <div class="main-slider-text">
                    <span class="status">Now Showing</span>
                    <div class="bottom-text">
                        <div class="movie-name">
                            <span>1h 54m</span>
                            <a href="#">Barbie</a>
                        </div>
                        <div class="category-rating">
                            <div class="category">
                                <a href="#">Adventure</a>,&nbsp;<a href="#">Comedy</a>,&nbsp;<a href="#">Fantasy</a>
                            </div>
                        </div>
        
                    </div>
                </div>
            </div>
            <!--Sample postbox11-->
            <div class="post-box horror mystery thriller">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/thenun2.jpg" alt="movie11" />
                </div>
                <div class="main-slider-text">
                    <span class="status">Now Showing</span>
                    <div class="bottom-text">
                        <div class="movie-name">
                            <span>1h 50m</span>
                            <a href="#">The Nun II</a>
                        </div>
                        <div class="category-rating">
                            <div class="category">
                                <a href="#">Horror</a>,&nbsp;<a href="#">Mystery</a>,&nbsp;<a href="#">Thriller</a>
                            </div>
                        </div>
        
                    </div>
                </div>
            </div>
            <!--Sample postbox12-->
            <div class="post-box horror mystery thriller">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/insidious.jpg" alt="movie12" />
                </div>
                <div class="main-slider-text">
                    <span class="status">Now Showing</span>
                    <div class="bottom-text">
                        <div class="movie-name">
                            <span>1h 47m</span>
                            <a href="#">Insidious: The Red Door</a>
                        </div>
                        <div class="category-rating">
                            <div class="category">
                                <a href="#">Horror</a>,&nbsp;<a href="#">Mystery</a>,&nbsp;<a href="#">Thriller</a>
                            </div>
                        </div>
        
                    </div>
                </div>
            </div>
            <!--Sample postbox13-->
            <div class="post-box adventure family fantasy">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/thelittlemermaid.jpg" alt="movie13" />
                </div>
                <div class="main-slider-text">
                    <span class="status">Now Showing</span>
                    <div class="bottom-text">
                        <div class="movie-name">
                            <span>2h 15m</span>
                            <a href="#">The Little Mermaid</a>
                        </div>
                        <div class="category-rating">
                            <div class="category">
                                <a href="#">Adventure</a>,&nbsp;<a href="#">Family</a>,&nbsp;<a href="#">Fantasy</a>
                            </div>
                        </div>
        
                    </div>
                </div>
            </div>
            <!--Sample postbox14-->
            <div class="post-box comedy romance">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/youpeople.jpg" alt="movie14" />
                </div>
                <div class="main-slider-text">
                    <span class="status">Now Showing</span>
                    <div class="bottom-text">
                        <div class="movie-name">
                            <span>1h 58m</span>
                            <a href="#">You People</a>
                        </div>
                        <div class="category-rating">
                            <div class="category">
                                <a href="#">Comedy</a>,&nbsp;<a href="#">Romance</a>
                            </div>
                        </div>
        
                    </div>
                </div>
            </div>
            <!--Sample postbox15-->
            <div class="post-box action adventure drama">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/hungergames.jpg" alt="movie15" />
                </div>
                <div class="main-slider-text">
                    <span class="status">Now Showing</span>
                    <div class="bottom-text">
                        <div class="movie-name">
                            <span>2h 38m</span>
                            <a href="#">The Hunger Games: The Ballad of Songbirds & Snakes</a>
                        </div>
                        <div class="category-rating">
                            <div class="category">
                                <a href="#">Action</a>,&nbsp;<a href="#">Adventure</a>,&nbsp;<a href="#">Drama</a>
                            </div>
                        </div>
        
                    </div>
                </div>
            </div>
            <!--Sample postbox16-->
            <div class="post-box horror drama">
                <div class="post-img">
                    <asp:Image runat="server" ImageUrl="/front-end/images/hunger.jpg" alt="movie16" />
                </div>
                <div class="main-slider-text">
                    <span class="status">Now Showing</span>
                    <div class="bottom-text">
                        <div class="movie-name">
                            <span>2h 25m</span>
                            <a href="#">Hunger</a>
                        </div>
                        <div class="category-rating">
                            <div class="category">
                                <a href="#">Horror</a>,&nbsp;<a href="#">Drama</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
