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
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                string[] genres = { "Action", "Adventure", "Comedy", "Drama", "Family", "Fantasy", "History", "Horror", "Mystery", "Romance", "Sci-fi", "Sport", "Thriller" };
                foreach (string genre in genres)
                {
                    ListItem item = new ListItem(genre, genre);
                    cblGenres.Items.Add(item);
                }

                cblGenres.RepeatColumns = 5;

                foreach (ListItem listItem in cblGenres.Items)
                {
                    listItem.Attributes["style"] = "display: flex; align-items: center; margin-right: 30px; width: 50%;";
                }


            }
        }

        protected void Button1_Click(object sender, EventArgs e) {
            Uri url = Request.Url;
            List<string> selectedGenres = new List<string>();

            foreach (ListItem item in cblGenres.Items)
            {
                if (item.Selected)
                {
                    selectedGenres.Add(item.Value);
                }
            }

            string selectedGenresString = string.Join(", ", selectedGenres);


            string imgPath = null;
            if (FileUpload1.HasFile)
            {
                string fileName = Path.GetFileName(FileUpload1.FileName);
                string filePath = Server.MapPath("~/Uploads/") + fileName;
                FileUpload1.SaveAs(filePath);
                imgPath = "/Uploads/" + fileName;
            }
            string title_t = title_tb.Text;
            string price = price_tb.Text;
            string synopsis = synopsis_tb.Text;
            //string duration = duration_tb.Text;
            string genres = selectedGenresString;
            string urlTitle = Request.QueryString["title"];
            var connString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""{HostingEnvironment.MapPath("/")}App_Data\AvaliaDB.mdf"";Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();


                string updateQuery = "UPDATE MOVIE SET title = @NewTitle, price = @Price, imagePath = @ImagePath, description = @Synopsis, genre = @Genres WHERE title = @OldTitle";

                using (SqlCommand cmd = new SqlCommand(updateQuery, conn))
                {
                    cmd.Parameters.AddWithValue("@NewTitle", title_t);
                    cmd.Parameters.AddWithValue("@Price", double.Parse(price));
                    cmd.Parameters.AddWithValue("@ImagePath", imgPath);
                    cmd.Parameters.AddWithValue("@Synopsis", synopsis);
                    cmd.Parameters.AddWithValue("@Genres", genres);
                    cmd.Parameters.AddWithValue("@OldTitle", urlTitle);

                    int affectedRows = cmd.ExecuteNonQuery();
                }
            }
            Response.Redirect("Manage-Admin.aspx");
        }
    }
}

//duration = { double.Parse(duration)}