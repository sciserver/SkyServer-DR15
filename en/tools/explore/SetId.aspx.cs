using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Tools.Explore
{
    public partial class SetId : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = "";
            string key;
            for (int i = 0; i < Request.QueryString.Count; i++)
            {
                key = Request.QueryString.AllKeys[i];
                key = key.ToLower();
                if (key == "id") id = Request.QueryString["id"];
            }
        }
    }
}