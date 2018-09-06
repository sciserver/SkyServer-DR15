using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Scavenger
{
    public partial class Explorer : System.Web.UI.Page
    {
        ScavengerMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (ScavengerMaster)Page.Master;
            master.sgselect = 3;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}