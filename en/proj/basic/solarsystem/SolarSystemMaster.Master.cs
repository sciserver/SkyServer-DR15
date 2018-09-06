using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.SolarSystem
{
    public partial class SolarSystemMaster : System.Web.UI.MasterPage
    {
        protected string imgpath;
        protected string url;
        protected string sgutter;
        public double sgselect = 0;
        protected Globals globals;
        protected ProjMaster master;
        protected Gutter ProjGutter;

        protected void Page_Load(object sender, EventArgs e)
        {
            imgpath = ResolveClientUrl("~/en/images/");
            url = Utilities.getURL(Request);
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ProjMaster)this.Master;

            master.gselect = 1.7;

            sgutter = "0,Solar System,/proj/basic/solarsystem/SolarSystemHome.aspx;";
            sgutter += "1,Coordinates,/proj/basic/solarsystem/coordinates/;";
            sgutter += "2,Mapping,/proj/basic/solarsystem/mapping/;";
            sgutter += "3,Earth Sun and Seasons,/proj/basic/solarsystem/earthsun/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}