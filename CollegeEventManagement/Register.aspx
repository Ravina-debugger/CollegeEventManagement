<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Register.aspx.cs"
    Inherits="CollegeEventManagement.Register" %>

<asp:Content
    ID="MainContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <style>

.register-page {
    min-height: 80vh;
    padding: 60px 20px;
    background: #f7f8fc;

    display: flex;
    justify-content: center;
    align-items: center;

    box-sizing: border-box;
}

.register-card {
    width: 100%;
    max-width: 720px;

    padding: 42px;

    background: #ffffff;

    border-radius: 18px;

    box-shadow: 0 15px 45px rgba(0, 0, 0, 0.08);

    box-sizing: border-box;
}

.register-icon {
    width: 58px;
    height: 58px;

    margin: 0 auto 18px;

    display: flex;
    align-items: center;
    justify-content: center;

    background: #eef1fb;

    border-radius: 14px;

    font-size: 27px;
}

.register-card h1 {
    margin: 0;

    text-align: center;

    color: #171717;

    font-size: 32px;
    font-weight: 700;
}

.register-subtitle {
    margin: 10px auto 32px;

    max-width: 480px;

    text-align: center;

    color: #777;

    font-size: 14px;
    line-height: 1.6;
}

.register-row {
    display: grid;

    grid-template-columns: 1fr 1fr;

    gap: 18px;
}

.register-group {
    margin-bottom: 20px;
}

.register-group label {
    display: block;

    margin-bottom: 8px;

    color: #333;

    font-size: 13px;
    font-weight: 600;
}

.register-input {
    width: 100%;

    padding: 13px 14px;

    box-sizing: border-box;

    background: #fff;

    border: 1px solid #dedede;

    border-radius: 8px;

    color: #222;

    font-family: inherit;

    font-size: 14px;

    outline: none;
}

.register-input:focus {
    border-color: #394f8f;

    box-shadow: 0 0 0 3px rgba(57, 79, 143, 0.08);
}

.register-button {
    width: 100%;

    margin-top: 4px;

    padding: 14px;

    border: none;

    border-radius: 8px;

    background: #171717;

    color: #fff;

    font-family: inherit;

    font-size: 14px;
    font-weight: 600;

    cursor: pointer;
}

.register-button:hover {
    background: #333;
}

.register-bottom {
    display: flex;

    justify-content: center;
    align-items: center;

    gap: 6px;

    margin-top: 22px;

    color: #777;

    font-size: 13px;
}

.register-bottom a {
    color: #394f8f;

    font-weight: 600;

    text-decoration: none;
}

.register-bottom a:hover {
    text-decoration: underline;
}

@media (max-width: 650px) {

    .register-page {
        padding: 40px 15px;
    }

    .register-card {
        padding: 28px 22px;
    }

    .register-row {
        grid-template-columns: 1fr;
        gap: 0;
    }

    .register-card h1 {
        font-size: 28px;
    }
}

</style>

    <section class="register-page">

        <div class="register-card">

            <div class="register-icon">
                🎓
            </div>

            <h1>Create Account</h1>

            <p class="register-subtitle">
                Create your account and start exploring college events.
            </p>

            <div class="register-row">

                <div class="register-group">

                    <label>Full Name</label>

                    <asp:TextBox
                        ID="txtName"
                        runat="server"
                        CssClass="register-input"
                        placeholder="Enter your full name">
                    </asp:TextBox>

                </div>

                <div class="register-group">

                    <label>Phone Number</label>

                    <asp:TextBox
                        ID="txtPhone"
                        runat="server"
                        CssClass="register-input"
                        placeholder="Enter phone number">
                    </asp:TextBox>

                </div>

            </div>

            <div class="register-group">

                <label>Email Address</label>

                <asp:TextBox
                    ID="txtEmail"
                    runat="server"
                    CssClass="register-input"
                    placeholder="Enter your email">
                </asp:TextBox>

            </div>

            <div class="register-row">

                <div class="register-group">

                    <label>Password</label>

                    <asp:TextBox
                        ID="txtPassword"
                        runat="server"
                        TextMode="Password"
                        CssClass="register-input"
                        placeholder="Create password">
                    </asp:TextBox>

                </div>

                <div class="register-group">

                    <label>Confirm Password</label>

                    <asp:TextBox
                        ID="txtConfirmPassword"
                        runat="server"
                        TextMode="Password"
                        CssClass="register-input"
                        placeholder="Confirm password">
                    </asp:TextBox>

                </div>

            </div>

            <div class="register-group">

                <label>Account Type</label>

                <asp:DropDownList
                    ID="ddlRole"
                    runat="server"
                    CssClass="register-input">

                    <asp:ListItem
                        Text="Student"
                        Value="Student" />

                </asp:DropDownList>

            </div>

           <asp:Button
                ID="btnRegister"
                runat="server"
                Text="Create Account"
                CssClass="register-button"
                OnClick="btnRegister_Click" />

            <div class="register-bottom">

                <span>Already have an account?</span>

                <a href="Login.aspx">
                    Login
                </a>

            </div>

        </div>

    </section>

</asp:Content>