<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="ManageUsers.aspx.cs" Inherits="HvacPlaybook.Admin.ManageUsers" %>
<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .centerGrid {margin: 0 auto;}
        .dxgvTable_DevEx caption {font-weight: bold;}
    </style>

    <div style="align-content:center;">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" Caption="HVAC Playbook Users" AutoGenerateColumns="False" EnableTheming="True" Theme="DevEx" CssClass="centerGrid"
            OnDataBinding="ASPxGridView1_DataBinding" 
            OnRowUpdating="ASPxGridView1_RowUpdating"
            OnRowInserting="ASPxGridView1_RowInserting"
            OnRowInserted="ASPxGridView1_RowInserted"
            Width="600"
            >
            <Columns>
                <dx:GridViewCommandColumn Caption=" " VisibleIndex="0" ShowNewButton="true" ShowEditButton="true" ShowDeleteButton="true"/>
                <dx:GridViewDataColumn FieldName="FirstName" VisibleIndex="1" Name="FirstName" />
                <dx:GridViewDataColumn FieldName="LastName" VisibleIndex="2" Name="LastName" />
                <dx:GridViewDataColumn FieldName="Email" VisibleIndex="3" Name="Email" />
                <dx:GridViewDataColumn FieldName="UserName" VisibleIndex="4" Name="UserName" />
                <dx:GridViewDataColumn FieldName="Password" VisibleIndex="5" Name="Password" Visible="false">
                    <EditFormSettings Visible="True" />
                </dx:GridViewDataColumn>
            </Columns>
            <SettingsPopup>
                <EditForm Width="600" />
            </SettingsPopup>
            <SettingsBehavior ConfirmDelete="true" />
            <SettingsText ConfirmDelete="Delete user?" />
        </dx:ASPxGridView>
        <asp:SqlDataSource id="HVACPlaybookData" runat="server" ConnectionString="<%$ ConnectionStrings:HVACPlaybook %>" 
            SelectCommand="SELECT [UserID], [Email], [FirstName], [LastName], [UserName], [Password] FROM [User] ORDER BY [FirstName]"
            InsertCommand="INSERT INTO [User] ([Email], [FirstName], [LastName], [UserName], [Password])VALUES (@Email, @FirstName, @LastName, @UserName, @Password)"
            UpdateCommand="UPDATE [User] Set [Email]=@Email, [FirstName]=@FirstName, [LastName]=@LastName, [UserName]=@UserName, [Password]=@Password WHERE [UserID]=@UserID"
            DeleteCommand="DELETE FROM [User] WHERE UserID = @UserID" >
        </asp:SqlDataSource>
    </div>
</asp:Content>
