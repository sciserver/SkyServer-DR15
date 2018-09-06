<%@ Page Title="" Language="C#" MasterPageFile="QuasarsMaster.master" AutoEventWireup="true" CodeBehind="QuasarsHome.aspx.cs" Inherits="SkyServer.Proj.Teachers.Advanced.Quasars.QuasarsHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="QuasarsContent" runat="server">
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
      <h1>The Quasars Project</h1>
      <p>Quasars are the most distant and luminous objects ever 
      observed. In less than three years of operation, the SDSS discovered 
      26 of the 30 most distant quasars ever seen. Students can see some of these 
      quasars in this project.</p>
      <p>Quasars are the active nuclei of extremely 
      distant galaxies. They are believed to be powered by black holes 
      with masses of millions or even billions times the mass of our Sun.</p>
      <p>Quasars are so far away that their light takes billions of years to 
      reach us - therefore, we see them as they appeared billions of years 
      ago. When we look at a quasar, we are essentially looking backward in 
      time billions of years.</p>
      <p>The Quasars project is fairly difficult, and it assumes a lot of 
      background knowledge in astronomy. Students must know how to identify 
      spectral lines, how to qualitatively relate redshift to distance, and 
      how to create color-color diagrams. We recommend that students complete 
      the <a href="../hubble/">Hubble diagram</a> project, the <a href="../spectraltypes">
      Spectral Types</a> project, and the <a href="../colors">Colors</a> project 
      before tackling the Quasars project.</p>
      <p>For a shorter version of the project, you may wish to omit the sections on 
      querying the SDSS database. These sections are rather 
      advanced, and students will be analyzing data for 1000 quasars at once. 
      If you students are not well versed in Excel or some other spreadsheet program, 
      you would probably be better off doing the shorter project.</p>
      <p>To do the shorter version of the project, end with the "Power Source of 
      Quasars" page.</p>
      <p>For more information about quasars or about the history of their 
      discovery, read the <a href="../../../../astro/galaxies/galaxies.aspx#quasars">About 
      Astronomy</a> section of SkyServer, or one of the following refernces:
      
      <p><i>Black Holes, Quasars, and the Universe</i>, by Harry L. Shipman
      <p><i>First Light</i>, by Richard Preston
      <p><i>Our Evolving Universe</i>, by Malcom S. Longair
      <p><a target="_blank" href="http://www.phys.vt.edu/~jhs/faq/quasars.html">The 
      Quasars FAQ</a>, by John Simonetti</p>
      <p>"The Rise and Fall of Quasars," by G. Mark Voit, <i>Sky and Telescope</i>, May 1999</p>
      
      <a name="goals"></a>
      <h1>Project Goals</h1>
      <p>By the end of this project, students should be able to:</p>
      <ul>
        <li><font face="Arial" color="#F5F5F5">Know that quasars were discovered due 
        to strong radio emissions that some of them give off.</font></li>
        <li><font face="Arial" color="#F5F5F5">Understand that redshift of light 
        is caused by an object moving away from us very rapidly.</font></li>
        <li><font face="Arial" color="#F5F5F5">Recognize the movement of spectral 
        lines to the red as redshift increases.</font></li>
        <li><font face="Arial" color="#F5F5F5">Correlate red shift to velocity.
        </font> </li>
        <li><font face="Arial" color="#F5F5F5">Recognize quasars as extremely 
        distant objects that are only seen at high redshifts.</font></li>
        <li><font face="Arial" color="#F5F5F5">Know that quasars do not currently 
        exist in the universe. The youngest quasars died out hundreds of 
        millions of years ago. Scientists do not know why.</font></li>
        <li><font face="Arial" color="#F5F5F5">Know that quasars must emit tremendous 
        amounts of energy for them to be visible at such great distances.</font></li>
        <li><font face="Arial" color="#F5F5F5">Realize that the power source of 
        quasars is very small, about the size of our solar system.</font></li>
        <li><font face="Arial" color="#F5F5F5">Know that quasars are believed 
        to be powered by matter falling into a supermassive black hole at the 
        center of early galaxies.</font></li>
        <li><font face="Arial" color="#F5F5F5">Compare visual images and radio 
        images of quasars to see if they are radio loud or radio quiet.</font></li>
        <li><font face="Arial" color="#F5F5F5">Run a simple query of a database and 
        import the results into a spreadsheet program.</font></li>
        <li><font face="Arial" color="#F5F5F5">Create color-color diagrams and 
        color-redshift diagrams for quasars.</font></li>
      </ul>
      <p></p>
      
      <a name="background"></a>
      <h1>Background Knowledge</h1>
      <p>This project assumes a 
      fair amount of background from other SkyServer projects. Students should 
      be familiar with the concept of redshift and that the universe is 
      expanding. They also need to know that due to the time it takes 
      light to reach us, we are looking into the past when we see objects 
      hundreds of millions or even billions of light years away. Students can 
      learn these concepts in the <a href="../hubble">Hubble diagram</a> project.</p>
      <p>To compare the star, galaxy, and quasar spectra, students should know 
      how to identify absorption and emission lines in spectra. They can learn 
      how to identify these lines in the <a href="../spectraltypes">Spectral 
      Types</a> project.</p>
      <p>For the final 
      project, students will need to be familiar with color-color diagrams to 
      they study the colors of quasars. They can practice making these diagrams in the 
      <a href="../colors">Colors</a> project. In addition, spreadsheet skills will be 
      important as they tackle the final challenge.</p>
      
      <a name="structure"></a>
      <h1>Project Structure</h1>
      <p>The first part of the project introduces students to quasars in the 
      way astronomers first discovered them: by looking at objects with strong 
      radio emissions. In the first section, students look at data from the 
      VLA FIRST SURVEY, a radio counterpart to the SDSS. VLA FIRST will look at 
      10,000 square degrees of sky, including areas that SDSS does. Objects that emit 
      radio waves are marked in the SDSS database. Students will look at four 
      different quasars and their radio emissions.</p>
      <p>Next, students will look at the spectra of 
      quasars. They will compare the spectra of quasars to those of normal 
      stars and galaxies. Students will also see how the emission lines 
      of quasars change as their redshifts increase.</p>
      <p>Students will then learn about 
      the power source of quasars. From all available evidence, the most likely 
      candidate is a supermassive black hole at the center of a 
      distant galaxy. As the black hole pulls gas into it, the gas is heated up to 
      millions of degrees, emitting vast amounts of energy.</p>
      <p>In the last, and most challenging, part of the project, students 
      use SkyServer's SQL Query tool to obtain data for 1000 quasars. They 
      can then use this data to make color-color or color-redhsift diagrams. 
      <a name="questions"></a>
      <h1><span class="question">Questions</span> and <span class="exercise">
      Exercises</span></h1>
      <p>Questions are designed to get students thinking about the way 
      scientists work. Exercises are designed to get students to explore 
      SkyServer data. For answers to all 
      questions and exercises, 
          email us at <a href="mailto:<%=ConfigurationManager.AppSettings["helpdesk"].ToString()%>"> <%=ConfigurationManager.AppSettings["helpdesk"].ToString()%></a>.
          <!-- click <a onclick="javascript:answers(6);" 
      href="#questions">here</a>. 
      To see the answers, you must have the Adobe Acrobat PDF viewer installed 
      on your computer. Acrobat Reader is available for free download at
      <a onclick="window.open('http://www.adobe.com/products/acrobat/readstep2.html');" 
      href="#questions">
      Adobe's web site</a>.--></p>
      
	  <p>Students should be evaluated based on their written answers 
	  to the questions and exercises. You may use our sample 
	  <a href="#questions" onclick="window.open('quasarsrubric_jhu.pdf');">scoring 
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
      <td><a href="../">
      <img align="left" src="images/previous.jpg"></a>
      <a href="specifics.aspx">
      <img align="right" src="images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
