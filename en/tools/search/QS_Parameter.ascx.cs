using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Tools.Search
{
    public partial class QS_Parameter : System.Web.UI.UserControl
    {
        public string queryType;
        public string userguide;

        protected string first, second, firstTab, secondTab;
        protected string url;

        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];

            url = ResolveClientUrl("~/en");

            if ("spec".Equals(queryType))
            {
                first = "Spectroscopy";
                firstTab = "SpecObj";
                second = "Imaging";
                secondTab = "PhotoObj";
            }
            else
            {
                first = "Imaging";
                firstTab = "PhotoObj";
                second = "Spectroscopy";
                secondTab = "SpecObj";
            }
        }
    }
}