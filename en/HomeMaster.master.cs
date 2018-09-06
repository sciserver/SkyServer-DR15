using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using DotNetOpenAuth.OpenId.RelyingParty;
using System.Web.Security;
using System.Data.SqlClient;
using DotNetOpenAuth.OpenId.Extensions.AttributeExchange;
using System.Configuration;
using SkyServer;


namespace SkyServer
{
    public partial class HomeMaster : System.Web.UI.MasterPage
    {
        public string imgpath;

        protected string url;
        protected string contactUrl;
        protected string siteTitle;
        protected Globals globals;

        protected string userid ="Guest", token;
        protected bool isValidUser = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];

            url = ResolveClientUrl("~/en/");
            imgpath = ResolveClientUrl("~/en/images/");

            contactUrl = globals.ContactUrl + "&url=" + Server.UrlEncode("http://" + Request.ServerVariables["SERVER_NAME"] + Request.ServerVariables["SCRIPT_NAME"] + Request.ServerVariables["QUERY_STRING"]);

            if (globals.SiteName != globals.Release)
            {
                siteTitle = globals.Release + " " + globals.SiteName;
            }
            else
            {
                siteTitle = globals.SiteName;
            }

            siteTitle += ((globals.SiteIcon != null) ? "&nbsp;<img src=\"../" + url + "images/"+globals.SiteIcon + "\"/>" : "");

            /////This is for login portal       
            //TryKeystoneLogin();

            //loginName.Text = userid;
            //if (isValidUser)
            //{
            //    KeystoneLogin.Visible = false;
            //    KeystoneLogout.Visible = true;
            //}
            //else
            //{
            //    KeystoneLogin.Visible = true;
            //    KeystoneLogout.Visible = false;
            //}
        }

        //private void TryKeystoneLogin()
        //{
        //    try
        //    {
        //        if (Request["token"] != null)
        //        {
        //            if (Request["token"] == "")
        //            {
        //                HttpCookie cookie = new HttpCookie("Keystone");
        //                cookie.Expires = DateTime.Now.AddDays(-1);
        //                Response.Cookies.Add(cookie);
        //            }
        //            else
        //            {
        //                try
        //                {
        //                    string token = Request["token"];
        //                    var userAccess = Keystone.Authenticate(token);
        //                    userid = userAccess.User.Name;
        //                    isValidUser = true;

        //                    HttpCookie cookie = new HttpCookie("Keystone");
        //                    cookie["token"] = token;
        //                    Response.Cookies.Add(cookie);
                           
                           
        //                }
        //                catch (Exception e) {
        //                    HttpCookie cookie = new HttpCookie("Keystone");
        //                    cookie["token"] = "";
        //                    isValidUser = false;
        //                }
        //            }                 
        //        }
        //        else
        //        {
        //            HttpCookie cookie = Request.Cookies["Keystone"];
        //            if (cookie != null)
        //            {
        //                string token = cookie["token"];
        //                try
        //                {
        //                    if (token == null || token == "")
        //                    {
        //                        HttpCookie fake = new HttpCookie("Keystone");
        //                        fake.Expires = DateTime.Now.AddDays(-1);
        //                        Response.Cookies.Add(fake);
        //                    }
        //                    else
        //                    {
        //                        var userAccess = Keystone.Authenticate(token);
        //                        userid = userAccess.User.Name;
        //                        isValidUser = true;
        //                    }
        //                }
        //                catch (Exception e) {                            
        //                    cookie["token"] = "";
        //                    isValidUser = false;
        //                }
                        
        //            }                    
        //        }
        //    }
        //    catch (UnauthorizedAccessException ex)
        //    {                
        //        Response.Redirect(ConfigurationManager.AppSettings["Keystone.Portal"] + "?message=" + Uri.EscapeDataString(ex.Message));
        //    }
        //    catch (Exception ex)
        //    {                
        //        throw new Exception("Keystone error: " + ex.Message, ex);
        //    }
        //}

        //protected void KeystoneLogin_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect(ConfigurationManager.AppSettings["Keystone.Portal"] + "?callbackUrl=" + HttpUtility.UrlEncode(Request.Url.AbsoluteUri));
        //}

        //protected void KeystoneLogout_Click(object sender, EventArgs e) {
        //    if (Request.Cookies["Keystone"] != null)
        //    {
        //        HttpCookie fake = new HttpCookie("Keystone");
        //        fake.Expires = DateTime.Now.AddDays(-1);
        //        Response.Cookies.Add(fake);
        //        Response.Redirect(ConfigurationManager.AppSettings["Keystone.Portal"] + "?logout=true");
        //    }
        //    else
        //    {
        //        Response.Redirect(HttpUtility.UrlEncode(Request.Url.AbsoluteUri));
        //    }
        //}
    }
}