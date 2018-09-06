using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Color
{
    public partial class ColorMaster : System.Web.UI.MasterPage
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

            master.gselect = 1.5;

            sgutter = "0,Color,/proj/basic/color/;";
            sgutter += "1,SDSS Stars,/proj/basic/color/explore.aspx;";
            sgutter += "2,Definition,/proj/basic/color/definition.aspx;";
            sgutter += "3,What is Color?,/proj/basic/color/whatiscolor.aspx;";
            sgutter += "4,Light from Stars,/proj/basic/color/fromstars.aspx;";
            sgutter += "5,Temperature,/proj/basic/color/colorandtemp.aspx;";
            sgutter += "6,Observed Spectra,/proj/basic/color/observedspectra.aspx;";
            sgutter += "7,Diagrams,/proj/basic/color/colorcolordiagram.aspx;";
            sgutter += "8,Thermal Sources,/proj/basic/color/thermalsources.aspx;";
            sgutter += "9,Conclusion,/proj/basic/color/conclusion.aspx;";
            sgutter += "10,Your Results,/proj/basic/color/results.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}