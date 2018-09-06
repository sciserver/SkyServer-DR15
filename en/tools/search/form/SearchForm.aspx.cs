using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Text.RegularExpressions;

namespace SkyServer.Tools.Search
{
    public partial class SearchForm : System.Web.UI.Page
    {
        //private string SkyServer = "../x_sql.aspx";
        private string SkyServer = "../X_Results.aspx";
        private string ImageListFormat = "../../chart/f_sql.aspx";
        private string ShowImageList = "../../chart/list.aspx";

        protected string SkyServerText;
        protected string ImageListText;
        protected string EditQueryStatus;

        protected Hashtable ddls, ddlColumnRefs;

        protected const string ANY = "anything";
        private string prevText = "";
        private ToolsMaster master;

        private void Page_Load(object sender, System.EventArgs e)
        {
            master = (ToolsMaster)Page.Master;
            master.gselect = 5.7;

            string cmd = Request.Params["cmd"];
            if ((cmd != null) && (cmd.Length > 0))
            {
                SqlBox.Text = cmd;
                UpdateInvisibleText();
            }
            initddls();
            initobjecttype();
            RadioButtonList1.AutoPostBack = true;
            objecttype.AutoPostBack = false; objecttype.TabIndex = 1;
            region.AutoPostBack = true; region.TabIndex = 2;
            centerRA.AutoPostBack = false; centerRA.TabIndex = 3;
            centerDec.AutoPostBack = false; centerDec.TabIndex = 4;
            radius.AutoPostBack = false; radius.TabIndex = 5;
            allorspectra.AutoPostBack = true; allorspectra.TabIndex = 16;
            redshiftmin.AutoPostBack = false; redshiftmin.TabIndex = 17;
            redshiftmax.AutoPostBack = false; redshiftmax.TabIndex = 18;
            NumObjs.AutoPostBack = false; NumObjs.TabIndex = 19;
            Objids.AutoPostBack = false; Objids.TabIndex = 20;
            radec.AutoPostBack = false; radec.TabIndex = 21;
            Magnitudes.AutoPostBack = false; Magnitudes.TabIndex = 22;
            redshift.AutoPostBack = false; redshift.TabIndex = 25;
            specobjid.AutoPostBack = false; specobjid.TabIndex = 26;
            platefiber.AutoPostBack = false; platefiber.TabIndex = 27;
            Button3.Attributes.Add("onclick", Page.GetPostBackEventReference(SqlBox));

            if (!Page.IsPostBack)
            {
                loadDefaults();
                if (SqlBox.ReadOnly == true)
                {
                    SqlBox.Text = "";
                    Button2.Enabled = false;
                }
            }
            else
            {
                if (SqlBox.ReadOnly == true)
                {
                    if (Button4.Enabled != true)
                        SqlBox.Text = "";
                    Button2.Enabled = false;
                }
            }
            UpdateInvisibleText();
        }

        private void loadDefaults()
        {
            //set Object IDs and RA/Dec as checked by default
            Objids.Checked = true;
            radec.Checked = true;
        }

        private void initobjecttype()
        {
            //load objecttype
            if (objecttype.Items.Count < 1)
            {
                objecttype.Items.Clear();
                objecttype.Items.Add("any objects");
                objecttype.Items.Add("stars");
                objecttype.Items.Add("galaxies");
                objecttype.Items.Add("quasars");
            }

            //load allorspectra
            if (allorspectra.Items.Count < 1)
            {
                allorspectra.Items.Clear();
                allorspectra.Items.Add("all objects");
                allorspectra.Items.Add("only objects with spectra");
            }

            if (region.Items.Count < 1)
            {
                region.Items.Clear();
                region.Items.Add("anywhere");
                region.Items.Add("around:");
            }

        }

        //loads all the same types of ddls into hastable with {ddl,textbox}
        private void initddls()
        {
            ddls = new Hashtable();
            ddlColumnRefs = new Hashtable();
        }

        protected double hms2deg(string s, char c)
        {
            string[] a = s.Split(c);
            return 15 * Convert.ToDouble(a[0]) + Convert.ToDouble(a[1]) / 4.0 + Convert.ToDouble(a[2]) / 240.0;
        }

        protected double dms2deg(string s, char c)
        {
            string[] a = s.Split(c);
            if (s.IndexOf("-") == 0)
                return -(-1.0 * Convert.ToDouble(a[0]) + Convert.ToDouble(a[1]) / 60.0 + Convert.ToDouble(a[2]) / 3600.0);
            else
                return 1.0 * Convert.ToDouble(a[0]) + Convert.ToDouble(a[1]) / 60.0 + Convert.ToDouble(a[2]) / 3600.0;
        }


        protected string parseRA(string sRA)
        {
            string v;
            Regex hms = new Regex("[0-9] [0-9]");
            if (sRA.LastIndexOf(":") > -1)
            {
                v = Convert.ToString(hms2deg(sRA, ':'));
            }
            else
            {
                if (hms.IsMatch(sRA))
                {
                    v = Convert.ToString(hms2deg(sRA, ' '));
                }
                else
                    v = sRA;
            }
            return v;
        }


        protected string parseDec(string sDec)
        {
            string v;
            Regex dms = new Regex("[0-9] [0-9]");
            if (sDec.LastIndexOf(":") > -1)
            {
                v = Convert.ToString(dms2deg(sDec, ':'));
            }
            else
            {
                if (dms.IsMatch(sDec))
                {
                    v = Convert.ToString(dms2deg(sDec, ' '));
                }
                else
                    v = sDec;
            }
            return v;
        }


        protected void TurnOffSpectra(object sender, System.EventArgs e)
        {

            redshiftmin.Visible = allorspectra.SelectedItem.Text.CompareTo("only objects with spectra") == 0;
            redshiftmax.Visible = allorspectra.SelectedItem.Text.CompareTo("only objects with spectra") == 0;
            redshift.Visible = allorspectra.SelectedItem.Text.CompareTo("only objects with spectra") == 0;
            specobjid.Visible = allorspectra.SelectedItem.Text.CompareTo("only objects with spectra") == 0;
            platefiber.Visible = allorspectra.SelectedItem.Text.CompareTo("only objects with spectra") == 0;

        }

        private string buildSelect()
        {

            ArrayList list = new ArrayList();
            //load params here
            if (Objids.Checked) list.Add("p.objid");
            if (radec.Checked) list.Add("p.ra, p.dec");
            if (Magnitudes.Checked) list.Add("p.u, p.g, p.r, p.i, p.z");
            if (allorspectra.SelectedItem.Text.CompareTo("only objects with spectra") == 0)
            {
                if (redshift.Checked) list.Add("s.z as redshift");
                if (specobjid.Checked) list.Add("s.specobjid");
                if (platefiber.Checked) list.Add("s.plate, s.mjd, s.fiberid");
            }
            //then start to build
            string s = "select ";

            //this if statement takes care of count(*) case
            if (NumObjs.SelectedItem.Value.CompareTo("count") == 0)
            {
                s += "count(*) as count";
            }
            else
            {
                if (NumObjs.SelectedItem.Value.CompareTo("all") != 0)
                {
                    //this if statement adds in "count n"
                    s += "top ";
                    s += NumObjs.SelectedItem.Value;
                    s += " ";

                }


                //build the list of parameters to select
                for (int x = 0; x < list.Count; x++)
                {
                    if (x != 0 && x < list.Count)
                        s += ", ";
                    s += list[x];
                }

            }
            return s;
        }

        private string buildSelectForImageList()
        {
            ArrayList list = new ArrayList();
            //load params here
            list.Add("p.objid as name");
            list.Add("p.ra, p.dec");

            //then build
            string s = "select ";

            //this if statement takes care of count(*) case
            if (NumObjs.SelectedItem.Value.CompareTo("count") == 0)
            {
                s += "count(*)";
            }
            else
            {
                if (NumObjs.SelectedItem.Value.CompareTo("all") != 0)
                {
                    //this if statement adds in "count n"
                    s += "top ";
                    s += NumObjs.SelectedItem.Value;
                    s += " ";

                }

                //build the list of parameters to select

                for (int x = 0; x < list.Count; x++)
                {
                    if (x != 0 && x < list.Count)
                        s += ", ";
                    s += list[x];
                }
            }
            return s;
        }

        private string buildFrom()
        {
            ArrayList l = new ArrayList();
            if (objecttype.SelectedItem.Text.CompareTo("any objects") == 0) l.Add("photoobj p");
            if (objecttype.SelectedItem.Text.CompareTo("stars") == 0) l.Add("star p");
            if (objecttype.SelectedItem.Text.CompareTo("galaxies") == 0) l.Add("galaxy p");
            if (objecttype.SelectedItem.Text.CompareTo("quasars") == 0) l.Add("photoobj p");
            if ((allorspectra.SelectedItem.Text.CompareTo("only objects with spectra") == 0) || (objecttype.SelectedItem.Text.CompareTo("quasars") == 0)) l.Add("specobj s");
            if (region.SelectedItem.Text.CompareTo("around:") == 0)
            {
                //				l.Add("dbo.fgetNearByObjEq("+centerRA.Text+","+centerDec.Text+","+radius.Text+") n");
                l.Add("dbo.fgetNearByObjEq(" + parseRA(centerRA.Text) + "," + parseDec(centerDec.Text) + "," + radius.Text + ") n");
            }

            string s = "from ";
            for (int x = 0; x < l.Count; x++)
            {
                if (x != 0 && x < l.Count)
                    s += ", ";
                s += l[x];
            }
            return s;
        }

        private string buildMag(string mag, TextBox t_low, TextBox t_high)
        {
            string sql, low, high;
            low = t_low.Text.Trim();
            high = t_high.Text.Trim();
            if (low.Length > 0 && high.Length > 0)
                sql = "(" + mag + " BETWEEN " + low + " AND " + high + ")\n";
            else
            {
                if (low.Length > 0)
                    sql = mag + " > " + low + "\n";
                else
                {
                    if (high.Length > 0)
                        sql = mag + " < " + high + "\n";
                    else
                        sql = "";
                }
            }
            return sql;
        }

        private string buildWhere()
        {
            ArrayList l = new ArrayList();

            //			next line takes care of joins if objects with spectra selected
            if ((allorspectra.SelectedItem.Text.CompareTo("only objects with spectra") == 0) || (objecttype.SelectedItem.Text.CompareTo("quasars") == 0)) l.Add("p.objid=s.bestobjid");
            if (region.SelectedItem.Text.CompareTo("around:") == 0) l.Add("p.objid=n.objid");
            if (region.SelectedItem.Text.CompareTo("around:") == 0 && allorspectra.SelectedItem.Text.CompareTo("only objects with spectra") == 0) l.Add("s.bestobjid=n.objid");
            string next;
            string[] mags = { "u", "g", "r", "i", "z", "u-g", "g-r", "r-i", "i-z", "u-r" };
            TextBox[] lows = { u_low, g_low, r_low, i_low, z_low, ug_low, gr_low, ri_low, iz_low, ur_low };
            TextBox[] highs = { u_high, g_high, r_high, i_high, z_high, ug_high, gr_high, ri_high, iz_high, ur_high };

            for (int mag = 0; mag < 10; mag++)
            {
                string mag_or_color = "p." + mags[mag];
                mag_or_color = mag_or_color.Replace("-", "-p.");
                next = buildMag(mag_or_color, lows[mag], highs[mag]);
                if (next.Length > 0)
                    l.Add(next);
            }

            //			next line selects quasars
            if (objecttype.SelectedItem.Text.CompareTo("quasars") == 0) l.Add("(s.class = 'QSO')");

            if (allorspectra.SelectedItem.Text.CompareTo("only objects with spectra") == 0)
            {
                if (redshiftmin.Text != null && redshiftmin.Text.Trim().Length > 0 && redshiftmax.Text != null && redshiftmax.Text.Trim().Length > 0)
                {
                    string ss = "s.z BETWEEN " + redshiftmin.Text + " AND " + redshiftmax.Text;
                    l.Add(ss);
                }
            }

            //now build
            string s = "";
            if (l.Count > 0) { s += "where "; }
            for (int x = 0; x < l.Count; x++)
            {
                if (x != 0 && x < l.Count)
                    s += " and ";
                s += l[x];
            }
            return s;
        }

        protected void buildSql(object sender, System.EventArgs e)
        {
            SqlBox.Text = buildSelect() + "\n" + buildFrom() + "\n" + buildWhere();
            UpdateInvisibleText();
        }


        protected void showQuery(object sender, System.EventArgs e)
        {
            Button1.Text = "Update Query";
            Button4.Enabled = true;
            buildSql(sender, e);
        }


        protected void enableControls(bool val)
        {
            Button1.Enabled = val;
            objecttype.Enabled = val;
            region.Enabled = val; region.TabIndex = 2;
            centerRA.Enabled = val; centerRA.TabIndex = 3;
            centerDec.Enabled = val; centerDec.TabIndex = 4;
            radius.Enabled = val; radius.TabIndex = 5;
            u_low.Enabled = val;
            g_low.Enabled = val;
            r_low.Enabled = val;
            i_low.Enabled = val;
            z_low.Enabled = val;
            ug_low.Enabled = val;
            gr_low.Enabled = val;
            ri_low.Enabled = val;
            iz_low.Enabled = val;
            ur_low.Enabled = val;
            u_high.Enabled = val;
            g_high.Enabled = val;
            r_high.Enabled = val;
            i_high.Enabled = val;
            z_high.Enabled = val;
            ug_high.Enabled = val;
            gr_high.Enabled = val;
            ri_high.Enabled = val;
            iz_high.Enabled = val;
            ur_high.Enabled = val;
            allorspectra.Enabled = val; allorspectra.TabIndex = 16;
            redshiftmin.Enabled = val; redshiftmin.TabIndex = 17;
            redshiftmax.Enabled = val; redshiftmax.TabIndex = 18;
            NumObjs.Enabled = val; NumObjs.TabIndex = 19;
            Objids.Enabled = val; Objids.TabIndex = 20;
            radec.Enabled = val; radec.TabIndex = 21;
            Magnitudes.Enabled = val; Magnitudes.TabIndex = 22;
            redshift.Enabled = val; redshift.TabIndex = 25;
            specobjid.Enabled = val; specobjid.TabIndex = 26;
            platefiber.Enabled = val; platefiber.TabIndex = 27;
        }


        protected void enableEdit(object sender, System.EventArgs e)
        {
            if (Button4.Text == "Edit Query")
            {
                Button4.Text = "Done Edit";
                SqlBox.ReadOnly = false;
                enableControls(false);
                EditQueryStatus = "NotEdited";
            }
            else
            {
                Button4.Text = "Edit Query";
                SqlBox.ReadOnly = true;
                //				enableControls( true );
                EditQueryStatus = "DoneEdit";
            }
            /*
                        if( SqlBox.ReadOnly == true ) 
                        {
                            SqlBox.ReadOnly = false;
                            enableControls( false );
            //				buildSql( sender, e );
                        }
            */
            Button7.Enabled = true;
        }


        protected void resetForm(object sender, System.EventArgs e)
        {
            Page_Load(sender, e);
            this.ViewState.Clear();
            Response.Redirect("default.aspx");
        }

        protected string UpdateInvisibleText()
        {
            string cmd, query, whereText;
            SkyServerText = RadioButtonList1.SelectedItem.Value;

            ImageListText = buildSelectForImageList() + "\n" + buildFrom() + "\n";
            if (SqlBox.ReadOnly == false)
            {
                int whereStart = SqlBox.Text.IndexOf("where", 0);
                if (whereStart >= 0)
                    whereText = SqlBox.Text.Substring(whereStart, SqlBox.Text.Length - whereStart);
                else
                    whereText = "";
            }
            else
            {
                whereText = buildWhere();
            }

            /*
            ImageListText += whereText;
            query = ImageListFormat + "?target=main&format=";
            query += RadioButtonList1.SelectedItem.Value;
            query += "&cmd=";
            cmd = ImageListText.Replace('\n', ' ');
            cmd = cmd.Replace('\r', ' ');
            query += cmd;
            query += "&url=";
            query += ShowImageList;
            ImageListText = "?query=" + Server.UrlEncode(query);
            return ImageListText;
            */
            ImageListText += whereText;
            cmd = ImageListText.Replace('\n', ' ');
            cmd = cmd.Replace('\r', ' ');
            ImageListText = ImageListFormat + "?cmd=" + Server.UrlEncode(cmd)+"&url=none";
            return ImageListText;
        }


        protected void runSql(object sender, System.EventArgs e)
        {
            prevText = SqlBox.Text;
            string query = SkyServer + "?searchtool=SearchForm&TaskName=Skyserver.Search.SearchForm&format=";
            query += RadioButtonList1.SelectedItem.Value;
            query += "&cmd=";
            string cmd = SqlBox.Text.Replace("\n", "%0A");
            cmd = cmd.Replace('\r', ' ');
            query += cmd;
            Response.Redirect(query);
        }

        protected void runSqlSyntaxCheck(object sender, System.EventArgs e)
        {
            prevText = SqlBox.Text;
            string query = SkyServer + "?searchtool=SearchForm&TaskName=Skyserver.Search.SearchForm&syntax=Syntax&format=";
            query += RadioButtonList1.SelectedItem.Value;
            query += "&cmd=";
            string cmd = SqlBox.Text.Replace("\n", "%0A");
            //			cmd = cmd.Replace('\r',' ');
            query += cmd;
            Response.Redirect(query);
        }

        protected void runImageList(object sender, System.EventArgs e)
        {
            SqlBox.Text = buildSelectForImageList() + "\n" + buildFrom() + "\n" + buildWhere();
            string query = ImageListFormat + "?target=main&format=";
            query += RadioButtonList1.SelectedItem.Value;
            query += "&cmd=";
            string cmd = SqlBox.Text.Replace('\n', ' ');
            cmd = cmd.Replace('\r', ' ');
            query += cmd;
            query += "&url=";
            query += ShowImageList;
            Response.Redirect("imagelist.aspx?query=" + Server.UrlEncode(query));
        }



        #region Web Form Designer generated code
        override protected void OnInit(EventArgs e)
        {

            InitializeComponent();
            base.OnInit(e);
        }


        private void InitializeComponent()
        {
            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion

        private void RadioButtonList1_SelectedIndexChanged(object sender, System.EventArgs e)
        {
        }

        private void Button2_Click(object sender, System.EventArgs e)
        {
        }

        private void Button3_Click(object sender, System.EventArgs e)
        {

        }
    }
}