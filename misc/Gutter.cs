using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;

namespace SkyServer
{
    public class Gutter
    {
        private string imgpath;
        private string url;
        private HttpResponse Response;

        public Gutter(string imgpath, string url, HttpResponse Response)
        {
            this.imgpath = imgpath;
            this.url = url;
            this.Response = Response;
        }

        public void mkG(int level, string[] b, string c)
        {
            if (level == 0)
                mkG_L0(b, c);
            else if (level == 1)
                mkG_L1(b, c);
            else if (level == 2)
                mkG_L2(b, c);
        }

        public string mkG_href(string[] b, string c)
        {
            //		var link = (b[2].match("http:"))?b[2]:url+b[2];
            string link = (Regex.IsMatch(b[2], ":")) ? b[2] : (url + b[2]);
            return "<a href='" + link + "' class=" + c + ">" + b[1] + "</a>";
        }

        public void mkG_L0(string[] b, string c)
        {
            var s = "<tr><td class=" + c + ">";
            s += mkG_href(b, 't' + c) + "</td></tr>\n";
            s += "<tr><td width='10' height='5'></td><td colspan='2'></td></tr>\n";
            var img = "";
            switch (b[1])
            {
                case "Home":
                    img = "<img class='imgborder' src='" + imgpath + "/" + "new_sdss_2.jpg'>";
                    break;
                case "Tools":
                    img = "<img class='imgborder' src='" + imgpath + "/" + "new_tools_1.jpg'>";
                    break;
                case "Projects":
                    img = "<img class='imgborder' src='" + imgpath + "/" + "new_projects_1.jpg'>";
                    break;
                case "Astronomy":
                    img = "<img class='imgborder' src='" + imgpath + "/" + "new_astronomy_1.jpg'>";
                    break;
                case "Info Links":
                    img = "<img class='imgborder' src='" + imgpath + "/" + "new_astronomy_1.jpg'>";
                    break;
                case "About SDSS":
                    img = "<img class='imgborder' src='" + imgpath + "/" + "new_sdss_1.jpg'>";
                    break;
                case "SkyServer":
                    img = "<img class='imgborder' src='" + imgpath + "/" + "new_skyserver_1.jpg'>";
                    break;
                case "Credits":
                    img = "<img class='imgborder' src='" + imgpath + "/" + "new_credits_1.jpg'>";
                    break;
                case "Download":
                    img = "<img class='imgborder' src='" + imgpath + "/" + "new_download_1.jpg'>";
                    break;
                case "Help":
                    img = "<img class='imgborder' src='" + imgpath + "/" + "new_help_1.jpg'>";
                    break;
                default:
                    img = "<img class='imgborder' src='" + imgpath + "/" + "new_tools_1.jpg'>";
                    break;
            }
            s += "<tr><td colspan='3'>" + img + "</td></td></tr>\n";
            s += "<tr><td width='10' height='5'></td><td colspan='2'></td></tr>\n";
            Response.Write(s);
        }

        public void mkG_L1(string[] b, string c)
        {
            var s = "<tr><td class=" + c + ">&nbsp;";
            s += mkG_href(b, c) + "</td></tr>\n";
            Response.Write(s);
        }

        public void mkG_L2(string[] b, string c)
        {
            var s = "<tr><td class=" + c + ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;";
            s += mkG_href(b, c) + "</td></tr>\n";
            Response.Write(s);
        }

        public void makeGutter(double n, string g)
        {
            string[] b;
            int level;
            string[] a = g.Split(';');
            //		var tmp;

            Response.Write("<table border=0 cellspacing=0 cellpadding=0 width='140' style='white-space:nowrap'>\n");
            for (int i = 0; i < a.Length - 1; i++)
            {
                //			tmp = String( a[i] );
                //			a[i] = tmp.replace(/#/g,";");		// replace dummy "#"s with ";" so special chars are displayed ok
                b = a[i].Split(',');
                double m = double.Parse(b[0]);
                double f = Math.Floor(m);
                if (f == m) level = (m == 0 ? 0 : 1);
                else level = (f == Math.Floor(n)) ? 2 : -1;
                //Response.Write("<tr><td class="+c+">"+m+','+f+"</td><td class="+c+">"+level+"</td><td>"+n+"</td></tr>");
                if (m == n) mkG(level, b, "hi");
                else mkG(level, b, "lo");
            }
            Response.Write("</table>\n");
        }
    }
}