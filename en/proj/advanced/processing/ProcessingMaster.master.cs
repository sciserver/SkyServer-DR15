using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.Processing
{
    public partial class ProcessingMaster : System.Web.UI.MasterPage
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

            master.gselect = 2.8;

            sgutter = "0,Image Processing,/proj/advanced/processing/;";
            sgutter += "1,What is an Image?,/proj/advanced/processing/ccdimages.aspx;";
            sgutter += "2,Software,/proj/advanced/processing/iris.aspx;";
            sgutter += "3,Retrieving Images,/proj/advanced/processing/retrievingdata.aspx;";
            sgutter += "4,Analyzing Images,/proj/advanced/processing/maxandmin.aspx;";
            sgutter += "5,Tricolor Images,/proj/advanced/processing/tricolor.aspx;";
            sgutter += "6,Other Images,/proj/advanced/processing/otherimages.aspx;";
            sgutter += "7,Asteroids,/proj/advanced/processing/asteroids.aspx;";
            sgutter += "8,Other Features,/proj/advanced/processing/othercontrols.aspx;";
            sgutter += "8.1,Color Palettes,/proj/advanced/processing/othercontrols.aspx#palettes;";
            sgutter += "8.2,Log Scaling,/proj/advanced/processing/othercontrols.aspx#log;";
            sgutter += "9,Alternate Views,/proj/advanced/processing/alternateviews.aspx;";
            sgutter += "9.1,Isophotes,/proj/advanced/processing/alternateviews.aspx#isophotes;";
            sgutter += "9.2,3-D Views,/proj/advanced/processing/alternateviews.aspx#threed;";
            sgutter += "10,Conclusion,/proj/advanced/processing/conclusion.aspx;";
            sgutter += "10.1,Challenges,/proj/advanced/processing/conclusion.aspx#fc;";
            sgutter += "11,Your Results,/proj/advanced/processing/results.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}