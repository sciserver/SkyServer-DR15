using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Text;
using System.IO;
using Newtonsoft.Json;
using System.Data;
using net.ivoa.data;
using net.ivoa.VOTable;
using System.Xml.Serialization;
using nom.tam.fits;

namespace SkyServer
{
    public class ResponseAux
    {
        public static void sqlform(int nButtons, string query, string url, HttpResponse Response)
        {
            //  creates the form that builds the SQL input box
            //  nButtons = number of sample query buttons (enter 0 if you want only submit and reset)
            //  query = sample query, but it will get overwritten by any setdefaultquery(query,option) on the page

            //		var s = "<tr><td>\n";
            //		s+="  <hr>\n";
            string s = "";
            s += "  <form target='search' method='post' name='sql' action='" + url + "/tools/search/x_results.aspx" +"'>\n";
            s += "     <table BORDER=0 WIDTH='440' cellpadding=1 cellspacing=1>\n";
            s += "       <tr VALIGN='top'><td>\n";
            s += "			<textarea cols=64 name=cmd rows=12 wrap=virtual>"; 
            s += query;
            s += "</textarea>\n";
            s += "		</td></tr>\n";
            s += "		<tr><td>\n";
            s += "			<table BORDER=0 WIDTH='100%'>\n";
            s += "			  <tr>\n";
            s += "				<td ALIGN=left width='10%'>Format</td>\n";
            s += "				<td width='30%'><input name=format value='html' type=radio class='box' CHECKED>HTML</td>\n";
            s += "				<td width='30%'><input name=format value='xml'  type=radio class='box'>XML</td>\n";
            s += "				<td width='30%'><input name=format value='csv'  type=radio class='box'>CSV</td>\n";
            s += "			  </tr>\n";
            s += "			</table>\n";
            s += "		</td></tr>\n";
            s += "		<tr><td>\n";
            s += "			<p>\n";
            s += "			<input id=submit type=submit value=Submit>\n";
            s += "			<input TYPE='reset' VALUE='Reset ' id='reset' name='reset'>\n";
            s += "			<input type=\"hidden\" name=\"searchtool\" id=\"searchtool\" value=\"SQL\" /> \n";

            Response.Write(s);

            buildMultipleQueries(nButtons, Response);

            s = "		</td></tr>";
            s += "		<tr VALIGN=top><td>";
            s += "			<font color='#00ff00'><font size=-1>Enter your SQL query in the text box.\n";
            s += "			The query is limited to 10 minutes and 100,000 rows.</font></font><p>\n";
            s += "		</td></tr>\n";
            s += "      </table>\n";
            s += "  </form>\n";
            //		s+="  <p>&nbsp;\n";
            //		s+="</td></tr>\n";

            Response.Write(s);
        }

        public static void buildMultipleQueries(int n, HttpResponse Response)
        {
            if (n == 0) return;
            Response.Write("<br><br>\n");
            for (var i = 1; i < n + 1; i++)
            {
                var q = "query" + i;
                var s = "                <input TYPE='button' VALUE='Query " + i + " ' id='" + q + "' name='" + q + "'\n";
                s += "		onclick='setDefaultQuery(cmd," + i + ")'>\n";
                Response.Write(s);
            }
        }

        public static bool rangeCheck(string name, double min, double max, double lo, double hi, HttpResponse response)
        {
            if (min > max)
            {
                response.Write("Minimum " + name + " value must be less than maximum <P>");
                return true;
            }
            if (max > hi)
            {
                response.Write("Max " + name + " must be less than " + hi + " <P>");
                return true;
            }
            if (min < lo)
            {
                response.Write("Min " + name + " must be more than " + lo + "<P>");
                return true;
            }
            if (double.IsNaN(min) || double.IsNaN(max))
            {
                response.Write("Please enter numerical values for " + name + " min and max.<P>");
                return true;
            }
            return false;
        }

        public static bool valueCheck(string name, double val, double lo, double hi, HttpResponse response)
        {
            var err = false;
            if (val > hi)
            {
                response.Write(name + " must be less than " + hi + " <P>");
                return true;
            }
            if (val < lo)
            {
                response.Write(name + " must be more than " + lo + "<P>");
                return true;
            }
            if (double.IsNaN(val))
            {
                response.Write("Please enter numerical values for " + name + "<P>");
                return true;
            }
            return false;
        }

        public static void pLinks(HttpResponse response)
        {
            string s = "";
            s += "<tr><td colspan=2>\n";
            s += "<table width='400' border=0 align=center>\n<tr>\n";
            s += "	<td><a href='page1.aspx'>Galaxies</a></td>\n";
            s += "	<td><a href='page2.aspx'>Spirals</a></td>\n";
            s += "	<td><a href='page3.aspx'>Clumps</a></td>\n";
            s += "	<td><a href='page4.aspx'>Clusters</a></td>\n";
            s += "	<td><a href='page5.aspx'>Interactions</a></td>\n";
            s += "	<td><a href='page6.aspx'>Artifacts</a></td>\n";
            s += "  </tr>\n<tr>\n";
            s += "  <td></td>\n";
            s += "  <td></td>\n";
            s += "	<td align=center><a href='messier.aspx'>Messier</a></td>\n";
            s += "	<td align=center><a href='ngc.aspx'>NGC</a></td>\n";
            s += "	<td align=left><a href='abell.aspx'>Abell</a></td>\n";
            s += "  <td></td>\n";
            s += "</tr>\n</table>\n</td></tr>\n";
            response.Write(s);
        }

        public static void pThumb(string name, string reference, string q, HttpResponse response)
        {
            string[] p = q.Split(';');
            string s = "  <td>\n";
            s += "  	<table class='fpl' width='160' cellpadding='4'>\n";
            s += "	  <tr><td colspan=2 class='tlo' align='middle'><a href='" + reference + "'>" + name + "</a></td></tr>\n";
            for (var i = 0; i < p.Length; i++)
            {
                string[] r = p[i].Split(',');
                s += "	  <tr valign='top'>\n";
                s += "		<td><a href='" + reference + "'><img class='imgborder' border=0 src='thumb/" + r[0] + ".jpg'></a></td>\n";
                s += "		<td><a href='" + reference + "'><img class='imgborder' border=0 src='thumb/" + r[1] + ".jpg'></a></td>\n";
                s += "	  </tr>\n";
            }
            s += "	</table>\n";
            s += "	</td>\n";
            response.Write(s);
        }

        public static void pTable(string p, double ra, double dec, HttpResponse response)
        {
            string ned = "http://nedwww.ipac.caltech.edu/cgi-bin/nph-objsearch?search_type=Near+Position+Search";
            ned += "&in_csys=Equatorial&in_equinox=J2000.0&obj_sort=Distance+to+search+center";
            string s = "<table class='fpl'><tr><td><a target='_top'  href='../../tools/chart/navi.aspx?";
            //	var b = p.split("-");			Changed by Jordan Raddick 3/14/04
            //	var n = b[0]+"-"+b[1]+"-"+b[2]+".jpg";
            string n = p + ".jpg";
            s += "ra=" + ra + "&dec=" + dec + "&opt='>";
            s += "<img border='0' src='images/" + n + "'></a><br></td></tr></table>\n";
            s += "<span>";
            if (ra > -9000)
            {
                s += ra + "," + dec + "&nbsp;|&nbsp;";
                s += "<a href='" + ned + "&lon=" + ra + "d&lat=" + dec + "d&radius=2.0' TARGET='_top'>NED</a>";
                s += "&nbsp;|&nbsp;";
                s += "<a href='../../tools/explore/obj.aspx?ra=" + ra + "&dec=" + dec + "' TARGET='_top'>SDSS</a>";
                s += "&nbsp;|&nbsp;";
            }
            s += "</span><br>\n";
            response.Write(s);
        }

        public static void writeHead(string head, HttpResponse response)
        {
            string[] h = head.Split(',');
            string s = "<tr>";
            for (int i = 0; i < h.Length; i++)
                s += "<td class='h' align=middle>" + h[i] + "</td>";
            response.Write(s + "</tr>\n");
        }

        public static void writeBody(string r, int i, HttpResponse response)
        {
            string[] b = r.Split(',');
            string c = (i % 2) == 0 ? "t" : "b";
            string h = "<td class='" + c + "' align='middle'>";
            string s = (i != 0) ? "<tr>" : "";
            for (int j = 0; j < b.Length; j++)
                s += h + b[j] + "</td>";
            response.Write(s + "</tr>\n");
        }

        public static void writeColHead(int s, int n, HttpResponse response)
        {
            string h = "<td class='s' rowspan='" + n + "' align='middle'>" + s + "</td>";
            response.Write(h);
        }

        public static void writeRow(int val, string body, HttpResponse response)
        {
            string[] r = body.Split(';');
            response.Write("<tr>");
            writeColHead(val, r.Length, response);
            for (int i = 0; i < r.Length; i++)
            {
                writeBody(r[i], i, response);
            }
        }

        public static DataTable getDataTable(SqlConnection oConn, string cmd, int timeout)
        {
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                oCmd.CommandTimeout = timeout;
                oCmd.CommandText = cmd;
                DataTable table = new DataTable();
                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    table.Load(reader);                    
                }

                return table;
            }
        }

        public static void writeCSV(DataSet dataSet, HttpResponse response) 
        {
            try
            {
                response.ContentType = "text/plain";
            }
            catch { }

            int ntables = 0;
            foreach (DataTable table in dataSet.Tables)
            {
                ntables++;
                response.Write("#" + table.TableName + "\n");
                for (int Index = 0; Index < (table.Columns.Count); Index++)
                {
                    response.Write(table.Columns[Index].ColumnName);
                    response.Write((Index != table.Columns.Count - 1) ? "," : "\n");
                }
                foreach (DataRow row in table.Rows)
                {
                    for (int Index = 0; Index < (table.Columns.Count); Index++)
                    {
                        Type type = table.Columns[Index].DataType;

                        string str = "";
                        object value = row.ItemArray[Index];
                        if (value is byte[])
                        {
                            str = Utilities.BytesToHex((byte[])value);
                        }
                        else
                        {
                            str = value.ToString();
                        }

                        if ((type == typeof(string)) && (str.Contains(",")) && (str[0] != '"'))
                        {
                            Regex.Replace(str, "\"([^\"]*)\"", "``$1''");
                            response.Write("\"" + str + "\"");
                        }
                        else
                        {
                            response.Write(str);
                        }
                        response.Write((Index != table.Columns.Count - 1) ? "," : "\n");
                    }
                }
                if (ntables < dataSet.Tables.Count) 
                    response.Write("\n");
            }

            if (response.Buffer) response.Flush();
        }

        public static void writeJSON(DataSet dataSet, HttpResponse response)
        {
            try
            {
                response.ContentType = "application/json";
            }
            catch { }

            StringBuilder sb = new StringBuilder();
            StringWriter sw = new StringWriter(sb);

            using (JsonWriter writer = new JsonTextWriter(sw))
            {
                writer.Formatting = Formatting.Indented;
                writer.WriteStartArray();

                foreach (DataTable table in dataSet.Tables)
                {
                    writer.WriteStartObject();
                    writer.WritePropertyName("TableName");
                    writer.WriteValue(table.TableName);
                    writer.WritePropertyName("Rows");
                    writer.WriteStartArray();
                    foreach (DataRow row in table.Rows)
                    {
                        writer.WriteStartObject();
                        for (int Index = 0; Index < (table.Columns.Count); Index++)
                        {
                            writer.WritePropertyName(table.Columns[Index].ColumnName);
                            string str = "";
                            object value = row.ItemArray[Index];
                            if (value is byte[])
                            {
                                str = Utilities.BytesToHex((byte[])value);
                            }
                            else
                            {
                                str = value.ToString();
                            }

                            Type type = table.Columns[Index].DataType;
                            if (type == typeof(string) || type == typeof(byte[]))
                                writer.WriteValue(str);
                            else
                            {
                                if (type == typeof(bool)) str = str.ToLower();
                                writer.WriteRawValue(str);
                            }
                        }
                        writer.WriteEndObject();
                    }
                    writer.WriteEndArray();
                    writer.WriteEndObject();
                }

                writer.WriteEndArray();
            }

            response.Write(sb.ToString());
            if (response.Buffer) response.Flush();
        }

        public static void writeVOTable(DataSet dataSet, HttpResponse response)
        {
            try
            {
                response.ContentType = "application/xml";
            }
            catch { }

            StringBuilder sb = new StringBuilder();
            StringWriter sw = new StringWriter(sb);

            DataWrapper dw = WrapperFactory.GetDataWrapper(dataSet);
            VOTABLE voTable = VOTableWrapper.Wrapper2VOTable(dw);
            XmlSerializer serializer = new XmlSerializer(typeof(VOTABLE));
            serializer.Serialize(sw, voTable);

            response.Write(sb.ToString());
            if (response.Buffer) response.Flush();
        }

        public static void writeXML(DataSet dataSet, HttpResponse response)
        {
            try
            {
                response.ContentType = "application/xml";
            }
            catch { }

            response.Write("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n");
            response.Write("<!DOCTYPE root [\n");
            response.Write("<!ELEMENT root (Table*)>\n");
            response.Write("<!ELEMENT Table (Row*)>\n");
            response.Write("<!ELEMENT Row (Item*)>\n");
            response.Write("<!ELEMENT Item (#PCDATA)>\n");
            response.Write("<!ATTLIST Table name CDATA #REQUIRED>\n");
            response.Write("<!ATTLIST Item name CDATA #REQUIRED>\n");

            response.Write("]>\n");

            response.Write("<root>\n");

            foreach (DataTable table in dataSet.Tables)
            {
                response.Write("<Table name=\"" + table.TableName + "\">\n");
                foreach (DataRow row in table.Rows) 
                {
                    response.Write("<Row>\n");
                    for (int i = 0; i < table.Columns.Count; i++)
                    {
                        response.Write("<Item name=\"" + table.Columns[i].ColumnName + "\">");
                        string str = "";
                        object value = row.ItemArray[i];
                        if (value is byte[])
                        {
                            str = Utilities.BytesToHex((byte[])value);
                        }
                        else
                        {
                            str = value.ToString();
                        }
                        str = str.Replace("<", "&lt;");
                        str = str.Replace(">", "&gt;");

                        response.Write(str);
                        response.Write("</Item>\n");
                    }
                    response.Write("</Row>\n");
                }
                response.Write("</Table>\n");
            }
            response.Write("</root>\n");
            
            if (response.Buffer) response.Flush();
        }

        public static void writeFITS(DataSet dataSet, HttpResponse response)
        {
            MemoryStream ms = new MemoryStream();
            try
            {
                response.ContentType = "application/octet-stream";
                response.AddHeader("Content-Disposition", "attachment;filename=\"result.fits\"");
            }
            catch { }

            Fits f = new Fits();
            FitsFactory.UseAsciiTables = false;

            foreach (DataTable table in dataSet.Tables) 
            {
                if (table.Rows.Count == 0) continue;

                BinaryTable binaryTable = new BinaryTable();

                for (int col=0; col<table.Columns.Count; col++)
                {
                    Array data = null;
                    /*
                    if (table.Columns[col].DataType == typeof(byte[]))
                    {
                        data = Array.CreateInstance(typeof(string), table.Rows.Count);
                        for (int i = 0; i < table.Rows.Count; i++) data.SetValue(Utilities.BytesToHex((byte[])(table.Rows[i].ItemArray[col])), i);
                    }
                    */
                    if (table.Columns[col].DataType == typeof(byte) || table.Columns[col].DataType == typeof(short))
                    {
                        data = Array.CreateInstance(typeof(int), table.Rows.Count);
                        for (int i = 0; i < table.Rows.Count; i++) data.SetValue(Convert.ChangeType(table.Rows[i].ItemArray[col], typeof(int)), i);
                    }
                    else
                    {
                        data = Array.CreateInstance(table.Columns[col].DataType, table.Rows.Count);
                        for (int i = 0; i < table.Rows.Count; i++) data.SetValue(Convert.ChangeType(table.Rows[i].ItemArray[col], table.Columns[col].DataType), i);
                    }

                    binaryTable.AddColumn(data);
                }

                Header h = BinaryTableHDU.ManufactureHeader(binaryTable);
                
                BinaryTableHDU newBinTable = new BinaryTableHDU(h, binaryTable);
                for (int col = 0; col < table.Columns.Count; col++)
                {
                    newBinTable.SetColumnName(col, table.Columns[col].ColumnName, "");
                }
                f.AddHDU(newBinTable);
            }

            f.Write(new nom.tam.util.BufferedDataStream(ms));
            ms.WriteTo(response.OutputStream);

            if (response.Buffer) response.Flush();
        }

        public static void writeOutput(DataSet dataSet, string fmt, HttpResponse response)
        {
            if (response.IsClientConnected)
            {
                switch (fmt.ToLower()) 
                {
                    case ("csv"): 
                        writeCSV(dataSet, response);
                        break;
                    case ("xml"): 
                        writeXML(dataSet, response);
                        break;
                    case ("json"): 
                        writeJSON(dataSet, response);
                        break;
                    case ("votable"): 
                        writeVOTable(dataSet, response);
                        break;
                    case ("fits"):
                        writeFITS(dataSet, response);
                        break;
                    default:
                        break;
                }
            }
        }

        public static void writeError(Exception ex, HttpResponse response)
        {
            response.ContentType = "text/html";
            response.Clear();
            response.Write("<html><head></head><body><h1>ERROR</h1>");
            response.Write("<h2>" + ex.Message + "</h2>");
            /*
            response.Write("<pre>");
            response.Write(ex.StackTrace);
            response.Write("</pre>");
            */ 
            response.Write("</body></html>");
        }

        public static void writeOutput(SqlConnection oConn, string cmd, string cmd_echo, string fmt, HttpResponse response, Globals globals, int timeout)
        {
            if (response.IsClientConnected)
            {
                if (fmt == "xml") writeXML(oConn, cmd, cmd_echo, response, globals, timeout);
                if (fmt == "html") writeHTML(oConn, cmd, cmd_echo, 1, response, globals, timeout);
                if (fmt == "csv") writeCSV(oConn, cmd, response, globals, timeout);
                //if (fmt == "json") writeJSON(oConn, cmd, response, globals, timeout);
                //if (fmt == "votable") writeVOTable(oConn, cmd, response, globals, timeout);
            }
        }

        //----------------------------------------------
        // HTML  output
        //----------------------------------------------
        public static void writeHTML(SqlConnection oConn, string cmd, string cmd_echo, int echo, HttpResponse response, Globals globals, int timeout)
        {
            string[] runs = null, reruns = null, camcols = null, fields = null, plates = null, mjds = null, spreruns = null, fibers = null;
            int nRows = 0;

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                oCmd.CommandTimeout = timeout;
                oCmd.CommandText = cmd;
                string status = "none";
                bool buffer = response.Buffer;
                bool run = false, rerun = false, camcol = false, field = false, dasFields = false;
                bool plate = false, mjd = false, sprerun = false, fiber = false, dasSpectra = false;
                int runI = -1, rerunI = -1, camcolI = -1, fieldI = -1;
                int plateI = -1, mjdI = -1, sprerunI = -1, fiberI = -1;

                try
                {
                    status = "table";
                    response.ContentType = "text/HTML";
                    response.Flush();
                    response.Write("<html><head>\n");
                    response.Write("<title>SDSS Query Results</title>\n");
                    response.Write("</head><body bgcolor=white>\n");
                    if (echo == 1)
                    {
                        cmd_echo = cmd_echo.Replace("<", "&lt;");
                        cmd_echo = cmd_echo.Replace(">", "&gt;");

                        response.Write("<h3>Your SQL command was: <br><pre>" + cmd_echo + "</pre></h3>"); // writes command
                    }
                    response.Flush();

                    using (SqlDataReader reader = oCmd.ExecuteReader())
                    {

                        // start writing table of attributes, if there are any

                        if (!reader.HasRows)
                        {
                            response.Write("<h3><br><font color=red>No entries have been found</font> </h3>");
                        }
                        else
                        {
                            response.Write("<table border='1' BGCOLOR=cornsilk>\n");
                            response.Write("<tr align=center>");
                            for (int index = 0; index < (reader.FieldCount); index++)
                            {
                                response.Write("<td><font size=-1>");
                                response.Write(reader.GetName(index));
                                response.Write("</font></td>");
                                switch (reader.GetName(index).ToLower())
                                {
                                    case "run":
                                        run = true;
                                        runI = index;
                                        break;
                                    case "rerun":
                                        rerun = true;
                                        rerunI = index;
                                        break;
                                    case "camcol":
                                        camcol = true;
                                        camcolI = index;
                                        break;
                                    case "field":
                                        field = true;
                                        fieldI = index;
                                        break;
                                    case "plate":
                                        plate = true;
                                        plateI = index;
                                        break;
                                    case "mjd":
                                        mjd = true;
                                        mjdI = index;
                                        break;
                                    case "sprerun":
                                        sprerun = true;
                                        sprerunI = index;
                                        break;
                                    case "fiberid":
                                        fiber = true;
                                        fiberI = index;
                                        break;
                                    default:
                                        break;
                                }

                            }
                            response.Write("</tr>\n");
                            if (!response.IsClientConnected)
                            {
                                return;
                            }
                            else
                            {
                                response.Flush();
                            }


                            // writes line for each object
                            if (run == true && camcol == true && field == true)
                            {
                                dasFields = true;
                                runs = new string[500000];
                                reruns = new string[500000];
                                camcols = new string[500000];
                                fields = new string[500000];
                            }
                            if (plate == true && mjd == true && fiber == true)
                            {
                                dasSpectra = true;
                                plates = new string[500000];
                                mjds = new string[500000];
                                spreruns = new string[500000];
                                fibers = new string[500000];
                            }
                            int count = 0;
                            nRows = 0;
                            while (reader.Read())
                            {
                                response.Write("<tr align=center BGCOLOR=#eeeeff>");
                                for (int index = 0; index < (reader.FieldCount); index++)
                                {
                                    //var res = oRs.fields.item(Index);
                                    string res = Utilities.getSqlString(reader.GetSqlValue(index));
                                    response.Write("<td nowrap><font size=-1>" + res + "</font></td>");
                                }
                                response.Write("</tr>\n");
                                if (dasFields == true)
                                {
                                    runs[nRows] = Utilities.getSqlString(reader.GetSqlValue(runI));
                                    if (rerunI > -1) reruns[nRows] = Utilities.getSqlString(reader.GetSqlValue(rerunI));
                                    camcols[nRows] = Utilities.getSqlString(reader.GetSqlValue(camcolI));
                                    fields[nRows] = Utilities.getSqlString(reader.GetSqlValue(fieldI));
                                }
                                if (dasSpectra == true)
                                {
                                    plates[nRows] = Utilities.getSqlString(reader.GetSqlValue(plateI));
                                    if (sprerun == true)
                                        spreruns[nRows] = reader.GetName(sprerunI);
                                    else
                                        spreruns[nRows] = "" + globals.DefaultSpRerun;
                                    mjds[nRows] = Utilities.getSqlString(reader.GetSqlValue(mjdI));
                                    fibers[nRows] = Utilities.getSqlString(reader.GetSqlValue(fiberI));
                                }

                                nRows++;
                                if (count++ > 100)
                                {
                                    if (response.IsClientConnected)
                                    {
                                        count = 0;
                                        if (buffer) response.Flush();
                                    }
                                    else
                                    {
                                        return;
                                    }
                                }
                            }
                            response.Write("</TABLE>");
                        }
                        if (globals.DasUrlBase.Length > 1 && (dasFields == true || dasSpectra == true))
                        {
                            response.Write("<p><table><tr>\n");
                            var str = "";
                            if (dasFields == true && dasSpectra == true)
                                str = "(s)";
                            response.Write("<tr><td colspan=2><h3>Use the button" + str + " below to upload the results of the above query to the SAS and retrieve the corresponding FITS files:</h3></td></tr>");
                            if (dasFields == true)
                            {
                                response.Write("<td><form method='post' action='" + globals.DasUrlBase + "bulkFields/runCamcolFields'/>\n");
                                //				Response.Write( "<input type='hidden' name='search' value ='runcamcolfield'/>\n" );
                                response.Write("<input type='hidden' name='runcamcolfields' value='");
                                for (int i = 0; i < nRows; i++)
                                    response.Write(runs[i] + "," + camcols[i] + "," + fields[i] + "\n");
                                response.Write("'/>\n");
                                response.Write("<input type='submit' name='submit' value='Submit'/>Upload list of fields to SAS\n");
                                response.Write("</form></td>");
                            }
                            if (dasSpectra == true)
                            {
                                response.Write("<td><form method='post' action='" + globals.DasUrlBase + "bulkSpectra/plateMJDFiber'/>\n");
                                response.Write("<input type='hidden' name='platemjdfibers' value='");
                                for (int i = 0; i < nRows; i++)
                                    response.Write(plates[i] + "," + mjds[i] + "," + fibers[i] + "\n");
                                response.Write("'/>\n");
                                response.Write("<input type='submit' name='submitPMF' value='Submit'/>Upload list of spectra to SAS\n");
                                response.Write("</form></td>");
                            }
                            response.Write("</tr></table>");
                        }
                        response.Write("</BODY></HTML>\n");
                    } // using SqlDataReader
                }
                catch (Exception e)
                {
                    if (response.IsClientConnected)
                    {
                        if (status == "none")
                        {
                            response.Write("<HTML><HEAD>\n");
                            response.Write("<TITLE>SQL Statement Error</TITLE>\n");
                            response.Write("</HEAD><BODY BGCOLOR=pink>\n");
                            response.Write("<H3>Your SQL command was: <BR><PRE>" + cmd_echo + "</PRE></H3>"); // writes command
                        }
                        else
                        {
                            response.Write("</td></tr></table>");
                        }
                        response.Write("<H3 BGCOLOR=pink><font color=red>SQL returned the following error: <br>     " + e.Message);
                        response.Write("</font></H3></BODY></HTML>\n");
                        //format = "error";
                    }
                }
                if (buffer)
                    response.Flush();
            } // using SqlCommand
        }
        /*
        public static void writeJSON(SqlConnection oConn, string cmd, HttpResponse response, Globals globals, int timeout)
        {
            try
            {
                response.ContentType = "text/json";
                //response.AddHeader("Content-Disposition", "attachment;filename=\"result.csv\"");
            }
            catch { }

            StringBuilder sb = new StringBuilder();
            StringWriter sw = new StringWriter(sb);

            using (JsonWriter writer = new JsonTextWriter(sw))
            {
                writer.Formatting = Formatting.Indented;

                writer.WriteStartObject();
                writer.WritePropertyName("ResultSet");
                writer.WriteStartArray();

                using (SqlCommand oCmd = oConn.CreateCommand())
                {
                    oCmd.CommandTimeout = timeout;
                    oCmd.CommandText = cmd;
                    using (SqlDataReader reader = oCmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                writer.WriteStartObject();
                                for (int Index = 0; Index < (reader.FieldCount); Index++)
                                {
                                    writer.WritePropertyName(reader.GetName(Index));
                                    string value = Utilities.getSqlString(reader.GetSqlValue(Index));
                                    Type type = reader.GetFieldType(Index);
                                    if (type == typeof(string) || value.StartsWith("0x"))
                                        writer.WriteValue(value);
                                    else
                                        writer.WriteRawValue(value);
                                }
                                writer.WriteEndObject();
                            }
                        }
                    }
                }

                writer.WriteEndArray();
                writer.WriteEndObject();
            }
            response.Write(sb.ToString());
            if (response.Buffer) response.Flush();
        }
        */
        
        /*
        public static void writeVOTable(SqlConnection oConn, string cmd, HttpResponse response, Globals globals, int timeout)
        {
            StringBuilder sb = new StringBuilder();
            StringWriter sw = new StringWriter(sb);

            try
            {
                response.ContentType = "text/xml";
                //response.AddHeader("Content-Disposition", "attachment;filename=\"result.csv\"");
            }
            catch { }

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                oCmd.CommandTimeout = timeout;
                oCmd.CommandText = cmd;
                using (SqlDataReader reader = oCmd.ExecuteReader()) 
                {
                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    DataSet ds = new DataSet();
                    ds.Tables.Add(dt);
                    DataWrapper dw = WrapperFactory.GetDataWrapper(ds);
                    VOTABLE vo =  VOTableWrapper.Wrapper2VOTable(dw);
                    XmlSerializer serializer = new XmlSerializer(typeof(VOTABLE));
                    serializer.Serialize(sw,vo);
                }
            }
            response.Write(sb.ToString());
            if (response.Buffer) response.Flush();
        }
        */

        public static void writeCSV(SqlConnection oConn, string cmd, HttpResponse response, Globals globals, int timeout)
        {
            //oCmd.CommandText = cmd;
            //var buffer = Response.Buffer;

            try
            {
                try
                {
                    response.ContentType = "application/text";
                    response.AddHeader("Content-Disposition", "attachment;filename=\"result.csv\"");
                }
                catch { }
                writeCsvFields(oConn, cmd, response, globals, timeout);
            }
            catch (Exception ex)
            {
                if (response.IsClientConnected)
                {
                    response.Write("ERROR\n\nSQL returned the following error message:\n" + ex.Message + "\n");
                    response.Write("Your SQL command was:\n" + cmd + "\n");
                    //format = "error";
                }
            }
            //	oConn.close();  // shutdown 
            if (response.Buffer) response.Flush();
        }

        public static void writeBookCSV(SqlConnection oConn, string cmd, HttpResponse response, Globals globals, int timeout)
        {

            bool buffer = response.Buffer;

            try
            {
                response.ContentType = "application/text";
                writeCsvFields(oConn, cmd, response, globals, timeout);
            }
            catch (Exception ex)
            {
                if (response.IsClientConnected)
                {
                    response.Write("ERROR\n\nSQL returned the following error message:\n" + ex.Message + "\n");
                    response.Write("Your SQL command was:\n" + cmd + "\n");
                }
            }
            if (buffer)
                response.Flush();

        }

        public static void writeBookCSV(DataSet ds, string cmd, HttpResponse response, Globals globals)
        {

            bool buffer = response.Buffer;

            try
            {
                response.ContentType = "application/text";
                writeCsvFields(ds, cmd, response, globals);
            }
            catch (Exception ex)
            {
                if (response.IsClientConnected)
                {
                    response.Write("ERROR\n\nSQL returned the following error message:\n" + ex.Message + "\n");
                    response.Write("Your SQL command was:\n" + cmd + "\n");
                }
            }
            if (buffer)
                response.Flush();

        }

        public static void writeCsvFields(SqlConnection oConn, string cmd, HttpResponse response, Globals globals, int timeout)
        {
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                oCmd.CommandTimeout = timeout;
                oCmd.CommandText = cmd;
                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    if (!reader.HasRows)
                    {
                        response.Write("No entries have been found");
                    }
                    else
                    {
                        for (int Index = 0; Index < (reader.FieldCount); Index++)
                        {
                            response.Write(reader.GetName(Index));
                            response.Write((Index != reader.FieldCount - 1) ? "," : "\n");
                        }
                        if (!response.IsClientConnected)
                        {
                            return;
                        }
                        else
                        {
                            response.Flush();
                        }
                        var count = 0;
                        while (reader.Read())
                        {
                            for (int Index = 0; Index < (reader.FieldCount); Index++)
                            {
                                Type type = reader.GetFieldType(Index);
                                string str = Utilities.getSqlString(reader.GetSqlValue(Index));
                                if ((type == typeof(string)) && (str.Contains(",")) && (str[0] != '"'))
                                {
                                    Regex.Replace(str, "\"([^\"]*)\"", "``$1''");
                                    response.Write("\"" + str + "\"");
                                }
                                else
                                {
                                    response.Write(str);
                                }
                                response.Write((Index != reader.FieldCount - 1) ? "," : "\n");
                            }

                            if (count++ > 100)
                            {
                                if (response.IsClientConnected)
                                {
                                    count = 0;
                                    if (response.Buffer) response.Flush();
                                }
                                else
                                {
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }

        public static void writeCsvFields(DataSet ds, string cmd, HttpResponse response, Globals globals)
        {
            using (DataTableReader reader = ds.Tables[0].CreateDataReader())
            {
                if (!reader.HasRows)
                {
                    response.Write("No entries have been found");
                }
                else
                {
                    for (int Index = 0; Index < (reader.FieldCount); Index++)
                    {
                        response.Write(reader.GetName(Index));
                        response.Write((Index != reader.FieldCount - 1) ? "," : "\n");
                    }
                    if (!response.IsClientConnected)
                    {
                        return;
                    }
                    else
                    {
                        response.Flush();
                    }
                    var count = 0;
                    while (reader.Read())
                    {
                        for (int Index = 0; Index < (reader.FieldCount); Index++)
                        {
                            Type type = reader.GetFieldType(Index);
                            string str = Utilities.getSqlString(reader.GetValue(Index));
                            if ((type == typeof(string)) && (str.Contains(",")) && (str[0] != '"'))
                            {
                                Regex.Replace(str, "\"([^\"]*)\"", "``$1''");
                                response.Write("\"" + str + "\"");
                            }
                            else
                            {
                                response.Write(str);
                            }
                            response.Write((Index != reader.FieldCount - 1) ? "," : "\n");
                        }

                        if (count++ > 100)
                        {
                            if (response.IsClientConnected)
                            {
                                count = 0;
                                if (response.Buffer) response.Flush();
                            }
                            else
                            {
                                return;
                            }
                        }
                    }
                }
            }
        }
        public static void writeXML(SqlConnection oConn, string cmd, string cmd_echo, HttpResponse response, Globals globals, int timeout)
        {


            string status = "none";
            bool buffer = response.Buffer;

            response.ContentType = "application/xml";
            response.Flush();
            response.Write("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n");
            response.Write("<!DOCTYPE root [\n");
            response.Write("<!ELEMENT root (Query,Answer)>\n");
            response.Write("<!ELEMENT Query (#PCDATA)>\n");
            response.Write("<!ELEMENT Answer (Row)>\n");
            cmd_echo = cmd_echo.Replace("<", "&lt;");
            cmd_echo = cmd_echo.Replace(">", "&gt;");
            try
            {
                using (SqlCommand oCmd = oConn.CreateCommand())
                {
                    oCmd.CommandTimeout = timeout;
                    oCmd.CommandText = cmd;
                    using (SqlDataReader reader = oCmd.ExecuteReader())
                    {
                        if (!reader.HasRows)
                        {
                            response.Write("<!ELEMENT Row (#PCDATA)>\n>");
                            response.Write("<root>\n<Query>\n" + cmd_echo + " </Query>\n");
                            response.Write("<Answer>\n");
                            response.Flush();
                            response.Write("<Row> No rows returned </Row>");
                        }
                        else
                        {
                            int count = 0;
                            while (reader.Read())
                            {
                                if (!response.IsClientConnected)
                                {
                                    return;
                                }
                                if (count == 0)
                                {
                                    response.Write("<!ELEMENT Row (");
                                    for (int Index = 0; Index < (reader.FieldCount); Index++)
                                    {
                                        //     					response.Write('<!ATTLIST Row '	+ oRs.fields(Index).name + ' CDATA #REQUIRED>\n'); 
                                        response.Write(reader.GetName(Index));
                                        if (Index < (reader.FieldCount - 1))
                                            response.Write(',');
                                    }
                                    response.Write(")>\n");
                                    response.Write("]>\n");
                                    response.Write("<root>\n<Query>\n" + cmd_echo + " </Query>\n");
                                    response.Write("<Answer>\n");
                                    response.Flush();
                                }
                                //     				response.Write("<Row ");
                                response.Write("<Row>");
                                for (int Index = 0; Index < (reader.FieldCount); Index++)
                                {
                                    response.Write("<" + reader.GetName(Index) + ">");
                                    //     					response.Write(' ' + oRs.fields(Index).name + '="'); 
                                    response.Write(Utilities.getSqlString(reader.GetSqlValue(Index)));
                                    //					response.Write('"');
                                    response.Write("</" + reader.GetName(Index) + ">");
                                    //					response.Write("<"+oRs.fields(Index).name+"> ");
                                }
                                //	          		response.Write(" />\n");
                                response.Write("</Row>\n");

                                if (count++ > 100)
                                {
                                    if (response.IsClientConnected)
                                    {
                                        count = 0;
                                        if (buffer) response.Flush();
                                    }
                                    else
                                    {
                                        return;
                                    }
                                }
                            }
                        }
                    } // using SqlDataReader
                } // using SqlCommand
            }

            catch (Exception ex)
            {
                if (response.IsClientConnected)
                {
                    response.Write("<Diagnostic> " + ex.Message + "</Diagnostic>");
                    //format = "error";
                }
            }
            //	oConn.close();  // shutdown 
            response.Write("</Answer>\n</root>");
            if (buffer)
                response.Flush();

        }

        public static void writeXML(DataSet ds, string cmd, string cmd_echo, HttpResponse response, Globals globals)
        {


            string status = "none";
            bool buffer = response.Buffer;

            response.ContentType = "application/xml";
            response.Flush();
            response.Write("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n");
            response.Write("<!DOCTYPE root [\n");
            response.Write("<!ELEMENT root (Query,Answer)>\n");
            response.Write("<!ELEMENT Query (#PCDATA)>\n");
            response.Write("<!ELEMENT Answer (Row)>\n");
            cmd_echo = cmd_echo.Replace("<", "&lt;");
            cmd_echo = cmd_echo.Replace(">", "&gt;");
            try
            {
                using (DataTableReader reader = ds.Tables[0].CreateDataReader())
                {

                    if (!reader.HasRows)
                    {
                        response.Write("<!ELEMENT Row (#PCDATA)>\n>");
                        response.Write("<root>\n<Query>\n" + cmd_echo + " </Query>\n");
                        response.Write("<Answer>\n");
                        response.Flush();
                        response.Write("<Row> No rows returned </Row>");
                    }
                    else
                    {
                        int count = 0;
                        while (reader.Read())
                        {
                            if (!response.IsClientConnected)
                            {
                                return;
                            }
                            if (count == 0)
                            {
                                response.Write("<!ELEMENT Row (");
                                for (int Index = 0; Index < (reader.FieldCount); Index++)
                                {
                                    //     					response.Write('<!ATTLIST Row '	+ oRs.fields(Index).name + ' CDATA #REQUIRED>\n'); 
                                    response.Write(reader.GetName(Index));
                                    if (Index < (reader.FieldCount - 1))
                                        response.Write(',');
                                }
                                response.Write(")>\n");
                                response.Write("]>\n");
                                response.Write("<root>\n<Query>\n" + cmd_echo + " </Query>\n");
                                response.Write("<Answer>\n");
                                response.Flush();
                            }
                            //     				response.Write("<Row ");
                            response.Write("<Row>");
                            for (int Index = 0; Index < (reader.FieldCount); Index++)
                            {
                                response.Write("<" + reader.GetName(Index) + ">");
                                //     					response.Write(' ' + oRs.fields(Index).name + '="'); 
                                response.Write(Utilities.getSqlString(reader.GetValue(Index)));
                                //					response.Write('"');
                                response.Write("</" + reader.GetName(Index) + ">");
                                //					response.Write("<"+oRs.fields(Index).name+"> ");
                            }
                            //	          		response.Write(" />\n");
                            response.Write("</Row>\n");

                            if (count++ > 100)
                            {
                                if (response.IsClientConnected)
                                {
                                    count = 0;
                                    if (buffer) response.Flush();
                                }
                                else
                                {
                                    return;
                                }
                            }
                        }
                    }
                } // using SqlDataReader

            }

            catch (Exception ex)
            {
                if (response.IsClientConnected)
                {
                    response.Write("<Diagnostic> " + ex.Message + "</Diagnostic>");
                    //format = "error";
                }
            }
            //	oConn.close();  // shutdown 
            response.Write("</Answer>\n</root>");
            if (buffer)
                response.Flush();

        }




        public static void writeSyntaxMessage(SqlConnection oConn, string cmd, string cmd_echo, HttpResponse response)
        {
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                oCmd.CommandText = cmd;
                var buffer = response.Buffer;

                try
                {
                    response.ContentType = "text/HTML";
                    response.Flush();
                    response.Write("<html><head>\n");
                    response.Write("<title>SDSS Query Syntax Check</title>\n");
                    response.Write("</head><body bgcolor=white>\n");
                    response.Write("<h2>SQL Syntax Check</h2>");

                    using (SqlDataReader reader = oCmd.ExecuteReader())
                    {
                        reader.Read();
                        // write out message
                        response.Write("<H3> <font color=green>" + Utilities.getSqlString(reader.GetSqlValue(0)) + "</font></H3></BODY></HTML>\n");
                    }
                }
                catch (Exception e)
                {
                    if (response.IsClientConnected)
                    {
                        response.Write("<H3 BGCOLOR=pink><font color=red>SQL returned the following error: <br>     " + e.Message);
                        response.Write("</font></H3></BODY></HTML>\n");
                        //format = "error";
                    }
                }
                response.Write("<h3>Your SQL command was: <br><pre>" + cmd_echo + "</pre></h3><hr>"); // writes command
                response.Flush();
                //	oConn.close();  // shutdown 
                if (buffer)
                    response.Flush();
                //	if( access != "public" )
                //		Response.Write( "<input type='button' name='back' id='back' value='Back to Query' onClick='history.back();'/>\n" );
            } // using SqlCommand
        }

        public static void showImgParams(SqlConnection oConn, string type, HttpResponse response)
        {
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                string cmd = "SELECT [name] FROM DBColumns WHERE tableName='PhotoObjAll'";
                oCmd.CommandText = cmd;
                response.Write("<td class='q' width='100'>");
                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    if (!reader.HasRows)
                    {
                        response.Write("<b>No columns found for table PhotoObjAll</b>\n");
                    }
                    else
                    {
                        response.Write("\t<SELECT name=\"imgparams\" multiple=\"multiple+\" size=\"3\">\n");
                        if (type == "spec")
                        {
                            response.Write("\t\t<OPTION value=\"none\" selected>none</OPTION>\n");
                            response.Write("\t\t<OPTION value=\"minimal\">minimal</OPTION>\n");
                        }
                        else
                            response.Write("\t\t<OPTION value=\"minimal\" selected>minimal</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"typical\">typical</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"radec\">radec</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"model_mags\">model_mags</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"model_magerrs\">model_magerrs</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"psf_mags\">psf_mags</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"psf_magerrs\">psf_magerrs</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"petro_mags\">petro_mags</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"petro_magerrs\">petro_magerrs</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"model_colors\">model_colors</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"ugModelColor\">ugModelColor</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"grModelColor\">grModelColor</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"riModelColor\">riModelColor</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"izModelColor\">izModelColor</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"SDSSname\">SDSSname</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"blankImg\"> </OPTION>\n");
                        while (reader.Read())
                        {
                            response.Write("\t\t<OPTION value=\"" + Utilities.getSqlString(reader.GetSqlValue(0)) + "\">" + Utilities.getSqlString(reader.GetSqlValue(0)) + "\n");
                        }
                        response.Write("\t</OPTION></SELECT>\n");
                    }
                    response.Write("</td>\n");
                } // using SqlDataReader
            } // using SqlCommand
        }

        public static void showSpecParams(SqlConnection oConn, string type, HttpResponse response)
        {
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                string cmd = "SELECT [name] FROM DBColumns WHERE tableName='SpecObjAll'";
                oCmd.CommandText = cmd;
                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    response.Write("<td class='q' width='100'>");
                    if (!reader.HasRows)
                    {
                        response.Write("<b>No columns found for table SpecObjAll</b>\n");
                    }
                    else
                    {
                        response.Write("\t<SELECT name=\"specparams\" multiple=\"multiple\" size=\"3\">\n");
                        if (type == "spec")
                            response.Write("\t\t<OPTION value=\"minimal\" selected>minimal</OPTION>\n");
                        else
                        {
                            response.Write("\t\t<OPTION value=\"none\" selected>none</OPTION>\n");
                            response.Write("\t\t<OPTION value=\"minimal\">minimal</OPTION>\n");
                        }
                        response.Write("\t\t<OPTION value=\"typical\">typical</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"radec\">radec</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"blankSpec\"> </OPTION>\n");
                        while (reader.Read())
                        {
                            response.Write("\t\t<OPTION value=\"" + Utilities.getSqlString(reader.GetSqlValue(0)) + "\">" + Utilities.getSqlString(reader.GetSqlValue(0)) + "\n");

                        }
                        response.Write("\t</OPTION></SELECT>\n");
                    }
                    response.Write("</td>\n");
                } // using SqlDataReader
            } // using SqlCommand
        }

        public static void showIRSpecParams(SqlConnection oConn, string type, HttpResponse response)
        {
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                string cmd = "SELECT [name] FROM DBColumns WHERE tableName='apogeeStar'";
                oCmd.CommandText = cmd;
                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    response.Write("<td class='q' colspan='2' align='center'>");
                    if (!reader.HasRows)
                    {
                        response.Write("<b>No columns found for table apogeeStar</b>\n");
                    }
                    else
                    {
                        response.Write("\t<SELECT style=\"width:200px;\" name=\"irspecparams\" multiple=\"multiple\" size=\"6\">\n");
                        if (type == "irspec")
                            response.Write("\t\t<OPTION value=\"minimal\">Minimal</OPTION>\n");
                        else
                        {
                            response.Write("\t\t<OPTION value=\"none\" selected>none</OPTION>\n");
                            response.Write("\t\t<OPTION value=\"minimal\">minimal</OPTION>\n");
                        }
                        response.Write("\t\t<OPTION value=\"typical\" selected>Typical</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"blankSpec\"> </OPTION>\n");
                        while (reader.Read())
                        {
                            response.Write("\t\t<OPTION value=\"" + Utilities.getSqlString(reader.GetSqlValue(0)) + "\">" + Utilities.getSqlString(reader.GetSqlValue(0)) + "\n");

                        }
                        response.Write("\t\t<OPTION value=\"blankSpec\"> </OPTION>\n");
                        response.Write("\t\t<OPTION value=\"twomassj\">2MASS J</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"twomassh\">2MASS H</OPTION>\n");
                        response.Write("\t\t<OPTION value=\"twomassk\">2MASS K_s</OPTION>\n");
                        response.Write("\t</OPTION></SELECT>\n");
                    }
                    response.Write("</td>\n");
                } // using SqlDataReader
            } // using SqlCommand
        }
    }
}