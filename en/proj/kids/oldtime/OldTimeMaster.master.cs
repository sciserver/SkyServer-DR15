using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Kids.OldTime
{
    public partial class OldTimeMaster : System.Web.UI.MasterPage
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

            master.gselect = 4.1;

            sgutter = "0,Old Time Astronomy,/proj/kids/oldtime/;";
            sgutter += "1,Drawing,/proj/kids/oldtime/draw.aspx;";
            sgutter += "2,Meet Mr. Geldorp,/proj/kids/oldtime/geldorp.aspx;";
            sgutter += "3,Drawing Tips,/proj/kids/oldtime/drawingtips.aspx;";
            sgutter += "4,Get Your Object,/proj/kids/oldtime/image_selection.aspx;";
            sgutter += "5,Compare,/proj/kids/oldtime/sketchcomparison.aspx;";
            sgutter += "6,Guess the Place,/proj/kids/oldtime/guesstheplace.aspx;";
            sgutter += "7,Conclusion,/proj/kids/oldtime/conclusion.aspx;";
            sgutter += "8,Sketch Gallery,/proj/kids/oldtime/gallery.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}