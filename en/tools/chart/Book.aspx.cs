using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SkyServer.Tools.Chart
{
    public partial class Book : System.Web.UI.Page
    {
        protected string url;
        protected string book = "";
        protected string paste = "";
        protected string add = "";
        protected string del = "";
        protected string format = "";
        protected string newbook = "";
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];

            url = ResolveClientUrl("~/en");
            if (Request.Cookies["sdssbook"] != null)
                book = Request.Cookies["sdssbook"].Value;
            else book = "";
            //string host = Request.ServerVariables["SERVER_NAME"];

            foreach (string i in Request.QueryString.Keys)
            {

                string key = i.ToLower();
                if (key == "add")
                    add = Request.QueryString["ADD"];
                if (key == "del")
                    del = Request.QueryString["DEL"];
                if (key == "format")
                    format = Request.QueryString["FORMAT"];
            }

            using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
            {
                oConn.Open();

                string cmd = "SELECT objid,type,ra,dec,u,g,r,i,z,redshift FROM (SELECT *,ROW_NUMBER() OVER(PARTITION BY objid ORDER BY objid) AS rn";
                cmd += " FROM (select cast(objId as varchar(32)) as objId,";
                cmd += " dbo.fPhotoTypeN(type) as type, p.ra, p.dec, p.u, p.g, p.r, p.i, p.z, s.z as redshift";
                cmd += " from PhotoObj p left outer join SpecObjAll s ON s.bestobjid=p.objid";
                cmd += " where objId in (";

                string unicmd = " UNION select apstar_id as apstar_id, 'apogee' as type, ra as ra,dec as dec,  '' as u,'' as g,'' as r, '' as i,'' as z,'' as redshift  ";
                unicmd += " from apogeeStar where apstar_id in (";

                

                if (del != "")
                {
                    newbook = deleteFrom(book, "'"+del+"'");
                    HttpCookie cookie = new HttpCookie("sdssbook");
                    Response.Cookies.Add(cookie);
                    Response.Cookies["sdssbook"].Value = newbook;
                    //Response.Cookies["sdssbook"].Domain = host;
                    Response.Cookies["sdssbook"].Expires = new DateTime(2037, 1, 1);
                    Response.Expires = 0;
                    // only display if there is no add command
                    if (add == "") Response.Redirect("book.aspx");
                }

                if (add != "")
                {

                    newbook = addTo(book, "'"+add+"'");
                   
                    try { 
                        
                        string pcmd = "select cast(objId as varchar(32)) as objId ";
                        pcmd += " from PhotoObj where objId in (" + getObjId(newbook) + ")";
                        newbook = pruneBook(oConn, pcmd);
                        cmd += getObjId(newbook) + ")";
                        unicmd += newbook + ")";
                    }catch(Exception exp){
                        try
                        {
                            newbook = newbook.Replace(' ','+');
                            
                            string pcmd = "select  apstar_id ";
                            pcmd += " from apogeeStar where apstar_id in ('" + newbook + "')";
                            newbook = pruneBook(oConn, pcmd);
                            unicmd +=   newbook + ")";
                            cmd += getObjId(newbook) +")";
                        }
                        catch (Exception ex) {
                           
                        }
                    }
                    
                   
                    HttpCookie cookie = new HttpCookie("sdssbook");
                    Response.Cookies.Add(cookie);
                    Response.Cookies["sdssbook"].Value = newbook;
                    //Response.Cookies["sdssbook"].Domain = host;
                    Response.Cookies["sdssbook"].Expires = new DateTime(2037, 1, 1);
                    Response.Expires = 0;
                    

                    // if there was a delete as well, or more than one object inserted, then show the result
                    //if (del != "" || String(add).indexOf(",")>-1 ) Response.Redirect("book.aspx");
                    //else donothing();

                    Response.Redirect("book.aspx");
                }

                // export the book

                if (del == "" && add == "" && format != "")
                {
                    cmd += getObjId(book) + ")) res1) res2 WHERE rn = 1";
                    cmd += unicmd +""+book+")";
                    
                    //Response.Headers["Content-Disposition"] = "attachment; filename=\"notebook." + format+"\"";
                    Response.AddHeader("content-disposition", "attachment; filename=notebook." + format);
                    if (format == "xml") ResponseAux.writeXML(oConn, cmd, cmd, Response, globals, globals.DefTimeout);
                    if (format == "csv") ResponseAux.writeBookCSV(oConn, cmd, Response, globals, globals.DefTimeout);
                    if (format == "html") showBook(oConn, cmd, 0);
                }

                if (del == "" && add == "" && format == "")
                {
                    cmd += getObjId(book) + ")) res1) res2 WHERE rn = 1";
                    cmd += unicmd + book +")";
                    
                    if (book != "") showBook(oConn, cmd, 1);
                    else isEmpty();
                }
            }
        }

        protected void showBook(SqlConnection oConn, string cmd, int flag)
        {

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                oCmd.CommandText = cmd;
                using (SqlDataReader reader = oCmd.ExecuteReader())
                {

                    if (!reader.HasRows)
                    {
                        Response.Write("<html><body>\n<pre>" + book + "\n</pre>\n</body></html>\n");
                        return;
                    }

                    string val;
                    string str = "";
                    str += "<html>\n<head>\n";
                    str += "<style> body {font-family:Sans-Serif} td {font-size:9pt;padding-left:6px;padding-right:6px;padding-top:3px;padding-bottom:3px}</style>\n";
                    str += "<script type=\"text/javascript\" >\n";
                    str += "function clrBook() {location.href = 'book.aspx?del=*';}\n";
                    str += "function loadBook() {location.href = '" + url + "/tools/chart/book.aspx?del=*&add=" + book.Replace("'", "&#39;") + "';}\n";
                    str += "function apndBook() {location.href = '" + url + "/tools/chart/book.aspx?add=" + book.Replace("'", "&#39;") + "';}\n";

                    str += "function imglist() {\n";
                    str += "	var s = '" + url + "/tools/chart/list.aspx';\n";
                    str += "	if (paste.length>0) s += '?paste='+paste;\n";
                    str += "	w = window.open(s,'NAVIGATE');\n";
                    str += "	w.focus();";
                    str += "}\n";

                    str += "</script>\n";
                    str += "<title>SkyServer Notebook</title>\n";
                    str += "</head>\n";
                    str += "<body>\n<p>";
                    str += "<h2>SkyServer NoteBook</h2>\n";
                    str += "<table cellpadding=2 cellspacing=2 border=0>\n";
                    str += " <tr><td>\n";
                    str += "  <table cellpadding=2 cellspacing=2 border=1>\n";
                    str += "    <tr>";
                    Response.Write(str);

                    for (int i = 0; i < (reader.FieldCount); i++)
                    {
                        val = reader.GetName(i);
                        if (val == "") val += "&nbsp;";
                        Response.Write("<td align='middle' style='background-color:#dddddd'>" + val + "</td>");
                    }
                    val = "&nbsp;";
                    Response.Write("<td align='middle'>" + val + "</td>");
                    Response.Write("<td align='middle'>" + val + "</td>");
                    if (flag == 1) Response.Write("<td align='middle'>" + val + "</td>");
                    Response.Write("</tr>\n");

                    while (reader.Read())
                    {
                        Response.Write("    <tr>");
                        string id = reader.GetSqlValue(0).ToString();
                        string ra = reader.GetSqlValue(2).ToString();
                        string dec = reader.GetSqlValue(3).ToString();
                        paste += id + "," + ra.Substring(0, 8) + "," + dec.Substring(0, 7) + ";";

                        for (int i = 0; i < (reader.FieldCount); i++)
                        {
                            val = reader.GetSqlValue(i).ToString();
                            if ("null".Equals(val, StringComparison.InvariantCultureIgnoreCase))
                            {
                                val = "-";
                            }
                            else if (i == 2 || i == 3)
                            {
                                val = double.Parse(val).ToString("F6");
                            }
                            else if (i > 3)
                            {
                                try { val = double.Parse(val).ToString("F2"); }
                                catch { }
                            }

                            Response.Write("<td nowrap align='middle'>" + val + "</td>");
                        }

                        val = "<a target='EXPLORE' href='" + url + "/tools/explore/obj.aspx?id=" + id + "'>Explore</a>";
                        Response.Write("<td nowrap align='middle'>" + val + "</td>");

                        val = "<a target='NAVIGATE' href='" + url + "/tools/chart/navi.aspx?ra=" + ra + "&dec=" + dec + "'>Navigate</a>";
                        Response.Write("<td nowrap align='middle'>" + val + "</td>");

                        if (flag == 1)
                        {
                            val = "<a href='book.aspx?del=" + id + "'>Delete</a>";
                            Response.Write("<td nowrap align='middle'>" + val + "</td>");
                        }
                        Response.Write("</tr>\n");
                    }
                }
                Response.Write("  </table>\n");
            }
            // write the control buttons for the exported notebook
            if (flag == 0)
            {
                Response.Write(" <tr><td align='middle'>\n<form action='book.aspx' method='get' id=form1 name=form1>\n");
                Response.Write("  <table cellpadding=2 cellspacing=2 border=0>\n    <tr>\n");
                Response.Write("     <td width='160' align='left'><input type='button' value='Reload to notebook' onClick='loadBook()' id='b1' name='b1'></td>\n");
                Response.Write("     <td width='160' align='left'><input type='button' value='Upload to ImgList' onClick='imglist()' id='img' name='img'></td>\n");
                Response.Write("     <td width='160' align='middle'><input type='button' value='Append to notebook' onClick='apndBook()' id='b2' name='b2'></td>\n");
                Response.Write("     </tr>\n  </table>\n</form>\n</td></tr>\n");
                Response.Write("<tr><td>&nbsp;</td></tr>\n");
                Response.Write("<tr><td><h5>Notebook saved on " + DateTime.Now + "</h5></td></tr>\n");
            }

            // write the control buttons for the active notebook
            if (flag == 1)
            {
                Response.Write(" <tr><td align='middle'>\n<form action='book.aspx' method='get' id=form1 name=form1>\n");
                Response.Write("  <table cellpadding=2 cellspacing=2 border=0>\n    <tr>\n");
                Response.Write("     <td width='120' align='left'><input type='button' value='Clear' onClick='clrBook()' id='b1' name='clr'></td>\n");
                Response.Write("     <td width='120' align='left'><input type='button' value='Upload to ImgList' onClick='imglist()' id='img' name='img'></td>\n");
                Response.Write("     <td width='120' align='right'><input type='submit' value='Export' id='cmd' name='cmd'></td>\n");
                Response.Write("     <td width='60' bgcolor=#cccccc><input name='format' value='html' type=radio  CHECKED>HTML</td>\n");
                Response.Write("     <td width='60' bgcolor=#cccccc><input name='format' value='xml'  type=radio >XML</td>\n");
                Response.Write("     <td width='60' bgcolor=#cccccc><input name='format' value='csv'  type=radio >CSV</td>\n");
                Response.Write("    </tr>\n  </table>\n</form>\n</td></tr>\n");
            }
            Response.Write("</table>\n");
            Response.Write("\n<script>\nvar paste='" + paste + "';\n</script>\n");
            //	Response.Write("\n<pre>\n var paste='"+paste+"';\n</pre>\n");
            Response.Write("</body>\n</html>\n");
        }


        protected string addTo(string b, string v)
        {
            if (b == "") return v;
            return b + "," + v;
        }

        protected string deleteFrom(string b, string v)
        {
            if (v == "'*'") return "";
            string[] a = b.Split(',');
            for (var i = 0; i < a.Length; i++)
            {
                if (a[i] == v)
                {
                    List<string> l = a.ToList();
                    l.RemoveAt(i);
                    a = l.ToArray();
                    break;
                }
            }
            var s = "";
            for (var i = 0; i < a.Length; i++)
            {
                s += a[i];
                if (i < a.Length - 1) s += ",";
            }
            return s;
        }

        protected void isEmpty()
        {
            Response.Write("<html><body>\n<h4>The notebook is currently empty</h4>\n</body></html>");
            return;
        }


        protected string pruneBook(SqlConnection oConn, string cmd)
        {
            string str = "";

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                oCmd.CommandText = cmd;
                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    if (!reader.HasRows) return "";


                    while (reader.Read())
                    {
                        str += "'"+reader.GetSqlValue(0).ToString() + "',";
                    }

                }
                // get rid of trailing comma
                return str.Substring(0, str.Length - 1);
            }
        }

        protected string getObjId(String book) {
            string[] temp = book.Split(',');
            List<string> tlist = new List<string>();
            for (int i = 0; i < temp.Length; i++)
            {
                try
                {
                    // to remove ' from the 'id' string
                    tlist.Add(temp[i].Replace("\'",""));                    
                }
                catch (Exception e) {
                    // objids += "";
                }
            }
            string objids = "";
            for (int i = 0; i < tlist.Count; i++) {
                objids += tlist[i];
                if (i != tlist.Count - 1) objids += ",";
            }

            if (objids.Equals("")) objids = "0";
                return objids;
        }      


    }
}