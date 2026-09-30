using System;
using System.Configuration;
using System.Data.SqlClient;

namespace CollegeEventManagement.Admin
{
    public partial class AddEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAddEvent_Click(object sender, EventArgs e)
        {
            string connectionString =
                ConfigurationManager
                .ConnectionStrings["CollegeEventDB"]
                .ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    string query = @"INSERT INTO Events
                                    (EventName, Description, EventDate,
                                     EventTime, Venue, Category, Organizer)
                                    VALUES
                                    (@EventName, @Description, @EventDate,
                                     @EventTime, @Venue, @Category, @Organizer)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue(
                            "@EventName",
                            txtEventName.Text.Trim());

                        cmd.Parameters.AddWithValue(
                            "@Description",
                            txtDescription.Text.Trim());

                        cmd.Parameters.AddWithValue(
                            "@EventDate",
                            DateTime.Parse(txtDate.Text));

                        cmd.Parameters.AddWithValue(
                            "@EventTime",
                            TimeSpan.Parse(txtTime.Text));

                        cmd.Parameters.AddWithValue(
                            "@Venue",
                            txtVenue.Text.Trim());

                        cmd.Parameters.AddWithValue(
                            "@Category",
                            ddlCategory.SelectedValue);

                        cmd.Parameters.AddWithValue(
                            "@Organizer",
                            txtOrganizer.Text.Trim());

                        int rows = cmd.ExecuteNonQuery();

                        if (rows > 0)
                        {
                            Response.Redirect("ManageEvents.aspx");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(
                    "<script>alert('Database Error: " +
                    ex.Message.Replace("'", "") +
                    "');</script>"
                );
            }
        }
    }
}