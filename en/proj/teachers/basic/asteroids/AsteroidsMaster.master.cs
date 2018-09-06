using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Basic.Asteroids
{
    public partial class AsteroidsMaster : System.Web.UI.MasterPage
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

            master.gselect = 1.3;

            sgutter = "0,Asteroids!,/proj/teachers/basic/asteroids/;";
            sgutter += "1,Teacher's Guide,/proj/teachers/basic/asteroids/;";
            sgutter += "1.1,Goals,/proj/teachers/basic/asteroids/default.aspx#goals;";
            sgutter += "1.2,Background,/proj/teachers/basic/asteroids/default.aspx#background;";
            sgutter += "1.3,Structure,/proj/teachers/basic/asteroids/default.aspx#structure;";
            sgutter += "1.4,Questions,/proj/teachers/basic/asteroids/default.aspx#questions;";
            sgutter += "2,Specifics,/proj/teachers/basic/asteroids/specifics.aspx;";
            sgutter += "2.1,How to Find,/proj/teachers/basic/asteroids/specifics.aspx#howto;";
            sgutter += "2.2,Find Asteroids,/proj/teachers/basic/asteroids/specifics.aspx#findthose;";
            sgutter += "2.3,Asteroid Hunt,/proj/teachers/basic/asteroids/specifics.aspx#hunt;";
            sgutter += "3,Correlations,/proj/teachers/basic/asteroids/correlations.aspx;";
            sgutter += "4,To Student Project,/proj/basic/asteroids/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}