<%@ Page Title="Home"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Home.aspx.cs"
    Inherits="CollegeEventManagement.Home" %>

<asp:Content
    ID="MainContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <section class="home-page">

        <!-- HERO -->

        <div class="home-hero">

            <div class="home-hero-content">

                <span class="home-label">
                    COLLEGE EVENT MANAGEMENT
                </span>

                <h1>
                    Discover.<br />
                    Participate.<br />
                    <span>Experience.</span>
                </h1>

                <p>
                    Discover exciting college events, register easily
                    and make the most of your campus life.
                </p>

                <div class="home-buttons">

                    <a href="Events.aspx"
                       class="home-primary-btn">
                        Explore Events →
                    </a>

                    <a href="Register.aspx"
                       class="home-secondary-btn">
                        Create Account
                    </a>

                </div>

            </div>


            <div class="home-hero-visual">

                <div class="hero-circle"></div>

                <div class="hero-card hero-card-one">

                    <span>UPCOMING EVENTS</span>

                    <strong>
                        <asp:Label
                            ID="lblUpcomingCount"
                            runat="server">
                            0
                        </asp:Label>
                    </strong>

                    <small>
                        Events to explore
                    </small>

                </div>


                <div class="hero-card hero-card-two">

                    <span>TOTAL EVENTS</span>

                    <strong>
                        <asp:Label
                            ID="lblTotalEvents"
                            runat="server">
                            0
                        </asp:Label>
                    </strong>

                    <small>
                        Available on campus
                    </small>

                </div>

            </div>

        </div>


        <!-- UPCOMING EVENTS -->

        <section class="home-events-section">

            <div class="home-section-heading">

                <div>

                    <span class="home-label">
                        DON'T MISS OUT
                    </span>

                    <h2>
                        Upcoming Events
                    </h2>

                </div>

                <a href="Events.aspx">
                    View All →
                </a>

            </div>


            <div class="home-events-grid">

                <asp:Repeater
                    ID="rptEvents"
                    runat="server">

                    <ItemTemplate>

                        <article class="home-event-card">

                            <div class="home-event-top">

                                <span class="home-event-category">
                                    <%# Eval("Category") %>
                                </span>

                                <span class="home-event-number">
                                    #<%# Eval("EventID") %>
                                </span>

                            </div>


                            <h3>
                                <%# Eval("EventName") %>
                            </h3>


                            <p class="home-event-description">

                                <%# Eval("Description") %>

                            </p>


                            <div class="home-event-info">

                                <div>

                                    <span class="info-icon">
                                        📅
                                    </span>

                                    <span>
                                        <%# Eval("EventDate", "{0:dd MMM yyyy}") %>
                                    </span>

                                </div>


                                <div>

                                    <span class="info-icon">
                                        🕐
                                    </span>

                                    <span>
                                        <%# Eval("EventTime", "{0:hh\\:mm}") %>
                                    </span>

                                </div>


                                <div>

                                    <span class="info-icon">
                                        📍
                                    </span>

                                    <span>
                                        <%# Eval("Venue") %>
                                    </span>

                                </div>

                            </div>


                            <a
                                href='<%# "EventDetails.aspx?EventID=" + Eval("EventID") %>'
                                class="home-event-btn">

                                View Details

                                <span>→</span>

                            </a>

                        </article>

                    </ItemTemplate>


                    <FooterTemplate>

                        <asp:Panel
                            ID="pnlNoEvents"
                            runat="server"
                            CssClass="no-events">

                            <div class="no-events-icon">
                                📅
                            </div>

                            <h3>
                                No Upcoming Events
                            </h3>

                            <p>
                                There are currently no upcoming events.
                                Please check again later.
                            </p>

                        </asp:Panel>

                    </FooterTemplate>

                </asp:Repeater>

            </div>

        </section>


        <!-- HOW IT WORKS -->

        <section class="home-how-section">

            <div class="home-how-heading">

                <span class="home-label">
                    SIMPLE & EASY
                </span>

                <h2>
                    How It Works
                </h2>

            </div>


            <div class="home-how-grid">

                <div class="home-how-card">

                    <span>01</span>

                    <h3>
                        Discover
                    </h3>

                    <p>
                        Explore technical, cultural, sports
                        and academic events.
                    </p>

                </div>


                <div class="home-how-card">

                    <span>02</span>

                    <h3>
                        Register
                    </h3>

                    <p>
                        Create your account and register
                        for events you like.
                    </p>

                </div>


                <div class="home-how-card">

                    <span>03</span>

                    <h3>
                        Participate
                    </h3>

                    <p>
                        Attend the event and enjoy
                        your college experience.
                    </p>

                </div>

            </div>

        </section>

    </section>

</asp:Content>