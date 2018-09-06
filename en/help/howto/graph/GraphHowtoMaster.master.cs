using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Help.Howto
{
    public partial class GraphHowtoMaster : System.Web.UI.MasterPage
    {
        protected string imgpath;
        protected string url;
        protected string gutter;
        public double gselect = 0;
        protected Globals globals;
        protected HomeMaster master;
        protected Gutter GraphHowtoGutter;

        protected void Page_Load(object sender, EventArgs e)
        {
            imgpath = ResolveClientUrl("~/en/images/");
            url = Utilities.getURL(Request);
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (HomeMaster)this.Master;
            master.imgpath = this.imgpath;

            
            gutter = "0,How to Graph,/help/howto/graph/;";
            gutter += "99,<font color=red><b>Back to Help</b></font>,/help/;";
            gutter += "1,Enter Data,/help/howto/graph/enteringdata.aspx;";
            gutter += "2,Open a CSV File,/help/howto/graph/open.aspx;";
            gutter += "3,Create a New Column,/help/howto/graph/calculate.aspx;";
            gutter += "4,Select Data,/help/howto/graph/select.aspx;";
            gutter += "5,Create a Graph,/help/howto/graph/create.aspx;";
            gutter += "6,Change the Scale,/help/howto/graph/axis.aspx;";
            gutter += "7,Fit a Curve,/help/howto/graph/trendline.aspx;";
            gutter += "8,Copy SDSS objectIDs,/help/howto/graph/caveat.aspx;";

            GraphHowtoGutter = new Gutter(imgpath, url, Response);
        }
    }
}