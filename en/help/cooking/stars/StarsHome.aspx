<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="StarsHome.aspx.cs" Inherits="SkyServer.Help.Cooking.StarsHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Cooking with Sloan</div>

<div id="transp">

<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<table width="100%" border="0" cellpadding="2" cellspacing="2">
  <tr>
    <th width="33%" class="menuheadlink"><a href="../general/">General tasks</a></span></th>
    <th width="33%" class="menuheadlink"><a href="../solarsystem">Solar System</a></th>
    <th width="34%" style="font-size:large"><b>Stars</b></th>        
<!--    <th width="33%" class="menuheadlink"><a href="../stars">Stars</a></th>-->
  </tr>
  <tr>
    <th width="34%" class="menuheadlink"><a href="../galaxies">Galaxies</a></th>
    <th width="34%" class="menuheadlink"><a href="../quasars">Quasars/Cosmology</a></th>
    <th width="34%" class="menuheadlink"><a href="../labs">Teaching/Labs</a></th>
  </tr>
</table>

<h2>Stars</h2>

<p>The SDSS is a rich source of data for research into stellar astronomy. The <%=globals.Release %> database contains 
about <%=globals.NStar%> stars, all of which are accessible through the SkyServer web site.</p>

<p>Click on one of the questions below to see a guide. Open the tools through the links provided in the 
guides, and follow along as you read.</p>

<h2>How do I...</h2>

<ol>

<li><p><a href="morethanonce.aspx">Find stars that have been seen more than once?</a></p></li>
<li><p><a href="segue.aspx">Find star spectra from the SDSS’s SEGUE survey?</a></p></li>
<li><p><a href="cv.aspx">Find cataclysmic variables?</a></p></li>

</ol>

<hr />

<p><a href="../">Back to Cooking with Sloan main page</a></p>
<p><a href="../../">Back to Help main page</a></p>
<p> <a href="<%=globals.ContactUrl+"&url="+Server.UrlEncode("http://"+Request.ServerVariables["SERVER_NAME"]+Request.ServerVariables["SCRIPT_NAME"]+Request.ServerVariables["QUERY_STRING"])%>">Contact Help Desk </a></p>

<p>&nbsp;</p>


</div>
</asp:Content>
