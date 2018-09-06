using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SkyServer.Tools.Scroll
{
    public partial class Camcol : System.Web.UI.Page
    {
        protected int run;
        protected int camcol;
        protected int zoom;
        protected string imgurl;
        protected string url;

        protected string img = "";
        protected int height = 1488;
        protected int stride = 1360;

        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            run = int.Parse(Request.QueryString["R"]);
            camcol = int.Parse(Request.QueryString["C"]);
            zoom = int.Parse(Request.QueryString["Z"]);

            url = ResolveClientUrl("~/en");
            imgurl = url + "/get/FrameByRCFZ.ashx?";
            imgurl += "R=" + run + "&C=" + camcol + "&Z=" + zoom + "&F=";

            if (zoom == 0) { }
            else if (zoom == 12) { height /= 8; stride /= 8; }
            else if (zoom == 25) { height /= 4; stride /= 4; }
            else if (zoom == 50) { height /= 2; stride /= 2; }
        }

        protected void show(SqlConnection oConn)
        {
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                string cmd = "SELECT stripe, startField, (endField-startField+1) as nFields FROM Run";
                cmd += " WHERE run=@run";
                oCmd.CommandText = cmd;
                oCmd.Parameters.AddWithValue("@run", run);

                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    string msg;

                    // get variables out, and set defaults

                    int stripe, fcount, fmin, fmax, def;

                    stripe = 0;
                    fmin = 200;
                    fmax = 300;

                    if (!reader.Read())
                    {
                        msg = "Illegal parameters";
                        // handle the error here
                    }
                    else
                    {
                        stripe = reader.GetInt32(0);
                        fmin = reader.GetInt32(1);
                        fcount = reader.GetInt32(2);
                        fmax = fmin + fcount - 1;
                        img = imgurl + fmin;
                        Response.Write("<script>\n");
                        Response.Write("  var FIELD_MIN,FIELD_MAX,PATH,HEIGHT,STRIDE;\n");
                        Response.Write("  FIELD_MIN  = " + fmin + ";\n");
                        Response.Write("  FIELD_MAX  = " + fmax + ";\n");
                        Response.Write("  HEIGHT = " + height + ";\n");
                        Response.Write("  STRIDE = " + stride + ";\n");
                        Response.Write("  PATH   = '" + imgurl + "';\n");
                        Response.Write("</script>\n");
                        msg = "<table border=0 cellpadding=0 cellspacing=0 >\n";
                        msg += "<tr><td class='t'>Stripe</td><td class='t' align=right>" + stripe + "</td></tr>\n";
                        msg += "<tr><td class='t'>Run</td><td class='t' align=right>" + run + "</td></tr>\n";
                        msg += "<tr><td class='t'>Camcol</td><td class='t' align=right>" + camcol + "</td></tr>\n</table>\n";
                    }
                    // create the default load image
                    url += fmin;

                    Response.Write("<div id='disp'>\n");
                    Response.Write(msg);
                    Response.Write("</div>\n");
                } // using SqlDataReader
            } // using SqlCommand
        }
    }
}