using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HvacPlaybook.Admin
{
    public partial class ProspectView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ASPxGridView1.DataSource = HVACPlaybookData;
            ASPxGridView1.KeyFieldName = "ProspectID";
            ASPxGridView1.DataBind();
            HVACPlaybookData.DataBind();
        }

        protected void ASPxGridView1_DataBinding(object sender, EventArgs e)
        {

        }

        protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {

        }

        protected void ASPxGridView1_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {

        }

        protected void ASPxGridView1_RowInserted(object sender, DevExpress.Web.Data.ASPxDataInsertedEventArgs e)
        {

        }

        protected void ddStates_DataBinding(object sender, EventArgs e)
        {
            DropDownList lst1 = (DropDownList)sender;
            lst1.DataBinding -= new EventHandler(ddStates_DataBinding);
            lst1.AppendDataBoundItems = true;
            ListItem li = new ListItem("Select state...", string.Empty);
            lst1.Items.Insert(0, li);
            try
            {
                lst1.DataBind();
            }
            catch (ArgumentOutOfRangeException)
            {
                lst1.SelectedValue = string.Empty;
            }
        }
    }
}