using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace SkyServer.Help.Docs
{
    public partial class QS_UserGuide : System.Web.UI.Page
    {
        protected string url;
        protected Globals globals;
        HelpMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            url = ResolveClientUrl("~/en");
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (HelpMaster)Page.Master;
            master.gselect = 11;
        }

        protected void showTable(SqlConnection oConn, string name)
        {
            string cmd = "select * from dbo.fDocColumns('" + name + "')";

            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                using (SqlDataReader reader = execCmd(oCmd, cmd))
                {
                    if (!reader.HasRows)
                    {
                        notFound(); return;
                    }

                    string td, val;
                    headline(reader, 1);
                    while (reader.Read())
                    {
                        string objname = reader.GetSqlValue(0).ToString();
                        string args = "enum " + objname + " " + 'E';
                        string link = "<a href=\"../browser/browser.aspx?cmd="+args+"\"><img src='images/info.gif' border=0 alt='Link to '></a>";

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

        protected void showEnumQS(SqlConnection oConn, string name)
        {
	        string cmd  = "exec spDocEnum @name";
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                oCmd.CommandText = cmd;
                oCmd.Parameters.AddWithValue("@name",name);

                using (SqlDataReader reader = oCmd.ExecuteReader())
                {

                    if (!reader.Read())
                    {
                        notFound();
                        return;
                    }
                    loop(reader, "");
                }
            }
        }

        private void loop(SqlDataReader reader, string text)
        {
            if (text != "") Response.Write("<h2>" + text + "</h2>\n");

            headline(reader, 0);
            while (reader.Read())
            {
                innerLoop(reader, "", "v");
            }
            Response.Write("</TABLE>\n");
        }

        private void innerLoop(SqlDataReader reader, string link, string tclass)
        {
            Response.Write("<tr>");
            string val;
            for (int i = 0; i < (reader.FieldCount); i++)
            {
                val = Utilities.getSqlString(reader.GetSqlValue(i));
                if (val.Contains(".aspx?n="))
                {
                    int n1 = val.IndexOf("\"");
                    int n2 = val.LastIndexOf("\"");
                    string args = val.Substring(n1 + 1, n2 - n1 - 1);
                    args = args.Replace(".aspx?n=", " ");
                    args = args.Replace("&t=", " ");
                    if (args.StartsWith("enum ")) args += " E";
                    string objname = args.Split(new char[] { ' ' })[1];
                    val = "<a href=\"../browser/browser.aspx?cmd=" + args + "\">" + objname;
                }
                //val = val.Replace("description.aspx", "description.aspx");
                //val = val.Replace("enum.aspx", "enum.aspx");
                if (i == 0 && link != "") val = link + val + "</a>";
                Response.Write("<td class='" + tclass + "'>" + (val == "" ? "&nbsp;" : val) + "</td>");
            }
            Response.Write("</tr>\n");
        }

        private SqlDataReader execCmd(SqlCommand oCmd, string c)
        {
            string windows_name = System.Environment.MachineName;
            string server_name = Request.ServerVariables["SERVER_NAME"];
            string remote_addr = Request.ServerVariables["REMOTE_ADDR"];
            //c = c.Replace("'", "''");

            string cmd = "EXEC spExecuteSQL @c, 1000, @server_name, @windows_name, @remote_addr, @access, 1";
            oCmd.CommandText = cmd;
            oCmd.Parameters.AddWithValue("@c",c);
            oCmd.Parameters.AddWithValue("@server_name", server_name);
            oCmd.Parameters.AddWithValue("@windows_name", windows_name);
            oCmd.Parameters.AddWithValue("@remote_addr", remote_addr);
            oCmd.Parameters.AddWithValue("@access", "Skyserver.Help.Docs.QS_UserGuide");

            SqlDataReader reader = oCmd.ExecuteReader();
            return reader;
        }

        private void notFound()
        {
            Response.Write("<p>\n<TABLE border=0 bgcolor=#888888 width=120 cellspacing=3 cellpadding=3>\n");
            Response.Write("<tr><td class='v'>No parameters</td></tr>");
            Response.Write("</TABLE>");
        }

        private void headline(SqlDataReader reader, int j)
        {
            Response.Write("<p>\n<TABLE border=0 bgcolor=#888888 width=720 cellspacing=3 cellpadding=3>\n");
            Response.Write("<tr>");
            for (int i = j; i < (reader.FieldCount); i++)
                Response.Write("<td class='h'>" + reader.GetName(i).ToString() + "</td>");
            Response.Write("</tr>\n");
        }
    }
}