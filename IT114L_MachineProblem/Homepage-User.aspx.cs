using System;
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

            var connString = $@"Data Source=avalia-server-db.database.windows.net;Initial Catalog=AvaliaDatabase;Persist Security Info=True;User ID=avaliaAdmin;Password=Avalia17";
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
                                    classAttribute += " " + g.Trim().ToLower();
                                }

                                //reader.Close();

                                string duration = "";
                                string durationQuery = "SELECT duration FROM Schedule JOIN MOVIE ON schedule.movieID = movie.movieID WHERE title = @Title";
                                using (SqlConnection conn2 = new SqlConnection(connString)) {
                                    conn2.Open();
                                    
                                    using (SqlCommand durationCmd = new SqlCommand(durationQuery, conn2)) {
                                        durationCmd.Parameters.AddWithValue("@Title", title);
                                        using (SqlDataReader durationReader = durationCmd.ExecuteReader()) {
                                            
                                            if (durationReader.Read()) {
                                                duration = durationReader["duration"].ToString();
                                            }
                                        }
                                    }
                                }



                                //string movieHtml = $@"
                                //    <div class='{classAttribute}' onclick=""redirectToSchedule('{title}')"">
                                //        <div class='post-img'>
                                //            <img alt='{title}' src='{imagePath}'>
                                //        </div>
                                //        <div class='main-slider-text'>
                                //            <span class='status'>Now Showing</span>
                                //            <div class='bottom-text'>
                                //                <div class='movie-name'>
                                //                    <span>{timeConverter(float.Parse(duration))}</span>
                                //                    <a href='#'>{title}</a>
                                //                </div>
                                //                <div class='category-rating'>
                                //                    <div class='category'>
                                //                        <a href='#'>{genre}</a>
                                //                    </div>
                                //                </div>
                                //            </div>
                                //        </div>
                                //    </div>
                                //";
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