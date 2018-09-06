using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using SkyServer.Tools.Explore;
using System.Web.UI;
using System.Collections.Specialized;
using System.IO;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Text;
using System.Net.Http;
using System.Net.Http.Headers;
using SkyServer.Tools.Search;

namespace SkyServer
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Globals globals = new Globals();
            Application.Add(Globals.PROPERTY_NAME, globals);
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            /// This can be modified to make universal portal

            string pageR = HttpContext.Current.Request.Url.ToString();

            string JsonBugReport = "w";
            string username = "";
            string userid = "";
            string errorMessage = "";
            HttpCookie Cookie = Request.Cookies["Keystone"];
            if (Cookie != null)
            {
                if (Cookie["token"] != null || !Cookie["token"].Equals(""))
                {
                    string token = Cookie["token"];
                    var userAccess = Keystone.Authenticate(token);
                    username = userAccess.User.Name;
                    userid = userAccess.User.Id;
                }
            }                

            Exception exc = Server.GetLastError();

            if (exc != null)
            {
                ResponseREST rs = new ResponseREST();
                StringBuilder strbldr = new StringBuilder();
                StringWriter sw = new StringWriter(strbldr);
                using (JsonWriter writer = new JsonTextWriter(sw))
                {
                    errorMessage = exc.Message + ((exc.InnerException != null) ? (": " + exc.InnerException.Message) : "");
                    writer.WriteStartObject();
                    writer.WritePropertyName("ErrorMessage");
                    writer.WriteValue(errorMessage);
                    writer.WritePropertyName("username");
                    writer.WriteValue(username);
                    writer.WritePropertyName("userid");
                    writer.WriteValue(userid);
                    writer.WritePropertyName("pageurl");
                    writer.WriteValue(Request.Url != null ? Request.Url.ToString() : "");
                    writer.WritePropertyName("referrer");
                    writer.WriteValue(Request.UrlReferrer != null ? Request.UrlReferrer.ToString() : "");
                    writer.WritePropertyName("StackTrace");
                    writer.WriteValue(exc.StackTrace);
                    writer.WritePropertyName("InnerTrace");
                    writer.WriteValue(exc.InnerException != null ? exc.InnerException.StackTrace : "");
                    writer.WritePropertyName("ErrorTime");
                    writer.WriteValue(DateTime.Now);
                    writer.WritePropertyName("ClientIP");
                    writer.WriteValue(rs.GetClientIP());
                }
                JsonBugReport = strbldr.ToString();
            }

            if (!HttpContext.Current.Request.Path.EndsWith("ErrorPage.aspx", StringComparison.InvariantCultureIgnoreCase))// this bypasses the redirect
            {
                //ExceptionUtility.LogException(exc, pageR);
                ResponseREST rs = new ResponseREST();
                NameValueCollection data = new NameValueCollection();
                data.Add("popz_username", username);
                data.Add("popz_bugreport", "qwdeef");
                data.Add("popz_userid", userid);
                data.Add("popz_ClientIP", rs.GetClientIP());
                data.Add("popz_pageurl", Request.Url != null ? Request.Url.ToString() : "");
                data.Add("popz_referrer", Request.UrlReferrer != null ? Request.UrlReferrer.ToString() : "");
                if (exc != null)
                {
                    data.Add("popz_ErrorMessage", exc.Message + ((exc.InnerException != null) ? (": " + exc.InnerException.Message) : ""));
                    data.Add("popz_StackTrace", exc.StackTrace);
                    data.Add("popz_InnerTrace", exc.InnerException != null ? exc.InnerException.StackTrace : "");
                }
                data.Add("popz_ErrorTime", DateTimeOffset.Now.ToString());
                Server.TransferRequest("~/en/exception/ErrorPage.aspx", true, "POST", data);
            }


        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }



    }





}