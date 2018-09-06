using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.SpectralTypes
{
    public partial class OtherSpectralTypes : System.Web.UI.Page
    {
        SpectralTypesMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (SpectralTypesMaster)Page.Master;
            master.sgselect = 5;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}