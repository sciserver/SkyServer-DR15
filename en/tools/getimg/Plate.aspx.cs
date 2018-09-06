using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using SkyServer.Tools.Search;



namespace SkyServer.Tools.GetImg
{
    public partial class Plate : System.Web.UI.Page
    {
        long? plateid = null;
        string apogeeplateid = null;

        protected string getimgurl;
        protected string getthisurl;
        protected string url;
        protected string survey;

        protected Globals globals;
        ToolsMaster master;
        ResponseREST rs;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ToolsMaster)Page.Master;
            master.gselect = 4.4;

            url = ResolveClientUrl("~/en");
            getimgurl = "../../get/SpecById.ashx";

            survey = Request.QueryString["choosesurvey"];
            string s = "";
            switch (survey)
            {
                case "sdss":
                    s = Request.QueryString["P"];
                    break;
                case "segue":
                    s = Request.QueryString["S"];
                    break;
                case "boss":
                    s = Request.QueryString["B"];
                    break;
                case "apogee":
                    s = Request.QueryString["A"];
                    break;
                default:
                    s = "";
                    break;
            }

            if (s != null && !"".Equals(s))
            {
                if (survey == "apogee") apogeeplateid = s;
                else plateid = long.Parse(s);
            }
        }

        protected void writeOptions(SqlConnection oConn, string cmd)
        {
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                oCmd.CommandText = cmd;
                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    string v = "";

                    while (reader.Read())
                    {
                        v = "<OPTION VALUE='" + reader.GetSqlValue(0).ToString() + "'";
                        if (plateid.HasValue && ("" + plateid).Equals(reader.GetSqlValue(0).ToString()))
                            v += " selected";
                        v += ">" + reader.GetSqlValue(1).ToString() + "/" + reader.GetSqlValue(2).ToString() + "</OPTION>\n";
                        Response.Write(v);
                    }
                } // using SqlDataReader
            } // using SqlCommand
        }

        protected void writePlateHeader(SqlConnection oConn)
        {
            if (plateid.HasValue || apogeeplateid != null)
                using (SqlCommand oCmd = oConn.CreateCommand())
                {
                    if (apogeeplateid == null)
                    {
                        string cmd = "select plate,mjd,ra,dec from plateX where plateid = @plateID";
                        oCmd.CommandText = cmd;
                        oCmd.Parameters.AddWithValue("@plateid", plateid);
                    }
                    else
                    {
                        string cmd = "select plate,mjd,racen,deccen from apogeePlate where plate_visit_id = @apogeeplateid";
                        oCmd.CommandText = cmd;
                        oCmd.Parameters.AddWithValue("@apogeeplateid", apogeeplateid);
                    }

                    using (SqlDataReader reader = oCmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Response.Write("<h2>Plate ");
                            Response.Write(reader.GetSqlValue(0).ToString());
                            Response.Write("</h2>");
                            Response.Write("<p class='plateinfo'>Observed on MJD ");
                            Response.Write(reader.GetSqlValue(1).ToString());
                            Response.Write("</p>");
                            Response.Write("<p class='plateinfo'>Plate center: RA = ");
                            Response.Write(reader.GetSqlValue(2).ToString());
                            Response.Write(", dec = ");
                            Response.Write(reader.GetSqlValue(3).ToString());
                            Response.Write("</p>");
                            Response.Write("<p class='plateinfo'>");
                            Response.Write("<a href='../chart/navi.aspx?ra=" + reader.GetSqlValue(2).ToString() + "&dec=" + reader.GetSqlValue(3).ToString());
                            Response.Write("&scale=21.4&opt=Q'>");
                            Response.Write("View in Navigate</a></p>");
                        }   // while reader.read
                    }    // using SqlDataReader
                }   // using SqlCommand
        }   // close writePlateHeader

        protected void writePlate()
        {
            if (plateid.HasValue)
            {
                    // generate the options list right out of the database

                    string u = "<a href='" + getimgurl + "?ID=";
                    string uphoto = "<a href='" + url + "/tools/explore/obj.aspx?id=";
                    int col = 0;
                    int row = 0;
                    string c = "";
                    int fiber = 0;
                    string fid = "";
                    rs = new ResponseREST();
                    string URIparams = "?plateId=" + plateid.ToString() + "&query=FiberList&TaskName=Skyserver.GetImg.Plate";
                    DataSet ds = rs.GetObjectInfoFromWebService(globals.ExploreWS, URIparams);
                    //DataSet ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.getimg.Plate.spGetFiberList");

                    DataView dv = ds.Tables[0].DefaultView;
                    dv.Sort = "fiberId asc";
                    DataTable sortedDT = dv.ToTable();

                    using (DataTableReader reader = sortedDT.CreateDataReader())
                    {
                        while (reader.Read())
                        {
                            //		c = (row%2)==0?"<td class='tsml'>":"<td class='bsml'>";
                            c = (row % 2) == 0 ? " class='tsml'>" : " class='bsml'>";
                            fiber = reader.GetInt16(1);
                            fid = "" + fiber;
                            if (fiber < 10) fid = "00" + fiber;
                            if (fiber > 9 && fiber < 100) fid = "0" + fiber;
                            string v = "[" + fid + "]&nbsp;";
                            v += reader.GetValue(2).ToString() + " z=" + reader.GetValue(3).ToString();
                            //		Response.Write(c+u+oRs.fields(0).Value+"'>"+v+"</a></td>\n");
                            Response.Write("<td" + c + uphoto + reader.GetValue(4).ToString() + "' target='EXPLORE'><img src='img.jpg' align='middle' border='1'></a>&nbsp;" + u + reader.GetValue(0).ToString() + "'" + c + v + "</a></td>");
                            if (++col > 3)
                            {
                                col = 0;
                                row++;
                                Response.Write("</tr>\n<tr>\n");
                            }
                        }
                    } // using SqlDataReader
            }
        }

        protected void writePlateAPOGEE()
        {
            if (!String.IsNullOrEmpty(apogeeplateid))
            {
                string u = "<a href='" + getimgurl + "?ID=";
                string uphoto = "<a href='" + url + "/tools/explore/summary.aspx?apid=";
                int col = 0;
                int row = 0;
                string c = "";

                string fid = "";

                string cmd = "select s.apstar_id, v.fiberID, v.apogee_id from apogeeVisit v";
                cmd += " join apogeeStar s on v.apogee_id=s.apogee_id";
                cmd += " join apogeePlate p on (p.plate=v.plate and p.mjd=v.mjd)";
                cmd += " where p.plate_visit_id = @apogeeplateid";
                cmd += " order by v.fiberid";

                cmd = cmd.Replace("@apogeeplateid", "'"+apogeeplateid+"'");

                
                rs = new ResponseREST();
                string URIparams = "?plateIdApogee=" + apogeeplateid.ToString() + "&query=PlateAPOGEE&TaskName=Skyserver.GetImg.PlateAPOGEE";
                DataSet ds = rs.GetObjectInfoFromWebService(globals.ExploreWS, URIparams);
                //DataSet ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.getimg.Plate.spGetFiberList");
                using (DataTableReader reader = ds.Tables[0].CreateDataReader())
                {
                    while (reader.Read())
                    {
                        c = (row % 2) == 0 ? " class='tsml'>" : " class='bsml'>";
                        long afiber = reader.GetInt64(1);
                        if (afiber < 10) fid = "00" + afiber;
                        else if (afiber > 9 && afiber < 100) fid = "0" + afiber;
                        else fid = "" + afiber;

                        string v = "[" + fid + "]&nbsp;";
                        //v += reader.GetSqlValue(1).ToString();
                        //		Response.Write(c+u+oRs.fields(0).Value+"'>"+v+"</a></td>\n");
                        Response.Write("<td" + c + uphoto + reader.GetValue(0).ToString() + "' target='EXPLORE'><img src='img.jpg' align='middle' border='1'>&nbsp;" + v + reader.GetValue(2).ToString() + "</a></td>");
                        if (++col > 2)
                        {
                            col = 0;
                            row++;
                            Response.Write("</tr>\n<tr>\n");
                        }

                    }
                }
            }
        }
    }
}