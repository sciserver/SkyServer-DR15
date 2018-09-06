using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using SkyServer;
using System.Data;
using System.Data.SqlClient;
using SkyServer.Tools.Search;

namespace SkyServer.Tools.Explore
{
    public partial class Plate : System.Web.UI.Page
    {
        protected long? plateId = null;
        protected Globals globals;
        protected ObjectExplorer master;
        protected RunQuery runQuery;
        protected DataSet ds = new DataSet();
        DataSet PlateTables = new DataSet();
        ResponseREST rs = new ResponseREST();

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ObjectExplorer)Page.Master;            
            string s = Request.QueryString["plateId"];            
            plateId = Utilities.ParseId(s);                      
            runQuery = new RunQuery();
            executeQuery();
        }

        private void executeQuery() {
            string cmd = ExplorerQueries.Plate.Replace("@plateId",plateId.ToString());
            //ds = runQuery.RunCasjobs(cmd,"Explore: Plates");
            //ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.Plate.getPlate");

            if (Session["Plate"] != null)
                PlateTables = (DataSet)Session["Plate"];
            else
            {
                string URIparams = "?plateId=" + plateId.ToString() + "&query=Plate&TaskName=Skyserver.Explore.Plate";
                PlateTables = rs.GetObjectInfoFromWebService(globals.ExploreWS, URIparams);
                Session["Plate"] = PlateTables;
            }
            ds.Merge(PlateTables.Tables["Plate"]);
        }

        public void showFTable()
        {
            string cmd = ExplorerQueries.PlateShow.Replace("@plateId", plateId.ToString());
            //DataSet ds = runQuery.RunCasjobs(cmd,"Explore: Plates");
            //DataSet ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.Plate.PlateShow");
            //using (DataTableReader reader = ds.Tables[0].CreateDataReader())
            using (DataTableReader reader = PlateTables.Tables["PlateShow"].CreateDataReader())
            {
                string u = "<a class='content' target='_top' href='summary.aspx?sid=";
                string sid;
                int col = 0;
                int row = 0;
                string c = "st";
                string specObjId;
                Response.Write("<table>\n");
                Response.Write("<tr>");
                while (reader.Read())
                {
                    specObjId = reader["specObjId"] is DBNull ? null : Functions.BytesToHex((byte[])reader["specObjId"]);
                    sid = u + specObjId + "'>";
                    string v = "[" + reader.GetValue(1).ToString() + "]&nbsp;";
                    v += reader.GetValue(2).ToString() + " z=" + reader.GetValue(3).ToString();
                    Response.Write("<td nowrap class='" + c + "'>" + sid + v + "</a></td>\n");
                    if (++col > 3)
                    {
                        col = 0;
                        row++;
                        Response.Write("</tr>\n<tr>\n");
                        c = ("st".Equals(c) ? "sb" : "st");
                    }
                }
                Response.Write("<td></td></tr>\n</table>\n");
            } // using SqlDataReader
        }
    }
}