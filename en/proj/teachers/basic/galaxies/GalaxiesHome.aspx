<%@ Page Title="" Language="C#" MasterPageFile="GalaxiesMaster.master" AutoEventWireup="true" CodeBehind="GalaxiesHome.aspx.cs" Inherits="SkyServer.Proj.Teachers.Basic.Galaxies.GalaxiesHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GalaxiesContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Galaxies</h1>
      <table width=254 align=right border=1>
        <tr><td><img height="318" src="m51.jpg" width="254" align="right" border="0"></td></tr>
        <tr><td><p class=caption align=center>Galaxy M51<br>
        <font size=-2>Image courtesy the <a target="offsite" 
        href="http://heritage.stsci.edu">Hubble Heritage Project</a></font></p></td></tr>
      </table>
      <p>This project teaches students about the wide variety of galaxies in the 
      universe. Students develop a classification scheme for galaxies, learn 
      about the different types of galaxies, then learn to classify galaxies 
      using a scheme developed by Edwin Hubble. Interested students can then 
      make color-color diagrams to explore the properties of galaxies.</p>
      <p>This project should be done after completing the
      <a href="../color">Color</a> project. If 
      your students have not completed this project, they can still learn about 
      the types of galaxies by completing the first seven pages, up to &quot;The 
      Hubble Tuning Fork.&quot;</p>
      <p>For more information on the types of galaxies and how astronomers study 
      them, read the
      <a href="../../../../astro/galaxies/galaxies.aspx">
      About Astronomy: Galaxies</a> section of SkyServer, or look at one of 
      these suggested references:</p>
      <p><i>Galaxies, </i>by Timothy Ferris</p>
      <p><i>The Color Atlas of Galaxies, </i>by James Wray</p>
      <h1>Project Goals</h1>
      <p>By the end of the project, students should be able to:</p>
      <ul>
        <li><font face="Arial" color="#f5f5f5">Describe the Hubble Tuning Fork 
        and use it to classify different types of galaxies</font> </li>
        <li><font face="Arial" color="#f5f5f5">Explain the characteristics of 
        elliptical, spiral, lenticular, and irregular galaxies</font> </li>
        <li><font face="Arial" color="#f5f5f5">Know that galaxies come in 
        clusters, some of which contains thousands of galaxies</font></li>
        <li><font face="Arial" color="#F5F5F5">Identify interacting galaxies in 
        a cluster</font> </li>
        <li><font face="Arial" color="#f5f5f5">Classify elliptical and spiral 
        galaxies according to their distinct colors</font> </li>
        <li><font face="Arial" color="#f5f5f5">Create color-color diagrams for 
        galaxy clusters, and use them to learn about galaxy characteristics</font> </li>      
      </ul>
      <h1>Background Knowledge</h1>
      <p><font face="Arial" color="#f5f5f5">The Galaxies project calls on some 
      of the knowledge that students should have from other projects; the 
      <a href="../color">Color</a> project is a prerequisite for finishing the Galaxies project.</p>
      <p>Students will need to understand how astronomers measure color. To 
      do the Galaxies project's research challenges, they will also need to 
      know how to make color-color Diagrams, and how to interpret the results.</p>
      <p>Students should need to know how to use a computer graphing program 
      such as Microsoft Excel. Alternately, students can plot data 
      points by hand, but will find it quicker and easier with a graphing program.</p>
      <h1>Project Structure</h1>
      <p>The first section of the project lets students look at a wide variety 
      of galaxies to try to come up with their own classification scheme. They 
      are repeating the analysis that Edwin Hubble went through in the 1920s 
      when he came up with his tuning fork diagram. It is easy to get bogged 
      down in this section if two students in a group sharply disagree over 
      their classification scheme, so set a firm time limit (maybe 30 minutes) on 
      this section.</p>
      <p>The next four pages describe the four basic galaxy types: spiral, elliptical, 
      lenticular and irregular. Let the students read these pages to get 
      familiar with the different types of galaxies. Although there are 
      specific mathematical definitions to determine the ellipticity of the 
      galaxy, they are beyond the scope of this lesson. Similarly, students will 
      estimate the difference between Sa, Sb, and Sc galaxies. You might 
      also wish to point out that the bar in a barred spiral can sometimes 
      be sutble.</p>
      <p>The next section introduces the Hubble Tuning Fork. The students look 
      at the same galaxies they classified and classify them with Hubble's 
      scheme. This section should take about the same amount of time as 
      the first section.</p>
      <p>The Galaxy Clusters briefly discusses the fact that galaxies 
      are not evenly distrubuted throughout the universe, but tend to 
      appear together in clusters. Clusters are held together by the mutual 
      gravity between the galaxies.  Students will then look at 
      a galaxy cluster, Abell 0957. Students will look at the galaxies 
      in the cluster to determine what common properties they might have.</p>

      <p>Galaxy collisions have been observed many times, including several times in 
      the SDSS database. There is an optional section where students can 
      use a Java applet to simulate galaxy collisions. You may choose to 
      do this activity if you have time, or interested students may look 
      at the applet on their own.</p>
      <p>The color classification section introduces students to the 
      concept of classifying galaxies by their colors. Since different types of galaxies have 
      different types of stars, you can deduce some of the general properties of 
      galaxies by their colors. Although this technique is not perfect, it 
      is the only way to analyze a database of tens of millions of galaxies.</p>
      <p>Exercises 5 and 6 are the Research Challenges for this project. 
      They should not be completed in class. They are self-directeed, 
      open-ended explorations where students look at galaxies in the SDSS 
      database on their own. Interested students can complete one or both 
      Research Challenges. When they finish the Research Challenges, 
      tell students to <a href="mailto:raddick@pha.jhu.edu?subject=Basic galaxies results">
      E-mail us</a> their results, including their diagrams and the object IDs 
      they used. We'll look over all the results we receive, and we'll put 
      the best of them up on the project web pages.</p>
      
      <a name="questions"></a>
      <h1><span class="question">Questions</span> and <span class="exercise">
      Exercises</span></h1>
      <p>Questions are designed to get students thinking about the way 
      scientists work. Exercises are designed to get students to explore using 
      SkyServer data to solve problems. For sample solutions to all 
      questions and exercises, 
          email us at <a href="mailto:<%=ConfigurationManager.AppSettings["helpdesk"].ToString()%>"> <%=ConfigurationManager.AppSettings["helpdesk"].ToString()%></a>.
          <!--click <a onclick="window.open('<%=globals.UrlProjRegister%>/answers/getanswer.asp?id=12')" href="#questions">here</a>. 
      To see the answers, you must have the Adobe Acrobat PDF viewer installed 
      on your computer. Acrobat is available for free download at
      <a onclick="window.open('http://www.adobe.com/products/acrobat/readstep2.html');" href="#">
      Adobe's web site</a>.--></p>

<p>Students should be evaluated based on their written answers to the questions 
and exercises. You may use our sample <a href="#questions" 
  onclick="window.open('basicgalaxiesrubric_jhu.pdf');">scoring rubric</a> or develop your own. 
If you use our scoring rubric, print out a copy for each student and attach 
it when you return his or her work.</p>
            
      <p>For specific information on any part of the project, click Next.</p>
      </font>
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
