using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Universe
{
    public partial class UniverseMaster : System.Web.UI.MasterPage
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

            master.gselect = 1.2;

            sgutter = "0,The Universe,/proj/basic/universe/;";
            sgutter += "1,Your Cosmic Address,/proj/basic/universe/;";
            sgutter += "2,How Big is It?,/proj/basic/universe/howbig.aspx;";
            sgutter += "3,Expanding Universe,/proj/basic/universe/expanding.aspx;";
            sgutter += "4,How do We Know?,/proj/basic/universe/howdoweknow.aspx;";
            sgutter += "5,Distances,/proj/basic/universe/simple.aspx;";
            sgutter += "6,Magnitudes,/proj/basic/universe/mags.aspx;";
            sgutter += "7,Redshifts,/proj/basic/universe/redshift.aspx;";
            sgutter += "8,Making the Diagram,/proj/basic/universe/making.aspx;";
            sgutter += "9,Diagram and Universe,/proj/basic/universe/interpreting.aspx;";
            sgutter += "10,The Big Bang,/proj/basic/universe/bigbang.aspx;";
            sgutter += "11,More Galaxies,/proj/basic/universe/bad.aspx;";
            sgutter += "12,Research Challenges,/proj/basic/universe/challenge.aspx;";
            sgutter += "13,Your Results,/proj/basic/universe/results.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}