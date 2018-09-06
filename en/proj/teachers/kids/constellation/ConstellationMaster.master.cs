using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Proj.Teachers.Kids.Constellation
{
    public partial class ConstellationMaster : System.Web.UI.MasterPage
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

            master.gselect = 4.3;

            sgutter = "0,Constellations,/proj/teachers/kids/constellation/;";
            sgutter += "1,Overview,/proj/teachers/kids/constellation/overview.aspx;";
            sgutter += "1.1,Description,/proj/teachers/kids/constellation/overview.aspx#description;";
            sgutter += "1.2,Concepts,/proj/teachers/kids/constellation/overview.aspx#concepts;";
            sgutter += "1.3,Target Audience,/proj/teachers/kids/constellation/overview.aspx#audience;";
            sgutter += "1.4,Classroom Time,/proj/teachers/kids/constellation/overview.aspx#classtime;";
            sgutter += "1.4,Real World,/proj/teachers/kids/constellation/overview.aspx#relevance;";
            sgutter += "2,Background,/proj/teachers/kids/constellation/background.aspx;";
            sgutter += "2.1,Books,/proj/teachers/kids/constellation/background.aspx#books;";
            sgutter += "2.2,Web sites,/proj/teachers/kids/constellation/background.aspx#websites;";
            sgutter += "3,Lesson Plan,/proj/teachers/kids/constellation/lesson.aspx;";
            sgutter += "3.1,Goals,/proj/teachers/kids/constellation/lesson.aspx#goals;";
            sgutter += "3.2,Prerequisites,/proj/teachers/kids/constellation/lesson.aspx#prereqs;";
            sgutter += "3.3,Vocabulary,/proj/teachers/kids/constellation/lesson.aspx#vocab;";
            sgutter += "3.4,Materials,/proj/teachers/kids/constellation/lesson.aspx#materials;";
            sgutter += "3.5,Preparation Time,/proj/teachers/kids/constellation/lesson.aspx#preptime;";
            sgutter += "3.6,Classroom Time,/proj/teachers/kids/constellation/lesson.aspx#classtime;";
            sgutter += "3.7,Procedure,/proj/teachers/kids/constellation/lesson.aspx#procedure;";
            sgutter += "3.8,Follow-Up Activities,/proj/teachers/kids/constellation/lesson.aspx#followup;";
            sgutter += "3.9,Few/no Computers,/proj/teachers/kids/constellation/lesson.aspx#fewcomp;";
            sgutter += "3.10,Home Schoolers,/proj/teachers/kids/constellation/lesson.aspx#homeschool;";
            sgutter += "4,Teaching Tips,/proj/teachers/kids/constellation/tips.aspx;";
            sgutter += "4.1,Introduction,/proj/teachers/kids/constellation/tips.aspx#intro;";
            sgutter += "4.2,Made-Up Con,/proj/teachers/kids/constellation/tips.aspx#simple;";
            sgutter += "4.3,Compare Shapes,/proj/teachers/kids/constellation/tips.aspx#compare;";
            sgutter += "4.4,Orion,/proj/teachers/kids/constellation/tips.aspx#orion;";
            sgutter += "4.5,Other Shapes,/proj/teachers/kids/constellation/tips.aspx#othershapes;";
            sgutter += "4.6,Other Cons,/proj/teachers/kids/constellation/tips.aspx#othercon;";
            sgutter += "4.7,In SkyServer,/proj/teachers/kids/constellation/tips.aspx#inskyserver;";
            sgutter += "4.8,Find Constellations,/proj/teachers/kids/constellation/tips.aspx#find;";
            sgutter += "4.9,Your Constellations,/proj/teachers/kids/constellation/tips.aspx#yours;";
            sgutter += "5,Assessment,/proj/teachers/kids/constellation/assess.aspx;";
            sgutter += "5.1,Ideas,/proj/teachers/kids/constellation/assess.aspx#ideas;";
            sgutter += "5.2,Rubric,/proj/teachers/kids/constellation/assess.aspx#rubric;";
            sgutter += "6,Standards,/proj/teachers/kids/constellation/standards.aspx;";
            sgutter += "6.1,NSES (Science),/proj/teachers/kids/constellation/standards.aspx#nses;";
            sgutter += "6.2,Proj. 2061 (Sci.),/proj/teachers/kids/constellation/standards.aspx#2061;";
            sgutter += "6.3,NCTM (Math),/proj/teachers/kids/constellation/standards.aspx#nctm;";
            sgutter += "6.4,NETS (Technology),/proj/teachers/kids/constellation/standards.aspx#nets;";
            sgutter += "6.5,NCTE (Lang. Arts),/proj/teachers/kids/constellation/standards.aspx#ncte;";
            sgutter += "6.6,NCSS (Soc. Stud.),/proj/teachers/kids/constellation/standards.aspx#ncss;";
            sgutter += "6.7,SSS (Florida),/proj/teachers/kids/constellation/standards.aspx#sss;";
            sgutter += "7,To Student Project,/proj/kids/constellation/;";

            ProjGutter = new Gutter(imgpath, url, Response);
        }
    }
}