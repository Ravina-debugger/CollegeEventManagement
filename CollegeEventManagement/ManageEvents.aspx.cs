using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CollegeEventManagement.Admin
{
    public partial class ManageEvents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadEvents();
            }
        }


        private void LoadEvents()
        {
            string connectionString =
                ConfigurationManager
                .ConnectionStrings["CollegeEventDB"]
                .ConnectionString;

            using (SqlConnection con =
                   new SqlConnection(connectionString))
            {
                string query = @"
                    SELECT
                        EventID,
                        EventName,
                        Category,
                        EventDate,
                        Venue
                    FROM Events
                    ORDER BY EventDate ASC";


                using (SqlDataAdapter da =
                       new SqlDataAdapter(query, con))
                {
                    DataTable dt = new DataTable();

                    da.Fill(dt);

                    gvEvents.DataSource = dt;

                    gvEvents.DataBind();
                }
            }
        }


        protected void gvEvents_RowCommand(
            object sender,
            System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteEvent")
            {
                int eventID =
                    Convert.ToInt32(e.CommandArgument);

                DeleteEvent(eventID);

                LoadEvents();
            }
        }


        private void DeleteEvent(int eventID)
        {
            string connectionString =
                ConfigurationManager
                .ConnectionStrings["CollegeEventDB"]
                .ConnectionString;

            using (SqlConnection con =
                   new SqlConnection(connectionString))
            {
                con.Open();

                string query = @"
                    DELETE FROM Events
                    WHERE EventID = @EventID";


                using (SqlCommand cmd =
                       new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue(
                        "@EventID",
                        eventID);

                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}