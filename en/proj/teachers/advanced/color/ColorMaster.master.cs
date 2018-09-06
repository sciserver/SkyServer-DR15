using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Advanced.Color
{
    public partial class ColorMaster : System.Web.UI.MasterPage
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

            master.gselect = 2.2;

            sgutter = "0,Color,/proj/teachers/advanced/color/;";
            sgutter += "1,Teacher's Guide,/proj/teachers/advanced/color/;";
            sgutter += "1.1,Goals,/proj/teachers/advanced/color/default.aspx#goals;";
            sgutter += "1.2,Background,/proj/teachers/advanced/color/default.aspx#background;";
            sgutter += "1.3,Structure,/proj/teachers/advanced/color/default.aspx#structure;";
            sgutter += "1.4,Questions,/proj/teachers/advanced/color/default.aspx#questions;";
            sgutter += "2,Specifics,/proj/teachers/advanced/color/specifics.aspx;";
            sgutter += "2.1,Chapter 1,/proj/teachers/advanced/color/specifics.aspx#ch1;";
            sgutter += "2.2,Chapter 2,/proj/teachers/advanced/color/specifics.aspx#ch2;";
            sgutter += "2.3,Chapter 3,/proj/teachers/advanced/color/specifics.aspx#ch3;";
            sgutter += "2.4,Chapter 4,/proj/teachers/advanced/color/specifics.aspx#ch4;";
            sgutter += "2.5,Chapter 5,/proj/teachers/advanced/color/specifics.aspx#ch5;";
            sgutter += "3,Correlations,/proj/teachers/advanced/color/correlations.aspx;";
            sgutter += "3.1,Science Standards,/proj/teachers/advanced/color/correlations.aspx#science;";
            sgutter += "3.2,Math Standards,/proj/teachers/advanced/color/correlations.aspx#math;";
            sgutter += "4,To Student Project,/proj/advanced/color/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}