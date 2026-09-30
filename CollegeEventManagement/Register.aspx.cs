using System;
using System.Configuration;
using System.Data.SqlClient;

namespace CollegeEventManagement
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager
    .ConnectionStrings["CollegeEventDB"]
    .ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();

                    string query = @"INSERT INTO Students
                                    (Name, Email, Password, Phone, Role)
                                    VALUES
                                    (@Name, @Email, @Password, @Phone, @Role)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                        cmd.Parameters.AddWithValue("@Phone", txtPhone.Text.Trim());
                        cmd.Parameters.AddWithValue("@Role", ddlRole.SelectedValue);

                        int rows = cmd.ExecuteNonQuery();

                        if (rows > 0)
                        {
                            Response.Redirect(
                                "Register.aspx?status=success",
                                false
                            );

                            Context.ApplicationInstance.CompleteRequest();
                        }
                        else
                        {
                            Response.Redirect(
                                "Register.aspx?status=noinsert",
                                false
                            );

                            Context.ApplicationInstance.CompleteRequest();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                string error = Server.UrlEncode(ex.Message);

                Response.Redirect(
                    "Register.aspx?status=error&message=" + error,
                    false
                );

                Context.ApplicationInstance.CompleteRequest();
            }
        }
    }
}