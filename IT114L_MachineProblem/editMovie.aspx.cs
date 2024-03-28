using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Hosting;
using System.IO;

namespace IT114L_MachineProblem {
    public partial class WebForm1 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void Button1_Click(object sender, EventArgs e) {
            Uri url = Request.Url;


            string imgPath = null;
            if (FileUpload1.HasFile) {
                string fileName = Path.GetFileName(FileUpload1.FileName);
                string filePath = Server.MapPath("~/Uploads/") + fileName;
                FileUpload1.SaveAs(filePath);
                imgPath = "/Uploads/" + fileName;
            }
            string title_t = title_tb.Text;
            string price = price_tb.Text;
            string synopsis = synopsis_tb.Text;
            //string duration = duration_tb.Text;
            string genres = genres_tb.Text;
            string urlTitle = Request.QueryString["title"];
            var connString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""{HostingEnvironment.MapPath("/")}App_Data\AvaliaDB.mdf"";Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connString)) {
                conn.Open();


                string updateQuery = $"UPDATE MOVIE SET title = '{title_t}', price = {double.Parse(price)}, imagePath = '{imgPath}', description = '{synopsis}', genre = '{genres}' WHERE title = '{urlTitle}'";

                using (SqlCommand cmd = new SqlCommand(updateQuery, conn)) {
                    int affectedRows = cmd.ExecuteNonQuery();
                }
            }
            Response.Redirect("Manage-Admin.aspx");
        }
    }
}

//duration = { double.Parse(duration)}