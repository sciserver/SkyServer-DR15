using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Tools.Chart
{
    public partial class PrintChart : System.Web.UI.Page
    {
        protected double ra = 184.9511;
        protected double dec = -0.8754;
        protected double qscale = 0.40;
        protected int width = 400;
        protected int height = 400;
        protected string opt = "";
        protected int def = 1;
        protected string s = "";
        protected string dots = ".......................................";
        protected Globals globals;
        protected int newwidth;
        protected int newheight;
        protected double newscale;
        protected double arcminwidth;
        protected double arcminheight;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];

           
            foreach (string i in Request.QueryString.Keys)
            {

                string key = i.ToLower();
                if (key == "ra") { ra = double.Parse(Request.QueryString[key]); def = 0; }
                if (key == "dec") { dec = double.Parse(Request.QueryString[key]); def = 0; }
                if (key == "scale") { qscale = double.Parse(Request.QueryString[key]); def = 0; }
                if (key == "width") { width = int.Parse(Request.QueryString[key]); def = 0; }
                if (key == "height") { height = int.Parse(Request.QueryString[key]); def = 0; }
                if (key == "opt") { opt =Request.QueryString[key]; def = 0; }
            }

            if (opt.IndexOf("I") < 0) opt += "I";
            if (opt.IndexOf("G") < 0) opt += "G";

            double ppd = 3600.0 / qscale;

            arcminwidth = 60 * width / ppd;
            arcminheight = 60 * height / ppd;

            newwidth = 600;
            newheight = 600;
            newscale = 3600.0 / Math.Floor(newwidth * 60 / arcminwidth);

            s = globals.WSGetJpegUrl;
            s += "?ra=" + ra;
            s += "&dec=" + dec;
            s += "&scale=" + newscale;
            s += "&width=" + newwidth;
            s += "&height=" + newheight;
            s += "&opt=" + opt;


        }

        	protected string pad(double val) {
	            return (val<10)? ("0"+val):(""+val);
	        }

	protected string dmsN(double deg) {
		char sign = (deg<0)?'-':'+';
		deg  = (deg<0)?-deg:deg;
		int dd = (int)Math.Floor(deg);
		double qq = 60.0*(deg-dd);
		int mm = (int)Math.Floor(qq);
		double ss = Math.Floor(6000.0 *(qq - mm))/100.0;
		return (sign+pad(dd)+":"+pad(mm)+":"+pad(ss));
	}

	protected string hmsN(double deg) {
		int hh = (int)Math.Floor(deg/15.0);
		double qq = 4.0*(deg-15*hh);
		int mm = (int)Math.Floor(qq);
		double ss = (int)Math.Floor(6000.0*(qq-mm))/100.0;
		return (pad(hh)+":"+pad(mm)+":"+pad(ss));
	}
	
	protected double fmt(double num, int total, int digits) {
	    double n = num;
		if (n==0) return n;
		int exp = (int)Math.Floor(Math.Log(Math.Abs(n))/Math.Log(10));
		var scale = Math.Pow(10,digits);
		if (total>0) 
			scale = Math.Pow(10, Math.Min(digits,total-exp-1));
		return Math.Floor(scale*n+0.5)/scale;
	}


	protected  string sname(double ra, double dec) {
    		return "<span bgcolor='red'>"+hmsN(ra)+"&nbsp;&nbsp;"+dmsN(dec)+"</span>";
	}

    }
}