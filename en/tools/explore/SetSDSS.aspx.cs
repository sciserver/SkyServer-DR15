using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace SkyServer.Tools.Explore
{
    public partial class SetSDSS : System.Web.UI.Page
    {
        protected string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = "";
            string key;
            string val;
            for (int i = 0; i < Request.QueryString.Count; i++)
            {
                key = Request.QueryString.AllKeys[i];
                key = key.ToLower();
                if (key == "id") id = Request.QueryString["id"];
            }
            if (id != "")
            {
                int rerun = Int32.Parse(id.Substring(2, 6), NumberStyles.AllowHexSpecifier) % 2048;
                int run = Int32.Parse(id.Substring(6, 4), NumberStyles.AllowHexSpecifier);
                int cf = Int32.Parse(id.Substring(10, 4), NumberStyles.AllowHexSpecifier);
                int camcol = (int)Math.Floor(cf / 8192 + 0.01);
                int field = cf % 4096;
                int obj = Int32.Parse(id.Substring(14, 4), NumberStyles.AllowHexSpecifier);
                val = run + "-" + rerun + "-" + camcol + "-" + field + "-" + obj;
            }
            else
            {
                val = "";
            }
        }
    }
}