using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.SkySurveys
{
    public partial class SkySurveysMaster : System.Web.UI.MasterPage
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

            master.gselect = 2.6;

            sgutter = "0,Sky Surveys,/proj/advanced/skysurveys/;";
            sgutter += "1,POSS,/proj/advanced/skysurveys/poss.aspx;";
            sgutter += "2,Supernovae,/proj/advanced/skysurveys/supernova1.aspx;";
            sgutter += "3,More Supernovae,/proj/advanced/skysurveys/supernova2.aspx;";
            sgutter += "4,Other Surveys,/proj/advanced/skysurveys/2mass.aspx;";
            sgutter += "5,2MASS,/proj/advanced/skysurveys/2masscomparison.aspx;";
            sgutter += "6,X-rays,/proj/advanced/skysurveys/rosat.aspx;";
            sgutter += "7,Conclusion,/proj/advanced/skysurveys/conclusion.aspx;";
            sgutter += "8,Your Results,/proj/advanced/skysurveys/results.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);

        }
    }
}