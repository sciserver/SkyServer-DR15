using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.Hubble
{
    public partial class HubbleMaster : System.Web.UI.MasterPage
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

            master.gselect = 2.1;

            sgutter = "0,Hubble Diagram,/proj/advanced/hubble/;";
            sgutter += "1,A simple diagram,/proj/advanced/hubble/simple.aspx;";
            sgutter += "1.1,Distances,/proj/advanced/hubble/simple.aspx#distances;";
            sgutter += "1.2,Redshifts,/proj/advanced/hubble/simple.aspx#redshifts;";
            sgutter += "1.3,The Diagram,/proj/advanced/hubble/simple.aspx#diagram;";
            sgutter += "1.4,Another diagram,/proj/advanced/hubble/simple.aspx#another;";
            sgutter += "2,Distances,/proj/advanced/hubble/distances.aspx;";
            sgutter += "2.1,Galaxies,/proj/advanced/hubble/distances.aspx#galaxies;";
            sgutter += "2.2,Clusters,/proj/advanced/hubble/distances.aspx#clusters;";
            sgutter += "2.3,Sample,/proj/advanced/hubble/distances.aspx#sample;";
            sgutter += "3,Redshifts,/proj/advanced/hubble/redshifts.aspx;";
            sgutter += "3.1,Measuring,/proj/advanced/hubble/redshifts.aspx#measuring;";
            sgutter += "3.2,Interpreting,/proj/advanced/hubble/redshifts.aspx#interpreting;";
            sgutter += "3.3,Sample,/proj/advanced/hubble/redshifts.aspx#sample;";
            sgutter += "4,Conclusion,/proj/advanced/hubble/conclusion.aspx;";
            sgutter += "4.1,The Big Bang,/proj/advanced/hubble/conclusion.aspx#bigbang;";
            sgutter += "4.2,Absolute Distance,/proj/advanced/hubble/conclusion.aspx#absolute;";
            sgutter += "4.3,Putting it Together,/proj/advanced/hubble/conclusion.aspx#together;";
            sgutter += "5,Your Diagrams,/proj/advanced/hubble/diagrams.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}