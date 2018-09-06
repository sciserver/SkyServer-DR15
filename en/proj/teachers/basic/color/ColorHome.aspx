<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="ColorHome.aspx.cs" Inherits="SkyServer.Proj.Teachers.Basic.Color.ColorHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Color</h1>
      <table width="249" align="right" border="1">
        <tr>
          <td align="middle"><img src="5stars.jpg"></td>
        </tr>
      </table>
      <p>This project shows students the brilliant colors of stars, then teaches 
      them why stars come in so many colors. Answering this question takes them 
      through the definition of color in astronomy, the nature of the thermal 
      radiation given off by hot objects, and the use of colored telescope filters.</p>
      <p>For more information on how astronomers use color, and on the physical 
      meaning of color, read the
      <a href="../../../../astro/stars/stars.aspx">About 
      Astronomy: Stars</a> section of SkyServer, or look in any astronomy or 
      physics textbook. Here are a few possible references:</p>
      <p>Halliday, David, Jearl Walker, and Robert Resnick, <i>Fundamentals of 
      Physics</i>, John Wiley and Sons, 2000</p>
      <p>Hartmann, William K., <i>Astronomy: the Cosmic Journey</i>, Wadsworth, 
      1989</p>
      <p>Kaler, James, <i>Extreme Stars</i>, Cambridge University Press, 2001</p>
      
      <a name="goals"></a>
      <h1>Project Goals</h1>
      <p>By the end of the project, students should be able to:</p>
      <ul>
        <li><font face="Arial" color="#F5F5F5">Recognize the rich variety of 
        colors in the night sky </font></li>
        <li><font face="Arial" color="#F5F5F5">Ask scientific questions about 
        everyday phenomena </font></li>
        <li><font face="Arial" color="#F5F5F5">Know that light is a wave, and 
        explain the relationship between wavelength and observed color </font>
        </li>
        <li><font face="Arial" color="#F5F5F5">Know the order of the visible 
        spectrum, from red to violet, and the total electromagnetic spectrum, from radio waves 
        to gamma rays </font></li>
        <li><font face="Arial" color="#F5F5F5">Explain how telescope filters are 
        used in astronomy </font></li>
        <li><font face="Arial" color="#F5F5F5">Explain how the color of stars 
        stars is related to the peak wavelength of light they emit</font></li>
        <li><font face="Arial" color="#F5F5F5">Explain why red, orange, yellow, 
        and blue stars are common, while stars with other colors from the 
        visible spectrum are rare</font></li>
        <li><font face="Arial" color="#F5F5F5">Look up data using several 
        interfaces</font></li>
        <li><font face="Arial" color="#F5F5F5">Compare the astronomical 
        definition of color to the color they see with their eyes</font></li>
        <li><font face="Arial" color="#F5F5F5">Understand that hot objects give 
        off more thermal radiation than cool objects</font></li>
        <li><font face="Arial" color="#F5F5F5">Explain how the peak wavelength 
        of thermal radiation changes as objects heat up</font></li>
        <li><font face="Arial" color="#F5F5F5">Explain why the color of a star 
        can not be found from its temperature alone</font></li>
        <li><font face="Arial" color="#F5F5F5">Find peak wavelengths of observed 
        stellar spectra</font></li>
        <li><font face="Arial" color="#F5F5F5">Qualitatively understand how to 
        find astronomical colors from a thermal radiation curve</font></li>
        <li><font face="Arial" color="#F5F5F5">Make simple x-y graphs </font>
        </li>
        <li><font face="Arial" color="#F5F5F5">Identify cool and hot stars on 
        different color-color diagrams</font></li>
        <li><font face="Arial" color="#F5F5F5">Use data to judge when a 
        scientific analysis is appropriate</font></li>
        <li><font face="Arial" color="#F5F5F5">Prepare, execute, and interpret 
        an independent scientific research project </font></li>
      </ul>
      
      <a name="background"></a>
      <h1>Background Knowledge</h1>
      <p>Before beginning this project, students should:</p>
      <ul>
        <li><font face="Arial" color="#F5F5F5">know that stars come in different 
        colors </font></li>
        <li><font face="Arial" color="#F5F5F5">know that light is composed of 
        waves with definite wavelengths</font></li>
        <li><font face="Arial" color="#F5F5F5">know what stars, galaxies, and 
        the universe are </font></li>
        <li><font face="Arial" color="#F5F5F5">know that hot objects glow, and 
        that heat and light are related</font></li>
        <li><font face="Arial" color="#F5F5F5">have some experience with 
        scientific reasoning </font></li>
        <li><font face="Arial" color="#F5F5F5">have mathematics experience up to 
        and including Algebra I</font></li>
        <li><font face="Arial" color="#F5F5F5">know how to look up information 
        using a web-based interface such as a search engine </font></li>
        <li><font face="Arial" color="#F5F5F5">have some familiarity with a 
        spreadsheet program such as Microsoft Excel</font></li>
      </ul>
      
      <a name="structure"></a>
      <h1>Project Structure</h1>
      <p>The Color project is a long-term project, designed to take about 11 
      hours to complete. You may wish to assign some parts as homework. The 
      project can be divided into four chapters:</p>
<table border=0 width=500 cellpadding=4 align=center>
  <tr>
     <td align=left width=400><p>Chapter 1: Introduction and Exploration</p></td>
     <td><p>1 hour</p></td>
   </tr>
   <tr>
	  <td align=left width=400><p>Chapter 2: Definition of Color in Astronomy</p></td>
	  <td><p>2 hours</p></td>
   </tr>
   <tr>
	  <td align=left width=400><p>Chapter 3: Thermal Radiation, Temperature, and 
	  Observed Spectra</p></td>
	  <td><p>3 hours</p></td>
   </tr>
   <tr>
	  <td align=left width=400><p>Chapter 4: Color-Color Diagrams</p></td>
	  <td><p>4 hours</p></td>
   </tr>
   <tr>
	  <td align=left width=400><p>Chapter 5: Conclusion/Research Challenge</p></td>
	  <td><p>1 hour</p></td>
   </tr>
</table>
      
      <p>The Research Challenge, on the Conclusion page, 
      should <b>not</b> be done in the classroom for credit. It is designed to 
      be a completely open-ended and independent scientific investigation, and 
      it should take many hours to complete. You may wish to give extra credit 
      for completing it. Invite students to discuss their research questions and 
      approaches with you. When students finish the Research Challenge on their own, 
      encourage them to <a href="mailto:raddick@pha.jhu.edu">E-mail their 
      results to us</a>. We will look at all the results we receive, and we will 
      put the best of them up on the project web site.</p>
      
      <a name="questions"></a>
      <h1><span class="question">Questions</span> and <span class="exercise">
      Exercises</span></h1>
      <p>Questions are designed to get students thinking about the reasoning 
      scientists use in their work. Exercises come in two types: Practice and 
      Explore. Practice exercises let students practice using the concepts 
      introduced in the project. Explore exercises are designed to get students 
      to explore SkyServer data to discover concepts on their own. For answers 
      to all Questions and Practice exercises, and sample responses to all 
      Explore exercises, click
      <a onclick="window.open('answers.pdf');" href="#questions">here</a>. To 
      see the answers, you must have the Adobe Acrobat PDF viewer installed on 
      your computer. Acrobat is available for free download at
      <a onclick="window.open('http://www.adobe.com/products/acrobat/readstep2.html');" href="#questions">
      Adobe's web site</a>.</p>

<p>Students should be evaluated based on their written answers to the questions 
and exercises. You may use our sample <a href="#questions" 
  onclick="window.open('basiccolorrubric_jhu.pdf');">scoring rubric</a> or develop your own. 
If you use our scoring rubric, print out a copy for each student and attach 
it when you return his or her work.</p>
      
      <p>For specific information on any part of the project, click Next</p>
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
      <td><a href="specifics.aspx">
      <img align="right" src="../../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
