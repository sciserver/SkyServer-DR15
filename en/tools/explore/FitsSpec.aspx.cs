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
    public partial class FitsSpec : System.Web.UI.Page
    {
        protected string[] hrefsSpec;
        decimal? specObjId = null;

        protected Globals globals;

        protected RunQuery runQuery;


        protected void Page_Load(object sender, EventArgs e)
        {
            runQuery = new RunQuery();

            globals = (Globals)Application[Globals.PROPERTY_NAME];

            string sid = Request.QueryString["sid"];
            specObjId = Utilities.ParseSpecObjId(sid);
            hrefsSpec = getFits(specObjId);
        }

        string[] getFits(decimal? specObjId)
        {
            string[] result = null;
            string cmd = "select dbo.fGetUrlFitsSpectrum(@specObjId)";
            cmd = cmd.Replace("@specObjId", specObjId == null ? "" : specObjId.ToString());
            //DataSet ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.FitsSpec.getUrlFitsSpectrum");

            ResponseREST rs = new ResponseREST();
            string URIparams = "?spec=" + specObjId.ToString() + "&query=fitsspec&TaskName=Skyserver.Explore.FitsSpec";
            DataSet ds = rs.GetObjectInfoFromWebService(globals.ExploreWS, URIparams);


            using (DataTableReader reader = ds.Tables[0].CreateDataReader())
            {
                if (reader.HasRows)
                {
                    result = new string[reader.FieldCount];
                }
                while (reader.Read())
                {
                    for (int i = 0; i < reader.FieldCount; i++)
                        result[i] = reader.GetValue(i).ToString();
                }
            }
            return result;
        }
    }  
}
