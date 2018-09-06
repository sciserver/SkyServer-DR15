using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.en.proj.basic.solarsystem
{
    public partial class Query : System.Web.UI.Page
    {
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }

        protected void RunQuery(object sender, EventArgs e)
        {
            SqlDataSource1.ConnectionString = globals.SolarConnectionString;

            string windows_name = System.Environment.MachineName;
            string server_name = Request.ServerVariables["SERVER_NAME"];
            string remote_addr = Request.ServerVariables["REMOTE_ADDR"];

            string cmd = "EXEC spExecuteSQL @query, 100000, @server_name, @windows_name, @remote_addr, @access";

            SqlDataSource1.SelectCommand = cmd;
            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add("query", TextBox1.Text);
            SqlDataSource1.SelectParameters.Add("server_name", server_name);
            SqlDataSource1.SelectParameters.Add("windows_name", windows_name);
            SqlDataSource1.SelectParameters.Add("remote_addr", remote_addr);
            SqlDataSource1.SelectParameters.Add("access", "Skyserver.proj.solarsys.query");
        }
    }
}