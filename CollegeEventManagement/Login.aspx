<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="CollegeEventManagement.Login" %>

<asp:Content
    ID="MainContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <section class="login-page">

        <div class="login-card">

            <div class="login-icon">
                🔐
            </div>

            <h1>Welcome Back</h1>

            <p class="login-subtitle">
                Login to register for college events.
            </p>

            <div class="login-form">

                <div class="input-group">

                    <label>Email Address</label>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="login-input"
                        placeholder="Enter your email">
                    </asp:TextBox>

                </div>


                <div class="input-group">

                    <label>Password</label>

                    <asp:TextBox
                        ID="txtPassword"
                        runat="server"
                        TextMode="Password"
                        CssClass="login-input"
                        placeholder="Enter your password">
                    </asp:TextBox>

                </div>


                <asp:Button
                    ID="btnLogin"
                    runat="server"
                    Text="Login"
                    CssClass="login-button"
                    OnClick="btnLogin_Click" />

            </div>


            <div class="login-bottom">

                <span>Don't have an account?</span>

                <a href="Register.aspx">
                    Create Account
                </a>

            </div>

        </div>

    </section>

</asp:Content>