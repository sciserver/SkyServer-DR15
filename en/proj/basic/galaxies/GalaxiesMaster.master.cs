using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Galaxies
{
    public partial class GalaxiesMaster : System.Web.UI.MasterPage
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

            master.gselect = 1.6;

            sgutter = "0,Galaxies,/proj/basic/galaxies/;";
            sgutter += "1,Your Classifications,/proj/basic/galaxies/classification.aspx;";
            sgutter += "2,Spiral Galaxies,/proj/basic/galaxies/spirals.aspx;";
            sgutter += "3,Elliptical Galaxies,/proj/basic/galaxies/ellipticals.aspx;";
            sgutter += "4,Lenticular Galaxies,/proj/basic/galaxies/lenticular.aspx;";
            sgutter += "5,Irregular Galaxies,/proj/basic/galaxies/irregular.aspx;";
            sgutter += "6,Hubble Tuning Fork,/proj/basic/galaxies/tuningfork.aspx;";
            sgutter += "7,Galaxy Clusters,/proj/basic/galaxies/clusters.aspx;";
            sgutter += "8,Galaxy Collisions,/proj/basic/galaxies/collisions.aspx;";
            sgutter += "9,Other Classifications,/proj/basic/galaxies/colorclassification.aspx;";
            sgutter += "10,Conclusion,/proj/basic/galaxies/conclusion.aspx;";
            sgutter += "11,Your Results,/proj/basic/galaxies/results.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}