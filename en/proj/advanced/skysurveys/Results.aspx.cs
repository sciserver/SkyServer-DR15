using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Advanced.SkySurveys
{
    public partial class Results : System.Web.UI.Page
    {
        SkySurveysMaster master;
        protected Globals globals;

        protected void Page_Load(object sender, EventArgs e)
        {
            master = (SkySurveysMaster)Page.Master;
            master.sgselect = 8;

            globals = (Globals)Application[Globals.PROPERTY_NAME];
        }
    }
}