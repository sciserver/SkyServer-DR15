using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Kids.Constellation
{
    public partial class Background : System.Web.UI.Page
    {
        protected Globals globals;
        ConstellationMaster master;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ConstellationMaster)Page.Master;
            master.sgselect = 2;
        }
    }
}