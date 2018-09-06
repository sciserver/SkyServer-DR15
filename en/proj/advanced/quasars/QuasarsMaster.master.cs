using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.Quasars
{
    public partial class QuasarsMaster : System.Web.UI.MasterPage
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

            master.gselect = 2.7;

            sgutter = "0,Quasars,/proj/advanced/quasars/;";
            sgutter += "1,Radio Astronomy,/proj/advanced/quasars/radioastronomy.aspx;";
            sgutter += "2,VLA FIRST Survey,/proj/advanced/quasars/vlafirst.aspx;";
            sgutter += "3,Strange Objects,/proj/advanced/quasars/spectracomparisons.aspx;";
            sgutter += "4,What are Quasars?,/proj/advanced/quasars/whatare.aspx;";
            sgutter += "5,Power Source,/proj/advanced/quasars/power.aspx;";
            sgutter += "6,SDSS Quasars,/proj/advanced/quasars/query.aspx;";
            sgutter += "7,Research,/proj/advanced/quasars/photometricredshifts.aspx;";
            sgutter += "8,Conclusion,/proj/advanced/quasars/conclusion.aspx;";
            sgutter += "9,Your Results,/proj/advanced/quasars/results.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}