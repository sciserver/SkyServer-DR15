<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="LabsHome.aspx.cs" Inherits="SkyServer.Help.Cooking.LabsHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Cooking with Sloan</div>

<div id="transp">

<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<table width="100%" border="0" cellpadding="2" cellspacing="2">
  <tr>
    <th width="33%" class="menuheadlink"><a href="../general/">General tasks</a></span></th>
    <th width="33%" class="menuheadlink"><a href="../solarsystem">Solar System</a></th>
    <th width="33%" class="menuheadlink"><a href="../stars">Stars</a></th>
  </tr>
  <tr>
    <th width="34%" class="menuheadlink"><a href="../galaxies">Galaxies</a></th>
    <th width="34%" class="menuheadlink"><a href="../quasars">Quasars/Cosmology</a></th>
    <th width="34%" style="font-size:large"><b>Teaching/Labs</b></th>        
<!--    <th width="34%" class="menuheadlink"><a href="../labs">Teaching/Labs</a></th>-->
  </tr>
</table>

<h2>Teaching and Labs</h2>

<p>Astronomy has always been a challenging subject to teach hands-on, because of the logistical 
difficulties that students encounter in collecting data. Data from the SDSS can provide a source of 
lab activities and student research projects for all levels of astronomy education. These guides 
will show you, step-by-step, how to accomplish tasks that are important parts of the astronomy curriculum.</p>

<p>We encourage instructors to create their own projects with SDSS data. We maintain a page with 
<a href="../../../proj/user/">SDSS-based activities created by instructors</a>. Happy teaching!</p>

<h2>How do I...</h2>

<ol>

<li><p><a href="hubble.aspx">Create a Hubble Diagram to show the expanding universe?</a></p></li>

</ol>

<h2>SkyServer Projects</h2>

<p>In addition to the guides shown here, SkyServer features a series of <a href="../../../proj">Projects</a> 
designed as hands-on, inquiry-based experiences in science. The projects are designed as labs and supplemental 
experiences in K-12 and college science courses, and they make excellent labs for Astronomy 101 courses.</p>

<hr />

<p><a href="../">Back to Cooking with Sloan main page</a></p>
<p><a href="../../">Back to Help main page</a></p>
<p> <a href="<%=globals.ContactUrl+"&url="+Server.UrlEncode("http://"+Request.ServerVariables["SERVER_NAME"]+Request.ServerVariables["SCRIPT_NAME"]+Request.ServerVariables["QUERY_STRING"])%>">Contact Help Desk </a></p>

<p>&nbsp;</p>


</div>
</asp:Content>
