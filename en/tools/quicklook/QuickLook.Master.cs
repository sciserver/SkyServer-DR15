using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using SkyServer;
using SkyServer.Tools.QuickLook;
using System.Collections.Specialized;
using System.Data;



namespace SkyServer.Tools.QuickLook
{

    public partial class ObjectQuickLook : System.Web.UI.MasterPage
    {
        protected const string ZERO_ID = "0x0000000000000000";

        protected Globals globals;
        protected HRefs hrefs = new HRefs();
        protected string enUrl;
        protected string url = null;
        protected int tabwidth = 128;

        public QuickLookQueries exploreQuery;

        //public long? id = null;
        public decimal? specId = null;
        public string apid;
        public string objId = null;
        public string specObjId = null;

        public double? ra = null;
        public double? dec = null;

        public string plateId = null;
        public string fieldId = null;
        public short? fiberId = null;
        public int? mjd;
        public short? plate;

        public int? run;
        public short? rerun;
        public short? camcol;
        public short? field;
        public short? obj;

        // from quicklook.master.cs
        short? fiber;
        //protected int? plate;
        protected long? id = 1237654386268439267;



        protected void Page_Load(object sender, EventArgs e)
        {

            globals = (Globals)Application[Globals.PROPERTY_NAME];

            exploreQuery = new QuickLookQueries();
            //Get Values from Session Object
/*            if ((ObjectInfo)Session["QuickLookObjectInfo"] == null)
            {
                id = globals.ExploreDefault;
            }
            else
            {
                getSessionIds();
            }
*/
            getSessionIds();
            url = getURL();
            enUrl = getEnURL();

            // common query to explorer
            string allId = "id=" + id + "&spec=" + specId + "&apid=" + apid + "&field=" + fieldId;

            // id is the decimal representation; objId is the hex representation.


            hrefs.SaveBook = "javascript:saveBook(\"" + objId + "\");";
            hrefs.ShowBook = "javascript:showNotes();";

            if (globals.Database.StartsWith("STRIPE"))
            {
                if (run == 106) run = 100006;
                if (run == 206) run = 200006;
            }



            string hmsRA;
            hmsRA = Functions.hmsPad(ra ?? 0).Replace(" ", "+");

            string dmsDec;
            if (dec >= 0)
                dmsDec = Functions.dmsPad(dec ?? 0).Replace("+", "%2B");
            else
                dmsDec = Functions.dmsPad(dec ?? 0);
            dmsDec = dmsDec.Replace(" ", "+");

            //initializing the links on the master webpage, given the parameters of the object
            hrefs.Quicklook = "summary.aspx?id=" + id;
            hrefs.Explore = "../explore/obj.aspx?id=" + id;
            hrefs.FindingChart = "../chart/chart.aspx?ra=" + ra + "&dec=" + dec;

            if (plate.HasValue && mjd.HasValue && fiber.HasValue)
            {
                hrefs.Quicklook = "summary.aspx?plate=" + plate + "&mjd=" + mjd + "&fiber=" + fiber;
                hrefs.Explore = "../explore/obj.aspx?plate=" + plate + "&mjd=" + mjd + "&fiber=" + fiber;
            }
            else
            {
                if (ra.HasValue && dec.HasValue)
                {
                    hrefs.Quicklook = "summary.aspx?ra=" + ra + "&dec=" + dec;
                    hrefs.Explore = "../explore/obj.aspx?ra=" + ra + "&dec=" + dec;
                }
                else
                {
                    if (specObjId != null && !ZERO_ID.Equals(specObjId))
                    {
                        hrefs.Quicklook = "summary.aspx?sid=" + specObjId;
                        hrefs.Explore = "../explore/obj.aspx?sid=" + specObjId;
                    }
                }
            }

            hrefs.Search = "search.aspx?id=" + objId;
            hrefs.Eq = "javascript:setEq(\"" + ra + "\",\"" + dec + "\");";
            hrefs.SDSS = "javascript:setSDSS(\"" + objId + "\");";
            hrefs.Id = "javascript:setId(\"" + objId + "\");";
            hrefs.Plfib = "javascript:setPlfib(\"" + specObjId + "\");";

            hrefs.SaveBook = "javascript:saveBook(\"" + objId + "\");";
            hrefs.ShowBook = "javascript:showNotes();";

            hrefs.Tutorial = "quicklook.swf";
            hrefs.Examples = "help.aspx#examples";

            hrefs.Print = "framePrint();";
            hrefs.Help = "help.aspx";


        }

        private void getSessionIds()
        {

            ObjectInfo o = (ObjectInfo)Session["QuickLookObjectInfo"];
            objId = o.objId;
            specObjId = o.specObjId;
            apid = o.apid;

            ra = o.ra;
            dec = o.dec;

            plateId = o.plateId;
            fieldId = o.fieldId;
            fiberId = o.fiberId;
            mjd = o.mjd;
            plate = o.plate;

            run = o.run;
            rerun = o.rerun;
            camcol = o.camcol;
            field = o.field;

            id = o.id;
            specId = o.specId;
        }

        public string getURL()
        {
            string host = Request.ServerVariables["SERVER_NAME"];
            string path = Request.ServerVariables["SCRIPT_NAME"];

            string root = "http://" + host;
            string s = path;
            string[] q = s.Split('/');

            string lang = "";
            for (int i = 0; i < q.Length; i++)
            {
                if (i > 0) root += "/";
                root += q[i];
                lang = q[i];
                if (lang == "en" || lang == "de" || lang == "jp"
                  || lang == "hu" || lang == "sp" || lang == "ce" || lang == "pt"
                  || lang == "zh" || lang == "uk" || lang == "ru")
                {
                    //depth = q.length - i - 2;
                    return root;
                }
            }
            return root;
        }

        public string getEnURL()
        {
            string host = Request.ServerVariables["SERVER_NAME"];
            string path = Request.ServerVariables["SCRIPT_NAME"];

            string root = "http://" + host;
            string s = path;
            string[] q = s.Split('/');

            string lang = "";
            for (int i = 0; i < q.Length; i++)
            {
                if (i > 0) root += "/";
                lang = q[i];
                if (lang == "en" || lang == "de" || lang == "jp"
                  || lang == "hu" || lang == "sp" || lang == "ce" || lang == "pt" || lang == "zh" || lang == "uk" || lang == "ru")
                {
                    //depth = q.Length - i - 2;
                    root += "en";
                    return root;
                }
                else
                {
                    root += q[i];
                }
            }
            return root;
        }

        // ***** Functions *****



        //public string getUnit(string tableName, string name)
        //{            
        //    DataSet ds = runQuery.RunCasjobs(exploreQuery.getUnit(tableName,name));
        //    using (DataTableReader reader = ds.Tables[0].CreateDataReader())
        //    {
        //        if (reader.Read())
        //            {
        //                return reader.GetString(0);
        //            }
        //    }            

        //    return "";
        //}




        /// <summary>
        /// Vertical aligned table  With DataSet
        /// </summary>
        /// <param name="namevalues"></param>
        /// <param name="w"></param>
        public void showVTable(DataSet ds, int w)
        {
            using (DataTableReader reader = ds.Tables[0].CreateDataReader())
            {
                char c = 't'; string unit = "test";
                Response.Write("<table cellpadding=2 cellspacing=2 border=0");
                if (w > 0)
                    Response.Write(" width=" + w);
                Response.Write(">\n");
                if (reader.HasRows)
                {
                    if (reader.Read())
                    {
                        for (int k = 0; k < reader.FieldCount; k++)
                        {
                            Response.Write("<tr align='left' >");
                            Response.Write("<td  valign='top' class='h'>");
                            Response.Write("<span ");
                            if (unit != "")
                                Response.Write("ONMOUSEOVER=\"this.T_ABOVE=true;this.T_WIDTH='100';return escape('<i>unit</i>=" + unit + "')\" ");
                            Response.Write("></span>");
                            Response.Write(reader.GetName(k) + "</td>");

                            Response.Write("<td valign='top' class='" + c + "'>");
                            Response.Write(reader.GetValue(k));
                            Response.Write("</td>");
                            Response.Write("</tr>");
                        }
                    }
                }
                else
                {
                    Response.Write("<tr> <td class='nodatafound'>No data found for this object </td></tr>");
                }
                Response.Write("</table>");
            }
        }

        /// <summary>
        /// Added new HTable with namevalue pair options
        /// </summary>
        /// <param name="namevalues"></param>
        /// <param name="w"></param>
        public void showHTable(DataSet ds, int w, string target)
        {
            using (DataTableReader reader = ds.Tables[0].CreateDataReader())
            {
                char c = 't'; string unit = "test";

                Response.Write("<table cellpadding=2 cellspacing=2 border=0");

                if (w > 0)
                    Response.Write(" width=" + w);
                Response.Write(">\n");

                Response.Write("<tr>");

                if (reader.HasRows)
                {
                    for (int k = 0; k < reader.FieldCount; k++)
                    {
                        Response.Write("<td align='middle' class='h'>");
                        Response.Write("<span ");
                        if (unit != "")
                            Response.Write("ONMOUSEOVER=\"this.T_ABOVE=true;this.T_WIDTH='100';return escape('<i>unit</i>=" + unit + "')\" ");
                        Response.Write("></span>");
                        Response.Write(reader.GetName(k) + "</td>");
                    }
                    Response.Write("</tr>");


                    while (reader.Read())
                    {
                        Response.Write("<tr>");

                        for (int k = 0; k < reader.FieldCount; k++)
                        {
                            Response.Write("<td nowrap align='middle' class='" + c + "'>");

                            // think something else if possible for this
                            if (target.Equals("AllSpectra") && k == 0)
                            {
                                string u = "<a class='content' target='_top' href='Summary.aspx?sid=";
                                Response.Write(u + reader.GetValue(k) + "'>" + reader.GetValue(k) + "</a></td>");
                            }

                            else if (target.Equals("Neighbors") && k == 0)
                            {
                                string u = "<a class='content' target='_top' href='Summary.aspx?id=";
                                Response.Write(u + reader.GetValue(k) + "'>" + reader.GetValue(k) + "</a></td>");
                            }

                            else
                            {
                                Response.Write(reader.GetValue(k));
                            }
                            Response.Write("</td>");
                        }
                    }
                }
                else
                {
                    Response.Write(" <td class='nodatafound'>No data found for this object </td>");
                }

                Response.Write("</tr>");

                Response.Write("</table>");
            }
        }
    }





}