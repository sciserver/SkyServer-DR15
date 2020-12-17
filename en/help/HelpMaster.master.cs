using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Help
{
    public partial class HelpMaster : System.Web.UI.MasterPage
    {
        protected string imgpath;
        protected string url;
        protected string gutter;
        public double gselect = 0;
        protected Globals globals;
        protected HomeMaster master;
        protected Gutter HelpGutter;

        protected void Page_Load(object sender, EventArgs e)
        {
            imgpath = ResolveClientUrl("~/en/images/");
            url = Utilities.getURL(Request);
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (HomeMaster)this.Master;
            master.imgpath = this.imgpath;

            gutter = "";
            gutter += "0," + globals.Release + " Help,/help/;";
            gutter += "30,<b>Start Here</b>,/help/docs/introduction.aspx;";
            gutter += "30.1,Data,/help/docs/introduction.aspx#data;";
            gutter += "30.2,Tools,/help/docs/introduction.aspx#tools;";
            gutter += "30.3,Help,/help/docs/introduction.aspx#help;";
            gutter += "30.4,Projects,/help/docs/introduction.aspx#proj;";

            gutter += "10,FAQ," + globals.SdssUrl + "help/;";

            gutter += "33,Cooking with Sloan,/help/cooking/;";
            gutter += "33.1,General,/help/cooking/general/;";
            gutter += "33.2,Solar System,/help/cooking/solarsystem/;";
            gutter += "33.3,Stars,/help/cooking/stars/;";
            gutter += "33.4,Galaxies,/help/cooking/galaxies/;";
            gutter += "33.5,QSOs/Cosmology,/help/cooking/quasars/;";
            gutter += "33.6,Teaching/Labs,/help/cooking/labs/;";

            //  gutter += "55,Tool User Guides,/tools/started;";
            gutter += "13,Contact Help Desk," + globals.ContactUrl+"&url="+Server.UrlEncode("http://"+Request.ServerVariables["SERVER_NAME"]+Request.ServerVariables["SCRIPT_NAME"]+Request.ServerVariables["QUERY_STRING"]) + ";";

            gutter += "1,<hr />,;";

            gutter += "85,<b>Searching SDSS</b>,/tools/search;";
            gutter += "999,SQL Tutorial,/help/howto/search/;";
            gutter += "2,SQL in SkyServer,/help/docs/sql_help.aspx;";
            gutter += "18,Sample SQL Queries,/help/docs/realquery.aspx;";
            gutter += "14,Query Limits,/help/docs/limits.aspx;";
            gutter += "50,Searching Advice,/help/cooking/advice.aspx;";

            gutter += "1,<hr />,;";
            gutter += "11,About the Database,/help/docs/intro.aspx;";
            gutter += "16,Table Descriptions,/help/docs/tabledesc.aspx;";
            gutter += "1,Schema Browser,/help/browser/browser.aspx;";
            gutter += "4,Glossary," + globals.SdssUrl + "help/glossary/;";
            gutter += "5,Algorithms," + globals.SdssUrl + "algorithms/;";

            //  gutter += "19,Data Publications,/sdss/pubs/;";
            //  gutter += "19,<b>Details of the Data</b>,/sdss/pubs/;";
            //  gutter += "20,Downloads,/help/download/;";
            //  gutter += "20.1,sdssQA,/help/download/sdssQA/;";
            //  gutter += "20.2,sqlcl,/help/download/sqlcl/;"
            //  gutter += "20.3,Emacs interface,"+emacsURL+"/skyserver.el;";
            //  gutter += "20.4,Cooking with Sloan,/help/download/cooking/;"

            gutter += "8,API/Tools,/help/docs/api.aspx;";

            HelpGutter = new Gutter(imgpath, url, Response);

        }
    }
}
