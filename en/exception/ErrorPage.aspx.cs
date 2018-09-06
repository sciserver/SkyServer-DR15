using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SkyServer.Exceptions;
using System.Net;

namespace SkyServer
{
    public partial class ErrorPage : System.Web.UI.Page
    {
        public string bugreportJson = "";
        public string HiddenInputList = "";
        public string ErrorMessage = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string[] col = Request.Headers.AllKeys;
                foreach(string key in Request.Headers.AllKeys)
                {
                    if (key.StartsWith("popz_"))
                    {
                        HiddenInputList += "<input type=\"hidden\" name=\"" + key + "\" id=\"" + key + "\" value=\"" + Request.Headers.GetValues(key)[0] + "\" />";
                        if (key.Contains("ErrorMessage"))
                            ErrorMessage = WebUtility.HtmlEncode(Request.Headers.GetValues(key)[0]);
                    }
                }
            }
            catch { }
        }
    }
}