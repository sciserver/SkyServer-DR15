using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.SDSS
{
    public partial class SdssMaster : System.Web.UI.MasterPage
    {
        protected string imgpath;
        protected string url;
        protected string gutter;
        public double gselect = 0;
        protected Globals globals;
        protected HomeMaster master;
        protected Gutter SdssGutter;

        protected void Page_Load(object sender, EventArgs e)
        {
            imgpath = ResolveClientUrl("~/en/images/");
            url = Utilities.getURL(Request);
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (HomeMaster)this.Master;
            master.imgpath = this.imgpath;

            gutter = "0,About SDSS,/sdss/;";
            gutter += "0.1,What is it?,/sdss/default.aspx#what;";
            gutter += "0.2,Science,/sdss/default.aspx#science;";
            gutter += "0.4,Map ,/sdss/default.aspx#themap;";
            gutter += "0.5,Census,/sdss/default.aspx#census;";
            gutter += "0.6,Rare Objects,/sdss/default.aspx#rare;";
            gutter += "0.7,Time Machine,/sdss/default.aspx#time;";
            gutter += "0.8,Using Redshifts,/sdss/default.aspx#redshift;";
            gutter += "2,The Telescopes,/sdss/telescope/telescope.aspx;";
            gutter += "2.1,Apache Point,/sdss/telescope/telescope.aspx#apo;";
            gutter += "2.2,2.5-m Telescope,/sdss/telescope/telescope.aspx#mainscope;";
            gutter += "2.3,Photometric,/sdss/telescope/telescope.aspx#photoscope;";
            gutter += "3,The Instruments,/sdss/instruments/instruments.aspx;";
            gutter += "3.1,The Camera,/sdss/instruments/instruments.aspx#camera;";
            gutter += "3.2,The Spectrographs,/sdss/instruments/instruments.aspx#spectrographs;";
            gutter += "4,The Data,/sdss/data/data.aspx;";
            gutter += "4.1,Images,/sdss/data/data.aspx#images;";
            gutter += "4.2,Terms,/sdss/data/data.aspx#terms;";
            gutter += "4.2,Spectra,/sdss/data/data.aspx#spectra;";
            gutter += "4.3,Databases,/sdss/data/data.aspx#databases;";
            gutter += "5,First Discoveries,/sdss/discoveries/discoveries.aspx;";
            gutter += "5.1,Asteroids,/sdss/discoveries/discoveries.aspx#asteroids;";
            gutter += "5.2,Brown Dwarfs,/sdss/discoveries/discoveries.aspx#brown;";
            gutter += "5.3,Galactic Halos,/sdss/discoveries/discoveries.aspx#halos;";
            gutter += "5.4,Dark Matter,/sdss/discoveries/discoveries.aspx#dark;";
            gutter += "5.5,Distant Quasars,/sdss/discoveries/discoveries.aspx#quasars;";
            gutter += "5.6,Gunn-Peterson,/sdss/discoveries/discoveries.aspx#gunn;";
            gutter += "5.7,Structure,/sdss/discoveries/discoveries.aspx#lss;";
            gutter += "7,Data Releases,/sdss/release/;";
            gutter += "8,Publications," + globals.SdssUrlBase + "science/publications/;";
            gutter += "9,Credits,/credits/;";

            SdssGutter = new Gutter(imgpath, url, Response);
        }
    }
}