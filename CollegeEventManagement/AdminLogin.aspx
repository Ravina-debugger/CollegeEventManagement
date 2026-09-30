<%@ Page Title="Admin Login"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="AdminLogin.aspx.cs"
    Inherits="CollegeEventManagement.AdminLogin" %>

<asp:Content
    ID="MainContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <section class="admin-login-page">

        <div class="admin-login-card">

            <div class="admin-login-icon">
                ADMIN
            </div>

            <span class="admin-login-label">
                ADMINISTRATOR
            </span>

            <h1>Admin Login</h1>

            <p>
                Login to manage college events and registrations.
            </p>

            <div class="admin-form-group">

                <label>Username</label>

                <asp:TextBox
                    ID="txtUsername"
                    runat="server"
                    CssClass="admin-input"
                    placeholder="Enter admin username">
                </asp:TextBox>

            </div>

            <div class="admin-form-group">

                <label>Password</label>

                <asp:TextBox
                    ID="txtPassword"
                    runat="server"
                    TextMode="Password"
                    CssClass="admin-input"
                    placeholder="Enter password">
                </asp:TextBox>

            </div>

            <asp:Button
                ID="btnAdminLogin"
                runat="server"
                Text="Login as Admin"
                CssClass="admin-login-button"
                OnClick="btnAdminLogin_Click" />

        </div>

    </section>

</asp:Content>