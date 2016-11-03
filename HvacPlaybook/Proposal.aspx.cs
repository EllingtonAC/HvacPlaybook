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

            standar_pagecontrol.ClientVisible = false;
            S1Title.ClientVisible = false;
            S1Type.ClientVisible = false;
            S1_UTorPU.ClientVisible = false;
            S1Capacity.ClientVisible = false;
            S1ID_TorH.ClientVisible = false;

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

        protected void Parent_cmb_Callback(object sender, EventArgs e)
        {
            S1Type.DataSource = getS1TypeDataSource();
            S1Type.DataBind();
        }

        protected void Child_cmb_Callback(object sender, EventArgs e)
        {
            string s = S1Type.SelectedItem.Value.ToString();
            if (s == "Split")
            {
      
                S1ID_TorH.DataSource = getS1ID_TorHDataSource();
                S1ID_TorH.DataBind();
            }else if(s == "Package"){
    
                S1ID_TorH.DataSource = getS1ID_TorH_DataSource();
                S1ID_TorH.DataBind();
            }
        }


        protected void S1_UTorPU_cmb_Callback(object sender, EventArgs e)
        {
            string s = S1Type.SelectedItem.Value.ToString();
            if (s == "Split")
            {
                S1_UTorPU.DataSource = getS1_UTorPUDataSource();
                S1_UTorPU.DataBind();
            }else
            {          
                S1_UTorPU.DataSource = getS1_UTorPU_DataSource();
                S1_UTorPU.DataBind();

            }
        }
        protected void S1Capacity_cmb_Callback(object sender, CallbackEventArgsBase e)
        {
            string s = S1Type.SelectedItem.Value.ToString();
            if (s == "Split")
            {
                S1Capacity.DataSource = getS1CapacityDataSource();
                S1Capacity.DataBind();

            }
            else
            {
                if (e.Parameter == "Heat Pump")
                {
                    S1Capacity.DataSource = getS1CapacityDataSource_1();
                    S1Capacity.DataBind();
                }
                if (e.Parameter == "Heat Pump(Over/Under)")
                {
                    S1Capacity.DataSource = getS1Capacity_DataSource();
                    S1Capacity.DataBind();
                }
                else
                {
                    S1Capacity.DataSource = getS1CapacityDataSource_1();
                    S1Capacity.DataBind();
                }

            }
        }

        private List<String> getS1CapacityDataSource_1()
        {
            List<String> li = new List<string>();
            li.Add("2.0Ton");
            li.Add("2.5Ton");
            li.Add("3.0Ton");
            li.Add("3.5Ton");
            li.Add("4.0Ton");
            li.Add("5.0Ton");

            return li;
        }



        private List<String> getS1Capacity_DataSource()
        {
            List<String> li = new List<string>();
            li.Add("2.0Ton");
            li.Add("2.5Ton");
            li.Add("3.0Ton");
            li.Add("3.5Ton");

            return li;
        }



        private List<String> getS1ID_TorH_DataSource()
        {
            List<String> li = new List<string>();
            li.Add("Electric Heat Kit");
            li.Add("No Elec Heat");
           
            return li;
        }


        private List<String> getS1_UTorPU_DataSource()
        {
            List<String> li = new List<string>();
            li.Add("Heat Pump");
            li.Add("Heat Pump(Over/Under)");
            li.Add("Air Conditioner");

            return li;
        }

        private List<String> getS1TypeDataSource()
        {
            List<String> li = new List<string>();
            li.Add("Split");
            li.Add("Package");

            return li;
        }

        private List<String> getS1_UTorPUDataSource()
        {
            List<String> li = new List<string>();
            li.Add("Heat Pump");
            li.Add("Air Conditioner");

            return li;
        }



         private List<String> getS1CapacityDataSource()
        {
            List<String> li = new List<string>();
            li.Add("1.5Ton");
            li.Add("2.0Ton");
            li.Add("2.5Ton");
            li.Add("3.0Ton");
            li.Add("3.5Ton");
            li.Add("4.0Ton");
            li.Add("5.0Ton");

            return li;
        }
        private List<String> getS1ID_TorHDataSource()
        {
            List<String> li = new List<string>();
            li.Add("Air Handler");
            li.Add("80% Furn&Evap Coil");

            return li;
        }

    }
}