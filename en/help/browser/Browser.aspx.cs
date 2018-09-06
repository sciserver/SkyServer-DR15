using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Collections;

namespace SkyServer.Help.Browser
{
    public partial class Browser : System.Web.UI.Page
    {
        protected Globals globals;
        protected string cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            cmd = Request["cmd"];
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            if (!IsPostBack)
            {
                TreeView1.Nodes.Clear();

                using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
                {
                    oConn.Open();

                    showDropList(oConn, "U");
                    showDropList(oConn, "V");
                    showDropList(oConn, "F");
                    showDropList(oConn, "P");
                    showDropList(oConn, "C");
                    showDropList(oConn, "I");
                }

                if (cmd != null && !(string.Empty.Equals(cmd)))
                {
                    PanelContents.InnerHtml = "<div id=\"title\">Schema Browser</div><div id=\"transp\"></div>";
                }
            }
        }

        public void OnNavigateHistory(object sender, HistoryEventArgs e)
        {
            string cmd = e.State["history"];
            if (cmd != null && cmd != string.Empty) Process(cmd);
        }


        protected void UpdatePanel1_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(UpdatePanel1, UpdatePanel1.GetType(), "myscript", "setTimeout(\"window.scrollTo(0,0)\",0)", true);

            if (IsPostBack && sender.Equals(UpdatePanel1))
            {
                string args = Request["__EVENTARGUMENT"];
                if (args != null && args != string.Empty && !args.StartsWith("history"))
                {                    
                    {
                        ScriptManager.GetCurrent(this).AddHistoryPoint("history", args);
                        Process(args);
                    }
                }
            }
        }

        protected void SearchFor(string s)
        {
            string key = s;
            StringWriter sw = new StringWriter();
            using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
            {
                oConn.Open();
            }
        }

        protected void Process(string args)
        {
            StringWriter sw = new StringWriter();
            sw.Write("<div id=\"title\">Schema Browser</div><div id=\"transp\">");

            using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
            {
                oConn.Open();
                if (args.StartsWith("search "))
                {
                    string key = args.Substring(7);
                    sw.Write("<H1><font size=-1>SEARCH FOR </font>&nbsp;&nbsp;..." + key + "...</H1>");
                    string str = key.ToLower();
                    if ((str.IndexOf("exec") >= 0) || (str.IndexOf("drop table") >= 0) || (str.IndexOf("dbo.") >= 0) || (str.IndexOf(";") >= 0))
                    {
                        sw.Write("<p><font color='red'><b>Invalid search string, please try again.</b></font></p>");
                    }
                    else
                    {
                        int found = 0;
                        if (key != "NULL")
                        {
                            found += showKeyResult(oConn, key, 1, Request, sw, globals);
                            found += showKeyResult(oConn, key, 2, Request, sw, globals);
                            found += showKeyResult(oConn, key, 4, Request, sw, globals);
                            found += showKeyResult(oConn, key, 8, Request, sw, globals);

                            key = '%' + key + '%';
                            string cmd = "select top 1 field from DataConstants where field like @key";
                            using (SqlCommand oCmd = oConn.CreateCommand())
                            {
                                oCmd.CommandText = cmd;
                                oCmd.Parameters.AddWithValue("@key", key);

                                List<string> names = new List<string>();
                                using (SqlDataReader reader = oCmd.ExecuteReader())
                                {
                                    
                                    if (reader.Read())
                                    {
                                        names.Add(reader.GetSqlValue(0).ToString());
                                        //found += showEnum(oConn, myname, Request, sw, globals);
                                    }
                                }
                                foreach (string s in names) { found += showEnum(oConn, s, Request, sw, globals); }
                            }
                        }
                        if (found == 0)
                        {
                            string msg = "<p>The expression has not been found";
                            msg += " in the column and flag names,<br>\n";
                            msg += " their units and descriptions, or in the ";
                            msg += " SDSSConstants table. <p> Please try another word.<p>";
                            sw.Write(msg);
                        }
                    }
                }
                else
                {
                    string[] s = args.Split(new char[] { ' ' });
                    string proc = s[0];
                    string name = s[1];
                    char type = s[2][0];

                    if ("shortdescr".Equals(proc))
                    {
                        showHeader(oConn, name, 'N', "", Request, sw, globals);
                        if (type == 'I')
                            showIndices(oConn, "", Request, sw, globals);
                        else
                            showShortTable(oConn, type, Request, sw, globals);
                    }
                    if ("constants".Equals(proc))
                    {
                        string cmd = "select description from DBObjects where name='" + name + "'";
                        showHeader(oConn, name, 'U', cmd, Request, sw, globals);
                        if (name == "DataConstants")
                            showConstFields(oConn, name, Request, sw, globals);
                        showConstants(oConn, name, Request, sw, globals);
                    }
                    if ("description".Equals(proc))
                    {
                        string cmd = "select description from DBObjects where name='" + name + "'";
                        showHeader(oConn, name, type, cmd, Request, sw, globals);

                        cmd = "select text from DBObjects where name='" + name + "'";
                        showText(oConn, cmd, Request, sw, globals);

                        if (type == 'U') showTable(oConn, name, Request, sw, globals);
                        if (type == 'V') showTable(oConn, name, Request, sw, globals);
                        if (type == 'F') showFunction(oConn, name, Request, sw, globals);
                        if (type == 'P') showFunction(oConn, name, Request, sw, globals);
                        if (type == 'I') showIndices(oConn, name, Request, sw, globals);
                    }
                    if ("enum".Equals(proc))
                    {
                        showHeader(oConn, name, type, "", Request, sw, globals);
                        showDesc(oConn, name, Request, sw, globals);
                        showAccess(oConn, name, Request, sw, globals);
                        showEnum(oConn, name, Request, sw, globals);
                    }
                }
            }
            sw.Write("</div>");
            PanelContents.InnerHtml = sw.ToString();
        }



        /* ------------------------------------ *
         * ----- SCHEMA BROWSER FUNCTIONS ----- *
         * ------------------------------------ */

        private void showDropList(SqlConnection oConn, string type)
        {
            TreeNode node = showDropHead(type);

            string cmd;
            if (type == "C")
            {
                cmd = "select name, type from DBObjects where name like '%Constants%'";
                cmd += " or name like '%Defs%'";
            }
            else if (type == "I")
            {
                cmd = "select name, type from DBObjects where type='U'";
                cmd += " and access='U' and name NOT IN ('LoadEvents', 'QueryResults')";
            }
            else if (type == "F" || type == "P")
            {
                cmd = "select name, type from DBObjects where type='" + type + "'";
                cmd += " and access='U' and name NOT IN ('LoadEvents', 'QueryResults')";
            }
            else
            {
                cmd = "select name, type from DBObjects where type='" + type + "'";
                cmd += " and name NOT IN ('LoadEvents', 'QueryResults')";
            }
            cmd += " order by name";

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request))
                {
                    string proc;

                    if (type == "C")
                        proc = "constants";
                    else
                        proc = "description";

                    if (!reader.HasRows)
                    {
                        Response.Write("<tr><td><font size=-1 color=red>No objects have been found</font> </td></tr>");
                    }
                    else
                    {
                        // write line for each object	
                        while (reader.Read())
                        {
                            TreeNode child = new TreeNode();
                            string name = reader.GetSqlValue(0).ToString();
                            child.Expanded = false;
                            child.Text = name;
                            string args = proc + " " + name + " " + type;
                            child.NavigateUrl = "javascript:__doPostBack('" + UpdatePanel1.UniqueID + "','" + args + "')";
                            node.ChildNodes.Add(child);
                        }
                    }
                }
            }
        }

        private TreeNode showDropHead(string type)
        {
            string name = "";

            if (type == "D") name = "Databases";
            if (type == "U") name = "Tables";
            if (type == "V") name = "Views";
            if (type == "F") name = "Functions";
            if (type == "P") name = "Procedures";
            if (type == "C") name = "Constants";
            if (type == "I") name = "Indices";

            TreeNode node = new TreeNode();
            node.Expanded = false;
            node.Text = name;
            string args = "shortdescr " + name + " " + type;
            node.NavigateUrl = "javascript:__doPostBack('" + UpdatePanel1.UniqueID + "','" + args + "')";
            TreeView1.Nodes.Add(node);
            return node;
        }

        private SqlDataReader execCmd(SqlCommand oCmd, string c, HttpRequest Request)
        {
            string windows_name = System.Environment.MachineName;
            string server_name = Request.ServerVariables["SERVER_NAME"];
            string remote_addr = Request.ServerVariables["REMOTE_ADDR"];
            // c = c.Replace("'", "''");

            string cmd = "EXEC spExecuteSQL @c, 1000, @server_name, @windows_name, @remote_addr, @access, 1";
            oCmd.CommandText = cmd;
            oCmd.Parameters.AddWithValue("@c", c);
            oCmd.Parameters.AddWithValue("@server_name", server_name);
            oCmd.Parameters.AddWithValue("@windows_name", windows_name);
            oCmd.Parameters.AddWithValue("@remote_addr", remote_addr);
            //oCmd.Parameters.AddWithValue("@access", globals.Access);
            oCmd.Parameters.AddWithValue("@access", "Skyserver.help.Browser.query");

            SqlDataReader reader = oCmd.ExecuteReader();
            return reader;
        }

        private void notFound(StringWriter Response)
        {
            Response.Write("<p>\n<TABLE border=0 bgcolor=#888888 width=120 cellspacing=3 cellpadding=3>\n");
            Response.Write("<tr><td class='v'>No parameters</td></tr>");
            Response.Write("</TABLE>");
        }

        private void headline(SqlDataReader reader, int j, StringWriter Response)
        {
            Response.Write("<p>\n<TABLE border=0 bgcolor=#888888 width=720 cellspacing=3 cellpadding=3>\n");
            Response.Write("<tr>");
            for (int i = j; i < (reader.FieldCount); i++)
                Response.Write("<td class='h'>" + reader.GetName(i).ToString() + "</td>");
            Response.Write("</tr>\n");
        }

        private void loop(SqlDataReader reader, string text, StringWriter Response)
        {
            if (text != "") Response.Write("<h2>" + text + "</h2>\n");

            headline(reader, 0, Response);
            while (reader.Read())
            {
                innerLoop(reader, "", "v", Response);
            }
            Response.Write("</TABLE>\n");
        }

        private void innerLoop(SqlDataReader reader, string link, string tclass, StringWriter Response)
        {
            Response.Write("<tr>");
            string val;
            for (int i = 0; i < (reader.FieldCount); i++)
            {
                val = Utilities.getSqlString(reader.GetSqlValue(i));
                if (val.Contains(".asp?n="))
                {
                    int n1 = val.IndexOf("\"");
                    int n2 = val.LastIndexOf("\"");
                    string args = val.Substring(n1+1,n2-n1-1);
                    args = args.Replace(".asp?n=", " ");
                    args = args.Replace("&t=", " ");
                    if (args.StartsWith("enum ")) args += " E";
                    string objname = args.Split(new char[] { ' ' })[1];
                    val = "<a href=\"javascript:__doPostBack('" + UpdatePanel1.UniqueID + "','" + args + "')\">"+objname;
                }
                //val = val.Replace("description.aspx", "description.aspx");
                //val = val.Replace("enum.aspx", "enum.aspx");
                if (i == 0 && link != "") val = link + val + "</a>";
                Response.Write("<td class='" + tclass + "'>" + (val == "" ? "&nbsp;" : val) + "</td>");
            }
            Response.Write("</tr>\n");
        }

        private void showHeader(SqlConnection oConn, string name, char type, string cmd, HttpRequest Request, StringWriter Response, Globals globals)
        {
            string cmd2 = "";
            string objType = "";
            if (type == 'U') objType = "TABLE";
            if (type == 'V') objType = "VIEW";
            if (type == 'F') objType = "FUNCTION";
            if (type == 'P') objType = "PROCEDURE";
            if (type == 'E') objType = "ENUMERATED VALUES";
            if (type == 'I') objType = "INDICES FOR TABLE";
            if (type == 'N') objType = "";
            Response.Write("<h1><font size=-1>" + objType + "</font>&nbsp;&nbsp;" + name + "</h1>\n");

            // show the parent, if it is a View
            if (type == 'V')
            {
                cmd2 = "select distinct parent from DBViewCols where viewname='" + name + "'";
                showParent(oConn, cmd2, Request, Response, globals);
            }

            if (cmd == "") return;

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request))
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

        private void showText(SqlConnection oConn, string cmd, HttpRequest Request, StringWriter Response, Globals globals)
        {
            if (cmd == "") return;

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request))
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

        private void showParent(SqlConnection oConn, string cmd, HttpRequest Request, StringWriter Response, Globals globals)
        {
            if (cmd == "") return;

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request))
                {

                    if (reader.Read())
                    {
                        Response.Write("<h2><font size=-1>DERIVED FROM</font>&nbsp;&nbsp;");
                        Response.Write(reader.GetSqlValue(0).ToString() + "</h2>\n");
                    }
                }
            }
        }

        private void showConstants(SqlConnection oConn, string name, HttpRequest Request, StringWriter Response, Globals globals)
        {
            string cmd = "select * from " + name;
            if (name == "DataConstants") cmd += " order by field, value";

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request))
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

        private void showConstFields(SqlConnection oConn, string name, HttpRequest Request, StringWriter Response, Globals globals)
        {
            string cmd = "";
            cmd += "select distinct c.field, o.description ";
            cmd += " 	from DataConstants c, DBObjects o ";
            cmd += "	where o.type='V' and o.name = c.field";

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request))
                {
                    if (!reader.HasRows)
                    {
                        notFound(Response);
                        return;
                    }

                    Response.Write("<h2>Enumerated fields</h2>\n");

                    string td, val;
                    headline(reader, 0, Response);
                    while (reader.Read())
                    {
                        td = "<td class='v'>";
                        Response.Write("<tr>");
                        for (int i = 0; i < (reader.FieldCount); i++)
                        {
                            string objname = reader.GetSqlValue(i).ToString();
                            string args = "enum "+objname+" "+'E';
                            string link = "<a href=\"javascript:__doPostBack('" + UpdatePanel1.UniqueID + "','" + args + "')\">" + objname + "</a>";
                            val = objname; 
                            if (i == 0) val = link;
                            Response.Write(td + (val == "" ? "&nbsp;" : val) + "</td>");
                        }
                        Response.Write("</tr>\n");
                    }
                    Response.Write("</TABLE>\n");
                }
            }
        }

        private void showShortTable(SqlConnection oConn, char type, HttpRequest Request, StringWriter Response, Globals globals)
        {
            string cmd;
            if (type == 'C')
            {
                cmd = "select name, description from DBObjects where access='U' and name like '%Constants%'";
                cmd += " or name like '%Defs%' and name not like '#%'";
            }
            else if (type == 'F' || type == 'P')
            {
                cmd = "select name, description from DBObjects where access='U' and type='" + type + "'";
                cmd += " and access='U'";
            }
            else
                cmd = "select name, description from DBObjects where access='U' and type='" + type + "'";
            cmd += " order by name";

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request))
                {
                    if (!reader.HasRows)
                    {
                        notFound(Response);
                        return;
                    }

                    headline(reader, 0, Response);
                    while (reader.Read())
                    {
                        string name = reader.GetSqlValue(0).ToString();
                        string args = "";

                        if (type == 'C')
                            args = "constants " + name + " " + type;
                        else
                            args = "description " + name + " " + type;

                        string link = "<a href=\"javascript:__doPostBack('" + UpdatePanel1.UniqueID + "','" + args + "')\">";
                        innerLoop(reader, link, "v", Response);
                    }

                    Response.Write("</TABLE>\n");
                }
            }
        }

        private void showTable(SqlConnection oConn, string name, HttpRequest Request, StringWriter Response, Globals globals)
        {
     
           string cmd = "select [enum], [name], [type], [length], [unit], [ucd], [description] from dbo.fDocColumns('" + name + "') ORDER BY [columnID]";

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request))
                {
                    if (!reader.HasRows)
                    {
                        notFound(Response); return;
                    }

                    string td, val;
                    headline(reader, 1, Response);
                    while (reader.Read())
                    {
                        string objname = reader.GetSqlValue(0).ToString();
                        string args = "enum " + objname + " " + 'E';
                        string link = "<a href=\"javascript:__doPostBack('" + UpdatePanel1.UniqueID + "','" + args + "')\"><img src='images/info.gif' border=0 alt='Link to '></a>";

                        td = "<td class='v'>";
                        Response.Write("<tr>");
                        for (int i = 1; i < (reader.FieldCount); i++)
                        {
                            val = reader.GetSqlValue(i).ToString();
                            if (objname != "" && i == 1) val += link;
                            Response.Write(td + (val == "" ? "&nbsp;" : val) + "</td>");
                        }
                        Response.Write("</tr>\n");
                    }
                    Response.Write("</TABLE>\n");
                }
            }
        }

        private void showFunction(SqlConnection oConn, string name, HttpRequest Request, StringWriter Response, Globals globals)
        {
            string cmd = "select * from fDocFunctionParams('" + name + "')";

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request))
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

        private void showIndices(SqlConnection oConn, string name, HttpRequest Request, StringWriter Response, Globals globals)
        {
            string cmd;

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

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request))
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

        private void showDesc(SqlConnection oConn, string name, HttpRequest Request, StringWriter Response, Globals globals)
        {
            string cmd;
            cmd = "select description from DataConstants where field='" + name + "' ";
            cmd += " and [name]=''";
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request))
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

        private void showAccess(SqlConnection oConn, string name, HttpRequest Request, StringWriter Response, Globals globals)
        {
            string cmd;
            cmd = "select name, type, description from DBObjects where ";
            cmd += " type in ('F','P') and access='U' and UPPER(name) like '%" + name + "%'";

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd, Request))
                {
                    if (!reader.HasRows)
                    {
                        notFound(Response);
                        return;
                    }
                    
                    Response.Write("<h2>Access functions</h2>\n");

                    headline(reader, 0, Response);
                    while (reader.Read())
                    {
                        string objname = reader.GetSqlValue(0).ToString();
                        string objtype = reader.GetSqlValue(1).ToString();
                        string args = "description "+objname+" "+objtype;
                        string link = "<a href=\"javascript:__doPostBack('" + UpdatePanel1.UniqueID + "','" + args + "')\">";

                        innerLoop(reader, link, "v", Response);
                    }
                    Response.Write("</table>\n");
                }
            }
        }

        private int showEnum(SqlConnection oConn, string name, HttpRequest Request, StringWriter Response, Globals globals)
        {
            string cmd = "exec spDocEnum @name";

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                oCmd.CommandText = cmd;
                oCmd.Parameters.AddWithValue("@name", name);

                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
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

        private int showKeyResult(SqlConnection oConn, string key, int flag, HttpRequest Request, StringWriter Response, Globals globals)
        {
            string cmd = "EXEC spDocKeySearch @key, @flag";
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                oCmd.CommandText = cmd;
                oCmd.Parameters.AddWithValue("@key", key);
                oCmd.Parameters.AddWithValue("@flag", flag);

                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    if (!reader.HasRows) return 0;

                    string text = "";
                    if (flag == 1) text = "Columns";
                    if (flag == 2) text = "DataConstants";
                    if (flag == 4) text = "SDSSConstants";
                    if (flag == 8) text = "DBObjects";

                    if (flag == 2 || flag == 4)
                    {
                        string args = "constants " + text + " C";
                        string link = "<a href=\"javascript:__doPostBack('" + UpdatePanel1.UniqueID + "','" + args + "')\"><img src='images/info.gif' border=0></a>";
                        text += link;
                    }

                    loop(reader, text, Response);
                }
            }
            return 1;
        }
    }
}
