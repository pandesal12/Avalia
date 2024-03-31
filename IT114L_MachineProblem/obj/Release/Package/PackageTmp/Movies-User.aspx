<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Movies-User.aspx.cs" Inherits="IT114L_MachineProblem.Movies_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/movie-user.css") %>" />
    <link rel="stylesheet" href="<%= ResolveUrl("~/front-end/styles/breakpoints.css") %>" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <div class="movies-section">
        <asp:Image runat="server" ImageUrl="/front-end/images/themarvels.jpeg" alt="itemlist1" />
                
        <div class="moviereviews-container">
            <div class="nav-movies">
                <h3>Reviews</h3>
                <button class="btnSeats">
                    <a href="Schedule-User.aspx">Book Seats</a>
                </button>
            </div>
        </div>

        <div class="review-container">
            <div class="reviews-total">
                <div class="rating-average">
                    <h2>Reviews</h2>
                    <h1>4.5</h1>
                    <div class="star-outer">
                        <div class="star-inner">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                    </div>
                    <p>290, 291</p>
                </div>
                <div class="rating-progress">
                    <!--5Star-Rating-->
                    <div class="rating-progress-value">
                        <p>5 <span class="star">&#9733;</span></p>
                        <div class="progress">
                            <div class="bar"></div>
                        </div>
                        <p>89, 783</p>
                    </div>
                    <!--4Star-Rating-->
                    <div class="rating-progress-value">
                        <p>4 <span class="star">&#9733;</span></p>
                        <div class="progress">
                            <div class="bar"></div>
                        </div>
                        <p>49, 783</p>
                    </div>
                    <!--3Star-Rating-->
                    <div class="rating-progress-value">
                        <p>3 <span class="star">&#9733;</span></p>
                        <div class="progress">
                            <div class="bar"></div>
                        </div>
                        <p>25, 050</p>
                    </div>
                    <!--2Star-Rating-->
                    <div class="rating-progress-value">
                        <p>2 <span class="star">&#9733;</span></p>
                        <div class="progress">
                            <div class="bar"></div>
                        </div>
                        <p>10, 070</p>
                    </div>
                    <!--1Star-Rating-->
                    <div class="rating-progress-value">
                        <p>1 <span class="star">&#9733;</span></p>
                        <div class="progress">
                            <div class="bar"></div>
                        </div>
                        <p>5020</p>
                    </div>
                </div>
            </div>
            <div class="review-label">Your review</div>
            <div class="user-comment">
                <div class="endpost-container">
                    <div class="text">Thanks for rating us!</div>
                    <div class="edit">EDIT</div>
                </div>
                <div class="star-widget">
                    <input type="radio" name="rate" id="rate-5" />
                    <label for="rate-5" class="fa fa-star"></label>
                    <input type="radio" name="rate" id="rate-4" />
                    <label for="rate-4" class="fa fa-star"></label>
                    <input type="radio" name="rate" id="rate-3" />
                    <label for="rate-3" class="fa fa-star"></label>
                    <input type="radio" name="rate" id="rate-2" />
                    <label for="rate-2" class="fa fa-star"></label>
                    <input type="radio" name="rate" id="rate-1" />
                    <label for="rate-1" class="fa fa-star"></label>

                    <div class="form-review">
                        <div class="textarea">
                            <textarea cols="30" placeholder="Write a review..."></textarea>
                        </div>
                        <div class="review-postbtn">
                            <button type="submit">Post</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="post-comments">   
                <h4>Comments</h4>
                <div class="comment-box-container">
                    <!--Comment1-->
                    <div class="comment-box">
                        <div class="box-top">
                            <div class="profile">
                                <div class="profile-img">
                                    <asp:Image runat="server" ImageUrl="/front-end/images/robert_fox.png" alt="user-profile" />
                                </div>
                                <div class="name-user">
                                    <strong>User 1</strong>
                                    <span>@user_1</span>
                                </div>
                            </div>
                            <div class="reviews">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                        </div>
                        <div class="otherusers-comment">
                            <p>Lorem ipsum 
                            </p>
                        </div>
                    </div>
                
                </div>
            </div>
        </div>
    </div>
</asp:Content>
