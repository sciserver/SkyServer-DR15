<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="ColorHome.aspx.cs" Inherits="SkyServer.Proj.Teachers.Advanced.Color.ColorHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<!--<script>
    function answers(id) {
        var link = "http://skyserver.pha.jhu.edu/register/answers/getanswer.asp?id=" + id;
        var w = window.open(link, "POPUP", "scrollbars,resizable,menubar,toolbar");
        w.focus();
    }
</script>-->
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>Color</h1>

<table width="249" border=1 align=right><TR>
<td align="middle"><IMG src="images/5stars.jpg"></td></TR>
</table>

<p>This project shows students the brilliant colors of stars, then teaches them 
why stars come in so many colors. Answering this question takes them through the 
definition of color in astronomy, the nature of thermal (blackbody) radiation, 
and the use of colored telescope filters.</p>
      
<p>For more information on how astronomers use color, and on the physical meaning of 
color, read the <a href="../../../../astro/stars/stars.aspx">About Astronomy: Stars</a> 
section of SkyServer, or look in an astronomy or physics textbook. Here 
are a few possible references:</p>

<p>Halliday, David, Jearl Walker, and Robert Resnick, <i>Fundamentals of Physics</i>, 
John Wiley and Sons, 2000</p>

<p>Hartmann, William K., <i>Astronomy: the Cosmic Journey</i>, Wadsworth, 1989</p>

<p>Kaler, James, <i>Extreme Stars</i>, Cambridge University Press, 2001</p>

<a name="goals"></a>
<h1>Project Goals</h1>

<p>By the end of the project, students should be able to:</p>
      <UL>
        <li><p>Recognize the rich variety of colors in the night sky
        <LI><p>Ask scientific questions about everyday phenomena     
        <LI><p>Know that light is a wave, and explain the relationship between 
        wavelength and observed color
        <LI><p>Know the order of the visible spectrum, from red to violet, and the 
        total spectrum, from radio waves to gamma rays
        <LI><p>Explain how telescope filters are used in astronomy        
        <LI><p>Explain that stars is related to the peak wavelength of light 
        they emit.<LI><p>Explain why red, orange, yellow, and blue stars are common, while stars 
        with other colors from the visible spectrum are rare
        <LI><p>Look up data using several interfaces
        <LI><p>Compare the astronomical definition of color to visual color
        <LI><p>Calculate the radiant flux of a star from its magnitude
        <LI><p>Work with identities among logarithms
        <LI><p>Understand that hot objects give off more thermal radiation than cool 
        objects
        <LI><p>Explain how the peak wavelength of thermal radiation changes as 
        objects heat up
        <LI><p>Calculate peak wavelength of thermal radiation from temperature
        <LI><p>Explain the limitations of finding stellar temperature from color alone
        <LI><p>Find peak wavelengths of observed stellar spectra
        <LI><p>Understand why more filters allow more confidence in determining temperature
        <LI><p>Qualitatively understand how to find astronomical colors from a 
        thermal radiation curve
        <LI><p>Make simple x-y graphs
        <LI><p>Identify cool and hot stars on different color-color diagrams
        <LI><p>Use data to judge when a scientific analysis is appropriate
        <LI><p>Infer the existence of unusually red stars (red giants) from a 
        color-color diagram
        <LI><p>Understand the differences between Population I and Population II stars
        <LI><p>Predict the thermal signatures of stars, planets, galaxies, quasars, and 
        the universe
        <LI><p>Prepare, execute, and interpret an independent scientific research project </LI></UL>
        
<p></p>

<a name="background"></a>
<h1>Background Knowledge</h1>

<p>Before beginning this project, students should:</p>
  <ul>
    <li><p>know that stars come in different colors
    <li><p>know that light is composed of waves with definite wavelengths and frequencies
    <li><p>know what stars, galaxies, and the universe are
    <li><p>know that hot objects glow, and that heat and light are related
    <li><p>have some experience with scientific reasoning
    <li><p>have mathematics experience up to and including Algebra I.
    <li><p>know how to look up information using a web-based interface, such as a 
    search engine
    <li><p>have some familiarity with a spreadsheet program (such as Microsoft Excel)
  </ul>

<p>The section "Color and Amounts of Light," including Exercises 2-4, requires that 
students multiply and divide using logarithms. If your students are not comfortable 
using logarithms, you may skip this section.</p>

<p>They should also have basic computer skills. They should know how to look up information 
using a Web-based interface. It is helpful to know how to use Microsoft Excel or some other 
graphing program, but not necessary.</p>

<p></p>

<a name="structure"></a>
<h1>Project Structure</h1>

<p></p>

<p>The Color project is a long-term project, designed to take about 11 hours to 
complete. You may wish to assign some parts as homework. The project can be divided 
into five chapters:</p>
<table border=0 width=500 align=center>
  <tr>
     <td align=left><p>Chapter 1: Introduction and Exploration</p></td>
     <td><p>1 hour</p></td>
   </tr>
   <tr>
	  <td align=left><p>Chapter 2: Definition of Color in Astronomy</p></td>
	  <td><p>2 hours</p></td>
   </tr>
   <tr>
	  <td align=left><p>Chapter 3: Color and Temperature</p></td>
	  <td><p>3 hours</p></td>
   </tr>
   <tr>
	  <td align=left><p>Chapter 4: Color-Color Diagrams</p></td>
	  <td><p>4 hours</p></td>
   </tr>
   <tr>
	  <td align=left><p>Chapter 5: Other Objects/Research Challenge</p></td>
	  <td><p>1 hour</p></td>
   </tr>
</table>
<p>Chapter 1 begins with the Introduction and ends with the Colors of Stars in the SDSS.<br>
   Chapter 2 begins with The Definition of Color in Astronomy and ends with Light from Stars.<br>
   Chapter 3 begins with Color and Temperature and ends with Observed Spectra.<br>
   Chapter 4 begins with Color-color Diagrams and ends with Colors of Other Objects.<br>
   Chapter 5 begins with Colors of Other Objects and ends with Your Results.</p>

<p>If you would like to use a shorter version of the project with your class, you may 
stop after one of the chapters. For example, if you want your students to learn how 
astronomers define color, without learning the cause of stellar color, you may 
stop after Chapter 2.</p>

<p>If your students are not comfortable using logarithms, you may skip the "Color and 
Amounts of Light" section in Chapter 2. The shorter Chapter 2 should take about 1 hour.

<p>The Research Challenge, on the Colors in Astronomy Research page, 
should <b>not</b> be done in the classroom for credit. It is designed to be a completely 
open-ended and independent scientific investigation, and it should take many hours to 
complete. You may wish to give extra credit for completing it. Invite students to discuss 
their research questions and approaches with you. When students finish Exercise 13 on 
their own, encourage them to <A href="mailto:raddick@pha.jhu.edu" >E-mail their 
results to us</A>. We will look at all the results we receive, and we will put 
them best of them up on the project web site.</p>

<p></p>

<a name="questions"></a>
<h1><span class="question">Questions</span> and <span class="exercise">Exercises</span></h1>

<p></p>

<p>Questions are designed to get students thinking about the reasoning scientists 
use in their work. Exercises come in two types: Practice and Explore. Practice 
exercises let students practice using the concepts introduced in the project. 
Explore exercises are designed to get students to explore SkyServer data to 
discover concepts on their own. For answers to all Questions and Practice 
exercises, and sample responses to all Explore exercises, 
    email us at <a href="mailto:<%=ConfigurationManager.AppSettings["helpdesk"].ToString()%>"> <%=ConfigurationManager.AppSettings["helpdesk"].ToString()%></a>.
    
<!--    click <A href="#questions" 
  onclick="javascript:answers(1);">here</a>. To see the answers, you must have 
the Adobe Acrobat PDF viewer installed on your computer. Acrobat is available for 
free download at <A href="#questions" 
onclick="window.open('http://www.adobe.com/products/acrobat/readstep2.html');">Adobe's 
web site</a>.--></p>

<p>Students should be evaluated based on their written answers to the questions and exercises. You may use our sample <a href="#questions" 
  onclick="window.open('colorrubric.pdf');">scoring rubric</a> or develop your own. 
If you use our scoring rubric, print out a copy for each student and attach 
it when you return his or her work.</p>

<p>For specific information on any part of the project, click Next.</p>

</td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td align=right><A href="specifics.aspx" ><IMG src="images/next.jpg" ></A></td></tr>
</table>

<P></P>

</div>
</asp:Content>
