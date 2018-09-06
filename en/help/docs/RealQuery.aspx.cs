using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace SkyServer.Help.Docs
{
    public partial class RealQuery : System.Web.UI.Page
    {
        protected string url;
        protected Globals globals;
        HelpMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            url = ResolveClientUrl("~/en");
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (HelpMaster)Page.Master;
            master.gselect = 18;
        }

        // function to strip HTML tags from a sample query so it can be run on sql page
        protected string stripHTML(string oldQuery)
        {
            string newQuery = Regex.Replace(oldQuery, @"^[ \t\f\v]*--.*\n", "", RegexOptions.Multiline);		// remove all isolated single-line comments
            newQuery = Regex.Replace(newQuery, "<[^<|>]+?>", "", RegexOptions.IgnoreCase);			// remove HTML tags
            newQuery = Regex.Replace(newQuery, @"&lt;", "<");
            newQuery = Regex.Replace(newQuery, @"&gt;", ">");
            newQuery = Regex.Replace(newQuery, @"&le;", ">");
            newQuery = Regex.Replace(newQuery, @"&ge;", ">");
            newQuery = Regex.Replace(newQuery, @"&nbsp;", " ");
            newQuery = Regex.Replace(newQuery, @"--[^\r^\n]*", "");				// remove all embedded single-line comments
            newQuery = Regex.Replace(newQuery, @"[ \t\f\v]+", " ");				// replace multiple whitespace with single space
            newQuery = Regex.Replace(newQuery, @"^[ \t\f\v]*\r\n", "", RegexOptions.Multiline);			// remove empty lines
            return Server.UrlEncode(newQuery); //.Replace("#","%23").Replace("&","";
        }

        protected void showQuery(string qName, string qry, string cmd1, string cmd2)
        {
            Response.Write("<a name=\"" + qName + "\"></a><h3>" + qry + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#top\"><img src=\"images/top.gif\" ALT=\"Back to Top\" NOSAVE BORDER=\"0\" HEIGHT=\"25\" ALIGN=\"TOP\"></a>");
            string cmdRun = stripHTML(cmd1);
            Response.Write(" <a href=\"" + url + "/tools/search/sql.aspx?cmd=" + cmdRun + "\" ONMOUSEOVER=\"this.T_WIDTH='180';return escape('Load this query into SQL Search form so you can modify it before you run it.')\" target=\"tools\"><img src=\"images/load.gif\" ALT=\"Load Query\" BORDER=\"0\" HEIGHT=\"25\" ALIGN=\"TOP\"></a>");
            //Response.Write(" <a href=\"" + url + "/tools/search/x_sql.aspx?cmd=" + cmdRun + "&format=html\" ONMOUSEOVER=\"this.T_TEMP='3000';this.T_WIDTH='180';return escape('Execute this query on the server immediately.')\"><img src=\"images/run.gif\" ALT=\"Run Query\" BORDER=\"0\" HEIGHT=\"25\" ALIGN=\"TOP\"></a></h3>");
            Response.Write(" <a href=\"" + url + "/tools/search/x_results.aspx?searchtool=SQL&cmd=" + cmdRun + "&format=html\" ONMOUSEOVER=\"this.T_TEMP='3000';this.T_WIDTH='180';return escape('Execute this query on the server immediately.')\"><img src=\"images/run.gif\" ALT=\"Run Query\" BORDER=\"0\" HEIGHT=\"25\" ALIGN=\"TOP\"></a></h3>");
            Response.Write(cmd2);
        }
    }
}