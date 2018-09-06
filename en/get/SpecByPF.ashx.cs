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
    /// Summary description for SpecByPF
    /// </summary>
    public class SpecByPF : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "image/gif";
            Globals globals = (Globals)context.Application[Globals.PROPERTY_NAME];
            long? plateid = null;
            short? fiberid = null; 
            try
            {
                plateid = long.Parse(context.Request.QueryString["P"]);
                fiberid = short.Parse(context.Request.QueryString["F"]);
            }
            catch {  }

            ResponseREST rs = new ResponseREST();
            string URIparams = "?plateId=" + plateid.ToString() + "&fiber=" + fiberid.ToString() + "&query=SpecByPF&TaskName=Skyserver.SpecByPF";
            DataSet ds = rs.GetObjectInfoFromWebService(globals.ExploreWS, URIparams);

            using (DataTableReader reader = ds.Tables[0].CreateDataReader())
            {
                if (!reader.HasRows)
                {
                    context.Response.Redirect("noimage2.gif");
                }
                else
                {
                    reader.Read();
                    context.Response.BinaryWrite((byte[])reader.GetValue(0));
                }
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