using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Basic.Galaxies
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

            master.gselect = 1.6;

            sgutter = "0,Galaxies,/proj/teachers/basic/galaxies/;";
            sgutter += "1,Teacher's Guide,/proj/teachers/basic/galaxies/;";
            sgutter += "1.1,Goals,/proj/teachers/basic/galaxies/default.aspx#goals;";
            sgutter += "1.2,Background,/proj/teachers/basic/galaxies/default.aspx#background;";
            sgutter += "1.3,Structure,/proj/teachers/basic/galaxies/default.aspx#structure;";
            sgutter += "1.4,Questions,/proj/teachers/basic/galaxies/default.aspx#questions;";
            sgutter += "2,Specifics,/proj/teachers/basic/galaxies/specifics.aspx;";
            sgutter += "2.1,Classifying,/proj/teachers/basic/galaxies/specifics.aspx#classifying;";
            sgutter += "2.2,Types of Galaxies,/proj/teachers/basic/galaxies/specifics.aspx#types;";
            sgutter += "2.3,Hubble Tuning Fork,/proj/teachers/basic/galaxies/specifics.aspx#tuningfork;";
            sgutter += "2.4,Clusters,/proj/teachers/basic/galaxies/specifics.aspx#clusters;";
            sgutter += "2.5,Collisions,/proj/teachers/basic/galaxies/specifics.aspx#collisions;";
            sgutter += "2.6,Other Ways,/proj/teachers/basic/galaxies/specifics.aspx#otherways;";
            sgutter += "2.7,Conclusion,/proj/teachers/basic/galaxies/specifics.aspx#conclusion;";
            sgutter += "3,Correlations,/proj/teachers/basic/galaxies/correlations.aspx;";
            sgutter += "3.1,Science,/proj/teachers/basic/galaxies/correlations.aspx#science;";
            sgutter += "3.2,Math,/proj/teachers/basic/galaxies/correlations.aspx#math;";
            sgutter += "4,To Student Project,/proj/basic/galaxies/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}