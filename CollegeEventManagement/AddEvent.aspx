<%@ Page Title="Add Event"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="AddEvent.aspx.cs"
    Inherits="CollegeEventManagement.Admin.AddEvent" %>

<asp:Content
    ID="MainContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <section class="add-event-page">

        <div class="add-event-container">

            <div class="add-event-header">

                <span class="admin-label">
                    ADMIN PANEL
                </span>

                <h1>Add New Event</h1>

                <p>
                    Create and publish a new college event.
                </p>

            </div>

            <div class="add-event-card">

                <div class="form-group">

                    <label>Event Name</label>

                    <asp:TextBox
                        ID="txtEventName"
                        runat="server"
                        CssClass="admin-form-input"
                        placeholder="Enter event name">
                    </asp:TextBox>

                </div>

                <div class="form-group">

                    <label>Description</label>

                    <asp:TextBox
                        ID="txtDescription"
                        runat="server"
                        TextMode="MultiLine"
                        Rows="5"
                        CssClass="admin-form-input"
                        placeholder="Enter event description">
                    </asp:TextBox>

                </div>

                <div class="form-row">

                    <div class="form-group">

                        <label>Date</label>

                        <asp:TextBox
                            ID="txtDate"
                            runat="server"
                            TextMode="Date"
                            CssClass="admin-form-input">
                        </asp:TextBox>

                    </div>

                    <div class="form-group">

                        <label>Time</label>

                        <asp:TextBox
                            ID="txtTime"
                            runat="server"
                            TextMode="Time"
                            CssClass="admin-form-input">
                        </asp:TextBox>

                    </div>

                </div>

                <div class="form-row">

                    <div class="form-group">

                        <label>Venue</label>

                        <asp:TextBox
                            ID="txtVenue"
                            runat="server"
                            CssClass="admin-form-input"
                            placeholder="Enter venue">
                        </asp:TextBox>

                    </div>

                    <div class="form-group">

                        <label>Category</label>

                        <asp:DropDownList
                            ID="ddlCategory"
                            runat="server"
                            CssClass="admin-form-input">

                            <asp:ListItem Text="Select Category"
                                Value="" />

                            <asp:ListItem Text="Technical"
                                Value="Technical" />

                            <asp:ListItem Text="Cultural"
                                Value="Cultural" />

                            <asp:ListItem Text="Sports"
                                Value="Sports" />

                            <asp:ListItem Text="Academic"
                                Value="Academic" />

                        </asp:DropDownList>

                    </div>

                </div>

                <div class="form-group">

                    <label>Organizer</label>

                    <asp:TextBox
                        ID="txtOrganizer"
                        runat="server"
                        CssClass="admin-form-input"
                        placeholder="Enter organizer name">
                    </asp:TextBox>

                </div>

                <div class="add-event-actions">

                    <a href="Dashboard.aspx"
                       class="admin-cancel-btn">
                        Cancel
                    </a>

                    <asp:Button
                        ID="btnAddEvent"
                        runat="server"
                        Text="Add Event"
                        CssClass="admin-save-btn"
                        OnClick="btnAddEvent_Click" />

                </div>

            </div>

        </div>

    </section>

</asp:Content>