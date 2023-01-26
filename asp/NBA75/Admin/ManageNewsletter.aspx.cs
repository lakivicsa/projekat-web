using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace NBA75.Admin
{
    public partial class ManageNewsletter : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=DESKTOP-CDPPIKN\\SQLEXPRESS;Initial Catalog=NBA75;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            RefreshGrid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Delete

            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
            {
                Label5.Text = "Fill the fields!";
                return;
            }

            try
            {
                connection.Open();

                string fullName = TextBox2.Text;
                string email = TextBox3.Text;
                string comment = TextBox4.Text;

                UpdateNewsletter(fullName, email, comment);
            }
            catch (Exception ex)
            {
                Label5.Text = "SERVER ERROR.";
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
            finally
            {
                connection.Close();
                ClearFieldsAndHide();
                RefreshGrid();

                Response.Redirect("/Admin/ManageNewsletter.aspx", false);
            }
        }

        protected void UpdateNewsletter(string fullName, string email, string comment)
        {
            string query = $"UPDATE Newsletter SET fullName = @fullName, email = @email, comment = @comment WHERE newsletterID = {GridView1.SelectedRow.Cells[1].Text}";

            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("fullName", fullName);
            command.Parameters.AddWithValue("email", email);
            command.Parameters.AddWithValue("comment", comment);

            command.ExecuteNonQuery();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            if(row == null)
            {
                Label5.Text = "Select a row!";
                return;
            }

            Panel1.Visible = true;

            TextBox1.Text = row.Cells[1].Text;
            TextBox2.Text = row.Cells[2].Text;
            TextBox3.Text = row.Cells[3].Text;
            TextBox4.Text = row.Cells[4].Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Delete

            try
            {
                connection.Open();

                int newsletterID = int.Parse(GridView1.SelectedRow.Cells[1].Text);

                DeleteNewsletter(newsletterID);
            }
            catch (Exception ex)
            {
                Label5.Text = "SERVER ERROR.";
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
            finally
            {
                connection.Close();
                RefreshGrid();
                ClearFieldsAndHide();
            }
        }

        protected void DeleteNewsletter(int newsletterID)
        {
            string query = "DELETE FROM Newsletter WHERE newsletterID = @newsletterID";

            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("newsletterID", newsletterID);

            command.ExecuteNonQuery();
        }

        protected void ClearFieldsAndHide()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

            Panel1.Visible = false;
        }

        protected void RefreshGrid()
        {
            try
            {
                connection.Open();
                string query = "SELECT * FROM Newsletter";
                SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                DataTable table = new DataTable();
                adapter.Fill(table);

                GridView1.DataSource = table;
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
            finally
            {
                connection.Close();
            }
        }
    }
}