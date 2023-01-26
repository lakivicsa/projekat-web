using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace NBA75
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=DESKTOP-CDPPIKN\\SQLEXPRESS;Initial Catalog=NBA75;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Unos u newsletter
            try
            {
                string fullName = TextBox1.Text + " " + TextBox2.Text;
                string email = TextBox3.Text;
                string comment = TextBox4.Text;

                InsertNewsletter(connection, fullName, email, comment);
                ClearFields();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("SERVER ERROR:");
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
        }

        protected void InsertNewsletter(SqlConnection connection, string fullName, string email, string comment)
        {
            using(connection)
            {
                connection.Open();

                SqlParameter p1 = new SqlParameter();
                SqlParameter p2 = new SqlParameter();
                SqlParameter p3 = new SqlParameter();

                p1.ParameterName = "fullName";
                p2.ParameterName = "email";
                p3.ParameterName = "comment";

                p1.Value = fullName;
                p2.Value = email;
                p3.Value = comment;

                string query = "INSERT INTO Newsletter(fullName, email, comment) VALUES (@fullName, @email, @comment)";
                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.Add(p1);
                command.Parameters.Add(p2);
                command.Parameters.Add(p3);

                command.ExecuteNonQuery();
 

                System.Diagnostics.Debug.WriteLine("New newsletter signed.");
                System.Diagnostics.Debug.WriteLine($"Full name: {fullName}");
                System.Diagnostics.Debug.WriteLine($"Email: {email}");
                System.Diagnostics.Debug.WriteLine($"Comment: {comment}");
            }
        }

        protected void ClearFields()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }

        public string GetConnectionString()
        {
            return @"Data Source=DESKTOP-CDPPIKN\\SQLEXPRESS;Initial Catalog=NBA75;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        }
    }
}