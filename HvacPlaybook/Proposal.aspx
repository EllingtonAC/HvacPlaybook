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
                ActiveTabIndex="0" Width="800px" OnActiveTabChanged="pageControl_ActiveTabChanged">
                <ClientSideEvents ActiveTabChanging="OnTabChanging" />
                <TabPages>
                    <dx:TabPage Name="CustomerInfo" Text="Customer Information" ActiveTabStyle-Font-Bold="true">
<ActiveTabStyle Font-Bold="True"></ActiveTabStyle>
                        <ContentCollection>
                            <dx:ContentControl runat="server">
                                <table border="0">
                                    <tr>
                                        <td style="width:180px">
                                            &nbsp;
                                            <dx:ASPxFormLayout runat="server" ID="exampleFormLayout" RequiredMarkDisplayMode="RequiredOnly" EnableViewState="false" EncodeHtml="false" Theme="Aqua" RequiredMark="<span style='color: red'>*</span>">
                                                <Items>
                                                    <dx:LayoutGroup Caption="" ColCount="2" GroupBoxDecoration="None">
                                                        <Items>
                                                            <dx:LayoutItem Caption="First Name">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="exampleFormLayout_E2" runat="server">
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
                                                                        <dx:ASPxTextBox ID="exampleFormLayout_E1" runat="server">
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
                                                                        <dx:ASPxTextBox ID="exampleFormLayout_E3" runat="server">
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
                                                                        <dx:ASPxTextBox ID="exampleFormLayout_E4" runat="server">
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="City">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="exampleFormLayout_E5" runat="server">
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
                                                                        <dx:ASPxComboBox ID="State_ComboBox" runat="server"   OnSelectedIndexChanged="exampleFormLayout_E7_SelectedIndexChanged" EnableTheming="false"   TextField="StateName" ValueType="System.String" ValueField="StateCode"
>
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
                                                                        <dx:ASPxTextBox ID="exampleFormLayout_E8" runat="server">
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
                                                                        <dx:ASPxTextBox ID="exampleFormLayout_E9" runat="server" HelpText="E.g. (123)555-1234">
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
                                                                        <dx:ASPxTextBox ID="exampleFormLayout_E10" runat="server">
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
                                                                <dx:ASPxMemo ID="exampleFormLayout_E12" runat="server" AutoResizeWithContainer="True" Height="71px" Width="100%">
                                                                </dx:ASPxMemo>
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
                                    AutoPostBack="False" ValidationGroup="groupCustomerInfo" Width="150" >
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
                               
                                <dx:ASPxGridView ID="Survey_GridView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" KeyFieldName="ComfortSurveyID">

                                    <SettingsCommandButton>
                                        <ShowAdaptiveDetailButton ButtonType="Image"></ShowAdaptiveDetailButton>

                                        <HideAdaptiveDetailButton ButtonType="Image"></HideAdaptiveDetailButton>
                                    </SettingsCommandButton>

                                    <Columns>
                                        <dx:GridViewDataTextColumn FieldName="QuestionOrder" VisibleIndex="1">
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="QuestionText" VisibleIndex="2"></dx:GridViewDataTextColumn>
                                    </Columns>
                                </dx:ASPxGridView>

                                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:HVACPlaybookConnectionString %>' DeleteCommand="DELETE FROM [ComfortSurvey] WHERE [ComfortSurveyID] = @ComfortSurveyID" InsertCommand="INSERT INTO [ComfortSurvey] ([QuestionOrder], [QuestionText], [Display]) VALUES (@QuestionOrder, @QuestionText, @Display)" SelectCommand="SELECT [ComfortSurveyID], [QuestionOrder], [QuestionText], [Display] FROM [ComfortSurvey] WHERE [Display] = 'true'" UpdateCommand="UPDATE [ComfortSurvey] SET [QuestionOrder] = @QuestionOrder, [QuestionText] = @QuestionText, [Display] = @Display WHERE [ComfortSurveyID] = @ComfortSurveyID">
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
