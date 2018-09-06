using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace SkyServer.Tools.Chart
{
    public partial class PrintList : System.Web.UI.Page
    {
        protected int ncols = 5;
        protected int nrows = 5;
        

        protected string prturl = "printlist.aspx";

        protected string reSplit = @"(\,|\s+)";
        protected string reSignedFloat = @"^((((\+|-)?\d+(\.\d*)?)|((\+|-)?(\d*\.)?\d+))([eE](\+|-){1}\d+)?)$";
        protected string dots = ".......................................";
        int column = 0;
        int count = 0;
        int islink = 1;
        //protected int page = 1;
        int width = 120;
        int height = 120;
        int img1;
        int img2;
        string name = "list";
        protected double qscale;
        protected string opt = "";
        protected Globals globals;
        protected string paste;
        protected string[] body;
        protected string[] names;
        int npages;
        int nimages;
        protected int page = 1;

        Form u;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];


            

            string key;
            for (int i = 0; i < Request.Form.Count; i++)
            {
                key = Request.Form.Keys[i];
                //key = key.ToLower();
                if ("scale".Equals(key)) { qscale = double.Parse(Request.Form[key]); }
                if ("opt".Equals(key)) { opt = Request.Form[key]; }
                if ("page".Equals(key)) { page = int.Parse(Request.Form[key]); }
                if ("paste".Equals(key)) { paste = Request.Form[key]; }
            }

            if (opt.IndexOf("I") < 0) opt += "I";
            
            u = new Form();
            body = paste.Split('\n');
            getUploadFormat(u);

            // need one more thing -- scan through body
            // and eliminate blank lines

            names = Regex.Split(u.value, reSplit, RegexOptions.ExplicitCapture).Where(str => !str.Equals(String.Empty)).ToArray(); ;
            nimages = body.Length - 1;
            npages = (int)Math.Floor((double)nimages / (nrows * ncols) - 0.01);
            if (nimages > npages * nrows * ncols + 0.25) npages += 1;
        }

        protected string getUploadFormat(Form f)
        {
            //----------------------------------
            // Figure out what is the format of the file
            //----------------------------------

            string s = body[0];
            f.value = "";
            f.type = "";

            // check for Gator format
            if (Regex.IsMatch(s, @"^\\\ \w+"))
            {
                // need to scroll forward to the beginning of data
                while (Regex.IsMatch(body[0], @"^\\")) body = body.Skip(1).ToArray();
                if (Regex.IsMatch(body[0], @"^\s*\|") && "".Equals(f.value))
                {
                    f.value = body[0].Replace("|", " ");
                    body = body.Skip(2).ToArray();
                }
                f.type = "G";
                return "G";
            }

            // is it a comma/whitespace?
            string[] c = Regex.Split(s, reSplit, RegexOptions.ExplicitCapture).Where(str => !str.Equals(String.Empty)).ToArray();
            int n = c.Length;
            if (n < 2 || n > 3)
                return Error("Too many items in first line...");

            // we have 2 or 3 values, are they numbers or text

            // first check if the numbers are in sexagesimal format
            // if they are, comvert DMS dec and RMS ra to decimal degrees
            if (c[n - 1].Contains(":"))
                c[n - 1] = "" + dms2deg(c[n - 1], ':');

            if (c[n - 2].Contains(":"))
                c[n - 2] = "" + hms2deg(c[n - 2], ':');

            // numbers converted as necessary, now proceed 

            if (Regex.IsMatch(c[n - 1], reSignedFloat))
            {
                f.value = (n == 2) ? "ra dec" : "name ra  dec";
                f.type = "N" + n;
                return "N" + n;
            }
            if (Regex.IsMatch(c[n - 2], @"^ra$")
                && Regex.IsMatch(c[n - 1], @"^dec$"))
            {
                foreach (string i in c)
                    f.value += " " + i;
                body = body.Skip(1).ToArray();
                f.type = "H" + n;
                return "H" + n;
            }
            return Error("Error in header line \" " + s + "\""); ;
        }

        private double hms2deg(string s, char c)
        {
            /*
            var numargs = arguments.length;
            if( numargs < 2 )
                c = ':'; 
             */
            // strip leading blanks or plus signs first
            while (s.Length > 0 && (s.Substring(0, 1).Equals(" ") || s.Substring(0, 1).Equals("+")))
                s = s.Substring(1);
            string[] a = s.Split(c);
            return 15 * double.Parse(a[0]) + double.Parse(a[1]) / 4.0 + double.Parse(a[2]) / 240.0;
        }

        private double dms2deg(string s, char c)
        {
            /*
            var numargs = arguments.length;
            if( numargs < 2 )
                c = ':'; 
             */
            // strip leading blanks or plus signs first
            while (s.Length > 0 && (s.Substring(0, 1).Equals(" ") || s.Substring(0, 1).Equals("+")))
                s = s.Substring(1);
            string[] a = s.Split(c);
            if (s.IndexOf("-") == 0)
                return -(-1.0 * double.Parse(a[0]) + double.Parse(a[1]) / 60.0 + double.Parse(a[2]) / 3600.0);
            else
                return 1.0 * double.Parse(a[0]) + double.Parse(a[1]) / 60.0 + double.Parse(a[2]) / 3600.0;
        }

        protected void header()
        {
            string s = "<table border=1>\n";
            s += "<tr><td colspan=" + ncols + " align='center'></td>\n";
            Response.Write(s);
        }

        protected void trailer()
        {
            Response.Write("</tr>\n</table>\n");
        }


        protected void parseLine(string[] n, string line)
        {
            string[] v = Regex.Split(line, reSplit, RegexOptions.ExplicitCapture).Where(str => !str.Equals(String.Empty)).ToArray();
            string name = "";
            string ra = "";
            string dec = "";

            for (int i = 0; i < n.Length; i++)
            {
                if ("ra".Equals(n[i])) ra = v[i];
                if ("dec".Equals(n[i])) dec = v[i];
                if ("name".Equals(n[i])) name = v[i];
            }
            showNextImage(double.Parse(ra), double.Parse(dec), name);
        }

        protected string sname(double ra, double dec)
        {
            var c = "";

            string s_ra = hmsN(ra, "");
            string s_dec = dmsN(dec, "");

            return "J" + s_ra + c + s_dec;
        }

        protected string pad(double val)
        {
            return (val < 10) ? "0" + val : "" + val;
        }

        protected string dmsN(double deg, string sep)
        {
            char sign = (deg < 0) ? '-' : '+';
            deg = (deg < 0) ? -deg : deg;
            double dd = Math.Floor(deg);
            double qq = 60.0 * (deg - dd);
            double mm = Math.Floor(qq);
            double ss = Math.Floor(600.0 * (qq - mm)) / 10.0;
            return (sign + pad(dd) + sep + pad(mm) + sep + pad(ss));
        }

        protected string hmsN(double deg, string sep)
        {
            double hh = Math.Floor(deg / 15.0);
            double qq = 4.0 * (deg - 15 * hh);
            double mm = Math.Floor(qq);
            double ss = Math.Floor(6000.0 * (qq - mm)) / 100.0;
            return (pad(hh) + sep + pad(mm) + sep + pad(ss));
        }

        protected double fmt(double num, int total, int digits)
        {
            double n = num;
            if (n == 0) return n;
            double exp = Math.Floor(Math.Log(Math.Abs(n)) / Math.Log(10));
            double scale = Math.Pow(10.0, digits);
            if (total > 0)
                scale = Math.Pow(10.0, Math.Min(digits, total - exp - 1));
            return Math.Floor(scale * n + 0.5) / scale;
        }

        protected void showNextImage(double ra, double dec, string name)
        {
            string s = "";
            if (count++ < img1) return;
            if (count > img2) return;

            if (column == 0) s += "</tr>\n<tr>\n";
            s += "    <td class='i'>";
            s += "<a class='i' target='EXPLORE' ";
            s += "onClick=\"goToWindow('../explore/obj.aspx?ra=" + ra + "&dec=" + dec + "','EXPLORE')\" ";
            s += "href='../explore/obj.aspx?ra=" + ra + "&dec=" + dec + "'>";
            s += "" + name + "&nbsp;&nbsp;<br>" + sname(ra, dec) + "</a><br> ";

            if (islink == 1)
            {
                s += "<a target='NAVIGATE' ";
                s += "onClick=\"goToWindow('navi.aspx?ra=" + ra + "&dec=" + dec + "','NAVIGATE')\" ";
                s += " href='navi.aspx?ra=" + ra + "&dec=" + dec + "'>";
            }

            s += "<img ";
            s += "src='" + globals.WSGetJpegUrl + "?ra=" + ra + "&dec=" + dec + "&scale=" + qscale;
            s += "&width=" + width + "&height=" + height + "&opt=" + opt + "' ";
            s += " width=" + width + " height=" + height + ">";
            if (islink == 1) s += "</a>";
            s += "</td>\n";

            if (column++ == ncols - 1) column = 0;
            Response.Write(s);
        }

        protected void pagecounters()
        {
            img1 = ncols * nrows * (page - 1);
            img2 = ncols * nrows * page;

            Response.Write("<table><tr>");
            string s1 = "<td class='";
            string s2 = "'><a href='javascript:void(0);' onclick='return setPage(";
            string s3 = ");'>";
            string s4 = "</a></td>\n";
            string plab = (name == "list" ? "page " : "p");
            for (int i = 0; i < npages + 1; i++)
            {
                if (i == 0) Response.Write(s1 + ((i == page) ? "h" : "s") + s2 + i + s3 + "obj list" + s4);
                else Response.Write(s1 + ((i == page) ? "h" : "s") + s2 + i + s3 + plab + i + s4);
                if (i % 14 == 0 && i > 0) Response.Write("</tr><tr>\n");
            }
            Response.Write("</tr></table>");
        }


        protected new string Error(string msg)
        {
            Response.Write("<h2>Error: " + msg + "</h2>\n");
            return null;
        }

    }
}