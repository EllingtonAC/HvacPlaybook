<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageServey.aspx.cs" Inherits="HvacPlaybook.Admin.ManageServey" %>
<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .centerGrid {margin: 0 auto;}
        .dxgvTable_DevEx caption {font-weight: bold;}

    </style>

     <div style="align-content:center;">
         <dx:ASPxGridView ID="Servey_GridView" runat="server" Caption="HVAC Playbook Serveys" AutoGenerateColumns="False" EnableTheming="True" Theme="DevEx" CssClass="centerGrid" Width="600px" DataSourceID="SqlDataSource1" KeyFieldName="ComfortSurveyID" SettingsPager-PageSize ="15">
<SettingsPager PageSize="15"></SettingsPager>

             <SettingsEditing EditFormColumnCount="1">
             </SettingsEditing>
<SettingsCommandButton>
<ShowAdaptiveDetailButton ButtonType="Image"></ShowAdaptiveDetailButton>

<HideAdaptiveDetailButton ButtonType="Image"></HideAdaptiveDetailButton>
</SettingsCommandButton>
             <Columns>
                 <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                 </dx:GridViewCommandColumn>
                 <dx:GridViewDataTextColumn FieldName="QuestionOrder" VisibleIndex="1">    
                     <PropertiesTextEdit Width="100px">
                     </PropertiesTextEdit>
                 </dx:GridViewDataTextColumn>
                 <dx:GridViewDataCheckColumn FieldName="Display" VisibleIndex="3">
                 </dx:GridViewDataCheckColumn>
     
                 <dx:GridViewDataMemoColumn FieldName="QuestionText" VisibleIndex="2">
                 </dx:GridViewDataMemoColumn>
     
             </Columns>


   </dx:ASPxGridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HVACPlaybookConnectionString %>" 
             SelectCommand="SELECT [QuestionOrder], [QuestionText], [Display], [ComfortSurveyID] FROM [ComfortSurvey] ORDER BY [QuestionOrder]" 
             DeleteCommand="DELETE FROM [ComfortSurvey] WHERE [ComfortSurveyID] = @ComfortSurveyID" 
             InsertCommand="INSERT INTO [ComfortSurvey] ([QuestionOrder], [QuestionText], [Display]) VALUES (@QuestionOrder, @QuestionText, @Display)" 
             UpdateCommand="UPDATE [ComfortSurvey] SET [QuestionOrder] = @QuestionOrder, [QuestionText] = @QuestionText, [Display] = @Display WHERE [ComfortSurveyID] = @ComfortSurveyID">
             <DeleteParameters>
                 <asp:Parameter Name="ComfortSurveyID" Type="Int32"></asp:Parameter>
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="QuestionOrder" Type="Int32"></asp:Parameter>
                 <asp:Parameter Name="QuestionText" Type="String"></asp:Parameter>
                 <asp:Parameter Name="Display" Type="Boolean"></asp:Parameter>
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="QuestionOrder" Type="Int32"></asp:Parameter>
                 <asp:Parameter Name="QuestionText" Type="String"></asp:Parameter>
                 <asp:Parameter Name="Display" Type="Boolean"></asp:Parameter>
                 <asp:Parameter Name="ComfortSurveyID" Type="Int32"></asp:Parameter>
             </UpdateParameters>
         </asp:SqlDataSource>
     </div>
</asp:Content>
