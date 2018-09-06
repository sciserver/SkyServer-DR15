<%@ Page Title="" Language="C#" MasterPageFile="HubbleMaster.master" AutoEventWireup="true" CodeBehind="HubbleHome.aspx.cs" Inherits="SkyServer.Proj.Teachers.Advanced.Hubble.HubbleHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HubbleContent" runat="server">
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

<h1>The Hubble Diagram Project</h1>

<img src="3ellipse.jpg" align=right>

<p>This project takes students through the evidence that the universe is expanding. The 
discovery of the expanding universe was one of the greatest revelations of 20th Century 
astronomy. They will make a "Hubble diagram," named for the astronomer who first made 
one, for galaxies from the SkyServer database.</p>
      <P>If you are short on time, you can do a shorter version of the project 
      consisting of the Introduction and Simple Diagram sections, up to and 
      including Exercise 4.</P>

<p>The student project's Introduction and Conclusion give some information on how the 
expanding universe was discovered, and what logical steps lead from the Hubble diagram's 
straight line to the expanding universe concept. For more information on the expanding 
universe, its discovery, and the big bang theory, read the 
<a href="../../../../astro/universe/universe.aspx">About Astronomy: Expanding 
Universe</a> section of SkyServer, or look up one of the following 
references:</p>

<p>Hartmann, William K., <i>Astronomy: the Cosmic Journey</i>, Wadsworth, 1989</p>

<p>Sagan, Carl, <i>Cosmos</i>, Random House, 1983</p>

<a name="goals"></a>
<h1>Project Goals</h1>

<p>By the end of the project, students should be able to:</p>
      <UL>
        <LI><p>Describe what scientists mean by an "expanding 
        universe" in their own words       
        <LI><p>Explain how the Hubble diagram supports the idea 
        of an expanding universe           
        <LI><p>Understand how theory and experiment come 
        together to create scientific evidence
        <LI><p>Explain what the big bang is, and how it relates 
        to the expanding universe    
        <LI><p>Look up data using several interfaces
        <LI><p>Understand the relationship between magnitude, 
        brightness, and distance in astronomy
        <LI><p>Explain the concept of redshift, and give 
        examples
        <LI><p>Make a simple x-y graph
        <LI><p>Understand the concept of statistical fit
        <LI><p>Find relative distances to galaxies using algebra
        <LI><p>Understand the advantages and disadvantages of 
        various methods for finding relative distances in astronomy
        <LI><p>Identify galaxies and galaxy clusters in images, 
        and determine which galaxies are members of which clusters
        <LI><p>Judge the precision and accuracy of scientific data
        <LI><p>Identify emission and absorption lines in spectra
        <LI><p>Understand the two interpretations of redshift, 
        and when it is appropriate to use either
        <LI><p>Use spectral templates to find the redshifts of 
        unknown spectra
        <LI><p>Understand Hubble's Law, c z = H<sub>0</sub> d
        <LI><p>Calculate the age of the universe
        <LI><p>Use deductive logic to analyze arguments    </LI></UL>



<p></p>

<a name="background"></a>
<h1>Background Knowledge</h1>

<p>To begin this project, students should have a basic 
      familiarity with astronomical ideas. They should know what galaxies and 
      galaxy clusters are. They should know that light is composed of waves with 
      definite wavelengths and frequencies. They should have some experience 
      with scientific reasoning. They should have completed Algebra I. Exercises 
      8 and 9 require trigonometric functions and the small angle approximation 
      (when x &lt;&lt; 1, tan x&nbsp;=         
                
                   
               
                
                 
         x). If your students have not had 
      trigonometry, you may skip these Exercises and complete the rest of the 
      project.</p>

<p>They should also have basic computer skills. They should know how to look up information 
using a Web-based interface. It is helpful to know how to use Microsoft Excel or some other 
graphing program, but not necessary.</p>

<p></p>

<a name="structure"></a>
<h1>Project Structure</h1>

<p></p>

<p>The first page is an Introduction. It tells students the history of how astronomers 
in the early 1900s discovered that the universe was expanding.</p>

<p>After the Introduction, the project is divided into four parts. In the first 
part, students make a simple Hubble diagram from pre-selected data. They read 
through background material that explains how astronomers use magnitude and 
redshift. Then, they look up six galaxies in the SDSS data, finding their 
magnitudes and redshifts.</p>

<p>Part I should take about 2 hours to finish. For a short version of the project that 
introduces students to the idea that the universe is expanding, and to the 
evidence astronomers use to prove the expansion, use only the Introduction and Exercises 1-4.
The second half of Part I, Exercises 5-6, is intended as a "teaser" - students discover 
that proving the universe is expanding is not as easy as Exercises 1-4 made it seem. The 
galaxies in Exercises 5-6 were chosen to give Hubble diagrams with widely scattered 
data.</p>

<p>In the second part, students learn how to turn their direct measurements of galaxy 
properties into actual measurements of relative distances. Then, they learn how astronomers 
deal with a fundamental confusion: if a galaxy looks large and bright, does that really 
mean it is close to us? Or, could it <b>actually</b> be large and bright, but farther 
away? Students study clusters of galaxies to determine which galaxies are members of 
the same cluster. Lastly, they examine three clusters in the same area of space, and 
find the relative distances to galaxies in each cluster.</p>

<p>Part II should take about 8 hours to finish.</p>

<p>Part III tells students how astronomers calculate redshift. In Part I, students simply 
looked up redshifts from the Skyserver data; in Part III, they will calculate redshifts 
themselves, the same way astronomers do.</p>

<p>Part III should take about 6 hours to complete.&nbsp; Skip part III if you 
would rather have students look up the redshifts on the spectra to save time.</p>

<p>Part IV brings together the conclusions from Parts II and III to make a new, better 
Hubble diagram. Students learn how the Hubble diagram implies that the universe began 
with the big bang, then make their own Hubble diagrams. Be sure to emphasize what an 
important result this is. The students repeated almost exactly the process that made Hubble 
famous - he nearly won the Nobel Prize for doing what they did.</p>

<p>Part IV should take about 3 hours to complete. The last exercise, Exercise 21, is the 
final challenge for this project. Exercise 21 should <b>not</b> be done in the classroom 
for credit. It is designed to be completely open-ended, and to take many hours to complete. 
You may wish to give extra credit for completing it. When students finish Exercise 21 on 
their own, encourage them to <A href="mailto:raddick@pha.jhu.edu" >E-mail their 
diagrams to us</A> so we can put them up on the project web site.</p>

<p></p>

<a name="questions"></a>
<h1><span class="question">Questions</span> and <span class="exercise">Exercises</span></h1>

<p></p>

<p>Questions are designed to get students thinking about the way scientists work. Exercises 
are designed to get students to explore how the SkyServer data suggests that the universe 
is expanding. For answers to all questions, 
    email us at <a href="mailto:<%=ConfigurationManager.AppSettings["helpdesk"].ToString()%>"> <%=ConfigurationManager.AppSettings["helpdesk"].ToString()%></a>.
    <!--click <A href="#" 
  onclick="javascript:answers(4);">here</a>. To see the answers, you must have 
the Adobe Acrobat PDF viewer installed on your computer. Acrobat is available for 
free download at <A href="#" 
onclick="window.open('http://www.adobe.com/products/acrobat/readstep2.html');">Adobe's 
web site</a>.--></p>

	  <p>Students should be evaluated based on their written answers 
	  to the questions and exercises. You may use our sample 
	  <a href="#questions" onclick="window.open('hubblerubric_jhu.pdf');">scoring 
	  rubric</a> or develop your own. If you use our scoring rubric, 
	  print out a copy for each student and attach it when you return 
	  his or her work.</p>
	  
<p>For specific information on any part of the project, click Next.</p>

</td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td align=right><A href="specifics.aspx" ><IMG src="../../../images/next.jpg" ></A></td></tr>
</table>

<P></P>

</div>
</asp:Content>
