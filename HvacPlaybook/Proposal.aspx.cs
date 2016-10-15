using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HvacPlaybook
{
    public partial class Proposal : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            cbState.DataSource = SqlDataSource1;
            cbState.ValueField = "StateCode";
            cbState.DataBind();
            SqlDataSource1.DataBind();
        
            
        }

        protected void showTabs_Init(object sender, EventArgs e)
        {
            if (!IsCallback && !IsPostBack)
            {
                ASPxCheckBox cb = (ASPxCheckBox)sender;
                cb.Checked = pageControl.ShowTabs;
            }
        }
        protected void showTabs_CheckedChanged(object sender, EventArgs e)
        {
            ASPxCheckBox cb = (ASPxCheckBox)sender;
            pageControl.ShowTabs = cb.Checked;
            popupControl.ShowOnPageLoad = false;
        }

      

        protected void pageControl_ActiveTabChanged(object source, TabControlEventArgs e)
        {
         
        }

       

        protected void cbProposalType_SelectedIndexChanged(object sender, EventArgs e)
        {
               
                if (cbProposalType.SelectedIndex == 0)
                {
                    standar_pagecontrol.Visible = true;
                }
         
        }

    }
}