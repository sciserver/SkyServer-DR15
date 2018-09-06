using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.IO;

namespace SkyServer.Tools
{
    public class Resolver : IHttpHandler
    {
        private const string BASE_URL = "http://simbad.u-strasbg.fr/simbad/sim-script?script=";
        private const string DEFAULT_RADIUS = "0.5m";

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            try
            {
                string name = context.Request["name"];
                string ra = context.Request["ra"];
                string dec = context.Request["dec"];

                if (name != null && (ra == null && dec == null))
                {
                    context.Response.Write(resolveName(name));
                }
                else if (name == null && (ra != null && dec != null))
                {
                    string radius = context.Request["radius"];
                    if (radius == null) radius = DEFAULT_RADIUS;
                    context.Response.Write(resolveCoords(ra, dec,radius));
                }
                else
                {
                    context.Response.Write("Error: Incorrect request parameters.");
                }
            }
            catch (Exception e)
            {
                context.Response.Write("Error: " + e.Message);
            }
        }

        private string resolveName(string name)
        {
            string result = "";
            string script = "output console=off script=off\nformat object \"%D,%MAIN_ID,%COO(d;A,D)\"\n" + name;
            WebClient client = new WebClient();
            string URL = BASE_URL + HttpUtility.UrlEncode(script);
            Stream data = client.OpenRead(URL);
            StreamReader reader = new StreamReader(data);
            string s = reader.ReadToEnd();
            if (!s.StartsWith("1,"))
            {
                throw new Exception("Nothing found.");
            }
            string[] parts = s.Split(new char[] { ',', '\n' }, StringSplitOptions.RemoveEmptyEntries);
            double ra = 0.0;
            if (double.TryParse(parts[2], out ra))
            {

                result += "Name: " + parts[1] + "\n";
                result += "RA: " + parts[2] + "\n";
                result += "Dec: " + parts[3] + "\n";
                return result;
            }
            else
            {
                throw new Exception("Name found, but coordinates are undefined.");
            }
        }

        private string resolveCoords(string ra, string dec,string radius)
        {
            string result = "";
            string script = "output console=off script=off\nformat object \"%D,%MAIN_ID,%COO(d;A,D),%DIST\"\nquery coo " + ra + " " + dec + " radius="+radius;
            WebClient client = new WebClient();
            Stream data = client.OpenRead(BASE_URL + HttpUtility.UrlEncode(script));
            StreamReader reader = new StreamReader(data);
            string s = reader.ReadToEnd();
            if (!s.StartsWith("1,"))
            {
                throw new Exception("Nothing found.");
            }
            string[] parts = s.Split(new char[] { ',', '\n' }, StringSplitOptions.RemoveEmptyEntries);

            result += "Name: " + parts[1] + "\n";
            result += "RA: " + parts[2] + "\n";
            result += "Dec: " + parts[3] + "\n";
            result += "Distance: " + parts[4] + "\n";
            return result;
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