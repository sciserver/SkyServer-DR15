using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Help.Howto
{
    public partial class SearchHowtoMaster : System.Web.UI.MasterPage
    {
        protected string imgpath;
        protected string url;
        protected string gutter;
        public double gselect = 0;
        protected Globals globals;
        protected HomeMaster master;
        protected Gutter SearchHowtoGutter;

        protected void Page_Load(object sender, EventArgs e)
        {
            imgpath = ResolveClientUrl("~/en/images/");
            url = Utilities.getURL(Request);
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (HomeMaster)this.Master;
            master.imgpath = this.imgpath;
            
            gutter = "0,SQL Tutorial,/help/howto/search/;";
            gutter += "99,<font color=red><b>Back to Help</b></font>,/help/;";
            gutter += "1,1. Introduction,/help/howto/search/introduction.aspx;";
            gutter += "2,2. A Simple Query,/help/howto/search/simplequery.aspx;";
            gutter += "3,<font color=lime>Practice</font>,/help/howto/search/practice1.aspx;";
            gutter += "4,3. Common Searches,/help/howto/search/commonsearch.aspx;";
            gutter += "5,4. More Samples,/help/howto/search/query2.aspx;";
            gutter += "6,<font color=lime>Practice</font>,/help/howto/search/practice2.aspx;";
            gutter += "7,5. Multiple Tables,/help/howto/search/query3.aspx;";
            gutter += "8,<font color=lime>Practice</font>,/help/howto/search/practice3.aspx;";
            gutter += "9,6. Aggregate Fcns.,/help/howto/search/aggfunctions.aspx;";
            gutter += "10,7. Group By,/help/howto/search/groupby.aspx;";
            gutter += "11,8. Order By,/help/howto/search/orderby.aspx;";
            gutter += "12,<font color=lime>Practice</font>,/help/howto/search/practice4.aspx;";
            gutter += "13,9. Views,/help/howto/search/views.aspx;";
            gutter += "14,10. Functions,/help/howto/search/functions.aspx;";
            gutter += "15,<font color=lime>Practice</font>,/help/howto/search/practice5.aspx;";
            gutter += "16,11. Conclusion,/help/howto/search/conclusion.aspx;";

            SearchHowtoGutter = new Gutter(imgpath, url, Response);
        }
    }
}