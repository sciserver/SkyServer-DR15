using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SkyServer.Tools.Search
{
    public partial class X_Results : System.Web.UI.Page
    {
        protected string url;
        protected Globals globals;

        string windows_name;
        string server_name;
        string remote_addr;

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Access-Control-Allow-Origin", "*");

            //url = ResolveClientUrl("~/en");
            //globals = (Globals)Application[Globals.PROPERTY_NAME];

            //windows_name = System.Environment.MachineName;
            //server_name = Request.ServerVariables["SERVER_NAME"];
            //remote_addr = Request.ServerVariables["REMOTE_ADDR"];
            Response.Buffer = true;
            ResponseREST rs = new ResponseREST();
            rs.ProcessRequestREST(Request, Response);
        }
    }
}