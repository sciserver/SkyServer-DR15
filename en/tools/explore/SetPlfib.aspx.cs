using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace SkyServer.Tools.Explore
{
    public partial class SetPlfib : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sid = "";

            string key;
            for (var i = 0; i < Request.QueryString.Count; i++)
            {
                key = Request.QueryString.AllKeys[i];
                key = key.ToLower();
                if (key == "sid") sid = Request.QueryString["sid"];
            }
            /*
            int plate = Int32.Parse(sid.Substring(2, 6), NumberStyles.AllowHexSpecifier);
            int mjd = Int32.Parse(sid.Substring(6, 4), NumberStyles.AllowHexSpecifier);
            int fiberid = Int32.Parse(sid.Substring(10, 3), NumberStyles.AllowHexSpecifier);
            int fiber = fiberid / 4;
            */
        }
    }
}