<%@ Page Title="Manage Events"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="ManageEvents.aspx.cs"
    Inherits="CollegeEventManagement.Admin.ManageEvents" %>

<asp:Content
    ID="MainContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <section class="manage-events-page">

        <div class="manage-events-container">

            <div class="manage-events-header">

                <div>

                    <span class="admin-label">
                        ADMIN PANEL
                    </span>

                    <h1>Manage Events</h1>

                    <p>
                        View, update and delete college events.
                    </p>

                </div>

                <a href="AddEvent.aspx"
                   class="admin-add-btn">
                    + Add New Event
                </a>

            </div>


            <div class="manage-events-card">

                <div class="manage-events-top">

                    <h2>All Events</h2>

                    <span>
                        Events from database
                    </span>

                </div>


                <asp:GridView
                    ID="gvEvents"
                    runat="server"
                    AutoGenerateColumns="False"
                    CssClass="events-table"
                    EmptyDataText="No events available."
                    OnRowCommand="gvEvents_RowCommand">

                    <Columns>

                        <asp:BoundField
                            DataField="EventID"
                            HeaderText="ID" />

                        <asp:BoundField
                            DataField="EventName"
                            HeaderText="Event Name" />

                        <asp:BoundField
                            DataField="Category"
                            HeaderText="Category" />

                        <asp:BoundField
                            DataField="EventDate"
                            HeaderText="Date"
                            DataFormatString="{0:dd MMM yyyy}" />

                        <asp:BoundField
                            DataField="Venue"
                            HeaderText="Venue" />


                        <asp:TemplateField
                            HeaderText="Actions">

                            <ItemTemplate>

                                <a
                                    href='<%# "EditEvent.aspx?EventID=" + Eval("EventID") %>'
                                    class="event-edit-btn">

                                    Edit

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete"
                                    runat="server"
                                    Text="Delete"
                                    CommandName="DeleteEvent"
                                    CommandArgument='<%# Eval("EventID") %>'
                                    CssClass="event-delete-btn"
                                    OnClientClick="return confirm('Are you sure you want to delete this event?');">
                                </asp:LinkButton>

                            </ItemTemplate>

                        </asp:TemplateField>

                    </Columns>

                </asp:GridView>

            </div>

        </div>

    </section>

</asp:Content>