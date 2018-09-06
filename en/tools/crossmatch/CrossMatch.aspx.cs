using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.en.tools.crossmatch
{
    public partial class CrossMatch : System.Web.UI.Page
    {
        public string token = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            token = GetToken();
        }

        private string GetToken()
        {
            string token = "";

            try
            {
                token = Request["token"];
                if (!String.IsNullOrEmpty(token))
                {
                    try
                    {
                        var userAccess = Keystone.Authenticate(token);
                        string userid = userAccess.User.Name;
                        HttpCookie Cookie = new HttpCookie("Keystone");
                        Cookie["token"] = token;
                        Session["USERID"] = userid;
                        Response.Cookies.Add(Cookie);
                    }
                    catch { token = ""; }
                }
                else
                {
                    try
                    {
                        HttpCookie Cookie = Request.Cookies["Keystone"];
                        if (Cookie != null)
                        {
                            if (Cookie["token"] != null || !Cookie["token"].Equals(""))
                            {
                                token = Cookie["token"];
                                // this checks the token is not expired
                                var userAccess = Keystone.Authenticate(token);
                                string userid = userAccess.User.Name;
                            }
                        }

                    }
                    catch { token = ""; }
                }
            }
            catch { }
            return token;
        }



    }
}