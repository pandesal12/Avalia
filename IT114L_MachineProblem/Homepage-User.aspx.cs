﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114L_MachineProblem
{
    public partial class Homepage_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            var connString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""{HostingEnvironment.MapPath("/")}App_Data\AvaliaDB.mdf"";Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connString)) {
                conn.Open();

                string selectMoviesQuery = "SELECT title, imagePath, genre FROM Movie";

                using (SqlCommand cmd = new SqlCommand(selectMoviesQuery, conn)) {
                    using (SqlDataReader reader = cmd.ExecuteReader()) {

                        if (reader.HasRows) {

                            while (reader.Read()) {
                                string title = reader["title"].ToString();
                                string imagePath = reader["imagePath"].ToString();
                                string genre = reader["genre"].ToString();

                                string[] genres = genre.Split(',');

                                string classAttribute = "post-box";
                                foreach (string g in genres) {
                                    classAttribute += " " + g.Trim();
                                }

                                //reader.Close();

                                string duration = "";
                                string durationQuery = $"SELECT duration FROM Schedule JOIN MOVIE on schedule.movieID = movie.movieID where title = '{title}'";
                                using (SqlConnection conn2 = new SqlConnection(connString)) {
                                    conn2.Open();
                                    using (SqlCommand durationCmd = new SqlCommand(durationQuery, conn2)) {
                                        using (SqlDataReader durationReader = durationCmd.ExecuteReader()) {
                                            if (durationReader.Read()) {
                                                duration = durationReader["duration"].ToString();
                                            }
                                        }
                                    }
                                }



                                string movieHtml = $@"
                                    <div class='{classAttribute}' onclick=""redirectToSchedule('{title}')"">
                                        <div class='post-img'>
                                            <img alt='{title}' src='{imagePath}'>
                                        </div>
                                        <div class='main-slider-text'>
                                            <span class='status'>Now Showing</span>
                                            <div class='bottom-text'>
                                                <div class='movie-name'>
                                                    <span>{timeConverter(float.Parse(duration))}</span>
                                                    <a href='#'>{title}</a>
                                                </div>
                                                <div class='category-rating'>
                                                    <div class='category'>
                                                        <a href='#'>{genre}</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                ";
                                postContainer.InnerHtml += movieHtml;

                                
                            }
                        } 
                    }
                }
            }
        }

        public string timeConverter(float decimalValue) {
            int hours = (int)decimalValue;
            int minutes = (int)((decimalValue - hours) * 60);
            return $"{hours}h {minutes}m";
        }
    }
}