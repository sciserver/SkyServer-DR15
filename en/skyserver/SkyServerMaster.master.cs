using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.SkyServer
{
    public partial class SkyServerMaster : System.Web.UI.MasterPage
    {
        protected string imgpath;
        protected string url;
        protected string gutter;
        public double gselect = 0;
        protected Globals globals;
        protected HomeMaster master;
        protected Gutter SkyServerGutter;

        protected void Page_Load(object sender, EventArgs e)
        {
            imgpath = ResolveClientUrl("~/en/images/");
            url = Utilities.getURL(Request);
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (HomeMaster)this.Master;
            master.imgpath = this.imgpath;

            gutter = "0,SkyServer,/skyserver/;";
            gutter += "1,Site Map,/skyserver/sitemap/default.aspx;";
            gutter += "2,SkyServer paper,/skyserver/paper/;";
            gutter += "2.1,Website,/skyserver/paper/default.aspx#ifdesign;";
            gutter += "2.2,Data Mining,/skyserver/paper/default.aspx#mining;";
            gutter += "2.3,Query Tool,/skyserver/paper/default.aspx#sdssQA;";
            gutter += "2.4,Web Server Design,/skyserver/paper/default.aspx#wsdesign;";
            gutter += "2.5,Education,/skyserver/paper/default.aspx#epo;";
            gutter += "2.6,Site Traffic,/skyserver/paper/default.aspx#traffic;";
            gutter += "2.7,SDSS Data,/skyserver/paper/default.aspx#data;";
            gutter += "2.8,Data Model,/skyserver/paper/default.aspx#datamodel;";
            gutter += "2.9,Spatial Indexing,/skyserver/paper/default.aspx#htm;";
            gutter += "2.10,Data Loading,/skyserver/paper/default.aspx#loader;";
            gutter += "2.11,MySkyServer,/skyserver/paper/default.aspx#mss;";
            gutter += "2.12,Hardware,/skyserver/paper/default.aspx#hardware;";

            gutter += "3,CiSE papers,/skyserver/cise/;";
            gutter += "3.1,Overview,/skyserver/cise/default.aspx#overview;";
            gutter += "3.2,DAS,/skyserver/cise/default.aspx#das;";
            gutter += "3.3,CAS,/skyserver/cise/default.aspx#cas;";
            gutter += "3.4,sqlLoader,/skyserver/cise/default.aspx#loader;";
            gutter += "3.5,CasJobs,/skyserver/cise/default.aspx#casjobs;";
            gutter += "3.6,Lessons Learned,/skyserver/cise/default.aspx#lessons;";
            gutter += "4,Site Traffic,http://skyserver.sdss.org/log/en/traffic/;";
            gutter += "5,skyserver.org,http://www.skyserver.org/;";
            gutter += "6,About the SDSS,/sdss/;";
            gutter += "7,Credits,/credits/;";
            gutter += "8,SkyServer Team,http://www.skyserver.org/team/;";

            SkyServerGutter = new Gutter(imgpath, url, Response);
        }
    }
}