using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.SkyServer
{
    public partial class CiSE : System.Web.UI.Page
    {
        protected string url;
        protected Globals globals;
        SkyServerMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
        
            url = ResolveClientUrl("~/en");
            master = (SkyServerMaster)Page.Master;
            master.gselect = 3;
        }
    }
}