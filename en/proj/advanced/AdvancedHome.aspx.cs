using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj
{
    public partial class AdvancedHome : System.Web.UI.Page
    {
        ProjMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (ProjMaster)Page.Master;
            master.gselect = 2;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}