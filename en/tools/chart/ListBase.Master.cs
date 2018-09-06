using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SkyServer;

namespace SkyServer.Tools.Chart
{
    public partial class ListBase : System.Web.UI.MasterPage
    {
        public int page = 1;
        protected string suburl = "list.aspx";
        protected string prturl = "printlist.aspx";
        protected string qurl = "sqltoform.aspx";
        protected Globals globals;
        protected string[] my_apps = new string[] { "chart", "list", "navi" };
        protected string name = "list";
        protected string url;
        protected int tabwidth = 180;
        protected double qscale = 0.40;
        protected string opt;
        protected string query;
        protected int def = 1;
        protected string imgListPaste =
            "     name        ra     dec  \n"

            + "274-51913-230 159.815 -0.655\n"
            + "275-51910-275 161.051  0.152\n"
            + "275-51910-525 161.739  0.893\n"
            + "276-51909-19  164.090 -0.889\n"
            + "278-51900-39  168.470  0.004\n"

            + "278-51900-112 168.092 -0.255\n"
            + "278-51900-225 167.091 -0.216\n"
            + "278-51900-430 167.114  0.249\n"
            + "279-51984-456 168.956  0.860\n"
            + "279-51984-520 169.472 -0.007\n"

            + "281-51614-230 171.109 -0.427\n"
            + "282-51658-167 173.898 -0.585\n"
            + "285-51930-309 178.908 -0.771\n"
            + "286-51999-359 180.271  0.114\n"
            + "288-52000-173 184.837 -0.242\n"

            + "349-51699-582 255.537 64.206\n"
            + "353-51703-328 255.737 60.563\n"
            + "353-51703-365 256.157 60.585\n"
            + "355-51788-167 258.984 57.238\n"
            + "355-51788-563 260.121 58.797\n"

            + "358-51818-349 260.930 57.007\n"
            + "387-51791-72    0.744  0.142\n"
            + "389-51795-481   3.874  0.640\n"
            + "390-51900-196   5.183 -0.440\n"
            + "390-51900-464   5.432  0.296";
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            //url = getURL();
            url = ResolveUrl("~");
            string key;
            for (var i = 0; i < Request.Params.Keys.Count; i++)
            {
                key = Request.Params.Keys[i];
                key = key.ToLower();

                if ("scale".Equals(key)) { qscale = Double.Parse(Request[key]); def = 0; }
                if ("opt".Equals(key)) { opt = Request[key]; def = 0; }
                if ("query".Equals(key)) { query = Request[key]; def = 0; }
                if ("paste".Equals(key)) { imgListPaste = Request[key].Replace(';','\n'); def = 0; }
            }
        }

        /*
        public string getURL()
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
    }
}