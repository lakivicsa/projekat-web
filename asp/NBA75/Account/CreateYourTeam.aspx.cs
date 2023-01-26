using Antlr.Runtime.Misc;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace NBA75
{
    public partial class CreateYourTeam : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=DESKTOP-CDPPIKN\\SQLEXPRESS;Initial Catalog=NBA75;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        int teamID;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Pokazivanje unosa za tim

            if(TextBox1.Text == "")
            {
                ErrorLabel.Text = "Team name can not be blank!";
                return;
            }

            Panel2.Visible = true;
            Panel1.Visible = false;

            TeamTextBox.Text = TextBox1.Text;

            try
            {
                string teamName = TextBox1.Text;
                using (connection)
                {
                    connection.Open();
                    InsertTeam(teamName);
                    teamID = GetTeamID(teamName);
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("SERVER ERROR:");
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
        }

        protected void InsertTeam(string teamName)
        {
                SqlParameter p1 = new SqlParameter();

                p1.ParameterName = "teamName";
                p1.Value = teamName;

                string query = "INSERT INTO CreateYourTeam(teamName) VALUES (@teamName)";

                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.Add(p1);

                command.ExecuteNonQuery();

                System.Diagnostics.Debug.WriteLine("New team created.");
                System.Diagnostics.Debug.WriteLine($"Team name: {teamName}");
                System.Diagnostics.Debug.WriteLine($"Team ID: {GetTeamID(teamName)}");
        }

        protected int GetTeamID(string teamName)
        {
            int teamID = 0;
            string query = $"SELECT teamID FROM CreateYourTeam WHERE teamName = '{teamName}'";

            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    teamID = int.Parse(reader[0].ToString());
                }
            }
            else
            {
                ErrorLabel.Text = "SERVER ERROR.";
                System.Diagnostics.Debug.WriteLine("SERVER ERROR - reader has no rows.");
            }

            reader.Close();

            return teamID;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Panel4.Visible = true;
                try
                {
                    string firstName = TextBox2.Text;
                    string lastName = TextBox3.Text;
                    string teamName = TeamTextBox.Text;

                    connection.Open();

                    InsertNewPlayer(firstName, lastName, teamName);
                    ClearFields();

                    connection.Close();
                }
                catch (Exception ex)
                {
                    PlayersErrorLabel.Text = "SERVER ERROR.";
                    System.Diagnostics.Debug.WriteLine(ex.Message);
                    System.Diagnostics.Debug.WriteLine(ex.StackTrace);
                }
                finally
                {
                    RefreshGrid();
                    if (GridView1.Rows.Count > 0)
                    {
                        Button3.Visible = true;
                    }
                }
            }
            else
            {
                ValidationSummary1.Visible = true;
            }
        }

        protected void InsertNewPlayer(string firstName, string lastName, string teamName)
        {
            SqlParameter p1 = new SqlParameter();
            SqlParameter p2 = new SqlParameter();
            SqlParameter p3 = new SqlParameter();

            p1.ParameterName = "firstName";
            p2.ParameterName = "lastName";
            p3.ParameterName = "teamID";

            p1.Value = firstName;
            p2.Value = lastName;
            p3.Value = GetTeamID(teamName);

            string query = "INSERT INTO Players (firstName, lastName, teamID) VALUES (@firstName, @lastName, @teamID)";

            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.Add(p1);
            command.Parameters.Add(p2);
            command.Parameters.Add(p3);

            command.ExecuteNonQuery();

            System.Diagnostics.Debug.WriteLine("New player added.");
            System.Diagnostics.Debug.WriteLine($"First name: {firstName}");
            System.Diagnostics.Debug.WriteLine($"Last name: {lastName}");
            System.Diagnostics.Debug.WriteLine($"Team ID: {GetTeamID(teamName)}");
        }

        protected void RefreshGrid()
        {
            connection.Open();

            string query = $"SELECT * FROM Players WHERE teamID = {GetTeamID(TeamTextBox.Text)}";

            SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
            DataTable table = new DataTable();

            adapter.Fill(table);

            GridView1.DataSource = table;
            GridView1.DataBind();

            connection.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // Disable dugmice za unos igraca i pokazati za unos trenera

            if(GridView1.Rows.Count < 1)
            {
                InsertErrorLabel.Text = "Team needs to have at least 12 players.";
                return;
            }

            Panel2.Visible = false;
            ValidationSummary1.Visible = false;

            Button3.Enabled = false;
            InsertErrorLabel.Visible = false;
            Panel3.Visible = true;
        }

        protected void ClearFields()
        {
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            // Ako je prazan dropdown ne da ti da se unese coach, kada se coach unese samo ga staviti u labelu neku ili tako nesto
            // Sakriti posle taj dropdown dugme i ostalo ostaviti samo grid i labelu ili sta vec sa trenerom
            // Mozda dugme za reset?

            string coachName = DropDownList1.SelectedItem.Value;

            if(coachName == "")
            {
                CoachErrorLabel.Text = "You must select coach!";
                return;
            }

            string firstName = coachName.Split(' ')[0];
            string lastName = coachName.Split(' ')[1];

            try
            {
                connection.Open();

                InsertCoach(firstName, lastName);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("SERVER ERROR.");
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
            finally
            {
                connection.Close();
                Panel3.Visible = false;
            }

            CoachLabel.Text += coachName;
        }

        protected void InsertCoach(string firstName, string lastName)
        {
            SqlParameter p1 = new SqlParameter();
            SqlParameter p2 = new SqlParameter();
            SqlParameter p3 = new SqlParameter();

            p1.ParameterName = "firstName";
            p1.Value = firstName;

            p2.ParameterName = "lastName";
            p2.Value = lastName;

            p3.ParameterName = "teamID";
            p3.Value = GetTeamID(TeamTextBox.Text);

            string query = "INSERT INTO Coach (firstName, lastName, teamID) VALUES (@firstName, @lastName, @teamID)";

            SqlCommand command = new SqlCommand(query, connection);

            command.ExecuteNonQuery();

            System.Diagnostics.Debug.WriteLine("New coach added.");
            System.Diagnostics.Debug.WriteLine($"First name: {firstName}");
            System.Diagnostics.Debug.WriteLine($"Last name: {lastName}");
            System.Diagnostics.Debug.WriteLine($"Team ID: {GetTeamID(TeamTextBox.Text)}");
        }
    }
}