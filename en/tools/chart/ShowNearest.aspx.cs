using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SkyServer.Tools.Chart
{
    public partial class ShowNearest : System.Web.UI.Page
    {
        protected double? ra = null;
        protected double? dec = null;
        protected double? qscale = null;
        protected double? radius = null;
        protected string opt = "";
        protected int def = 1;
        protected string oRa ="";
        protected string oDec ="";
        protected long objId;
        protected Globals globals;
        protected bool isApogee = false;
        private string apogeeid = ""; 
        
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];

            foreach (string s in Request.QueryString.Keys)
            {
                string key = s.ToLower();
                if (key == "ra") { ra = double.Parse(Request.QueryString[key]); def = 0; }
                if (key == "dec") { dec = double.Parse(Request.QueryString[key]); def = 0; }
                if (key == "scale") { qscale = double.Parse(Request.QueryString[key]); def = 0; }
                if (key == "radius") { radius = double.Parse(Request.QueryString[key]); def = 0; }
                if (key == "opt") { opt = Request.QueryString[key]; def = 0; }
            }
        }

        protected decimal? getSpecObjId(SqlConnection oConn, long objId)
        {
            decimal? specObjId = null;

            string cmd = "select s.specObjId as specObjId ";
            cmd += " from PhotoObjAll p LEFT OUTER JOIN SpecObj s ON s.bestobjid=p.objid where p.objId=@objid";
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                oCmd.CommandText = cmd;
                oCmd.Parameters.AddWithValue("@objid", objId);

                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        if (!reader.IsDBNull(0))
                            specObjId = reader.GetDecimal(0);
                    }
                }
            }
            return specObjId;
        }

        protected string getSpecImageLink(decimal specObjId)
        {
            return "../../get/SpecById.ashx?id=" + specObjId;
        }


        protected void makeTable(SqlConnection oConn)
        {
            // build the SQL query string to search for the nearest Primary Object

            string cmd = "SELECT TOP 1 P.objID AS 'objId', ";
            cmd += "  LTRIM(STR(P.ra,10,5))as 'ra', LTRIM(STR(P.dec,8,5)) as 'dec', ";
            cmd += "  dbo.fPhotoTypeN(P.type) as 'type', LTRIM(STR(P.u,6,2)) AS 'u', LTRIM(STR(P.g,6,2)) AS 'g', ";
            cmd += "  LTRIM(STR(P.r,6,2)) AS 'r', LTRIM(STR(P.i,6,2)) AS 'i', LTRIM(STR(P.z,6,2)) AS 'z'";
            cmd += "  FROM dbo.fGetNearestObjEq (@ra,@dec,@radius) as N, ";
            cmd += "  PhotoObjAll as P";
            cmd += "  WHERE N.objID = P.objID AND P.i>0 ";

            SqlCommand oCmd = oConn.CreateCommand();
             oCmd.CommandText = cmd;
             oCmd.Parameters.AddWithValue("@ra", ra);
             oCmd.Parameters.AddWithValue("@dec", dec);
             oCmd.Parameters.AddWithValue("@radius", radius);

            SqlDataReader reader = oCmd.ExecuteReader();
            string str = "<div id='query'>\n";
            str += "<table width='100' border='0' cellspacing='1' bgcolor='#000000'>\n";
            var args = "";
                    if (!reader.HasRows)
                    {
                        reader.Close();
                        var norows = checkApogee(oConn, str, args);

                        if (!norows)
                        {
                            str += "<tr align='center'><td valign='top' class='c'>No objects have been found within ";
                            str += Math.Floor(1000 * radius ?? 0) / 1000.0 + " arcmins</td></tr>\n";
                            Response.Write(str);
                        }
                        
                    }
                    else
                    {
                        Response.Write(str);                        
                        int count = (reader.FieldCount);
                        while (reader.Read())
                        {
                            objId = reader.GetInt64(0);
                            oRa = reader.GetString(1);
                            oDec = reader.GetString(2);

                            for (int Index = 0; Index < count; Index++)
                            {
                                string n = reader.GetName(Index);
                                string d = reader.GetSqlValue(Index).ToString();

                                //The switch statement here sets the values for the text that appears in the tooltip mouseover boxes. -Jordan Raddick 6/20/06                                
                                string tooltip_text = getInfo(n);
                                                               

                                str = "<tr valign='top' ONMOUSEOVER=\"this.T_TEMP=\'2000\';this.T_WIDTH=\'140\';return escape(\'" + tooltip_text + "\')\">";
                                str += "<td width='20' align='left' class='c'>" + n + "</td>";
                                str += "<td align='right' class='c'>" + d + "</td></tr>\n";
                                if (Index > 0) Response.Write(str);
                                if (Index < count - 1) args += d + ',';
                            }
                            //Response.Write("</tr>\n");

                        }
                    }
                    if(reader != null)  reader.Close();
                   
            
            Response.Write("</table>\n</div>\n");
        }

        protected void makeGlass(string ra_, string dec_)
        {
            string qstring = globals.WSGetJpegUrl + "?TaskName=Skyserver.Chart.ShowNearest&ra=" + ra_ + "&dec=" + dec_ + "&scale=" + qscale+"&opt="+opt;
            Response.Write("<div id='zimage'><img src='" + qstring + "' width=128 height=128></div>\n");
            Response.Write("<div id='zframe'><img src='images/mglass.gif' width=150 height=150 ONMOUSEOVER=\"this.T_TEMP=\'2000\';this.T_WIDTH=\'140\';return escape(\'Close-up image of selected object\')\"></div>\n");
        }

        protected void makeThumbnail(decimal specObjId)
        {
            string str = "";
            str += "<div id='sframe' ><img src='images/specframe.png'></div>";
            str += "<div id='thumbnail'>\n";
            str += "  <table border='0'>\n";
            str += "<tr>\n";
            str += "<td>\n";
            str += "<a href='" + getSpecImageLink(specObjId) + "' target='_blank'>";
            str += "<img src='" + getSpecImageLink(specObjId) + "'";
            str += " width='128' height='102' border='0' align=left></a>\n";
            str += "</td>\n";
            str += "</tr>\n";
            str += "</table>\n";
            str += "</div>\n";
            Response.Write(str);
        }

        protected void makeLinks()
        {
            var str = "";
            str += "<div id='links'>\n";
            str += "  <table border='0' cellspacing='2' cellpadding='0'>\n";

            str += "<tr ONMOUSEOVER=\"this.T_TEMP=\'2000\';this.T_WIDTH=\'140\';return escape(\'See this object&rsquo;s basic data in the Quick Look tool\')\"><td width=20><a href=\"javascript:quicklook('" + objId + "')\">\n";
            str += "    <img src='images/button.gif' width=20 height=20 border=0></a></td>\n";
            if (isApogee) {
                str += "<td width=80><a href=\"javascript:quicklook('" + apogeeid + "')\">";
            }
            else
            {
                str += "<td width=80><a href=\"javascript:quicklook('" + objId + "')\">";
            }
            str += "Quick Look</a></td></tr>\n";

            str += "<tr ONMOUSEOVER=\"this.T_TEMP=\'2000\';this.T_WIDTH=\'140\';return escape(\'See this object&rsquo;s complete data in the Object Explorer\')\"><td width=20><a href=\"javascript:explore('" + objId + "')\">\n";
            str += "    <img src='images/button.gif' width=20 height=20 border=0></a></td>\n";
            if (isApogee) { str += "<td width=80><a href=\"javascript:exploreAPOGEE('" + apogeeid + "')\">"; }
            else { str += "<td width=80><a href=\"javascript:explore('" + objId + "')\">"; }
            str += "Explore</a></td></tr>\n";

            str += "<tr ONMOUSEOVER=\"this.T_TEMP=\'2000\';this.T_WIDTH=\'140\';return escape(\'Redraw the image with this object in the center\')\"><td width=20><a href=\"javascript:recenter(" + ra + "," + dec + ")\">";
            str += "     <img src='images/button.gif' width=20 height=20 border=0></a></td>";
            str += "<td width=80><a href=\"javascript:recenter(" + ra + "," + dec + ")\">";
            str += "Recenter</a></td></tr>\n";

            str += "<tr ONMOUSEOVER=\"this.T_TEMP=\'2000\';this.T_WIDTH=\'140\';return escape(\'Save this object to your online notebook\')\"><td width=20><a href=\"javascript:saveBook('" + objId + "')\">";
            str += "     <img src='images/button.gif' width=20 height=20 border=0></a></td>";
            if (isApogee) { str += "<td width=80><a href=\"javascript:saveBook('" + apogeeid.Replace("+","%2B") + "')\">"; }
            else { str += "<td width=80><a href=\"javascript:saveBook('" + objId + "')\">"; }
            str += "Add to notes</a></td></tr>\n";

            str += "<tr ONMOUSEOVER=\"this.T_TEMP=\'2000\';this.T_WIDTH=\'140\';return escape(\'Show your online notebook\')\"><td width=20><a href='javascript:showBook()'>";
            str += "     <img src='images/button.gif' width=20 height=20 border=0></a></td>";
            str += "<td width=80><a href='javascript:showBook()'>";
            str += "Show notes</a></td></tr>\n";

            str += "  </table>\n";
            str += "</div>\n";
            Response.Write(str);
        }

        int tooltip_offsety =-20;
        protected string getInfo(string n) {
            string tooltip_text = "";
            switch (n)
            {

                case "ra":
                    tooltip_text = "Right ascension (ra) is like longitude in the sky";
                    tooltip_offsety = -35;
                    break;

                case "dec":
                    tooltip_text = "Declination (dec) is like latitude in the sky";
                    tooltip_offsety = -35;
                    break;

                case "type":
                    tooltip_text = "STAR or GALAXY (but some bright stars are misclassified as galaxies)";
                    tooltip_offsety = -50;
                    break;

                case "u":
                    tooltip_text = "Magnitude (brightness) in the ultraviolet (u) wavelength";
                    tooltip_offsety = -50;
                    break;

                case "g":
                    tooltip_text = "Magnitude (brightness) in the green (g) wavelength";
                    tooltip_offsety = -30;
                    break;

                case "r":
                    tooltip_text = "Magnitude (brightness) in the red (r) wavelength";
                    tooltip_offsety = -30;
                    break;

                case "i":
                    tooltip_text = "Magnitude (brightness) in the shorter infrared (i) wavelength";
                    tooltip_offsety = -50;
                    break;

                case "z":
                    tooltip_text = "Magnitude (brightness) in the farther infrared (z) wavelength";
                    tooltip_offsety = -50;
                    break;

                default:
                    tooltip_text = n;
                    tooltip_offsety = -20;
                    break;
            }
            return tooltip_text;
        }

        protected bool checkApogee(SqlConnection oConn, String str, string args) {
            string newcmd = " SELECT TOP 1 P.apstar_id AS 'apogee_Id',   LTRIM(STR(P.ra,10,5))as 'ra', LTRIM(STR(P.dec,8,5)) as 'dec' ,  'apogee' as 'type',";
            newcmd += " '' AS 'u', '' AS 'g',   '' AS 'r', '' AS 'i', '' AS 'z' ";
            newcmd += " FROM dbo.fGetNearestApogeeStarEq (@ra,@dec,@radius) as N,   ApogeeStar as P  WHERE N.apogee_id = P.apogee_id  ";

            SqlCommand nCmd = oConn.CreateCommand();
            nCmd.CommandText = newcmd;
            nCmd.Parameters.AddWithValue("@ra", ra);
            nCmd.Parameters.AddWithValue("@dec", dec);
            nCmd.Parameters.AddWithValue("@radius", radius);

            SqlDataReader reader = nCmd.ExecuteReader();
            if (!reader.HasRows) {
                reader.Close();
                return false; 
            } 
            else {

                        Response.Write(str);                        
                        int count = (reader.FieldCount);
                        while (reader.Read())
                        {
                            objId = 0;
                            apogeeid = reader.GetString(0);
                            oRa = reader.GetString(1);
                            oDec = reader.GetString(2);

                            for (int Index = 0; Index < count; Index++)
                            {
                                string n = reader.GetName(Index);
                                string d = reader.GetSqlValue(Index).ToString();

                                //The switch statement here sets the values for the text that appears in the tooltip mouseover boxes. -Jordan Raddick 6/20/06                                
                                string tooltip_text = getInfo(n);


                                str = "<tr valign='top' ONMOUSEOVER=\"this.T_TEMP=\'2000\';this.T_WIDTH=\'140\';return escape(\'" + tooltip_text + "\')\">";
                                str += "<td width='20' align='left' class='c'>" + n + "</td>";
                                str += "<td align='right' class='c'>" + d + "</td></tr>\n";
                                if (Index > 0) Response.Write(str);
                                if (Index < count - 1) args += d + ',';
                            }
                        }
                        isApogee = true;
                reader.Close();
                return true;
            }

        }
    }
}