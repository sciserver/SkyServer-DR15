<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="Lesson.aspx.cs" Inherits="SkyServer.Proj.Teachers.Basic.SpectralTypes.Lesson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Types of Stars</h1>
      <h1>Lesson Plan</h1>


<a name="goals"></a>
<h2>Goals</h2>

<p>By the end of this project, the student will be able to:</p>

<ul>
  <li>Identify key features of spectra, including the continuum peak and absorption lines</li>
  <li>Explain how atomic energy level transitions explain spectral absorption lines</li>
  <li>Classify stars by H&alpha; line strength or continuum temperature</li>
  <li>Explain the connection between hydrogen line strength and stellar temperature</li>
</ul>

<a name="prereqs"></a>
<h2>Prerequisites</h2>

<p>Students should have worked with spectra before. They should be able to recognize the general shape of a spectrum, and should be able to 
tell the difference between noise and absorption lines.</p>

<a name="vocab"></a>
<h2>Vocabulary</h2>

<ul>
<li><em>Absorption line</em> - A "valley" that appears in a spectrum due to light being absorbed by energy level transitions in atoms</li>

<li><em>&Aring;ngstrom</em> - A unit of length measurement used for spectral wavelengths; one &Aring;ngstrom is one ten-billionth of a meter (1 &Aring; = 10<sup>-10</sup> m)</li>

<li><em>Balmer series</em> - The series of absorption lines resulting from transitions down into the second energy level (n=2) in the hydrogen atom</li>

<li><em>Continuum</em> - The smooth curve of a spectrum</li>

<li><em>Continuum peak wavelength</em> - The wavelength at which the spectral continuum is greatest; it appears as the top of a broad hill in the spectrum</li>

<li><em>Emission line</em> - A "peak" that appears in a spectrum due to light being emitted from energy level transitions in atoms</li>

<li><em>Energy level</em> - An amount of energy that an electron can have in an atom</li>

<li><em>Hydrogen alpha (H&alpha;) line</em> - An absorption line associated with the transition from the third energy level (n=3) to the second energy level (n=2) in the hydrogen atom</li>

<li><em>Noise</em> - Random variations in a spectrum that are not associated with the continuum or emission or absorption lines</li>

<li><em>Spectrum</em> - A graph of the amount of light given off by an object at different wavelengths</li>

<li><em>Thermal radiation</em> - Radiation given off by hot objects, such as stars</li>
</ul>

<a name="materials"></a>
<h2>Materials</h2>

<p>Students should work in groups of two or three. If you want to do the activity online, each group will need a computer with a web 
browser. If you want to do the activity in a 
classroom setting without Internet access, each group will need the following documents, available as Flash paper (requires <a href="http://www.adobe.com/products/flashplayer/">Adobe Flash</a>), 
a PDF document (requires <a href="http://www.adobe.com/products/acrobat/readstep2.html">Adobe Reader</a>), or a Word document.</p>

<table border="1" width="80%">
  <tr>
    <th>Document</th>
    <th>Flash</th>
    <th>PDF</th>
    <th>Word</th>
  </tr>
  <tr>
    <td>Student worksheet</td>
    <td align="center"><a href="swf/worksheet.swf"><img src="../../../../../images/swf_icon.jpg" alt="Get student worksheet as Flash paper" /></a></td>
    <td align="center"><a href="pdf/worksheet.pdf"><img src="../../../../../images/pdf_icon.gif" alt="Get student worksheet as a PDF document" /></a></td>
    <td align="center"><a href="doc/worksheet.doc"><img src="../../../../../images/word_icon.gif" alt="Get student worksheet as a Word document" /></a></td>
  </tr>
  <tr>
    <td>Stellar spectra</td>
    <td align="center"><a href="swf/7stars.swf"><img src="../../../../../images/swf_icon.jpg" alt="Get 7 stellar spectra as Flash paper" /></a></td>
    <td align="center"><a href="pdf/7stars.pdf"><img src="../../../../../images/pdf_icon.gif" alt="Get 7 stellar spectra as a PDF document" /></a></td>
    <td align="center"><a href="doc/7stars.doc"><img src="../../../../../images/word_icon.gif" alt="Get 7 stellar spectra as a Word document" /></a></td>
  </tr>  
  <tr>
    <td>Filled example of counting grid squares</td>
    <td align="center"><a href="swf/filled_example.swf"><img src="../../../../../images/swf_icon.jpg" alt="Get filled example of grid square counting as Flash paper" /></a></td>
    <td align="center"><a href="pdf/filled_example.pdf"><img src="../../../../../images/pdf_icon.gif" alt="Get filled example of grid square counting as a PDF document" /></a></td>
    <td align="center">&nbsp;-&nbsp;</td>
  </tr>   
</table>



<a name="preptime"></a>
<h2>Preparation Time</h2>

<p>The only preparation time required is to set up computers, provide the link to the students, and to duplicate the worksheet and the stellar 
spectra handout.</p>

<p>Also, you are strongly advised to try the activity beforehand, and practice with the 
<a href="../../../../tools/quicklook/quickobj.aspx" target="tools">Quick Look Tool</a>.</p>
 
<a name="classtime"></a>
<h2>Classroom Time</h2>

<p>In a college lab setting, the full activity can be done during one two-hour lab period. If pressed for time, the first activity (classifying by 
spectral class) can be assigned as a pre-lab.</p>

<p>In a K-12 classroom setting, the full activity can be done in three 45-minute class periods.</p>

<!--
<a name="procedure"></a>
<h2>Procedure (Students work in groups of 2 or 3)</h2>

<ol>
<li><p>Have the students read the "Welcome" statement on the SkyServer <a href="../../../../">home page</a>. Explain that they will be using a tool that astronomers are currently using for research.  If time permits have students read <a href="../../../../sdss">About SDSS</a> and <a href="../../../../sdss/telescope/telescope.aspx">The SDSS Telescopes</a> and write down important facts. Call on each group to share one fact. Show some of the pictures from <a href="http://www.sdss.org/tour/index.html">Tour the Project</a> on www.sdss.org, and <a href="../../../../tools/places">Famous Places</a> on SkyServer. If only two class periods are available for this project, do this introduction the day before and assign the reading for homework.</p></li>

<li><p>If students are not familiar with color filters, distribute filters and have students look at different colored objects through the filters and describe what they observe.</p></li>

<li><p>Have students read through the project and practice using the <a href="../../../../tools/chart/navi.aspx" target="tools">Navigation Tool</a>. With less able students, you may need to read through the explanations and instructions as a class.</p></li>

<li><p>Distribute the worksheets and set the stop time for collection of the worksheets. Spot check student work.</p></li>

<li><p>Allow time for students to exchange papers and use the Navigation Tool to enter the coordinates and check the objects listed. Explain that peer review is an important part of science research.</p></li>

</ol>
-->

<a name="followup"></a>
<h2>Follow-up activities</h2>

<p>The <a href="../../../basic/spectraltypes/followup.aspx">Research Challenges</a> listed at the end of the student project give students ideas for further 
work after the main project is complete. These follow-up projects make good ideas for an end-of-term final project or a Science Fair project.</p>

<a name="fewcomp"></a>
<h2>Few or no computer classrooms</h2>

<p>This activity can be done without access to computers by printing out the spectra and student worksheet, and answering all questions by looking 
at the spectra.</p>

<a name="homeschool"></a>
<h2>Home schoolers</h2>

<p>The project can be done by an individual rather than a group. It would be best if a student working alone could exchange his or her results 
with another student to check the work.</p>


 

      
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="background.aspx"><img src="../../../images/previous.jpg" align=left></a>
<!--<a href="tips.aspx"><img src="../../../images/next.jpg" align=right></a></td>-->
<a href="assess.aspx"><img src="../../../images/next.jpg" align=right></a></td>
    </tr>
  </table>
</div>
</asp:Content>
