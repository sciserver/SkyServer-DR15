using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.SpectralTypes
{
    public partial class Temperature : System.Web.UI.Page
    {
        SpectralTypesMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (SpectralTypesMaster)Page.Master;
            master.sgselect = 6;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}