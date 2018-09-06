using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.Processing
{
    public partial class Tricolor : System.Web.UI.Page
    {
        ProcessingMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (ProcessingMaster)Page.Master;
            master.sgselect = 5;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}