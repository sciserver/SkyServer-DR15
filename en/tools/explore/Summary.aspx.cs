using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using SkyServer;
using System.Data;
using SkyServer.Tools.Search;


namespace SkyServer.Tools.Explore
{
    public partial class Summary : System.Web.UI.Page
    {
        protected const string ZERO_ID = "0x0000000000000000";
        protected Globals globals;
        protected ObjectExplorer master;
        
        public RunQuery runQuery;
        public ResponseREST rs;
        public ObjectInfo objectInfo = new ObjectInfo();

        string format = "";

        //protected HRefs hrefs = new HRefs();

         long? id = null;
         string apid;
         decimal? specId = null;
         string sidstring = null;
         double? qra = null;
         double? qdec = null;

        int? mjd = null;
        short? plate = null;
        short? fiber = null;
        private HttpCookie cookie;
        private string token = "";

        Int16? run = null;
        Int16? rerun = null;
        byte? camcol = null;
        Int16? field = null;
        Int16? obj = null;

        //private SqlConnection oConn = null;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            runQuery = new RunQuery();
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ObjectExplorer)Page.Master;
            Session["objectInfo"] = objectInfo;
            Session["Plate"] = null;
            Session["LoadExplore"] = null;
            Session["SpecFitParameters"] = null;
            Session["SpecFitParameters"] = null;
            Session["Neighbors"] = null;
            Session["Matches"] = null;
            Session["AllSpec"] = null;

            rs = new ResponseREST();
            string requestURI = globals.ExploreWS;

            //string AllParameters = rs.GetURIparameters(Request);
            string AllParameters = "";
            bool CanResolve = false;
            string[] NecessaryParams = new string[] { "id", "objid", "sid", "spec", "specobjid", "apid", "ra", "dec", "plate", "mjd", "fiber", "run", "rerun", "camcol", "field", "obj" };
            foreach(string key in Request.QueryString.AllKeys)
            {
                if (NecessaryParams.Contains(key.ToLower()))
                {
                    CanResolve = true;
                    AllParameters += key + "=" + Request.QueryString.GetValues(key)[0].ToString() + "&";
                }
            }
            if (Request.QueryString.AllKeys.Length == 0 || !CanResolve  )
                AllParameters = "id=" + globals.ExploreDefault.ToString() + "&";
            AllParameters += "query=LoadExplore&TaskName=Skyserver.Explore.Summary";
            objectInfo.LoadExplore = rs.GetObjectInfoFromWebService(globals.ExploreWS, AllParameters);
            Session["LoadExplore"] = objectInfo.LoadExplore;

            objectInfo.objId = objectInfo.LoadExplore.Tables["objectInfo"].Rows[0]["objId"].ToString();
            objectInfo.specObjId = objectInfo.LoadExplore.Tables["objectInfo"].Rows[0]["specObjId"].ToString();
            objectInfo.apid = objectInfo.LoadExplore.Tables["objectInfo"].Rows[0]["apid"].ToString();
            parseIds();
            //Session["objectInfo"] = objectInfo;            
        }


        private void parseIds() {
            if (objectInfo.objId != null && !objectInfo.objId.Equals(""))
            {
                objectInfo.id = Utilities.ParseId(objectInfo.objId);
                objectInfo.ra = (double)objectInfo.LoadExplore.Tables["MetaData"].Rows[0]["ra"];
                objectInfo.dec = (double)objectInfo.LoadExplore.Tables["MetaData"].Rows[0]["dec"];
                objectInfo.run = Int32.Parse(objectInfo.LoadExplore.Tables["MetaData"].Rows[0]["run"].ToString());
                objectInfo.rerun = Int16.Parse(objectInfo.LoadExplore.Tables["MetaData"].Rows[0]["rerun"].ToString());
                objectInfo.camcol = Int16.Parse(objectInfo.LoadExplore.Tables["MetaData"].Rows[0]["camcol"].ToString());
                objectInfo.field = (short)objectInfo.LoadExplore.Tables["MetaData"].Rows[0]["field"];
                objectInfo.fieldId = Functions.BytesToHex((byte[])objectInfo.LoadExplore.Tables["ImagingData"].Rows[0]["fieldId"]);
            }

            if (objectInfo.specObjId != null && !objectInfo.specObjId.Equals("") && objectInfo.specId != 0)
            {
                objectInfo.specId = Utilities.ParseSpecObjId(objectInfo.specObjId);
                objectInfo.plateId = objectInfo.LoadExplore.Tables["SpectralData"].Rows.Count == 0 ? null : objectInfo.LoadExplore.Tables["SpectralData"].Rows[0]["plateId"].ToString();
            }

            Session["objectInfo"] = objectInfo;
        }






    }
}