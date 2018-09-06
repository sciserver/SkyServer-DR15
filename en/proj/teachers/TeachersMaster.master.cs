using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers
{
    public partial class TeachersMaster : System.Web.UI.MasterPage
    {
        protected string imgpath;
        protected string url;
        protected string gutter;
        public double gselect = 0;
        protected Globals globals;
        protected HomeMaster master;
        protected Gutter ProjGutter;

        protected void Page_Load(object sender, EventArgs e)
        {
            imgpath = ResolveClientUrl("~/en/images/");
            url = Utilities.getURL(Request);
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (HomeMaster)this.Master;
            master.imgpath = this.imgpath;

            gutter = "0,Teachers,/proj/teachers/;";
            gutter += "1,Basic,/proj/teachers/basic;";
            gutter += "1.1,Scavenger Hunt,/proj/teachers/basic/scavenger/;";
            gutter += "1.2,The Universe,/proj/teachers/basic/universe/;";
            gutter += "1.3,Asteroids,/proj/teachers/basic/asteroids/;";
            gutter += "1.4,Types of Stars,/proj/teachers/basic/spectraltypes/;";
            gutter += "1.5,Color,/proj/teachers/basic/color/;";
            gutter += "1.6,Galaxies,/proj/teachers/basic/galaxies/;";
            gutter += "2,Advanced,/proj/teachers/advanced;";
            gutter += "2.1,Hubble Diagram,/proj/teachers/advanced/hubble/;";
            gutter += "2.2,Color,/proj/teachers/advanced/color/;";
            gutter += "2.3,Spectral Types,/proj/teachers/advanced/spectraltypes/;";
            gutter += "2.4,H-R Diagram,/proj/teachers/advanced/hr/;";
            gutter += "2.5,Galaxies,/proj/teachers/advanced/galaxies/;";
            gutter += "2.6,Sky Surveys,/proj/teachers/advanced/skysurveys/;";
            gutter += "2.7,Quasars,/proj/teachers/advanced/quasars/;";
            gutter += "2.8,Image Processing,/proj/teachers/advanced/processing/;";
            gutter += "3,Challenges,/proj/teachers/challenges/;";
            gutter += "3.1,HII Regions,/proj/teachers/challenges/hii;";
            gutter += "4,For Kids,/proj/teachers/kids;";
            gutter += "4.1,Old Time Astro,/proj/teachers/kids/oldtime/;";
            gutter += "4.2,Scavenger Hunt,/proj/teachers/kids/scavenger/;";
            gutter += "4.3,Constellations,/proj/teachers/kids/constellation/;";
            gutter += "5,To Student Projects,/proj/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}