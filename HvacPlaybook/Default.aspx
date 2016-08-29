<%@ Page Title="HVAC Playbook - Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HvacPlaybook._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <img src="/images/ellington-ac-logo.png" style="float:right" />
        <h1>Welcome to the HVAC Playbook</h1>
        <p class="lead">Use this proposal framework for building user-friendly quotes & estimates for your A/C customers.</p>
        <p><a class="btn btn-primary btn-large" runat="server" href="~/QA.aspx">Learn more &raquo;</a></p>
    </div>
    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                The mission of the HVAC playbook is to put the power of the quote engine at the finger tips of the end user, for generating robust and user-friendly A/C quotes & proposals.
            </p>
            <p>
                <a class="btn btn-default" runat="server" href="~/QA.aspx">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Start a new proposal</h2>
            <p>
                Use this feature to generate a new proposal for instantly emailing to your customer.
            </p>
            <p>
<% if (string.IsNullOrEmpty(HvacPlaybook.App_Helpers.SessionVar.GetString("HPusername")))
   { %>
                <a class="btn btn-default" href="#">Create proposal &raquo;</a>
<% } else { %>
                <a class="btn btn-default" runat="server" href="~/Proposal.aspx?Action=Create">Create proposal &raquo;</a>
<% } %>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Existing proposals</h2>
            <p>
                Access a previously generated proposal by customer id, phone number, address, first or last name.
            </p>
            <p>
<% if (string.IsNullOrEmpty(HvacPlaybook.App_Helpers.SessionVar.GetString("HPusername")))
   { %>
                <a class="btn btn-default" href="#">Access existing proposal &raquo;</a>
<% } else { %>
                <a class="btn btn-default" runat="server" href="~/ProposalView.aspx">Access existing proposal &raquo;</a>
<% } %>
            </p>
        </div>
    </div>

</asp:Content>
