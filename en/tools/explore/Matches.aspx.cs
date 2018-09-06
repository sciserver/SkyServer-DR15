using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SkyServer;
using System.Data;
using SkyServer.Tools.Search;


namespace SkyServer.Tools.Explore
{
    public partial class Matches : System.Web.UI.Page
    {
        protected string objId;

        protected Globals globals;
        protected ObjectExplorer master;

        protected RunQuery runQuery;
        protected ResponseREST rs;
        protected DataSet ds_match1, ds_match2;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            objId = Request.QueryString["id"];
            master = (ObjectExplorer)Page.Master;
            runQuery = new RunQuery();
            rs = new ResponseREST();
            executeQueries();
        }

        private void executeQueries() {

            DataSet MatchesTables = new DataSet();
            if (Session["Matches"] != null)
                MatchesTables = (DataSet)Session["Matches"];
            else
            {
                string URIparams = "?id=" + objId + "&query=Matches&TaskName=Skyserver.Explore.Matches";
                MatchesTables = rs.GetObjectInfoFromWebService(globals.ExploreWS, URIparams);
                Session["Matches"] = MatchesTables;
            }
            ds_match1 = new DataSet();
            ds_match2 = new DataSet();
            ds_match1.Merge(MatchesTables.Tables["matches1"]);
            ds_match2.Merge(MatchesTables.Tables["matches2"]);
            
        }
    }
}