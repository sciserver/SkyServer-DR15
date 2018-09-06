using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Hii
{
    public partial class Identifying : System.Web.UI.Page
    {
        HiiMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (HiiMaster)Page.Master;
            master.sgselect = 3;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}