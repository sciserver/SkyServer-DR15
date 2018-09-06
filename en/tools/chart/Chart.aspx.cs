using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Tools.Chart
{
    public partial class Chart : System.Web.UI.Page
    {
        private double? ra;
        private double? dec;
        private int? width = 512;
        private int? height = 512;
        private double? scale = 0.4;

        protected void Page_Load(object sender, EventArgs e)
        {
            string qra = Request.QueryString["ra"];
            string qdec = Request.QueryString["dec"];


            if (qra != null && !"".Equals(qra))
            {
                ra = double.Parse(qra);
            }

            if (qdec != null && !"".Equals(qdec))
            {
                dec = double.Parse(qdec);
            }


            if (ra.HasValue && dec.HasValue)
            {
                Response.Redirect("image.aspx?ra=" + ra + "&dec=" + dec+"&width="+width+"&height="+height+"&scale="+scale);
            }
            else
            {
                Response.Redirect("chartinfo.aspx");
            }
        }
    }
}