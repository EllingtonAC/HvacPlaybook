using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HvacPlaybook.App_Objects
{
    public class HPUserManager
    {
        private List<HPUser> HPUsers;
        public HPUserManager (string connection)
        {
            SqlConnection cnnHP = new SqlConnection(connection);
            SqlCommand cmdHP = new SqlCommand();

            cmdHP.CommandText = "SELECT * FROM [User] ORDER BY [UserName]";
            cmdHP.CommandType = CommandType.Text;
            cmdHP.Connection = cnnHP;

            cnnHP.Open();

            HPUsers = new List<HPUser>();
            using (SqlDataReader dr = cmdHP.ExecuteReader())
            {
                while (dr.Read())
                {
                    HPUser hpUser = new HPUser();

                    hpUser.UserName = dr["UserName"].ToString();
                    hpUser.Password = dr["Password"].ToString();
                    hpUser.FirstName = dr["FirstName"].ToString();
                    hpUser.LastName = dr["LastName"].ToString();

                    HPUsers.Add(hpUser);
                }
            }
            
            cnnHP.Close();
        }

        public HPUser Find(string userName, string password)
        {
            return HPUsers.Where(u => u.UserName.ToLower() == userName.ToLower() && u.Password == password).FirstOrDefault();
        }

        public void SignIn(HPUser hpUser, bool remFlag, HttpResponse Response)
        {
            HttpContext.Current.Session["HPusername"] = hpUser.UserName;
            HttpContext.Current.Session["HPfirstname"] = hpUser.FirstName;

            if (remFlag)
            {
                HttpCookie usernameCookie = new HttpCookie("HPusername");
                usernameCookie.Value = hpUser.UserName;
                usernameCookie.Expires = DateTime.Now.AddDays(90d);
                Response.Cookies.Add(usernameCookie);
            }
            else Response.Cookies.Remove("HPusername");
        }

        public void RedirectToReturnUrl(string defaultPage, HttpResponse Response)
        {
            Response.Redirect(defaultPage);
        }

        public AccountResult Create(HPUser user, string p)
        {
            return null;
        }
    }

    public class HPUser
    {
        private string userName;
        private string password;
        private string firstName;
        private string lastName;

        public string UserName
        {
            get
            {
                return userName;
            }
            set
            {
                userName = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }
            set
            {
                password = value;
            }
        }

        public string FirstName
        {
            get
            {
                return firstName;
            }
            set
            {
                firstName = value;
            }
        }

        public string LastName
        {
            get
            {
                return lastName;
            }
            set
            {
                lastName = value;
            }
        }
    }

    public class AccountResult
    {
        public bool Success;
        public List<string> ErrorMessages;
    }
}