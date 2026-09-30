using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CollegeEventManagement
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadHomeData();
            }
        }

        private void LoadHomeData()
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

                string totalQuery =
                    "SELECT COUNT(*) FROM Events";

                using (SqlCommand cmd =
                       new SqlCommand(totalQuery, con))
                {
                    int totalEvents =
                        Convert.ToInt32(cmd.ExecuteScalar());

                    lblTotalEvents.Text =
                        totalEvents.ToString();
                }


                // UPCOMING EVENTS COUNT

                string upcomingQuery = @"
                    SELECT COUNT(*)
                    FROM Events
                    WHERE EventDate >= CAST(GETDATE() AS DATE)";

                using (SqlCommand cmd =
                       new SqlCommand(upcomingQuery, con))
                {
                    int upcomingEvents =
                        Convert.ToInt32(cmd.ExecuteScalar());

                    lblUpcomingCount.Text =
                        upcomingEvents.ToString();
                }


                // UPCOMING EVENT LIST

                string eventsQuery = @"
                    SELECT TOP 6
                        EventID,
                        EventName,
                        Description,
                        EventDate,
                        EventTime,
                        Venue,
                        Category,
                        Organizer
                    FROM Events
                    ORDER BY EventID DESC";

                using (SqlDataAdapter da =
                       new SqlDataAdapter(eventsQuery, con))
                {
                    DataTable dt =
                        new DataTable();

                    da.Fill(dt);

                    rptEvents.DataSource = dt;

                    rptEvents.DataBind();
                }
            }
        }
    }
}