<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="SpectralTypesHome.aspx.cs" Inherits="SkyServer.Proj.Teachers.Advanced.SpectralTypes.SpectralTypesHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
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
      
      <h1>Spectral Types</h1>
      <p>This project teaches students about spectral types of stars.
      Students will learn that the spectral classification system is actually a 
      temperature scale for stars. They will also learn what causes 
      the absorption and emission lines in a star's spectrum, and why stars of different 
      temperatures have different spectral lines. They will also 
      have a brief look at stars that do not match the traditional spectral 
      types.</p>
      <p>If you are doing this project with younger students, you may wish to 
      skip the section on energy levels. As long as they realize that the 
      lines are caused by different elements and can identify the lines in 
      spectra, they should be able to classify the stars.</p>
      
      <p>For more information on spectral types of stars, read the 
      <a href="../../../../astro/stars/stars.aspx">About Astronomy: Stars</a> section 
      of SkyServer, or see one of the following references:</p>
      
      <p>Kaler, James, <i>Stars and Their Spectra</i>, 1997</p>
      <p>
      <a target="_blank" href="http://www.astro.uiuc.edu/~kaler/sow/spectra.html">
      Spectra</a>, a web page by James Kaler</p>
      
      <a name="goals"></a>
      <h1>Project Goals</h1>
      <p>By the end of the project, students should be able to:</p>
      <ul>
        <li><font face="Arial" color="#F5F5F5">understand that each star has a 
        unique spectrum, with a series of absorption and emission lines</font></li>
        <li><font face="Arial" color="#F5F5F5">understand that stars emit thermal 
        radiation with a peak wavelength that depends on the star's temperature</font></li>
        <li><font face="Arial" color="#F5F5F5">explain that stellar absorption lines are 
        caused by electrons in the outer layers of a star's atmosphere absorbing 
        photons from the star</font></li>
        <li><font face="Arial" color="#F5F5F5">know that the pattern of 
        absorption lines depends on the temperature of the star</font></li>
        <li><font face="Arial" color="#F5F5F5">classify the spectrum 
        of a star from its absorption lines</font></li>
        <li><font face="Arial" color="#F5F5F5">find the temperature 
        of a star from its thermal radiation curve if the peak is visible</font></li>
        <li><font face="Arial" color="#F5F5F5">identify which types of stars are 
        most common, and understand that some types of stars are too faint
        observe, even with large telescopes</font></li>
      </ul>
      
      <p></p>
      
      <a name="background"></a>
      <h1>Background Knowledge</h1>
      <p><font face="Arial" color="#F5F5F5">Students should have a basic 
      understanding of the nature of light before undertaking this project. 
      They should know that light is a wave and that different wavelengths 
      correspond to different colors. Students also need to be 
      able of read and understand graphs of spectra.
      </font></p>
      <p><font face="Arial" color="#F5F5F5">The only mathematical calculation is 
      relatively simple - finding the temperature of a star from its thermal
      radiation curve.</font></p>
      
      <a name="structure"></a>
      <h1>Project Structure</h1>
      <p><font face="Arial" color="#F5F5F5">The first section lets students try 
      to classify stars based on their spectra. The students should start 
      learning to look for patterns in spectra during this section.
      After developing their own classification system for stars, they will discuss 
      their system with another group and try to strengthen the system. It is a 
      good idea to set a firm time limit, or students will take a long time on this section. 
      Estimated time: 30 - 40 minutes</font></p>
      <p><font face="Arial" color="#F5F5F5">Next, students will learn a little 
      about the energy levels of atoms, and how electrons jumping between energy 
      levels can absorb and emit light. 
      Students should make the connection between atoms absorbing and emitting 
      light and the peaks and valleys they see in stellar spectra. Estimated 
      time: 20 minutes</font></p>
      <p><font face="Arial" color="#F5F5F5">Then, the students will learn that 
      different elements show absorption lines at different temperatures. They 
      will learn how to use these lines to classify stars, and how to use the 
      lines to estimate the temperatures of stars. Estimated time: 20 minutes</font></p>
      <p><font face="Arial" color="#F5F5F5">Students will have an opportunity to 
      practice classifying stars. Finally, they will compile all their data 
      in an attempt to find out which types of stars are most common, and which 
      types of stars are least common. Estimated time: 45 minutes</font></p>
      <p><font face="Arial" color="#F5F5F5">The information in this unit is 
      closely related to the Colors unit, and it comes up again in the H-R diagram 
      unit.</font></p>
      <p></p>
      
      <a name="questions"></a>
<h1><span class="question">Questions</span> and <span class="exercise">Exercises</span></h1>

<p></p>

<p>Questions are designed to get students thinking about the way scientists work. Exercises 
are designed to get students to explore SkyServer data to solve problems. 
For answers to all questions, 
    email us at <a href="mailto:<%=ConfigurationManager.AppSettings["helpdesk"].ToString()%>"> <%=ConfigurationManager.AppSettings["helpdesk"].ToString()%></a>.
    
    <!--click <A href="#questions" 
  onclick="javascript:answers(8);">here</a>. To see the answers, you must have 
the Adobe Acrobat PDF viewer installed on your computer. Acrobat is available for 
free download from <A href="#questions" 
onclick="window.open('http://www.adobe.com/products/acrobat/readstep2.html');">Adobe's 
web site</a>.--></p>

	  <p>Students should be evaluated based on their written answers 
	  to the questions and exercises. You may use our sample 
	  <a href="#questions" onclick="window.open('spectypesrubric.pdf');">scoring 
	  rubric</a> or develop your own. If you use our scoring rubric, 
	  print out a copy for each student and attach it when you return 
	  his or her work.</p>      

<p>For specific information on any part of the project, click Next.</p>

      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="../default.aspx">
      <img align="left" src="images/previous.jpg"></a>
      <a href="specifics.aspx">
      <img align="right" src="images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
