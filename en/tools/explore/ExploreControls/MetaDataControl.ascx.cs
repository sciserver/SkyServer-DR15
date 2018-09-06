using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SkyServer;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Text;

using System.Runtime.Serialization.Formatters.Binary;


namespace SkyServer.Tools.Explore
{
    public partial class MetaDataControl : System.Web.UI.UserControl
    {
        protected Globals globals;

        protected double ra;
        protected double dec;

        protected decimal? specObjId = null;
        protected int? clean = null;
        protected int? mode = null;
        protected string otype = null;
        protected string survey;
        protected int? imageMJD = null;

        protected Int16? run = null;
        protected Int16? rerun = null;
        protected byte? camcol = null;
        protected Int16? field = null;
        protected Int16? obj = null;

        protected ObjectExplorer master;
        protected RunQuery runQuery;
        private SqlConnection oConn = null;

        DataSet ds = new DataSet();

        public bool WasObservedWithApogee = false;
        public bool WasObservedWithManga = false;
        public string OtherObsText = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            //ds = (DataSet)Session["objectDataSet"];

            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ObjectExplorer)Page.Master;
            string token = "";
            HttpCookie cookie = Request.Cookies["Keystone"];
            if (cookie != null)
                if (cookie["token"] != null || !cookie["token"].Equals(""))
                    token = cookie["token"];
            runQuery = new RunQuery(token);
            if (master.objId != null && !master.objId.Equals(""))
                executeQuery();

            if (((DataSet)Session["LoadExplore"]).Tables.IndexOf("MangaData") >= 0 && ((DataSet)Session["LoadExplore"]).Tables["MangaData"].Rows.Count > 0)
                WasObservedWithManga = true;

            if (((DataSet)Session["LoadExplore"]).Tables.IndexOf("ApogeeData") >= 0 && ((DataSet)Session["LoadExplore"]).Tables["ApogeeData"].Rows.Count > 0)
                WasObservedWithApogee = true;

            if (WasObservedWithManga && !WasObservedWithApogee)
                OtherObsText = "This object was also observed in <a href=\"#manga\" style=\"color:blue\">MaNGA</a>";
            if (WasObservedWithApogee && !WasObservedWithManga)
                OtherObsText = "This object was also observed in <a href=\"#irspec\" style=\"color:blue\">APOGEE</a>";
            if (WasObservedWithManga && WasObservedWithApogee)
                OtherObsText = "This object was also observed in <a href=\"#irspec\" style=\"color:blue\">APOGEE</a> and <a href=\"#manga\" style=\"color:blue\">MaNGA</a>";




        }

        private void executeQuery()
        {

            using (DataTableReader reader = ((DataSet)Session["LoadExplore"]).Tables["MetaData"].CreateDataReader())
            {
                if (reader.Read())
                {
                    if (reader.HasRows)
                    {
                        ra = (double)reader["ra"];
                        dec = (double)reader["dec"];
                        specObjId = reader["specObjId"] is DBNull ? -999999 : (decimal)(reader["specObjId"]);
                        clean = (int)reader["clean"];
                        survey = reader["survey"] is DBNull ? null : (string)reader["survey"];
                        mode = (int)reader["mode"];
                        otype = reader["otype"] is DBNull ? null : (string)reader["otype"];
                        imageMJD = (int)reader["mjd"];

                        run = (Int16)reader["run"];
                        rerun = (Int16)reader["rerun"];
                        camcol = (byte)reader["camcol"];
                        field = (Int16)reader["field"];
                        obj = (Int16)reader["obj"];
                    }
                }
            }


        }


    }
}