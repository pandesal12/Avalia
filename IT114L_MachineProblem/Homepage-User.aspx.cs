using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114L_MachineProblem
{
    public partial class Homepage_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""D:\Github Repos\Avalia\IT114L_MachineProblem\App_Data\AvaliaDB.mdf"";Integrated Security=True";
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

                                string movieHtml = $@"
                                    <div class='{classAttribute}' onclick=""redirectToSchedule('{title}')"">
                                        <div class='post-img'>
                                            <img alt='{title}' src='{imagePath}'>
                                        </div>
                                        <div class='main-slider-text'>
                                            <span class='status'>Now Showing</span>
                                            <div class='bottom-text'>
                                                <div class='movie-name'>
                                                    <span>1h 50m</span>
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
    }
}