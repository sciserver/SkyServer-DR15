using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Tools.Search
{
    public partial class QS_Imaging : System.Web.UI.UserControl
    {
        public string queryType;
        public string userguide;
        protected string url;
        protected Globals globals;
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];

            url = ResolveClientUrl("~/en");
        }
    }
}