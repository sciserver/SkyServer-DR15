using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Advanced.Quasars
{
    public partial class QuasarsMaster : System.Web.UI.MasterPage
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

            master.gselect = 2.7;

            sgutter = "0,Quasars,/proj/teachers/advanced/quasars/;";
            sgutter += "1,Teacher's Guide,/proj/teachers/advanced/quasars/;";
            sgutter += "1.1,Goals,/proj/teachers/advanced/quasars/default.aspx#goals;";
            sgutter += "1.2,Background,/proj/teachers/advanced/quasars/default.aspx#background;";
            sgutter += "1.3,Structure,/proj/teachers/advanced/quasars/default.aspx#structure;";
            sgutter += "1.4,Questions,/proj/teachers/advanced/quasars/default.aspx#questions;";
            sgutter += "2,Specifics,/proj/teachers/advanced/quasars/specifics.aspx;";
            sgutter += "2.1,Radio Astronomy,/proj/teachers/advanced/quasars/specifics.aspx#radio;";
            sgutter += "2.2,VLA FIRST,/proj/teachers/advanced/quasars/specifics.aspx#vlafirst;";
            sgutter += "2.3,Comparing Spectra,/proj/teachers/advanced/quasars/specifics.aspx#compare;";
            sgutter += "2.4,What are Quasars?,/proj/teachers/advanced/quasars/specifics.aspx#whatare;";
            sgutter += "2.5,Power Source,/proj/teachers/advanced/quasars/specifics.aspx#power;";
            sgutter += "2.6,SDSS Quasars,/proj/teachers/advanced/quasars/specifics.aspx#sdss;";
            sgutter += "2.7,Research,/proj/teachers/advanced/quasars/specifics.aspx#research;";
            sgutter += "2.8,Conclusion,/proj/teachers/advanced/quasars/specifics.aspx#conclusion;";
            sgutter += "3,Correlations,/proj/teachers/advanced/quasars/correlations.aspx;";
            sgutter += "3.1,Science standards,/proj/teachers/advanced/quasars/correlations.aspx#science;";
            sgutter += "3.2,Math standards,/proj/teachers/advanced/quasars/correlations.aspx#math;";
            sgutter += "4,To Student Project,/proj/advanced/quasars/;";

            ProjGutter = new Gutter(imgpath, url, Response);

        }
    }
}