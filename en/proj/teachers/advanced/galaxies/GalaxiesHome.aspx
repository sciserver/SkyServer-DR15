<%@ Page Title="" Language="C#" MasterPageFile="GalaxiesMaster.master" AutoEventWireup="true" CodeBehind="GalaxiesHome.aspx.cs" Inherits="SkyServer.Proj.Teachers.Advanced.Galaxies.GalaxiesHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GalaxiesContent" runat="server">
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
      <h1>Galaxies</h1>
      <img border="0" src="images/m51.jpg" width="254" height="318" align="right"></p>
      <p>This project teaches students about the wide variety of galaxies in 
      the universe. Students learn how to classify galaxies using the 
      scheme developed by Edwin Hubble. 
      They will also use a color-color diagram to explore the properties 
      of galaxies. Students will look at the spectra of a wide 
      variety of galaxies to see how spectral differences show up in the visual 
      images of galaxies.</p>
      <p></p>
      <p>This project should be done after completing the <a href="../color">
      Color</a> and <a href="../spectraltypes">Spectral Types</a> 
      projects. If your students have not completed these projects, they can still 
      learn about the types of galaxies by completing the first three pages, up to 
      "Characteristics of Galaxies."</p>
      
      <p>For more information on types of galaxies and on how astronomers study 
      galaxies, read the <a href="../../../../astro/galaxies/galaxies.aspx">About Astronomy: Galaxies</a> 
      section of SkyServer, or look at one of these suggested references:</p>

<P><i>Galaxies, </i>by Timothy Ferris</P>
<P><i>The Color Atlas of Galaxies, </i>by James Wray</P>

<A name=goals></A>    
      <p><font size="4">Project Goals</font></p>
      <p>By the end of the project, students should be able to:</p>
      <ul>
        <li>Describe the Hubble 
        Tuning Fork and use it to classify different types of galaxies</li>
        <li>Explain the characteristics of 
        elliptical, spiral, and irregular galaxies</li>
        <li>Know that galaxies come in 
        clusters, some of which contains thousands of galaxies</li>
        <li>Create color-color diagrams for 
        galaxy clusters</li>
        <li>Classify elliptical and spiral 
        galaxies according to their distinct colors</li>
        <li>Identify some of the most common 
        spectral lines in galaxies</li>
        <li>Use galactic spectral lines to 
        deduce the most common star types present in the galaxies</li>
      </ul>
      
      <p><font size="4">Background Knowledge</font></p>
      <p>The Galaxies project calls on some 
      of the knowledge that students should have from other projects; the Colors 
      and Spectral Types projects are prerequisites for finishing the Galaxies project.</p> 
      <p>Students will need to understand how astronomers measure color. They 
      will need to know how to make color-color Diagrams, and how to 
      interpret the results.</p>
      <p>Students will also need to have a 
      basic understanding of spectra. The spectra of galaxies are 
      really just the combination of spectra from many stars, so students should 
      recognize many of the same spectral lines.</p>
      <p>Students will need to know how to 
      use some computer graphing program such as Microsoft Excel. They will be walked 
      through a simple query of the data using a search tool, so basic computer 
      skills are important.</p>
      
      <p><font size="4">Project Structure</font></p>
      <p>The first section of the project 
      lets students look at a wide variety of galaxies to try to come up with 
      their own classification scheme. They are repeating the analysis that 
      Edwin Hubble went through in the 1920s when he came up with his tuning fork 
      diagram. It is 
      easy to get bogged down in this section if two students in a group sharply 
      disagree over their classificatin scheme, so set a firm time limit (maybe 
      30 minutes) on this section.</p>
      <p>The next section introduces the 
      Hubble Tuning Fork. The students then classify the same galaxies 
      according to Hubble's scheme. It should take about the same amount 
      of time as the first section.</p>
      <p>Making a color-color diagram for the 
      galaxy cluster Abell 2255 should be relatively straightforward. Students have 
      a choice of two search tools, both of which will return results in one to three 
      minutes. Most students will have a color-color diagram in about 30 minutes.</p>
      <p>Sketching the separator line should 
      be easy for students who have completed Algebra I. The line will separate 
      the galaxies into ellipticals and spirals very quickly.</p>
      <p>Looking at the spectra will probably 
      take about an hour. The students should try to 
      correlate the spectra they see to they galaxies they are looking at.</p>
      <p>You may wish to use the <a target="_blank" href="http://burro.astr.cwru.edu/JavaLab/GalCrashWeb/">
      GalCrash</a> Java applet to teach students more about galaxy interactions. This 
      section should take about one hour. If you are short on 
      time, you may learn the program yourself and simply demonstrate it to your students - 
      or, you may skip the program section altogether.</p>
      <p>The research challenge should 
      not be done during class. Interested students should do the exercise on their 
      own; it has lots of subtleties and can take several hours. Students will need to learn 
      how to look up data on a galaxy cluster and eliminate galaxies not in 
      the cluster. They will also need to consider other issues, such as 
      how many galaxies of each type the cluster contains, to get any meaningful 
      results.</p>
      <a name="questions"></a>
      <h1><span class="question">Questions</span> and <span class="exercise">
      Exercises</span></h1>
      <p>Questions are designed to get students thinking about the way 
      scientists work. Exercises are designed to get students to explore using 
      SkyServer data to solve problems. For answers to all 
      questions and exercises, 
          email us at <a href="mailto:<%=ConfigurationManager.AppSettings["helpdesk"].ToString()%>"> <%=ConfigurationManager.AppSettings["helpdesk"].ToString()%></a>.
          <!--click <a href="#questions" onclick="javascript:answers(2);">here</a>. 
      To see the answers, you must have the Adobe Acrobat PDF viewer installed 
      on your computer. Acrobat is available for free download at
      <a href="#questions" onclick="window.open('http://www.adobe.com/products/acrobat/readstep2.html');">
      Adobe's web site</a>.--></p>

	  <p>Students should be evaluated based on their written answers 
	  to the questions and exercises. You may use our sample 
	  <a href="#questions" onclick="window.open('galaxiesrubric_jhu.pdf');">scoring 
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
      <td><a href="../"><img align="left" src="images/previous.jpg"></a>
      <a href="specifics.aspx"><img align="right" src="images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
