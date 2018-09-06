using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace SkyServer.en
{
    public partial class Loginfloat : System.Web.UI.UserControl
    {
        protected string userid = "Guest", token;
        protected bool isValidUser = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            ///This is for login portal       
            TryKeystoneLogin();
        }

        public void TryKeystoneLogin()
        {
            try
            {
                if (Request["token"] != null)
                {
                    if (Request["token"] == "")
                    {
                        HttpCookie cookie = new HttpCookie("Keystone");
                        cookie.Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies.Add(cookie);
                    }
                    else
                    {
                        try
                        {
                            string token = Request["token"];
                            var userAccess = Keystone.Authenticate(token);
                            userid = userAccess.User.Name;
                            isValidUser = true;

                            HttpCookie cookie = new HttpCookie("Keystone");
                            cookie["token"] = token;
                            Session["USERID"] = userid;
                            Response.Cookies.Add(cookie);


                        }
                        catch (Exception e)
                        {
                            HttpCookie cookie = new HttpCookie("Keystone");
                            cookie["token"] = "";
                            Session["USERID"] = "";
                            isValidUser = false;
                        }
                    }
                }
                else
                {
                    HttpCookie cookie = Request.Cookies["Keystone"];
                    if (cookie != null)
                    {
                        string token = cookie["token"];
                        try
                        {
                            if (token == null || token == "")
                            {
                                HttpCookie fake = new HttpCookie("Keystone");
                                fake.Expires = DateTime.Now.AddDays(-1);
                                Response.Cookies.Add(fake);
                            }
                            else
                            {
                                var userAccess = Keystone.Authenticate(token);
                                userid = userAccess.User.Name;
                                Session["USERID"] = userid;
                                isValidUser = true;
                            }
                        }
                        catch (Exception e)
                        {
                            cookie["token"] = "";
                            Session["USERID"] = "";
                            isValidUser = false;
                        }

                    }
                    else// when there is no token in request and no stored cookie: means user is not logged-in.
                    {
                        if(Session["USERID"] != null  )
                            Session["USERID"] = "";
                        isValidUser = false;
                    }
                }
            }
            catch (UnauthorizedAccessException ex)
            {
                Response.Redirect(ConfigurationManager.AppSettings["Keystone.Portal"] + "?message=" + Uri.EscapeDataString(ex.Message));
            }
            catch (Exception ex)
            {
                throw new Exception("Keystone error: " + ex.Message, ex);
            }
        }

        protected void KeystoneLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect(ConfigurationManager.AppSettings["Keystone.Portal"] + "?callbackUrl=" + HttpUtility.UrlEncode(Request.Url.AbsoluteUri));
        }

        protected void KeystoneLogout_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["Keystone"] != null)
            {
                HttpCookie fake = new HttpCookie("Keystone");
                fake.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(fake);
                Response.Redirect(ConfigurationManager.AppSettings["Keystone.Portal"] + "?logout=true");
            }
            else
            {
                Response.Redirect(HttpUtility.UrlEncode(Request.Url.AbsoluteUri));
            }
        }
    }
}