using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Color
{
    public partial class Explore : System.Web.UI.Page
    {
        ColorMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (ColorMaster)Page.Master;
            master.sgselect = 1;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}