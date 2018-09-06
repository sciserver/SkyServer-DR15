<%@ Page Title="" Language="C#" MasterPageFile="SkySurveysMaster.master" AutoEventWireup="true" CodeBehind="SkySurveysHome.aspx.cs" Inherits="SkyServer.Proj.Teachers.Advanced.SkySurveys.SkySurveysHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SkySurveysContent" runat="server">
<!--<script>
    function answers(id) {
        var link = "http://skyserver.pha.jhu.edu/register/answers/getanswer.asp?id=" + id;
        var w = window.open(link, "POPUP", "scrollbars,resizable,menubar,toolbar");
        w.focus();
    }
</script>-->
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Sky Surveys Project - Teachers' Guide</h1>
      <p>This project lets students look at other attempts 
      to map the universe, and compare those maps to the SDSS's map. Students will see 
      that information from each the surveys complements the others, and taken 
      together, all the surveys help us more completely understand the universe. </p>
      <a name="goals"></a>
      <p><font size=4>Project Goals</font></p>
      <p>By the end of this project, students should be able to:</p>
      <ul>
        <li><font face="Arial" color="#F5F5F5">Compare images from the SDSS and POSS, 
        and explain the differences</font></li>
        <li><font face="Arial" color="#F5F5F5">Find supernovae by comparing SDSS 
        and POSS images</font></li>
        <li><font face="Arial" color="#F5F5F5">Describe the advantages of 
        looking at infrared, x-ray, and visual images</font></li>
        <li><font face="Arial" color="#F5F5F5">Describe what types of objects 
        are likely to give off x-rays</font></li>
        <li><font face="Arial" color="#F5F5F5">Find visual counterparts to 
        x-ray sources</font></li>
        <li><font face="Arial" color="#F5F5F5">Explain how different data sources 
        complement one another to give a better picture of the universe</font></li>
      </ul>
      
      <a name="background"></a>
      <p><font face="Arial" size="4" color="#F5F5F5">Background Knowledge</font></p>
      <p><font face="Arial" color="#F5F5F5">Students should have some 
      familiarity with the electromagnetic spectrum. They will need to 
      know the difference between infrared light, visible light, and x-rays. 
      If the students know how to use a simple image processing program, it 
      would be useful to zoom in on the supernovae.</font></p>
      
      <a name="structure"></a>
      <p><font face="Arial" size="4" color="#F5F5F5">Project Structure</font></p>
      <p><font face="Arial" color="#F5F5F5">This project compares images from 
      SDSS to images from three other sky surveys: the Palomar Sky Survey (POSS), 
      an older visible light survey, the Two Micron All Sky Survey (2MASS), an 
      infrared survey, and the Röntgen satellite (ROSAT), an x-ray survey.</font></p>
      <p><font face="Arial" color="#F5F5F5">The Palomar Sky Survey (POSS) is an 
      older visual survey. It covers a lot of the same area of the sky as 
      the SDSS. After a qualitative comparison, students try to find 
      some of the supernovae discovered by the SDSS by comparing SDSS images to 
      POSS images.</font></p>
      <p><font face="Arial" color="#F5F5F5">2MASS is an all-sky survey currently 
      being carried out in the infrared. About half the sky is currently 
      available to search on the 2MASS web site. Students will notice a 
      couple of things about 2MASS images. First, dust lanes are invisible 
      in the infrared. Dust is transparent to infrared light but opaque to 
      visible light Second, you can see cooler objects in the infrared, so you 
      typically see objects in the infrared you can't see in the visible light.</font></p>
      <p><font face="Arial" color="#F5F5F5">ROSAT is an X-Ray survey. 
      Students will look at some very high-energy sources in this section of the 
      project. They will find the optical counterpart to objects in the 
      ROSAT survey by using SDSS images.</font></p>
      <p><font face="Arial" color="#F5F5F5">The final challenge, Exercise 5, should 
      not be done during class, although you may wish to offer extra credit for 
      completing it. Interested students should do the exercise on their 
      own; it is designed to take several hours to complete. Students should look 
      up information on a single object using as many data sources as possible, then 
      try to deduce as much as they can about the object from what they find.</font></p>

      
      <a name="questions"></a>
      <h1><span class="question">Questions</span> and <span class="exercise">
      Exercises</span></h1>
      <p>Questions are designed to get students thinking about the way 
      scientists work. Exercises are designed to get students to explore using 
      SkyServer data to solve problems. For answers to all 
      questions,
          email us at <a href="mailto:<%=ConfigurationManager.AppSettings["helpdesk"].ToString()%>"> <%=ConfigurationManager.AppSettings["helpdesk"].ToString()%></a>.
           <!--click <a href="#questions" onclick="javascript:answers(7);">here</a>. 
      To see the answers, you must have the Adobe Acrobat PDF viewer installed 
      on your computer. Acrobat is available for free download from
      <a href="#questions" onclick="window.open('http://www.adobe.com/products/acrobat/readstep2.html');">
      Adobe's web site</a>.--></p>
      
	  <p>Students should be evaluated based on their written answers 
	  to the questions and exercises. You may use our sample 
	  <a href="#questions" onclick="window.open('skysurveysrubric_jhu.pdf');">scoring 
	  rubric</a> or develop your own. If you use our scoring rubric, 
	  print out a copy for each student and attach it when you return 
	  his or her work.</p>      
      
      <p>For specific information on any part of the project, click Next.</p>
      <p>&nbsp;</p>
      <p></p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td>&nbsp;<a href="specifics.aspx"><img align="right" src="images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
