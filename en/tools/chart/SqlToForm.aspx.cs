using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Tools.Chart
{
    public partial class SqlToForm : System.Web.UI.Page
    {
        //protected string url;
        protected string suburl;
        protected string prturl;
        protected string query;
        protected string caller;

        public string cmd = "";

        ListBase master;
        protected void Page_Load(object sender, EventArgs e)
        {
            master = (ListBase)Page.Master;
            //url = master.getURL();

            cmd = Request["cmd"] == null || Request["cmd"].ToString() == "" ? "select top 10 specobjid as name, ra, dec from SpecObj" : Request["cmd"].ToString();

            suburl = "list.aspx";
            prturl = "printlist.aspx";
            query = "f_sql.aspx";
            caller = ResolveUrl("list.aspx");
        }
    }
}