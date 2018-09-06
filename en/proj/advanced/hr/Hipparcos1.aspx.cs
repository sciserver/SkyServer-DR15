using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.HR
{
    public partial class Hipparcos1 : System.Web.UI.Page
    {
        HrMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (HrMaster)Page.Master;
            master.sgselect = 6;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}