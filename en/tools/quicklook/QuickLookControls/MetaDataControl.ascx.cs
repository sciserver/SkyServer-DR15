using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SkyServer;
using System.Data;


namespace SkyServer.Tools.QuickLook
{
    public partial class MetaDataControl : System.Web.UI.UserControl
    {
        protected const string ZERO_ID = "0x0000000000000000"; 
        
        protected Globals globals;

        protected double? ra ;
        protected double? dec ;

        protected decimal? specObjId = null;
        protected int? clean = null;
        protected int? mode = null;
        protected string otype = null;
        protected string survey;
        protected int? imageMJD = null;



        protected string name = null;
        protected string objId = null;
        protected long? id = null;
        protected string naviLink;

        protected bool badphotometry = false;
        protected string flags = "";


        protected string u = "";
        protected string g = "";
        protected string r = "";
        protected string i = "";
        protected string z = "";
        protected string err_u = "";
        protected string err_g = "";
        protected string err_r = "";
        protected string err_i = "";
        protected string err_z = "";

        protected short? plate = null;
        protected int? mjd = null;
        protected short? fiberid = null;
        protected string spectralclass = "";
        protected float? redshift = null;
        protected string run2d;


        public ObjectQuickLook master;
        protected RunQuery runQuery;
        public string token = "";
      


        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ObjectQuickLook)Page.Master;
            HttpCookie cookie = Request.Cookies["Keystone"];
            if (cookie != null)
                if (cookie["token"] != null || !cookie["token"].Equals(""))
                    token = cookie["token"];
            runQuery = new RunQuery(token);

            ObjectInfo o = (ObjectInfo)Session["QuickLookObjectInfo"];
            objId = o.objId;
            specObjId = o.specId;
            ra = o.ra;
            dec = o.dec;
            id = o.id;
            otype = o.otype;
            flags = o.flags;

            if (o.objId != null && !o.objId.Equals(""))
            {
                //executeQuery();
                name = Functions.SDSSname((double)ra, (double)dec);

                u = o.u;
                g = o.g;
                r = o.r;
                i = o.i;
                z = o.z;
                err_u = o.err_u;
                err_g = o.err_g;
                err_r = o.err_r;
                err_i = o.err_i;
                err_z = o.err_z;

                plate = o.plate;
                mjd = o.mjd;
                fiberid = o.fiberId;
                spectralclass = o.spectralClass;
                redshift = o.redshift;

                badphotometry = checkFlags(flags, otype);
                naviLink = "javascript:showNavi(" + ra + "," + dec + ");";
                run2d = o.run2d;
            }
        }


        ///this checks the flags for warning about bad photometry:
        protected bool checkFlags(string flags, string objecttype)
        {
            /*
                This function checks the photo flags for an object to see if it has bad photometry.
                It returns TRUE if photometry is bad.
                It returns FALSE if photometry is good.
	
                All this information comes from the "Clean Photometry" query of the Sample SQL queries.
	
                    -Jordan Raddick, 9/17/07
            */

            // First, load up an array with flags that indicate photometry is bad.
            List<string> BadFlags = new List<string>();
            BadFlags.Add("NOPROFILE");
            BadFlags.Add("PEAKCENTER");
            BadFlags.Add("NOTCHECKED");
            BadFlags.Add("PSF_FLUX_INTERP");
            BadFlags.Add("SATURATED");
            BadFlags.Add("BAD_COUNTS_ERROR");
            BadFlags.Add("DEBLEND_NOPEAK");
            BadFlags.Add("INTERP_CENTER");
            BadFlags.Add("COSMIC_RAY");
            if (objecttype == "STAR")
            {
                BadFlags.Add("EDGE");
            }

            for (int i = 0; i < BadFlags.Count; i++)
            {
                if (flags.Contains(BadFlags[i])) return true;
            }

            if (!flags.Contains("BINNED1"))
            {
                return true;
            }
            return false;

        }





    }
}