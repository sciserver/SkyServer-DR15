using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SkyServer.Tools.Search;
using System.Data;

namespace SkyServer.Tools.Explore
{
    public partial class GalaxyZoo : System.Web.UI.Page
    {
        protected string objId;

        protected Globals globals;
        protected ObjectExplorer master;

        public DataSet GalaxyZooTables = new DataSet();
        ResponseREST rs = new ResponseREST();

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            objId = Request.QueryString["id"];
            master = (ObjectExplorer)Page.Master;

            if (Session["GalaxyZooTables"] != null)
                GalaxyZooTables = (DataSet)Session["GalaxyZooTables"];
            else
            {
                string URIparams = "?id=" + objId + "&query=GalaxyZoo&TaskName=Skyserver.Explore.Galaxyzoo";
                GalaxyZooTables = rs.GetObjectInfoFromWebService(globals.ExploreWS, URIparams);
                Session["GalaxyZooTables"] = GalaxyZooTables;
            }

       
        }

       
    }
}