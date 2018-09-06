using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Kids.Scavenger
{
    public partial class ScavengerHome : System.Web.UI.Page
    {
        protected Globals globals;
        ScavengerMaster master;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ScavengerMaster)Page.Master;
            master.sgselect = 1;
        }
    }
}