using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Tools.Chart
{
    public partial class ChartHome : System.Web.UI.Page
    {
        ToolsMaster master;
        protected Globals globals;
        protected string url;
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ToolsMaster)Page.Master;
            master.gselect = 3;
            url = ResolveClientUrl("~/en");
        }
    }
}