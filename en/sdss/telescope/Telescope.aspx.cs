using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.SDSS
{
    public partial class Telescope : System.Web.UI.Page
    {
        SdssMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            master = (SdssMaster)Page.Master;
            master.gselect = 2;
        }
    }
}