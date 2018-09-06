using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Tools.Search
{
    public partial class Rect : System.Web.UI.Page
    {
        protected double searchRA1 = 197.61;		// radial RA and first rect RA
        protected double searchDec1 = 18.4;		// radial dec and first rect dec
        protected double searchRad = 3.0;		// radial search radius
        protected double searchRA2 = 197.62;		// second rect RA
        protected double searchDec2 = 18.5;		// second rect dec

        protected string url;

        protected Globals globals;
        ToolsMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ToolsMaster)Page.Master;
            master.gselect = 5.2;

            url = ResolveClientUrl("~/en");
        }

    }
}