using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.Galaxies
{
    public partial class Radial : System.Web.UI.Page
    {
        GalaxiesMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (GalaxiesMaster)Page.Master;
            master.sgselect = 4;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}