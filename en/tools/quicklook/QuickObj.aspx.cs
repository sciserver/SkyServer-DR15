using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Tools.QuickLook
{
    public partial class quickobj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {  
            string queryString = Request.QueryString.ToString();
            Response.Redirect("summary.aspx?"+queryString);           
        }
    }
}