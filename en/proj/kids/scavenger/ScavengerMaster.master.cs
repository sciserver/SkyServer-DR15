using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Kids.Scavenger
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

            master.gselect = 4.2;

            sgutter = "0,Scavenger Hunt,/proj/kids/scavenger/;";
            sgutter += "1,Colors,/proj/kids/scavenger/colors.aspx;";
            sgutter += "2,Navigation Tool,/proj/kids/scavenger/navi.aspx;";
            sgutter += "3,Data,/proj/kids/scavenger/data.aspx;";
            sgutter += "4,Types of Objects,/proj/kids/scavenger/objecttypes.aspx;";
            sgutter += "4.1,Stars,/proj/kids/scavenger/objecttypes.aspx#stars;";
            sgutter += "4.2,Star Clusters,/proj/kids/scavenger/objecttypes.aspx#starclusters;";
            sgutter += "4.3,Galaxies,/proj/kids/scavenger/objecttypes.aspx#galaxies;";
            sgutter += "4.4,Asteroids,/proj/kids/scavenger/objecttypes2.aspx#asteroids;";
            sgutter += "4.5,Galaxy Clusters,/proj/kids/scavenger/objecttypes2.aspx#galaxyclusters;";
            sgutter += "4.6,Ghosts,/proj/kids/scavenger/objecttypes2.aspx#ghosts;";
            sgutter += "5,The Hunt,/proj/kids/scavenger/scavengerhunt.aspx;";
            sgutter += "6,Winning Groups,/proj/kids/scavenger/times.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}