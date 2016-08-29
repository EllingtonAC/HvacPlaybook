using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using HvacPlaybook.App_Objects;
using System.Configuration;

namespace HvacPlaybook.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = new HPUserManager(ConfigurationManager.ConnectionStrings["connectionStringName"].ConnectionString);
            var user = new HPUser() { UserName = UserName.Text };
            AccountResult result = manager.Create(user, Password.Text);
            if (result.Success)
            {
                manager.SignIn(user, false, Response);
                manager.RedirectToReturnUrl(Request["ReturnUrl"], Response);
            }
            else 
            {
                ErrorMessage.Text = result.ErrorMessages.FirstOrDefault();
            }
        }
    }
}