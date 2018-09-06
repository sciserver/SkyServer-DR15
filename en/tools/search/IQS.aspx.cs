using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Tools.Search
{
    public partial class IQS : System.Web.UI.Page
    {
        protected string url;

        protected Globals globals;
        ToolsMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ToolsMaster)Page.Master;
            master.gselect = 5.4;

            url = ResolveClientUrl("~/en");

            QS_Parameter1.queryType = "img";
            QS_Parameter1.userguide = url + "/help/docs/QS_UserGuide.aspx";

            QS_Position1.userguide = url + "/help/docs/QS_UserGuide.aspx";

            QS_Imaging1.userguide = url + "/help/docs/QS_UserGuide.aspx";
        }
    }
}