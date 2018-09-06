using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.SpectralTypes
{
    public partial class SpectralTypesMaster : System.Web.UI.MasterPage
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

            master.gselect = 2.3;

            sgutter = "0,Spectral Types,/proj/advanced/spectraltypes/;";
            sgutter += "1,Your Classifications,/proj/advanced/spectraltypes/studentclasses.aspx;";
            sgutter += "2,Energy Levels,/proj/advanced/spectraltypes/energylevels.aspx;";
            sgutter += "3,Spectral Lines,/proj/advanced/spectraltypes/lines.aspx;";
            sgutter += "3.1,Absorption<br> and Emission,/proj/advanced/spectraltypes/lines.aspx#absem;";
            sgutter += "3.2,Lines in Real Stars,/proj/advanced/spectraltypes/lines.aspx#stars;";
            sgutter += "4,Identifying,/proj/advanced/spectraltypes/identifying.aspx;";
            sgutter += "5,Other Types,/proj/advanced/spectraltypes/otherspectraltypes.aspx;";
            sgutter += "6,Follow Up Projects,/proj/advanced/spectraltypes/followup.aspx;";
            sgutter += "7,Your Results,/proj/advanced/spectraltypes/results.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);

        }
    }
}