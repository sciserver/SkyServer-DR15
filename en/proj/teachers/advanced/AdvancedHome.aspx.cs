using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Advanced
{
    public partial class AdvancedHome : System.Web.UI.Page
    {
        protected Globals globals;
        TeachersMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (TeachersMaster)Page.Master;
            master.gselect = 2;
        }
    }
}