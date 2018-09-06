using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.HR
{
    public partial class HrMaster : System.Web.UI.MasterPage
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

            master.gselect = 2.4;

            sgutter = "0,H-R Diagram,/proj/advanced/hr/;";
            sgutter += "1,Introduction,/proj/advanced/hr/intro.aspx;";
            sgutter += "2,The Brightest Stars,/proj/advanced/hr/simplehr.aspx;";
            sgutter += "3,The H-R Diagram,/proj/advanced/hr/hrdiagram2.aspx;";
            sgutter += "4,The Nearest Stars,/proj/advanced/hr/neareststars.aspx;";
            sgutter += "5,More Stars,/proj/advanced/hr/extending.aspx;";
            sgutter += "6,The Hipparcos Data,/proj/advanced/hr/hipparcos1.aspx;";
            sgutter += "7,The Pleiades Data,/proj/advanced/hr/hipparcos2.aspx;";
            sgutter += "8,Globular Clusters,/proj/advanced/hr/globularcluster.aspx;";
            sgutter += "9,Searching for Data,/proj/advanced/hr/mast.aspx;";
            sgutter += "10,Conclusion,/proj/advanced/hr/conclusion.aspx;";
            sgutter += "11,Your Results,/proj/advanced/hr/results.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}