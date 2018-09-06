using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.SkyServer
{
    public partial class Paper : System.Web.UI.Page
    {
        protected Globals globals;
        protected string url;
        SkyServerMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
        
            url = ResolveClientUrl("~/en");
            master = (SkyServerMaster)Page.Master;
            master.gselect = 2;
        }
    }
}