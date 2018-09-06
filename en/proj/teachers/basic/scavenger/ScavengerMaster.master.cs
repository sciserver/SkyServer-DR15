using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Basic.Scavenger
{
    public partial class ScavengerMaster : System.Web.UI.MasterPage
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

            master.gselect = 1.1;

            sgutter = "0,Scavenger Hunt,/proj/teachers/basic/scavenger/;";
            sgutter += "1,Overview,/proj/teachers/basic/scavenger/overview.aspx;";
            sgutter += "1.1,Description,/proj/teachers/basic/scavenger/overview.aspx#description;";
            sgutter += "1.2,Concepts,/proj/teachers/basic/scavenger/overview.aspx#concepts;";
            sgutter += "1.3,Target Audience,/proj/teachers/basic/scavenger/overview.aspx#audience;";
            sgutter += "1.4,Classroom Time,/proj/teachers/basic/scavenger/overview.aspx#classtime;";
            sgutter += "1.5,Real World,/proj/teachers/basic/scavenger/overview.aspx#relevance;";
            sgutter += "1.6,Solutions,/proj/teachers/basic/scavenger/overview.aspx#solutions;";
            sgutter += "2,Background,/proj/teachers/basic/scavenger/background.aspx;";
            sgutter += "2.1,Books,/proj/teachers/basic/scavenger/background.aspx#books;";
            sgutter += "2.2,Web sites,/proj/teachers/basic/scavenger/background.aspx#websites;";
            sgutter += "3,Lesson Plan,/proj/teachers/basic/scavenger/lesson.aspx;";
            sgutter += "3.1,Goals,/proj/teachers/basic/scavenger/lesson.aspx#goals;";
            sgutter += "3.2,Prerequisites,/proj/teachers/basic/scavenger/lesson.aspx#prereqs;";
            sgutter += "3.3,Vocabulary,/proj/teachers/basic/scavenger/lesson.aspx#vocab;";
            sgutter += "3.4,Materials,/proj/teachers/basic/scavenger/lesson.aspx#materials;";
            sgutter += "3.5,Preparation Time,/proj/teachers/basic/scavenger/lesson.aspx#preptime;";
            sgutter += "3.6,Classroom Time,/proj/teachers/basic/scavenger/lesson.aspx#classtime;";
            sgutter += "3.7,Procedure,/proj/teachers/basic/scavenger/lesson.aspx#procedure;";
            sgutter += "3.8,Follow-Up Activities,/proj/teachers/basic/scavenger/lesson.aspx#followup;";
            sgutter += "3.9,Few/no Computers,/proj/teachers/basic/scavenger/lesson.aspx#fewcomp;";
            sgutter += "3.10,Home Schoolers,/proj/teachers/basic/scavenger/lesson.aspx#homeschool;";
            sgutter += "4,Teaching Tips,/proj/teachers/basic/scavenger/tips.aspx;";
            sgutter += "4.1,Preparation,/proj/teachers/basic/scavenger/tips.aspx#preparation;";
            sgutter += "4.2,Key Points,/proj/teachers/basic/scavenger/tips.aspx#keypoints;";
            sgutter += "4.3,Class Management,/proj/teachers/basic/scavenger/tips.aspx#management;";
            sgutter += "4.4,Navigation Tool,/proj/teachers/basic/scavenger/tips.aspx#navigation;";
            sgutter += "5,Assessment,/proj/teachers/basic/scavenger/assess.aspx;";
            sgutter += "5.1,Ideas,/proj/teachers/basic/scavenger/assess.aspx#ideas;";
            sgutter += "5.2,Rubrics,/proj/teachers/basic/scavenger/assess.aspx#rubrics;";
            sgutter += "6,Standards,/proj/teachers/basic/scavenger/standards.aspx;";
            sgutter += "6.1,NSES (Science),/proj/teachers/basic/scavenger/standards.aspx#nses;";
            sgutter += "6.2,Proj. 2061 (Sci.),/proj/teachers/basic/scavenger/standards.aspx#2061;";
            sgutter += "6.3,NCTM (Math),/proj/teachers/basic/scavenger/standards.aspx#nctm;";
            sgutter += "6.4,NETS (Technology),/proj/teachers/basic/scavenger/standards.aspx#nets;";
            sgutter += "7,To Student Project,/proj/basic/scavenger/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}