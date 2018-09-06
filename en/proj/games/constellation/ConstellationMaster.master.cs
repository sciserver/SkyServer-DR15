using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Constellation
{
    public partial class ConstellationMaster : System.Web.UI.MasterPage
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

            master.gselect = 5.4;

            sgutter = "0,Constellations,/proj/games/constellation/;";
            sgutter += "1,An Example,/proj/games/constellation/orion.aspx;";
            sgutter += "2,Other Shapes,/proj/games/constellation/othershapes.aspx;";
            sgutter += "3,Other Constellations,/proj/games/constellation/othercon.aspx;";
            sgutter += "4,SDSS Constellations,/proj/games/constellation/sdsscon.aspx;";
            sgutter += "5,An SDSS Example,/proj/games/constellation/example.aspx;";
            sgutter += "6,Your Constellations,/proj/games/constellation/yours.aspx;";
            sgutter += "6.1,Burning Arrow,/proj/games/constellation/yours.aspx#arrow;";
            sgutter += "6.2,Great Pyramid,/proj/games/constellation/yours.aspx#pyramid;";
            sgutter += "6.3,Blunt Smile,/proj/games/constellation/yours2.aspx#smile;";
            sgutter += "6.4,Fish,/proj/games/constellation/yours2.aspx#fish;";
            sgutter += "6.5,Goalpost #1,/proj/games/constellation/yours3.aspx#goalpost1;";
            sgutter += "6.6,Goalpost #2,/proj/games/constellation/yours3.aspx#goalpost2;";
            sgutter += "6.7,Question Mark,/proj/games/constellation/yours4.aspx#questionmark;";
            sgutter += "6.8,Goalpost #3,/proj/games/constellation/yours4.aspx#goalpost3;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}