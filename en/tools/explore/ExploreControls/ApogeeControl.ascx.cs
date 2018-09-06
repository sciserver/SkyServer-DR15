using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SkyServer.Tools.Explore
{
    public partial class ApogeeControl : System.Web.UI.UserControl
    {
        protected Globals globals;
        protected ObjectExplorer master;

        public const double DEFAULT_RADIUS = 0.5 / 60;

        /* TABLE apogeeStar */
        public double ra;
        public double dec;
        public string apstar_id;
        public string apogee_id;
        public double glon;
        public double glat;
        public long location_id;
        public long commiss;
        public float vhelio_avg;          // Avg v<sub>helio</sub> (km/s)
        public float vscatter;            // Scatter in v<sub>helio</sub> (km/s)

        /* TABLE aspcapStar */
        public float teff;                // Best-fit temperature (K)
        public float teff_err;            // Temp error
        public float logg;                // Surface Gravity log<sub>10</sub>(g)
        public float logg_err;            // log(g) error
        public float param_m_h;              // Metallicity [Fe/H]
        public float param_m_h_err;          // Metal error
        public float param_alpha_m;             // [&alpha;/Fe]
        public float param_alpha_m_err;         // [&alpha;/Fe] error

        /* TABLE apogeeObject */
        public float j;                   // 2MASS j
        public float h;                   // 2MASS h
        public float k;                   // 2MASS k
        public float j_err;
        public float h_err;
        public float k_err;
        public float? mag_4_5;            // 4.5 micron magnitude
        public float? mag_4_5_err;        // 4.5 micron magnitude error
        public string src_4_5;            // 4.5 micron magnitude source

        /* Flags */
        public string apogeeTarget1N;      // APOGEE target flags 1
        public string apogeeTarget2N;      // APOGEE target flags 2
        public string apogeeStarFlagN;     // Star flags
        public string apogeeAspcapFlagN;   // Processing flags (ASPCAP)
        public string apred_version;       // Visit reduction pipeline version

        /* TABLE apogeeVisit */
        public string visit_id;
        public long plate;
        public long mjd;
        public long fiberid;
        public string dateobs;
        public float vrel;

        public const string FIND_NEAREST = @"join (select top 1 apstar_id from dbo.fGetNearestApogeeStarEq(@ra, @dec, @radius)) s on a.apstar_id = s.apstar_id";
        public const string FIND_APSTAR_ID = @"where a.apstar_id = @id";
        public const string FIND_APOGEE_ID = @"where a.apogee_id = @id";
        public const string FIND_PLFIB = @"join apogeeVisit v on a.apogee_id = v.apogee_id
        where 
        v.plate = @plate and 
        v.mjd = @mjd and 
        v.fiberID = @fiberid";

        protected string apogeeSpecThumbnail;

        protected string apogeeSpecImage;
        protected string spectrumLink;
        protected string fitsLink;

        string[] injection = new string[] { "--", ";", "/*", "*/", "'", "\"" };
        string command;

        protected bool isData = false;

        protected string task;
     
        /* Visits */
        public List<ApogeeVisit> visits = new List<ApogeeVisit>();

        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            //ds = (DataSet)Session["objectDataSet"];

            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ObjectExplorer)Page.Master;

            if (master.apid != null && !master.apid.Equals(""))
            {
                try
                {
                    apogeeID(master.apid);
                    ReadInfoFromDbReader();
                    ReadVisitsFromDbReader();
                    ReadApogeeLinks();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }


        }

        protected void ReadInfoFromDbReader()
        {

            using (DataTableReader reader = ((DataSet)Session["LoadExplore"]).Tables["ApogeeData"].CreateDataReader())
            {
                //BASE_QUERY + FIND_NEAREST;
                if (reader.Read()) // Only one row expected
                {
                    ra = reader["ra"] is DBNull ? -99.99 : (double)reader["ra"];
                    dec = reader["dec"] is DBNull ? -99.99 : (double)reader["dec"];
                    apstar_id = reader["apstar_id"] is DBNull ? "-" : (string)reader["apstar_id"];
                    apogee_id = reader["apogee_id"] is DBNull ? "-" : (string)reader["apogee_id"];
                    glon = reader["glon"] is DBNull ? -99.99 : (double)reader["glon"];
                    glat = reader["glat"] is DBNull ? -99.99 : (double)reader["glat"];
                    location_id = reader["location_id"] is DBNull ? -9999 : (long)reader["location_id"];
                    commiss = reader["commiss"] is DBNull ? -9999 : (long)reader["commiss"];
                    vhelio_avg = reader["vhelio_avg"] is DBNull ? -9 : (float)reader["vhelio_avg"];
                    vscatter = reader["vscatter"] is DBNull ? -9 : (float)reader["vscatter"];
                    teff = reader["teff"] is DBNull ? -9 : (float)reader["teff"];
                    teff_err = reader["teff_err"] is DBNull ? -9 : (float)reader["teff_err"];
                    logg = reader["logg"] is DBNull ? -9 : (float)reader["logg"];
                    logg_err = reader["logg_err"] is DBNull ? -9 : (float)reader["logg_err"];
                    param_m_h = reader["param_m_h"] is DBNull ? -9 : (float)reader["param_m_h"];
                    param_m_h_err = reader["param_m_h_err"] is DBNull ? -9 : (float)reader["param_m_h_err"];
                    param_alpha_m = reader["param_alpha_m"] is DBNull ? -9 : (float)reader["param_alpha_m"];
                    param_alpha_m_err = reader["param_alpha_m_err"] is DBNull ? -9 : (float)reader["param_alpha_m_err"];

                    j = reader["j"] is DBNull ? -9 : (float)reader["j"];
                    h = reader["h"] is DBNull ? -9 : (float)reader["h"];
                    k = reader["k"] is DBNull ? -9 : (float)reader["k"];
                    j_err = reader["j_err"] is DBNull ? -9 : (float)reader["j_err"];
                    h_err = reader["h_err"] is DBNull ? -9 : (float)reader["h_err"];
                    k_err = reader["k_err"] is DBNull ? -9 : (float)reader["k_err"];
                    mag_4_5 = reader["mag_4_5"] is DBNull ? null : (float?)reader["mag_4_5"];
                    mag_4_5_err = reader["mag_4_5_err"] is DBNull ? null : (float?)reader["mag_4_5_err"];
                    src_4_5 = reader["src_4_5"] is DBNull ? "-" : (string)reader["src_4_5"];

                    apogeeTarget1N = reader["apogeeTarget1N"] is DBNull ? "-" : (string)reader["apogeeTarget1N"];
                    apogeeTarget2N = reader["apogeeTarget2N"] is DBNull ? "-" : (string)reader["apogeeTarget2N"];
                    apogeeStarFlagN = reader["apogeeStarFlagN"] is DBNull ? "-" : (string)reader["apogeeStarFlagN"];
                    apogeeAspcapFlagN = reader["apogeeAspcapFlagN"] is DBNull ? "-" : (string)reader["apogeeAspcapFlagN"];

                    isData = true;
                }
                else
                {
                    isData = false;
                    //throw new Exception("APOGEE data not found"); 
                }
            }
        }

        private void ReadApogeeLinks() {
            string specApogeeLink = globals.ApogeeSpectrumLink + "?apogee_id=" + apogee_id;
            string doWeNeedC = (commiss == 1) ? "C" : "";

            apogeeSpecImage = globals.ApogeeFitsLink + apred_version + "/stars/apo25m/" + location_id + "/plots/apStar" + doWeNeedC + "-" + apred_version + "-" + HttpUtility.UrlEncode(apogee_id) + ".jpg";
            spectrumLink = globals.ApogeeSpectrumLink + "/stars?location_id=" + location_id + "&commiss=" + commiss + "&apogee_id=" + apogee_id + "&action=search";
            fitsLink = globals.ApogeeFitsLink + apred_version + "/stars/apo25m/" + location_id + "/apStar" + doWeNeedC + "-" + apred_version + "-" + HttpUtility.UrlEncode(apogee_id) + ".fits";
        }

        protected void ReadVisitsFromDbReader()
        {
            string command = ExplorerQueries.APOGEEVISITS_BASE_QUERY;
            foreach (string s in injection)
            {  
                if (apogee_id != null && apogee_id.IndexOf(s) >= 0)
                {
                    throw new Exception("Invalid APOGEE ID: " + apogee_id);
                }
            }
            command = command.Replace("@id", "'" + apogee_id + "'");

            using (DataTableReader reader = ((DataSet)Session["LoadExplore"]).Tables["ApogeeVisits"].CreateDataReader())
            {
                while (reader.Read()) // Multiple rows expected
                {
                    ApogeeVisit v = new ApogeeVisit();
                    v.visit_id = (string)reader["visit_id"];
                    v.plate = (string)reader["plate"];
                    v.mjd = (long)reader["mjd"];
                    v.fiberid = (long)reader["fiberid"];
                    v.dateobs = (string)reader["dateobs"];
                    v.vrel = (float)reader["vrel"];
                    visits.Add(v);
                    apred_version = reader["apred_version"] is DBNull ? "" : (string)reader["apred_version"];// assumes that the version in all rows is the same.
                }
            }
        }
        
        public void apogeeRaDec( double ra, double dec, double radius)
        {
            command = ExplorerQueries.APOGEE_BASE_QUERY + FIND_NEAREST; task = "FIND_NEAREST";
            command = command.Replace("@radius", radius.ToString());
            command = command.Replace("@ra", ra.ToString());
            command = command.Replace("@dec", dec.ToString());           
        }

        public void apogeeID( string id)
        {

            if (id.StartsWith("apogee")) { command = ExplorerQueries.APOGEE_BASE_QUERY + FIND_APSTAR_ID; task = "FIND_APSTAR_ID"; }
            else { command = ExplorerQueries.APOGEE_BASE_QUERY + FIND_APOGEE_ID; task = "FIND_APOGEE_ID"; }

            foreach (string s in injection)
            {
                if (id.IndexOf(s) >= 0)
                {
                    throw new Exception("Invalid APOGEE ID: " + id);
                }
            }
            command = command.Replace("@id", "'"+id+"'");            
        }


        public void apogeePlate(long plate, long mjd, long fiberid)
        {
            command = ExplorerQueries.APOGEE_BASE_QUERY + FIND_PLFIB; task = "APOGEE_BASE_QUERY";
            command = command.Replace("@plate", plate.ToString());
            command = command.Replace("@mjd", mjd.ToString());
            command = command.Replace("@fiberid", fiberid.ToString());            
        }
      
    }
}