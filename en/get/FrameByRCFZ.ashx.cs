using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using SkyServer.Tools.Search;
using System.Data;

namespace SkyServer.Get
{
    /// <summary>
    /// Summary description for FrameByRCFZ
    /// </summary>
    public class FrameByRCFZ : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "image/jpeg";
            Globals globals = (Globals)context.Application[Globals.PROPERTY_NAME];

            try
            {
                int run = int.Parse(context.Request.QueryString["R"]);
                int col = int.Parse(context.Request.QueryString["C"]);
                int fld = int.Parse(context.Request.QueryString["F"]);
                int zz = int.Parse(context.Request.QueryString["Z"]);
                string URI = globals.WSGetCodecUrl + "/?R=" + run.ToString() + "&C=" + col.ToString() + "&F=" + fld.ToString() + "&Z=" + zz.ToString() + "&TaskName=Skyserver.FrameByRCFZ";
                context.Response.Redirect(URI, false);
            }
            catch(Exception e)
            { 
                context.Response.Redirect("noimage2.jpg");
            }

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}