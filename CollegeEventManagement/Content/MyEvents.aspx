<%@ Page Title="My Events" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="MyEvents.aspx.cs"
    Inherits="CollegeEventManagement.MyEvents" %>

<asp:Content
    ID="MainContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <section class="my-events-page">

        <div class="my-events-heading">

            <span class="my-events-label">
                MY ACTIVITY
            </span>

            <h1>My Registered Events</h1>

            <p>
                View and manage the events you have registered for.
            </p>

        </div>


        <!-- SAMPLE REGISTERED EVENT -->

        <div class="registered-event-card">

            <div class="registered-event-icon">
                💻
            </div>

            <div class="registered-event-info">

                <span class="registered-event-category">
                    TECHNICAL
                </span>

                <h2>Tech Fest 2026</h2>

                <div class="registered-event-details">

                    <span>
                        📅 15 October 2026
                    </span>

                    <span>
                        🕐 10:00 AM - 4:00 PM
                    </span>

                    <span>
                        📍 Main Auditorium
                    </span>

                </div>

            </div>

            <div class="registered-event-status">
                <span>Registered</span>
            </div>

        </div>


        <!-- EMPTY MESSAGE FOR FUTURE DATABASE -->

        <div class="my-events-note">

            <div class="my-events-note-icon">
                🎟️
            </div>

            <h3>Your registered events will appear here</h3>

            <p>
                Once you register for an event, you can view
                its details and registration status on this page.
            </p>

            <a href="Events.aspx" class="my-events-btn">
                Explore Events →
            </a>

        </div>

    </section>

</asp:Content>