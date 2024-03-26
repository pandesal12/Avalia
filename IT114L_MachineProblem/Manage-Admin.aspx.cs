using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114L_MachineProblem
{
    public partial class Manage_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""D:\Github Repos\Avalia\IT114L_MachineProblem\App_Data\AvaliaDB.mdf"";Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connString)) {
                conn.Open();

                string selectMoviesQuery = "SELECT title, imagePath, price FROM Movie";

                using (SqlCommand cmd = new SqlCommand(selectMoviesQuery, conn)) {
                    using (SqlDataReader reader = cmd.ExecuteReader()) {

                        while (reader.Read()) {
                            string title = reader["title"].ToString();
                            string imagePath = reader["imagePath"].ToString();
                            string price = reader["price"].ToString();

                            string movieHtml = $@"
                        <ul class='TopGun'>
                            <li>
                                <img src='{imagePath}' alt='{title} Poster' class='posterImage'>
                            </li>
                            <li><a>{title}</a></li>
                            <li><a>{price}</a></li>
                            <li><a href='#'>Edit</a></li>
                            <li><a href='#'>Remove</a></li>
                        </ul>
                    ";

                            movieList.InnerHtml += movieHtml;
                        }
                    }
                }
            }
        }
    }
}