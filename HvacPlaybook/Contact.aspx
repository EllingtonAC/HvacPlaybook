<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="HvacPlaybook.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>HVAC Playbook Contact Information</h3>
    <address>
        Ellington Air Conditioning + Heat Inc.<br />
        3280 Highway US1 <br />
        Rockledge, FL 32955 <br />
        <abbr title="Phone">P:</abbr>321.452.8585
        <abbr title="Phone">F:</abbr>321.631.8481
    </address>

    <address>
        <strong>Technical Support:</strong>   <a href="mailto:jason@ellingtonac.com">jason@ellingtonac.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:jason@ellingtonac.com">jason@ellingtonac.com</a>
    </address>
</asp:Content>
