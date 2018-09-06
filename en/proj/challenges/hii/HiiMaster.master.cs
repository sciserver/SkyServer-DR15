using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Hii
{
    public partial class HiiMaster : System.Web.UI.MasterPage
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

            master.gselect = 3.6;

            sgutter = "0,HII Regions,/proj/challenges/hii/;";
            sgutter += "1,Characteristics,/proj/challenges/hii/characteristics.aspx;";
            sgutter += "2,Querying,/proj/challenges/hii/query.aspx;";
            sgutter += "3,Identifying,/proj/challenges/hii/identifying.aspx;";
            sgutter += "4,Your Catalogs,/proj/challenges/hii/catalogs.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);

        }
    }
}