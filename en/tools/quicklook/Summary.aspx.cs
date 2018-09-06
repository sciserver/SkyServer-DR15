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


namespace SkyServer.Tools.QuickLook
{
    public partial class Summary : System.Web.UI.Page
    {
        protected const string ZERO_ID = "0x0000000000000000";
        protected Globals globals;
        protected ObjectQuickLook master;
        
        public RunQuery runQuery;
        public ObjectInfo objectInfo = new ObjectInfo();

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

        protected Int16? run = null;
        protected Int16? rerun = null;
        protected byte? camcol = null;
        protected Int16? field = null;
        protected Int16? obj = null;

        protected string task = "";

        public ResponseREST rs;

        protected void Page_Load(object sender, EventArgs e)
        {

            runQuery = new RunQuery();
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            Session["objectInfo"] = objectInfo;

            rs = new ResponseREST();
            string requestURI = globals.ExploreWS;

            globals = (Globals)Application[Globals.PROPERTY_NAME];

            //string AllParameters = rs.GetURIparameters(Request);
            string AllParameters = "";
            bool CanResolve = false;
            string[] NecessaryParams = new string[] { "id", "objid", "sid", "spec", "specobjid", "apid", "ra", "dec", "plate", "mjd", "fiber", "run", "rerun", "camcol", "field", "obj" };
            foreach (string key in Request.QueryString.AllKeys)
            {
                if (NecessaryParams.Contains(key.ToLower()))
                {
                    CanResolve = true;
                    AllParameters += key + "=" + Request.QueryString.GetValues(key)[0].ToString() + "&";
                }
            }
            if (Request.QueryString.AllKeys.Length == 0 || !CanResolve)
                AllParameters = "id=" + globals.ExploreDefault.ToString() + "&";
            AllParameters += "query=LoadExplore&TaskName=Skyserver.QuickLook.Summary";
            //objectInfo.LoadExplore = rs.GetObjectInfoFromWebService(Request, globals.ExploreWS, AllParameters);
            objectInfo.LoadExplore = rs.GetObjectInfoFromWebService(globals.ExploreWS, AllParameters);

            Session["LoadExplore"] = objectInfo.LoadExplore;

            objectInfo.objId = objectInfo.LoadExplore.Tables["objectInfo"].Rows[0]["objId"].ToString();
            objectInfo.specObjId = objectInfo.LoadExplore.Tables["objectInfo"].Rows[0]["specObjId"].ToString();
            objectInfo.apid = objectInfo.LoadExplore.Tables["objectInfo"].Rows[0]["apid"].ToString();
            setObjectInfo("");
            parseIds();
            Session["QuickLookObjectInfo"] = objectInfo;
            //Session["objectInfo"] = objectInfo;            

        }

        private void parseIds() {
            if (objectInfo.objId != null && !objectInfo.objId.Equals(""))
                objectInfo.id = Utilities.ParseId(objectInfo.objId);

            if (objectInfo.specObjId != null && !objectInfo.specObjId.Equals(""))
                objectInfo.specId = Utilities.ParseSpecObjId(objectInfo.specObjId);
        }


        private void setObjectInfo(string cmd)
        {
            //DataSet ds = runQuery.RunCasjobs(cmd, "QuickLook: Summary");
            //DataSet ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Quicklook.Summary." + task);
            using (DataTableReader reader = objectInfo.LoadExplore.Tables["QuickLookMetaData"].CreateDataReader())
            {
                if (reader.Read())
                {
                    objectInfo.objId = reader["objId"] is DBNull ? null : (reader["objId"]).ToString();
                    objectInfo.specObjId = reader["specObjId"] is DBNull ? null : (reader["specObjId"]).ToString();
                    objectInfo.ra = reader["ra"] is DBNull ? null : (double?)reader["ra"];
                    objectInfo.dec = reader["dec"] is DBNull ? null : (double?)reader["dec"];

                    objectInfo.mjd = reader["mjd"] is DBNull ? null : (int?)reader["mjd"];
                    objectInfo.plate = reader["plate"] is DBNull ? null : (short?)reader["plate"];
                    objectInfo.plateId = reader["plateId"] is DBNull ? null : Functions.BytesToHex((byte[])reader["plateId"]);
                    objectInfo.fiberId = reader["fiberid"] is DBNull ? null : (short?)reader["fiberid"];
                    objectInfo.fieldId = reader["fieldId"] is DBNull ? null : Functions.BytesToHex((byte[])reader["fieldId"]);

                    objectInfo.run = reader["run"] is DBNull ? null : (short?)reader["run"];
                    objectInfo.rerun = reader["rerun"] is DBNull ? null : (short?)reader["rerun"];
                    objectInfo.camcol = reader["camcol"] is DBNull ? null : (byte?)reader["camcol"];
                    objectInfo.field = reader["field"] is DBNull ? null : (short?)reader["field"];

                    objectInfo.u = reader["u"] is DBNull ? "" : (string)reader["u"];
                    objectInfo.g = reader["g"] is DBNull ? "" : (string)reader["g"];
                    objectInfo.r = reader["r"] is DBNull ? "" : (string)reader["r"];
                    objectInfo.i = reader["i"] is DBNull ? "" : (string)reader["i"];
                    objectInfo.z = reader["z"] is DBNull ? "" : (string)reader["z"];
                    objectInfo.err_u = reader["err_u"] is DBNull ? "" : (string)reader["err_u"];
                    objectInfo.err_g = reader["err_g"] is DBNull ? "" : (string)reader["err_g"];
                    objectInfo.err_r = reader["err_r"] is DBNull ? "" : (string)reader["err_r"];
                    objectInfo.err_i = reader["err_i"] is DBNull ? "" : (string)reader["err_i"];
                    objectInfo.err_z = reader["err_z"] is DBNull ? "" : (string)reader["err_z"];
                    objectInfo.otype = reader["otype"] is DBNull ? "" : (string)reader["otype"];
                    objectInfo.spectralClass = reader["spectralClass"] is DBNull ? "" : (string)reader["spectralClass"];
                    objectInfo.flags = reader["flags"] is DBNull ? "" : (string)reader["flags"];
                    objectInfo.redshift = reader["redshift"] is DBNull ? null : (float?)reader["redshift"];
                    objectInfo.run2d = reader["run2d"] is DBNull ? "" : (string)reader["run2d"];
                }
            } // using DataTableReader
        }

        private void setFromPlateMjdFiber(short? plate, int? mjd, short? fiber)
        {
            string cmd = QuickLookQueries.getParamsFromPlateFiberMjd; task = "getParamsFromPlateFiberMjd";
            cmd = cmd.Replace("@mjd", mjd.ToString());
            cmd = cmd.Replace("@plate", plate.ToString());
            cmd = cmd.Replace("@fiberId", fiber.ToString());
            setObjectInfo(cmd);
        }



        private void setFromSpecObjID(string sid)
        {
            string cmd = QuickLookQueries.getParamsFromSpecObjID; task = "getParamsFromSpecObjID";
            cmd = cmd.Replace("@sid", sid);
            setObjectInfo(cmd);
        }




        private void setFromObjID(long? id)
        {
            string cmd = QuickLookQueries.getParamsFromObjID; task = "getParamsFromObjID";
            cmd = cmd.Replace("@objid", id.ToString());
            setObjectInfo(cmd);
        }



    



    }









}