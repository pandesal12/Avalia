using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Hosting;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace IT114L_MachineProblem
{
    public partial class Schedule_User : System.Web.UI.Page
    {
        public string urlTitle;
        public int movieID;
        protected void Page_Load(object sender, EventArgs e) {
            //DropDownList1.Items.Add(new ListItem("3:00PM - 6:05PM", "time1"));
            Uri url = Request.Url;
            urlTitle = Request.QueryString["title"];
            movieID = 0;
            var connString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""{HostingEnvironment.MapPath("/")}App_Data\AvaliaDB.mdf"";Integrated Security=True";


            using (SqlConnection conn = new SqlConnection(connString)) {
                conn.Open();

                string getMovieIDQuery = "SELECT movie.movieID FROM movie JOIN schedule ON schedule.movieID = movie.movieID WHERE title = @Title";
                using (SqlCommand cmd = new SqlCommand(getMovieIDQuery, conn)) {
                    cmd.Parameters.AddWithValue("@Title", urlTitle);
                    using (SqlDataReader reader = cmd.ExecuteReader()) {
                        while (reader.Read()) {
                            movieID = (int)reader["movieID"];
                            decimal priceValue = (decimal)reader["price"];
                            string price = "₱" + priceValue.ToString("N2");
                            ticketprice_label.InnerText = price;
                            movie_name.InnerText = (string)reader["title"];
                            duration_label.InnerText = timeConverter(float.Parse(reader["duration"].ToString()));
                            string scheduleTime = reader["scheduleTime"].ToString();
                            string scheduleID = reader["scheduleID"].ToString();
                            imageMovie.ImageUrl = reader["imagePath"].ToString();
                            //Response.Write($"aaaaaaaaa:{reader["image"].ToString()}");
                            DropDownList1.Items.Add(new ListItem($"{scheduleTime}", $"{scheduleID}"));

                            
                        }
                    }
                }
            }






            ReloadSeats();
            Label name = Master.FindControl("user_name2") as Label;

            //userLoggedIn.InnerText = name.Text;
        }
        public string timeConverter(float decimalValue) {
            int hours = (int)decimalValue;
            int minutes = (int)((decimalValue - hours) * 60);
            return $"{hours}h {minutes}m";
        }
        private void ReloadSeats() {
            var connString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""{HostingEnvironment.MapPath("/")}App_Data\AvaliaDB.mdf"";Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connString)) {
                conn.Open();
                //Response.Write($"AAAAAAAAAAAAAAAAAAA: {DropDownList1.Value}");
                
                string recordSeats = $"SELECT seatNumber FROM Booking where scheduleID = { int.Parse(DropDownList1.Value) }";
                using (SqlCommand cmd = new SqlCommand(recordSeats, conn)) {
                    using (SqlDataReader reader = cmd.ExecuteReader()) {
                        StringBuilder seatNumbers = new StringBuilder();
                        while (reader.Read()) {
                            seatNumbers.Append(reader["seatNumber"].ToString() + ",");
                        }
                        string seatNumbersString = seatNumbers.ToString().TrimEnd(',');
                        occupiedSeatsData.InnerHtml = seatNumbersString;
                    }
                }
            }
        }

        [WebMethod]
        public static string updateData(string a, string username, string schedID) {
            try {
                var connString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""{HostingEnvironment.MapPath("/")}App_Data\AvaliaDB.mdf"";Integrated Security=True";
                //var connString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""{HostingEnvironment.MapPath("/")}App_Data\AvaliaDB.mdf"";Integrated Security=True;";
                using (SqlConnection conn = new SqlConnection(connString)) {
                    conn.Open();

                    string[] seats = a.Split(',');



                    int userID = 0;

                    string query = $"SELECT userID FROM Accounts WHERE username = '{username}'";
                    using (SqlCommand cmd = new SqlCommand(query, conn)) {
                        object result = cmd.ExecuteScalar();
                        userID = Convert.ToInt32(result);
                    }

                    foreach (string s in seats) {
                        string recordSeats = $"INSERT INTO Booking (userID, ScheduleID, seatNumber) VALUES ({userID}, {int.Parse(schedID)}, '{s}')";
                        using (SqlCommand checkUsernameCmd = new SqlCommand(recordSeats, conn)) {
                            int affectedRows = checkUsernameCmd.ExecuteNonQuery();

                            if (affectedRows == 0) {
                                return "unsuccessful";
                            }
                        }
                    }
                }
                return "successful";
            } catch (Exception ex) {
                return "error: " + ex.Message + username;
            }
        }
    }
}