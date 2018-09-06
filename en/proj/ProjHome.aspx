<%@ Page Title="" Language="C#" MasterPageFile="ProjMaster.master" AutoEventWireup="true" CodeBehind="ProjHome.aspx.cs" Inherits="SkyServer.Proj.ProjHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProjContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
    <!--
<script>

    var urlProjRegister = "<%=globals.UrlProjRegister%>";

    function register(path) {
        var link = urlProjRegister + path + "/register.aspx";
        var w = window.open(link, "POPUP", "scrollbars=yes,status=yes,resizable=yes,width=640,height=600");
        w.focus();
    }

    function answers() {
        var link = urlProjRegister + "students/getanswers.aspx";
        var w = window.open(link, "POPUP", "scrollbars=yes,status=yes,resizable=yes,width=640,height=475");
        w.focus();
    }

    function viewanswers() {
        var link = urlProjRegister + "answers/s-getanswer.aspx";
        var w = window.open(link, "POPUP", "scrollbars,resizable,menubar,toolbar,width=640,height=400");
        w.focus();
        Education
    }

    function evaluate(path) {
        var evalchoice = "";
        if (path == "teachers") {
            evalchoice = "t";
        }
        var link = urlProjRegister + path + "/" + evalchoice + "evaluate.aspx";
        var w = window.open(link, "POPUP", "scrollbars=yes,status=yes,resizable=yes,width=640,height=600");
        w.focus();
    }
</script>-->

<div id="title">Education</div>

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<table align=right border=1>
<tr>
  <td><img src="images/galmess.jpg" alt="Two bright spiral galaxies seen by the SDSS">
</tr>
</table>

<p>In our SkyServer Projects, you will learn science by studying the 
stars and galaxies of the Sloan Digital Sky Survey (SDSS) - 
the same objects that professional astronomers study. Most 
of these objects have never been seen before by human eyes.</p>
    <!--
<p><font color=red><strong>STUDENTS:</strong></font></p>

<ul>
<li><p><a href="javascript:register('students')">Register</a> as a 
SkyServer student user</p></li>
<li><p><a href="javascript:answers()">Request answers</a> to SkyServer projects</p></li>
<li><p><a href="javascript:viewanswers()">View answers</a> you have requested</p></li>
<li><p><a href="javascript:evaluate('students')">Evaluate</a> a project you have finished</p></li>
</ul>
<noscript>
To register as a student user or to request answers, E-mail Jordan Raddick at raddick@jhu.edu
</noscript>
    -->
<p><a href="teachers/"><font color=red><strong>TEACHERS:</strong></font></a></p>

<ul>
<li><p><a href="teach.aspx">Learn</a> how you can use SkyServer in your classroom</p></li>
<li><p><a href="teachers/">See the teacher guides</a> for SkyServer projects</a></p></li>
<!--<li><p><a href="javascript:register('teachers')">Register</a> as a 
SkyServer teacher</p></li>
<li><p><a href="http://tech.groups.yahoo.com/group/skyserver/" target="offsite">Communicate</a> with 
       other teachers on the<br /><a href="http://tech.groups.yahoo.com/group/skyserver/" target="offsite">
       SkyServer Yahoo group</a> (links open in new window)</p></li>-->
</ul>
<!--<noscript>
To register as a teacher, E-mail Jordan Raddick at raddick@jhu.edu
</noscript>-->


<p>Work through these projects at your own pace. Each consists of several 
questions and exercises. If you get stuck, try 
reading our <a href="../astro">About Astronomy</a> or <a href="../sdss">
About SDSS</a> pages. The projects include downloadable Excel spreadsheets to help you 
keep track of your data.</p>

<p>Each project 
ends with a Research Challenge, which lets you do real astronomy research, just like thousands of professional 
astronomers around the world. When you finish the Research Challenge for 
each project, E-mail it to us. We'll look over all the results we get, 
and we'll put the best up on these pages!</p>

<p>Click on one of the following project categories to get started:</p>

<table border =1 cellpadding=3 cellspacing=1>
<tr>
  <td width=150><p><a href="basic/">Basic projects</a></p></td>
  <td><p>For middle school, high school, and Astronomy 101 students, and for people who want 
  a basic understanding of astronomy</p></td>
</tr>
<tr>
  <td width=150><p><a href="advanced/">Advanced projects</a></p></td>
  <td><p>Appropriate for advanced high school and college students, and for people 
  who want a detailed understanding of astronomy</p></td>
</tr>
<tr>
  <td width=150><p><a href="challenges/">Research Challenges</a></p></td>
  <td><p>Independent research in astronomy - you pick a problem and choose how to solve it! The Research 
  Challenges are great for Science Fair projects or guided inquiry activities.</p></td>
</tr>
<tr>
  <td width=150><p><a href="kids/">For Kids</a></p></td>
  <td><p>Projects designed for kids</p></td>
</tr>
<tr>
  <td width=150><p><a href="games/">Games and Contests</a></p></td>
  <td><p>Games for fun, and contests with prizes</p></td>
</tr>
<tr>
  <td width=150><p><a href="links/">Links</a></p></td>
  <td><p>A few of the best astronomy education sites on the Internet</p></td>
</tr>

</table>

<p></p>





<!--
<p>Want to hear when we add new projects? Join the 
<a href=mailing.aspx>SkyServer mailing list</a>!</p>-->
</td></tr>
</table>
<P>

</div>
</asp:Content>
