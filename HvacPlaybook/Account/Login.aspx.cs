using HvacPlaybook.App_Objects;
using Microsoft.AspNet.Identity;
using System;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HvacPlaybook.Account
{
    public partial class UserLogin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register.aspx";
            var returnUrl = HttpUtility.UrlEncode(Request["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }

            if (Page.IsPostBack)
            {

            }
            else
            {
                Login.Click += new EventHandler(Login_Click);
                HttpContext.Current.Session["HPusernameA"] = string.Empty;
                UserName.Text = (Request.Cookies["HPusername"] != null) ? Request.Cookies["HPusername"].Value : string.Empty;
                RememberMe.Checked = (Request.Cookies["HPusername"] != null);
            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user password
                var userManager = new HPUserManager(ConfigurationManager.ConnectionStrings["HVACPlaybook"].ConnectionString);
                HPUser user = userManager.Find(UserName.Text, Password.Text);
                if (user != null)
                {
                    userManager.SignIn(user, RememberMe.Checked, Response);
                    userManager.RedirectToReturnUrl(ReturnUrl.Value, Response);
                }
                else
                {
                    FailureText.Text = "Invalid username or password!!.";
                    ErrorMessage.Visible = true;
                }
            }
        }

        protected void Password_Load(object sender, EventArgs e)
        {
#if DEBUG
            TextBox password = ((TextBox)sender);
            password.Attributes.Add("value", "proposal");
#endif
        }
    }
}