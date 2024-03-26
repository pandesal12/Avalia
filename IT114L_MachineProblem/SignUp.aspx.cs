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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e) {
            Response.Redirect("Homepage-User.aspx");
        }

        protected void btnSignUp_Click(object sender, EventArgs e) {

            string password = txtPassword.Text;
            string con_password = txtConfirmPassword.Text;

            if (password != con_password) {
                Response.Write("<script>alert('Password does not match')</script>");
                return;
            }

            var connString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""{HostingEnvironment.MapPath("/")}App_Data\AvaliaDB.mdf"";Integrated Security=True";
            //var connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""D:\Github Repos\Avalia\IT114L_MachineProblem\App_Data\AvaliaDB.mdf"";Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connString)) {
                conn.Open();

                string checkUsernameQuery = $"SELECT COUNT(*) FROM ACCOUNTS WHERE username = '{txtUsername.Text}'";
                using (SqlCommand checkUsernameCmd = new SqlCommand(checkUsernameQuery, conn)) {
                    int existingUserCount = (int)checkUsernameCmd.ExecuteScalar();

                    if (existingUserCount > 0) {

                        Response.Write("<script>alert('Account Exists Already!')</script>");
                        return; 
                    }
                }

                string insertQuery = $"INSERT INTO ACCOUNTS (username, password, isAdmin) VALUES ('{txtUsername.Text}','{password}', 0)";
                using (SqlCommand cmd = new SqlCommand(insertQuery, conn)) {
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0) {
                        Session["logged"] = txtUsername.Text;
                        Response.Redirect("Homepage-User.aspx");
                    } else {
                        Response.Write("<script>alert('Failed!')</script>");
                    }
                }
            };
        }
    }
}