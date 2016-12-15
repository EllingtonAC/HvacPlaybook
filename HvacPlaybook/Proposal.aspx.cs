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

            S2Title.ClientVisible = false;
            S2Type.ClientVisible = false;
            S2_UTorPU.ClientVisible = false;
            S2Capacity.ClientVisible = false;
            S2ID_TorH.ClientVisible = false;

            Duc_Tag1.ClientVisible = false;
            Duc_Sys_Type1.ClientVisible = false;
            Duc_OD_Cap1.ClientVisible = false;

            Duc_Tag2.ClientVisible = false;
            Duc_Sys_Type2.ClientVisible = false;
            Duc_OD_Cap2.ClientVisible = false;

            OutDoor_Pad_1_Des.ClientVisible = false;
            OutDoor_Pad_1_Cost.ClientVisible = false;
            OutDoor_Pad_1_Time.ClientVisible = false;

            OutDoor_Move_1_Des.ClientVisible = false;
            OutDoor_Move_1_Cost.ClientVisible = false;
            OutDoor_Move_1_Time.ClientVisible = false;

            OutDoor_Electric_1_Des.ClientVisible = false;
            OutDoor_Electric_1_Cost.ClientVisible = false;
            OutDoor_Electric_1_Time.ClientVisible = false;

            OutDoor_Lifting_1_Des.ClientVisible = false;
            OutDoor_Lifting_1_Cost.ClientVisible = false;
            OutDoor_Lifting_1_Time.ClientVisible = false;
            OutDoor_Lifting_1_Height.ClientVisible = false;
            OutDoor_Lifting_1_Reach.ClientVisible = false;

            OutDoor_Responsible_LP_1.ClientVisible = false;
            OutDoor_DN_1.ClientVisible = false;
            OutDoor_SN_Conditions_1_Cost.ClientVisible = false;
            OutDoor_SN_Conditions_1_Time.ClientVisible = false;

            OutDoor_Pad_2_Des.ClientVisible = false;
            OutDoor_Pad_2_Cost.ClientVisible = false;
            OutDoor_Pad_2_Time.ClientVisible = false;

            OutDoor_Move_2_Des.ClientVisible = false;
            OutDoor_Move_2_Cost.ClientVisible = false;
            OutDoor_Move_2_Time.ClientVisible = false;

            OutDoor_Electric_2_Des.ClientVisible = false;
            OutDoor_Electric_2_Cost.ClientVisible = false;
            OutDoor_Electric_2_Time.ClientVisible = false;

            OutDoor_Lifting_2_Des.ClientVisible = false;
            OutDoor_Lifting_2_Cost.ClientVisible = false;
            OutDoor_Lifting_2_Time.ClientVisible = false;
            OutDoor_Lifting_2_Height.ClientVisible = false;
            OutDoor_Lifting_2_Reach.ClientVisible = false;

            OutDoor_Responsible_LP_2.ClientVisible = false;
            OutDoor_DN_2.ClientVisible = false;
            OutDoor_SN_Condition_2_Cost.ClientVisible = false;
            OutDoor_SN_Condition_2_Time.ClientVisible = false;

            //        btnFinish.ClientVisible = false;

            Indoor_Location_1_Des.ClientVisible = false;
            Indoor_Location_1_Cost.ClientVisible = false;
            Indoor_Location_1_Time.ClientVisible = false;

            Indoor_Mounting_1_Des.ClientVisible = false;
            Indoor_Mounting_1_Cost.ClientVisible = false;
            Indoor_Mounting_1_Time.ClientVisible = false;

            Indoor_Electric_1_Des.ClientVisible = false;
            Indoor_Electric_1_Cost.ClientVisible = false;
            Indoor_Electric_1_Time.ClientVisible = false;

            Indoor_Heat_1_Des.ClientVisible = false;
            Indoor_Heat_1_Cost.ClientVisible = false;
            Indoor_Heat_1_Time.ClientVisible = false;





            Indoor_Location_2_Des.ClientVisible = false;
            Indoor_Location_2_Cost.ClientVisible = false;
            Indoor_Location_2_Time.ClientVisible = false;

            Indoor_Mounting_2_Des.ClientVisible = false;
            Indoor_Mounting_2_Cost.ClientVisible = false;
            Indoor_Mounting_2_Time.ClientVisible = false;

            Indoor_Electric_2_Des.ClientVisible = false;
            Indoor_Electric_2_Cost.ClientVisible = false;
            Indoor_Electric_2_Time.ClientVisible = false;

            Indoor_Heat_2_Des.ClientVisible = false;
            Indoor_Heat_2_Cost.ClientVisible = false;
            Indoor_Heat_2_Time.ClientVisible = false;

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


        protected void OutDoor_tb_1_Callback(object sender, EventArgs e)
        {
            OutDoor_tb_1.Text = "hu";
        }

        protected String getOutdoor_tb1()
        {
            String str = S1Title.Text;
            return str;
        }

        protected void S1Type_cmb_Callback(object sender, EventArgs e)
        {
            S1Type.DataSource = getS1TypeDataSource();
            S1Type.DataBind();
            
        }

        protected void S2Type_cmb_Callback(object sender, EventArgs e)
        {
            S2Type.DataSource = getS1TypeDataSource();
            S2Type.DataBind();
        }

        protected void Duc_Sys_Type1_cmb_Callback(object sender, EventArgs e)
        {
            List<String> li = new List<string>();
            li.Add("Cooling Only Single Wall Head");
            li.Add("Heat Pump W/Celling Unit");
            li.Add("Heat Pump and Wall Unit");
            li.Add("Heat Pump and Wall Unit(High-Efficiency 3D)");
            li.Add("Heat Pump Multi-port/Two Head");
            li.Add("Heat Pump Multi-port/Three Head");
            li.Add("Heat Pump Multi-port/Four Head");
            li.Add("Heat Pump Multi-port/Five Head");
            Duc_Sys_Type1.DataSource = li;
            Duc_Sys_Type1.DataBind();
        }

        protected void Duc_Sys_Type2_cmb_Callback(object sender, EventArgs e)
        {
            List<String> li = new List<string>();
            li.Add("Cooling Only Single Wall Head");
            li.Add("Heat Pump W/Celling Unit");
            li.Add("Heat Pump and Wall Unit");
            li.Add("Heat Pump and Wall Unit(High-Efficiency 3D)");
            li.Add("Heat Pump Multi-port/Two Head");
            li.Add("Heat Pump Multi-port/Three Head");
            li.Add("Heat Pump Multi-port/Four Head");
            li.Add("Heat Pump Multi-port/Five Head");
            Duc_Sys_Type2.DataSource = li;
            Duc_Sys_Type2.DataBind();
        }



        protected void S1ID_TorH_cmb_Callback(object sender, EventArgs e)
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

        protected void S2ID_TorH_cmb_Callback(object sender, EventArgs e)
        {
            string s = S2Type.SelectedItem.Value.ToString();
            if (s == "Split")
            {

                S2ID_TorH.DataSource = getS1ID_TorHDataSource();
                S2ID_TorH.DataBind();
            }
            else if (s == "Package")
            {

                S2ID_TorH.DataSource = getS1ID_TorH_DataSource();
                S2ID_TorH.DataBind();
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

        protected void S2_UTorPU_cmb_Callback(object sender, EventArgs e)
        {
            string s = S2Type.SelectedItem.Value.ToString();
            if (s == "Split")
            {
                S2_UTorPU.DataSource = getS1_UTorPUDataSource();
                S2_UTorPU.DataBind();
            }
            else
            {
                S2_UTorPU.DataSource = getS1_UTorPU_DataSource();
                S2_UTorPU.DataBind();
                
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

        protected void S2Capacity_cmb_Callback(object sender, CallbackEventArgsBase e)
        {
            string s = S2Type.SelectedItem.Value.ToString();
            if (s == "Split")
            {
                S2Capacity.DataSource = getS1CapacityDataSource();
                S2Capacity.DataBind();

            }
            else
            {
                if (e.Parameter == "Heat Pump")
                {
                    S2Capacity.DataSource = getS1CapacityDataSource_1();
                    S2Capacity.DataBind();
                }
                if (e.Parameter == "Heat Pump(Over/Under)")
                {
                    S2Capacity.DataSource = getS1Capacity_DataSource();
                    S2Capacity.DataBind();
                }
                else
                {
                    S2Capacity.DataSource = getS1CapacityDataSource_1();
                    S2Capacity.DataBind();
                }

            }
        }

      
        protected void Duc_OD_Cap1_cmb_Callback(object sender, CallbackEventArgsBase e)
        {
            ASPxComboBox cb = (ASPxComboBox)sender;
            List<String> li = new List<string>();
            switch (e.Parameter)
            {
                case "Cooling Only Single Wall Head":
                    li.Add("09K");
                    li.Add("12K");
                    li.Add("15K");
                    li.Add("18K");
                    li.Add("24K");
                    li.Add("30K");
                    li.Add("36K");
                    cb.DataSource = li;
                    cb.DataBind();
                    break;
                case "Heat Pump and Wall Unit":
                    li.Add("09K");
                    li.Add("12K");
                    li.Add("15K");
                    li.Add("18K");
                    li.Add("24K");
                    li.Add("30K");
                    li.Add("36K");
                    cb.DataSource = li;
                    cb.DataBind();
                    break;
                case "Heat Pump W/Celling Unit":
                    li.Clear();
                    li.Add("09K");
                    li.Add("12K");
                    li.Add("15K");
                    cb.DataSource = li;
                    cb.DataBind();
                    break;
                case "Heat Pump and Wall Unit(High-Efficiency 3D)":
                    li.Clear();
                    li.Add("09K");
                    li.Add("12K");
                    li.Add("15K");
                    li.Add("18K");
                    cb.DataSource = li;
                    cb.DataBind();
                    break;
                case "Heat Pump Multi-port/Two Head":
                    li.Clear();
                    li.Add("20K");
                    li.Add("30K");
                    li.Add("36K");
                    li.Add("42K");
                    cb.DataSource = li;
                    cb.DataBind();
                    break;
                case "Heat Pump Multi-port/Three Head":
                    li.Clear();
                    li.Add("30K");
                    li.Add("36K");
                    li.Add("42K");
                    cb.DataSource = li;
                    cb.DataBind();
                    break;
                case "Heat Pump Multi-port/Four Head":
                    li.Clear();
                    li.Add("36K");
                    li.Add("42K");
                    cb.DataSource = li;
                    cb.DataBind();
                    break;
                case "Heat Pump Multi-port/Five Head":
                    li.Clear();
                    li.Add("42K");
                    cb.DataSource = li;
                    cb.DataBind();
                    break;
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