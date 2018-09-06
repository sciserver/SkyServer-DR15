using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Astro
{
    public partial class Universe : System.Web.UI.Page
    {
        AstroMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            master = (AstroMaster)Page.Master;
            master.gselect = 5;
        }
    }
}