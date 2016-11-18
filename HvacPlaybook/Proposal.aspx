<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Proposal.aspx.cs" ViewStateMode="Enabled" EnableViewState="true" Inherits="HvacPlaybook.Proposal" %>

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

            function Sys_OnNextClick(s, e) {
                var indexTab = (standar_pagecontrol.GetActiveTab()).index;
                standar_pagecontrol.SetActiveTab(standar_pagecontrol.GetTab(indexTab + 1));
                var str ='    '+ S1Title.GetValue() + ':' + ' ' + S1Capacity.GetValue()+' ' + S1Type.GetValue()+' ' + S1_UTorPU.GetValue()+' ' + '&' +' '+ S1ID_TorH.GetValue();
                // alert(str);
                OutDoor_tb_1.SetValue(str);

                var str2 = '    ' + S2Title.GetValue() + ':' + ' ' + S2Capacity.GetValue() + ' ' + S2Type.GetValue() + ' ' + S2_UTorPU.GetValue() + ' ' + '&' + ' ' + S2ID_TorH.GetValue();
                OutDoor_tb_2.SetValue(str2);
            }


            function OnSelectedIndexChanged(s, e) {

                var value = s.GetValue();
                if (value == "Standard or Ductless HVAC") {
                   standar_pagecontrol.SetVisible(true);
               }
            }

            function OutDoor_Pad_1_OnSelectedChanged(s, e) {
                var value = s.GetValue();
                switch (value) {
                    case "On a new 36x36 concrete-type Hurricane Rated Pad":
                        OutDoor_Pad_1_Cost.SetVisible(true);
                        OutDoor_Pad_1_Time.SetVisible(true);
                        $('.OutDoor_Pad_1_Cost_Caption').text('Cost Add:');
                        $('.OutDoor_Pad_1_Time_Caption').text('Time(Hrs.):');
                        OutDoor_Pad_1_Cost.SetValue("$75");
                        OutDoor_Pad_1_Time.SetValue("1.00");
                        break;
                    case "On a new 40x40 concrete-type Hurricane Rated Pad":
                        OutDoor_Pad_1_Cost.SetVisible(true);
                        OutDoor_Pad_1_Time.SetVisible(true);
                        $('.OutDoor_Pad_1_Cost_Caption').text('Cost Add:');
                        $('.OutDoor_Pad_1_Time_Caption').text('Time(Hrs.):');
                        OutDoor_Pad_1_Cost.SetValue("$75");
                        OutDoor_Pad_1_Time.SetValue("1.00");
                        break;
                    case "On a new 36x48 concrete-type Hurricane Rated Pad":
                        OutDoor_Pad_1_Cost.SetVisible(true);
                        OutDoor_Pad_1_Time.SetVisible(true);
                        $('.OutDoor_Pad_1_Cost_Caption').text('Cost Add:');
                        $('.OutDoor_Pad_1_Time_Caption').text('Time(Hrs.):');
                        OutDoor_Pad_1_Cost.SetValue("$75");
                        OutDoor_Pad_1_Time.SetValue("1.00");
                        break;
                    case "On a new 40x62 concrete-type Hurricane Rated Pad":
                        OutDoor_Pad_1_Cost.SetVisible(true);
                        OutDoor_Pad_1_Time.SetVisible(true);
                        $('.OutDoor_Pad_1_Cost_Caption').text('Cost Add:');
                        $('.OutDoor_Pad_1_Time_Caption').text('Time(Hrs.):');
                        OutDoor_Pad_1_Cost.SetValue("$100");
                        OutDoor_Pad_1_Time.SetValue("1.00");
                        break;
                    case "On a new 47x66 concrete-type Hurricane Rated Pad":
                        OutDoor_Pad_1_Cost.SetVisible(true);
                        OutDoor_Pad_1_Time.SetVisible(true);
                        $('.OutDoor_Pad_1_Cost_Caption').text('Cost Add:');
                        $('.OutDoor_Pad_1_Time_Caption').text('Time(Hrs.):');
                        OutDoor_Pad_1_Cost.SetValue("$100");
                        OutDoor_Pad_1_Time.SetValue("1.00");
                        break;
                    case "On existing Pad w/ new Hurricane Strapping":
                        OutDoor_Pad_1_Cost.SetVisible(true);
                        OutDoor_Pad_1_Time.SetVisible(true);
                        $('.OutDoor_Pad_1_Cost_Caption').text('Cost Add:');
                        $('.OutDoor_Pad_1_Time_Caption').text('Time(Hrs.):');
                        OutDoor_Pad_1_Cost.SetValue("$10");
                        OutDoor_Pad_1_Time.SetValue("0.25");
                        break;
                    case "On a new Aluminum Stand w/ Hurricane Strapping":
                        OutDoor_Pad_1_Cost.SetVisible(true);
                        OutDoor_Pad_1_Time.SetVisible(true);
                        $('.OutDoor_Pad_1_Cost_Caption').text('Cost Add:');
                        $('.OutDoor_Pad_1_Time_Caption').text('Time(Hrs.):');
                        OutDoor_Pad_1_Cost.SetValue("$475");
                        OutDoor_Pad_1_Time.SetValue("2.00");
                        break;
                    case "Other:":
                        OutDoor_Pad_1_Des.SetVisible(true);
                        OutDoor_Pad_1_Cost.SetVisible(true);
                        OutDoor_Pad_1_Time.SetVisible(true);
                        $('.OutDoor_Pad_1_Des_Caption').text('Description:');
                        $('.OutDoor_Pad_1_Cost_Caption').text('Cost Add:');
                        $('.OutDoor_Pad_1_Time_Caption').text('Time(Hrs.):');
                        OutDoor_Pad_1_Cost.SetValue("$0");
                        OutDoor_Pad_1_Time.SetValue("0.00");
                        break;
                }
  
        
            }

            function S1O_combo_OnSelectChanged(s, e) {
                var value = s.GetValue();
                if (value == "Yes") { 
                    S1Title.SetVisible(true);
                    S1Type.SetVisible(true);
                    S1Type.PerformCallback();
                      
                    OutDoor_fl.GetItemByName("Standar_System_#1").SetVisible(true);
                    $('.TargetCaption').text('System #1 Title:');
                    $('.Sys_NewCaption').text('System Type:');
             
                } else {
                    S1Title.SetVisible(false);
                    S1Type.SetVisible(false);
                    S1_UTorPU.SetVisible(false);
                    S1Capacity.SetVisible(false);
                    S1ID_TorH.SetVisible(false);

                    OutDoor_fl.GetItemByName("Standar_System_#1").SetVisible(false);
                    $('.TargetCaption').text(' ');
                    $('.Sys_NewCaption').text(' ');
                    $('.S1_UTorPU_NewCaption').text(' ');
                    $('.S1Capacity_NewCaption').text(' ');
                    $('.S1ID_TorH_NewCaption').text(' ');

                    S1Type.ClearItems();
                    S1Title.Clear();

                }

            }

            function S2O_combo_OnSelectChanged(s,e) {
                var value = s.GetValue();
                if (value == "Yes") {
                    S2Title.SetVisible(true);
                    S2Type.SetVisible(true);
                    S2Type.PerformCallback();

                    OutDoor_fl.GetItemByName("Standar_System_#2").SetVisible(true);
                    $('.TargetCaption2').text('System #2 Title:');
                    $('.Sys_NewCaption2').text('System Type:');

                } else {
                    S2Title.SetVisible(false);
                    S2Type.SetVisible(false);
                    S2_UTorPU.SetVisible(false);
                    S2Capacity.SetVisible(false);
                    S2ID_TorH.SetVisible(false);

                    OutDoor_fl.GetItemByName("Standar_System_#2").SetVisible(false);
                    $('.TargetCaption2').text(' ');
                    $('.Sys_NewCaption2').text(' ');
                    $('.S1_UTorPU_NewCaption2').text(' ');
                    $('.S1Capacity_NewCaption2').text(' ');
                    $('.S1ID_TorH_NewCaption2').text(' ');

                    S2Type.ClearItems();
                    S2Title.Clear();
                }
            }

            function S1Type_OnSelectedChanged(s,e) {
                var value = s.GetValue();
                if (value == "Split") {

                    S1_UTorPU.SetVisible(true);
                    S1Capacity.SetVisible(true);
                    S1ID_TorH.SetVisible(true);
                    $('.S1_UTorPU_NewCaption').text('OD Unit Type:');
                    $('.S1Capacity_NewCaption').text('Capacity:');
                    $('.S1ID_TorH_NewCaption').text('ID Type:');

                    S1_UTorPU.PerformCallback();
                    S1Capacity.PerformCallback();
                    S1ID_TorH.PerformCallback();
                    
                } else {

                    S1_UTorPU.SetVisible(true);
                    S1Capacity.SetVisible(true);
                    S1ID_TorH.SetVisible(true);
                    $('.S1_UTorPU_NewCaption').text('Package Unit:');
                    $('.S1Capacity_NewCaption').text('Capacity:');
                    $('.S1ID_TorH_NewCaption').text('ID Heat:');

                    S1_UTorPU.PerformCallback();
                    S1Capacity.PerformCallback();
                    S1ID_TorH.PerformCallback();

                }
            }

            function S2Type_OnSelectedChanged(s, e) {
                var value = s.GetValue();
                if (value == "Split") {

                    S2_UTorPU.SetVisible(true);
                    S2Capacity.SetVisible(true);
                    S2ID_TorH.SetVisible(true);
                    $('.S1_UTorPU_NewCaption2').text('OD Unit Type:');
                    $('.S1Capacity_NewCaption2').text('Capacity:');
                    $('.S1ID_TorH_NewCaption2').text('ID Type:');

                    S2_UTorPU.PerformCallback();
                    S2Capacity.PerformCallback();
                    S2ID_TorH.PerformCallback();

                } else {

                    S2_UTorPU.SetVisible(true);
                    S2Capacity.SetVisible(true);
                    S2ID_TorH.SetVisible(true);
                    $('.S1_UTorPU_NewCaption2').text('Package Unit:');
                    $('.S1Capacity_NewCaption2').text('Capacity:');
                    $('.S1ID_TorH_NewCaption2').text('ID Heat:');

                    S2_UTorPU.PerformCallback();
                    S2Capacity.PerformCallback();
                    S2ID_TorH.PerformCallback();

                }
            }

            function S1_UTorPU_OnSelectChanged(s,e) {
                S1Capacity.PerformCallback(S1_UTorPU.GetValue().toString());
                S1ID_TorH.PerformCallback(S1_UTorPU.GetValue().toString());
              
            }


            function S2_UTorPU_OnSelectChanged(s, e) {
                S2Capacity.PerformCallback(S2_UTorPU.GetValue().toString());
                S2ID_TorH.PerformCallback(S2_UTorPU.GetValue().toString());

            }

            function Duc_Sys_Opt1_OnSelectChange(s, e) {
                var value = s.GetValue();
                if (value == "Yes") {
                    Duc_Tag1.SetVisible(true);
                    Duc_Sys_Type1.SetVisible(true);
                    Duc_Sys_Type1.PerformCallback();
                    Duc_OD_Cap1.SetVisible(true);
                    $('.Duc_Tag1_NewCaption').text('Ductless Tag:');
                    $('.Duc_Sys_Type1_NewCaption').text('System Type:');
                    $('.Duc_OD_Cap1_NewCaption').text('OD Capacity:');

                   

                } else {
                    Duc_Tag1.SetVisible(false);
                    Duc_Sys_Type1.SetVisible(false);
                    Duc_OD_Cap1.SetVisible(false);
                    $('.Duc_Tag1_NewCaption').text(' ');
                    $('.Duc_Sys_Type1_NewCaption').text(' ');
                    $('.Duc_OD_Cap1_NewCaption').text(' ');

                    Duc_Sys_Type1.ClearItems();
                    Duc_Tag1.Clear();
                    Duc_OD_Cap1.ClearItems();
                }

                                  
            }

            function Duc_Sys_Opt2_OnSelectChange(s, e) {
                var value = s.GetValue();
                if (value == "Yes") {
                    Duc_Tag2.SetVisible(true);
                    Duc_Sys_Type2.SetVisible(true);
                    Duc_Sys_Type2.PerformCallback();
                    Duc_OD_Cap2.SetVisible(true);
                    $('.Duc_Tag2_NewCaption2').text('Ductless Tag:');
                    $('.Duc_Sys_Type2_NewCaption2').text('System Type:');
                    $('.Duc_OD_Cap2_NewCaption2').text('OD Capacity:');



                } else {
                    Duc_Tag2.SetVisible(false);
                    Duc_Sys_Type2.SetVisible(false);
                    Duc_OD_Cap2.SetVisible(false);
                    $('.Duc_Tag2_NewCaption2').text(' ');
                    $('.Duc_Sys_Type2_NewCaption2').text(' ');
                    $('.Duc_OD_Cap2_NewCaption2').text(' ');

                    Duc_Sys_Type2.ClearItems();
                    Duc_Tag2.Clear();
                    Duc_OD_Cap2.ClearItems();
                }


            }

            function Duc_Sys_Type1_OnSelectChanged(s, e) {
              
                Duc_OD_Cap1.PerformCallback(Duc_Sys_Type1.GetValue().toString());

            }


            function Duc_Sys_Type2_OnSelectChanged(s, e) {

                Duc_OD_Cap2.PerformCallback(Duc_Sys_Type2.GetValue().toString());

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
                <ClientSideEvents ActiveTabChanging="OnTabChanging"/>
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
                                <dx:ASPxPageControl ID="standar_pagecontrol" runat="server" ClientInstanceName="standar_pagecontrol" Width="400px" ActiveTabIndex="0"  >
                                  
                                    <TabPages>
                                        <dx:TabPage Name="System" Text="System" >
                                            <ContentCollection>
                                                <dx:ContentControl runat="server">
                                                    <dx:ASPxFormLayout ID="ASPxFormLayout_System" runat="server">
                                                        <Items>
                                                            <dx:LayoutGroup Caption="Standard System" GroupBoxStyle-Caption-Font-Bold="true" GroupBoxStyle-Caption-ForeColor="Black" ColCount="2">
<GroupBoxStyle>
<Caption Font-Bold="True"></Caption>
</GroupBoxStyle>
                                                                <Items>
                                                                    <dx:LayoutItem Caption="Standard System Option #1">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="S1O_combo" runat="server" ClientInstanceName="S1O_combo" EnableSynchronization ="False">
                                                                                    <ClientSideEvents SelectedIndexChanged ="S1O_combo_OnSelectChanged" />                                                                                
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
                                                                                <dx:ASPxComboBox ID="S2O_combo" runat="server" Height="21px" Width="170px" ClientInstanceName="S2O_combo">
                                                                                    <ClientSideEvents SelectedIndexChanged ="S2O_combo_OnSelectChanged" />
                                                                                    <Items>
                                                                                        <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        <dx:ListEditItem Text="No" Value="No" />
                                                                                    </Items>
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="TargetCaption">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxTextBox ID="S1Title" runat="server" ClientInstanceName="S1Title" >
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>

                                                                     <CaptionStyle CssClass="TargetCaption"></CaptionStyle>
                                                                    </dx:LayoutItem>

                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="TargetCaption2" >
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxTextBox ID="S2Title" runat="server" ClientInstanceName="S2Title" >
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>

                                                                      <CaptionStyle CssClass="TargetCaption2"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="Sys_NewCaption">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="S1Type" runat="server" ClientInstanceName="S1Type" EnableSynchronization="False" OnCallback="S1Type_cmb_Callback" >
                                                                                    <ClientSideEvents SelectedIndexChanged="S1Type_OnSelectedChanged" />
                                                                                    <Items>
                                                                                        <dx:ListEditItem Text="Split" Value="Split" />
                                                                                        <dx:ListEditItem Text="Package" Value="Package" />
                                                                                    </Items>
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>

                                                                            <CaptionStyle CssClass="Sys_NewCaption"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="Sys_NewCaption2">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="S2Type" runat="server" ClientInstanceName="S2Type" EnableSynchronization="False" OnCallback="S2Type_cmb_Callback">
                                                                                    <ClientSideEvents SelectedIndexChanged="S2Type_OnSelectedChanged" />
                                                                                    <Items>
                                                                                        <dx:ListEditItem Text="Split" Value="Split" />
                                                                                        <dx:ListEditItem Text="Package" Value="Package" />
                                                                                    </Items>
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                        <CaptionStyle CssClass="Sys_NewCaption2"></CaptionStyle>

                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="S1_UTorPU_NewCaption">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="S1_UTorPU" runat="server" ClientInstanceName="S1_UTorPU" OnCallback="S1_UTorPU_cmb_Callback" EnableSynchronization="False" >
                                                                                 <ClientSideEvents SelectedIndexChanged="S1_UTorPU_OnSelectChanged" />
                                                                                </dx:ASPxComboBox>
                                                                                
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>

                                                                       <CaptionStyle CssClass="S1_UTorPU_NewCaption"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="S1_UTorPU_NewCaption2">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="S2_UTorPU" runat="server" ClientInstanceName="S2_UTorPU" OnCallback="S2_UTorPU_cmb_Callback">
                                                                                      <ClientSideEvents SelectedIndexChanged="S2_UTorPU_OnSelectChanged" />
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                        <CaptionStyle CssClass="S1_UTorPU_NewCaption2"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="S1Capacity_NewCaption">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="S1Capacity" runat="server" ClientInstanceName="S1Capacity" OnCallback="S1Capacity_cmb_Callback" EnableSynchronization="False" >
                                                                                  
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>

                                                                        <CaptionStyle CssClass="S1Capacity_NewCaption"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="S1Capacity_NewCaption2">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="S2Capacity" runat="server" ClientInstanceName="S2Capacity" OnCallback="S2Capacity_cmb_Callback">
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                        <CaptionStyle CssClass="S1Capacity_NewCaption2"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="S1ID_TorH_NewCaption">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="S1ID_TorH" runat="server" ClientInstanceName="S1ID_TorH" OnCallback="S1ID_TorH_cmb_Callback" 
                                                                                    EnableSynchronization="False" >                                    
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>

                                                                            <CaptionStyle CssClass="S1ID_TorH_NewCaption"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="S1ID_TorH_NewCaption2">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="S2ID_TorH" runat="server" ClientInstanceName="S2ID_TorH" OnCallback="S2ID_TorH_cmb_Callback">
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                        <CaptionStyle CssClass="S1ID_TorH_NewCaption2"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                </Items>
                                                            </dx:LayoutGroup>
                                                            <dx:LayoutGroup Caption="Ductless System" GroupBoxStyle-Caption-Font-Bold="true" GroupBoxStyle-Caption-ForeColor="Black" ColCount="2" GroupBoxDecoration="Box">
<GroupBoxStyle>
<Caption Font-Bold="True" ForeColor="Black"></Caption>
</GroupBoxStyle>
                                                                <Items>
                                                                    <dx:LayoutItem Caption="Ductless System Option #1">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="Duc_Sys_Opt1" runat="server" ClientInstanceName="Duc_Sys_Opt1" EnableSynchronization ="False">
                                                                                    <ClientSideEvents SelectedIndexChanged="Duc_Sys_Opt1_OnSelectChange" />
                                                                                    <Items>
                                                                                        <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        <dx:ListEditItem Text="No" Value="No" />
                                                                                    </Items>
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="Ductless System Option #2">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="Duc_Sys_Opt2" runat="server" ClientInstanceName="Duc_Sys_Opt2" EnableSynchronization ="False">
                                                                                     <ClientSideEvents SelectedIndexChanged="Duc_Sys_Opt2_OnSelectChange" />
                                                                                    <Items>
                                                                                        <dx:ListEditItem Text="Yes" Value="Yes" />
                                                                                        <dx:ListEditItem Text="No" Value="No" />
                                                                                    </Items>
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="Duc_Tag1_NewCaption">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxTextBox ID="Duc_Tag1" runat="server" ClientInstanceName="Duc_Tag1">
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                        <CaptionStyle CssClass="Duc_Tag1_NewCaption"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="Duc_Tag2_NewCaption2">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxTextBox ID="Duc_Tag2" runat="server" ClientInstanceName="Duc_Tag2">
                                                                                </dx:ASPxTextBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                        <CaptionStyle CssClass="Duc_Tag2_NewCaption2"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="Duc_Sys_Type1_NewCaption">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="Duc_Sys_Type1" runat="server" ClientInstanceName="Duc_Sys_Type1" OnCallback ="Duc_Sys_Type1_cmb_Callback">
                                                                                    <ClientSideEvents SelectedIndexChanged="Duc_Sys_Type1_OnSelectChanged" />
                                                                                    <Items>
                                                                                        <dx:ListEditItem Text="Cooling Only Single Wall Head" Value="Cooling Only Single Wall Head" />
                                                                                        <dx:ListEditItem Text="Heat Pump W/Celling Unit" Value="Heat Pump W/Celling Unit" />
                                                                                        <dx:ListEditItem Text="Heat Pump and Wall Unit" Value="Heat Pump and Wall Unit" />
                                                                                        <dx:ListEditItem Text="Heat Pump and Wall Unit(High-Efficiency 3D)" Value="Heat Pump and Wall Unit(High-Efficiency 3D)" />
                                                                                        <dx:ListEditItem Text="Heat Pump Multi-port/Two Head" Value="Heat Pump Multi-port/Two Head" />
                                                                                        <dx:ListEditItem Text="Heat Pump Multi-port/Three Head" Value="Heat Pump Multi-port/Three Head" />
                                                                                        <dx:ListEditItem Text="Heat Pump Multi-port/Four Head" Value="Heat Pump Multi-port/Four Head" />
                                                                                        <dx:ListEditItem Text="Heat Pump Multi-port/Five Head" Value="Heat Pump Multi-port/Five Head" />
                                                                                    </Items>
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                         <CaptionStyle CssClass="Duc_Sys_Type1_NewCaption"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="Duc_Sys_Type2_NewCaption2">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="Duc_Sys_Type2" runat="server" ClientInstanceName="Duc_Sys_Type2" OnCallback ="Duc_Sys_Type2_cmb_Callback">
                                                                                     <ClientSideEvents SelectedIndexChanged="Duc_Sys_Type2_OnSelectChanged" />
                                                                                    <Items>
                                                                                        <dx:ListEditItem Text="Cooling Only Single Wall Head" Value="Cooling Only Single Wall Head" />
                                                                                        <dx:ListEditItem Text="Heat Pump W/Celling Unit" Value="Heat Pump W/Celling Unit" />
                                                                                        <dx:ListEditItem Text="Heat Pump and Wall Unit" Value="Heat Pump and Wall Unit" />
                                                                                        <dx:ListEditItem Text="Heat Pump and Wall Unit(High-Efficiency 3D)" Value="Heat Pump and Wall Unit(High-Efficiency 3D)" />
                                                                                        <dx:ListEditItem Text="Heat Pump Multi-port/Two Head" Value="Heat Pump Multi-port/Two Head" />
                                                                                        <dx:ListEditItem Text="Heat Pump Multi-port/Three Head" Value="Heat Pump Multi-port/Three Head" />
                                                                                        <dx:ListEditItem Text="Heat Pump Multi-port/Four Head" Value="Heat Pump Multi-port/Four Head" />
                                                                                        <dx:ListEditItem Text="Heat Pump Multi-port/Five Head" Value="Heat Pump Multi-port/Five Head" />
                                                                                    </Items>
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                         <CaptionStyle CssClass="Duc_Sys_Type2_NewCaption2"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="Duc_OD_Cap1_NewCaption">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="Duc_OD_Cap1" runat="server" ClientInstanceName="Duc_OD_Cap1" OnCallback="Duc_OD_Cap1_cmb_Callback">
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                        <CaptionStyle CssClass="Duc_OD_Cap1_NewCaption"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                    <dx:LayoutItem Caption="" CaptionStyle-CssClass="Duc_OD_Cap2_NewCaption2">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                <dx:ASPxComboBox ID="Duc_OD_Cap2" runat="server" ClientInstanceName="Duc_OD_Cap2" OnCallback="Duc_OD_Cap1_cmb_Callback">
                                                                                </dx:ASPxComboBox>
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                        <CaptionStyle CssClass="Duc_OD_Cap2_NewCaption2"></CaptionStyle>
                                                                    </dx:LayoutItem>
                                                                </Items>
                                                            </dx:LayoutGroup>
                                                        </Items>
                                                    </dx:ASPxFormLayout>
                                                    <dx:ASPxButton ID="System_btnNext" runat="server" Text="Next" ValidationGroup="groupSystem"
                                                          AutoPostBack="false" Width="150">
                                                            <ClientSideEvents Click="Sys_OnNextClick" />
                                                    </dx:ASPxButton>                             
                                                </dx:ContentControl>
                                            </ContentCollection>
                                        </dx:TabPage>
                                        <dx:TabPage Name="Outdoor" Text="Outdoor" >
                                            <ContentCollection>
                                                <dx:ContentControl runat="server">
                                                    <dx:ASPxFormLayout ID ="OutDoor_fl" runat="server" ColCount="2" ClientInstanceName="OutDoor_fl">
                                                        <Items>
                                                            <dx:LayoutGroup Caption="Standar System #1" GroupBoxStyle-Caption-Font-Bold="true" GroupBoxStyle-Caption-ForeColor="Black" ColCount="2" Name="Standar_System_#1" ClientVisible="false">
<GroupBoxStyle>
<Caption Font-Bold="True" ForeColor="Black"></Caption>
</GroupBoxStyle>
                                                                <Items>
                                                                    <dx:LayoutGroup ColSpan="2" GroupBoxDecoration="None">
                                                                        <Items>
                                                                            <dx:LayoutItem Caption="">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_tb_1" runat="server" Width="354px" ClientInstanceName="OutDoor_tb_1" OnCallback="OutDoor_tb_1_Callback" Height="20px">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                <Paddings PaddingLeft="42px" />
                                                                            </dx:LayoutItem>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                    <dx:LayoutGroup ColCount="2" ColSpan="2" GroupBoxDecoration="None" Caption="">
                                                                        <Items>
                                                                            <dx:LayoutItem Caption="PAD" ColSpan="2">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_Pad_1" runat="server" Height="20px" Width="356px" ClientInstanceName="OutDoor_Pad_1">
                                                                                            <ClientSideEvents SelectedIndexChanged="OutDoor_Pad_1_OnSelectedChanged" />
                                                                                            <Items>
                                                                                                <dx:ListEditItem Text="On a new 36x36 concrete-type Hurricane Rated Pad" Value="On a new 36x36 concrete-type Hurricane Rated Pad" />
                                                                                                <dx:ListEditItem Text="On a new 40x40 concrete-type Hurricane Rated Pad" Value="On a new 40x40 concrete-type Hurricane Rated Pad" />
                                                                                                <dx:ListEditItem Text="On a new 36x48 concrete-type Hurricane Rated Pad" Value="On a new 36x48 concrete-type Hurricane Rated Pad" />
                                                                                                <dx:ListEditItem Text="On a new 40x62 concrete-type Hurricane Rated Pad" Value="On a new 40x62 concrete-type Hurricane Rated Pad" />
                                                                                                <dx:ListEditItem Text="On a new 47x66 concrete-type Hurricane Rated Pad" Value="On a new 47x66 concrete-type Hurricane Rated Pad" />
                                                                                                <dx:ListEditItem Text="On existing Pad w/ new Hurricane Strapping" Value="On existing Pad w/ new Hurricane Strapping" />
                                                                                                <dx:ListEditItem Text="On a new Aluminum Stand w/ Hurricane Strapping" Value="On a new Aluminum Stand w/ Hurricane Strapping" />
                                                                                                <dx:ListEditItem Text="Other:" Value="Other:" />
                                                                                            </Items>
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                 <Paddings PaddingLeft="20px" />
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="" ColSpan="2" CaptionStyle-CssClass ="OutDoor_Pad_1_Des_Caption">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Pad_1_Des" runat="server" ClientInstanceName="OutDoor_Pad_1_Des"  Width="343px">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                <CaptionStyle CssClass="OutDoor_Pad_1_Des_Caption"></CaptionStyle>
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Pad_1_Cost" runat="server" Height="17px" Width="34px" ClientInstanceName="OutDoor_Pad_1_Cost" CaptionStyle-CssClass ="OutDoor_Pad_1_Cost_Caption">
<CaptionStyle CssClass="OutDoor_Pad_1_Cost_Caption"></CaptionStyle>
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                 <CaptionStyle CssClass="OutDoor_Pad_1_Cost_Caption"></CaptionStyle>
                                                                                <Paddings PaddingLeft="60px" />
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="" CaptionStyle-CssClass ="OutDoor_Pad_1_Time_Caption">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Pad_1_Time" runat="server" Height="17px" Width="31px" ClientInstanceName="OutDoor_Pad_1_Time">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                <CaptionStyle CssClass="OutDoor_Pad_1_Time_Caption"></CaptionStyle>
                                                                            </dx:LayoutItem>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                    <dx:LayoutGroup ColCount="2" ColSpan="2" GroupBoxDecoration="None" Caption="">
                                                                        <Items>
                                                                            <dx:LayoutItem Caption="MOVE" ColSpan="2">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_Move_1" runat="server" Height="16px" Width="354px" ClientInstanceName="OutDoor_Move_1">
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Cost Add">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Move_1_Cost" runat="server" Height="16px" Width="30px" ClientInstanceName="OutDoor_Move_1_Cost">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                <Paddings PaddingLeft="60px" />
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Time(Hrs.)">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Move_1_Time" runat="server" Height="16px" Width="30px" ClientInstanceName="OutDoor_Move_1_Time">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                            </dx:LayoutItem>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                    <dx:LayoutGroup ColCount="2" ColSpan="2" GroupBoxDecoration="None">
                                                                        <Items>
                                                                            <dx:LayoutItem Caption="ELECTRIC" ColSpan="2">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_Electirc_1" runat="server" Height="16px" Width="350px" ClientInstanceName="OutDoor_Electirc_1">
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Cost Add">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Electirc_1_Cost" runat="server" Height="16px" Width="30px" ClientInstanceName="OutDoor_Electirc_1_Cost">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                <Paddings PaddingLeft="60px" />
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Time(Hrs.)">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Electirc_1_Time" runat="server" Height="16px" Width="30px" ClientInstanceName="OutDoor_Electirc_1_Time">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                            </dx:LayoutItem>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                    <dx:LayoutGroup ColCount="2" ColSpan="2" GroupBoxDecoration="None">
                                                                        <Items>
                                                                            <dx:LayoutItem Caption="LIFTING" ColSpan="2">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_Lifting_1" runat="server" Height="16px" Width="353px" ClientInstanceName="OutDoor_Lifting_1">
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Cost Add">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Lifting_1_Cost" runat="server" Height="16px" Width="30px" ClientInstanceName="OutDoor_Lifting_1_Cost">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                <Paddings PaddingLeft="60px" />
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Time(Hrs.)">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Lifting_1_Time" runat="server" Height="16px" Width="30px" ClientInstanceName="OutDoor_Lifting_1_Time">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                            </dx:LayoutItem>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                    <dx:LayoutGroup ColSpan="2" GroupBoxDecoration="None" ColCount="2">
                                                                        <Items>
                                                                            <dx:LayoutItem Caption="Special Notes/Conditions" ColSpan="2">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_SN_Conditions_1" runat="server" Height="16px" Width="280px" ClientInstanceName="OutDoor_SN_Conditions_1">
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                              
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Responsible/Liable Party" ColSpan="2">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_Responsible_LP_1" runat="server" Height="16px" Width="280px" ClientInstanceName="OutDoor_Responsible_LP_1">
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                              
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Display Note" ColSpan="2" >
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxMemo ID="OutDoor_DN_1" runat="server" Width="100%" ClientInstanceName="OutDoor_DN_1">
                                                                                        </dx:ASPxMemo>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                              
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutGroup Caption="" ColCount="2" ColSpan="2" GroupBoxDecoration="None">
                                                                                <Items>
                                                                                    <dx:LayoutItem Caption="Cost Add">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxTextBox ID="OutDoor_SN_Conditions_1_Cost" runat="server" Height="16px" Width="30px" ClientInstanceName="OutDoor_SN_Conditions_1_Cost">
                                                                                                </dx:ASPxTextBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                        <Paddings PaddingLeft="60px" />
                                                                                    </dx:LayoutItem>
                                                                                    <dx:LayoutItem Caption="Time(Hrs.)">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxTextBox ID="OutDoor_SN_Conditions_1_Time" runat="server" Height="16px" Width="30px" ClientInstanceName="OutDoor_SN_Conditions_1_Time">
                                                                                                </dx:ASPxTextBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                    </dx:LayoutItem>
                                                                                </Items>
                                                                            </dx:LayoutGroup>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                </Items>
                                                            </dx:LayoutGroup>

                                                            <dx:LayoutGroup Caption="Standar System #2" GroupBoxStyle-Caption-Font-Bold="true" GroupBoxStyle-Caption-ForeColor="Black" ColCount="2" Name="Standar_System_#2" ClientVisible="false">
<GroupBoxStyle>
<Caption Font-Bold="True" ForeColor="Black"></Caption>
</GroupBoxStyle>
                                                                <Items>
                                                                    <dx:LayoutGroup Caption="" GroupBoxDecoration="None" ColSpan="2">
                                                                        <Items>
                                                                            <dx:LayoutItem Caption="">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_tb_2" runat="server" Width="354px" ClientInstanceName="OutDoor_tb_2">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                <Paddings PaddingLeft="42px" />
                                                                            </dx:LayoutItem>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                    <dx:LayoutGroup Caption="" ColCount="2" GroupBoxDecoration="None" ColSpan="2">
                                                                        <Items>
                                                                            <dx:LayoutItem Caption="PAD" ColSpan="2">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_Pad_2" runat="server"  Width="354px" ClientInstanceName="OutDoor_Pad_2">
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Cost Add">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Pad_2_Cost" runat="server" Height="17px" Width="30px" ClientInstanceName="OutDoor_Pad_2_Cost">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                <Paddings PaddingLeft="60px" />
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Time(Hrs.)">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Pad_2_Time" runat="server" Height="17px" Width="30px" ClientInstanceName="OutDoor_Pad_2_Time">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                            </dx:LayoutItem>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                    <dx:LayoutGroup Caption="" ColCount="2" GroupBoxDecoration="None" ColSpan="2">
                                                                        <Items>
                                                                            <dx:LayoutItem Caption="MOVE:" ColSpan="2">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_Move_2" runat="server" Width="354px" ClientInstanceName="OutDoor_Move_2">
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Cost Add">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Move_2_Cost" runat="server" Height="16px"  Width="30px" ClientInstanceName="OutDoor_Move_2_Cost">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                 <Paddings PaddingLeft="60px" />
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Time(Hrs.)">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Move_2_Time" runat="server" Height="16px" Width="30px" ClientInstanceName="OutDoor_Move_2_Time">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                
                                                                            </dx:LayoutItem>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                    <dx:LayoutGroup Caption="" ColCount="2" GroupBoxDecoration="None" ColSpan="2">
                                                                        <Items>
                                                                            <dx:LayoutItem Caption="ElECTRIC" ColSpan="2">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_Electric_2" runat="server" Height="16px" Width="350px" ClientInstanceName="OutDoor_Electric_2">
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Cost Add">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Electric_2_Cost" runat="server" Height="16px" Width="30px" ClientInstanceName="OutDoor_Electric_2_Cost">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                 <Paddings PaddingLeft="60px" />
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Time(Hrs.)">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Electric_2_Time" runat="server" Height="16px" Width="30px" ClientInstanceName="OutDoor_Electric_2_Time">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                
                                                                            </dx:LayoutItem>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                    <dx:LayoutGroup Caption="" ColCount="2" GroupBoxDecoration="None" ColSpan="2">
                                                                        <Items>
                                                                            <dx:LayoutItem Caption="LIFTING" ColSpan="2">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_Lifting_2" runat="server" Height="16px" Width="353px" ClientInstanceName="OutDoor_Lifting_2">
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Cost Add">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Lifting_2_Cost" runat="server" Height="16px" Width="30px" ClientInstanceName="OutDoor_Lifting_2_Cost">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                                <Paddings PaddingLeft="60px" />
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Time(Hrs.)">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxTextBox ID="OutDoor_Lifting_2_Time" runat="server" Height="16px" Width="30px" ClientInstanceName="OutDoor_Lifting_2_Time">
                                                                                        </dx:ASPxTextBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                            </dx:LayoutItem>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                    <dx:LayoutGroup Caption="" GroupBoxDecoration="None" ColCount="2" ColSpan="2">
                                                                        <Items>
                                                                            <dx:LayoutItem Caption="Special Notes/Conditions" ColSpan="2">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_SN_Condition_2" runat="server" Height="16px" Width="280px" ClientInstanceName="OutDoor_SN_Condition_2">
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Responsible/Liable Party" ColSpan="2">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxComboBox ID="OutDoor_Responsible_LP_2" runat="server" Height="16px" Width="280px" ClientInstanceName="OutDoor_Responsible_LP_2">
                                                                                        </dx:ASPxComboBox>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutItem Caption="Display Note" ColSpan="2">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                                        <dx:ASPxMemo ID="OutDoor_DN_2" runat="server" Width="100%" ClientInstanceName="OutDoor_DN_2">
                                                                                        </dx:ASPxMemo>
                                                                                    </dx:LayoutItemNestedControlContainer>
                                                                                </LayoutItemNestedControlCollection>
                                                                            </dx:LayoutItem>
                                                                            <dx:LayoutGroup Caption="" ColCount="2" ColSpan="2" GroupBoxDecoration="None">
                                                                                <Items>
                                                                                    <dx:LayoutItem Caption="Cost Add">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxTextBox ID="OutDoor_SN_Condition_2_Cost" runat="server" Height="16px" Width="30px" ClientInstanceName="OutDoor_SN_Condition_2_Cost">
                                                                                                </dx:ASPxTextBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                        <Paddings PaddingLeft="60px" />
                                                                                    </dx:LayoutItem>
                                                                                    <dx:LayoutItem Caption="Time(Hrs.)">
                                                                                        <LayoutItemNestedControlCollection>
                                                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                                                <dx:ASPxTextBox ID="OutDoor_SN_Condition_2_Time" runat="server" Height="16px" Width="30px" ClientInstanceName="OutDoor_SN_Condition_2_Time">
                                                                                                </dx:ASPxTextBox>
                                                                                            </dx:LayoutItemNestedControlContainer>
                                                                                        </LayoutItemNestedControlCollection>
                                                                                    </dx:LayoutItem>
                                                                                </Items>
                                                                            </dx:LayoutGroup>
                                                                        </Items>
                                                                    </dx:LayoutGroup>
                                                                </Items>
                                                            </dx:LayoutGroup>

                                                        </Items>
                                                    </dx:ASPxFormLayout>
                                                </dx:ContentControl>
                                            </ContentCollection>
                                        </dx:TabPage>
                                        <dx:TabPage Name="Indoor" Text="Indoor">
                                            <ContentCollection>
                                                <dx:ContentControl runat="server">
                                                   

                                                </dx:ContentControl>
                                            </ContentCollection>
                                        </dx:TabPage>
                                        <dx:TabPage Name="Ducting" Text="Ducting" >
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
                                        <dx:TabPage Name="Add-On" Text="Add-On" >
                                            <ContentCollection>
                                                <dx:ContentControl runat="server"></dx:ContentControl>
                                            </ContentCollection>
                                        </dx:TabPage>
                                    </TabPages>
                                </dx:ASPxPageControl>
                                <br />
                                <br />

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
