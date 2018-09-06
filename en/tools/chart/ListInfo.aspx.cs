using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SkyServer;

namespace SkyServer.Tools.Chart
{
    public partial class ListInfo : System.Web.UI.Page
    {
        protected Globals globals;
        protected string chartUrl;
        protected string url;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            url = getURL();
        }

        string getURL()
        {
            string host = Request.ServerVariables["SERVER_NAME"];
            string path = Request.ServerVariables["SCRIPT_NAME"];

            string root = "http://" + host;
            string s = path;
            string[] q = s.Split('/');

            string lang = "";
            for (int i = 0; i < q.Length; i++)
            {
                if (i > 0) root += "/";
                root += q[i];
                lang = q[i];
                if (lang == "en" || lang == "de" || lang == "jp"
                  || lang == "hu" || lang == "sp" || lang == "ce" || lang == "pt" || lang == "zh" || lang == "uk" || lang == "ru")
                {
                    //depth = q.length - i - 2;
                    return root;
                }
            }
            return root;
        }
    }
}