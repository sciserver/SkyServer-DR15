using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SkyServer;
using SkyServer.Tools.Search;

namespace SkyServer.Tools.Explore
{
    public partial class FitsImg : System.Web.UI.Page
    {
        protected Globals globals;
        protected string[] hrefsCf;
        protected string fieldId;
        protected RunQuery runQuery;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            runQuery = new RunQuery();
            long? fieldId = Utilities.ParseId(Request.QueryString["fieldId"]);
            if (fieldId.HasValue)
            {
                hrefsCf = getCFrame(fieldId.Value);
            }
        }

        private string[] getCFrame(long fieldId)
        {
            string[] result = null;
            string cmd = ExplorerQueries.fitsimg.Replace("@fieldId", fieldId.ToString());                
            //DataSet ds = runQuery.RunCasjobs(cmd,"Explore: FitsImg");
            //DataSet ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.FitsImg.getFitsimg");
            ResponseREST rs = new ResponseREST();
            string URIparams = "?fieldId=" + fieldId + "&query=fitsimg&TaskName=Skyserver.Explore.FitsImg";
            DataSet ds = rs.GetObjectInfoFromWebService(globals.ExploreWS, URIparams);

            using (DataTableReader reader = ds.Tables[0].CreateDataReader())
            {

                    //if (reader.Read())
                    //{
                        result = new string[reader.FieldCount];
                        while (reader.Read())
                        {
                            for (int i = 0; i < reader.FieldCount; i++)
                                result[i] = reader.GetValue(i).ToString();
                        }
                    //}
             } // using DataReader

            
            return result;
        }
    
    }
}