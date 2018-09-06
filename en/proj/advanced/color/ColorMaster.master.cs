using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.Color
{
    public partial class ColorMaster : System.Web.UI.MasterPage
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

            master.gselect = 2.2;

            sgutter = "0,Color,/proj/advanced/color/;";
            sgutter += "1,Colors of SDSS stars,/proj/advanced/color/explore.aspx;";
            sgutter += "2,Definition,/proj/advanced/color/definition.aspx;";
            sgutter += "3,Amounts of Light,/proj/advanced/color/amounts.aspx;";
            sgutter += "4,What is Color?,/proj/advanced/color/whatis.aspx;";
            sgutter += "5,SDSS Filters,/proj/advanced/color/sdssfilters.aspx;";
            sgutter += "6,Light from Stars,/proj/advanced/color/fromstars.aspx;";
            sgutter += "7,Temperature,/proj/advanced/color/temperature.aspx;";
            sgutter += "8,Radiation Curves,/proj/advanced/color/thermalrad.aspx;";
            sgutter += "9,Peak Wavelengths,/proj/advanced/color/peakwavelength.aspx;";
            sgutter += "10,Spectra,/proj/advanced/color/spectra.aspx;";
            sgutter += "10.1,Observed,/proj/advanced/color/spectra.aspx#observed;";
            sgutter += "10.2,A Word of Warning,/proj/advanced/color/spectra.aspx#warning;";
            sgutter += "10.3,59058000 Stars,/proj/advanced/color/spectra.aspx#3995000;";
            sgutter += "11,Color-color Diagrams,/proj/advanced/color/colorcolor.aspx;";
            sgutter += "12,Making a Diagram,/proj/advanced/color/making.aspx;";
            sgutter += "13,Diagram for SDSS,/proj/advanced/color/sdssstars.aspx;";
            sgutter += "14,Other Objects,/proj/advanced/color/other.aspx;";
            sgutter += "14.1,Star Populations,/proj/advanced/color/other.aspx#populations;";
            sgutter += "14.2,Planets and Dust,/proj/advanced/color/other.aspx#planets;";
            sgutter += "14.3,Galaxies,/proj/advanced/color/other.aspx#galaxies;";
            sgutter += "14.4,Quasars,/proj/advanced/color/other.aspx#quasars;";
            sgutter += "14.5,The Universe,/proj/advanced/color/other.aspx#universe;";
            sgutter += "15,Color in Research,/proj/advanced/color/research.aspx;";
            sgutter += "16,Your Results,/proj/advanced/color/results.aspx;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}