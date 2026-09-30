<%@ Page Title="Events" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Events.aspx.cs"
    Inherits="CollegeEventManagement.Events" %>

<asp:Content
    ID="MainContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <section class="events-page">

        <div class="events-top">

            <div class="events-heading">

                <span class="events-label">
                    EXPLORE CAMPUS
                </span>

                <h1>Upcoming Events</h1>

                <p>
                    Discover workshops, competitions, cultural programs
                    and exciting activities happening around your campus.
                </p>

            </div>

            <div class="events-filter">

                <label>Category</label>

                <select>
                    <option>All Categories</option>
                    <option>Technical</option>
                    <option>Cultural</option>
                    <option>Sports</option>
                    <option>Academic</option>
                </select>

            </div>

        </div>


        <div class="events-grid">


            <!-- TECHNICAL -->

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
                        Explore technology, coding challenges,
                        innovation and exciting competitions.
                    </p>

                    <div class="event-details">

                        <span>
                            📅 15 Oct 2026
                        </span>

                        <span>
                            📍 Main Auditorium
                        </span>

                    </div>

                    <a href="EventDetails.aspx" class="event-view-btn">
                        View Details
                        <span>→</span>
                    </a>

                </div>

            </div>


            <!-- CULTURAL -->

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
                        Music, dance, drama and amazing performances
                        by talented students.
                    </p>

                    <div class="event-details">

                        <span>
                            📅 20 Oct 2026
                        </span>

                        <span>
                            📍 College Ground
                        </span>

                    </div>

                    <a href="EventDetails.aspx" class="event-view-btn">
                        View Details
                        <span>→</span>
                    </a>

                </div>

            </div>


            <!-- SPORTS -->

            <div class="event-card">

                <div class="event-image sports">

                    <div class="event-emoji">
                        🏆
                    </div>

                    <span class="event-category">
                        Sports
                    </span>

                </div>

                <div class="event-body">

                    <h2>Annual Sports Meet</h2>

                    <p>
                        Participate in exciting sports competitions
                        and represent your college.
                    </p>

                    <div class="event-details">

                        <span>
                            📅 25 Oct 2026
                        </span>

                        <span>
                            📍 Sports Ground
                        </span>

                    </div>

                    <a href="EventDetails.aspx" class="event-view-btn">
                        View Details
                        <span>→</span>
                    </a>

                </div>

            </div>


            <!-- ACADEMIC -->

            <div class="event-card">

                <div class="event-image academic">

                    <div class="event-emoji">
                        📚
                    </div>

                    <span class="event-category">
                        Academic
                    </span>

                </div>

                <div class="event-body">

                    <h2>Career Workshop</h2>

                    <p>
                        Learn about career opportunities, skills
                        and professional development.
                    </p>

                    <div class="event-details">

                        <span>
                            📅 30 Oct 2026
                        </span>

                        <span>
                            📍 Seminar Hall
                        </span>

                    </div>

                    <a href="EventDetails.aspx" class="event-view-btn">
                        View Details
                        <span>→</span>
                    </a>

                </div>

            </div>

        </div>

    </section>

</asp:Content>