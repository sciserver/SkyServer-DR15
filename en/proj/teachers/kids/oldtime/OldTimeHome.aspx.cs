using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Kids.OldTime
{
    public partial class OldTimeHome : System.Web.UI.Page
    {
        protected Globals globals;
        OldTimeMaster master;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (OldTimeMaster)Page.Master;
            master.sgselect = 1;
        }
    }
}