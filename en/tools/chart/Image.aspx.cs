using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SkyServer;

namespace SkyServer.Tools.Chart
{
    public partial class Image : System.Web.UI.Page
    {
        protected int? width = 512;
        protected int? height = 512;
        protected double? scale;

        protected string jpegUrl;
        protected Globals globals;
        protected ChartBase master;
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ChartBase)Page.Master;
            scale = globals.VisualScale;

            string query = null;
            var keys = (Request.HttpMethod == "POST")?Request.Form.AllKeys:Request.QueryString.AllKeys;
            
            foreach (string key in keys)
            {
                if (!key.StartsWith("_"))
                {
                    query += (query == null) ? "?TaskName=Skyserver.Chart.Image&" : "&amp;";
                    query += (key + "=" + HttpUtility.UrlEncode(Request[key]));
                }
            }

            jpegUrl = globals.WSGetJpegUrl + query;
        }
    }
}