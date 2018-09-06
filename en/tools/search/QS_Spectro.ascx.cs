using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Tools.Search
{
    public partial class QS_Spectro : System.Web.UI.UserControl
    {
        public string userguide;
        protected Globals globals;
        protected string url;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            url = ResolveClientUrl("~/en");
        }
    }
}