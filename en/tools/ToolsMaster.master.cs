using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Configuration;


namespace SkyServer.Tools
{
    public partial class ToolsMaster : System.Web.UI.MasterPage
    {
        protected string imgpath;
        protected string url;
        protected string gutter;
        public double gselect = 0;
        protected Globals globals;
        protected HomeMaster master;
        protected Gutter ToolsGutter;

        protected void Page_Load(object sender, EventArgs e)
        {
            imgpath = ResolveClientUrl("~/en/images/");
            url = Utilities.getURL(Request);
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (HomeMaster)this.Master;
            master.imgpath = this.imgpath;

            gutter = "0," + globals.Release + " Tools,/tools/;";

              gutter += "1,Getting Started,/tools/started/;";
  
              gutter += "2,Famous places,/tools/places/;";
              gutter += "2.1,Galaxies,/tools/places/page1.aspx;";
              gutter += "2.2,Spirals,/tools/places/page2.aspx;";
              gutter += "2.3,Clumps,/tools/places/page3.aspx;";
              gutter += "2.4,Clusters,/tools/places/page4.aspx;";
              gutter += "2.5,Interactions,/tools/places/page5.aspx;";
              gutter += "2.6,Artifacts,/tools/places/page6.aspx;";
              gutter += "2.7,Catalogs,/tools/places/named.aspx;";

              gutter += "4,Get images,/tools/getimg/;";
              gutter += "4.1,Fields,/tools/getimg/fields.aspx;";
              //gutter += "4.2,Mosaics,/tools/getimg/mosaic.aspx;";
              
              //if (globals.DbType == "BEST")
              if( globals.Database.StartsWith("BEST")) 
              {
                  gutter += "4.3,Spectra,/tools/getimg/spectra.aspx;";
                  gutter += "4.4,Plates,/tools/getimg/plate.aspx;";
              }

              gutter += "7,Scrolling sky,/tools/scroll/;";

              gutter += "3,Visual Tools,/tools/chart/;";
              gutter += "3.1,Finding Chart,/tools/chart/chart.aspx;";
              gutter += "3.2,Navigate,/tools/chart/navi.aspx;";
              gutter += "3.3,Image List,/tools/chart/list.aspx;";
              gutter += "3.4,Quick Look,/tools/quicklook/quickobj.aspx;";
              gutter += "3.5,Explore,/tools/explore/obj.aspx;";

              gutter += "5,Search,/tools/search/;";
              gutter += "5.1,Radial,/tools/search/radial.aspx;";
              gutter += "5.2,Rectangular,/tools/search/rect.aspx;";
              /*
              if( (globals.Access == "public") && (globals.ReleaseNumber > 3 && globals.ReleaseNumber < 8) ) {
	            gutter += "5.7,Search Form,/tools/search/form/default.aspx;";
	            gutter += "5.8,Query Builder,/tools/qbuilder/;";
              }
              */
              gutter += "5.7,Search Form,/tools/search/form/default.aspx;";
              gutter += "5.3,SQL,/tools/search/sql.aspx;";

            //  if( access != "public" ) {
                  gutter += "5.4,Imaging Query,/tools/search/IQS.aspx;";
            //      if( dbType == "BEST" ) {
	              gutter += "5.5,Spectro Query,/tools/search/SQS.aspx;";
                  if (globals.ReleaseNumber >= 10) { gutter += "5.6,IR Spec Query,/tools/search/IRQS.aspx;"; }
            //      }
            //  }
  
              gutter += "6,Object Crossid,/tools/crossid/crossid.aspx;";
            // hiding the link until crossmatch is working      
              if (Boolean.Parse(ConfigurationManager.AppSettings["DoShowCrossMatch"].ToLower()))
              {
                  gutter += "9,Skyquery CrossMatch<i><em><strong><sup> NEW!</sup></strong> </em></i>,/tools/crossmatch/crossmatch.aspx;";
              }

              if( globals.ReleaseNumber > 1 ) {
  	            gutter += "8,CasJobs,"+globals.CasJobs+"' TARGET='CASJOBS;";
              }

            //  gutter += "0,Help,/help/;";
            //  gutter += "0,Download,/help/download/;";

              ToolsGutter = new Gutter(imgpath, url, Response);
        }




    }
}