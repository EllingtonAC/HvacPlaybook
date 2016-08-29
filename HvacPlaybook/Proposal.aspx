<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Proposal.aspx.cs" Inherits="HvacPlaybook.Proposal" %>
<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

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
                ActiveTabIndex="0" EnableHierarchyRecreation="true" Width="800">
                <ClientSideEvents ActiveTabChanging="OnTabChanging" />
                <TabPages>
                    <dx:TabPage Name="CustomerInfo" Text="Customer Information" ActiveTabStyle-Font-Bold="true">
                        <ContentCollection>
                            <dx:ContentControl runat="server">
                                <table border="0">
                                    <tr>
                                        <td style="width:180px">
                                            <dx:ASPxLabel ID="lblFirstName" runat="server" Text="First name"/>
                                            <dx:ASPxTextBox ID="txtFirstName" runat="server" Width="170px" ClientInstanceName="txtFirstName">
                                                <ValidationSettings SetFocusOnError="True" ValidationGroup="groupCustomerInfo">
                                                    <RequiredField IsRequired="True" ErrorText="First Name is required" />
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </td>
                                        <td>&nbsp;&nbsp;</td>
                                        <td style="width:180px" colspan="3">
                                            <dx:ASPxLabel ID="lblLastName" runat="server" Text="Last name"/>
                                            <dx:ASPxTextBox ID="txtLastName" runat="server" Width="170px" ClientInstanceName="txtLastName">
                                                <ValidationSettings SetFocusOnError="true" ValidationGroup="groupCustomerInfo">
                                                    <RequiredField IsRequired="true" ErrorText="Last Name is required" />
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:180px">
                                            <dx:ASPxLabel ID="lblStreet" runat="server" Text="Street"/>
                                            <dx:ASPxTextBox ID="txtStreet" runat="server" Width="170px" ClientInstanceName="txtStreet">
                                                <ValidationSettings SetFocusOnError="True" ValidationGroup="groupCustomerInfo">
                                                    <RequiredField IsRequired="True" ErrorText="Street is required" />
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </td>
                                        <td>&nbsp;&nbsp;</td>
                                        <td style="width:180px" colspan="3">
                                            <dx:ASPxLabel ID="lblAddStreet" runat="server" Text="Additional Street Info"/>
                                            <dx:ASPxTextBox ID="txtAddStreet" runat="server" Width="170px" ClientInstanceName="txtAddStreet"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:180px">
                                            <dx:ASPxLabel ID="lblCity" runat="server" Text="City"/>
                                            <dx:ASPxTextBox ID="txtCity" runat="server" Width="170px" ClientInstanceName="txtCity">
                                                <ValidationSettings SetFocusOnError="True" ValidationGroup="groupCustomerInfo">
                                                    <RequiredField IsRequired="True" ErrorText="City is required" />
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </td>
                                        <td>&nbsp;&nbsp;</td>
                                        <td style="width:180px">
                                            <dx:ASPxLabel ID="lblState" runat="server" Text="State"/>
                                            <dx:ASPxComboBox ID="cbState" runat="server" ValueType="System.String" ClientInstanceName="cbState" Width="170px">
                                                <Items>
                                                    <dx:ListEditItem Value="Alaska" Text="Alaska" />
                                                    <dx:ListEditItem Value="Indiana" Text="Indiana" />
                                                    <dx:ListEditItem Value="Kentucky" Text="Kentucky" />
                                                    <dx:ListEditItem Value="Minnesota" Text="Minnesota" />
                                                    <dx:ListEditItem Value="Nevada" Text="Nevada" />
                                                </Items>
                                                <ValidationSettings ValidationGroup="groupCustomerInfo" ValidateOnLeave="true" SetFocusOnError="true">
                                                    <RequiredField IsRequired="true" ErrorText="State is required" />
                                                </ValidationSettings>
                                            </dx:ASPxComboBox>
                                        </td>
                                        <td>&nbsp;&nbsp;</td>
                                        <td style="width:180px">
                                            <dx:ASPxLabel ID="lblZipcode" runat="server" Text="ZIP Code"/>
                                            <dx:ASPxTextBox ID="txtZipcode" runat="server" Width="170px" ClientInstanceName="txtZipcode">
                                                <ValidationSettings SetFocusOnError="True" ValidationGroup="groupCustomerInfo">
                                                    <RequiredField IsRequired="true" ErrorText="ZIP Code is required" />
                                                    <RegularExpression ValidationExpression="\d{5}(-\d{4})?" ErrorText="Invalid ZIP Code" />
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:180px">
                                            <dx:ASPxLabel ID="lblPhone" runat="server" Text="Primary Phone"/>
                                            <dx:ASPxTextBox ID="txtPhone" runat="server" Width="170px" ClientInstanceName="txtPhone">
                                                <ValidationSettings SetFocusOnError="True" ValidationGroup="groupCustomerInfo">
                                                    <RegularExpression ErrorText="Invalid phone number" ValidationExpression="\(?\b[0-9]{3}\)?[-. ]?[0-9]{3}[-. ]?[0-9]{4}\b" />
                                                    <RequiredField IsRequired="True" ErrorText="Primary Phone is required" />
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </td>
                                        <td>&nbsp;&nbsp;</td>
                                        <td style="width:180px" colspan="3">
                                            <dx:ASPxLabel ID="lblEmail" runat="server" Text="E-Mail"/>
                                            <dx:ASPxTextBox ID="txtEmail" runat="server" ClientInstanceName="txtEmail" Width="170px">
                                                <ValidationSettings SetFocusOnError="True" ValidationGroup="groupCustomerInfo">
                                                    <RegularExpression ErrorText="Invalid E-Mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                                    <RequiredField IsRequired="True" ErrorText="E-Mail is required" />
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:180px;vertical-align:top">
                                            <dx:ASPxLabel ID="lblOtherContact" runat="server" Text="Other Contact Name & Phone"/>
                                            <dx:ASPxTextBox ID="txtOtherContact" runat="server" Width="170px" ClientInstanceName="txtOtherContact"/>
                                        </td>
                                        <td>&nbsp;&nbsp;</td>
                                        <td style="width:180px" colspan="3">
                                            <dx:ASPxLabel ID="lblNotes" runat="server" Text="Notes (Gate code, location info, etc.)"/>
                                            <dx:ASPxMemo ID="memNotes" runat="server" ClientInstanceName="memNotes" Height="100" Width="360"/>
                                        </td>
                                    </tr>
                                </table>
                                <hr />
                                <dx:ASPxButton ID="btnNextCustomerInfo" runat="server" Text="Next" ClientInstanceName="btnNextCustomerInfo"
                                    AutoPostBack="false" ValidationGroup="groupCustomerInfo" Width="150">
                                    <ClientSideEvents Click="OnButtonClick" />
                                </dx:ASPxButton>
                                <dx:ASPxValidationSummary ID="validSummaryPersonal" runat="server" ValidationGroup="groupCustomerInfo">
                                </dx:ASPxValidationSummary>
                            </dx:ContentControl>
                        </ContentCollection>
                    </dx:TabPage>
                    <dx:TabPage Name="Survey" Text="Use Survey" ActiveTabStyle-Font-Bold="true">
                        <ContentCollection>
                            <dx:ContentControl runat="server">
                                <dx:ASPxLabel runat="server" Text="Admin driven questions 1-10 below...." Font-Bold="true"/><br /><br />
                                <dx:ASPxLabel runat="server" Text="Question #1"/><br /><br />
                                <dx:ASPxLabel runat="server" Text="Question #2"/><br /><br />
                                <dx:ASPxLabel runat="server" Text="Question #3"/><br /><br />
                                <dx:ASPxLabel runat="server" Text="Question #4"/><br /><br />
                                <dx:ASPxLabel runat="server" Text="Question #5"/><br /><br />
                                <dx:ASPxLabel runat="server" Text="Question #6"/><br /><br />
                                <dx:ASPxLabel runat="server" Text="Question #7"/><br /><br />
                                <dx:ASPxLabel runat="server" Text="Question #8"/><br /><br />
                                <dx:ASPxLabel runat="server" Text="Question #9"/><br /><br />
                                <dx:ASPxLabel runat="server" Text="Question #10"/>
                                <hr />
                                <dx:ASPxButton ID="btnNext" ValidationGroup="groupSurvey" runat="server" Text="Next"
                                    ClientInstanceName="btnNexSurvey" AutoPostBack="false" Width="150">
                                    <ClientSideEvents Click="OnButtonClick" />
                                </dx:ASPxButton>
                            </dx:ContentControl>
                        </ContentCollection>
                    </dx:TabPage>
                    <dx:TabPage Name="ProposalType" Text="Type of Proposal" ActiveTabStyle-Font-Bold="true">
                        <ContentCollection>
                            <dx:ContentControl runat="server">
                                <dx:ASPxLabel ID="lblProposalType" runat="server" Text="Proposal Type"/>
                                <dx:ASPxComboBox ID="cbProposalType" runat="server" ValueType="System.String" ClientInstanceName="cbProposalType" Width="170">
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
                                <dx:ASPxLabel ID="lblBrand" runat="server" Text="Brand"/>
                                <dx:ASPxComboBox ID="cbBrand" runat="server" ValueType="System.String" ClientInstanceName="cbBrand" Width="170">
                                    <Items>
                                        <dx:ListEditItem Value="1" Text="Carrier" />
                                        <dx:ListEditItem Value="2" Text="Trane" />
                                    </Items>
                                    <ValidationSettings ValidationGroup="groupProposalType" ValidateOnLeave="true" SetFocusOnError="true">
                                        <RequiredField IsRequired="true" ErrorText="Brand is required" />
                                    </ValidationSettings>
                                </dx:ASPxComboBox>
                                <hr />
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
