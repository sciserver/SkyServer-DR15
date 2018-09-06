using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Help.Download
{
    public partial class SQLCL : System.Web.UI.Page
    {
        protected string url;
        protected Globals globals;
        HelpMaster master;
        protected string pyRef;
        protected void Page_Load(object sender, EventArgs e)
        {
            url = ResolveClientUrl("~/en");
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (HelpMaster)Page.Master;
            master.gselect = 20;


            if ("collab".Equals(globals.Access))
                pyRef = "col/sqlcl.py";
            else
                pyRef = "pub/sqlcl.py";

        }
    }
}