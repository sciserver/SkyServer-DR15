using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Advanced.Galaxies
{
    public partial class Correlations : System.Web.UI.Page
    {
        GalaxiesMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (GalaxiesMaster)Page.Master;
            master.sgselect = 3;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}