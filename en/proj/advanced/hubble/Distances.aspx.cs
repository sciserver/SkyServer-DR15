using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.Hubble
{
    public partial class Distances : System.Web.UI.Page
    {
        HubbleMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (HubbleMaster)Page.Master;
            master.sgselect = 2;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}