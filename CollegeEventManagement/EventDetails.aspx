<%@ Page Title="Event Details"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="EventDetails.aspx.cs"
    Inherits="CollegeEventManagement.EventDetails" %>

<asp:Content
    ID="MainContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <section class="details-page">

        <div class="details-container">

            <a href="Events.aspx" class="back-link">
                ← Back to Events
            </a>

            <div class="details-card">

                <div class="details-icon">
                    💻
                </div>

                <div class="details-content">

                    <span class="details-category">
                        Technical Event
                    </span>

                    <h1>Tech Fest 2026</h1>

                    <p class="details-description">
                        Tech Fest 2026 is an exciting technical event
                        organized by the college for students interested
                        in technology, coding and innovation.
                    </p>

                    <div class="details-info-grid">

                        <div>
                            <span>DATE</span>
                            <strong>15 October 2026</strong>
                        </div>

                        <div>
                            <span>TIME</span>
                            <strong>10:00 AM - 4:00 PM</strong>
                        </div>

                        <div>
                            <span>VENUE</span>
                            <strong>Main Auditorium</strong>
                        </div>

                        <div>
                            <span>ORGANIZER</span>
                            <strong>Computer Department</strong>
                        </div>

                    </div>

                    <div class="details-about">

                        <h2>About the Event</h2>

                        <p>
                            The event includes coding competitions,
                            technical workshops, project exhibitions
                            and interactive sessions.
                        </p>

                    </div>

                    <asp:Button
                        ID="btnRegister"
                        runat="server"
                        Text="Register for Event"
                        CssClass="primary-btn"
                        OnClick="btnRegister_Click" />

                </div>

            </div>

        </div>

    </section>

</asp:Content>