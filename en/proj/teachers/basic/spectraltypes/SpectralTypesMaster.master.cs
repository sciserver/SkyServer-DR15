using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Basic.SpectralTypes
{
    public partial class SpectralTypesMaster : System.Web.UI.MasterPage
    {
        protected string imgpath;
        protected string url;
        protected string sgutter;
        public double sgselect = 0;
        protected Globals globals;
        protected TeachersMaster master;
        protected Gutter ProjGutter;

        protected void Page_Load(object sender, EventArgs e)
        {
            imgpath = ResolveClientUrl("~/en/images/");
            url = Utilities.getURL(Request);
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (TeachersMaster)this.Master;

            master.gselect = 1.4;

            sgutter = "0,Types of Stars,/proj/teachers/basic/spectraltypes/;";
            sgutter += "1,Overview,/proj/teachers/basic/spectraltypes/overview.aspx;";
            sgutter += "1.1,Description,/proj/teachers/basic/spectraltypes/overview.aspx#description;";
            sgutter += "1.2,Concepts,/proj/teachers/basic/spectraltypes/overview.aspx#concepts;";
            sgutter += "1.3,Target Audience,/proj/teachers/basic/spectraltypes/overview.aspx#audience;";
            sgutter += "1.4,Classroom Time,/proj/teachers/basic/spectraltypes/overview.aspx#classtime;";
            sgutter += "1.5,Real World,/proj/teachers/basic/spectraltypes/overview.aspx#relevance;";
            sgutter += "1.6,Solutions,/proj/teachers/basic/spectraltypes/overview.aspx#solutions;";
            sgutter += "2,Background,/proj/teachers/basic/spectraltypes/background.aspx;";
            sgutter += "2.1,Books,/proj/teachers/basic/spectraltypes/background.aspx#books;";
            sgutter += "2.2,Web sites,/proj/teachers/basic/spectraltypes/background.aspx#websites;";
            sgutter += "3,Lesson Plan,/proj/teachers/basic/spectraltypes/lesson.aspx;";
            sgutter += "3.1,Goals,/proj/teachers/basic/spectraltypes/lesson.aspx#goals;";
            sgutter += "3.2,Prerequisites,/proj/teachers/basic/spectraltypes/lesson.aspx#prereqs;";
            sgutter += "3.3,Vocabulary,/proj/teachers/basic/spectraltypes/lesson.aspx#vocab;";
            sgutter += "3.4,Materials,/proj/teachers/basic/spectraltypes/lesson.aspx#materials;";
            sgutter += "3.5,Preparation Time,/proj/teachers/basic/spectraltypes/lesson.aspx#preptime;";
            sgutter += "3.6,Classroom Time,/proj/teachers/basic/spectraltypes/lesson.aspx#classtime;";
            sgutter += "3.8,Follow-Up Activities,/proj/teachers/basic/spectraltypes/lesson.aspx#followup;";
            sgutter += "3.9,Few/no Computers,/proj/teachers/basic/spectraltypes/lesson.aspx#fewcomp;";
            sgutter += "3.10,Home Schoolers,/proj/teachers/basic/spectraltypes/lesson.aspx#homeschool;";
            sgutter += "5,Assessment,/proj/teachers/basic/spectraltypes/assess.aspx;";
            sgutter += "6,Standards,/proj/teachers/basic/spectraltypes/correlations.aspx;";
            sgutter += "6.2,Proj. 2061 (Sci.),/proj/teachers/basic/spectraltypes/correlations.aspx#2061;";
            sgutter += "7,To Student Project,/proj/basic/spectraltypes/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}