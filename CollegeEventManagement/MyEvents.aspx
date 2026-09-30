<%@ Page Title="My Events" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="MyEvents.aspx.cs"
    Inherits="CollegeEventManagement.MyEvents" %>

<asp:Content
    ID="MainContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <section class="events-page">

        <div class="events-top">

            <div class="events-heading">

                <span class="events-label">
                    MY ACTIVITY
                </span>

                <h1>My Registered Events</h1>

                <p>
                    Events you have registered for are shown here.
                    Keep track of your upcoming college activities.
                </p>

            </div>

        </div>


        <div class="events-grid">


            <!-- REGISTERED EVENT 1 -->

            <div class="event-card">

                <div class="event-image technical">

                    <div class="event-emoji">
                        💻
                    </div>

                    <span class="event-category">
                        Technical
                    </span>

                </div>

                <div class="event-body">

                    <h2>Tech Fest 2026</h2>

                    <p>
                        Innovation, coding competitions,
                        technology and exciting activities.
                    </p>

                    <div class="event-details">

                        <span>
                            📅 15 Oct 2026
                        </span>

                        <span>
                            📍 Main Auditorium
                        </span>

                    </div>

                    <a href="EventDetails.aspx"
                       class="event-view-btn">

                        View Details

                        <span>→</span>

                    </a>

                </div>

            </div>


            <!-- REGISTERED EVENT 2 -->

            <div class="event-card">

                <div class="event-image cultural">

                    <div class="event-emoji">
                        🎭
                    </div>

                    <span class="event-category">
                        Cultural
                    </span>

                </div>

                <div class="event-body">

                    <h2>Cultural Fest</h2>

                    <p>
                        Music, dance, drama and amazing
                        performances by talented students.
                    </p>

                    <div class="event-details">

                        <span>
                            📅 20 Oct 2026
                        </span>

                        <span>
                            📍 College Ground
                        </span>

                    </div>

                    <a href="EventDetails.aspx"
                       class="event-view-btn">

                        View Details

                        <span>→</span>

                    </a>

                </div>

            </div>


        </div>

    </section>

</asp:Content>