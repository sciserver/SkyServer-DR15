using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Scavenger
{
    public partial class ScavengerMaster : System.Web.UI.MasterPage
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
            
            master.gselect = 1.1;

            sgutter = "0,Scavenger Hunt,/proj/basic/scavenger/;";
            sgutter += "1,Colors,/proj/basic/scavenger/colors.aspx;";
            sgutter += "2,Spectra,/proj/basic/scavenger/spectra.aspx;";
            sgutter += "3,Object Explorer,/proj/basic/scavenger/explorer.aspx;";
            sgutter += "4,Types of Objects,/proj/basic/scavenger/objecttypes.aspx;";
            sgutter += "4.1,Stars,/proj/basic/scavenger/objecttypes.aspx#stars;";
            sgutter += "4.2,Star Clusters,/proj/basic/scavenger/objecttypes.aspx#starclusters;";
            sgutter += "4.3,Galaxies,/proj/basic/scavenger/objecttypes.aspx#galaxies;";
            sgutter += "4.4,Quasars,/proj/basic/scavenger/objecttypes.aspx#quasars;";
            sgutter += "5,More Types of Objects,/proj/basic/scavenger/objecttypes2.aspx;";
            sgutter += "5.1,Asteroids,/proj/basic/scavenger/objecttypes2.aspx#asteroids;";
            sgutter += "5.2,Meteors,/proj/basic/scavenger/objecttypes2.aspx#meteors;";
            sgutter += "5.3,Galaxy Clusters,/proj/basic/scavenger/objecttypes2.aspx#galaxyclusters;";
            sgutter += "5.4,Ghosts,/proj/basic/scavenger/objecttypes2.aspx#ghosts;";
            sgutter += "6,The Hunt,/proj/basic/scavenger/scavengerhunt.aspx;";
            sgutter += "7,Winning Groups,/proj/basic/scavenger/times.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}