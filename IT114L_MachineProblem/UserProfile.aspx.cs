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
    public partial class UserProfile : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e) {
            string currentlyLogged = (string)Session["logged"];
            var connString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""{HostingEnvironment.MapPath("/")}App_Data\AvaliaDB.mdf"";Integrated Security=True";

            int userID = 0;
            using (SqlConnection conn = new SqlConnection(connString)) {
                conn.Open();
                string selectUserID = "SELECT * FROM Accounts WHERE username = @Username";
                using (SqlCommand cmd = new SqlCommand(selectUserID, conn)) {
                    cmd.Parameters.AddWithValue("@Username", currentlyLogged);
                    using (SqlDataReader reader = cmd.ExecuteReader()) {
                        if (reader.Read()) {
                            userID = (int)reader["userID"];
                        }
                    }
                }
            }
            your_username.InnerText = (string)Session["logged"];


                //DB

            using (SqlConnection conn = new SqlConnection(connString)) {
                conn.Open();

                string selectMoviesQuery = @"SELECT distinct schedule.scheduleID, scheduleTime, duration, movie.movieID, title, description, genre, price, imagePath, userID, seatNumber 
                                            FROM Schedule JOIN MOVIE on schedule.movieID = movie.movieID 
                                            JOIN BOOKING on schedule.scheduleID = booking.scheduleID 
                                            where userID = @UserID";

                using (SqlCommand cmd = new SqlCommand(selectMoviesQuery, conn)) {
                    cmd.Parameters.AddWithValue("@UserID", userID);
                    using (SqlDataReader reader = cmd.ExecuteReader()) {


                        if (reader.HasRows) {

                            while (reader.Read()) {
                                List<string> seating = new List<string>();
                                List<double> pricing = new List<double>();
                                string title = reader["title"].ToString();
                                string imagePath = reader["imagePath"].ToString();
                                string schedule = reader["scheduleTime"].ToString();
                                int scheduleID = (int)reader["scheduleID"];
                                //
                                string selectBooking = $"SELECT * FROM Schedule JOIN MOVIE on schedule.movieID = movie.movieID JOIN BOOKING on schedule.scheduleID = booking.scheduleID where booking.userID = @UserID AND booking.scheduleID = @ScheduleID";
                                using (SqlConnection conn2 = new SqlConnection(connString)) {
                                    conn2.Open();
                                    using (SqlCommand subCmd = new SqlCommand(selectBooking, conn2)) {
                                        subCmd.Parameters.AddWithValue("@UserID", userID);
                                        subCmd.Parameters.AddWithValue("@ScheduleID", scheduleID);
                                        using (SqlDataReader subReader = subCmd.ExecuteReader()) {
                                            if (subReader.HasRows) {
                                                while (subReader.Read()) {
                                                    if (subReader["seatNumber"].ToString() != "") {
                                                        seating.Add(subReader["seatNumber"].ToString());
                                                        pricing.Add(double.Parse(subReader["price"].ToString()));
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                //
                                string movieHtml = $@"
                                    <tr>
                                        <td><img alt='{title}' src='{imagePath}'></td>
                                        <td>{title}</td>
                                        <td><p class=""seats waiting"">{string.Join(", ", seating)}</p></td>
                                        <td>{schedule}</td>
                                        <td>{seating.Count}</td>
                                        <td><strong>₱{pricing.Sum()}</strong></td>
                                    </tr>
                                ";
                                pending_movies.InnerHtml += movieHtml;
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