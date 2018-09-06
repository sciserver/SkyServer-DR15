using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj
{
    public partial class SolarQuiz : System.Web.UI.Page
    {
        protected Globals globals;
        ProjMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ProjMaster)Page.Master;
            master.gselect = 5.2;
        }
    }
}