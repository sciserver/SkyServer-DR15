using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.SDSS
{
    public partial class PubsHome : System.Web.UI.Page
    {
        SdssMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (SdssMaster)Page.Master;
            master.gselect = 8;
            
        }
    }
}