using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Help.Docs
{
    public partial class DocsHome : System.Web.UI.Page
    {
        protected Globals globals;
        protected string url;
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            url = ResolveClientUrl("~/en");
        }
    }
}