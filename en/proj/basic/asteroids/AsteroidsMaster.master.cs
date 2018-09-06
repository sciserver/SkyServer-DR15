using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Asteroids
{
    public partial class AsteroidsMaster : System.Web.UI.MasterPage
    {
        protected string imgpath;
        protected string url;
        protected string sgutter;
        public double sgselect = 0;
        protected Globals globals;
        protected ProjMaster master;
        protected Gutter ProjGutter;

        protected void Page_Load(object sender, EventArgs e)
        {
            imgpath = ResolveClientUrl("~/en/images/");
            url = Utilities.getURL(Request);
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ProjMaster)this.Master;

            master.gselect = 1.3;

            sgutter = "0,Asteroids!,/proj/basic/asteroids/;";
            sgutter += "1,Moving Objects,/proj/basic/asteroids/findingasteroids1.aspx;";
            sgutter += "1.1,Moving Objects,/proj/basic/asteroids/findingasteroids1.aspx#moving;";
            sgutter += "1.2,Asteroids,/proj/basic/asteroids/findingasteroids1.aspx#asteroid;";
            sgutter += "2,How to Find,/proj/basic/asteroids/howtofind.aspx;";
            sgutter += "3,The Asteroids,/proj/basic/asteroids/howtofind2.aspx;";
            sgutter += "4,Find the Asteroids,/proj/basic/asteroids/findingasteroids2.aspx;";
            sgutter += "5,Asteroid Hunt,/proj/basic/asteroids/asteroidhunt.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}