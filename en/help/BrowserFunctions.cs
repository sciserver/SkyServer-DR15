using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.SqlTypes;

namespace SkyServer.Help.Browser
{
    public class BrowserFunctions
    {
        public static SqlDataReader execCmd(SqlCommand oCmd, string c, HttpRequest Request, HttpResponse Response, Globals globals)
        {
            string windows_name = System.Environment.MachineName;
            string server_name = Request.ServerVariables["SERVER_NAME"];
            string remote_addr = Request.ServerVariables["REMOTE_ADDR"];
            c = c.Replace("'", "''");
            //var cmd = "EXEC spExecuteSQL '" + c + "  ', 1000, '" + server_name + "','" + windows_name + "','" + remote_addr + "','" + globals.Access + "', 1";
            var cmd = "EXEC spExecuteSQL '" + c + "  ', 1000, '" + server_name + "','" + windows_name + "','" + remote_addr + "','" + "Skyserver.help.Browser.BrwsFunct" + "', 1";
            oCmd.CommandText = cmd;
            SqlDataReader reader = oCmd.ExecuteReader();
            return reader;
        }

        public static void showHeader(SqlConnection oConn, string name, string type, string cmd, HttpRequest Request, HttpResponse Response, Globals globals)
        {
            string cmd2 = "";
            string objType = "";
            if (type == "U") objType = "TABLE";
            if (type == "V") objType = "VIEW";
            if (type == "F") objType = "FUNCTION";
            if (type == "P") objType = "PROCEDURE";
            if (type == "E") objType = "ENUMERATED VALUES";
            if (type == "I") objType = "INDICES FOR TABLE";
            if (type == "N") objType = "";
            Response.Write("<h1><font size=-1>" + objType + "</font>&nbsp;&nbsp;" + name + "</h1>\n");

            // show the parent, if it is a View
            if (type == "V")
            {
                cmd2 = "select distinct parent from DBViewCols where viewname='" + name + "'";
                showParent(oConn, cmd2, Request, Response, globals);
            }

            if (cmd == "") return;

            //	oCmd.CommandText = cmd;
            //	var oRs = oCmd.Execute();
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request, Response, globals))
                {


                    Response.Write("<table width='720'>\n");
                    while (reader.Read())
                    {
                        for (int i = 0; i < (reader.FieldCount); i++)
                            Response.Write("<tr><td class='t'>" + reader.GetSqlValue(i).ToString() + "</td></tr>\n");
                    }
                    Response.Write("</table>\n");

                }
            }
        }


        public static void showParent(SqlConnection oConn, string cmd, HttpRequest Request, HttpResponse Response, Globals globals)
        {

            if (cmd == "") return;

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request, Response, globals))
                {

                    if (reader.Read())
                    {
                        Response.Write("<h2><font size=-1>DERIVED FROM</font>&nbsp;&nbsp;");
                        Response.Write(reader.GetSqlValue(0).ToString() + "</h2>\n");
                    }
                }
            }
        }

        public static void showAlphabet(HttpResponse Response)
        {
            string ch = "A";
            char chcode;
            Response.Write("<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>");
            for (int i = 0; i < 26; i++)
            {
                Response.Write("<a href=\"#" + ch + "\">" + ch + "</a> ");
                chcode = ch[0];
                chcode++;
                ch = ""+chcode;
            }
            Response.Write("</b></td>");
        }

        public static void showSearchForm(string func, string name, HttpResponse Response) {
	        int width = 200;
	        if( name == "" )
		        width = 640;
	        Response.Write("<script>\nfunction goToWindow()\n{\n  var w = window.open(\"\",'search');\n  w.focus();\n}\n</script>\n");
	        Response.Write("<form target=\"search\" action=\""+func+".aspx\" name=\"search\">\n\n");
	        Response.Write("\n<table border=1 bgcolor=black width="+width+" cellpadding=0 cellspacing=0>");
	        Response.Write("<tr><td><input type=\"text\" name=\"search\" size=\"20\" value=\""+name+"\" class=\"isize\"></td>");
	        Response.Write("<td><input type=\"submit\" value=\"Search\" class=\"wtxt\" onclick=\"goToWindow()\" id=submit1 name=submit1></td>\n");
	        if( name == "" )
		        showAlphabet(Response);
	        Response.Write("</tr></table>\n</form>\n");
        }

        public static void showTableDesc(SqlConnection oConn, string name, string search, string url, HttpRequest Request, HttpResponse Response, Globals globals) {   

	string cmd; 

	showSearchForm("tabledesc", name, Response);

	if( name == "" ) {
		cmd = "select [key] as name,[type],[text] from TableDesc order by [key]";
	} else {
		if( search == "" ) 
			cmd = "select [key] as name,[type],[text] from TableDesc where [key]='"+name+"'";
		else
			cmd = "select [key] as name,[type],[text] from TableDesc where [key] like '%"+name+"%' or [text] like '%"+name+"%'";
	}
    using (SqlCommand oCmd = oConn.CreateCommand())
    {
        oCmd.CommandText = cmd;
        using (SqlDataReader reader = oCmd.ExecuteReader())
        {
            if (!reader.HasRows)
            {
                Response.Write("<b>Nothing found</b>\n");
                return;
            }

            string gkey;
            string firstchar, prevfirst;
            string td, val, i, bookmark, browserlink;

            headline(reader, 0, Response);
            prevfirst = "-";
            td = "<td class='v'>";
            while (reader.Read())
            {
                gkey = reader.GetSqlValue(0).ToString();
                bookmark = "<a name=\"" + gkey + "\"></a>";
                browserlink = "<a href=\"" + url + "/help/browser/browser.aspx?cmd=description+" + gkey + "+U\">";
                firstchar = gkey.Substring(0,1);
                if (firstchar.ToLower() != prevfirst.ToLower())
                    bookmark += "<a name=\"" + firstchar.ToUpper() + "\"></a>";
                val = reader.GetSqlValue(0).ToString();
                Response.Write("<tr>" + td + bookmark + browserlink + val + "</a></td>");
                val = reader.GetSqlValue(1).ToString();
                Response.Write(td + val + "</td>");
                val = reader.GetSqlValue(2).ToString();
                Response.Write(td + val + "</td></tr>\n");
                prevfirst = firstchar;
            }
            Response.Write("</TABLE>\n");
            
        }
    }
}

        public static void showViews(SqlConnection oConn, string name, HttpRequest Request, HttpResponse Response, Globals globals)
        {
            string cmd;

            cmd = "select distinct v.viewname, o.description, o.[text] from dbviewcols v,";
            cmd += "dbobjects o where v.parent = '" + name + "' and o.[type] = 'V' ";
            cmd += "and v.viewname = o.[name]";
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                oCmd.CommandText = cmd;
                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    if (!reader.HasRows)
                    {
                        Response.Write("<dd>None found\n");
                        return;
                    }

                    string td, val;

                    Response.Write("<p>\n<TABLE border=0 bgcolor=#888888 cellspacing=3 cellpadding=3>\n");
                    Response.Write("<tr>");
                    Response.Write("<td class='h'>View Name</td>");
                    Response.Write("<td class='h'>Contents</td>");
                    Response.Write("<td class='h'>Description</td>");
                    Response.Write("</tr>\n");
                    td = "<td class='v'>";
                    while (reader.Read())
                    {
                        Response.Write("<tr>");
                        val = reader.GetSqlValue(0).ToString();
                        Response.Write(td + val + "</td>\n");
                        val = reader.GetSqlValue(1).ToString();
                        Response.Write(td + val + "</td>");
                        val = reader.GetSqlValue(2).ToString();
                        Response.Write(td + val + "</td></tr>\n");

                    }
                    Response.Write("</TABLE>\n");

                }
            }
        }

        public static void showIndices(SqlConnection oConn, string name, HttpRequest Request, HttpResponse Response, Globals globals)
        {

            string cmd;
            int i;

            if (name == "")
            {
                cmd = "select [indexMapID],[code],[type],[tableName],[fieldList],[foreignKey] from IndexMap order by [tableName],[indexMapId]";
            }
            else
            {
                cmd = "select [indexMapID],[code],[type],[tableName],";
                cmd += "[fieldList],[foreignKey] from IndexMap ";
                cmd += " where tableName='" + name + "' order by [indexMapId]";
            }
            //	oCmd.CommandText = cmd;
            //	var oRs = oCmd.Execute();	
            using (SqlCommand oCmd = oConn.CreateCommand())
            {

                using (SqlDataReader reader = execCmd(oCmd, cmd, Request, Response, globals))
                {
                    if (!reader.HasRows)
                    {
                        Response.Write("<b>No indices defined on this table</b>\n");
                        return;
                    }

                    string td, val, icode;

                    Response.Write("<p>\n<TABLE border=0 bgcolor=#888888 ");
                    if (name == "")
                    {
                        Response.Write("width=720 ");
                    }
                    Response.Write("cellspacing=3 cellpadding=3>\n");
                    Response.Write("<tr>");
                    if (name == "")
                    {
                        Response.Write("<td class='h'>Table Name</td>");
                    }
                    Response.Write("<td class='h'>Index Type</td>");
                    Response.Write("<td class='h'>Key or Field List</td>");
                    Response.Write("</tr>\n");
                    td = "<td class='v'>";
                    while (reader.Read())
                    {
                        Response.Write("<tr>");
                        icode = reader.GetSqlValue(1).ToString();
                        if (name == "")
                        {
                            val = reader.GetSqlValue(3).ToString();
                            Response.Write(td + val + "</td>\n");
                        }
                        val = reader.GetSqlValue(2).ToString();
                        if (icode == "I")
                        {
                            Response.Write(td + "covering " + val + "</td>");
                        }
                        else
                        {
                            Response.Write(td + val + "</td>");
                        }
                        if (icode == "F")
                        {
                            val = reader.GetSqlValue(5).ToString();
                        }
                        else
                        {
                            val = reader.GetSqlValue(4).ToString();
                            val = val.Replace(",", ", ");
                        }
                        Response.Write(td + val + "</td></tr>\n");
                    }
                    Response.Write("</TABLE>\n");
                }
            }
        }


        public static void showShortTable(SqlConnection oConn, string type, HttpRequest Request, HttpResponse Response, Globals globals)
        {
            string cmd;
            if (type == "C")
            {
                cmd = "select name, description from DBObjects where access='U' and name like '%Constants%'";
                cmd += " or name like '%Defs%' and name not like '#%'";
            }
            else if (type == "F" || type == "P")
            {
                cmd = "select name, description from DBObjects where access='U' and type='" + type + "'";
                cmd += " and access='U'";
            }
            else
                cmd = "select name, description from DBObjects where access='U' and type='" + type + "'";
            cmd += " order by name";
            //	oCmd.CommandText = cmd;
            //	var oRs = oCmd.Execute();
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request, Response, globals))
                {
                    if (!reader.HasRows)
                    {
                        notFound(Response);
                        return;
                    }

                    string link;
                    var p0 = "<a href='description.aspx?n=";
                    var p1 = "&t=";
                    var p2 = "' target='_top'>";

                    headline(reader, 0, Response);
                    while (reader.Read())
                    {
                        if (type == "C") link = "<a href='constants.aspx?n=" + reader.GetSqlValue(0).ToString() + p2;
                        else link = p0 + reader.GetSqlValue(0).ToString() + p1 + type + p2;
                        innerLoop(reader, link, "v", Response);
                    }
                    Response.Write("</TABLE>\n");
                }
            }
        }

        public static void showText(SqlConnection oConn, string cmd, HttpRequest Request, HttpResponse Response, Globals globals)
        {
            if (cmd == "") return;

            //	oCmd.CommandText = cmd;
            //	var oRs = oCmd.Execute();
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request, Response, globals))
                {
                    Response.Write("<table width='720'>\n");
                    while (reader.Read())
                    {
                        for (int i = 0; i < (reader.FieldCount); i++)
                            Response.Write("<tr><td class='d'>" + reader.GetSqlValue(i).ToString() + "</td></tr>\n");

                    }
                    Response.Write("</table>\n");
                }
            }
        }

        public static void showTable(SqlConnection oConn, string name, HttpRequest Request, HttpResponse Response, Globals globals)
        {

            string cmd = "select * from dbo.fDocColumns('" + name + "')";

            //	oCmd.CommandText = cmd;
            //	var oRs = oCmd.Execute();	
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request, Response, globals))
                {
                    if (!reader.HasRows)
                    {
                        notFound(Response); return;
                    }

                    string p0 = "<a href='enum.aspx?n=";
                    string p1 = "'><img src='images/info.gif' border=0 alt='Link to ";
                    string p2 = "'></a>";
                    string enm, link;

                    string td, val;
                    headline(reader, 1, Response);
                    while (reader.Read())
                    {

                        enm = reader.GetSqlValue(0).ToString();
                        link = p0 + reader.GetSqlValue(0).ToString() + p1 + reader.GetSqlValue(0).ToString() + p2;

                        td = "<td class='v'>";
                        Response.Write("<tr>");
                        for (int i = 1; i < (reader.FieldCount); i++)
                        {
                            val = reader.GetSqlValue(i).ToString();
                            if (enm != "" && i == 1) val += link;
                            Response.Write(td + (val == "" ? "&nbsp;" : val) + "</td>");
                        }
                        Response.Write("</tr>\n");

                    }
                    Response.Write("</TABLE>\n");

                }
            }
        }

        public static void showConstFields(SqlConnection oConn, string name, HttpRequest Request, HttpResponse Response, Globals globals)
        {

            string cmd = "";
            cmd += "select distinct c.field, o.description ";
            cmd += " 	from DataConstants c, DBObjects o ";
            cmd += "	where o.type='V' and o.name = c.field";

            //	oCmd.CommandText = cmd;
            //	var oRs = oCmd.Execute();
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request, Response, globals))
                {
                    if (!reader.HasRows)
                    {
                        notFound(Response);
                        return;
                    }

                    Response.Write("<h2>Enumerated fields</h2>\n");

                    string p0 = "<a href='enum.aspx?n=";
                    string p1 = "'>";

                    string td, val;
                    headline(reader, 0, Response);
                    while (reader.Read())
                    {
                        td = "<td class='v'>";
                        Response.Write("<tr>");
                        for (int i = 0; i < (reader.FieldCount); i++)
                        {
                            val = reader.GetSqlValue(i).ToString();
                            if (i == 0) val = p0 + val + p1 + val + "</a>";
                            Response.Write(td + (val == "" ? "&nbsp;" : val) + "</td>");
                        }
                        Response.Write("</tr>\n");
                    }
                    Response.Write("</TABLE>\n");
                }
            }
        }

        public static void showConstants(SqlConnection oConn, string name, HttpRequest Request, HttpResponse Response, Globals globals)
        {

            string cmd = "select * from " + name;
            if (name == "DataConstants") cmd += " order by field, value";

            //	oCmd.CommandText = cmd;
            //	var oRs = oCmd.Execute();
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request, Response, globals))
                {
                    if (!reader.HasRows)
                    {
                        notFound(Response);
                        return;
                    }

                    loop(reader, "Data values", Response);
                }
            }
        }

        public static void showFunction(SqlConnection oConn, string name, HttpRequest Request, HttpResponse Response, Globals globals)
        {

            string cmd = "select * from fDocFunctionParams('" + name + "')";

            //	oCmd.CommandText = cmd;
            //	var oRs = oCmd.Execute();
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request, Response, globals))
                {
                    if (!reader.HasRows)
                    {
                        notFound(Response);
                        return;
                    }

                    Response.Write("<h2>Input and output parameters</h2>\n");

                    headline(reader, 0, Response);
                    while (reader.Read())
                    {
                        innerLoop(reader, "", (reader.GetSqlValue(3).ToString() == "input" ? "v" : "o"), Response);
                    }
                    Response.Write("</TABLE>");
                }
            }
        }

        public static void showDesc(SqlConnection oConn, string name, HttpRequest Request, HttpResponse Response, Globals globals)
        {

            string cmd;
            cmd = "select description from DataConstants where field='" + name + "' ";
            cmd += " and [name]=''";
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request, Response, globals))
                {
                    if (reader.Read())
                    {
                        Response.Write("<table width='720'>\n");
                        Response.Write("<tr><td class='t'>" + reader.GetSqlValue(0).ToString() + "</td></tr>\n");
                        Response.Write("</table>\n");
                    }
                }
            }
        }

        public static void showAccess(SqlConnection oConn, string name, HttpRequest Request, HttpResponse Response, Globals globals)
        {

            string cmd;
            cmd = "select name, type, description from DBObjects where ";
            cmd += " type in ('F','P') and access='U' and UPPER(name) like '%" + name + "%'";

            //	oCmd.CommandText = cmd;
            //	var oRs = oCmd.Execute();
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request, Response, globals))
                {
                    if (!reader.HasRows)
                    {
                        notFound(Response);
                        return;
                    }


                    string p0 = "<a href='description.aspx?n=";
                    string p1 = "&t=";
                    string p2 = "'>";
                    string link;

                    Response.Write("<h2>Access functions</h2>\n");

                    headline(reader, 0, Response);
                    while (reader.Read())
                    {
                        link = p0 + reader.GetSqlValue(0).ToString() + p1 + reader.GetSqlValue(1).ToString() + p2;
                        innerLoop(reader, link, "v", Response);
                    }
                    Response.Write("</table>\n");
                }
            }
        }

        public static int showEnum(SqlConnection oConn, string name, HttpRequest Request, HttpResponse Response, Globals globals)
        {

            string cmd = "exec spDocEnum '" + name + "'";

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                oCmd.CommandText = cmd;
                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    //	var oRs = execCmd( oCmd, cmd );
                    if (!reader.HasRows)
                    {
                        notFound(Response);
                        return 0;
                    }
                    string msg = name + " Data values";
                    loop(reader, msg, Response);
                }
            }
            return 1;
        }

        public static int showKeyResult(SqlConnection oConn, string key, int flag, HttpRequest Request, HttpResponse Response, Globals globals)
        {

            string cmd = "EXEC spDocKeySearch '" + key + "'," + flag;
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                oCmd.CommandText = cmd;

                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    //	var oRs = execCmd( oCmd, cmd );
                    if (!reader.HasRows) return 0;

                    string text = "";
                    if (flag == 1) text = "Columns";
                    if (flag == 2) text = "DataConstants";
                    if (flag == 4) text = "SDSSConstants";
                    if (flag == 8) text = "DBObjects";

                    string p0 = "<a href='constants.aspx?n=";
                    string p1 = "'><img src='images/info.gif' border=0></a>";
                    if (flag == 2 || flag == 4) text += p0 + text + p1;

                    loop(reader, text, Response);
                }
            }
            return 1;
        }
        private static void loop(SqlDataReader reader, string text, HttpResponse Response)
        {

            if (text != "") Response.Write("<h2>" + text + "</h2>\n");

            headline(reader, 0, Response);
            while (reader.Read())
            {
                innerLoop(reader, "", "v", Response);
            }
            Response.Write("</TABLE>\n");
        }

        private static void notFound(HttpResponse Response)
        {
            Response.Write("<p>\n<TABLE border=0 bgcolor=#888888 width=120 cellspacing=3 cellpadding=3>\n");
            Response.Write("<tr><td class='v'>No parameters</td></tr>");
            Response.Write("</TABLE>");
        }

        private static void innerLoop(SqlDataReader reader, string link, string tclass, HttpResponse Response)
        {
            Response.Write("<tr>");
            string val;
            for (int i = 0; i < (reader.FieldCount); i++)
            {
                val = Utilities.getSqlString(reader.GetSqlValue(i));
                val = val.Replace("description.asp", "description.aspx");
                val = val.Replace("enum.asp", "enum.aspx");
                if (i == 0 && link != "") val = link + val + "</a>";
                Response.Write("<td class='" + tclass + "'>" + (val == "" ? "&nbsp;" : val) + "</td>");
            }
            Response.Write("</tr>\n");
        }

        private static void headline(SqlDataReader reader, int j, HttpResponse Response)
        {
            Response.Write("<p>\n<TABLE border=0 bgcolor=#888888 width=720 cellspacing=3 cellpadding=3>\n");
            Response.Write("<tr>");
            for (int i = j; i < (reader.FieldCount); i++)
                Response.Write("<td class='h'>" + reader.GetName(i).ToString() + "</td>");
            Response.Write("</tr>\n");
        }
    }
}
