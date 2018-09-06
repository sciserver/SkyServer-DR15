using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Advanced.Hubble
{
    public partial class HubbleMaster : System.Web.UI.MasterPage
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

            master.gselect = 2.1;

            sgutter = "0,Hubble Diagram,/proj/teachers/advanced/hubble/;";
            sgutter += "1,Teacher's Guide,/proj/teachers/advanced/hubble/;";
            sgutter += "1.1,Goals,/proj/teachers/advanced/hubble/default.aspx#goals;";
            sgutter += "1.2,Background,/proj/teachers/advanced/hubble/default.aspx#background;";
            sgutter += "1.3,Structure,/proj/teachers/advanced/hubble/default.aspx#structure;";
            sgutter += "1.4,Questions,/proj/teachers/advanced/hubble/default.aspx#questions;";
            sgutter += "2,Specifics,/proj/teachers/advanced/hubble/specifics.aspx;";
            sgutter += "2.1,Introduction,/proj/teachers/advanced/hubble/specifics.aspx#intro;";
            sgutter += "2.2,Simple Diagram,/proj/teachers/advanced/hubble/specifics.aspx#simple;";
            sgutter += "2.3,Distances,/proj/teachers/advanced/hubble/specifics.aspx#distances;";
            sgutter += "2.4,Redshifts,/proj/teachers/advanced/hubble/specifics.aspx#redshifts;";
            sgutter += "2.5,Conclusion,/proj/teachers/advanced/hubble/specifics.aspx#conclusion;";
            sgutter += "3,Correlations,/proj/teachers/advanced/hubble/correlations.aspx;";
            sgutter += "3.1,Science Standards,/proj/teachers/advanced/hubble/correlations.aspx#science;";
            sgutter += "3.2,Math Standards,/proj/teachers/advanced/hubble/correlations.aspx#math;";
            sgutter += "4,To Student Project,/proj/advanced/hubble/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}