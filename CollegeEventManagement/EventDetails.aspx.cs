using System;
using System.Configuration;
using System.Data.SqlClient;

namespace CollegeEventManagement
{
    public partial class EventDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Session["StudentID"] == null)
            {
                Response.Redirect("~/Login.aspx");
                return;
            }

            if (Request.QueryString["EventID"] == null)
            {
                Response.Write(
                    "<script>alert('Event not found.');</script>"
                );
                return;
            }

            int studentID =
                Convert.ToInt32(Session["StudentID"]);

            int eventID =
                Convert.ToInt32(Request.QueryString["EventID"]);

            string connectionString =
                ConfigurationManager
                .ConnectionStrings["CollegeEventDB"]
                .ConnectionString;

            using (SqlConnection con =
                   new SqlConnection(connectionString))
            {
                con.Open();

                string checkQuery = @"
                    SELECT COUNT(*)
                    FROM Registrations
                    WHERE StudentID = @StudentID
                    AND EventID = @EventID";

                using (SqlCommand checkCmd =
                       new SqlCommand(checkQuery, con))
                {
                    checkCmd.Parameters.AddWithValue(
                        "@StudentID", studentID);

                    checkCmd.Parameters.AddWithValue(
                        "@EventID", eventID);

                    int count =
                        Convert.ToInt32(
                            checkCmd.ExecuteScalar());

                    if (count > 0)
                    {
                        Response.Write(
                            "<script>alert('You are already registered for this event.');</script>"
                        );

                        return;
                    }
                }

                string insertQuery = @"
                    INSERT INTO Registrations
                    (StudentID, EventID, RegistrationDate)
                    VALUES
                    (@StudentID, @EventID, GETDATE())";

                using (SqlCommand cmd =
                       new SqlCommand(insertQuery, con))
                {
                    cmd.Parameters.AddWithValue(
                        "@StudentID", studentID);

                    cmd.Parameters.AddWithValue(
                        "@EventID", eventID);

                    cmd.ExecuteNonQuery();

                    Response.Write(
                        "<script>alert('Successfully registered for the event!');</script>"
                    );
                }
            }
        }
    }
}