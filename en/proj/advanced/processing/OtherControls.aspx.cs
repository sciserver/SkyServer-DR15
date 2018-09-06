using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.Processing
{
    public partial class OtherControls : System.Web.UI.Page
    {
        ProcessingMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (ProcessingMaster)Page.Master;
            master.sgselect = 8;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}