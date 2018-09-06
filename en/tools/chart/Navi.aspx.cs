using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Tools.Chart
{
    public partial class Navi : System.Web.UI.Page
    {
        protected double ra;
        protected double dec;
        protected double qscale;
        public int width = 512;
        protected int height = 512;
        protected string opt;
        protected int def = 1;
        protected Globals globals;
        protected int tabwidth = 180;
        protected string[] my_apps = new string[] { "chart", "list", "navi" };
        protected string name = "navi";
        protected string query;
        protected string url;
        protected string objid = " ";
        protected string size = "512";

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            //url = getURL();
            url = ResolveUrl("~");
            ra = globals.VisualRA;
            dec = globals.VisualDec;
            qscale = globals.VisualScale;

            string key;
            for (var i = 0; i < Request.Params.Count; i++)
            {
                key = Request.Params.Keys[i];
                if (key!=null) key = key.ToLower();
                if ("ra".Equals(key)) { ra = Double.Parse(Request[key]); def = 0; }
                if ("dec".Equals(key)) { dec = Double.Parse(Request[key]); def = 0; }
                if ("scale".Equals(key)) { qscale = Double.Parse(Request[key]); def = 0; }
                if ("width".Equals(key)) { width = int.Parse(Request[key]); def = 0; }
                if ("height".Equals(key)) { height = int.Parse(Request[key]); def = 0; }
                if ("opt".Equals(key)) { opt = Request[key]; def = 0; }
            }	

        }

        protected void drawFormBox(string label, string name, string value, string change, string unit, string tooltip)
        {
            string s = "<tr>\n\t<td><span  ONMOUSEOVER=\"this.T_TEMP='3000';this.T_WIDTH='180';return escape('" + tooltip + "')\">" + label + "</span></td>\n";
            s += "\t\t<td><table cellspacing=0 cellpadding=0><tr><td>\n";
            s += "\t\t\t<INPUT class='in' type='text' size='3' maxlength='20' align='right'\n";
            s += "\t\t\tvalue='" + value + "' name='" + name + "' id='"+name+"'";
            if (change != "") s += " onChange='" + change + "' ";
            s += "></td><td>&nbsp;<span  ONMOUSEOVER=\"this.T_TEMP='3000';this.T_WIDTH='180';return escape('" + tooltip + "')\">" + unit;
            s += "\t\t\t</span></td></tr></table>\n\t\t</td>\n</tr>\n";
            Response.Write(s);
        }
        /*
        string getURL()
        {
            string host = Request.ServerVariables["SERVER_NAME"];
            string path = Request.ServerVariables["SCRIPT_NAME"];

            string root = "http://" + host;

            string s = path;
            string[] q = s.Split('/');

            var lang = "";
            for (var i = 0; i < q.Length; i++)
            {
                if (i > 0) root += "/";
                lang = q[i];
                if (lang.IndexOf(".") == -1)
                    root += q[i];
            }
            return root;
        }
        */
    }
}