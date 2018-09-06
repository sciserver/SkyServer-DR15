using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Challenges.Hii
{
    public partial class HiiMaster : System.Web.UI.MasterPage
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

            master.gselect = 3.1;

            sgutter = "0,HII Regions,/proj/teachers/challenges/hii/;";
            sgutter += "1,Teacher's Guide,/proj/teachers/challenges/hii/;";
            sgutter += "1.1,Goals,/proj/teachers/challenges/hii/default.aspx#goals;";
            sgutter += "1.2,Background,/proj/teachers/challenges/hii/default.aspx#background;";
            sgutter += "1.3,Structure,/proj/teachers/challenges/hii/default.aspx#structure;";
            sgutter += "2,Specifics,/proj/teachers/challenges/hii/specifics.aspx;";
            sgutter += "2.1,Introduction,/proj/teachers/challenges/hii/specifics.aspx#catalog;";
            sgutter += "2.2,Characteristics,/proj/teachers/challenges/hii/specifics.aspx#characteristics;";
            sgutter += "2.3,Querying,/proj/teachers/challenges/hii/specifics.aspx#query;";
            sgutter += "2.4,Identifying,/proj/teachers/challenges/hii/specifics.aspx#identifying;";
            sgutter += "3,Correlations,/proj/teachers/challenges/hii/correlations.aspx;";
            sgutter += "3.1,Science Standards,/proj/teachers/challenges/hii/correlations.aspx#science;";
            sgutter += "3.2,Math Standards,/proj/teachers/challenges/hii/correlations.aspx#math;";
            sgutter += "4,To Student Project,/proj/challenges/hii/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}