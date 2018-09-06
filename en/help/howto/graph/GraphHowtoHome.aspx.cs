using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Help.Howto
{
    public partial class GraphHowtoHome : System.Web.UI.Page
    {
        protected Globals globals;
        GraphHowtoMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (GraphHowtoMaster)Page.Master;
        }
    }
}