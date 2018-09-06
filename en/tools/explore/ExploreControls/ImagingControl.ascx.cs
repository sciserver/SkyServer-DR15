using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using  System.Collections.Specialized;
using System.Data.SqlClient;

namespace SkyServer.Tools.Explore
{
    public partial class ImagingControl : System.Web.UI.UserControl
    {        
        protected Globals globals;
        protected ObjectExplorer master;        

        //--- phototag
        protected string flag; //0
        protected double ra = 0;//1
        protected double dec = 0;//2
        protected int run;//3
        protected int rerun;//4
        protected int camcol;//5
        protected long field;//6
        protected string fieldId;//7
        protected string objId;//8

        //--- PhotoObjAll
        public int clean;//14
        protected string otype;//15
        protected double u;//16
        protected double g;//17
        protected double r;//18
        protected double i;//19
        protected double z;//20
        protected double err_u;//21
        protected double err_g;//22
        protected double err_r;//23
        protected double err_i;//24
        protected double err_z;//25

        //--- PhotoObj
        protected string mode;//26
        protected int mjdNum;//27
        protected int otherObs;//28
        protected long parentId;//29
        protected int nchild;//30
        protected string extinction_r;//31
        protected string petrorad_r;//32

        //--- PhotoZ, photoZRF
        protected string photoZ_KD;//33
        //protected string photoZ_RF;//34
        protected string galaxyZoo_Morph;//35

        protected string mjdDate = "";

        protected string sdssUrl;

        protected string flagsLink = "";

        protected RunQuery runQuery;

        DataSet ds = new DataSet();

        public void Page_Load(object sender, EventArgs e)
        {

            //ds = (DataSet)Session["objectDataSet"];

            globals = (Globals)Application[Globals.PROPERTY_NAME];            
            master  = (ObjectExplorer)Page.Master;
            string token = "";
            HttpCookie cookie = Request.Cookies["Keystone"];
            if (cookie != null)
                if (cookie["token"] != null || !cookie["token"].Equals(""))
                    token = cookie["token"];
            runQuery = new RunQuery(token);
            

            try
            {
                //objId = Request.QueryString["id"];
                objId = master.objId;
            }
            catch (Exception exp) {
                //If the querystring is empty and no objid key
                objId = null;
            }
            sdssUrl = globals.SdssUrl;
            flagsLink = sdssUrl + "algorithms/photo_flags_recommend.php";

            if (objId != null && !objId.Equals(""))
            {
                execQuery();
                getUnit();
            }
        }

        private void execQuery()
        {
            string cmd = ExplorerQueries.getImagingQuery.Replace("@objId", objId);
            //DataSet ds = runQuery.RunCasjobs(cmd,"Explore: Imaging");
            //DataSet ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.ImagingControl.getImagingQuery");
            //using (DataTableReader reader = ds.Tables[0].CreateDataReader())
            using (DataTableReader reader = ((DataSet)Session["LoadExplore"]).Tables["ImagingData"].CreateDataReader())
            {
                if (reader.Read())
                {
                    if (reader.HasRows)
                    {
                        //photoObjall
                        flag = (string)reader["flags"];
                        ra = (double)reader["ra"];
                        dec = (double)reader["dec"];
                        run = reader["run"] is DBNull ? -9999 : (short)reader["run"];
                        rerun = reader["rerun"] is DBNull ? -9999 : (short)reader["rerun"];
                        camcol = reader["camcol"] is DBNull ? -9999 : (byte)reader["camcol"];
                        field = reader["field"] is DBNull ? -9999 : (short)reader["field"];
                        fieldId = reader["fieldId"] is DBNull ? " " : Functions.BytesToHex((byte[])reader["fieldId"]);
                        objId = reader["objId"] is DBNull ? null : (reader["objId"]).ToString();
                        clean = reader["clean"] is DBNull ? -99999 : (int)reader["clean"]; ;
                        otype = reader["clean"] is DBNull ? "" : (string)reader["otype"];

                        ////--- magnitudes
                        u = reader["u"] is DBNull ? -999.99 : (float)reader["u"];
                        g = reader["u"] is DBNull ? -999.99 : (float)reader["g"];
                        r = reader["u"] is DBNull ? -999.99 : (float)reader["r"];
                        i = reader["u"] is DBNull ? -999.99 : (float)reader["i"];
                        z = reader["u"] is DBNull ? -999.99 : (float)reader["z"];

                        ////--- mag errors
                        err_u = reader["err_u"] is DBNull ? -999.99 : (float)reader["err_u"];
                        err_g = reader["err_g"] is DBNull ? -999.99 : (float)reader["err_g"];
                        err_r = reader["err_r"] is DBNull ? -999.99 : (float)reader["err_r"];
                        err_i = reader["err_i"] is DBNull ? -999.99 : (float)reader["err_i"];
                        err_z = reader["err_z"] is DBNull ? -999.99 : (float)reader["err_z"];

                        ////--- PhotoObj
                        mode = reader["mode"] is DBNull ? " - " : (string)reader["mode"];

                        mjdNum = reader["mjdNum"] is DBNull ? -99999 : (int)reader["mjdNum"];
                        if (mjdNum != -99999)
                            mjdDate = HelperFunctions.ConvertFromJulian(mjdNum).ToString("MM/dd/yyyy");

                        otherObs = reader["Other observations"] is DBNull ? -99999 : (int)reader["Other observations"];

                        parentId = reader["parentID"] is DBNull ? -99999 : (long)reader["parentID"];

                        nchild = reader["nChild"] is DBNull ? -99999 : (short)reader["nChild"];

                        extinction_r = reader["extinction_r"] is DBNull ? " - " : (string)reader["extinction_r"];

                        petrorad_r = reader["petrorad_r"] is DBNull ? " - " : (string)reader["petrorad_r"];

                        ////--- PhotoZ, photoZRF
                        photoZ_KD = reader["photoZ_KD"] is DBNull ? " - " : (string)reader["photoZ_KD"];

                        //photoZ_RF = reader["photoZ_KD"] is DBNull ? " - " : (string)reader["photoZ_RF"];

                        galaxyZoo_Morph = reader["photoZ_KD"] is DBNull ? " - " : (string)reader["galaxyZoo_Morph"];
                    }
                }
            }



        }

        //protected string u_unit, g_unit, r_unit, i_unit, z_unit, 
        //                 err_u_unit, err_g_unit, err_r_unit, err_i_unit, err_z_unit,
        //                 mjd_unit,mode_unit;

        protected NameValueCollection columnUnit = new NameValueCollection();

        protected void getUnit()
        {

            string cmd = ExplorerQueries.unitQuery;

            //DataSet ds = runQuery.RunCasjobs(cmd,"Explore: Imaging");
            //DataSet ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.ImagingControl.unitQuery");
            //using (DataTableReader reader = ds.Tables[0].CreateDataReader())
            using (DataTableReader reader = ((DataSet)Session["LoadExplore"]).Tables["ImagingDataUnits"].CreateDataReader())
            {
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        string colName = reader[0] is DBNull ? "" : (string)reader[0];
                        string colUnit = reader[0] is DBNull ? "" : (string)reader[1];
                        columnUnit.Add(colName, colUnit);
                    }
                }
            }
        }

    }
}