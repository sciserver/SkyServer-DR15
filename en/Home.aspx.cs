using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace SkyServer
{
    public partial class Home : System.Web.UI.Page
    {
        protected int logoleftpos;
        protected string siteTitle;
        protected string version;
        public string MessageOfTheDay = "";//
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];

            try { MessageOfTheDay = System.IO.File.ReadAllText(globals.MessageOfTheDay); }
            catch {
                try
                {
                    MessageOfTheDay = System.IO.File.ReadAllText(Server.MapPath(globals.MessageOfTheDay));// path relative to project
                }
                catch
                {
                    MessageOfTheDay = globals.MessageOfTheDay;
                }
            }

            if (globals.SiteName != globals.Release)
                siteTitle = globals.Release + " " + globals.SiteName;
            else
                siteTitle = globals.SiteName;

            if (globals.Access == "astro" || globals.Access == "collab")
            {
                logoleftpos = 730;
            }
            else
            {
                logoleftpos = 690;
            }

            string versionFile = Server.MapPath("~/version.txt");
            version = File.Exists(versionFile) ? File.ReadAllText(versionFile) : "";
        }
    }
}