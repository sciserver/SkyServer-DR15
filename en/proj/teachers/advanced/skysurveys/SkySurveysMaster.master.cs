using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Advanced.SkySurveys
{
    public partial class SkySurveysMaster : System.Web.UI.MasterPage
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

            master.gselect = 2.6;

            sgutter = "0,Sky Surveys,/proj/teachers/advanced/skysurveys/;";
            sgutter += "1,Teacher's Guide,/proj/teachers/advanced/skysurveys/;";
            sgutter += "1.1,Goals,/proj/teachers/advanced/skysurveys/default.aspx#goals;";
            sgutter += "1.2,Background,/proj/teachers/advanced/skysurveys/default.aspx#background;";
            sgutter += "1.3,Structure,/proj/teachers/advanced/skysurveys/default.aspx#structure;";
            sgutter += "1.4,Questions,/proj/teachers/advanced/skysurveys/default.aspx#questions;";
            sgutter += "2,Specifics,/proj/teachers/advanced/skysurveys/specifics.aspx;";
            sgutter += "2.1,Introduction,/proj/teachers/advanced/skysurveys/specifics.aspx#introduction;";
            sgutter += "2.2,POSS,/proj/teachers/advanced/skysurveys/specifics.aspx#poss;";
            sgutter += "2.3,2MASS,/proj/teachers/advanced/skysurveys/specifics.aspx#2mass;";
            sgutter += "2.4,ROSAT,/proj/teachers/advanced/skysurveys/specifics.aspx#rosat;";
            sgutter += "3,Correlations,/proj/teachers/advanced/skysurveys/correlations.aspx;";
            sgutter += "4,To Student Project,/proj/advanced/skysurveys/;";

            ProjGutter = new Gutter(imgpath, url, Response);

        }
    }
}