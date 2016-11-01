﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Proposal.aspx.cs" ViewStateMode="Enabled" EnableViewState="true" Inherits="HvacPlaybook.Proposal" %>

<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <script type="text/javascript">
            function OnTabChanging(s, e) {
                var tabName = (pageControl.GetActiveTab()).name;
                e.cancel = !ASPxClientEdit.ValidateGroup('group' + tabName);
            }
            function OnButtonClick(s, e) {
                var indexTab = (pageControl.GetActiveTab()).index;
                pageControl.SetActiveTab(pageControl.GetTab(indexTab + 1));

            }

            function OnSelectedIndexChanged(s, e) {

                var value = s.GetValue();
               if (value == "Standard or Ductless HVAC") {
                   standar_pagecontrol.SetVisible(true);
                //   alert(value);
               }
            }

            function OnOptionChanged(s, e) {
                var value = s.GetValue();
                if (value == "Yes") {
                  //   alert(value);
                    S1Title.SetVisible(true);
                    S1Type.SetVisible(true);
//                    S1_UTorPU.SetVisible(true);
//                    S1Capacity.SetVisible(true);
//                   S1ID_TorH.SetVisible(true);

                    $('.TargetCaption').text('System #1 Title:');
                    $('.Sys_NewCaptiion').text('System Type:');
                  
                    
                }

            }

            function OnFinishClick(s, e) {
                if (ASPxClientEdit.ValidateGroup('groupProposalType')) {
                    var addStreet = txtAddStreet.GetValue() != null ? txtAddStreet.GetValue() : '';
                    var str = '<b>Customer Info:</b><br />' + txtFirstName.GetValue() + ' ' + txtLastName.GetValue() + '<br />' + txtStreet.GetValue() + ' ' + addStreet + '<br />' + txtCity.GetValue() + ' ' + cbState.GetValue() + ' ' + txtZipcode.GetValue() + '<br />' + txtPhone.GetValue() + ' ' + txtEmail.GetValue() + '<br /><br />';
                    str += '<b>Survey Responses:</b><br />Response #1<br />Response #2<br />Response #3<br />Response #4<br />Response #5<br />Response #6<br />Response #7<br />Response #8<br />Response #9<br />Response #10<br /><br /><br />';
                    str += '<b>Proposal Type:</b><br />' + cbProposalType.GetValue() + '<br />';
                    popupControl.SetContentHtml(str);
                    popupControl.ShowAtElement(pageControl.GetMainElement());
                    popupControl.UpdatePositionAtElement(pageControl.GetMainElement());//ShowTabs
                }
            }
            function getShortDate(longDate) {
                var date = new Date(longDate);
                var month = date.getMonth() + 1;
                var str = month.toString() + '/' + date.getDate().toString() + '/' + date.getFullYear().toString();
                return str;
            }
        </script>
        <div>
            <dx:ASPxCheckBox ID="showTabs" runat="server" AutoPostBack="true" Text="Show Tabs" OnCheckedChanged="showTabs_CheckedChanged" OnInit="showTabs_Init">
            </dx:ASPxCheckBox>
            <br />
            <dx:ASPxPageControl ID="pageControl" ClientInstanceName="pageControl" runat="server"
                ActiveTabIndex="2" Width="800px">
                <ClientSideEvents ActiveTabChanging="OnTabChanging" />
                <TabPages>
                    <dx:TabPage Name="CustomerInfo" Text="Customer Information" ActiveTabStyle-Font-Bold="true">
                        <ActiveTabStyle Font-Bold="True"></ActiveTabStyle>
                        <ContentCollection>
                            <dx:ContentControl runat="server">
                                <table border="0">
                                    <tr>
                                        <td style="width: 180px">&nbsp;
                                            <dx:ASPxFormLayout runat="server" ID="exampleFormLayout" RequiredMarkDisplayMode="RequiredOnly" EnableViewState="false" EncodeHtml="false" Theme="Aqua" RequiredMark="<span style='color: red'>*</span>">
                                                <Items>
                                                    <dx:LayoutGroup Caption="" ColCount="2" GroupBoxDecoration="None">
                                                        <Items>
                                                            <dx:LayoutItem Caption="First Name">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="txtFirstName" ClientInstanceName="txtFirstName" runat="server">
                                                                            <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ValidationGroup="groupCustomerInfo">
                                                                                <RequiredField ErrorText="First Name is Required!" IsRequired="True" />
                                                                            </ValidationSettings>

                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="Last Name">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="txtLastName" ClientInstanceName="txtLastName" runat="server">
                                                                            <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ValidationGroup="groupCustomerInfo">
                                                                                <RequiredField ErrorText="Last Name is Required!" IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="Street">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="txtStreet" ClientInstanceName="txtStreet" runat ="server">
                                                                            <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ValidationGroup="groupCustomerInfo">
                                                                                <RequiredField ErrorText="Street is Required!" IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="Additional Street Info">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="txtAddStreet" ClientInstanceName="txtAddStreet" runat="server">
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="City">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="txtCity" ClientInstanceName="txtCity" runat="server">
                                                                            <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ValidationGroup="groupCustomerInfo">
                                                                                <RequiredField ErrorText="City is Required!" IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="State">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxComboBox ID="cbState" ClientInstanceName="cbState" runat ="server" EnableTheming="false" TextField="StateName" ValueType="System.String" ValueField="StateCode">
                                                                            <Columns>
                                                                            </Columns>
                                                                            <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ValidationGroup="groupCustomerInfo">
                                                                                <RequiredField ErrorText="State is Required!" IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxComboBox>
                                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HVACPlaybookConnectionString %>" SelectCommand="SELECT [StateCode], [StateName] FROM [States]"></asp:SqlDataSource>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="ZIP Code">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="txtZipcode" ClientInstanceName="txtZipcode" runat="server">
                                                                            <MaskSettings ErrorText="Invalid ZIP Code!" Mask="00000" />
                                                                            <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ValidationGroup="groupCustomerInfo">
                                                                                <RequiredField ErrorText="ZIP Code is Required!" IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="Primary Phone">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="txtPhone" ClientInstanceName="txtPhone" runat="server" HelpText="E.g. (123)555-1234">
                                                                            <MaskSettings ErrorText="Invalid Phone Number!" Mask="(999) 000-0000" />
                                                                            <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ValidationGroup="groupCustomerInfo">
                                                                                <RequiredField ErrorText="Primary Phone is Required!" IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="E-Mail">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="txtEmail" ClientInstanceName="txtEmail" runat="server">
                                                                            <MaskSettings ErrorText="Invalid E-Mail!" />
                                                                            <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ValidationGroup="groupCustomerInfo">
                                                                                <RegularExpression ErrorText="Invalid E-Mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                                                                <RequiredField ErrorText="E-Mail is Required!" IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="Other Contact Name &amp; Phone">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="exampleFormLayout_E11" runat="server">
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
                                                    </dx:LayoutGroup>
                                                    <dx:LayoutItem Caption="Notes (Gate code, location info, etc.)" Width="100%">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                </Items>
                                            </dx:ASPxFormLayout>
                                        </td>
                                    </tr>
                                </table>
                                <hr />
                                <dx:ASPxButton ID="btnNextCustomerInfo" runat="server" Text="Next" ClientInstanceName="btnNextCustomerInfo"
                                    AutoPostBack="False" ValidationGroup="groupCustomerInfo" Width="150">
                                    <ClientSideEvents Click="OnButtonClick" />
                                </dx:ASPxButton>
                                <dx:ASPxValidationSummary ID="validSummaryPersonal" runat="server" ValidationGroup="groupCustomerInfo">
                                </dx:ASPxValidationSummary>
                            </dx:ContentControl>
                        </ContentCollection>
                    </dx:TabPage>
                    <dx:TabPage Name="Survey" Text="Comfort Survey" ActiveTabStyle-Font-Bold="true">
                        <ActiveTabStyle Font-Bold="True"></ActiveTabStyle>
                        <ContentCollection>
                            <dx:ContentControl runat="server">

                                <dx:ASPxGridView ID="Survey_GridView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" KeyFieldName="ComfortSurveyID" Width="100%">

                                    <SettingsPager PageSize="15">
                                    </SettingsPager>

                                    <SettingsCommandButton>
                                        <ShowAdaptiveDetailButton ButtonType="Image"></ShowAdaptiveDetailButton>

                                        <HideAdaptiveDetailButton ButtonType="Image"></HideAdaptiveDetailButton>
                                    </SettingsCommandButton>

                                    <Columns>
                                        <dx:GridViewDataTextColumn FieldName="QuestionOrder" VisibleIndex="0" Width="20px">
<SettingsHeaderFilter>
<DateRangePickerSettings EditFormatString=""></DateRangePickerSettings>
</SettingsHeaderFilter>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="QuestionText" VisibleIndex="1" Width="300px">
<SettingsHeaderFilter>
<DateRangePickerSettings EditFormatString=""></DateRangePickerSettings>
</SettingsHeaderFilter>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="Answer" ShowInCustomizationForm="True" VisibleIndex="2">
<SettingsHeaderFilter>
<DateRangePickerSettings EditFormatString=""></DateRangePickerSettings>
</SettingsHeaderFilter>
                                            <DataItemTemplate>
                                                <dx:ASPxMemo ID="txtBox" Width="100%" runat="server"></dx:ASPxMemo>

                                            </DataItemTemplate>

                                        </dx:GridViewDataTextColumn>

                                    </Columns>

                                </dx:ASPxGridView>

                                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:HVACPlaybookConnectionString %>' DeleteCommand="DELETE FROM [ComfortSurvey] WHERE [ComfortSurveyID] = @ComfortSurveyID" InsertCommand="INSERT INTO [ComfortSurvey] ([QuestionOrder], [QuestionText], [Display]) VALUES (@QuestionOrder, @QuestionText, @Display)" SelectCommand="SELECT [ComfortSurveyID], [QuestionOrder], [QuestionText], [Display] FROM [ComfortSurvey] WHERE [Display] = 'true' ORDER BY [QuestionOrder]" UpdateCommand="UPDATE [ComfortSurvey] SET [QuestionOrder] = @QuestionOrder, [QuestionText] = @QuestionText, [Display] = @Display WHERE [ComfortSurveyID] = @ComfortSurveyID">
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
                                <dx:ASPxButton ID="btnNext" ValidationGroup="groupSurvey" runat="server" Text="Next"
                                    ClientInstanceName="btnNexSurvey" AutoPostBack="false" Width="150">
                                    <ClientSideEvents Click="OnButtonClick" />
                                </dx:ASPxButton>
                            </dx:ContentControl>
                        </ContentCollection>
                    </dx:TabPage>
                    <dx:TabPage Name="ProposalType" Text="Type of Proposal" ActiveTabStyle-Font-Bold="true">
                        <ActiveTabStyle Font-Bold="True"></ActiveTabStyle>
                        <ContentCollection>
                            <dx:ContentControl runat="server">
                                <dx:ASPxLabel ID="lblProposalType" runat="server" Text="Proposal Type" />
                                <dx:ASPxComboBox ID="cbProposalType" runat="server" ValueType="System.String" ClientInstanceName="cbProposalType" Width="170" 
                                     ClientEnabled="true"  AutoPostBack="false" ViewStateMode="Enabled" EnableViewState="true" EnableCallbackMode="True">
                                    <ClientSideEvents SelectedIndexChanged= "OnSelectedIndexChanged" />
                                    <Items>
                                        <dx:ListEditItem Value="Standard or Ductless HVAC" Text="Standard" />
                                        <dx:ListEditItem Value="Duct Cleaning" Text="Duct Cleaning" />
                                        <dx:ListEditItem Value="Blank Template" Text="Blank Template" />
                                    </Items>
                                    <ValidationSettings ValidationGroup="groupProposalType" ValidateOnLeave="true" SetFocusOnError="true">
                                        <RequiredField IsRequired="true" ErrorText="Proposal Type is required" />
                                    </ValidationSettings>
                                </dx:ASPxComboBox>
                                <hr />
                                <dx:ASPxPageControl ID="standar_pagecontrol" runat="server" ClientInstanceName="standar_pagecontrol" Width="400px" ActiveTabIndex="0" >

                                    <TabPages>
                                        <dx:TabPage Name="System" Text="System">
                                            <ContentCollection>
                                                <dx:ContentControl runat="server">
                                                    <dx:ASPxFormLayout ID="ASPxFormLayout_System" runat="server">
                                                        <Items>
                                                            <dx:LayoutGroup Caption="" ColCount="2">
                                                                <Items>
                                                                    <dx:LayoutItem Caption="Standard System Option #1">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="S1O_combo" runat="server" ClientInstanceName="S1O_combo">
                                                                                    <ClientSideEvents SelectedIndexChanged ="OnOptionChanged" />                                                                                
                                                                                    <Items>
                                                                                        <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        <dx:ListEditItem Text="No" Value="No" />
                                                                                    </Items>
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Standard System Option #2">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="ASPxFormLayout_System_E2" runat="server" Height="21px" Width="170px">
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="TargetCaption">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxTextBox ID="S1Title" runat="server" ClientInstanceName="S1Title">
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>

<CaptionStyle CssClass="TargetCaption"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="System #2 Title">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxTextBox ID="ASPxFormLayout_System_E6" runat="server">
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="Sys_NewCaptiion">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="S1Type" runat="server" ClientInstanceName="S1Type">
                                                                                    <Items>
                                                                                        <dx:ListEditItem Text="Split" Value="0" />
                                                                                        <dx:ListEditItem Text="Package" Value="1" />
                                                                                    </Items>
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>

<CaptionStyle CssClass="Sys_NewCaptiion"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="System Type">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="ASPxFormLayout_System_E8" runat="server">
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="S1_UTorPU" runat="server" ClientInstanceName="S1_UTorPU">
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption=" Package Unit">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="ASPxFormLayout_System_E10" runat="server">
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="S1Capacity" runat="server" ClientInstanceName="S1Capacity">
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Capacity">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="ASPxFormLayout_System_E12" runat="server">
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="S1ID_TorH" runat="server" ClientInstanceName="S1ID_TorH">
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="ID Heat">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="ASPxFormLayout_System_E14" runat="server">
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                </Items>
                                                            </dx:LayoutGroup>
                                                        </Items>
                                                    </dx:ASPxFormLayout>
                                                </dx:ContentControl>
                                            </ContentCollection>
                                        </dx:TabPage>
                                        <dx:TabPage Name="OutDoor" Text="OutDoor">
                                            <ContentCollection>
                                                <dx:ContentControl runat="server">
                                                    <dx:ASPxFormLayout ID ="OutDoor_fl" runat="server">
                                                        <Items>
                                                            <dx:LayoutGroup Width="300px" Caption="" GroupBoxDecoration="None">
                                                                <Items>
                                                                    <dx:LayoutGroup Caption="">
                                                                        <Items>
                                                                            <dx:LayoutItem Caption="">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_fl_E1" runat="server" Height="16px" Width="361px">
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                <Paddings PaddingLeft="35px" />
                                                                            </dx:LayoutItem>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                    <dx:LayoutGroup Caption="">
                                                                        <Items>
                                                                            <dx:LayoutGroup Caption="" GroupBoxDecoration="None">
                                                                                <Items>
                                                                                    <dx:LayoutItem Caption="PAD">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxComboBox ID="OutDoor_fl_E3" runat="server" Height="16px" Width="361px">
                                                                                                </dx:ASPxComboBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                    </dx:LayoutItem>
                                                                                </Items>
                                                                            </dx:LayoutGroup>
                                                                            <dx:LayoutGroup Caption="" ColCount="2" GroupBoxDecoration="None">
                                                                                <Items>
                                                                                    <dx:LayoutItem Caption="Cost Add" Width="30px">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxTextBox ID="OutDoor_fl_E5" runat="server" Height="16px" Width="30px">
                                                                                                </dx:ASPxTextBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                        <Paddings PaddingLeft="60px" />
                                                                                    </dx:LayoutItem>
                                                                                    <dx:LayoutItem Caption="Time(Hrs.)" Width="30px">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxTextBox ID="OutDoor_fl_E6" runat="server" Height="16px" Width="30px">
                                                                                                </dx:ASPxTextBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                    </dx:LayoutItem>
                                                                                </Items>
                                                                            </dx:LayoutGroup>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                    <dx:LayoutGroup Caption="">
                                                                        <Items>
                                                                            <dx:LayoutGroup Caption="" GroupBoxDecoration="None">
                                                                                <Items>
                                                                                    <dx:LayoutItem Caption="MOVE">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxComboBox ID="OutDoor_fl_E2" runat="server" Height="16px" Width="354px">
                                                                                                </dx:ASPxComboBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                    </dx:LayoutItem>
                                                                                </Items>
                                                                            </dx:LayoutGroup>
                                                                            <dx:LayoutGroup Caption="" ColCount="2" GroupBoxDecoration="None">
                                                                                <Items>
                                                                                    <dx:LayoutItem Caption="Cost Add">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxTextBox ID="OutDoor_fl_E4" runat="server" Height="16px" Width="30px">
                                                                                                </dx:ASPxTextBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                        <Paddings PaddingLeft="60px" />
                                                                                    </dx:LayoutItem>
                                                                                    <dx:LayoutItem Caption="Time(Hrs.)">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxTextBox ID="OutDoor_fl_E7" runat="server" Height="16px" Width="30px">
                                                                                                </dx:ASPxTextBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                    </dx:LayoutItem>
                                                                                </Items>
                                                                            </dx:LayoutGroup>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                    <dx:LayoutGroup Caption="">
                                                                        <Items>
                                                                            <dx:LayoutGroup Caption="" GroupBoxDecoration="None">
                                                                                <Items>
                                                                                    <dx:LayoutItem Caption="Electric">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxComboBox ID="OutDoor_fl_E8" runat="server" Height="16px" Width="350px">
                                                                                                </dx:ASPxComboBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                    </dx:LayoutItem>
                                                                                </Items>
                                                                            </dx:LayoutGroup>
                                                                            <dx:LayoutGroup Caption="" ColCount="2" GroupBoxDecoration="None">
                                                                                <Items>
                                                                                    <dx:LayoutItem Caption="Cost Add">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxTextBox ID="OutDoor_fl_E9" runat="server" Height="16px" Width="30px">
                                                                                                </dx:ASPxTextBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                        <Paddings PaddingLeft="60px" />
                                                                                    </dx:LayoutItem>
                                                                                    <dx:LayoutItem Caption="Time(Hrs.)">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxTextBox ID="OutDoor_fl_E10" runat="server" Height="16px" Width="30px">
                                                                                                </dx:ASPxTextBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                    </dx:LayoutItem>
                                                                                </Items>
                                                                            </dx:LayoutGroup>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                    <dx:LayoutGroup Caption="">
                                                                        <Items>
                                                                            <dx:LayoutGroup Caption="" GroupBoxDecoration="None">
                                                                                <Items>
                                                                                    <dx:LayoutItem Caption="LIFTING">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxComboBox ID="OutDoor_fl_E15" runat="server" Height="16px" Width="345px">
                                                                                                </dx:ASPxComboBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                    </dx:LayoutItem>
                                                                                </Items>
                                                                            </dx:LayoutGroup>
                                                                            <dx:LayoutGroup Caption="" ColCount="2" GroupBoxDecoration="None">
                                                                                <Items>
                                                                                    <dx:LayoutItem Caption="Cost Add">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxTextBox ID="OutDoor_fl_E12" runat="server" Height="16px" Width="30px">
                                                                                                </dx:ASPxTextBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                        <Paddings PaddingLeft="60px" />
                                                                                    </dx:LayoutItem>
                                                                                    <dx:LayoutItem Caption="Time(Hrs.)">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxTextBox ID="OutDoor_fl_E13" runat="server" Height="16px" Width="30px">
                                                                                                </dx:ASPxTextBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                    </dx:LayoutItem>
                                                                                </Items>
                                                                            </dx:LayoutGroup>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                    <dx:LayoutGroup Caption="">
                                                                        <Items>
                                                                            <dx:LayoutItem Caption="Special Notes/Conditions">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_fl_E11" runat="server" Height="16px" Width="270px">
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                <Paddings PaddingLeft="15px" />
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Responsible/Liable Party">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_fl_E14" runat="server" Height="16px" Width="270px">
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                <Paddings PaddingLeft="15px" />
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Display Note">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_fl_E16" runat="server" Height="16px" Width="270px">
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                <Paddings PaddingLeft="15px" />
                                                                            </dx:LayoutItem>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                </Items>
                                                            </dx:LayoutGroup>

                                                        </Items>
                                                    </dx:ASPxFormLayout>
                                                </dx:ContentControl>
                                            </ContentCollection>
                                        </dx:TabPage>
                                        <dx:TabPage Name="InDoor" Text="InDoor">
                                            <ContentCollection>
                                                <dx:ContentControl runat="server">
                                                   

                                                </dx:ContentControl>
                                            </ContentCollection>
                                        </dx:TabPage>
                                        <dx:TabPage Name="Ducting" Text="Ducting">
                                            <ContentCollection>
                                                <dx:ContentControl runat="server"></dx:ContentControl>
                                            </ContentCollection>
                                        </dx:TabPage>
                                        <dx:TabPage Name="Electircal" Text="Electrical">
                                            <ContentCollection>
                                                <dx:ContentControl runat="server"></dx:ContentControl>
                                            </ContentCollection>
                                        </dx:TabPage>
                                        <dx:TabPage Name="Piping" Text="Piping">
                                            <ContentCollection>
                                                <dx:ContentControl runat="server"></dx:ContentControl>
                                            </ContentCollection>
                                        </dx:TabPage>
                                        <dx:TabPage Name="Add-On" Text="Add-On">
                                            <ContentCollection>
                                                <dx:ContentControl runat="server"></dx:ContentControl>
                                            </ContentCollection>
                                        </dx:TabPage>
                                    </TabPages>
                                </dx:ASPxPageControl>
                                <br />
                                <br />


                                <dx:ASPxButton ID="btnFinish" runat="server" Text="Finish" ValidationGroup="groupProposalType"
                                    AutoPostBack="false" Width="150">
                                    <ClientSideEvents Click="OnFinishClick" />
                                </dx:ASPxButton>
                                <dx:ASPxValidationSummary ID="validProposalType" ValidationGroup="groupProposalType"
                                    runat="server">
                                </dx:ASPxValidationSummary>
                            </dx:ContentControl>
                        </ContentCollection>
                    </dx:TabPage>
                </TabPages>
            </dx:ASPxPageControl>
            <br />
        </div>
        <dx:ASPxPopupControl ID="popupControl" runat="server" CloseAction="CloseButton" ClientInstanceName="popupControl"
            HeaderText="Summary" PopupHorizontalAlign="OutsideRight" PopupHorizontalOffset="10">
            <ContentCollection>
                <dx:PopupControlContentControl runat="server">
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
    </div>
</asp:Content>
