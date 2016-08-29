using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace HvacPlaybook.Admin
{
    public partial class AdminLogin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                
            }
            else
            {
                FailureText.Text = string.Empty;
                Login.Click += new EventHandler(Login_Click);
                HttpContext.Current.Session["HPusernameA"] = string.Empty;
                UserName.Text = Request.Cookies["HPusernameA"] != null ? Request.Cookies["HPusernameA"].Value : string.Empty;
                RememberMe.Checked = (Request.Cookies["HPusernameA"] != null);
            }
        }

        protected void UserName_Load(object sender, EventArgs e)
        {
#if DEBUG
            
            TextBox userName = ((TextBox)sender);
            userName.Text = "HVACAdmin";
#endif
        }

        protected void Password_Load(object sender, EventArgs e)
        {
#if DEBUG
            TextBox password = ((TextBox)sender);
            password.Attributes.Add("value", "pl@yb00k");
#endif
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user password
                string userName = this.UserName.Text;
                string password = this.Password.Text;
                string adminUserName = "AdminUserName".AppSetting();
                string adminPassword = "AdminPassword".AppSetting();

                if ((adminUserName != null) && (adminPassword != null))
                {
                    if ((userName == adminUserName) && (password == adminPassword))
                    {
                        HttpContext.Current.Session["HPusernameA"] = "HVAC Playbook Admin";
                        RememberForgetUser(RememberMe.Checked, adminUserName);
                        Response.Redirect("ControlPanel.aspx");
                    }
                    else { FailureText.Text = "Please enter a valid user name and password."; ErrorMessage.Visible = true; }
                }
                else Response.Write("<script language='text/javascript'>alert('Admin credentials unavailable.');</script>");
            }
        }
        
        private void RememberForgetUser(bool remFlag, string adminUserName)
        {
            if (remFlag)
            {
                HttpCookie usernameCookie = new HttpCookie("HPusernameA");
                usernameCookie.Value = adminUserName;
                usernameCookie.Expires = DateTime.Now.AddDays(90d);
                Response.Cookies.Add(usernameCookie);
            }
            else Response.Cookies.Remove("HPusernameA");
        }
    }
}