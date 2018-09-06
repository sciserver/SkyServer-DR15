using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SkyServer.Tools;

namespace SkyServer.Tools.Started
{
    public partial class StartedHome : System.Web.UI.Page
    {
        ToolsMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            master = (ToolsMaster)Page.Master;
            master.gselect = 1;
        }
    }
}