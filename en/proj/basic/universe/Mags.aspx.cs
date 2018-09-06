using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Universe
{
    public partial class Mags : System.Web.UI.Page
    {
        UniverseMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (UniverseMaster)Page.Master;
            master.sgselect = 6;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}