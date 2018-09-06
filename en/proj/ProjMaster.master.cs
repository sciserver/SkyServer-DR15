using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj
{
    public partial class ProjMaster : System.Web.UI.MasterPage
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

            gutter = "0," + globals.Release + " Projects,/proj/;";
            gutter += "1,Basic,/proj/basic;";
            gutter += "1.7,Solar System,/proj/basic/solarsystem/;";
            gutter += "1.1,Scavenger Hunt,/proj/basic/scavenger/;";
            gutter += "1.2,The Universe,/proj/basic/universe/;";
            gutter += "1.3,Asteroids,/proj/basic/asteroids/;";
            gutter += "1.4,Types of Stars,/proj/basic/spectraltypes/;";
            gutter += "1.5,Color,/proj/basic/color/;";
            gutter += "1.6,Galaxies,/proj/basic/galaxies/;";
            gutter += "2,Advanced,/proj/advanced;";
            gutter += "2.1,Hubble Diagram,/proj/advanced/hubble/;";
            gutter += "2.2,Color,/proj/advanced/color/;";
            gutter += "2.3,Spectral Types,/proj/advanced/spectraltypes/;";
            gutter += "2.4,H-R Diagram,/proj/advanced/hr/;";
            gutter += "2.5,Galaxies,/proj/advanced/galaxies/;";
            gutter += "2.6,Sky Surveys,/proj/advanced/skysurveys/;";
            gutter += "2.7,Quasars,/proj/advanced/quasars/;";
            gutter += "3,Research Challenges,/proj/challenges/;";
            gutter += "3.1,The Milky Way,/proj/challenges/milkyway/;";
            gutter += "3.2,Small Galaxies,/proj/challenges/galaxies/;";
            gutter += "3.3,Quasar Spectra,/proj/challenges/quasars/;";
            gutter += "3.4,Map the Universe,/proj/challenges/map/;";
            gutter += "3.6,HII Regions,/proj/challenges/hii;";
            gutter += "4,For Kids,/proj/kids;";
            gutter += "4.1,Old Time Astro,/proj/kids/oldtime/;";
            gutter += "4.2,Scavenger Hunt,/proj/kids/scavenger/;";
            gutter += "4.3,Constellations,/proj/kids/constellation/;";

            gutter += "7,User Activities,/proj/user;";
            gutter += "7.1,Finding Asteroids,/proj/user/asteroids;";

            gutter += "5,Games and Contests,/proj/games;";
            gutter += "5.4,Constellation Game,/proj/games/constellation/;";
            gutter += "5.1,Universe Quiz,/proj/games/quiz/quiz-1.aspx;";
            gutter += "5.2,Solar System Quiz,/proj/games/solarquiz/solarquiz.aspx;";
            gutter += "6,Links to Others,/proj/links;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}