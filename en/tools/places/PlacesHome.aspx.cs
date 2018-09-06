using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Tools.Places
{
    public partial class PlacesHome : System.Web.UI.Page
    {
        ToolsMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            master = (ToolsMaster)Page.Master;
            master.gselect = 2;
        }
    }
}