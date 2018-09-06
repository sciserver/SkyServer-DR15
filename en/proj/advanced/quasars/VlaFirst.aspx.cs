using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.Quasars
{
    public partial class VlaFirst : System.Web.UI.Page
    {
        QuasarsMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (QuasarsMaster)Page.Master;
            master.sgselect = 2;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}