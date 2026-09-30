<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="About.aspx.cs"
    Inherits="CollegeEventManagement.About" %>

<asp:Content
    ID="MainContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <section class="about-page">

        <div class="about-container">

            <div class="about-heading">

                <span class="section-label">
                    ABOUT US
                </span>

                <h1>
                    Making College Events
                    Easier to Discover.
                </h1>

                <p>
                    College Event Management System provides a simple
                    platform for students to discover upcoming events,
                    view event details and register for activities.
                </p>

            </div>


            <div class="about-content">

                <div class="about-box">

                    <span>01</span>

                    <h2>Discover Events</h2>

                    <p>
                        Students can browse technical, cultural,
                        sports and academic events happening in
                        the college.
                    </p>

                </div>


                <div class="about-box">

                    <span>02</span>

                    <h2>Easy Registration</h2>

                    <p>
                        Students can view complete event information
                        and register for events through the website.
                    </p>

                </div>


                <div class="about-box">

                    <span>03</span>

                    <h2>Manage Participation</h2>

                    <p>
                        Registered events can be viewed and managed
                        from the student's account.
                    </p>

                </div>

            </div>


            <div class="about-purpose">

                <div>

                    <span class="section-label">
                        OUR PURPOSE
                    </span>

                    <h2>
                        One platform for the
                        college community.
                    </h2>

                </div>

                <p>
                    The system helps students stay updated with
                    college activities while allowing administrators
                    to manage events and registrations efficiently.
                </p>

            </div>

        </div>

    </section>

</asp:Content>