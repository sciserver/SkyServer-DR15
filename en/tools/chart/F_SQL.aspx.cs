using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using SkyServer;
using SkyServer.Tools.Search;
using System.Data;

namespace SkyServer.Tools.Chart
{
    public partial class F_SQL : System.Web.UI.Page
    {
        protected string result;
        protected int count = 0;

        Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];

            string c		= Request["cmd"];
	        string url	    = Request["url"];
	        //string format  = "form";

            //c = c.Replace("'","''");

	        string cmd = c;

            string res = "";

            try
            {
                ResponseREST rs = new ResponseREST();
                string URIparams = "?cmd=" + cmd + "&format=dataset&TaskName=Skyserver.Chart.F_SQL";
                DataSet ds = rs.GetObjectInfoFromWebService(globals.SQLSearchWS, URIparams);
                //DataSet ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.chart.F_SQL.UsersQuery");
                using (DataTableReader reader = ds.Tables[0].CreateDataReader())
                {
                    if (reader.HasRows)
                    {

                        for (int index = 0; index < (reader.FieldCount); index++)
                        {
                            res += (reader.GetName(index));
                            res += ((index != reader.FieldCount - 1) ? "," : "\n");
                        }
                        while (reader.Read())
                        {
                            for (int index = 0; index < (reader.FieldCount); index++)
                            {
                                res += reader.GetValue(index).ToString();
                                res += ((index != (reader.FieldCount - 1)) ? "," : "\n");
                            }
                            count++;
                        }
                    }
                } // using DataTableReader
            }
            catch (Exception ex)
            {
                //Response.Write("ERROR\n\nSQL returned the following error message:\n" + ex.Message + "\n");
                //Response.Write("Your SQL command was:\n" + cmd + "\n");
                //format = "error";
                res = "Error in running the SQL query.\n\n" + ex.Message + "\n" + "Your SQL command was:\n" + cmd + "\n";
            }

            result = res;
        }
    }
}