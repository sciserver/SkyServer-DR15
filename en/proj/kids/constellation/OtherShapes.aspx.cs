using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Kids.Constellation
{
    public partial class OtherShapes : System.Web.UI.Page
    {
        ConstellationMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (ConstellationMaster)Page.Master;
            master.sgselect = 5;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}