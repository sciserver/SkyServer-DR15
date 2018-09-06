using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Kids.OldTime
{
    public partial class OldTimeHome : System.Web.UI.Page
    {
        OldTimeMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (OldTimeMaster)Page.Master;
            master.sgselect = 0;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}