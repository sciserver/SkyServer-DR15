using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.HR
{
    public partial class NearestStars : System.Web.UI.Page
    {
        HrMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (HrMaster)Page.Master;
            master.sgselect = 4;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}