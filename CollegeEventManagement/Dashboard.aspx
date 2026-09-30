<%@ Page Title="Admin Dashboard"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Dashboard.aspx.cs"
    Inherits="CollegeEventManagement.Admin.Dashboard" %>

<asp:Content
    ID="MainContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <section class="admin-dashboard">

        <div class="admin-dashboard-container">

            <!-- HEADER -->

            <div class="admin-dashboard-header">

                <div>

                    <span class="admin-label">
                        ADMIN PANEL
                    </span>

                    <h1>Dashboard</h1>

                    <p>
                        Manage college events, students and registrations.
                    </p>

                </div>

                <a href="AddEvent.aspx"
                   class="admin-add-btn">
                    + Add New Event
                </a>

            </div>


            <!-- STAT CARDS -->

            <div class="admin-stats">

                <div class="admin-stat-card">

                    <span class="admin-stat-title">
                        TOTAL EVENTS
                    </span>

                    <strong>
                        <asp:Label
                            ID="lblTotalEvents"
                            runat="server"
                            Text="0">
                        </asp:Label>
                    </strong>

                    <small>
                        Events created
                    </small>

                </div>


                <div class="admin-stat-card">

                    <span class="admin-stat-title">
                        TOTAL STUDENTS
                    </span>

                    <strong>
                        <asp:Label
                            ID="lblTotalStudents"
                            runat="server"
                            Text="0">
                        </asp:Label>
                    </strong>

                    <small>
                        Registered students
                    </small>

                </div>


                <div class="admin-stat-card">

                    <span class="admin-stat-title">
                        REGISTRATIONS
                    </span>

                    <strong>
                        <asp:Label
                            ID="lblTotalRegistrations"
                            runat="server"
                            Text="0">
                        </asp:Label>
                    </strong>

                    <small>
                        Event registrations
                    </small>

                </div>


                <div class="admin-stat-card">

                    <span class="admin-stat-title">
                        UPCOMING EVENTS
                    </span>

                    <strong>
                        <asp:Label
                            ID="lblUpcomingEvents"
                            runat="server"
                            Text="0">
                        </asp:Label>
                    </strong>

                    <small>
                        Upcoming events
                    </small>

                </div>

            </div>


            <!-- RECENT EVENTS -->

            <div class="admin-section">

                <div class="admin-section-header">

                    <div>

                        <span class="admin-label">
                            OVERVIEW
                        </span>

                        <h2>Recent Events</h2>

                    </div>

                    <a href="ManageEvents.aspx">
                        View All →
                    </a>

                </div>


                <div class="admin-table">

                    <div class="admin-table-head">

                        <span>Event</span>
                        <span>Category</span>
                        <span>Date</span>
                        <span>Status</span>

                    </div>


                    <asp:Repeater
                        ID="rptRecentEvents"
                        runat="server">

                        <ItemTemplate>

                            <div class="admin-table-row">

                                <span class="admin-event-name">
                                    <%# Eval("EventName") %>
                                </span>

                                <span>
                                    <%# Eval("Category") %>
                                </span>

                                <span>
                                    <%# Eval("EventDate", "{0:dd MMM yyyy}") %>
                                </span>

                                <span class="status-active">
                                    Active
                                </span>

                            </div>

                        </ItemTemplate>

                    </asp:Repeater>


                </div>

            </div>

        </div>

    </section>

</asp:Content>