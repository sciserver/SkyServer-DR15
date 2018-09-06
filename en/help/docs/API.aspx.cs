using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Help.Docs
{
    public partial class API : System.Web.UI.Page
    {
        protected string url;
        protected Globals globals;
        HelpMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (HelpMaster)Page.Master;
            master.gselect = 8;
            url = "http://"+Request.ServerVariables["SERVER_NAME"] + ResolveUrl("~/en");
        }
    }
}