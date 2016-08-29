﻿<%@ Page Title="HVAC Playbook - Control Panel Home" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ControlPanel.aspx.cs" Inherits="HvacPlaybook.Admin.ControlPanel" %>
<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hr style="margin-bottom:0px;padding-bottom:0px" />
    <div class="row">
        <div class="col-md-4">
            <h2>Manage HVAC Playbook Users</h2>
            <p>
                Manage HVAC Playbook user accounts by adding new users, modifying & disabling existing user accounts.
            </p>
            <p>
                <a class="btn btn-default" href="ManageUsers.aspx">Manage Users &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Manage Default Data</h2>
            <p>
                Manage the default values that populate the various forms throughout HVAC Playbook.
            </p>
            <p>
                <a class="btn btn-default" href="#">Manage Default Data &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Manage Proposal Reports</h2>
            <p>
                Manage the look & feel of proposal reports generated by the system.
            </p>
            <p>
                <a class="btn btn-default" href="#">Report Designer &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>