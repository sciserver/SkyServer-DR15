using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.Galaxies
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

            master.gselect = 2.5;

            sgutter = "0,Galaxies,/proj/advanced/galaxies/;";
            sgutter += "1,Classifying,/proj/advanced/galaxies/classification.aspx;";
            sgutter += "2,Hubble Tuning Fork,/proj/advanced/galaxies/tuningfork.aspx;";
            sgutter += "3,Characteristics,/proj/advanced/galaxies/characteristics.aspx;";
            sgutter += "3.1,Elliptical,/proj/advanced/galaxies/characteristics.aspx#elliptical;";
            sgutter += "3.2,Spiral,/proj/advanced/galaxies/characteristics.aspx#spiral;";
            sgutter += "3.3,Lenticular,/proj/advanced/galaxies/characteristics.aspx#lenticular;";
            sgutter += "3.4,Irregular,/proj/advanced/galaxies/characteristics.aspx#irregular;";
            sgutter += "4,Clusters,/proj/advanced/galaxies/clusters.aspx;";
            sgutter += "4.1,Using Clusters,/proj/advanced/galaxies/clusters.aspx#using;";
            sgutter += "5,Separating,/proj/advanced/galaxies/separator.aspx;";
            sgutter += "6,Spectra,/proj/advanced/galaxies/spectra.aspx;";
            sgutter += "7,Collisions,/proj/advanced/galaxies/collisions.aspx;";
            sgutter += "8,Conclusion,/proj/advanced/galaxies/galaxies.aspx;";
            sgutter += "8.1,Galaxy Evolution,/proj/advanced/galaxies/galaxies.aspx#evolution;";
            sgutter += "9,Your Results,/proj/advanced/galaxies/results.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}