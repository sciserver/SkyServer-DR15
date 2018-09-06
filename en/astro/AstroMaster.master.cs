using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Astro
{
    public partial class AstroMaster : System.Web.UI.MasterPage
    {
        protected string imgpath;
        protected string url;
        protected string gutter;
        public double gselect = 0;
        protected Globals globals;
        protected HomeMaster master;
        protected Gutter AstroGutter;

        protected void Page_Load(object sender, EventArgs e)
        {
            imgpath = ResolveClientUrl("~/en/images/");
            url = Utilities.getURL(Request);
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (HomeMaster)this.Master;
            master.imgpath = this.imgpath;

            gutter = "0,Astronomy,/astro/;";
            gutter += "1,Mapping the sky,/astro/mapsky/mapping_the_sky.aspx;";
            gutter += "1.1,Why survey?,/astro/mapsky/mapping_the_sky.aspx#whymap;";
            gutter += "1.2,Ancient Surveys,/astro/mapsky/mapping_the_sky.aspx#ancient;";
            gutter += "1.3,Modern Astro,/astro/mapsky/mapping_the_sky.aspx#modern;";
            gutter += "1.4,20th Cent. Surveys,/astro/mapsky/mapping_the_sky.aspx#surveys;";
            gutter += "1.5,The SDSS,/astro/mapsky/mapping_the_sky.aspx#sloan;";
            gutter += "2,Stars and Nebulae,/astro/stars/stars.aspx;";
            gutter += "2.1,HR Diagram,/astro/stars/stars.aspx#hrdiagram;";
            gutter += "2.2,Evolution,/astro/stars/stars.aspx#evolution;";
            gutter += "2.3,Nebulae,/astro/stars/stars.aspx#nebulae;";
            gutter += "2.4,Brown Dwarfs,/astro/stars/stars.aspx#browndwarfs;";
            gutter += "3,Galaxies and QSOs,/astro/galaxies/galaxies.aspx;";
            gutter += "3.1,Classification,/astro/galaxies/galaxies.aspx#classification;";
            gutter += "3.2,Ellipticals,/astro/galaxies/galaxies.aspx#ellipticals;";
            gutter += "3.3,Spirals,/astro/galaxies/galaxies.aspx#spirals;";
            gutter += "3.4,Irregulars,/astro/galaxies/galaxies.aspx#irregulars;";
            gutter += "3.5,Quasars,/astro/galaxies/galaxies.aspx#quasars;";
            gutter += "4,Cosmic Structures,/astro/structures/structures.aspx;";
            gutter += "4.1,Clusters,/astro/structures/structures.aspx#clusters;";
            gutter += "4.2,Superclusters,/astro/structures/structures.aspx#superclusters;";
            gutter += "4.3,Voids,/astro/structures/structures.aspx#voids;";
            gutter += "5,Expanding Universe,/astro/universe/universe.aspx;";
            gutter += "5.1,Discovery,/astro/universe/universe.aspx#discovery;";
            gutter += "5.2,Properties,/astro/universe/universe.aspx#properties;";
            gutter += "5.3,Fate,/astro/universe/universe.aspx#fate;";
            gutter += "5.4,The CMB Radiation,/astro/universe/universe.aspx#cmb;";
            gutter += "5.5,Density Variations,/astro/universe/universe.aspx#variations;";
            gutter += "6,Modern Cosmology,/astro/cosmology/cosmology.aspx;";
            gutter += "6.1,Gravity and Ducks,/astro/cosmology/cosmology.aspx#gravity;";
            gutter += "6.2,How Big?,/astro/cosmology/cosmology.aspx#biggest;";
            gutter += "6.3,Noise and Clusters,/astro/cosmology/cosmology.aspx#noise;";

            AstroGutter = new Gutter(imgpath, url, Response);
        }
    }
}