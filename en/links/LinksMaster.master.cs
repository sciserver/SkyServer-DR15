using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Links
{
    public partial class LinksMaster : System.Web.UI.MasterPage
    {
        protected string imgpath;
        protected string url;
        protected string gutter;
        public double gselect = 0;
        protected Globals globals;
        protected HomeMaster master;
        protected Gutter LinksGutter;

        protected void Page_Load(object sender, EventArgs e)
        {
            imgpath = ResolveClientUrl("~/en/images/");
            url = Utilities.getURL(Request);
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (HomeMaster)this.Master;
            master.imgpath = this.imgpath;

            gutter = "";
            gutter += "0,Info Links,/links/;";
            gutter += "1,About Astronomy,/astro/;";
            gutter += "2,About SDSS,/sdss/;";
            gutter += "3,About SkyServer,/skyserver/;";
            gutter += "4,The EDR SkyServer,../../../edr/;";
            gutter += "5,SDSS Data Release 1,http://www.sdss.org/dr1/;";
            gutter += "7,SDSS Data Release 2,http://www.sdss.org/dr2/;";
            gutter += "6,SkyQuery,http://skyquery.net/;";
            gutter += "20,Download,/help/download/;";

            LinksGutter = new Gutter(imgpath, url, Response);
        }
    }
}