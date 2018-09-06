using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SkyServer.Tools.Explore
{
    public partial class MangaControl : System.Web.UI.UserControl
    {
        protected Globals globals;
        protected ObjectExplorer master;

        public const double DEFAULT_RADIUS = 0.5 / 60;

        public int plate;
        public string ifudsgn;
        public string versdrp3;
        public string plateIFU;
        public string mangaid;
        public double objra;
        public double objdec;
        public double ifura;
        public double ifudec;
        public long drp3qual;
        public float bluesn2;
        public float redsn2;
        public int mjdmax;
        public long mngtarg1;
        public long mngtarg2;
        public long mngtarg3;

        protected bool HasData = false;

        protected string task;

        /* Visits */
        public List<ApogeeVisit> visits = new List<ApogeeVisit>();

        public DataSet ds = new DataSet();
        public DataTable dt = new DataTable();


        protected void Page_Load(object sender, EventArgs e)
        {
            //ds = (DataSet)Session["objectDataSet"];

            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ObjectExplorer)Page.Master;

            if (globals.ReleaseNumber >= 13 && ((DataSet)Session["LoadExplore"]).Tables.IndexOf("MangaData") >= 0 && ((DataSet)Session["LoadExplore"]).Tables["MangaData"].Rows.Count > 0  )
            {
                HasData = true;
                try
                {
                    ds.Merge(((DataSet)Session["LoadExplore"]).Tables["MangaData"]);
                    dt.Merge(((DataSet)Session["LoadExplore"]).Tables["MangaData"]);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }




    }
}