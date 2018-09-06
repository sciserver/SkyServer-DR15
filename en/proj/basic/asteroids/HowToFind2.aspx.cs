using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Asteroids
{
    public partial class HowToFind2 : System.Web.UI.Page
    {
        AsteroidsMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (AsteroidsMaster)Page.Master;
            master.sgselect = 3;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}