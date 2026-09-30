using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CollegeEventManagement.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDashboard();
                LoadRecentEvents();
            }
        }


        private void LoadDashboard()
        {
            string connectionString =
                ConfigurationManager
                .ConnectionStrings["CollegeEventDB"]
                .ConnectionString;

            using (SqlConnection con =
                   new SqlConnection(connectionString))
            {
                con.Open();


                // TOTAL EVENTS

                string eventQuery =
                    "SELECT COUNT(*) FROM Events";

                using (SqlCommand cmd =
                       new SqlCommand(eventQuery, con))
                {
                    lblTotalEvents.Text =
                        cmd.ExecuteScalar().ToString();
                }


                // TOTAL STUDENTS

                string studentQuery =
                    "SELECT COUNT(*) FROM Students WHERE Role = 'Student'";

                using (SqlCommand cmd =
                       new SqlCommand(studentQuery, con))
                {
                    lblTotalStudents.Text =
                        cmd.ExecuteScalar().ToString();
                }


                // TOTAL REGISTRATIONS

                string registrationQuery =
                    "SELECT COUNT(*) FROM Registrations";

                using (SqlCommand cmd =
                       new SqlCommand(registrationQuery, con))
                {
                    lblTotalRegistrations.Text =
                        cmd.ExecuteScalar().ToString();
                }


                // UPCOMING EVENTS

                string upcomingQuery =
                    @"SELECT COUNT(*)
                      FROM Events
                      WHERE EventDate >= CAST(GETDATE() AS DATE)";

                using (SqlCommand cmd =
                       new SqlCommand(upcomingQuery, con))
                {
                    lblUpcomingEvents.Text =
                        cmd.ExecuteScalar().ToString();
                }
            }
        }


        private void LoadRecentEvents()
        {
            string connectionString =
                ConfigurationManager
                .ConnectionStrings["CollegeEventDB"]
                .ConnectionString;

            using (SqlConnection con =
                   new SqlConnection(connectionString))
            {
                string query =
                    @"SELECT TOP 5
                          EventName,
                          Category,
                          EventDate
                      FROM Events
                      ORDER BY EventID DESC";


                using (SqlDataAdapter da =
                       new SqlDataAdapter(query, con))
                {
                    DataTable dt = new DataTable();

                    da.Fill(dt);

                    rptRecentEvents.DataSource = dt;

                    rptRecentEvents.DataBind();
                }
            }
        }
    }
}