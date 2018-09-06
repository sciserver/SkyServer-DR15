using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Kids.OldTime
{
    public partial class OldTimeMaster : System.Web.UI.MasterPage
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

            master.gselect = 4.1;

            sgutter = "0,Old Time Astronomy,/proj/teachers/kids/oldtime/;";
            sgutter += "1,Teacher Notes,/proj/teachers/kids/oldtime/;";
            sgutter += "1.1,Background,/proj/teachers/kids/oldtime/default.aspx#background;";
            sgutter += "1.2,Structure,/proj/teachers/kids/oldtime/default.aspx#structure;";
            sgutter += "1.3,Correlations,/proj/teachers/kids/oldtime/default.aspx#correlations;";
            sgutter += "2,To Student Project,/proj/kids/oldtime/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}