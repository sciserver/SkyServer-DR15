using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Help.Docs
{
    public partial class TableDesc : System.Web.UI.Page
    {
        protected string url;
        protected Globals globals;
        HelpMaster master;
        protected string search;
        protected string name;

        protected void Page_Load(object sender, EventArgs e)
        {
            url = ResolveClientUrl("~/en");
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (HelpMaster)Page.Master;
            master.gselect = 16;

            string key;
            
            if (Request.QueryString.Count > 0)
            {
                key = Request.QueryString.Keys[0];
                name = Request.QueryString[key];
                if (key == "search")
                {
                    search = "yes";
                }
                else
                {
                    search = "";
                }
            }
            else
            {
                name = "";
                search = "";
            }
        }
    }
}