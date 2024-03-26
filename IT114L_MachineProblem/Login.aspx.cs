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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnSignUp_Click(object sender, EventArgs e) {


            var connString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""{HostingEnvironment.MapPath("/")}App_Data\AvaliaDB.mdf"";Integrated Security=True";
            //var connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""D:\Github Repos\Avalia\IT114L_MachineProblem\App_Data\AvaliaDB.mdf"";Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connString)) {
                conn.Open();
                string username = txtUsername.Text;
                string password = txtPassword.Text;

                string checkUsernameQuery = $"SELECT COUNT(*) FROM ACCOUNTS WHERE username = '{txtUsername.Text}' and password = '{txtPassword.Text}'";
                using (SqlCommand checkUsernameCmd = new SqlCommand(checkUsernameQuery, conn)) {
                    int existingUserCount = (int)checkUsernameCmd.ExecuteScalar();

                    if (existingUserCount == 0) {
                        Response.Write("<script>alert('Wrong Username or Password!')</script>");
                        return;
                    } else {
                        Session["logged"] = txtUsername.Text;
                        Response.Redirect("Homepage-User.aspx");
                    }
                }

            };
            
        }
    }
}