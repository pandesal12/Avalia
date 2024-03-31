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
    public partial class Manage_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var connString = $@"Data Source=avalia-server-db.database.windows.net;Initial Catalog=AvaliaDatabase;Persist Security Info=True;User ID=avaliaAdmin;Password=Avalia17";
            using (SqlConnection conn = new SqlConnection(connString)) {
                conn.Open();

                string selectMoviesQuery = "SELECT title, imagePath, price FROM Movie";

                using (SqlCommand cmd = new SqlCommand(selectMoviesQuery, conn)) {
                    using (SqlDataReader reader = cmd.ExecuteReader()) {

                        while (reader.Read()) {
                            string title = reader["title"].ToString();
                            string imagePath = reader["imagePath"].ToString();
                            decimal priceValue = (decimal)reader["price"];
                            string price = priceValue.ToString("N2");


                            string movieHtml = $@"
                        <ul class='TopGun'>
                            <li>
                                <img src='{imagePath}' alt='{title} Poster' class='posterImage'>
                            </li>
                            <li><a>{title}</a></li>
                            <li><a>₱{price}</a></li>
                            <li><a onclick=""openPopup('{title}')"">Edit</a></li>
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