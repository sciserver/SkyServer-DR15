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
    public partial class Neighbors : System.Web.UI.Page
    {
        protected Globals globals;
        protected ObjectExplorer master;
        protected string objId;

        protected RunQuery runQuery;
        protected DataSet ds_neighbor1, ds_neighbor2;
        DataSet NeighborsTables = new DataSet();
        ResponseREST rs = new ResponseREST();

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ObjectExplorer)Page.Master;

            objId = Request.QueryString["id"];
            runQuery = new RunQuery();

            executeQuery();
        }

        private void executeQuery() {

            if (Session["Neighbors"] != null)
                NeighborsTables = (DataSet)Session["Neighbors"];
            else
            {
                string URIparams = "?id=" + objId + "&query=Neighbors&TaskName=Skyserver.Explore.Neighbors";
                NeighborsTables = rs.GetObjectInfoFromWebService(globals.ExploreWS, URIparams);
                Session["Neighbors"] = NeighborsTables;
            }
            ds_neighbor1 = new DataSet();
            ds_neighbor2 = new DataSet();
            ds_neighbor1.Merge(NeighborsTables.Tables["neighbors1"]);
            ds_neighbor2.Merge(NeighborsTables.Tables["neighbors2"]);
            

        }
    }
}