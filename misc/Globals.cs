using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SkyServer
{
    public class Globals
    {
        public const string PROPERTY_NAME = "SkyServer.Globals";

        private int releaseNumber;
        private string connectionString;
        //private string dbType;
        private string database;
        private string wsBaseUrl;
        private string wsSpechome;
        private string wsFilterhome;
        private double eqSearchRadius;
        private string access;
        private string dasUrlBase;
        private double visualRA;
        private double visualDec;
        private double visualScale;
        private long exploreDefault;
        private string sdssUrlBase;
        private string sciserverLink;
        private string siteName;
        private string siteIcon;
        private string logURL;
        private string casJobs;
        private int defaultSpRerun;
        private int skyVersion;
        private string epoHelp;
        private string helpdesk;
        private string smtp;
        private string solarConnectionString;

        private string nDegrees;
        private string nObj;
        private string nStar;
        private string nGalaxy; //count from view galaxy
        private string nQuasar; //spectroscopic
        private string nSpec;
        private string nStarSpec;
        private string nStarNoSpec;
        private string nAsteroids; //unchanged for a while

        private double crossidRadius;
        private int defTimeout;		  // default timeout
        private int qaTimeout;		  // SkyQA.aspx (sdssQA) timeout
        private int sqlTimeout;		  // SQL search page timeout
        private int crossidTimeout;	  // crossid pages timeout
        private int formTimeout;		  // form query (IQS/SQS) timeout
        private int chartTimeout;	  // cutout service (finding chart etc.) timeout
        private int emacsTimeout;	  // special emacs timeout for RHL etc.
        private int rowLimit;		  // row limit on query results
        private int emacsRowLimit;	  // special row limit for RHL etc.
        private int queriesPerMinute;	  // number of queries per minute allowed from a given IP

        private string urlSolarSystemProj;
        private string urlProjRegister;

        private string apogeeSpectrumLink;
        private string apogeeFitsLink;
        private int timeoutSkyserverWS;

       

        /// <summary>
        /// 
        /// </summary>
        private string skyserverRESTservice;
        private string casjobsRESTapi;
        private string contentDataset;
        private string mangaUrlBase;
        private string motd;

        public string MessageOfTheDay
        {
            get { return motd; }
        }
        public string username
        {
            get;
            set;
        }

        public string CasjobsRESTapi {
            get {
                return casjobsRESTapi;
            }
        }
        public string SkyserverRESTservice {
            get { return skyserverRESTservice; }
        }

        public string SQLSearchWS
        {
            get { return skyserverRESTservice + "SearchTools/SqlSearch"; }
        }
        public string DatabaseSearchWS
        {
            get { return skyserverRESTservice + "SearchTools/DatabaseSearch"; }
        }

        public string RectangularSearchWS
        {
            get { return skyserverRESTservice + "SearchTools/RectangularSearch"; }
        }

        public string CrossIdWS
        {
            get { return skyserverRESTservice + "SearchTools/CrossIdSearch"; }
        }

        public string ExploreWS
        {
            get { return skyserverRESTservice + "SearchTools/ObjectSearch"; }
        }

        public string UserHistoryWS
        {
            get { return skyserverRESTservice + "SearchTools/UserHistory"; }
        }

        public string ConeWS
        {
            get { return skyserverRESTservice + "ConeSearch/ConeSearchService"; }
        }

        public string RadialSearchWS
        {
            get { return skyserverRESTservice + "SearchTools/RadialSearch"; }
        }
        /// <summary>
        /// These are Imaging Search Tool services
        /// </summary>
        public string ConeImaging
        {
            get { return skyserverRESTservice + "ImagingQuery/Cone"; }
        }
        public string RectangularImaging
        {
            get { return skyserverRESTservice + "ImagingQuery/Rectangular"; }
        }
        public string NoPositionImaging
        {
            get { return skyserverRESTservice + "ImagingQuery/NoPosition"; }
        }
        public string ProximityImaging
        {
            get { return skyserverRESTservice + "ImagingQuery/Proximity"; }
        }
        /// <summary>
        /// These are IRSpectraQuery Search Tool services
        /// </summary>
        public string ConeIRWS 
        {
            get { return skyserverRESTservice + "IRSpectraQuery/ConeIR"; }
        }
        public string GalacticIRWS
        {
            get { return skyserverRESTservice + "IRSpectraQuery/GalacticIR"; }
        }
        public string NoPositionIRWS 
        {
            get { return skyserverRESTservice + "IRSpectraQuery/NoPositionIR"; }
        }
        /// <summary>
        /// These are SpectroQuery Search Tool services
        /// </summary>
        public string ConeSpectroWS
        {
            get { return skyserverRESTservice + "SpectroQuery/ConeSpectro"; }
        }
        public string RectangularSpectroWS
        {
            get { return skyserverRESTservice + "SpectroQuery/RectangularSpectro"; }
        }
        public string NoPositionSpectroWS
        {
            get { return skyserverRESTservice + "SpectroQuery/NoPositionSpectro"; }
        }
        public string ProximitySpectroWS
        {
            get { return skyserverRESTservice + "SpectroQuery/ProximitySpectro"; }
        }

        /// SDSS Fields        
        public string FieldsArray
        {
            get { return skyserverRESTservice + "SDSSFields/FieldArray"; }
        }

        public string FieldArrayRect
        {
            get { return skyserverRESTservice + "SDSSFields/FieldArrayRect"; }
        }

        public string ListOfFields
        {
            get { return skyserverRESTservice + "SDSSFields/ListOfFields"; }
        }

        public string UrlOfFields
        {
            get { return skyserverRESTservice + "SDSSFields/UrlOfFields"; }
        }

        ///SIAP

        public string getSIAP
        {
            get { return skyserverRESTservice + "SIAP/getSIAP"; }
        }

        public string getSIAPInfo
        {
            get { return skyserverRESTservice + "SIAP/getSIAPInfo"; }
        }

        public string getAllSIAPInfo
        {
            get { return skyserverRESTservice + "SIAP/getAllSIAPInfo"; }
        }


        /****/

        public string SolarConnectionString
        {
            get { return solarConnectionString; }
        }

        public string UrlProjRegister
        {
            get { return urlProjRegister; }
        }

        public string UrlSolarSystemProj
        {
            get { return urlSolarSystemProj; }
        }

        public string WSSpecHome
        {
            get { return wsSpechome; }
        }

        public string WSFilterHome
        {
            get { return wsFilterhome; }
        }

        public double CrossidRadius
        {
            get { return crossidRadius; } 
        }

        public int DefTimeout
        {
            get { return defTimeout; }
        }

        public int QaTimeout
        {
            get { return qaTimeout; }
        }

        public int SqlTimeout
        {
            get { return sqlTimeout; }
        }

        public int CrossidTimeout
        {
            get { return crossidTimeout; }
        }

        public int FormTimeout
        {
            get { return formTimeout; }
        }

        public int ChartTimeout
        {
            get { return chartTimeout; }
        }

        public int EmacsTimeout
        {
            get { return emacsTimeout; }
        }

        public int EmacsRowLimit
        {
            get { return emacsRowLimit; }
        }

        public int QueriesPerMinute
        {
            get { return queriesPerMinute; }
        }

        public string NDegrees
        {
            get { return nDegrees; }
        }

        public string NObj
        { 
            get { return nObj; } 
        }

        public string NStar
        {
            get { return nStar; }
        }

        public string NGalaxy
        {
            get { return nGalaxy; }
        }

        public string NQuasar
        {
            get { return nQuasar; }
        }

        public string NSpec
        {
            get { return nSpec; }
        }

        public string NStarSpec
        {
            get { return nStarSpec; }
        }

        public string NStarNoSpec
        {
            get { return nStarNoSpec; }
        }

        public string NAsteroids
        {
            get { return nAsteroids; }
        }

        public string EpoHelp
        {
            get { return epoHelp; }
        }

        /*
        public string DbType
        {
            get { return "BEST"; }
        }
        */

        public string CasJobs
        {
            get { return casJobs; }
        }
        public string ContactUrl
        {
            get { return "http://skyserver.sdss.org/contact/?release=" + Release + "&helpdesk=" + helpdesk + "&smtp=" + smtp + "&epoHelp=" + epoHelp + "&subject=SkyServer+" + Release + "+issue:+"; }
        }
        public string LogUrl
        {
            get { return logURL; }
        }
        public string SiteName
        {
            get { return siteName; }
        }
        public string SiteIcon
        {
            get { return siteIcon; }
        }
        public string SdssUrlBase
        {
            get { return sdssUrlBase; }
        }
        public string SciServerLink
        {
            get { return sciserverLink; }
        }

        public int ReleaseNumber
        {
            get { return releaseNumber; }
        }

        public string Release
        {
            get { return "DR" + releaseNumber; }
        }
       
        /*
        public string DBType
        {
            get { return dbType; }
        }
        */

        public string Database
        {
            get { return database; }
            //get { return DBType + Release; }
            //get { return "BESTTEST"; }
        }

        public string ConnectionString
        {
            get { return connectionString + "Initial Catalog=" + Database + ";"; }
        }

        public string WSBaseUrl
        {
            get { return wsBaseUrl + Release + "/"; }
        }

        public string WSGetJpegUrl
        {
            get { return skyserverRESTservice + "ImgCutout/getjpeg"; }
        }

        public string WSGetImage64
        {
            get { return skyserverRESTservice + "ImgCutout/getImage64"; }
        }

        public string WSGetCodecUrl
        {
            get { return skyserverRESTservice + "ImgCutout/getJpegCodec"; }
        }

        public double EqSearchRadius
        {
            get { return eqSearchRadius; }
        }

        public string Access
        {
            get { return access; }
        }

        public string DasUrlBase
        {
            get { return dasUrlBase; }
        }

        public string DasUrl
        {
            get { return DasUrlBase; }
        }

        public double VisualRA
        {
            get { return visualRA; }
        }

        public double VisualDec
        {
            get { return visualDec; }
        }

        public double VisualScale
        {
            get { return visualScale; }
        }

        public long ExploreDefault
        {
            get { return exploreDefault; }
        }

        public int RowLimit
        {
            get { return rowLimit; }
        }

        public string SdssUrl
        {
            get { return SdssUrlBase + "dr" + ReleaseNumber + "/"; }
        }

        public int DefaultSpRerun
        {
            get { return defaultSpRerun; }
        }

        public int SkyVersion
        {
            get { return skyVersion; }
        }

        public string ApogeeSpectrumLink
        {
            get { return apogeeSpectrumLink; }
        }

        public string ApogeeFitsLink
        {
            get { return apogeeFitsLink; }
        }

        public int TimeoutSkyserverWS
        {
            get { return timeoutSkyserverWS; }
        }

        public string ContentDataset
        {
            get { return contentDataset; }
        }

        public string MangaUrlBase
        {
            get { return mangaUrlBase; }
        }
        



        public Globals()
        {
            var appSettings = System.Web.Configuration.WebConfigurationManager.AppSettings;

            this.contentDataset = "application/x-dataset";// – serialized .NET DataSet

            this.releaseNumber = int.Parse(appSettings["releaseNumber"]);
            //this.dbType = appSettings["dbType"];
            this.connectionString = appSettings["connectionString"];
            this.wsBaseUrl = appSettings["wsBaseUrl"];
            this.eqSearchRadius = double.Parse(appSettings["eqSearchRadius"]);
            this.access = appSettings["access"];
            this.dasUrlBase = appSettings["dasUrlBase"];
            this.visualRA = double.Parse(appSettings["visualRA"]);
            this.visualDec = double.Parse(appSettings["visualDec"]);
            this.visualScale = double.Parse(appSettings["visualScale"]);
            this.exploreDefault = long.Parse(appSettings["exploreDefault"]);
            this.sdssUrlBase = appSettings["sdssUrlBase"];
            this.sciserverLink = appSettings["sciserverLink"];

            this.siteName = appSettings["siteName"];
            this.siteIcon = appSettings["siteIcon"];
            this.logURL = appSettings["logURL"];
            this.casJobs = appSettings["casJobs"];
            this.defaultSpRerun = int.Parse(appSettings["defaultSpRerun"]);
            this.skyVersion = int.Parse(appSettings["skyVersion"]);
            this.epoHelp = appSettings["epoHelp"];
            this.wsSpechome = appSettings["wsSpechome"];
            this.wsFilterhome = appSettings["wsFilterhome"];
            this.urlSolarSystemProj = appSettings["urlSolarSystemProj"];
            this.urlProjRegister = appSettings["urlProjRegister"];
            this.apogeeSpectrumLink = appSettings["apogeeSpectrumLink"];
            this.apogeeFitsLink = appSettings["apogeeFitsLink"];
            this.helpdesk = appSettings["helpdesk"];
            this.smtp = appSettings["smtp"];
            this.database = appSettings["database"];

            this.defTimeout = int.Parse(appSettings["defTimeout"] ?? "600");
            this.qaTimeout = int.Parse(appSettings["qaTimeout"] ?? "3600");
            this.sqlTimeout = int.Parse(appSettings["sqlTimeout"] ?? "600");
            this.crossidTimeout = int.Parse(appSettings["crossidTimeout"] ?? "1800");
            this.crossidRadius = double.Parse(appSettings["crossidRadius"] ?? "3.0");
            this.formTimeout = int.Parse(appSettings["formTimeout"] ?? "600");
            this.chartTimeout = int.Parse(appSettings["chartTimeout"] ?? "600");
            this.emacsTimeout = int.Parse(appSettings["emacsTimeout"] ?? "600");
            this.rowLimit = int.Parse(appSettings["rowLimit"] ?? "500000");
            this.emacsRowLimit = int.Parse(appSettings["emacsRowLimit"] ?? "500000");
            this.queriesPerMinute = int.Parse(appSettings["queriesPerMinute"] ?? "60");
            this.timeoutSkyserverWS = int.Parse(appSettings["TimeoutSkyserverWS"] ?? "100000");// time in milliseconds
            this.skyserverRESTservice = appSettings["restwebservice"];
            this.casjobsRESTapi = appSettings["casjobsRESTapi"];
            this.mangaUrlBase = appSettings["mangaUrlBase"];
            this.motd = appSettings["MessageOfTheDayPath"];

            if (releaseNumber == 8)
            {
                //DR7 values still in places
                nDegrees = "14555";
                nObj = "469 million";
                nStar = "261 million";
                nGalaxy = "208 million"; //count from view galaxy
                nQuasar = "130,300"; //spectroscopic
                nSpec = "1,843,200";
                nStarSpec = "600,967";
                nStarNoSpec = "260 million";
                nAsteroids = "200,000"; //unchanged for a while
            }
            else if (releaseNumber == 7)
            {
                nDegrees = "11663";
                nObj = "360 million";
                nStar = "180 million";
                nGalaxy = "175 million"; //count from view galaxy
                nQuasar = "121,363"; //class = 3 or 4
                nSpec = "1,640,960";
                nStarSpec = "464,301";
                nStarNoSpec = "179 million"; //count from view star
                nAsteroids = "200,000";
            }
            else if (releaseNumber == 6)
            {
                nDegrees = "8520";
                nObj = "300 million";
                nStar = "91 million";
                nGalaxy = "138 million";
                nQuasar = "104,140";
                nSpec = "1,163,520";
                nStarSpec = "154,925";
                nStarNoSpec = "90,617,060";
                nAsteroids = "200,000";
            }
            else if (releaseNumber == 5)
            {
                nDegrees = "8000";
                nObj = "220 million";
                nStar = "85 million";
                nGalaxy = "130 million";
                nQuasar = "60,000";
                nSpec = "750,000";
                nStarSpec = "63,000";
                nStarNoSpec = "84,937,000";
                nAsteroids = "200,000";
            }
            else if (releaseNumber == 4)
            {
                nDegrees = "6670";
                nObj = "180 million";
                nStar = "70 million";
                nGalaxy = "110 million";
                nQuasar = "60,000";
                nSpec = "600,000";
                nStarSpec = "52,000";
                nStarNoSpec = "69,948,000";
                nAsteroids = "200,000"; // update for new DR4 MOC
            }
            else if (releaseNumber == 3)
            {
                nDegrees = "5200";
                nObj = "140 million";
                nStar = "60 million";
                nGalaxy = "80 million";
                nQuasar = "50,000";
                nSpec = "500,000";
                nStarSpec = "42,000";
                nStarNoSpec = "59,958,000";
                nAsteroids = "200,000";
            }
            else if (releaseNumber == 2)
            {
                nDegrees = "3300";
                nObj = "90 million";
                nStar = "40 million";
                nGalaxy = "50 million";
                nQuasar = "35,000";
                nSpec = "300,000";
                nStarSpec = "30,000";
                nStarNoSpec = "39,970,000";
                nAsteroids = "130,000";
            }
            else if (releaseNumber == 1)
            {
                nDegrees = "2100";
                nObj = "70 million";
                nStar = "30 million";
                nGalaxy = "40 million";
                nQuasar = "18,000";
                nSpec = "150,000";
                nStarSpec = "17,000";
                nStarNoSpec = "29,983,000";
                nAsteroids = "60,000";
            }
            else
            {
                nDegrees = "2100";
                nObj = "14 million";
                nStar = "6 million";
                nGalaxy = "8 million";
                nQuasar = "4,500";
                nSpec = "50,000";
                nStarSpec = "4,000";
                nStarNoSpec = "5,996,000";
                nAsteroids = "10,000";
            }

            // All these settings are now in Web.config
            /*
            if (access == "public")
            {
                defTimeout = 600;
                qaTimeout = 3600;
                sqlTimeout = 600;
                crossidTimeout = 1800;
                crossidRadius = 3.0;
                formTimeout = 600;
                chartTimeout = 600;
                emacsTimeout = 600;
                rowLimit = 500000;
                emacsRowLimit = 500000;
                queriesPerMinute = 60;
            }
            else if (access == "collab")
            {
                defTimeout = 600;
                qaTimeout = 36000;
                sqlTimeout = 600;
                crossidTimeout = 3600;
                crossidRadius = 30.0;
                formTimeout = 3600;
                chartTimeout = 3600;
                emacsTimeout = 36000;
                rowLimit = 500000;
                emacsRowLimit = 50000000;
                queriesPerMinute = 60;
            }
            else
            {
                defTimeout = 600;
                qaTimeout = 18000;
                sqlTimeout = 600;
                crossidTimeout = 3600;
                crossidRadius = 3.0;
                formTimeout = 3600;
                chartTimeout = 3600;
                emacsTimeout = 3600;
                rowLimit = 500000;
                emacsRowLimit = 100000;
                queriesPerMinute = 60;
            }
            */
        }
    }
}
