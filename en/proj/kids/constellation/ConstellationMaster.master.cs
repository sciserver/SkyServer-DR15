using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Kids.Constellation
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

            master.gselect = 4.3;

            sgutter = "0,Constellations,/proj/kids/constellation/;";
            sgutter += "1,Made-Up Constellation,/proj/kids/constellation/simple.aspx;";
            sgutter += "2,Compare Shapes,/proj/kids/constellation/compare.aspx;";
            sgutter += "3,Orion,/proj/kids/constellation/orion.aspx;";
            sgutter += "4,Stars in Orion,/proj/kids/constellation/orionstars.aspx;";
            sgutter += "5,Other Shapes,/proj/kids/constellation/othershapes.aspx;";
            sgutter += "6,Other Constellations,/proj/kids/constellation/othercon.aspx;";
            sgutter += "7,In SkyServer,/proj/kids/constellation/sdsscon.aspx;";
            sgutter += "8,SkyServer Example,/proj/kids/constellation/example.aspx;";
            sgutter += "9,Find Constellations,/proj/kids/constellation/find.aspx;";
            sgutter += "10,Your Constellations,/proj/kids/constellation/yours.aspx;";
            sgutter += "10.1,Butterfly,/proj/kids/constellation/yours.aspx#butterfly;";
            sgutter += "10.2,Snake,/proj/kids/constellation/yours.aspx#snake;";
            sgutter += "10.3,Twin Towers,/proj/kids/constellation/yours2.aspx#twintowers;";
            sgutter += "10.4,Person,/proj/kids/constellation/yours2.aspx#person;";
            sgutter += "10.5,Badger with Spot,/proj/kids/constellation/yours3.aspx#badger;";
            sgutter += "10.2,Jesus' Fish,/proj/kids/constellation/yours3.aspx#jesusfish;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}