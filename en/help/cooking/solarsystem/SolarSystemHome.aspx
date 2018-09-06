<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="SolarSystemHome.aspx.cs" Inherits="SkyServer.Help.Cooking.SolarSystemHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Cooking with Sloan</div>

<div id="transp">

<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<table width="100%" border="0" cellpadding="2" cellspacing="2">
  <tr>
    <th width="33%" class="menuheadlink"><a href="../general/">General tasks</a></span></th>
    <th width="34%" style="font-size:large"><b>Solar System</b></th>        
<!--    <th width="33%" class="menuheadlink"><a href="../solarsystem">Solar System</a></th>-->
    <th width="33%" class="menuheadlink"><a href="../stars">Stars</a></th>
  </tr>
  <tr>
    <th width="34%" class="menuheadlink"><a href="../galaxies">Galaxies</a></th>
    <th width="34%" class="menuheadlink"><a href="../quasars">Quasars/Cosmology</a></th>
    <th width="34%" class="menuheadlink"><a href="../labs">Teaching/Labs</a></th>
  </tr>
</table>

<h2>Solar System Science</h2>

<p>The SDSS is primarily a one-epoch sky survey, so it does not follow up on Solar System bodies that 
it sees. Nevertheless, the SDSS <%=globals.Release %> has about <%=globals.NAsteroids %> asteroids, meaning it can help create detailed studies 
of the characteristics of the Solar System.</p>

<p>The guide below shows how to find asteroids in SDSS data, using SkyServer. The <a href="http://www.astro.washington.edu/ivezic/sdssmoc/sdssmoc.html" target="offsite">SDSS 
Moving Object Catalog</a> (link opens in a new window) is a collection of asteroids. The Moving Object Catalog 
is also available on <a href="<%=globals.CasJobs %>" target="offsite">CasJobs</a> (new window). <a href="<%=globals.ContactUrl+"&url="+Server.UrlEncode("http://"+Request.ServerVariables["SERVER_NAME"]+Request.ServerVariables["SCRIPT_NAME"]+Request.ServerVariables["QUERY_STRING"]) %>">
Contact the helpdesk</a> to get access.</p>

<h2>How do I...</h2>

<ol>

<li><p><a href="moving.aspx">Find moving objects consistent with asteroids?</a></p></li>

</ol>

<hr />

<p><a href="../">Back to Cooking with Sloan main page</a></p>
<p><a href="../../">Back to Help main page</a></p>
<p> <a href="<%=globals.ContactUrl+"&url="+Server.UrlEncode("http://"+Request.ServerVariables["SERVER_NAME"]+Request.ServerVariables["SCRIPT_NAME"]+Request.ServerVariables["QUERY_STRING"])%>">Contact Help Desk </a></p>

<p>&nbsp;</p>


</div>
</asp:Content>
