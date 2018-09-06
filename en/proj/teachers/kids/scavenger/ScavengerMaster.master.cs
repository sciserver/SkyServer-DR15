using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Kids.Scavenger
{
    public partial class ScavengerMaster : System.Web.UI.MasterPage
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

            master.gselect = 4.2;

            sgutter = "0,Scavenger Hunt,/proj/teachers/kids/scavenger/;";
            sgutter += "1,Teacher Notes,/proj/teachers/kids/scavenger/;";
            sgutter += "1.1,Background,/proj/teachers/kids/scavenger/default.aspx#background;";
            sgutter += "1.2,Colors,/proj/teachers/kids/scavenger/default.aspx#colors;";
            sgutter += "1.3,Object Types,/proj/teachers/kids/scavenger/default.aspx#objecttypes;";
            sgutter += "1.4,Correlations,/proj/teachers/kids/scavenger/default.aspx#correlations;";
            sgutter += "2,To Student Project,/proj/kids/scavenger/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}