<%@ Page Title="" Language="C#" MasterPageFile="HrMaster.master" AutoEventWireup="true" CodeBehind="HrHome.aspx.cs" Inherits="SkyServer.Proj.Teachers.Advanced.HR.HrHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HrContent" runat="server">
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

<h1>The H-R Diagram</h1>

<p>This project leads students through making an Hertzsprung-Russell (H-R) Diagram, 
one of the most basic tools of stellar astrophysicists. </p>

<p>The H-R diagram project is one of the most challenging projects on SkyServer. 
Several of the exercises involve analyzing large amounts of data; it would be 
useful if students knew how to enter data into a spreadsheet and have 
the spreadsheet do some of the calculations for them. Alternatively, a group of students 
could split up the data and do the calculations by hand, each student 
doing a certain number of stars. The last step involves using a simple search tool 
to collect data for hundreds of stars at a time. You will need a spreadsheet capable of 
importing a .csv file, such as Microsoft Excel.</p>

<p>There are many ways of making an H-R diagram, but the diagram 
always has some measure of luminosity on the y-axis and some measure 
of temperature on the x-axis. Luminosity can be measured in terms of 
absolute magnitude, or relative to the brightness of our Sun (in which 
case the Sun has a luminosity of 1). Temperature can be measured in 
terms of spectral type or in terms of color, given by a the traditional<br> 
b-v value or by the SDSS's g-r value.</p>

<p>For more information on how to make an H-R diagram, and on how astronomers use 
the diagrams, read the <a href="../../../../astro/stars/stars.aspx">About Astronomy: 
Stars</a> section of SkyServer, or look in an introductory astronomy textbook. Here are a few suggested 
references for further reading:</p>

<P><i>Stars, </i>by James Kaler</P>
<P><i>Universe, 6th Edition, </i>by Freedman and Kaufmann</P><A name=goals></A>

<a name="goals"></a>
<h1>Project Goals</h1>

<p>By the end of the project, students should be able to:</p>
      <ul>
        <li><font face="Arial" color="#F5F5F5">Understand the definition of luminosity 
        as the total energy output of a star</font></li>
        <li><font face="Arial" color="#F5F5F5">Know that luminosity depends on 
        the temperature and surface area of a star</font></li>
        <li><font face="Arial" color="#F5F5F5">Understand the difference between 
        apparent and absolute magnitude</font></li>
        <li><font face="Arial" color="#F5F5F5">Know that the color of a star 
        will tell you its temperature</font></li>
        <li><font face="Arial" color="#F5F5F5">Explain how different filters 
        can be used to determine the temperature of a star</font></li>
        <li><font face="Arial" color="#F5F5F5">Make an H-R diagram using 
        luminosity, absolute magnitude or visual magnitude on the y-axis, and 
        temperatrue, spectral type, or color on the x-axis</font></li>
        <li><font face="Arial" color="#F5F5F5">Explain how the closest stars to 
        the Sun differ from the brightest stars in the night sky</font></li>
        <li><font face="Arial" color="#F5F5F5">Calculate the distance to a 
        star using parallax</font></li>
        <li><font face="Arial" color="#F5F5F5">Calculate the absolute magnitude 
        of a star using its apparent magnitude and the distance to the star</font></li>
        <li><font face="Arial" color="#F5F5F5">Retrieve data from the Hipparcos 
        mission using a web-based interface</font></li>
        <li><font face="Arial" color="#F5F5F5">Recognize which stars belong to a 
        star cluster</font></li>
        <li><font face="Arial" color="#F5F5F5">Understand that all stars in a 
        globular cluster are effectively the same distance away from the Earth</font></li>
        <li><font face="Arial" color="#F5F5F5">Realize that sometimes large 
        amounts of data are necessary to see a pattern develop</font></li>
        <li><font face="Arial" color="#F5F5F5">Use the MAST search tool to 
        retrieve information from the SDSS database</font></li>
        <li><font face="Arial" color="#F5F5F5">Create an H-R diagram using data 
        from the MAST search tool by importing it into a spreadsheet program</font></li>
      </ul>
<p></p>

<a name="background"></a>
<h1>Background Knowledge</h1>

      <p>The H-R diagram project is complex and involves many different 
      skills. Students need to be well-prepared to tackle this project.</p>
      <p>A lot of background on star colors and spectral types can be 
      found in SkyServer's <a href="../color/">Color</a>
      and <a href="../spectraltypes/">Spectral Types</a>  
      projects. For the H-R diagram project, students need to know that 
      spectral types tell you the temperatures of 
      stars. Students will also need to know how stars' colors relate to their 
      temperatures.</p>
      <p>Graphing is a large part of this project. Students must know how to use 
      a spreadsheet program, since the amount of data used in this lab makes 
      graphing by hand tedious at best. The spreadsheet will also speed up 
      the calculations of distances using parallax angles and absolute 
      magnitudes from Hipparcos data. Exercise 7, the graph made from searching 
      SkyServer's database, should not be attempted without a spreadsheet of some type.</p>
      <p>The calculation of absolute magnitude in the Hipparcos section  
      involves logarithms. Students should be comfortable with high school 
      algebra to be able to do all the calculations necessary.</p>
      <P></P>

<a name="structure"></a>
<h1>Project Structure</h1>

<p></p>

      <p>The first two sections of the project give a basic introduction to H-R diagrams. 
      They also illustrate the differences between the brightest stars we see in the 
      night sky and the closest stars to our Sun. These two sections can be 
      done on their own as a short lesson for a lower-level class, or if time 
      does not permit a deeper exploration of the topic.</p>
      <p>The next section gets into the difficulties of determining the distances 
      to stars. It uses data from the Hipparcos satellite. Students 
      learn how to calculate the distances to stars using parallax. They 
      will use the distances to find absolute magnitudes and to create an H-R 
      diagram for a star cluster.</p>
      <p>There is an optional section on calculating the radius of a star. 
      This problem involves a lot of math, but should be accessible to a strong 
      Algebra II student. Not doing this section will not diminish  the 
      material on H-R diagrams, but some students may find it a rewarding 
      challenge to find a fundamental property of other stars.</p>
      <p>Globular clusters are very far away. You can assume that all the stars 
      are at the same distance. Students will see the difficulty of 
      creating an H-R diagram due to the large amount of data necessary. 
      They will then use one of two simple tools to search the data and make and H-R 
      diagram for a globular cluster using hundreds of data points.</p>

<p></p>

<a name="questions"></a>
<h1><span class="question">Questions</span> and <span class="exercise">Exercises</span></h1>

<p></p>

<p>Questions are designed to get students thinking about the way scientists work. Exercises 
are designed to get students to explore using SkyServer data to solve problems. 
For answers to all questions, email us at 
    <a href="mailto:<%=ConfigurationManager.AppSettings["helpdesk"].ToString()%>"> <%=ConfigurationManager.AppSettings["helpdesk"].ToString()%></a>.
    
    <!--click <A href="#questions" 
  onclick="javascript:answers(3);">here</a>. To see the answers, you must have 
the Adobe Acrobat PDF viewer installed on your computer. Acrobat is available for 
free download at <A href="#questions" 
onclick="window.open('http://www.adobe.com/products/acrobat/readstep2.html');">Adobe's 
web site</a>.--></p>

	  <p>Students should be evaluated based on their written answers 
	  to the questions and exercises. You may use our sample 
	  <a href="#questions" onclick="window.open('hrrubric_jhu.pdf');">scoring 
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
