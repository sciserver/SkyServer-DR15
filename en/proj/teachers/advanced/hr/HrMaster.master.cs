using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Advanced.HR
{
    public partial class HrMaster : System.Web.UI.MasterPage
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

            master.gselect = 2.4;

            sgutter = "0,H-R Diagram,/proj/teachers/advanced/hr/;";
            sgutter += "1,Teacher's Guide,/proj/teachers/advanced/hr/;";
            sgutter += "1.1,Goals,/proj/teachers/advanced/hr/default.aspx#goals;";
            sgutter += "1.2,Background,/proj/teachers/advanced/hr/default.aspx#background;";
            sgutter += "1.3,Structure,/proj/teachers/advanced/hr/default.aspx#structure;";
            sgutter += "1.4,Questions,/proj/teachers/advanced/hr/default.aspx#questions;";
            sgutter += "2,Specifics,/proj/teachers/advanced/hr/specifics.aspx;";
            sgutter += "2.1,Introduction,/proj/teachers/advanced/hr/specifics.aspx#intro;";
            sgutter += "2.2,Brightest Stars,/proj/teachers/advanced/hr/specifics.aspx#brightest;";
            sgutter += "2.3,Nearest Stars,/proj/teachers/advanced/hr/specifics.aspx#nearest;";
            sgutter += "2.4,Diagram,/proj/teachers/advanced/hr/specifics.aspx#thehr;";
            sgutter += "2.5,Hipparcos Data,/proj/teachers/advanced/hr/specifics.aspx#hipparcos;";
            sgutter += "2.6,Pleiades Data,/proj/teachers/advanced/hr/specifics.aspx#pleiades;";
            sgutter += "2.7,Radius,/proj/teachers/advanced/hr/specifics.aspx#radius;";
            sgutter += "2.8,Globular Clusters,/proj/teachers/advanced/hr/specifics.aspx#globular;";
            sgutter += "2.9,Searching Data,/proj/teachers/advanced/hr/specifics.aspx#searching;";
            sgutter += "2.10,Conclusion,/proj/teachers/advanced/hr/specifics.aspx#conclusion;";
            sgutter += "3,Correlations,/proj/teachers/advanced/hr/correlations.aspx;";
            sgutter += "3.1,Science standards,/proj/teachers/advanced/hr/correlations.aspx#science;";
            sgutter += "3.2,Math standards,/proj/teachers/advanced/hr/correlations.aspx#math;";
            sgutter += "4,To Student Project,/proj/advanced/hr/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}