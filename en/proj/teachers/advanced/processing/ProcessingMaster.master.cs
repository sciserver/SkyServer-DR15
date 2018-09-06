using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Advanced.Processing
{
    public partial class ProcessingMaster : System.Web.UI.MasterPage
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

            master.gselect = 2.8;

            sgutter = "0,Image Processing,/proj/teachers/advanced/processing/;";
            sgutter += "1,Teacher's Guide,/proj/teachers/advanced/processing/;";
            sgutter += "1.1,Goals,/proj/teachers/advanced/processing/default.aspx#goals;";
            sgutter += "1.2,Background,/proj/teachers/advanced/processing/default.aspx#background;";
            sgutter += "1.3,Structure,/proj/teachers/advanced/processing/default.aspx#structure;";
            sgutter += "1.4,Questions,/proj/teachers/advanced/processing/default.aspx#questions;";
            sgutter += "2,Specifics,/proj/teachers/advanced/processing/specifics.aspx;";
            sgutter += "2.1,CCD Images,/proj/teachers/advanced/processing/specifics.aspx#ccd;";
            sgutter += "2.2,Iris,/proj/teachers/advanced/processing/specifics.aspx#iris;";
            sgutter += "2.3,Retrieving Data,/proj/teachers/advanced/processing/specifics.aspx#retrieving;";
            sgutter += "2.4,Analyzing Images,/proj/teachers/advanced/processing/specifics.aspx#analyzing;";
            sgutter += "2.5,Tricolor Images,/proj/teachers/advanced/processing/specifics.aspx#tricolor;";
            sgutter += "2.6,Other Images,/proj/teachers/advanced/processing/specifics.aspx#other;";
            sgutter += "2.7,Finding Asteroids,/proj/teachers/advanced/processing/specifics.aspx#asteroids;";
            sgutter += "2.8,Other Controls,/proj/teachers/advanced/processing/specifics.aspx#othercontrols;";
            sgutter += "2.9,Alternate Views,/proj/teachers/advanced/processing/specifics.aspx#alternate;";
            sgutter += "2.10,Conclusions,/proj/teachers/advanced/processing/specifics.aspx#conclusion;";
            sgutter += "3,Correlations,/proj/teachers/advanced/processing/correlations.aspx;";
            sgutter += "3.1,Science standards,/proj/teachers/advanced/processing/correlations.aspx#science;";
            sgutter += "4,To Student Project,/proj/advanced/processing/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}