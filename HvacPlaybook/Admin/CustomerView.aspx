<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="CustomerView.aspx.cs" Inherits="HvacPlaybook.Admin.CustomerView" %>
<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .centerGrid {margin: 0 auto;min-width:700px}
        .dxgvTable_DevEx caption {font-weight: bold;}
        .dxflCaptionCell_DevEx {font-weight: bold !important;}
    </style>
    <script type="text/javascript">
    </script>
    <div style="align-content:center;">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" Caption="HVAC Playbook Customers" AutoGenerateColumns="False" EnableTheming="True" Theme="DevEx" CssClass="centerGrid"
            OnDataBinding="ASPxGridView1_DataBinding"
            OnRowUpdating="ASPxGridView1_RowUpdating"
            OnRowInserting="ASPxGridView1_RowInserting"
            OnRowInserted="ASPxGridView1_RowInserted"
            Width="600"
            >
            <Columns>
                <dx:GridViewCommandColumn Caption=" " VisibleIndex="0" ShowNewButton="true" ShowEditButton="true" ShowDeleteButton="false"/>
                <dx:GridViewDataColumn FieldName="FirstName" VisibleIndex="1" Name="FirstName" />
                <dx:GridViewDataColumn FieldName="LastName" VisibleIndex="2" Name="LastName" />
                <dx:GridViewDataColumn FieldName="Street1" VisibleIndex="3" Name="Street1" />
                <dx:GridViewDataColumn FieldName="Street2" VisibleIndex="4" Name="Street2" />
                <dx:GridViewDataColumn FieldName="City" VisibleIndex="5" Name="City" />
                <dx:GridViewDataComboBoxColumn FieldName="StateCode" VisibleIndex="6" Caption="State">
	                <DataItemTemplate><%# Eval("StateName") %></DataItemTemplate>
                    <PropertiesComboBox DataSourceID="USStates" DropDownStyle="DropDownList" ValueField="StateCode" TextField="StateName" ValueType="System.String"/>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataTextColumn FieldName="Zip" VisibleIndex="7" Name="Zip" Visible="false" PropertiesTextEdit-MaxLength="5" PropertiesTextEdit-MaskSettings-Mask="00000">
                    <EditFormSettings Visible="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PrimaryPhone" VisibleIndex="8" Name="PrimaryPhone" PropertiesTextEdit-MaxLength="12" PropertiesTextEdit-MaskSettings-Mask="999-999-9999">
                    <EditFormSettings Visible="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataColumn FieldName="Email" VisibleIndex="11" Name="Email" Visible="false">
                    <EditFormSettings Visible="True" />
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="OtherContact" VisibleIndex="12" Name="OtherContact" Visible="false">
                    <EditFormSettings Visible="True" />
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="Notes" VisibleIndex="14" Name="Notes" Visible="false">
                    <EditFormSettings Visible="True" />
                </dx:GridViewDataColumn>
            </Columns>
            <SettingsPopup>
                <EditForm Width="600" />
            </SettingsPopup>
            <SettingsBehavior ConfirmDelete="true" />
            <SettingsText ConfirmDelete="Delete Customer?" />
        </dx:ASPxGridView>
        <asp:SqlDataSource id="HVACPlaybookData" runat="server" ConnectionString="<%$ ConnectionStrings:HVACPlaybook %>" 
            SelectCommand="SELECT [CustomerID], [FirstName], [LastName], [Street1], [Street2], [City], [States].[StateCode], [States].[StateName], [Zip], [PrimaryPhone], [Email], [OtherContact], [Notes] FROM [Customer] Inner Join [States] On [Customer].[StateCode] = [States].[StateCode]"
            InsertCommand="INSERT INTO [Customer] ([FirstName], [LastName], [Street1], [Street2], [City], [StateCode], [Zip], [PrimaryPhone], [Email], [OtherContact], [Notes])VALUES (@FirstName, @LastName, @Street1, @Street2, @City, @StateCode, @Zip, @PrimaryPhone, @Email, @OtherContact, @Notes)"
            UpdateCommand="UPDATE [Customer] Set [FirstName]=@FirstName, [LastName]=@LastName, [Street1]=@Street1, [Street2]=@Street2, [City]=@City, [StateCode]=@StateCode, [Zip]=@Zip, [PrimaryPhone]=@PrimaryPhone, [Email]=@Email, [OtherContact]=@OtherContact, [Notes]=@Notes WHERE [CustomerID]=@CustomerID">
        </asp:SqlDataSource>
        <asp:SqlDataSource id="USStates" runat="server" ConnectionString="<%$ ConnectionStrings:HVACPlaybook %>" 
            SelectCommand="SELECT [StateCode], [StateName] From States Order By StateName">
        </asp:SqlDataSource>
    </div>
</asp:Content>
