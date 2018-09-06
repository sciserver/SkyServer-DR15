using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Help.Howto
{
    public partial class Select : System.Web.UI.Page
    {
        protected string url;
        protected Globals globals;
        GraphHowtoMaster master;

        protected void Page_Load(object sender, EventArgs e)
        {
            url = ResolveClientUrl("~/en");
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (GraphHowtoMaster)Page.Master;
            master.gselect = 4;
        }
    }
}