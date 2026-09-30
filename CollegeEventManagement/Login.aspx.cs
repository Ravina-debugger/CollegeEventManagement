using System;
using System.Configuration;
using System.Data.SqlClient;

namespace CollegeEventManagement
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            string connectionString =
                ConfigurationManager
                .ConnectionStrings["CollegeEventDB"]
                .ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    string query = @"SELECT StudentID, Name, Role
                                     FROM Students
                                     WHERE Email = @Email
                                     AND Password = @Password";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", password);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                string role = reader["Role"].ToString();

                                // Store logged-in user
                                Session["StudentID"] = reader["StudentID"];
                                Session["Name"] = reader["Name"];
                                Session["Role"] = role;

                                if (role == "Admin")
                                {
                                    Response.Redirect("~/Dashboard.aspx");
                                }
                                else
                                {
                                    Response.Redirect("~/Home.aspx");
                                }
                            }
                            else
                            {
                                Response.Write(
                                    "<script>alert('Invalid email or password.');</script>"
                                );
                            }
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