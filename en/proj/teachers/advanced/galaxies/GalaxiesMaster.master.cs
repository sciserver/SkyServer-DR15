using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Advanced.Galaxies
{
    public partial class GalaxiesMaster : System.Web.UI.MasterPage
    {
        protected string imgpath;
        protected string url;
        protected string sgutter;
        public double sgselect = 0;
        protected Globals globals;
        protected TeachersMaster master;
        protected Gutter ProjGutter;

        protected void Page_Load(object sender, EventArgs e)
        {
            imgpath = ResolveClientUrl("~/en/images/");
            url = Utilities.getURL(Request);
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (TeachersMaster)this.Master;

            master.gselect = 2.5;

            sgutter = "0,Galaxies,/proj/teachers/advanced/galaxies/;";
            sgutter += "1,Teacher's Guide,/proj/teachers/advanced/galaxies/;";
            sgutter += "1.1,Goals,/proj/teachers/advanced/galaxies/default.aspx#goals;";
            sgutter += "1.2,Background,/proj/teachers/advanced/galaxies/default.aspx#background;";
            sgutter += "1.3,Structure,/proj/teachers/advanced/galaxies/default.aspx#structure;";
            sgutter += "1.4,Questions,/proj/teachers/advanced/galaxies/default.aspx#questions;";
            sgutter += "2,Specifics,/proj/teachers/advanced/galaxies/specifics.aspx;";
            sgutter += "2.1,Classifying,/proj/teachers/advanced/galaxies/specifics.aspx#classifying;";
            sgutter += "2.2,Hubble Tuning Fork,/proj/teachers/advanced/galaxies/specifics.aspx#tuningfork;";
            sgutter += "2.3,Clusters,/proj/teachers/advanced/galaxies/specifics.aspx#clusters;";
            sgutter += "2.4,Spectra,/proj/teachers/advanced/galaxies/specifics.aspx#spectra;";
            sgutter += "2.5,Collisions,/proj/teachers/advanced/galaxies/specifics.aspx#conclusion;";
            sgutter += "2.6,Conclusion,/proj/teachers/advanced/galaxies/specifics.aspx#conclusion;";
            sgutter += "3,Correlations,/proj/teachers/advanced/galaxies/correlations.aspx;";
            sgutter += "3.1,Science standards,/proj/teachers/advanced/galaxies/correlations.aspx#science;";
            sgutter += "3.2,Math standards,/proj/teachers/advanced/galaxies/correlations.aspx#math;";
            sgutter += "4,To Student Project,/proj/advanced/galaxies/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}