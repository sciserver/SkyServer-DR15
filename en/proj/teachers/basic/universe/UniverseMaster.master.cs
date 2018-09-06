using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Basic.Universe
{
    public partial class UniverseMaster : System.Web.UI.MasterPage
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

            master.gselect = 1.2;

            sgutter = "0,The Universe,/proj/teachers/basic/universe/;";
            sgutter += "1,Overview,/proj/teachers/basic/universe/overview.aspx;";
            sgutter += "2,Background,/proj/teachers/basic/universe/background.aspx;";
            sgutter += "3,Lesson Plan,/proj/teachers/basic/universe/lesson.aspx;";
            sgutter += "4,Teaching Tips,/proj/teachers/basic/universe/tips.aspx;";
            sgutter += "5,Assessment,/proj/teachers/basic/universe/assess.aspx;";
            sgutter += "6,Standards,/proj/teachers/basic/universe/standards.aspx;";
            sgutter += "7,To Student Project,/proj/basic/universe/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}