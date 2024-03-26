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
        protected void Page_Load(object sender, EventArgs e) {
            ReloadSeats();
            Label name = Master.FindControl("user_name2") as Label;

            //userLoggedIn.InnerText = name.Text;
        }

        private void ReloadSeats() {
            var connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""D:\Github Repos\Avalia\IT114L_MachineProblem\App_Data\AvaliaDB.mdf"";Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connString)) {
                conn.Open();

                string recordSeats = "SELECT seatNumber FROM Booking";
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

        protected void bookSeats_Click(object sender, EventArgs e) {
            //updatePanel.Update();
            //Response.Write($"<script>alert({selectedSeatsData.InnerText})</script>");
        }
        [WebMethod]
        public static string updateData(string a, string username) {
            try {
                var connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""D:\Github Repos\Avalia\IT114L_MachineProblem\App_Data\AvaliaDB.mdf"";Integrated Security=True";
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
                        string recordSeats = $"INSERT INTO Booking (userID, ScheduleID, seatNumber) VALUES ({userID}, 2, '{s}')";
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