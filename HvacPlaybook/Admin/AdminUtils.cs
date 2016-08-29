using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace HvacPlaybook.Admin
{
    public static class AdminUtils
    {
        public static string AppSetting(this string Key)
        {
            string ret = string.Empty;
            if (ConfigurationManager.AppSettings[Key] != null)
                ret = ConfigurationManager.AppSettings[Key];
            return ret;
        }
    }
}