<%@ Page Title="" Language="C#" MasterPageFile="ScavengerMaster.master" AutoEventWireup="true" CodeBehind="Overview.aspx.cs" Inherits="SkyServer.Proj.Teachers.Basic.Scavenger.Overview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ScavengerContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<!--<script>

    var urlProjRegister = "http://skyserver.pha.jhu.edu/register/";

    function register(path) {
        var link = urlProjRegister + path + "/register.asp";
        var w = window.open(link, "POPUP", "scrollbars=yes,status=yes,resizable=yes,width=640,height=600");
        w.focus();
    }

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
      <h1>Scavenger Hunt</h1>
      <h1>Overview</h1>

<a name="description"></a>
<h2>Project Description</h2>

<p>This project allows students to experience the wonder of studying the sky through a research telescope. Students hunt for 18 specified objects using the <a href="../../../../tools/chart/navi.aspx" target="tools">Navigation Tool</a>, a part of the SkyServer website that is used by professional astronomers. The objects include stars, galaxies, quasars, asteroids and meteors.</p>

<p>While playing this game, students are introduced to the variety of images seen by the SDSS telescope. They learn to describe an object’s location by using celestial coordinates (right ascension and declination), and they learn to describe the color and brightness of a star quantitatively. By the end of the activity, students are able to classify galaxies and differentiate stars by the magnitude observed through color filters.</p>

<p>The project is a good introduction to the SkyServer website and tools, and can be used to prepare students to do other SkyServer projects.</p> 

<a name="concepts"></a>
<h2>Concepts</h2>

<ul>
  <li>Stars are described by magnitude as observed through different filters</li>
  <li>Objects in the sky are located using celestial coordinates right ascension (ra) and declination (dec), which are like longitude and latitude on Earth</li>
  <li>A galaxy may be classified by its appearance</li>
  <li>The SkyServer website may be used to study celestial objects by students, as well as research scientists</li>
</ul>

<a name="audience"></a>
<h2>Target Audience</h2>


<p>Middle school or high school students can use this project as an introduction to objects to be found in the sky. Astro 101 students can use it as an introduction to a real astronomy research project. Many instructors who plan to use other SkyServer projects assign the Scavenger Hunt to allow students to become familiar with SkyServer tools.</p>

<p>The Scavenger Hunt provides astronomy students with an entertaining introduction to classification of galaxies and quantitative observation of stars as well as an example of the use of celestial coordinates. Physics and physical science students can use the project as an exciting application of the use of telescopes following an optics unit or as an extension of lessons about the electromagnetic spectrum.</p>

<a name="classtime"></a>
<h2>Classroom Time</h2>

<p>The project can be done in two or three 45-minute periods.</p>

<a name="relevance"></a>
<h2>Real World Relevance</h2>

<p>Students are able to view the night sky through the eyes of an astronomer to gain an appreciation of the night sky and the variety and beauty of celestial objects. This project also shows students the advantage of cooperative group work and allows them to practice the important life skill of working together.</p>

<a name="solutions"></a>
<h2>Sample Solutions</h2>

<p>Because each team goes on the Scavenger Hunt independently, each team's answers should be different. SkyServer has thousands of examples of each type of object, so this project has many valid answers. The sample solutions below are just one possible set of answers.</p>

<p>To view SkyServer sample solutions,
    email us at <a href="mailto:<%=ConfigurationManager.AppSettings["helpdesk"].ToString()%>"> <%=ConfigurationManager.AppSettings["helpdesk"].ToString()%></a>.
    
     <!--you must be a <a href="#solutions" onclick="javascript:register('teachers')">registered SkyServer teacher</a>.</p>

<p><a href="#solutions" onclick="javascript:answers(13);">Sample solutions</a>--></p>

      
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="default.aspx"><img src="../../../images/previous.jpg" align=left></a>
<a href="background.aspx"><img src="../../../images/next.jpg" align=right></a></td>
    </tr>
  </table>
</div>
</asp:Content>
