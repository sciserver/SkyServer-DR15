<%@ Page Title="" Language="C#" MasterPageFile="AsteroidsMaster.master" AutoEventWireup="true" CodeBehind="AsteroidsHome.aspx.cs" Inherits="SkyServer.Proj.Teachers.Basic.Asteroids.AsteroidsHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AsteroidsContent" runat="server">
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
      <h1>Asteroids!</h1>
      <p>In this project, students will learn how to visually identify asteroids in SDSS images. 
      Stars, galaxies and quasars are so far away that they do not appear to 
      move, even if the are actually traveling very fast. Asteroids, on 
      the other hand, are relatively close to Earth and appear to move quickly 
      across the sky. Students can use this movement to visually detect 
      asteroids in SDSS photos.</p>
      <p>The SDSS Data Release  Data Release <%=globals.ReleaseNumber%> contains <%=globals.NAsteroids%>. Most 
      fields contain at least one asteroid and many contain more than one. 
      Some of the asteroids are bright and move very quickly, making them stand 
      out. Others are dim and slow moving, and take a much more trained eye 
      to spot. Everyone can find some asteroids in the data, but a skilled 
      observer will find many more!</p>
      
      <a name="goals"></a>
      <h1>Project Goals </h1>
      <p>By the end of this project, students should be able to:</p>
      <ul>
        <li><font face="Arial" color="#F5F5F5">Know that stars are so far away that
        they do not appear to move, even over the course of a human lifespan</font></li>
        <li><font face="Arial" color="#F5F5F5">Know that in addition to the nine planets, the Solar System 
        contains many small bodies called asteroids
        <li><font face="Arial" color="#F5F5F5">Identify the location of most asteroids as 
        between the orbits of Mars and Jupiter</font></li>
        <li><font face="Arial" color="#F5F5F5">Know that asteroids are made of material 
        left over from the formation of the Solar System</font></li>
        <li><font face="Arial" color="#F5F5F5">Understand that asteroids and 
        planets move relative to the more distant stars, and that this motion gives 
        away their presence</font></li>
        <li><font face="Arial" color="#F5F5F5">Know that the SDSS camera takes 
        pictures through five different filters over the course of several 
        minutes</font></li>
        <li><font face="Arial" color="#F5F5F5">Explain how SDSS images can be used to detect 
        asteroids - the asteroids move between the time the first and last picture is taken.</font></li>
        <li><font face="Arial" color="#F5F5F5">Identify fast and slow moving asteroids in SDSS 
        images, and tell the difference between them</font></li>
      </ul>
      
      <a name="background"></a>
      <h1>Background Knowledge</h1>
      <p><font face="Arial" color="#F5F5F5">Students should be familiar with the 
      solar system and the nine known planets. They should also be aware that 
      the planets appear to move relative to the stars. This fact will 
      make it easier for them to understand why asteroids also appear to move 
      relative to the background. </font></p>
      <p><font face="Arial" color="#F5F5F5">A basic knowledge of color filters 
      would be useful. If your school has a theatre, obtain a few 
      gels from the lights for a demonstration of filters. Students  
      should also know or be taught about how red and green light combine to make 
      yellow. </font></p>
      <p><font face="Arial" color="#F5F5F5">No mathematical 
      manipulation is required in this project, except for students keeping 
      track of how many asteroids they find!</font></p>
      
      <a name="structure"></a>
      <h1>Project Structure</h1>
      </p>
      <p><font face="Arial" color="#F5F5F5">This project is relatively short and 
      could be completed in 1 - 2 hours. The time it takes depends mainly on how long you wish 
      to give students to search for asteroids. You probably will need about 
      20 - 25 minutes of introduction to discuss asteroids and camera filters. </font></p>
      <p><font face="Arial" color="#F5F5F5">Students will then find three 
      asteroids for practice. You may want to check to be sure they have 
      really found the asteroids (the positions of the asteroids are marked on 
      diagrams in the answers). This process should take 10 - 15 
      minutes.</font></p>
      <p><font face="Arial" color="#F5F5F5">The asteroid hunt can be as long or 
      as short as you like. Fifteen to thirty minutes is probably about right. 
      After the hunt, take the groups that have found the most asteroids 
      and have the class verify their findings. This is a good opportunity 
      to emphasize that scientific findings must be verified by others!</font></p>
      
      <a name="questions"></a>
      <h1><span class="question">Questions</span> and <span class="exercise">
      Exercises</span></h1>
      <p>Questions are designed to get students thinking about the way 
      scientists work. Exercises are designed to get students to explore using 
      SkyServer data to solve problems. For answers to all 
      questions and exercises, 
          email us at <a href="mailto:<%=ConfigurationManager.AppSettings["helpdesk"].ToString()%>"> <%=ConfigurationManager.AppSettings["helpdesk"].ToString()%></a>.
          <!--click
      <a href="#questions" onclick="javascript:answers(9);">here</a>. To 
      see the answers, you must have the Adobe Acrobat PDF viewer installed on 
      your computer. Acrobat is available for free download at
      <a href="#questions" onclick="window.open('http://www.adobe.com/products/acrobat/readstep2.html');">
      Adobe's web site</a>.--></p>
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
      <td>&nbsp;<a href="specifics.aspx"><img align="right" src="images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
