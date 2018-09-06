using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.SpectralTypes
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

            master.gselect = 1.4;

            sgutter = "0,Types of Stars,/proj/basic/spectraltypes/;";
            sgutter += "1,Spectra of Stars,/proj/basic/spectraltypes/stellarspectra.aspx;";
            sgutter += "2,Exploring Spectra,/proj/basic/spectraltypes/studentclasses.aspx;";
            sgutter += "3,Atomic Absorption,/proj/basic/spectraltypes/absorption.aspx;";
            sgutter += "4,Absorption Lines,/proj/basic/spectraltypes/absorption2.aspx;";
            sgutter += "5,Line Strength,/proj/basic/spectraltypes/lines.aspx;";
            sgutter += "6,Temperature,/proj/basic/spectraltypes/temperature.aspx;";
            sgutter += "7,The Connection,/proj/basic/spectraltypes/connection.aspx;";
            sgutter += "8,Understanding Stars,/proj/basic/spectraltypes/connection2.aspx;";
            sgutter += "9,Follow Up Projects,/proj/basic/spectraltypes/followup.aspx;";
            sgutter += "10,Evaluation,/proj/basic/spectraltypes/evaluation.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}