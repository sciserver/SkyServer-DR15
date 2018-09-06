<%@ Page Title="" Language="C#" MasterPageFile="TeachersMaster.master" AutoEventWireup="true" CodeBehind="TeachersHome.aspx.cs" Inherits="SkyServer.Proj.Teachers.TeachersHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TeachersContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<!--<script>

    var urlProjRegister = "<%=globals.UrlProjRegister%>";

    function evaluate(path) {
        var link = urlProjRegister + path + "/tevaluate.aspx";
        var w = window.open(link, "POPUP", "width=640,height=600,scrollbars,resizable");
        w.focus();
    }
    function update(path) {
        var link = urlProjRegister + path + "/update.aspx";
        var w = window.open(link, "POPUP", "width=640,height=360,scrollbars,resizable");
        w.focus();
    }
    function answers() {
        var link = urlProjRegister + "answers/getanswer.aspx";
        //	var w = window.open(link,"POPUP","width=640,height=600,scrollbars,resizable");
        var w = window.open(link, "POPUP", "scrollbars,resizable,menubar,toolbar");
        w.focus();
    }
</script>-->

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<table align=right border=1>
<tr>
  <td><img src=images/dusty.gif>
</tr>
</table>

<h1>SkyServer Projects - Teacher Guides</h1>

<p>Welcome to the index of teacher guides for SkyServer's science projects!</p>

<p>These projects are constantly being updated, and we will add more 
projects in the near future. Check back often!</p>

<p>The projects now include Excel workbooks, so students can save their work without 
having to copy and paste.</p>

<p>Click on one of the following project categories to view the teacher guides:</p>

<table border =1 cellpadding=3 cellspacing=1>
<tr>
  <td width=150><p><a href="basic/">Basic projects</a></p></td>
  <td><p>Appropriate for middle and high school students, for college Astro 101 
  students, and for curious adults who want a basic understanding of astronomy</p></td>
</tr>
<tr>
  <td width=150><p><a href="advanced/">Advanced projects</a></p></td>
  <td><p>Appropriate for advanced high school and college science students, and for adults 
  who want a more detailed, mathematical understanding of astronomy</p></td>
</tr>
<tr>
  <td width=150><p><a href="kids/">For Kids</a></p></td>
  <td><p>Projects designed for students in 3rd through 8th grades</p></td>
</tr>
<tr>
  <td width=150><p><a href="challenges/">Challenges</a></p></td>
  <td><p>Long-term, self-paced research projects for advanced, motivated students</p></td>
</tr>


</table>

<p><font color=red><strong>TEACHERS:</strong></font></p>
<ul>
<!--<li><p>
<a href="javascript:evaluate('teachers')">Evaluate</a> projects that your students 
have completed. We want to know what you think!</li>
<li><p>
<a href="javascript:update('teachers')">Update</a> your registration information or password</li>
<li><p>
<a href="javascript:answers()">View</a> sample solutions(*) to SkyServer projects</li>-->
<li><p>
<a href="mailto:raddick@pha.jhu.edu?subject=Project contact">Contact 
us</a> if you are interested in helping us to develop or evaluate this site!
</ul>

<p>We are also conducting diagnostic evaluations to help us learn how 
effective our projects are in teaching science. 
<a href="mailto:raddick@pha.jhu.edu?subject=Diagnostic evaluations">Contact 
us</a> if you are interested in helping us with these studies, and we will 
send you our diagnostic materials.</p>

</td></tr>
</table>
<P>

</div>
</asp:Content>
