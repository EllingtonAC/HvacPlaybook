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
    }
}