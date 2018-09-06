using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Tools.CrossId
{
    public partial class CrossId : System.Web.UI.Page
    {
	    protected double uploadRA1  = 15.5;		// Default upload page RA for A1
	    protected double uploadDec1 = 0.5;		// Default upload page dec for A1
	    protected double uploadRA2  = 14.5;		// Default upload page RA for A2
	    protected double uploadDec2 = 0.6;		// Default upload page dec for A2
	    protected double uploadRA3  = 13.9;		// Default upload page RA for A3
	    protected double uploadDec3 = +0.8;		// Default upload page dec for A3
        protected double uploadRA4 = 197.614;		// Default upload page RA for A4
        protected double uploadDec4 = 18.438;	// Default upload page dec for A4
        protected string crossidSample = "run rerun camcol field obj\\n3964  301    4   265   219\\n3185  301    1   091   324\\n3918  301    2   366   065\\n";
        protected string url;
        
        protected double crossidRadius; // access = public
        protected double crossidTimeout;

        protected int rowLimit = 500000;

        protected Globals globals;
        ToolsMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ToolsMaster)Page.Master;
            master.gselect = 6;

            url = ResolveClientUrl("~/en");

            if ("public".Equals(globals.Access))
            {
                crossidTimeout = 1800;
                crossidRadius = 3.0;
            }
            else if ("collab".Equals(globals.Access))
            {
                crossidTimeout = 3600;
                crossidRadius = 30.0;
            }
            else
            {
                crossidTimeout = 3600;
                crossidRadius = 3.0;
            }
        }
    }
}