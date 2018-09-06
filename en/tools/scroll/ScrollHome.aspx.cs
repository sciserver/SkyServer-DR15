using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SkyServer.Tools.Scroll
{
    public partial class ScrollHome : System.Web.UI.Page
    {
        protected string stripeurl = "stripe.aspx?Z=4&S=";
        protected string camcolurl = "camcol.aspx?Z=50&";
        protected int oldstripe = 0;
        protected Globals globals;
        ToolsMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ToolsMaster)Page.Master;
            master.gselect = 7;
        }

        protected void writeHead()
        {
            string h = "<tr>\n  <td class='h' align=middle>Stripe</td>\n";
            h += "	<td class='h' colspan=6 align=middle>Run/Camcol</td>\n";
            Response.Write(h + "</tr>\n");
        }

        protected void writeRun(string r, string c)
        {
            string h = "<td class='" + c + "' align='middle'>";
            h += "        <a href='" + camcolurl + "R=" + r + "&C=";
            for (var col = 1; col < 7; col++)
                Response.Write(h + col + "' class='" + c + "'>\n" + r + "/" + col + "</a></td>\n");
            Response.Write("</tr>\n");
        }

        protected void writeStripe(string s, int n)
        {
            string h = "    <td class='s' rowspan='" + n + "' align='middle'>\n";
            //		h += "        <a href='"+stripeurl+s+"' class='s'>\n";
            h += "        <font size=+1>" + s + "</font>";
            //		h += "</a>";
            h += "</td>\n";
            Response.Write(h);
        }

        protected void writeRow(string runs)
        {
            string[] r = runs.Split(',');
            Response.Write("<tr>\n");
            writeStripe(r[0], r.Length - 1);
            for (var i = 1; i < r.Length; i++)
                writeRun(r[i], ((i % 2) == 0 ? "bsml" : "tsml"));
        }

        protected void writeAll(SqlConnection oConn)
        {
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                string cmd = "select distinct stripe, run from Run order by stripe, run";
                int stripe, run, oldstripe;
                oldstripe = -1;
                string runs = "";

                writeHead();

                oCmd.CommandText = cmd;
                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        stripe = reader.GetInt32(0);
                        run = reader.GetInt16(1);
                        if (stripe != oldstripe)
                        {
                            if (oldstripe != -1) writeRow(runs);
                            runs = "" + stripe;
                            oldstripe = stripe;
                        }
                        runs += "," + run;
                    }
                    writeRow(runs);
                }
            }
        }
    }
}