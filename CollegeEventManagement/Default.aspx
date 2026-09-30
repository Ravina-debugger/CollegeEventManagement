<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="CollegeEventManagement._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="hero">
        <div class="hero-content">
            <h1>College Event Management</h1>

            <p>
                Discover, register and participate in exciting college events.
            </p>

            <a href="Events.aspx" class="btn">Explore Events</a>
        </div>
    </div>

    <section class="welcome">
        <h2>Upcoming College Events</h2>

        <div class="event-container">

            <div class="event-card">
                <h3>Tech Fest</h3>
                <p>Explore technology, innovation and exciting competitions.</p>
                <span>📅 15 October 2026</span>
            </div>

            <div class="event-card">
                <h3>Science Exhibition</h3>
                <p>Showcase creative ideas and innovative science projects.</p>
                <span>📅 22 October 2026</span>
            </div>

            <div class="event-card">
                <h3>Cultural Fest</h3>
                <p>Enjoy music, dance, art and amazing cultural performances.</p>
                <span>📅 5 November 2026</span>
            </div>

        </div>
    </section>

</asp:Content>