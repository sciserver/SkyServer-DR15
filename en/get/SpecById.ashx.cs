using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using System.Data.SqlClient;
using System.Data;
using SkyServer.Tools.Search;

namespace SkyServer.Get
{
    /// <summary>
    /// Summary description for SpecById
    /// </summary>
    public class SpecById : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "image/gif";

            decimal specid = decimal.Parse(context.Request.QueryString["ID"]);

            Globals globals = (Globals)context.Application[Globals.PROPERTY_NAME];
            ResponseREST rs = new ResponseREST();

            string URIparams = "?spec=" + specid + "&query=SpecById&TaskName=Skyserver.SpecById";
            DataSet ds = rs.GetObjectInfoFromWebService(globals.ExploreWS, URIparams);

            using (DataTableReader reader = ds.CreateDataReader(ds.Tables[0]))
            {
                // start writing the image
                // if there is no image in the database, redirect the URL to a
                // predefined blank image of the same size

                if (!reader.HasRows)
                {
                    context.Response.Redirect("noimage2.gif");
                }
                else
                {
                    reader.Read();
                    context.Response.BinaryWrite((byte[])reader.GetValue(0));//reader.GetSqlBytes(0).Buffer);
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