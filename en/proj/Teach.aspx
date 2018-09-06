<%@ Page Title="" Language="C#" MasterPageFile="ProjMaster.master" AutoEventWireup="true" CodeBehind="Teach.aspx.cs" Inherits="SkyServer.Proj.Teach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProjContent" runat="server">
<!--<script>

    var urlProjRegister = "<%=globals.UrlProjRegister%>";

    function register(path) {
        var link = urlProjRegister + path + "/register.aspx";
        var w = window.open(link, "POPUP", "scrollbars=yes,status=yes,resizable=yes,width=640,height=600");
        w.focus();
    }
</script>-->

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="3">
<tr><td>
      <p></p>
      <p align="center"><font size="+5">Welcome Teachers!</font></p>
      <table border="0" cellpadding="0" cellspacing="0" width="34%" id="AutoNumber1" align="right">
        <tr>
          <td width="100%">
          <img src="images/752-3-521.jpg" border="0" align="left" alt="Two bright spiral galaxies seen by the SDSS" /></td>
        </tr>
      </table>
      <p>We are happy to present a variety of lesson plans that use 
      data from the Sloan Digital Sky Survey. Our materials will 
      show your students everything from asteroids in our own Solar System to 
      the most distant quasars ever observed! Students can explore the sky using 
      all using the same high-quality data that professional astronomers 
      use.</p>
      <h2><a href="teachers/default.aspx">Go to teacher guides</a></h2>
      <p>&nbsp;</p>
      <h1>What does SkyServer offer?</h1>
      <p>With SkyServer, you and your students will have access to:</p>
      <ul>
        <li>Full color images of almost <%=globals.NObj%> objects</li>
        <li>Complete photometric (imaging) data for every object</li>
        <li>Spectra of almost <%=globals.NSpec%> objects</li>
        <li>Access to data on almost every 
        type of astronomical object</li>
        <li>Excel workbooks that allow students to save data easily</li>      
      </ul>
      <h1>What types of lessons are available?</h1>
      <p>SkyServer lessons are written at a variety of levels, for students from 
      grade school through introductory college courses. Lessons are 
      designed to give teachers flexibility to implement them in ways that 
      will fit the time constraints of the class and the abilities of the 
      students.</p>
      <p>Lessons are available on a wide variety of topics including:</p>
      <ul>
        <li>The Hubble Diagram</li>
        <li>Colors in Astronomy</li>
        <li>Spectral Types of Stars</li>
        <li>Image Processing</li>
        <li>Asteroids</li>
        <li>The H-R Diagram</li>
        <li>Galaxies</li>
        <li>Sky Surveys</li>
        <li>Quasars</li>
      </ul>
      <p>More lesson plans are being added on a regular basis, so check back 
      soon!</p>
      <h1>What materials are available for teachers?</h1>
      <p>Teacher's pages are available for all lessons. The teacher's pages 
      include:</p>
      <ul>
        <li>Notes and teaching tips on all 
        lessons</li>
        <li>Sample solutions and 
        scoring rubrics for all questions and exercises</li>
        <li>Strategies to help you fit the 
        lessons into your available time</li>
        <li>Correlations to national Math and 
        Science Standards</li>
      </ul>
      <h1>How much does this cost?</h1>
      <p>Nothing!</p>
      <p>All materials on SkyServer are available free of charge, including all 
      lesson plans, access to the teacher's pages, and access to all data.</p>
      <h1>So, how do I access all this material?</h1>
      <p>All the student lessons can be accessed from the
      <a href="default.aspx">Projects</a> main page. All the 
      teacher's pages can be accessed from the <a href="teachers/default.aspx">
      teacher's site</a>.</p>
<!--      <p>To view sample solutions or to use our evaluation 
      forms, please fill out a simple 
      <a href="javascript:register('teachers')" >
      registration form</a> (opens in a new window). 
      <noscript>
      To register to see the sample solutions, E-mail Jordan Raddick at raddick@jhu.edu
      </noscript>
      We will not give your information to any other organization. 
      For details, see our privacy policy.</p>-->
      <p></p>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="default.aspx">
      <img align="left" src="images/previous.jpg" alt="Back" /></a>
      </td>
    </tr>
  </table>
</div>

</asp:Content>
